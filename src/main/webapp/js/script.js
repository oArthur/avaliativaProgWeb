function validaNumero(value) {
    //verifica se o campo está vazio
    if (value.trim() !== "") {
        var regra = /^[0-9]+$/;
        //verifica se o valor do campo é um número.
        if (value.match(regra)) {
            //verifica se o valor esta de acordo com a regra.
            document.getElementById("notaDisciplina").className = document.getElementById("notaDisciplina").className.replace(" error", "");
        } else {
            document.getElementById("notaDisciplina").className = document.getElementById("notaDisciplina").className + " error";
            alert("Permitido somente numeros");
            document.getElementById('notaDisciplina').value = '';
        }
    }
}

function validaLetras(value) {
    if (value.trim() !== "") {
        var regra = /^[a-zA-Z]+$/;
        if (value.match(regra)) {
            //verifica se o valor esta de acordo com a regra.
            document.getElementById("user").className = document.getElementById("user").className.replace(" error", "");
            //remove a classe error do campo.
        } else {
            document.getElementById("user").className = document.getElementById("user").className + " error";
            // deixa o campo com a classe error.c
            alert("Permitido somente letras");
        }
    }
}