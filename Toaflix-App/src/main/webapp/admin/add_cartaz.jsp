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
</head>
<body style="background-color: #f0f2f2;">
    <%@include file="navbar.jsp"%>
    <div class="container p-2">
        <div class="row">
            <div class="col-md-4 offset-md-4">

                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center text-primary">Adicionar Cartaz</h4>
                        <c:if test="${not empty sucMsg}">
                            <p class="text-center text-success">${sucMsg}</p>
                            <c:remove var="sucMsg" scope="session" />
                        </c:if>

                        <c:if test="${not empty failedMsg}">
                            <p class="text-center text-danger">${failedMsg}</p>
                            <c:remove var="failedMsg" scope="session" />
                        </c:if>

                        <form action="../adicionarfilmes" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">

                            <div class="form-group">
                                <label for="exampleInputEmail1">Título</label> 
                                <input name="fname" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Digite aqui o título do filme" required="required">
                            </div>

                            <div class="form-group">
                                <label for="text">Sinopse</label> 
                                <input type="text" class="form-control" id="sinopse" name="sinopse" placeholder="Digite aqui a sinopse do filme" required="required">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Horários</label>
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td><input type="radio" name="horarios" value="13:30" required> 13:30</td>
                                            <td><input type="radio" name="horarios" value="14:10" required> 14:10</td>
                                            <td><input type="radio" name="horarios" value="15:45" required> 15:45</td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="horarios" value="18:00" required> 18:00</td>
                                            <td><input type="radio" name="horarios" value="20:35" required> 20:35</td>
                                            <td><input type="radio" name="horarios" value="21:30" required> 21:30</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="form-group">
                                <label for="genero">Gêneros</label> 
                                <select class="form-control" name="genero" id="genero" required>
                                    <option value="">--selecione--</option>
                                    <option value="Ação">AÇÃO</option>
                                    <option value="Animação">ANIMAÇÃO</option>
                                    <option value="Aventura">AVENTURA</option>
                                    <option value="Comédia">COMÉDIA</option>
                                    <option value="Ficção Científica">FICÇÃO CIENTÍFICA</option>
                                    <option value="Infantil">INFANTIL</option>
                                    <option value="Romance">ROMANCE</option>
                                    <option value="Suspense">SUSPENSE</option>
                                    <option value="Terror">TERROR</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputPassword1">Preço da Sessão</label> 
                                <input type="text" class="form-control" id="preco" placeholder="Digite aqui o preço da sessão" required="required" name="preco" onkeyup="formatCurrency(this)">
                            </div>

                            <div class="form-group">
                                <label for="inputState">Status do Filme</label> 
                                <select id="inputState" name="status" class="form-control" required>
                                    <option value="">--selecione--</option>
                                    <option value="Ativo">ATIVO</option>
                                    <option value="Inativo">INATIVO</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="exempleFormControlFile1">Carregar Imagem</label> 
                                <input name="fimg" type="file" class="form-control-file" id="exempleFormControlFile1" required>
                            </div>

                            <button type="submit" class="btn btn-primary">Finalizar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function formatCurrency(input) {
            // Limpa o campo de entrada para garantir que contenha apenas números
            var value = input.value.replace(/\D/g, '');
            // Formata o valor com uma vírgula para separar os centavos
            var formattedValue = (value / 100).toLocaleString('pt-BR', { minimumFractionDigits: 2 });
            // Atualiza o valor do campo de entrada
            input.value = formattedValue;
        }

        function validateForm() {
            var titulo = document.getElementById("exampleInputEmail1").value;
            var sinopse = document.getElementById("sinopse").value;
            var horarios = document.querySelector('input[name="horarios"]:checked');
            var genero = document.getElementById("genero").value;
            var preco = document.getElementById("exampleInputPassword1").value;
            var status = document.getElementById("inputState").value;
            var imagem = document.getElementById("exempleFormControlFile1").value;

            if (!titulo || !sinopse || !horarios || !genero || !preco || !status || !imagem) {
                alert("Todos os campos são obrigatórios!");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
