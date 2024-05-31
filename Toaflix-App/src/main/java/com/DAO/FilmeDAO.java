package com.DAO;

import java.util.List;

import com.entidade.FilmeDtls;

public interface FilmeDAO {
	
	public boolean addFilmes(FilmeDtls b);
		
	public List<FilmeDtls> getAllFilmes();
	
	
	public FilmeDtls getFilmeById(int id);
	
}
