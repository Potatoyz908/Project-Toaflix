package com.admin.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.FilmeDAOImpl;
import com.DB.DBConnect;

@WebServlet("/deletar")
public class DeletarFilmesServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));

			FilmeDAOImpl dao = new FilmeDAOImpl(DBConnect.getConn());
			boolean f = dao.deleteFilmes(id);

			HttpSession session = req.getSession();

			if (f) {
				session.setAttribute("sucMsg", "Cartaz deletado com sucesso..");
				resp.sendRedirect("admin/todos_em_cartaz.jsp");
			} else {
				session.setAttribute("failedMsg", "Algum erro no servidor..");
				resp.sendRedirect("admin/todos_em_cartaz.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
