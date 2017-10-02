<%-- 
    Document   : registroNuevoUsuario
    Created on : 27/09/2017, 11:46:19 PM
    Author     : Clair
--%>

<jsp:useBean class="mx.edu.itsta.DTO.DTOuser" id="DTOUser" scope="session"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de un nuevo usuario</title>

        <jsp:include page="../plantillas/necesarioParaPw.jsp"></jsp:include>
        </head>

    <jsp:include page="../plantillas/navNuevoRegistro.jsp"/>

    <div class="container">
        <div class="teal-text"><h3 align="center">Ingrese sus datos:</h3></div>
        <br>
        <div class="col s12">
            <form action="Controller/nuevoUsuarioController.jsp" method="post">
                <div class="row">
                    <div class="input-field col s4">
                        <input name="nombre" class="active" id="nombre" type="text" required="">
                        <label for="nombre">Nombre:</label>
                    </div>

                    <div class="input-field col s4">
                        <input name="apePaterno" class="active" id="apePaterno" type="text" required="">
                        <label for="apePaterno">Apellido Paterno:</label>
                    </div>

                    <div class="input-field col s4">
                        <input name="ApeMaterno" class="active" id="ApeMaterno" type="text" required="">
                        <label for="ApeMaterno">Apellido Materno:</label>
                    </div>
                </div>

                <div class="row">
                    <div class="input-field col s4">
                        <input name="Correo" id="Correo" type="email" class="active" required="">
                        <label for="Correo">E-mail:</label>
                    </div>

                    <div class="input-field col s4">
                        <input name="pass" id="pass" type="password" class="active" required>
                        <label for="pass">Contraseña:</label>
                    </div>

                    <div class="input-field col s4">
                        <input name="rePass" id="rePass" type="password" class="active" required onkeyup="compruebaPassword()">
                        <label for="rePass">Repita contraseña:</label>
                    </div>
                </div>

                <div class="row">
                    <div class="right">
                        <button id="btnGuarda" class="waves-effect waves-light btn" type="submit" disabled>Completa tu registro<i class="material-icons right">send</i></button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <jsp:include page="../plantillas/footerGeneral.jsp"/>
    <script src="./Controller/functionNuevoRegistro.js"></script>
    <jsp:include page="../plantillas/necesarioScripts.jsp"></jsp:include>
</html>