<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="./css/login.css">
    <script type="text/javascript" src="./js/script.js"></script>
    <meta charset="ISO-8859-1">

    <title>RT | Login</title>
</head>
<!-- Uma tela de login (autentica.jsp), que permitira o 
acesso apenas para o usuario "professor" e a senha "Progweb2021";  -->

<body>

    <body>
        <main class="container">
            <h2 class="log">Login</h2>
            <form action="ServletLogin" method="post">
                <div class="input-field">
                    <input type="text" name="user" id="user" onblur="validaLetras(this.value)"  placeholder="Usuario">
                    <div class="underline"></div>
                </div>
                <div class="input-field">
                    <input type="password" name="password" id="password" placeholder="Senha">
                    <div class="underline"></div>
                </div>
                <input type="submit" id="btn-submit" value="Login">
            </form>
        </main>
    </body>

</html>