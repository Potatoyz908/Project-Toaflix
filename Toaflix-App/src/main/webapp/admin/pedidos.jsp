<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Todos Os Pedidos</title>
<%@include file="allCss.jsp"%>

</head>
<body>
	<%@include file="navbar.jsp"%>
	<h3 class="text-center">Oi, Admin! :)</h3>
	<table class="table table-striped">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Nome</th>
				<th scope="col">CPF</th>
				<th scope="col">Email</th>
				<th scope="col">Endereço</th>
				<th scope="col">Nome do Filme</th>
				<th scope="col">Horário</th>
				<th scope="col">Preço</th>
				<th scope="col">Forma de Pagamento</th>


			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>@mdo</td>
			</tr>

			<tr>
				<th scope="row">2</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
			</tr>

			<tr>
				<th scope="row">3</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
			</tr>







		</tbody>
	</table>

	<div class=""></div>

	<div style="margin-top: 405px;">
		<%@include file="rodape.jsp"%></div>
</body>
</html>