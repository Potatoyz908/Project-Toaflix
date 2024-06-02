package com.entidade;

public class FilmeDtls {
	private int filmeId;
	private String filme;
	private String gênero;
	private String sinopse;
	private String preço;
	private String horarios;
	private String status;
	private String imagem;
	private String email;
	public FilmeDtls() {
		super();
	}
	public FilmeDtls(String filme, String gênero, String sinopse, String preço, String horarios, String status, String imagem,
			String email) {
		super();
		this.filme = filme;
		this.gênero = gênero;
		this.sinopse = sinopse;
		this.preço = preço;
		this.horarios = horarios;
		this.status = status;
		this.imagem = imagem;
		this.email = email;
	}
	public int getFilmeId() {
		return filmeId;
	}
	public void setFilmeId(int filmeId) {
		this.filmeId = filmeId;
	}
	public String getFilme() {
		return filme;
	}
	public void setFilme(String filme) {
		this.filme = filme;
	}
	public String getGênero() {
		return gênero;
	}
	public void setGênero(String gênero) {
		this.gênero = gênero;
	}
	public String getSinopse() {
		return sinopse;
	}
	public void setSinopse(String sinopse) {
		this.sinopse = sinopse;
	}
	public String getPreço() {
		return preço;
	}
	public void setPreço(String preço) {
		this.preço = preço;
	}
	public String gethorarios() {
		return horarios;
	}
	public void sethorarios(String horarios) {
		this.horarios = horarios;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getImagem() {
		return imagem;
	}
	public void setImagem(String imagem) {
		this.imagem = imagem;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "FilmeDtls [filmeId=" + filmeId + ", filme=" + filme + ", gênero=" + gênero + ", sinopse=" + sinopse + ", preço=" + preço
				+ ", horarios=" + horarios + ", status=" + status + ", imagem=" + imagem + ", email=" + email + "]";
	}
	
	
}
