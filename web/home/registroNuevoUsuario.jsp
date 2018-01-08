
<%-- 
    Document   : registroNuevoUsuario
    Created on : 27/09/2017, 11:46:19 PM
    Author     : Clair
--%>

<jsp:useBean class="mx.edu.itsta.DTO.DTOuser" id="dtoUser" scope="session"></jsp:useBean>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de un nuevo usuario</title>

        <jsp:include page="../plantillas/necesarioParaPw"/>
    </head>
    <body>
        <jsp:include page="../plantillas/navNuevoRegistro"/>

        <div class="container">
            <div class="teal-text"><h3 align="center">Ingrese sus datos:</h3></div>
            <br>

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
                        <input name="materno" class="active" id="materno" type="text" required="">
                        <label for="materno">Apellido Materno:</label>
                    </div>

                

                    <%-- <div class="row">--%>
                    <div class="input-field col s4">
                        <input name="correo" id="correo" type="email" class="active" required="">
                        <label for="correo">E-mail:</label>
                    </div>

                    <div class="input-field col s4">
                        <input name="pass" id="pass" type="password" class="active" required="" onkeyup="compruebaPassword()">
                        <label for="pass">Contraseña:</label>
                    </div>

                    <div class="input-field col s4">
                        <input name="rePass" id="rePass" type="password" class="active" required="" onkeyup="compruebaPassword()">
                        <label for="rePass">Repita contraseña:</label>
                    </div>
                </div>

                <div class="row">
                    <div class="right">
                        <%
                            dtoUser.setTipoUser(1);
                        %>
                        <button id="btnGuarda" class="waves-effect waves-light btn" type="submit" disabled>Completa tu registro<i class="material-icons right">send</i></button>
                    </div>
                </div>
            </form>
        </div>

        <%
            String resultadoRegistro = dtoUser.getRespuestaRegistro();

            if (!resultadoRegistro.isEmpty()) {
                out.write("<button id=\"valorOculto\" value=\"" + resultadoRegistro + "\" hidden=\"\"></button>");
            }
            
        %>

        <script>
            Materialize.toast(document.getElementById("valorOculto").value, 4000, 'rounded');
        </script>
        <%
            }
        %>

        <jsp:include page="../plantillas/footerGeneral"/>
        <script src="./Controller/functionNuevoRegistro.js"></script>
        <jsp:include page="../plantillas/necesarioScripts"></jsp:include>
    </body>
</html>