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

@WebServlet("/registro")
public class RegistroServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String nome=req.getParameter("fname");
			String cpf=req.getParameter("cpf");
			String email=req.getParameter("email");
			String formadepagamento=req.getParameter("control");
			String senha=req.getParameter("password");
			String check=req.getParameter("check");
			
			//System.out.println(nome+" "+cpf+" "+email+" "+senha+" "+formadepagamento+" "+check);
		
			Usuario us=new Usuario();
			us.setNome(nome);
			us.setCPF(cpf);
			us.setEmail(email);
			us.setSenha(senha);
			us.setFormadepagamento(formadepagamento);
			
			HttpSession session=req.getSession();
			
			if(check!=null)
			{
				UsuarioDAOImpl dao=new UsuarioDAOImpl(DBConnect.getConn());
				boolean f=dao.usuarioRegistro(us);
				if(f){
					session.setAttribute("sucMsg","Resgistro bem sucedido!");
					resp.sendRedirect("registro.jsp");
					
					//System.out.println("Usuário cadastrado com sucesso!");		
				}else {
					session.setAttribute("failedMsg","Erro no servidor...");
					resp.sendRedirect("registro.jsp");
					//System.out.println("Erro no servidor...");
					
				}
			}else {
				session.setAttribute("failedMsg","Por favor aceite os termos e condições...");
				resp.sendRedirect("registro.jsp");
				//System.out.println("Por favor aceite os termos e condições.");
			}		
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	
		}
	}
