<%-- 
    Document   : perfil
    Created on : 2/10/2017, 01:11:10 PM
    Author     : Clair
--%>
<jsp:useBean class="mx.edu.itsta.Controller.Controller" id="controller" scope="session"></jsp:useBean>
<jsp:useBean class="mx.edu.itsta.DTO.DTOuser" id="datosUsuario" scope="session"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    //Se obt
    datosUsuario = controller.datosUsuario();
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

            <div class="col s8 m8">
                <h2 class="header">Horizontal Card</h2>
                <div class="card horizontal">
                    <div class="card-image">
                        <img src="../img/1.png">
                    </div>
                    <div class="card-stacked">
                        <form>
                            <div class="card-content">
                                <div class="row">
                                    <div class="input-field col m4 s8 ">
                                        <input name="nombre" class="active" id="nombre" type="text" required="" value="<%= datosUsuario.getNombre()%>">
                                        <label for="nombre">Nombre:</label>
                                    </div>

                                    <div class="input-field col m4 s8 ">
                                        <input name="apePaterno" class="active" id="apePaterno" type="text" required="" value="<%= datosUsuario.getApePaterno()%>">
                                        <label for="apePaterno">Apellido Paterno:</label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="input-field col m4 s8 ">
                                        <input name="ApeMaterno" class="active" id="ApeMaterno" type="text" required="" value="<%= datosUsuario.getApeMaterno()%>">
                                        <label for="ApeMaterno">Apellido Materno:</label>
                                    </div>

                                    <div class="input-field col m4 s8 ">
                                        <input name="Correo" id="Correo" type="email" class="active" required="" value="<%= datosUsuario.getCorreo()%>">
                                        <label for="Correo">E-mail:</label>
                                    </div>
                                </div>
                            </div>
                            <div class="card-action">
                                <div class="right">
                                    <button id="btnGuarda" class="waves-effect waves-light btn" type="submit">Guardar datos.<i class="material-icons right">send</i></button>
                                </div>
                                <br><br>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>

        <jsp:include page="../plantillas/footerGeneral"/>
        <jsp:include page="../plantillas/necesarioScripts"/>
    </body>
</html>
