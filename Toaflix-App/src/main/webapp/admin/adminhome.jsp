<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Home</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>

</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_cartaz.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-square-plus fa-3x text-primary"></i><br>
							<h4>Adicionar Cartaz</h4>
							---------------------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="remover_cartaz.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-trash-alt fa-3x text-danger"></i><br>
							<h4>Retirar Cartaz</h4>
							---------------------
						</div>
					</div>
				</a>
			</div>



			<div class="col-md-3">
				<a href="todos_em_cartaz.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-film fa-3x"></i><br>
							<h4>Todos Em Cartaz</h4>
							---------------------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="pedidos.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-box-open fa-3x text-warning"></i><br>
							<h4>Ver Pedidos</h4>
							---------------------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i><br>
						<h4>Sair</h4>
						---------------------
					</div>
				</div>
			</div>
		</div>

	</div>
	<div style="margin-top: 245px;">
		<%@include file="rodape.jsp"%></div>
</body>
</html>