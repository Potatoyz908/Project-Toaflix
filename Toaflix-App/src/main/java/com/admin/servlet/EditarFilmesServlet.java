package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.FilmeDAOImpl;
import com.DB.DBConnect;
import com.entidade.FilmeDtls;

@WebServlet("/editarfilmes")
public class EditarFilmesServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			try {
				int id=Integer.parseInt(req.getParameter("id"));
				String filmeNome = req.getParameter("fname");
				String genero = req.getParameter("genero");
				String sinopse = req.getParameter("sinopse");
				String preço = req.getParameter("preco");
				String horarios = req.getParameter("horarios");
				String status = req.getParameter("status");
				
				FilmeDtls b=new FilmeDtls();
				b.setFilmeId(id);
				b.setFilme(filmeNome);
				b.setGênero(genero);
				b.setSinopse(sinopse);
				b.setPreço(preço);
				b.sethorarios(horarios);
				b.setStatus(status);
				
				FilmeDAOImpl dao=new FilmeDAOImpl(DBConnect.getConn());
				boolean f =dao.updateEditFilmes(b);
				
				HttpSession session=req.getSession();
				
				
				if(f) {
					session.setAttribute("sucMsg", "Cartaz atualizado com sucesso..");
					resp.sendRedirect("admin/todos_em_cartaz.jsp");
				}else {
					session.setAttribute("failedMsg", "Algum erro no servidor..");
					resp.sendRedirect("admin/todos_em_cartaz.jsp");
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
	}

}
