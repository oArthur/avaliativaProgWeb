<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/main.css">
<meta charset="ISO-8859-1">
<title>RT | MENU</title>
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
        <div class="posts">
            <div class="post cadastrar">
                <div class="titulo-menu">
                    <h1>Cadastrar Disciplina</h1>
                </div>
                <div class="texto-menu">
                    <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Laborum voluptatum, impedit dignissimos nam cum nostrum possimus a mollitia distinctio error iusto? Iure dolorem aut ipsa distinctio, voluptates veniam provident soluta. Lorem
                        ipsum dolor sit amet consectetur, adipisicing elit. Iste doloribus ea quisquam.
                    </p>
                </div>
                <div class="btn">
                    <a href="ServletControlador?acao=cadastrar">
                        <button>Cadastrar Disciplina e Nota</button>
                    </a>
                </div>
            </div>

            <div class="post lista">
                <div class="titulo">
                    <h1>Listar Disciplinas</h1>
                </div>
                <div class="texto-menu">
                    <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Laborum voluptatum, impedit dignissimos nam cum nostrum possimus a mollitia distinctio error iusto? Iure dolorem aut ipsa distinctio, voluptates veniam provident soluta. Lorem
                        ipsum dolor sit amet consectetur, adipisicing elit. Iste doloribus ea quisquam.
                    </p>
                </div>
                <div class="btn">
                    <a href="ServletControlador?acao=listar">
                        <button>Consultar Disciplinas e Notas</button>
                    </a>
                </div>
            </div>
        </div>

    </section>
<%} %>
</body>
</html>