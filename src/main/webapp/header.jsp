<%@page import="java.util.Date"%>
    <%@page import="java.text.SimpleDateFormat"%>
        <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="ISO-8859-1">
                <link rel="stylesheet" href="./css/navbar.css">
                <title>Header</title>
            </head>

            <body>
                <%   
  
String usuario=(String)session.getAttribute("user");    //Obtendo Atributo de Sessï¿½o
SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss"); //Formatando a Data

%>
                    <div class="content ">
                        <div class="nav ">
                            <div class="nav-logo ">
                                <h1>RT - Disciplinas</h1>
                            </div>
                            <li class="nav-home"><a class="link" href="menu.jsp">Menu Principal</a></li>
                            <li class="nav-date">
                                <a class="link" href="#">
                                    <%= sdf.format(new Date()) %>
                                </a>
                            </li>
                            <li class="nav-s-in">
                                <a class="link" href="#">
                                    <%out.print("Olá, "+ usuario); %><i class="fas fa-user "></i></a>
                            </li>
                        </div>
                    </div>
            </body>

            </html>