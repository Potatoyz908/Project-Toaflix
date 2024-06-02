package com.entidade;

public class Usuario {
	
	private int id;
	private String nome;
	private String email;
	private String senha;
	private String CPF;
	private String endereço;
	private String pontoDeReferencia;
	private String cidade;
	private String estado;
	private String formadepagamento;
	
	public Usuario() {
		super();
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getCPF() {
		return CPF;
	}
	public void setCPF(String cPF) {
		CPF = cPF;
	}
	public String getEndereço() {
		return endereço;
	}
	public void setEndereço(String endereço) {
		this.endereço = endereço;
	}
	public String getPontoDeReferencia() {
		return pontoDeReferencia;
	}
	public void setPontoDeReferencia(String pontoDeReferencia) {
		this.pontoDeReferencia = pontoDeReferencia;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getFormadepagamento() {
		return formadepagamento;
	}
	public void setFormadepagamento(String formadepagamento) {
		this.formadepagamento = formadepagamento;
	}
	
	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nome=" + nome + ", email=" + email + ", senha=" + senha + ", CPF=" + CPF
				+ ", endereço=" + endereço + ", pontoDeReferencia=" + pontoDeReferencia + ", cidade=" + cidade
				+ ", estado=" + estado + ", formadepagamento=" +formadepagamento+"]";
	}
	
	
}
