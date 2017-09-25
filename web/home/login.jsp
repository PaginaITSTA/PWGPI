<%-- 
    Document   : login
    Created on : 17/09/2017, 05:24:47 PM
    Author     : Clair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingreso</title>
        
        <jsp:include page="../plantillas/necesarioParaPw.jsp"></jsp:include>
    </head>
    <body>
        <jsp:include page="../plantillas/navLogin.jsp"/>

        <div class="container">

            <br><br>

            <div class="row">
                <div class="col m3 s12">

                </div>
                <div class="col s12 m6">
                    <div class="card #1565c0 blue darken-3">
                        <form action="controlador/control_login.php" method="post">
                            <div class="card-content white-text">
                                <span class="card-title">Ingrese por favor.</span>

                                <div class="input-field">
                                    <div class="row">
                                        <label class=" active" for="login[]">Tipo de usuario:</label>
                                        <select required name="login[]">
                                            <option value="Alumno" selected>Alumno</option>
                                            <option value="Encargado">Encargado</option>
                                            <option value="Administrador">Administrador</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="input-field">
                                    <div class="row">
                                        <label class="active" for="login[]">Correo:</label>
                                        <input type="email" class="center-align" name="login[]" placeholder="alguien@example.com" required>
                                    </div>
                                </div>
                                
                                <div class="input-field">
                                    <div class="row">
                                        <label for="login[]" class="active">Contraseña:</label>
                                        <input type="password" class="center-align" name="login[]" size="10" required>
                                    </div>
                                </div>
                            </div>

                            <!-- start buttons -->
                            <div class="row">
                                <div class="col m6 s12 card-action left-align">
                                    <a class="waves-effect btn #0d47a1 blue darken-4" href="../forms/registro.php">¡Registrate!</a>
                                </div>

                                <div class="col m6 s12 card-action right-align">
                                    <input class="waves-effect btn #0d47a1 blue darken-4" type="submit" value="Ingresar">
                                </div>
                            </div>
                            <!-- end buttons -->
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="../plantillas/footerGeneral.jsp"/>

        <script type="text/javascript" src="../js/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="../js/materialize.min.js"></script>

        <script>
		$(document).ready(function(){
			$(".button-collapse").sideNav();
			$('select').material_select();
			$('.modal').modal();
		});
	</script>
    </body>
</html>
