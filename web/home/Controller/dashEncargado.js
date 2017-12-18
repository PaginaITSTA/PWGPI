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
        success: function (data) {
            document.getElementById("nameValue").value = "";
            $("#respuesta").html(respuesta);
            Materialize.toast(document.getElementById("valorOculto").value, 4000);
        },
        error: function (xhr, status) {
            Materialize.toast('Ha ocurrido un error', 4000);
        }
    });
}