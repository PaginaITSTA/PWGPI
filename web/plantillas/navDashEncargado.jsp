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
            <button class="waves-effect waves-light btn" onclick="location = '../home/temario'">Temario</button>
        </div>
        <div class="row">
            <a href="#" data-activates="slide-out" class="button-collapse waves-effect waves-light btn">Acerca de</a>
        </div>
        <div class="row">
            <button data-target="modal1" class="btn modal-trigger">Subir Arhivo</button>
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

<!-- Upload file -->
<div id="modal1" class="modal">
    <div class="modal-content">
        <h4>Subir archivo</h4>
        <p>Puele elegir un archivo a la vez.</p>

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
    <!--
        <div class="modal-footer">
    
        </div> -->
</div>


<div id="respuesta"></div>


<script type="text/javascript">
    //Ajax probando envío de datos a file.
    function guardarArchivo() {

        var data = new FormData();
        jQuery.each(jQuery('#file')[0].files, function (i, file) {
            data.append('file-' + i, file);
        });
        var tipoArchivo = $("#tipoArchivo").val();
        data.append('tipoArchivo', tipoArchivo);
        //document.write("El tipo de archivo es" + tipoArchivo);

        jQuery.ajax({
            url: "../home/Controller/subir",
            data: data,
            cache: false,
            contentType: false,
            processData: false,
            method: 'POST',
            type: 'POST', // For jQuery < 1.9
            success: function (data) {
                document.getElementById("nameValue").value = "";
                Materialize.toast('Se ha subido de manera correcta', 4000);
            },
            error: function (xhr, status) {
                Materialize.toast('Ha ocurrido un error', 4000);
            }
        });
    }
</script>
