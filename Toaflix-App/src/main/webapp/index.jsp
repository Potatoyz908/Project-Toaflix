<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Toaflix: Index</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/Toaflix.png");
	height: 50vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-center text-danger"></h2>
	</div>


	<!--  Inicio do Em Cartaz -->
	<div class="container-fluid">
		<h3 class="text-center titulo-grande">Em Cartaz</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="emCartaz/duna.jpg"
							style="width: 350px; height: 450px">
						<p>Filme: Duna</p>
						<p>Horarios: 14:30 e 22:30</p>
						<p>Genero: Ficção científica/Aventura</p>
						<p>Sinopse: Paul Atreides é um jovem brilhante.</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Adicionar ao Carrinho</a> <a
								href="" class="btn btn-danger btn-sm ml-1">Ver Detalhes</a> <a
								href="" class="btn btn-primary btn-sm ml-1"><i
								class="fa-solid fa-brazilian-real-sign"></i>34,99</a>

						</div>
					</div>
				</div>

			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="emCartaz/batman.jpg"
							style="width: 350px; height: 450px">
						<p>Filme: Batman</p>
						<p>Horarios: 14:30 e 22:30</p>
						<p>Genero: Terror/Aventura</p>
						<p>Sinopse: Eu sou o Batman.</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Adicionar ao Carrinho</a> <a
								href="" class="btn btn-danger btn-sm ml-1">Ver Detalhes</a> <a
								href="" class="btn btn-primary btn-sm ml-1"><i
								class="fa-solid fa-brazilian-real-sign"></i>12,99</a>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="emCartaz/senhor.jpg"
							style="width: 350px; height: 450px">
						<p>Filme: Senhor dos Anéis</p>
						<p>Horarios: 14:30 e 22:30</p>
						<p>Genero: Ficção científica/Aventura</p>
						<p>Sinopse: Em busca do anel.</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Adicionar ao Carrinho</a> <a
								href="" class="btn btn-danger btn-sm ml-1">Ver Detalhes</a> <a
								href="" class="btn btn-primary btn-sm ml-1"><i
								class="fa-solid fa-brazilian-real-sign"></i>25,00</a>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="emCartaz/Oppenheimer.jpg"
							style="width: 350px; height: 450px">
						<p>Filme: Oppenheimer</p>
						<p>Horarios: 14:30 e 22:30</p>
						<p>Genero: Ficção científica/Aventura</p>
						<p>Sinopse: Homem bomba.</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Adicionar ao Carrinho</a> <a
								href="" class="btn btn-danger btn-sm ml-1">Ver Detalhes</a> <a
								href="" class="btn btn-primary btn-sm ml-1"><i
								class="fa-solid fa-brazilian-real-sign"></i>50,00</a>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-4">
			<a></a>
		</div>
	</div>

	<!--  fim do Em Cartaz -->
	<!--  Inicio do Em Cartaz -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="emCartaz/duna.jpg"
							style="width: 350px; height: 450px">
						<p>Filme: Duna</p>
						<p>Horarios: 14:30 e 22:30</p>
						<p>Genero: Ficção científica/Aventura</p>
						<p>Sinopse: Paul Atreides é um jovem brilhante.</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Adicionar ao Carrinho</a> <a
								href="" class="btn btn-danger btn-sm ml-1">Ver Detalhes</a> <a
								href="" class="btn btn-primary btn-sm ml-1"><i
								class="fa-solid fa-brazilian-real-sign"></i>34,99</a>

						</div>
					</div>
				</div>

			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="emCartaz/batman.jpg"
							style="width: 350px; height: 450px">
						<p>Filme: Batman</p>
						<p>Horarios: 14:30 e 22:30</p>
						<p>Genero: Terror/Aventura</p>
						<p>Sinopse: Eu sou o Batman.</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Adicionar ao Carrinho</a> <a
								href="" class="btn btn-danger btn-sm ml-1">Ver Detalhes</a> <a
								href="" class="btn btn-primary btn-sm ml-1"><i
								class="fa-solid fa-brazilian-real-sign"></i>12,99</a>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="emCartaz/senhor.jpg"
							style="width: 350px; height: 450px">
						<p>Filme: Senhor dos Anéis</p>
						<p>Horarios: 14:30 e 22:30</p>
						<p>Genero: Ficção científica/Aventura</p>
						<p>Sinopse: Em busca do anel.</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Adicionar ao Carrinho</a> <a
								href="" class="btn btn-danger btn-sm ml-1">Ver Detalhes</a> <a
								href="" class="btn btn-primary btn-sm ml-1"><i
								class="fa-solid fa-brazilian-real-sign"></i>25,00</a>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="emCartaz/Oppenheimer.jpg"
							style="width: 350px; height: 450px">
						<p>Filme: Oppenheimer</p>
						<p>Horarios: 14:30 e 22:30</p>
						<p>Genero: Ficção científica/Aventura</p>
						<p>Sinopse: Homem bomba.</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Adicionar ao Carrinho</a> <a
								href="" class="btn btn-danger btn-sm ml-1">Ver Detalhes</a> <a
								href="" class="btn btn-primary btn-sm ml-1"><i
								class="fa-solid fa-brazilian-real-sign"></i>50,00</a>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-4">
			<a></a>
		</div>
	</div>

	<!--  fim do Em Cartaz -->
	<!--  Inicio do Em Cartaz -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="emCartaz/duna.jpg"
							style="width: 350px; height: 450px">
						<p>Filme: Duna</p>
						<p>Horarios: 14:30 e 22:30</p>
						<p>Genero: Ficção científica/Aventura</p>
						<p>Sinopse: Paul Atreides é um jovem brilhante.</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Adicionar ao Carrinho</a> <a
								href="" class="btn btn-danger btn-sm ml-1">Ver Detalhes</a> <a
								href="" class="btn btn-primary btn-sm ml-1"><i
								class="fa-solid fa-brazilian-real-sign"></i>34,99</a>

						</div>
					</div>
				</div>

			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="emCartaz/batman.jpg"
							style="width: 350px; height: 450px">
						<p>Filme: Batman</p>
						<p>Horarios: 14:30 e 22:30</p>
						<p>Genero: Terror/Aventura</p>
						<p>Sinopse: Eu sou o Batman.</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Adicionar ao Carrinho</a> <a
								href="" class="btn btn-danger btn-sm ml-1">Ver Detalhes</a> <a
								href="" class="btn btn-primary btn-sm ml-1"><i
								class="fa-solid fa-brazilian-real-sign"></i>12,99</a>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="emCartaz/senhor.jpg"
							style="width: 350px; height: 450px">
						<p>Filme: Senhor dos Anéis</p>
						<p>Horarios: 14:30 e 22:30</p>
						<p>Genero: Ficção científica/Aventura</p>
						<p>Sinopse: Em busca do anel.</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Adicionar ao Carrinho</a> <a
								href="" class="btn btn-danger btn-sm ml-1">Ver Detalhes</a> <a
								href="" class="btn btn-primary btn-sm ml-1"><i
								class="fa-solid fa-brazilian-real-sign"></i>25,00</a>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="emCartaz/Oppenheimer.jpg"
							style="width: 350px; height: 450px">
						<p>Filme: Oppenheimer</p>
						<p>Horarios: 14:30 e 22:30</p>
						<p>Genero: Ficção científica/Aventura</p>
						<p>Sinopse: Homem bomba.</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Adicionar ao Carrinho</a> <a
								href="" class="btn btn-danger btn-sm ml-1">Ver Detalhes</a> <a
								href="" class="btn btn-primary btn-sm ml-1"><i
								class="fa-solid fa-brazilian-real-sign"></i>50,00</a>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-1">
			<a class="btn btn-danger btn-sm text-white">Ver mais</a>
		</div>
	</div>


	<%@include file="all_component/rodape.jsp"%>

</body>
</html>