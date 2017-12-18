<%-- 
    Document   : home
    Created on : 28/08/2017, 09:40:55 PM
    Author     : Clair
--%>



<!DOCTYPE html>
<html>
    <head>
        <title>Gestión de Proyectos de Software</title>

        <jsp:include page="../plantillas/necesarioParaPw"></jsp:include>
        </head>

        <body>
            <!-- Inicio de la pagina -->
        <jsp:include page="../plantillas/navhome"/>

        <!-- pallax to image -->
        <div class="parallax-container">
            <div class="parallax"><img src="../img/home.png"></div>
            <div class="container">
                <h1><p class="white-text center-align">Bienvenido a la materia de: <i>"Gestión de Proyectos de Software"</i></p></h1>
            </div>
        </div>

        <div class="container">

            <!-- Texto que describe a la página -->
            <%--<h4><p class="center-align"><b>Referente a la página.</b></p></h5>--%>
            <ul class="collapsible #00897b teal darken-1" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Objetivo</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la página -->
                             <p>Brindar información de la materia de Gestión de Proyectos de Software, 
                                donde se faciliten: Apuntes, Materiales, Tareas y Actividades. 
                                Esto con la finalidad de que los estudiantes logren integrar todos los
                                conocimientos adquiridos con respecto a materias del Área de Sistemas Computacionales. </p>
                        </div>
                    </li>
                    <li>

                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Presentación</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la página -->
                            <p>La asignatura de Gestión de proyectos de software, proporciona al estudiante los conceptos que
                               requiere y que debe contemplar para la gestión de un proyecto de software. Por otro lado, le da la
                               posibilidad de poner en práctica dicha gestión, ya que se sugiere que en esta asignatura, el estudiante
                               desarrolle un proyecto de gestión de software para una organización, adquiriendo las competencias
                               necesarias para estar al frente de dichos proyectos.</p>
                        </div>
                    </li>

                    <li>
                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Aportación</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la página -->
                            <p>La asignatura aporta al perfil profesional, lo siguiente:<br>
 
                                &bull; Implementa aplicaciones computacionales para solucionar problemas de diversos 
                                contextos, integrando diferentes tecnologías, plataformas o dispositivos.<br>
                                &bull; Diseña e implementa interfaces para la automatización de sistemas de hardware y 
                                desarrollo del software asociado. <br>
                                &bull; Coordina y participa en equipos multidisciplinarios para la aplicación de soluciones 
                                innovadoras en diferentes contextos.<br>
                                &bull; Desarrolla y administra software para apoyar la productividad y competitividad de las 
                                organizaciones cumpliendo con estándares de calidad.</p>
                        </div>
                    </li>

                    <li>
                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Intención didáctica</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la página -->
                            <p>Que los estudiantes gestionen un proyecto de software de carácter multidisciplinario, a
                             fin de trabajar las competencias genéricas que exige su formación profesional.</p>
                        </div>
                    </li>
                </ul>
        </div>

        <div class="parallax-container">
            <div class="parallax"><img src="../img/proyectos.jpg"/></div>
        </div>

       <!-- footer de la pagina -->
        <jsp:include page="../plantillas/footerHome.jsp"/>
        <jsp:include page="../plantillas/necesarioScripts"/>
    </body>

</html>
