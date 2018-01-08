<%-- 
    Document   : Loginn
    Created on : 07-ene-2018, 19:30:32
    Author     : Yaquiii
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

        <div class="parallax-container"/>
        <div class="parallax"/><img src="../img/login.jpg"></div>
    <div class="container"/>
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

                        <!-- start buttons -->
                        <div class="row">
                            <%--<div class="col m6 s12 card-action left-align">
                                <a class="waves-effect btn #0d47a1 blue darken-4" href="registroUsuario">¡Registrate!</a>
                            </div>--%>
                            <div class="col m6 s12 card-action right-align">
                                <input class="waves-effect btn #0d47a1 blue darken-4" type="submit" name="btnIngresar" value="Ingresar">
                            </div>
                            <div class="col m6 s12 card-action right-align">
                                <button data-target="newUser" class="waves-effect btn #0d47a1 blue darken-4">Registro</button>
                            </div>
                        </div>
                        <!-- end buttons -->
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
</div>
<jsp:include page="../plantillas/necesarioScripts"/>

<%
    String resultadoRegistro = dtoUser.getRespuestaRegistro();

    if (!resultadoRegistro.isEmpty()) {
        out.write("<button id=\"valorOculto\" value=\"" + resultadoRegistro + "\" hidden=\"\"></button>");
%>

<script type="text/javascript">
    Materialize.toast(document.getElementById("valorOculto").value, 4000, 'rounded');
</script>
<%
    }
%>


<jsp:include page="../plantillas/footerGeneral.jsp"/>
</body>

</html>

<div id="newUser" class="modal">
    <div class="modal-content">
        <!--
        <h4>Registro de nuevo usuario</h4>
        <p>Puede registrar alumnos, como nuevos encargados.</p>
        -->
        <div class="teal-text"><h3 align="center">Ingrese sus datos:</h3></div>
        <br>

        <form method="post" id="nuevoRegistro"> 
            <div class="row">
                <div class="input-field col s4">
                    <select name="tipoUsuario" id="tipoUsuario" required="">
                        <option value="" disabled selected>Elige una opción:</option>
                        <option value="1">Alumno</option>
                        <option value="2">Encargado</option>
                    </select>
                    <label for="tipoUsuario">Tipo de Usuario</label>
                </div>

                <div class="input-field col s4">
                    <input name="nombre" class="active" id="nombre" type="text" required="">
                    <label for="nombre">Nombre:</label>
                </div>

                <div class="input-field col s4">
                    <input name="apePaterno" class="active" id="apePaterno" type="text" required="">
                    <label for="apePaterno">Apellido Paterno:</label>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s4">
                    <input name="materno" class="active" id="materno" type="text" required="">
                    <label for="materno">Apellido Materno:</label>
                </div>

                <div class="input-field col s4">
                    <input name="correo" id="correo" type="email" class="active" required="">
                    <label for="correo">E-mail:</label>
                </div>

                <div class="input-field col s4">
                    <span id="change" class="material-icons prefix" onclick="verOcultar()">remove_red_eye</span>
                    <input name="pass" id="pass" type="password" class="active" required="" onkeyup="compruebaPassword()">
                    <label for="pass">Contraseña:</label>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s4">
                    <span id="change" class="material-icons prefix" onclick="verOcultar2()">remove_red_eye</span>
                    <input name="rePass" id="rePass" type="password" class="active" required="" onkeyup="compruebaPassword()">
                    <label for="rePass">Repita contraseña:</label>
                </div>
            </div>

            <div class="row right">
                <!-- <input class="waves-effect waves-light btn" type="button" onclick="nuevoUsuario()" id="btnGuarda" value="Guardar Datos" disabled> -->
                <button class="waves-effect waves-light btn" type="button" onclick="nuevoUsuario()" id="btnGuarda" disabled>Guardar Datos</button>
            </div>
        </form>

    </div>
    <!--
        <div class="modal-footer">
        </div>
    -->
</div>
<!-- FinalNuevo registro -->
<%--<script src="../home/Controller/dashAdministrador.js"></script><%--%>
<script src="../home/Controller/dashEncargado.js"></script>

