package com.usuario.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UsuarioDAOImpl;
import com.DB.DBConnect;
import com.entidade.Usuario;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			UsuarioDAOImpl dao= new UsuarioDAOImpl(DBConnect.getConn());
			
			HttpSession session=req.getSession();
			
			String email=req.getParameter("email");
			String senha=req.getParameter("password");
			
			if("admin@gmail.com".equals(email) && "admin".equals(senha))
			{
				Usuario us=new Usuario();
				session.setAttribute("userobj", us);
				resp.sendRedirect("admin/adminhome.jsp");
			}else {
				
				Usuario us= dao.login(email, senha);
				if(us!=null)
				{
					session.setAttribute("userobj", us);
					resp.sendRedirect("home.jsp");
			}	else {
					session.setAttribute("failedMsg", "Email ou senha inválido!");
					resp.sendRedirect("login.jsp");
			}	
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
