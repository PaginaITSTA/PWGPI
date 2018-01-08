<%-- 
    Document   : perfil
    Created on : 2/10/2017, 01:11:10 PM
    Author     : Clair
--%>
<jsp:useBean class="mx.edu.itsta.Controller.Controller" id="controller" scope="session"></jsp:useBean>
<jsp:useBean class="mx.edu.itsta.DTO.DTOuser" id="datosUsuario" scope="session"></jsp:useBean>
<jsp:useBean class="mx.edu.itsta.DTO.DTOLogin" id="dtoLogin" scope="session"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if (dtoLogin.getAcceso() == 0) {
        response.sendRedirect("login");
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil del usuario</title>
        <jsp:include page="../plantillas/necesarioParaPw"/>
    </head>
    <body>
        <jsp:include page="../plantillas/navPerfil"/>

        <div class="container">
            <div class="row">
                <div class="col s12 m4">
                    <img class="materialboxed" src="../img/perfil.jpg">
                </div>


                <div class="col s12 m8">
                    <h2 class="header">Datos personales</h2>

                    <div class="card-stacked">
                        <form method="post" action="">
                            <div class="card-content">
                                <div class="row">
                                    <div class="input-field col m4 s12">
                                        <input name="nombre" class="active" id="nombre" type="text" required="" value="<%= datosUsuario.getNombre()%>">
                                        <label for="nombre">Nombre:</label>
                                    </div>

                                    <div class="input-field col m4 s12">
                                        <input name="apePaterno" class="active" id="apePaterno" type="text" required="" value="<%= datosUsuario.getApePaterno()%>">
                                        <label for="apePaterno">Apellido Paterno:</label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="input-field col m4 s12">
                                        <input name="ApeMaterno" class="active" id="ApeMaterno" type="text" required="" value="<%= datosUsuario.getMaterno()%>">
                                        <label for="ApeMaterno">Apellido Materno:</label>
                                    </div>

                                    <div class="input-field col m4 s12">
                                        <input name="Correo" id="Correo" type="email" class="active" required="" value="<%= datosUsuario.getCorreo()%>">
                                        <label for="Correo">E-mail:</label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="input-field col m4 s12">
                                        <span id="change" class="material-icons prefix" onclick="verOcultar()">remove_red_eye</span>
                                        <input name="pass" id="pass" type="password" class="active" required value="<%= datosUsuario.getPass()%>"/>
                                        <label for="pass">Contraseña:</label>
                                    </div>
                                </div>

                            </div>
                            <div class="card-action">
                                <div class="right">
                            <%
                            datosUsuario.setTipoUser(1);
                            %>
                                  <button id="btnGuarda" class="waves-effect waves-light btn" type="submit" disabled>Guardar cambios.<i class="material-icons right">send</i></button>
                                </div>
                                <br><br>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
         <%
            String resultadoRegistro = datosUsuario.getRespuestaRegistro();

            if (!resultadoRegistro.isEmpty()) {
                out.write("<button id=\"valorOculto\" value=\"" + resultadoRegistro + "\" hidden=\"\"></button>");
        %>

        <script>
            Materialize.toast(document.getElementById("valorOculto").value, 4000, 'rounded');
        </script>
        <%
            }
        %>
        <jsp:include page="../plantillas/footerGeneral"/>
        <script src="./Controller/verOcultarPass.js"></script>
        <jsp:include page="../plantillas/necesarioScripts"/>
    </body>
</html>
