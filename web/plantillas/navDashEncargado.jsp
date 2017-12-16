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
            <button class="waves-effect waves-light btn">Subir archivo</button>
        </div>
        <div class="row">
            <a href="#" data-activates="slide-out" class="button-collapse waves-effect waves-light btn">Acerca de</a>
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


<ul id="slide-out" class="side-nav #4db6ac teal lighten-2">
    <li><div class="user-view">
            <div class="background col s12 m6">
                <img src="../img/acercaDe1.JPG">
            </div>
            <a href="../home/perfil"><img class="circle col s12 m6" src="../img/acercaDe1.JPG"></a>
            <a href=""><span class="white-text name">John Doe</span></a>
            <a href="#!email"><span class="white-text email">jdandturk@gmail.com</span></a>
        </div>
    </li>
    <li><a href="#!"><i class="material-icons">cloud</i>First Link With Icon</a></li>
    <li><a href="#!">Second Link</a></li>
    <li><div class="divider"></div></li>
    <li><a class="subheader">Subheader</a></li>
    <li><a class="waves-effect" href="#!">Third Link With Waves</a></li>
</ul>




