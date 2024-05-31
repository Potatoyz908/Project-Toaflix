package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.FilmeDAOImpl;
import com.DB.DBConnect;
import com.entidade.FilmeDtls;

@WebServlet("/add_cartaz")
@MultipartConfig
public class AdicionarFilmes extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String filmeNome = req.getParameter("fname");
			String genero = req.getParameter("genero");
			String sinopse = req.getParameter("sinopse");
			String preço = req.getParameter("preco");
			String horarios = req.getParameter("horarios");
			String status = req.getParameter("status");
			Part part = req.getPart("fimg");
			String fileName = part.getSubmittedFileName();

			FilmeDtls b = new FilmeDtls(filmeNome, genero, sinopse, preço, horarios, status, fileName, "admin");

			FilmeDAOImpl dao = new FilmeDAOImpl(DBConnect.getConn());

			boolean f = dao.addFilmes(b);

			HttpSession session = req.getSession();

			if (f) {

				String path = getServletContext().getRealPath("") + "emCartaz";

				File file = new File(path);

				part.write(path + File.separator + fileName);

				session.setAttribute("sucMsg", "Filme adicionado com sucesso!");
				resp.sendRedirect("admin/add_cartaz.jsp");

			} else {
				session.setAttribute("failedMsg", "Algo deu errado!");
				resp.sendRedirect("admin/add_cartaz.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
