<%-- 
    Document   : navDashEncargado
    Created on : 27/09/2017, 10:13:51 PM
    Author     : Clair
--%>

<ul id="lista" class="dropdown-content">
    <li><a >Temario</a></li>
    <li class="divider"></li>
    <li><a href="#!">Actividades</a></li>
    <li><a href="#!">Apuntes</a></li>
    <li><a href="#!">Materiales</a></li>    
</ul>

<ul id="lista2" class="dropdown-content">
    <li><a href="../home/temario">Temario</a></li>
    <li class="divider"></li>
    <li><a href="#!">Actividades</a></li>
    <li><a href="#!">Apuntes</a></li>
    <li><a href="#!">Materiales</a></li>    
</ul>

<nav>
    <div class="nav-wrapper #1565c0 blue darken-3">
        <a href="../home/home" class="brand-logo">Gestión de Proyectos de Software</a>
        <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
        <ul class="right hide-on-med-and-down">
            <li><a href="../index">Inicio</a></li>
            <li><a href="../home/perfil">Perfil</a></li>
            <li><a href="../home/Controller/limpiarSession">Cerrar sesión</a></li>
        </ul>
        <ul class="side-nav" id="mobile-demo">
            <li><a href="../index">Inicio</a></li>
            <li><a href="../home/perfil">Perfil</a></li>
            <li><a href="../home/Controller/limpiarSession">Cerrar sesión</a></li>
        </ul>
    </div>
</nav>

<div class="row #1976d2 blue darken-2">
    <div class="col s3 cyan">
        <br>
        <div class="row">
            <button class="waves-effect waves-light btn" onclick="location = '../home/perfil'">Perfil</button>
        </div>
        <div class="row">
            <button data-target="temario" class="btn modal-trigger">Temario</button>
        </div>
        <div class="row">
            <a href="#" data-activates="slide-out" class="button-collapse waves-effect waves-light btn">Acerca de</a>
        </div>
        <div class="row">
            <button data-target="subirArchivo" class="btn modal-trigger">Subir Arhivo</button>
        </div>
        <div class="row">
            <button data-target="newUser" class="btn modal-trigger">Hacer Registro</button>
        </div>

    </div>
    <div class="col s9 blue-grey darken-1">

        <div class="row">
            <br>
            <div class="col m1 s12">

            </div>
            <object class="col m10 s12" data="https://calendar.google.com/calendar/embed?height=400&amp;wkst=1&amp;bgcolor=%233366ff&amp;src=munfpg14agtkp08ppaviphpg88%40group.calendar.google.com&amp;color=%235229A3&amp;ctz=America%2FMexico_City" height="350">
            </object>
        </div>
        <br>


    </div>

</div>

<!-- About -->
<ul id="slide-out" class="side-nav #757575 grey darken-1">
    <li>
        <div class="user-view">
            <div class="background">
                <img src="../img/acercaDe1.JPG">
            </div>
            <a href="../home/perfil"><img class="circle" src="../img/perfil.jpg"></a>
            <a href=""><span class="name">John Doe</span></a>
            <a href="#!email"><span class="email">jdandturk@gmail.com</span></a>
        </div>
    </li>

    <li><a href="#!"><i class="material-icons">cloud</i>First Link With Icon</a></li>
    <li><a href="#!">Second Link</a></li>
    <li><div class="divider"></div></li>

    <li><a class="subheader">Subheader</a></li>
    <li><a class="waves-effect" href="#!">Third Link With Waves</a></li>
</ul>
<!-- End about -->

<!-- Upload file -->
<div id="subirArchivo" class="modal">
    <div class="modal-content">
        <h4>Subir archivo</h4>
        <p>Puede elegir un archivo a la vez.</p>

        <form method="post" id="formdata" enctype="multipart/form-data">
            <div class="row">
                <div class="input-field col s12 m6">
                    <select name="tipoArchivo" id="tipoArchivo">
                        <option value="" disabled selected>Elige una opción:</option>
                        <option value="1">Actividad</option>
                        <option value="2">Material</option>
                        <option value="3">Apunte</option>
                    </select>
                    <label for="tipoArchivo">Tipo de archivo</label>
                </div>

                <div class="file-field input-field col s12 m6">
                    <div class="btn">
                        <span>Archivo</span>
                        <input id="file" type="file" name="file" multiple>
                    </div>
                    <div class="file-path-wrapper">
                        <input class="file-path validate" type="text" id="nameValue" value="" placeholder="Archivo a subir">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s12 m8"></div>
                <div class="col s12 m4">
                    <input class="waves-effect waves-light btn" type="button" onclick="guardarArchivo()" value="Subir" >
                </div>
            </div>
        </form>

    </div>

</div>
<!-- End upload files -->

<!-- Temario -->
<div id="temario" class="modal">
    <div class="modal-content">
        <div class="row col s12">

            <div class="col m8">
                <h4>Temario</h4>
                <p>Los temas que se veran en el curso.</p>
            </div>

            <div class="col m4">
                <div class="row">
                    <button class="waves-effect waves-light btn" onclick="location = '../home/temario'">Abrir</button>
                </div>
                <div class="row">
                    <button class="waves-effect waves-light btn" onclick="window.open('../pdf/Temario.pdf')">Descargar</a>
                </div>
            </div>

        </div>


        <jsp:include page="../plantillas/interiorDelTemario.jsp"/>

    </div>

    <div class="modal-footer">
        <div class="row">
            <div class="col s12 m4"></div>
            <div class="col s12 m4 center-align"><button class="waves-effect waves-light btn" onclick="location = '../home/temario'">Abrir</button></div>
            <div class="col s12 m4 center-align"><button class="waves-effect waves-light btn" onclick="window.open('../pdf/Temario.pdf')">Descargar</a></div>
        </div>


    </div>
</div>
<!-- Final temario -->

<!-- Nuevo registro -->
<div id="newUser" class="modal">
    <div class="modal-content">
        <!--
        <h4>Registro de nuevo usuario</h4>
        <p>Puede registrar alumnos, como nuevos encargados.</p>
        -->
        <div class="teal-text"><h3 align="center">Ingrese los nuevos datos:</h3></div>
        <br>

        <form method="post" id="nuevoRegistro">
            <div class="row">
                <div class="input-field col s4">
                    <select name="tipoArchivo" id="tipoArchivo" required="">
                        <option value="" disabled selected>Elige una opción:</option>
                        <option value="1">Alumno</option>
                        <option value="2">Encargado</option>
                    </select>
                    <label for="tipoArchivo">Tipo de archivo</label>
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
                    <input name="pass" id="pass" type="password" class="active" required onkeyup="compruebaPassword()">
                    <label for="pass">Contraseña:</label>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s4">
                    <input name="rePass" id="rePass" type="password" class="active" required onkeyup="compruebaPassword()">
                    <label for="rePass">Repita contraseña:</label>
                </div>
            </div>

            <div class="row">
                <div class="right">
                    <button class="waves-effect waves-light btn" id="btnGuarda" type="button" onclick="nuevoUsuario()" disabled >Guardar Datos<i class="material-icons right">send</i></button>
                </div>
            </div>
        </form>

    </div>
    <!--
        <div class="modal-footer">
        </div>
    -->
</div>
<!-- FinalNuevo registro -->

<div id="respuesta"></div>
<div id="respuesta2"></div>


<script src="../home/Controller/dashEncargado.js"></script>

<!--

-->
