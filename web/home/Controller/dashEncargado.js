function guardarArchivo() {

    var data = new FormData();
    jQuery.each(jQuery('#file')[0].files, function (i, file) {
        data.append('file-' + i, file);
    });

    var tipoArchivo = $("#tipoArchivo").val();
    var tamTipoArchivo = tipoArchivo.length;

    if (tamTipoArchivo > 0) {
        data.append('tipoArchivo', tipoArchivo);

        $.ajax({
            url: "../home/Controller/subir",
            data: data,
            dataType: 'html',
            cache: false,
            contentType: false,
            processData: false,
            method: 'POST',
            type: 'POST', // For jQuery < 1.9
            success: function (respuesta) {
                document.getElementById("nameValue").value = "";
                $("#respuesta").html(respuesta);
                Materialize.toast(document.getElementById("valorOculto2").value, 4000);
            },
            error: function (xhr, status) {
                Materialize.toast('Ha ocurrido un error', 4000);
            }
        });
    } else {
        Materialize.toast('Debe de señalar que tipo de archivo es', 4000);
    }


}

function nuevoUsuario() {
    var tipoUser = document.getElementById("tipoUsuario").value;
    var nombre = document.getElementById("nombre").value;
    var apeP = document.getElementById("apePaterno").value;
    var apeM = document.getElementById("materno").value;
    var mail = document.getElementById("correo").value;

    var tamTipoUser = tipoUser.length;
    var tamNombre = nombre.length;
    var tamApeP = apeP.length;
    var tamApeM = apeM.length;
    var tamMail = mail.length;

    if ((tamTipoUser > 0) && (tamNombre > 0) && (tamApeP > 0) && (tamApeM > 0) && (tamMail > 0)) {
        $.ajax({
            url: "../home/Controller/nuevoUsuario.jsp",
            data: {
                tipoUser: $("#tipoUsuario").val(),
                nombre: $("#nombre").val(),
                apeP: $("#apePaterno").val(),
                apeM: $("#materno").val(),
                mail: $("#correo").val(),
                pass: $("#pass").val()
            },
            type: 'POST', // For jQuery < 1.9
            dataType: 'html',
            success: function (resp) {
                document.getElementById("nombre").value = "";
                document.getElementById("apePaterno").value = "";
                document.getElementById("materno").value = "";
                document.getElementById("correo").value = "";
                document.getElementById("pass").value = "";
                document.getElementById("rePass").value = "";
                $("#respuesta2").html(resp);
                Materialize.toast(document.getElementById("valorOculto2").value, 4000);
            },
            error: function (xhr, status) {
                Materialize.toast('Ha ocurrido un error: ' + xhr + ', estatus ' + status, 4000);
            }
        });
    } else {
        Materialize.toast('Todos los campos deben de estar llenos', 4000);
    }

}

function compruebaPassword() {
    var Pass = document.getElementById("pass").value;
    var Repass = document.getElementById("rePass").value;
    var btnGuarda = document.getElementById("btnGuarda");

    var tamPass = Pass.length;

    if (Pass == Repass) {
        if (tamPass > 0) {
            btnGuarda.disabled = false;
        }
    } else {
        btnGuarda.disabled = true;
    }
}

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

function verOcultar2() {
    var pass = document.getElementById("rePass");

    if (pass.type === "text") {
        $('#rePass').removeAttr("type", "text"); //Removemos el atributo de Tipo Texto
        $("#rePass").prop("type", "password"); //Agregamos el atributo de Tipo Contraseña
    } else {
        $('#rePass').removeAttr("type", "password"); //Removemos el atributo de Tipo Contraseña
        $("#rePass").prop("type", "text"); //Agregamos el atributo de Tipo Texto(Para que se vea la Contraseña escribida)
    }
}