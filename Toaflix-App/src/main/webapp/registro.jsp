<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Toaflix: Registro</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-1">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Página de Registro</h4>

						<c:if test="${not empty sucMsg}">
							<p class="text-center text-success">${sucMsg }</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg}">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<form action="registro" method="post">

							<div class="form-group">
								<label for="exampleInputEmail1">Nome Completo</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp"
									placeholder="Digite aqui seu nome completo" required="required"
									name="fname">
							</div>

							<div class="form-group">
								<label for="cpfInput">CPF</label> <input type="text"
									class="form-control" id="cpfInput"
									placeholder="Digite aqui seu nome CPF" required="required"
									name="cpf" aria-describedby="cpfHelp" maxlength="14"> <small
									id="cpfHelp" class="form-text text-muted">ex:
									123.345.871-69</small>
							</div>

							<script>
								function formatarCPF(cpf) {
									cpf = cpf.replace(/\D/g, '');
									cpf = cpf.replace(/(\d{3})(\d)/, '$1.$2');
									cpf = cpf.replace(/(\d{3})(\d)/, '$1.$2');
									cpf = cpf.replace(/(\d{3})(\d{1,2})$/,
											'$1-$2');
									return cpf;
								}

								var cpfInput = document
										.getElementById('cpfInput');

								cpfInput.addEventListener('input', function(
										event) {

									var valor = event.target.value;

									if (valor.length > 14) {
										valor = valor.slice(0, 14);
									}

									event.target.value = formatarCPF(valor);
								});
							</script>


							<div class="form-group">
								<label for="exampleInputEmail1">Endereço de Email</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp"
									placeholder="Digite aqui seu email" required="required"
									name="email">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Senha</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Digite aqui sua senha" required="required"
									name="password">
							</div>

							<div class="form-group">
								<label for="formaPagamento">Forma de Pagamento</label> <select
									class="form-control" name="control" id="formaPagamento">
									<option value="credito">Cartão de Crédito</option>
									<option value="debito">Cartão de Débito</option>
									<option value="boleto">Boleto Bancário</option>
									<option value="pix">Pix</option>

								</select>
							</div>

							<div class="form-group form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Aceito os termos e condições</label>
							</div>
							<button type="submit" class="btn btn-primary">Finalizar</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
