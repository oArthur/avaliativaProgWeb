<%@page import="java.util.List"%>
<%@page import="br.com.rt.model.Disciplina"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="./css/main.css" />
<title>RT | LISTAR DISCIPLINAS</title>
</head>
<body>
<%
//verificacao se o usuario esta logado
String sessao=(String)session.getAttribute("user");
if (sessao == null){%>
	<%@ include file="errorLogin.jsp" %>
	
	<%}else{ %>
<%@ include file="header.jsp" %> 
<section class="principal">
<div class="posts listar">
            <div class="title-cadastro">
                <h1>Lista Disciplinas</h1>
            </div>
<div class="container">
<table class="table table-bordered">
<thead>
	<tr>
		<td>Nome Disciplina</td>
		<td>Carga Horaria</td>
		<td>Faltas</td>
		<td>Nota</td>
		<td>Situação</td>
	</tr>
</thead>
	<%
		List<Disciplina> lista = (List<Disciplina>) request.getAttribute("lista");
		for(Disciplina disciplina : lista){
			out.print("<tr>");
			out.print("<td>" + disciplina.getNomeDisciplina() + "</td>");
			out.print("<td>" + disciplina.getCargaHorariaDisciplina() + "/h</td>");
			out.print("<td>" +disciplina.getFaltasDisciplina()+"</td>");
			out.print("<td>" +disciplina.getNotaDisciplina()+"</td>");
			out.print("<td class='"+disciplina.getCorSituacao()+"'>" +disciplina.getSituacao()+"</td>");
			out.print("</tr>");
		}

	%>
</table>
<a href="ServletControlador?acao=cadastrar"><button>Cadastrar outra materia</button></a>
</div>
<%} %>
</div>
    </section>
</body>
</html>