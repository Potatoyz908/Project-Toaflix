<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Toaflix: Login</title>
<%@include file="all_component/allCss.jsp"%>
<style>
    html, body {
        height: 100%;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
    }
    .content{
    	flex: 1;
    }

</style>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container content">
		<div class="row mt-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Login</h3>
						
						<c:if test="${not empty failedMsg}">
							<h5 class="text-center text-danger">${failedMsg}</h5>
							<c:remove var="failedMsg" scope="session"/>
						</c:if>
					
						<form action="login" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email</label>
								<input type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Senha</label>
								<input type="password" class="form-control" id="exampleInputPassword1"
									required="required" name="password">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Entrar</button>
								<br>
								<a href="registro.jsp">Não Tenho Uma Conta</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/rodape.jsp"%>
</body>
</html>