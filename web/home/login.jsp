<%-- 
    Document   : login
    Created on : 17/09/2017, 05:24:47 PM
    Author     : Clair
--%>

<jsp:useBean class="mx.edu.itsta.DTO.DTOLogin" id="dtoLogin" scope="session"></jsp:useBean>
<jsp:useBean class="mx.edu.itsta.DTO.DTOuser" id="dtoUser" scope="session"></jsp:useBean>

<%
    int acceso = dtoLogin.getAcceso();

    if (acceso == 1) {
        response.sendRedirect("dashboard");
    }
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingreso</title>

        <jsp:include page="../plantillas/necesarioParaPw"></jsp:include>
        </head>
        <body>
        <jsp:include page="../plantillas/navLogin"/>
        <div class="parallax-container">
            <div class="parallax"><img src="../img/login.jpg"></div>


            <div class="container">

                <br><br>

                <div class="row">
                    <div class="col m3 s12">

                    </div>
                    <div class="col s12 m6">
                        <div class="card #00897b teal darken-1">
                            <form action="Controller/loginController.jsp" method="post">
                                <div class="card-content white-text">
                                    <span class="card-title">Ingrese para entrar</span>

                                    <div class="input-field">
                                        <div class="row">
                                            <label class=" active" for="tipoUser">Tipo de usuario:</label>
                                            <select required name="tipoUser">
                                                <option value="Alumno" selected>Alumno</option>
                                                <option value="Encargado">Encargado</option>
                                                <option value="Administrador">Administrador</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="input-field">
                                        <div class="row">
                                            <label class="active" for="correo">Correo:</label>
                                            <input type="email" class="center-align" name="correo" placeholder="alguien@example.com" required>
                                        </div>
                                    </div>

                                    <div class="input-field">
                                        <div class="row">
                                            <label for="pass" class="active">Contraseña:</label>
                                            <input type="password" class="center-align" name="pass" size="10" required>
                                        </div>
                                    </div>
                                </div>

                                <!-- start buttons -->
                                <div class="row">
                                    <div class="col m6 s12 card-action left-align">
                                        <a class="waves-effect btn #0d47a1 blue darken-4" href="registroNuevoUsuario">¡Registrate!</a>
                                    </div>

                                    <div class="col m6 s12 card-action right-align">
                                        <input class="waves-effect btn #0d47a1 blue darken-4" type="submit" name="btnIngresar" value="Ingresar">
                                    </div>
                                </div>
                                <!-- end buttons -->
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <%
            String resultadoRegistro = dtoUser.getRespuestaRegistro();

            if (!resultadoRegistro.isEmpty()) {
                out.write("<button id=\"valorOculto\" value=\"" + resultadoRegistro +" ></button>");
        %>

        <script>
            Materialize.toast(document.getElementById("valorOculto").value, 4000, 'rounded');
        </script>
        <%
            }
        %>

        <jsp:include page="../plantillas/footerGeneral"/>
        <jsp:include page="../plantillas/necesarioScripts"/>
    </body>
</html>
