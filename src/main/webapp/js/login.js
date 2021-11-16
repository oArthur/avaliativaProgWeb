function logar() {
    var usuario = document.getElementById("user"); // pega o valor do input user 
    var senha = document.getElementById("password"); // pega o valor do input password

    if (usuario.value == "professor" && senha.value == "Progweb2021") {
        // se o usuario for 'professor' e a senha for 'Progweb2021' ele cria uma sessao e redireciona para a pagina principal
        sessionStorage.setItem("user", "professor");
        alert("Usuario autenticado.");
        window.location.href = "home.jsp";
        return false;
    } else {
        // se nao for ele retorna um alerta de erro. 
        alert("Usuario ou senha incorretos! Tente novamente.")
    }
}

function sair() {
    window.location.href = "autentica.jsp";
    sessionStorage.removeItem("logado");
}