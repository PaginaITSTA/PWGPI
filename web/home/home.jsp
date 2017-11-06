<%-- 
    Document   : home
    Created on : 28/08/2017, 09:40:55 PM
    Author     : Clair
--%>



<!DOCTYPE html>
<html>
    <head>
        <title>Gestión de Proyectos de Software</title>

        <jsp:include page="../plantillas/necesarioParaPw.jsp"></jsp:include>
        </head>

        <body>
            <!-- Inicio de la pagina -->
        <jsp:include page="../plantillas/navhome.jsp"/>

        <!-- pallax to image -->
        <div class="parallax-container">
            <div class="parallax"><img src="../img/home.png"></div>
            <div class="container">
                <h1><p class="white-text center-align">Bienvenido a la materia de: <i>"Gestión del Proyectos Informaticos"</i></p></h1>
            </div>
        </div>

        <div class="container">

            <!-- Texto que describe a la página -->
            <%--<h4><p class="center-align"><b>Referente a la página.</b></p></h5>--%>
            <ul class="collapsible #00897b teal darken-1" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Misión</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la página -->
                            <p>El sitio que te brinda información de la materia de Gestión de Proyectos de Software, 
                                donde te serán de utilidad Apuntes, Materiales, Tareas y Actividades. 
                                Esto con la finalidad de que los estudiantes logren integrar todos los
                                conocimientos adquiridos con respecto a materias del Área de Sistemas Computacionales. </p>
                        </div>
                    </li>
                    <li>

                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Visión</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la página -->
                            <p>Que no reconozcan mejor opción competitiva de Software Tecnológico para las
                                empresas de la Región.</p>
                        </div>
                    </li>

                    <li>
                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Objetivo general</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la página -->
                            <p>Desarrollar una página Web que brinde información de la materia de Gestión de
                                Proyectos de Software a través de apuntes, materiales, tareas y actividades. Esto
                                con la finalidad de que los estudiantes logren integrar todos los conocimientos
                                adquiridos con respecto a otras materias.</p>
                        </div>
                    </li>

                    <li>
                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Objetivos específicos.</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la página -->
                            <p>&bull; Investigar las necesidades del cliente. <br>
                                &bull; Analizar la información para saber cuáles son los puntos más importantes
                                del desarrollo de la página.
                                <br>
                                &bull; Diseñar la base de datos y los módulos de la página con la finalidad de
                                obtener los modelos de datos.
                                <br>
                                &bull; Crear el diseño de la página Web y realizar la codificación.
                                <br>
                                &bull; Verificar y detectar los errores.
                                <br>
                                &bull; Implementación de la página Web.</p>
                        </div>
                    </li>
                </ul>
        </div>

        <div class="parallax-container">
            <div class="parallax"><img src="../img/proyectos.jpg"/></div>
        </div>

       <!-- footer de la pagina -->
        <jsp:include page="../plantillas/footerHome.jsp"/>
        <jsp:include page="../plantillas/necesarioScripts.jsp"/>
    </body>

</html>
