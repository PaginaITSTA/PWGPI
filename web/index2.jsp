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
                <label for="direccion">Direcci�n: </label><input type="text" name="direccion" id="direccion" required="required"></br>
                G�nero: <input type="radio" name="genero" id="hombre" checked="checked"><label for="hombre"> Hombre - </label><input type="radio" name="genero" id="mujer"><label for="mujer"> Mujer</label>
                <label for="mayor">Es mayor de 18 a�os: </label><input type="checkbox" name="mayor" id="mayor" required="required">
                <input type="button" id="botonenviar" onclick="enviarDatos()" value="Enviar">
            </form>
        </div>
        <div id="exito" style="display: none">
            Sus datos han sido recibidos con �xito.
        </div>
        <div id="fracaso" style="display: none">
            Se ha producido un error durante el env�o de datos.
        </div>

        <div id="respuesta">

        </div>

        <script type="text/javascript">
            console.log("Entro en el script");
            function enviarDatos() {
                console.log("Entro al onClick")
                $.ajax({
                    // La URL de la petici�n
                    url: "form.jsp",
                    // la informaci�n a enviar
                    data: {
                        nombre: $("#nombre").val(),
                        apellidos: $("#apellidos").val()
                    },
                    // especifica si ser� una petici�n POST o GET
                    type: 'POST',
                    // el tipo de informaci�n que se espera de respuesta
                    dataType: 'html',
                    // c�digo a ejecutar si la petici�n es satisfactoria;
                    // la respuesta es pasada como argumento a la funci�n
                    success: function (respuesta) {
                        //alert('Todo bien');
                        $("#exito").delay(500).fadeIn("slow");
                        $("#respuesta").html(respuesta);
                    },
                    // c�digo a ejecutar si la petici�n falla;
                    // son pasados como argumentos a la funci�n
                    // el objeto de la petici�n en crudo y c�digo de estatus de la petici�n
                    error: function (xhr, status) {
                        alert('Disculpe, No coincide esta consulta en la base de datos');
                        $("#fracaso").delay(500).fadeIn("slow");
                    },
                    // c�digo a ejecutar sin importar si la petici�n fall� o no
                    complete: function (xhr, status) {
                        //alert('Petici�n realizada');
                    }
                });
            }
        </script>
    </body>
</html>