function verOcultar() {
    var pass = document.getElementById("pass");

    if (pass.type === "text") {
        $('#pass').removeAttr("type", "text"); //Removemos el atributo de Tipo Texto
        $("#pass").prop("type", "password"); //Agregamos el atributo de Tipo Contraseña
    } else {
        $('#pass').removeAttr("type", "password"); //Removemos el atributo de Tipo Contraseña
        $("#pass").prop("type", "text"); //Agregamos el atributo de Tipo Texto(Para que se vea la Contraseña escribida)
    }
}
