<%-- 
    Document   : home
    Created on : 28/08/2017, 09:40:55 PM
    Author     : Clair
--%>



<!DOCTYPE html>
<html>
    <head>
        <title>Gesti�n de Proyectos de Software</title>

        <jsp:include page="../plantillas/necesarioParaPw.jsp"></jsp:include>
        </head>

        <body>
            <!-- Inicio de la pagina -->
        <jsp:include page="../plantillas/navhome.jsp"/>

        <!-- pallax to image -->
        <div class="parallax-container">
            <div class="parallax"><img src="../img/home.png"></div>
            <div class="container">
                <h1><p class="white-text center-align">Bienvenido a la materia de: <i>"Gesti�n del Proyectos Informaticos"</i></p></h1>
            </div>
        </div>

        <div class="container">

            <!-- Texto que describe a la p�gina -->
            <%--<h4><p class="center-align"><b>Referente a la p�gina.</b></p></h5>--%>
            <ul class="collapsible #00897b teal darken-1" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Misi�n</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la p�gina -->
                            <p>El sitio que te brinda informaci�n de la materia de Gesti�n de Proyectos de Software, 
                                donde te ser�n de utilidad Apuntes, Materiales, Tareas y Actividades. 
                                Esto con la finalidad de que los estudiantes logren integrar todos los
                                conocimientos adquiridos con respecto a materias del �rea de Sistemas Computacionales. </p>
                        </div>
                    </li>
                    <li>

                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Visi�n</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la p�gina -->
                            <p>Que no reconozcan mejor opci�n competitiva de Software Tecnol�gico para las
                                empresas de la Regi�n.</p>
                        </div>
                    </li>

                    <li>
                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Objetivo general</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la p�gina -->
                            <p>Desarrollar una p�gina Web que brinde informaci�n de la materia de Gesti�n de
                                Proyectos de Software a trav�s de apuntes, materiales, tareas y actividades. Esto
                                con la finalidad de que los estudiantes logren integrar todos los conocimientos
                                adquiridos con respecto a otras materias.</p>
                        </div>
                    </li>

                    <li>
                        <div class="collapsible-header center-align #80cbc4 teal lighten-3">
                            <b>Objetivos espec�ficos.</b>
                        </div>
                        <div class="collapsible-body white-text">
                            <!-- Texto de la p�gina -->
                            <p>&bull; Investigar las necesidades del cliente. <br>
                                &bull; Analizar la informaci�n para saber cu�les son los puntos m�s importantes
                                del desarrollo de la p�gina.
                                <br>
                                &bull; Dise�ar la base de datos y los m�dulos de la p�gina con la finalidad de
                                obtener los modelos de datos.
                                <br>
                                &bull; Crear el dise�o de la p�gina Web y realizar la codificaci�n.
                                <br>
                                &bull; Verificar y detectar los errores.
                                <br>
                                &bull; Implementaci�n de la p�gina Web.</p>
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
