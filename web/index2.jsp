<html>
    <head>
        <title>Formulario con Ajax</title>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    </head>
    <body>
        <div id="formulario">
            <form method="post" id="formdata">
                <label for="nombre">Nombre: </label><input type="text" name="nombre" id="nombre" required="required"></br>
                <label for="apellidos">Apellidos: </label><input type="text" name="apellidos" id="apellidos" required="required"></br>
                <label for="direccion">Dirección: </label><input type="text" name="direccion" id="direccion" required="required"></br>
                Género: <input type="radio" name="genero" id="hombre" checked="checked"><label for="hombre"> Hombre - </label><input type="radio" name="genero" id="mujer"><label for="mujer"> Mujer</label>
                <label for="mayor">Es mayor de 18 años: </label><input type="checkbox" name="mayor" id="mayor" required="required">
                <input type="button" id="botonenviar" onclick="enviarDatos()" value="Enviar">
            </form>
        </div>
        <div id="exito" style="display: none">
            Sus datos han sido recibidos con éxito.
        </div>
        <div id="fracaso" style="display: none">
            Se ha producido un error durante el envío de datos.
        </div>

        <div id="respuesta">

        </div>

        <script type="text/javascript">
            console.log("Entro en el script");
            function enviarDatos() {
                console.log("Entro al onClick")
                $.ajax({
                    // La URL de la petición
                    url: "form.jsp",
                    // la información a enviar
                    data: {
                        nombre: $("#nombre").val(),
                        apellidos: $("#apellidos").val()
                    },
                    // especifica si será una petición POST o GET
                    type: 'POST',
                    // el tipo de información que se espera de respuesta
                    dataType: 'html',
                    // código a ejecutar si la petición es satisfactoria;
                    // la respuesta es pasada como argumento a la función
                    success: function (respuesta) {
                        //alert('Todo bien');
                        $("#exito").delay(500).fadeIn("slow");
                        $("#respuesta").html(respuesta);
                    },
                    // código a ejecutar si la petición falla;
                    // son pasados como argumentos a la función
                    // el objeto de la petición en crudo y código de estatus de la petición
                    error: function (xhr, status) {
                        alert('Disculpe, No coincide esta consulta en la base de datos');
                        $("#fracaso").delay(500).fadeIn("slow");
                    },
                    // código a ejecutar sin importar si la petición falló o no
                    complete: function (xhr, status) {
                        //alert('Petición realizada');
                    }
                });
            }
        </script>
    </body>
</html>