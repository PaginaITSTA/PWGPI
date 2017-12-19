function guardarArchivo() {

    var data = new FormData();
    jQuery.each(jQuery('#file')[0].files, function (i, file) {
        data.append('file-' + i, file);
    });

    var tipoArchivo = $("#tipoArchivo").val();
    data.append('tipoArchivo', tipoArchivo);

    jQuery.ajax({
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
}

function nuevoUsuario() {

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
            $("#respuesta2").html(resp);
            Materialize.toast(document.getElementById("valorOculto2").value, 4000);
        },
        error: function (xhr, status) {
            Materialize.toast('Ha ocurrido un error: ' + xhr + ', estatus ' + status, 4000);
        }
    });
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