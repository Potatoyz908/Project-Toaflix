package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entidade.Usuario;

public class UsuarioDAOImpl implements UsuarioDAO {
	private Connection conn;

	public UsuarioDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean usuarioRegistro(Usuario us) {
		boolean f=false;
		
		try {
			String sql="insert into usuario(nome,cpf,email,senha,formadepagamento) values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, us.getNome());
			ps.setString(2, us.getCPF());
			ps.setString(3, us.getEmail());
			ps.setString(4, us.getSenha());
			ps.setString(5, us.getFormadepagamento());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}

	@Override
	public Usuario login(String email, String senha) {
		Usuario us=null;
		
		try {
			String sql="select * from usuario where email=? and senha=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, senha);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				us=new Usuario();
				us.setId(rs.getInt(1));
				us.setNome(rs.getString(2));
				us.setCPF(rs.getString(3));
				us.setEmail(rs.getString(4));
				us.setSenha(rs.getString(5));
				us.setFormadepagamento(rs.getString(6));
				us.setEndereço(rs.getString(7));
				us.setPontoDeReferencia(rs.getString(8));
				us.setCidade(rs.getString(9));
				us.setEstado(rs.getString(10));	
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return us;
	}
	
	
	
	
	
	
} 
