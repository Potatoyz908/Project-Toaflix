<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Todos Em Cartaz</title>
<%@include file="allCss.jsp"%>
<%@ page import="com.DAO.FilmeDAOImpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.util.*"%>
<%@ page import="com.entidade.FilmeDtls"%>

</head>
<body>
	<%@include file="navbar.jsp"%>
	<h3 class="text-center">Oi, Admin! :)</h3>

	<c:if test="${not empty sucMsg }">
		<h5 class="text-center text-success">${sucMsg}</h5>
		<c:remove var="sucMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg }">
		<h5 class="text-center text-danger">${failedMsg}</h5>
		<c:remove var="failedMsg" scope="session" />
	</c:if>


	<table class="table table-striped">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Imagem</th>
				<th scope="col">Nome</th>
				<th scope="col">Gênero</th>
				<th scope="col">Sinopse</th>
				<th scope="col">Preço</th>
				<th scope="col">Horários</th>
				<th scope="col">Status</th>
				<th scope="col">Ativação</th>

			</tr>
		</thead>
		<tbody>
			<%
			FilmeDAOImpl dao = new FilmeDAOImpl(DBConnect.getConn());
			List<FilmeDtls> list = dao.getAllFilmes();
			for (FilmeDtls b : list) {
			%>
			<tr>
				<td><%=b.getFilmeId()%></td>
				<td><img src="../emCartaz/<%=b.getImagem()%>"
					style="width: 100px; height: 100Px;"></td>
				<td><%=b.getFilme()%></td>
				<td><%=b.getGênero()%></td>
				<td><%=b.getSinopse()%></td>
				<td><%=b.getPreço()%></td>
				<td><%=b.gethorarios()%></td>
				<td><%=b.getStatus()%></td>
				<td><a href="edit_cartaz.jsp?id=<%=b.getFilmeId()%>"
					class="btn btn-sm btn-primary">Editar</a> <a
					href="../deletar?id=<%=b.getFilmeId()%>"
					class="btn btn-sm btn-danger">Deletar</a></td>
			</tr>
			<%
			}
			%>

		</tbody>
	</table>

	<div class=""></div>

	<div style="margin-top: 384px;">
		<%@include file="rodape.jsp"%></div>
</body>
</html>