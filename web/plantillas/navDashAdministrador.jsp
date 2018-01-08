<%-- 
    Document   : navDashAlumno
    Created on : 27/09/2017, 10:01:16 PM
    Author     : Clair
--%>

<nav>
    <div class="nav-wrapper #1565c0 blue darken-3">
        <a href="../home/home" class="brand-logo">Gestión de Proyectos de Software</a>
        <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">Menu</i></a>
        <ul class="right hide-on-med-and-down">
            
            <li><a href="../home/Controller/limpiarSession">Cerrar Sesión</a></li>
        </ul>
        <ul class="side-nav" id="mobile-demo">
            
            <li><a href="../home/Controller/limpiarSession">Cerrar Sesión</a></li>
        </ul>
    </div>
</nav>

<!-- Contenido central -->
<div class="row #1976d2 blue darken-2">
    <!-- Botones lado izquierdo -->
    <div class="col s3 cyan">
        <br>
        <div class="row">
            <button data-target="newUser" class="btn modal-trigger">Hacer Registro</button>
        </div>
        <div class="row">
            <button data-target="verRegistros" class="btn modal-trigger">Ver Registros</button>
        </div>
        <%--<div class="row">
            <button data-target="EliminarRegistros" class="btn modal-trigger">Eliminar Registros</button>
        </div>--%>
    </div>
    <!-- Final botones lado izquierdo -->
</div>
<!-- Fin contenido central -->


<!-- Nuevo registro -->
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

<!-- Ver registro -->
<div id="verRegistros" class="modal">
    <div class="modal-content">
        <div class="row col s12">

            <div class="col m8">
                <h4>Registros</h4>
                <p>Lista de los registros tanto de los alumnos como de los docentes.</p>
            </div>

            <div class="col m4">
                <div class="row">
                    <button class="waves-effect waves-light btn" onclick="location = '../home/RegistrosT.jsp'">Abrir</button>
                </div>
            </div>
        </div>

        <jsp:include page="../plantillas/interiorVerRegistros.jsp"/>

    </div>

    <div class="modal-footer">
        <div class="row">
            <div class="col s12 m4"></div>
            <%--<div class="col s12 m4 center-align"><button class="waves-effect waves-light btn" onclick="location = '../home/temario'">Abrir</button></div>--%>
            
        </div>
    </div>
</div>
<!-- Final Ver registro -->

<!-- Eliminar registro -->
<div id="EliminarRegistros" class="modal">
    <div class="modal-content">
        <div class="row col s12">

            <div class="col m8">
                <h4>Registros</h4>
                <p>Elimine los registros tanto de los alumnos como de los docentes.</p>
            </div>

            <%--<div class="row right">
               
                <button class="waves-effect waves-light btn" type="button" onclick="nuevoUsuario()" id="btnGuarda" disabled>Eliminar Registros</button>
            </div>
            --%>
            <div class="col m4">
                <div class="row">
                    <button class="waves-effect waves-light btn" onclick="location = '../home/RegistrosT.jsp'">Abrir</button>
                </div>
            </div>
        </div>

        <jsp:include page="../plantillas/interiorVerRegistros.jsp"/>

    </div>

    <div class="modal-footer">
        <div class="row">
            <div class="col s12 m4"></div>
            <%--<div class="col s12 m4 center-align"><button class="waves-effect waves-light btn" onclick="location = '../home/temario'">Abrir</button></div>--%>
            
        </div>
    </div>
</div>
<!-- Final Eliminar registros -->
<div id="respuesta"></div>
<div id="respuesta2"></div>

<script src="../home/Controller/dashAdministrador.js"></script>
