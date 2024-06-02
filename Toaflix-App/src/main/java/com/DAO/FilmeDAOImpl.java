package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entidade.FilmeDtls;

public class FilmeDAOImpl implements FilmeDAO {

	@Override
	public boolean updateEditFilmes(FilmeDtls b) {
		boolean f = false;
		try {
			String sql = "update filme_dtls set filmename=?,gênero=?,sinopse=?,preço=?,horarios=?,status=? where filmeid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getFilme());
			ps.setString(2, b.getGênero());
			ps.setString(3, b.getSinopse());
			ps.setString(4, b.getPreço());
			ps.setString(5, b.gethorarios());
			ps.setString(6, b.getStatus());
			ps.setInt(7, b.getFilmeId());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	private Connection conn;
	private FilmeDtls b;

	public FilmeDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addFilmes(FilmeDtls b) {
		boolean f = false;
		try {
			String sql = "insert into filme_dtls(filmename,gênero,sinopse,preço,horarios,status,imagem,email) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getFilme());
			ps.setString(2, b.getGênero());
			ps.setString(3, b.getSinopse());
			ps.setString(4, b.getPreço());
			ps.setString(5, b.gethorarios());
			ps.setString(6, b.getStatus());
			ps.setString(7, b.getImagem());
			ps.setString(8, b.getEmail());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public List<FilmeDtls> getAllFilmes() {

		List<FilmeDtls> list = new ArrayList<FilmeDtls>();
		FilmeDtls b = null;

		try {
			String sql = "SELECT * FROM filme_dtls";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new FilmeDtls();
				b.setFilmeId(rs.getInt("filmeId"));
				b.setFilme(rs.getString("filmename"));
				b.setGênero(rs.getString("gênero"));
				b.setSinopse(rs.getString("sinopse"));
				b.setPreço(rs.getString("preço"));
				b.sethorarios(rs.getString("horarios"));
				b.setStatus(rs.getString("status"));
				b.setImagem(rs.getString("imagem"));
				b.setEmail(rs.getString("email"));
				list.add(b);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public FilmeDtls getFilmeById(int id) {
		FilmeDtls b = null;
		try {
			String sql = "select * from filme_dtls where filmeId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new FilmeDtls();
				b.setFilmeId(rs.getInt("filmeId"));
				b.setFilme(rs.getString("filmename"));
				b.setGênero(rs.getString("gênero"));
				b.setSinopse(rs.getString("sinopse"));
				b.setPreço(rs.getString("preço"));
				b.sethorarios(rs.getString("horarios"));
				b.setStatus(rs.getString("status"));
				b.setImagem(rs.getString("imagem"));
				b.setEmail(rs.getString("email"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	@Override
	public boolean deleteFilmes(int id) {
		boolean f = false;
		try {
			String sql = "delete from filme_dtls where filmeId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
				resetAutoIncrement(conn, "filme_dtls");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	private void resetAutoIncrement(Connection conn, String filme_dtls) {
		try {
			String query = "SELECT MIN(filmeId + 1) AS nextId FROM filme_dtls WHERE filmeId + 1 NOT IN (SELECT filmeId FROM filme_dtls)";
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();

			 if (rs.next()) {
		            int nextId = rs.getInt("nextId");
		            if(nextId == 0) {
		            	nextId = 1;
		            	
		            }
		            query = "ALTER TABLE filme_dtls AUTO_INCREMENT = ?";
		            ps = conn.prepareStatement(query);
		            ps.setInt(1, nextId);
		            ps.executeUpdate();
		        }
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
