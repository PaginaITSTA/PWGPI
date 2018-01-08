<%-- 
    Document   : navDashAlumno
    Created on : 27/09/2017, 10:01:16 PM
    Author     : Clair
--%>
<jsp:useBean class="mx.edu.itsta.DTO.DTOLogin" id="dtoLogin" scope="session"></jsp:useBean>

    <ul id="lista" class="dropdown-content">
        <li><a href="../home/actividades.jsp">Actividades</a></li>
        <li><a href="../home/Archivos.jsp">Archivos</a></li>
        <li class="divider"></li>
        <li><a href="../home/Controller/limpiarSession">Cerrar Sesión</a></li>
    </ul>

<%--<ul id="lista2" class="dropdown-content">
        <li><a href="../home/actividades">Actividades</a></li>
        <li><a href="../home/Materiales">Materiales</a></li>
        <li class="divider"></li>
        <li><a href="#!">Apuntes</a></li>
        <li><a href="../home/Controller/limpiarSession">Cerrar Sesión</a></li>
    </ul>
--%>
    <nav>
        <div class="nav-wrapper #1565c0 blue darken-3">
            <a href="../home/home" class="brand-logo">Gestión de Proyectos de Software</a>
            <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">Menu</i></a>
            <ul class="right hide-on-med-and-down">
                <%--<li><a href="../index">Inicio</a></li>
                <li><a href="../home/InformaciónGeneral">Información General</a></li>--%>
                <li><a href="../home/temario">Temario</a></li>
                <!-- Dropdown Trigger -->
                <li><a class="dropdown-button" href="" data-activates="lista">Más<i class="material-icons right">arrow_drop_down</i></a></li>
            </ul>
                <%--<ul class="side-nav" id="mobile-demo">
                <%--<li><a href="../index">Inicio</a></li>--%>
                <%--<li><a href="../home/InformaciónGeneral">Información General</a></li>
                <li><a href="../home/temario">Temario</a></li>
                <!-- Dropdown Trigger -->
                <li><a class="dropdown-button" href="" data-activates="lista2">Más<i class="material-icons right">arrow_drop_down</i></a></li>
            </ul>--%>
        </div>
    </nav>


    <div class="parallax-container">
        <div class="parallax"><img src="../img/alumn.jpg"></div>

        <div class="container">
            <h5><p class="white-text center-align">Bienvenido: <%= dtoLogin.getCorreo()%> </p></h5>
    </div>

    <div class="row">
        <div class="col s12 m3">
            <ul class="collapsible #000000 black" data-collapsible="accordion">
                <li>
                    <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                        <b>Documentos relacionados</b>
                    </div>
                    <div class="collapsible-body white-text">
                        <!-- Texto de la página -->
                        <p> <td><a href="https://sg.com.mx/revista/1/swebok-desarrollar-es-mucho-mas-que-programar#.We1pTo_Ww1I">Ingeniería de Software</a></td> 
                        <br><td><a href="http://www.ganttproject.biz/">GanttProject</a></td> 
                        <br><td><a href="https://www.tutorialspoint.com/es/software_engineering/software_project_management.htm">Software Project Management</a></td>
                        <br><td><a href="https://www.inf.utfsm.cl/~guerra/publicaciones/Gestion%20de%20Proyectos%20de%20Software.pdf">Gestión de Proyectos</a></td>
                        <br><td><a href="http://www.uml-diagrams.org/."> UML</a></td> <br />
                        </p>                           
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <div class="row">
        <div class="col s12 m3">
            <ul class="collapsible #000000 black"data-collapsible="accordion">
                <li>    
                    <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                        <b>Contacto</b>
                    </div>
                    <div class="collapsible-body white-text">
                        <!-- Texto de la página -->
                        <p>Ms. María Xóchitl Altamirano Herrera
                            <br>Correo: xochitl2422@gmail.com <br/></p>
                    </div>
                </li>
            </ul>
        </div>      
    </div>


    <div class="row">
        <div class="col s12 m3">
            <ul class="collapsible #000000 black" data-collapsible="accordion">
                <li>    
                    <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                        <b>Fuentes bibliográficas</b>
                                      
                    </div>
                    <div class="collapsible-body white-text">
                        <!-- Texto de la página -->
                        <p> Pressman, R. (2010). Ingeniería del Software, un Enfoque Práctico. (7ª Ed.). México: McGraw-Hill. 
                        <br>Sommerville, I. (2011). Ingeniería de Software. (9ª Ed.). México: Pearson Addison-Wesley</p>
                    </div>
                </li>
            </ul>  
        </div>
    </div>

</div>


