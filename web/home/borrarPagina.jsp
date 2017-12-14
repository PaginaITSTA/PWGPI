<%-- 
    Document   : borrarPagina
    Created on : 13/12/2017, 12:20:26 PM
    Author     : Clair
--%>
<jsp:useBean class="mx.edu.itsta.DTO.DTOLogin" id="dtoLogin" scope="session"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Intrusión</title>
        <jsp:include page="../plantillas/necesarioParaPw"/>
    </head>
    <body>
        <%
            String tipoUser = request.getParameter("tipoUser");
            String sesion = request.getParameter("sesion");

            if (tipoUser != null) {
        %>
        <b>Tipo user: </b><%= request.getParameter("tipoUser")%>

        <%
            dtoLogin.setTipoUser(request.getParameter("tipoUser"));
            dtoLogin.setCorreo(request.getParameter("correo"));
            dtoLogin.setAcceso(1);
        } else if (sesion != null) {
        %>
        <b>Se ha cerrado la sesion!</b>
        <%
                session.invalidate();
            }
        %>

        <div class="container">
            <!--
            <h1 class="center-align" >Hola Erick...</h1>
            <h3 class="center-align">Esta página no debería de existir.</h3>
            -->
            <form method="post" action="">
                <div class="input-field">
                    <div class="row">
                        <!--<label class=" active" for="tipoUser">Tipo de usuario:</label>-->
                        <select required name="tipoUser">
                            <option value="Alumno" selected>Alumno</option>
                            <option value="Encargado">Encargado</option>
                            <option value="Administrador">Administrador</option>
                        </select>

                        <!-- <label class="active" for="correo">Correo:</label> -->
                        <input type="email" class="center-align" name="correo" value="alguien@example.com">

                    </div>
                </div>
                <div class="col m6 s12 card-action right-align">
                    <input class="waves-effect btn #0d47a1 blue darken-4" type="submit" name="btnIngresar" value="Ingresar">
                </div>
            </form>

            <br><br>

            <form action="" method="post">
                <div class="input-field hide">
                    <div class="row">
                        <label class="active" for="sesion">Correo:</label>
                        <input type="text" class="center-align" name="sesion">
                    </div>
                </div>
                <input class="waves-effect btn #0d47a1 blue darken-4" type="submit" name="cS" value="Cerrar sesion">
            </form>


        </div>
        <jsp:include page="../plantillas/necesarioScripts"/>
    </body>
</html>
