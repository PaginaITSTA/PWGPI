<%-- 
    Document   : home
    Created on : 28/08/2017, 09:40:55 PM
    Author     : Clair
--%>



<!DOCTYPE html>
<html>
    <head>
        <title>Gesti�n de Proyectos de Software</title>

        <jsp:include page="../plantillas/necesarioParaPw"></jsp:include>
        </head>

        <body>
            <!-- Inicio de la pagina -->
        <jsp:include page="../plantillas/navhome"/>

        <!-- pallax to image -->
        <div class="parallax-container">
            <div class="parallax"><img src="../img/home.png"></div>
            <div class="container">
                <h1><p class="white-text center-align">Bienvenido a la materia de: <i>"Gesti�n de Proyectos de Software"</i></p></h1>
            </div>
        </div>

        <div class="container">

            <!-- Texto que describe a la p�gina -->
            <%--<h4><p class="center-align"><b>Referente a la p�gina.</b></p></h5>--%>
            <ul class="collapsible #00897b teal darken-1" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Objetivo</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la p�gina -->
                             <p>Brindar informaci�n de la materia de Gesti�n de Proyectos de Software, 
                                donde se faciliten: Apuntes, Materiales, Tareas y Actividades. 
                                Esto con la finalidad de que los estudiantes logren integrar todos los
                                conocimientos adquiridos con respecto a materias del �rea de Sistemas Computacionales. </p>
                        </div>
                    </li>
                    <li>

                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Presentaci�n</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la p�gina -->
                            <p>La asignatura de Gesti�n de proyectos de software, proporciona al estudiante los conceptos que
                               requiere y que debe contemplar para la gesti�n de un proyecto de software. Por otro lado, le da la
                               posibilidad de poner en pr�ctica dicha gesti�n, ya que se sugiere que en esta asignatura, el estudiante
                               desarrolle un proyecto de gesti�n de software para una organizaci�n, adquiriendo las competencias
                               necesarias para estar al frente de dichos proyectos.</p>
                        </div>
                    </li>

                    <li>
                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Aportaci�n</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la p�gina -->
                            <p>La asignatura aporta al perfil profesional, lo siguiente:<br>
 
                                &bull; Implementa aplicaciones computacionales para solucionar problemas de diversos 
                                contextos, integrando diferentes tecnolog�as, plataformas o dispositivos.<br>
                                &bull; Dise�a e implementa interfaces para la automatizaci�n de sistemas de hardware y 
                                desarrollo del software asociado. <br>
                                &bull; Coordina y participa en equipos multidisciplinarios para la aplicaci�n de soluciones 
                                innovadoras en diferentes contextos.<br>
                                &bull; Desarrolla y administra software para apoyar la productividad y competitividad de las 
                                organizaciones cumpliendo con est�ndares de calidad.</p>
                        </div>
                    </li>

                    <li>
                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Intenci�n did�ctica</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la p�gina -->
                            <p>Que los estudiantes gestionen un proyecto de software de car�cter multidisciplinario, a
                             fin de trabajar las competencias gen�ricas que exige su formaci�n profesional.</p>
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
