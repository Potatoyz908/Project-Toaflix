package com.DAO;

import com.entidade.Usuario;

public interface UsuarioDAO {
	public boolean usuarioRegistro(Usuario us);
	
	public Usuario login(String email,String senha);
	
	
	
}
