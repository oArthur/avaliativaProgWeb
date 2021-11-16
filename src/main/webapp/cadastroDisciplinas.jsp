<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="./css/main.css" />
    <script type="text/javascript" src="./js/script.js"></script>
    <title>RT | Cadastrar disciplina</title>
</head>

<body>
<%
//verificacao se o usuario esta logado
String sessao=(String)session.getAttribute("user");
if (sessao == null){%>
	<%@ include file="errorLogin.jsp" %>
	
	<%}else{ %>
<%@ include file="header.jsp" %> <!-- Fazendo include do header. -->
    <section class="principal">
        <div class="posts cadastro">
            <div class="title-cadastro">
                <h1>Cadastro Disciplina</h1>
            </div>
            <div class="suporte-form">
                <form action="ServletControlador" method="post">
                    <input type="hidden" name="acao" value="adicionarMateria">
                    <label id="label" for="nomeDisciplina">Nome Disciplina: </label>
                    <input type="text" placeholder="Ex: Progamação Web" name="nomeDisciplina">

                    <label id="label" for="notaDisciplina">Nota: </label>
                    <input type="text" placeholder="Ex: 10" onblur="validaNumero(this.value)" id="notaDisciplina" name="notaDisciplina">
                    <!-- Fazendo a validacao com js se o campo preenchido contem apenas numeros. -->

                    <label id="label" for="cargaHorariaDisciplina">Carga Horaria: </label>
                    <input type="number" placeholder="Ex: 260" name="cargaHorariaDisciplina">

                    <label id="label" for="faltasDisciplina">Total de Faltas: </label>
                    <input type="number" placeholder="Ex: 3" name="faltasDisciplina">

                    <button type="submit">Cadastrar</button>
                </form>
            </div>

        </div>

    </section>
</body>
<%} %>
</html>