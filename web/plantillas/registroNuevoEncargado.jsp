<%-- 
    Document   : registroNuevoEncargado
    Created on : 18/12/2017, 07:32:25 PM
    Author     : Clair
--%>

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

        </div>

        <div class="row">
            <div class="input-field col s4">
                <input name="correo" id="correo" type="email" class="active" required="">
                <label for="correo">E-mail:</label>
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