<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Cartaz</title>
<%@include file="allCss.jsp"%>
<%@ page import="com.DAO.FilmeDAOImpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.util.*"%>
<%@ page import="com.entidade.FilmeDtls"%>
</head>
<body style="background-color: #f0f2f2;">
	<%@include file="navbar.jsp"%>
	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">

				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-primary">Editar Cartaz</h4>
						<c:if test="${not empty sucMsg }">
							<p class="text-center text-success">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg}</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>


						<%
						int id = Integer.parseInt(request.getParameter("id"));
						FilmeDAOImpl dao = new FilmeDAOImpl(DBConnect.getConn());
						FilmeDtls b = dao.getFilmeById(id);
						%>



						<form action="../add_cartaz" method="post"
							enctype="multipart/form-data">

							<div class="form-group">
								<label for="exampleInputEmail1">T�tulo</label> <input
									name="fname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									value="<%=b.getFilme()%>">
							</div>

							<div class="form-group">
								<label for="text">Sinopse</label> <input type="text"
									class="form-control" id="cpfInput" name="sinopse"
									value="<%=b.getSinopse()%>">
							</div>

							<%
							String selectedHorario = "";
							if (b != null && b.gethorarios() != null) {
								selectedHorario = b.gethorarios();
							}
							%>
							<div class="form-group">
								<label for="exampleInputEmail1">Hor�rios</label>
								<table class="table">
									<tbody>
										<tr>
											<td><input type="radio" name="horarios" value="13:30"
												<%="13:30".equals(selectedHorario) ? "checked" : ""%>>
												13:30</td>
											<td><input type="radio" name="horarios" value="14:10"
												<%="14:10".equals(selectedHorario) ? "checked" : ""%>>
												14:10</td>
											<td><input type="radio" name="horarios" value="15:45"
												<%="15:45".equals(selectedHorario) ? "checked" : ""%>>
												15:45</td>
										</tr>
										<tr>
											<td><input type="radio" name="horarios" value="18:00"
												<%="18:00".equals(selectedHorario) ? "checked" : ""%>>
												18:00</td>
											<td><input type="radio" name="horarios" value="20:35"
												<%="20:35".equals(selectedHorario) ? "checked" : ""%>>
												20:35</td>
											<td><input type="radio" name="horarios" value="21:30"
												<%="21:30".equals(selectedHorario) ? "checked" : ""%>>
												21:30</td>
										</tr>
									</tbody>
								</table>
							</div>




							<div class="form-group">
								<label for="genero">G�neros</label> <select class="form-control"
									name="genero" id="genero">
									<option value="A��o">A��O</option>
									<option value="Anima��o">ANIMA��O</option>
									<option value="Aventura">AVENTURA</option>
									<option value="Com�dia">COM�DIA</option>
									<option value="Fic��o Cient�fica">FIC��O CIENT�FICA</option>
									<option value="Infantil">INFANTIL</option>
									<option value="Romance">ROMANCE</option>
									<option value="Suspense">SUSPENSE</option>
									<option value="Terror">TERROR</option>
								</select>

							</div>
							<script>
								function formatCurrency(input) {
									// Limpa o campo de entrada para garantir que contenha apenas n�meros
									var value = input.value.replace(/\D/g, '');
									// Formata o valor com uma v�rgula para separar os centavos
									var formattedValue = (value / 100)
											.toLocaleString('pt-BR', {
												minimumFractionDigits : 2
											});
									// Atualiza o valor do campo de entrada
									input.value = formattedValue;
								}
							</script>
							<div class="form-group">
								<label for="exampleInputPassword1">Pre�o da Sess�o</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									name="preco" onkeyup="formatCurrency(this)"
									value="<%=b.getPre�o()%>">
							</div>

							<div class="form-group">
								<label for="inputState">Status do Filme</label> <select
									id="inputState" name="status" class="form-control">
									<%
									if ("Active".equals(b.getStatus())) {
									%>
									<option value="Active">Ativo</option>
									<option value="Inactive">Inativo</option>
									<%
									} else {
									%>
									<option value="Inactive">Inativo</option>
									<option value="Active">Ativo</option>
									<%
									}
									%>
								</select>
							</div>
							<button type="submit" class="btn btn-primary">Finalizar</button>
						</form>
					</div>
				</div>
			</div>
		</div>
</body>
</html>