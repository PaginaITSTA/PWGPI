<%-- 
    Document   : home
    Created on : 28/08/2017, 09:40:55 PM
    Author     : Clair
--%>

<!DOCTYPE html>
<html>
    <head>
        <!-- Bootstrap -->
<%-- <<<<<<< HEAD
<<<<<<< HEAD--%>
        <link 
            href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
            rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" 
            crossorigin="anonymous">
        <link rel="stylesheet" href="css/navbar.css">
        <title>Gesti�n de Proyectos de Software</title>
<!--=======-->
        <title>Gesti�n de Proyectos de Software</title>
<%--<<<<<<< HEAD--%>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<%--<!-->>>>>>> ad6118ed62141ffe6d75a274c2eecd68ab43d01f-->--%>
<%--=======--%>
        
        <jsp:include page="../plantillas/necesarioParaPw.jsp"></jsp:include>
<%-->>>>>>> ca78e2b42b48472c8229c10e691762359cd20b29--%>
    </head>
<%--=======--%>

        <title>Gesti�n de Proyectos de Software</title>
<%-->>>>>>> 7b07b036d4e2d1f64636a0cda8a901a472e5e6b1--%>


        <jsp:include page="../plantillas/necesarioParaPw.jsp"></jsp:include>
        </head>



        <body>
            <!-- Inicio de la pagina -->
        <jsp:include page="../plantillas/navhome.jsp"/>


        <!-- Slider de la p�gina -->
        <div class="carousel">
            <a class="carousel-item" href="#one!"><img src="https://lorempixel.com/250/250/nature/1"></a>
            <a class="carousel-item" href="#two!"><img src="https://lorempixel.com/250/250/nature/2"></a>
            <a class="carousel-item" href="#three!"><img src="https://lorempixel.com/250/250/nature/3"></a>
            <a class="carousel-item" href="#four!"><img src="https://lorempixel.com/250/250/nature/4"></a>
            <a class="carousel-item" href="#five!"><img src="https://lorempixel.com/250/250/nature/5"></a>
        </div>


        <div class="container">


            <!-- Texto que describe a la p�gina -->

            <h5 align="center">Referente a la p�gina.</h5>

            <ul class="collapsible" data-collapsible="accordion">
                <li>
                    <div class="collapsible-header">
                        Mision
                    </div>
                    <div class="collapsible-body">
                        <!-- Texto de la p�gina -->
                        <p>Ser una empresa con el mejor dise�o, desarrollo y con la mejor
                            soluci�n tecnol�gica para los negocios de la Regi�n, a trav�s de calidad y
                            confiabilidad.</p>
                    </div>
                </li>
                <li>
                    <div class="collapsible-header">
                        Vision
                    </div>
                    <div class="collapsible-body">
                        <!-- Texto de la p�gina -->
                        <p>Que no reconozcan mejor opci�n competitiva de Software Tecnol�gico para las
                            empresas de la Regi�n.</p>
                    </div>
                </li>

                <li>
                    <div class="collapsible-header">
                        Objetivo general
                    </div>
                    <div class="collapsible-body">
                        <!-- Texto de la p�gina -->
                        <p>Desarrollar una p�gina Web que brinde informaci�n de la materia de Gesti�n de
                            Proyectos de Software a trav�s de apuntes, materiales, tareas y actividades. Esto
                            con la finalidad de que los estudiantes logren integrar todos los conocimientos
                            adquiridos con respecto a otras materias.</p>
                    </div>
                </li>

                <li>
                    <div class="collapsible-header">
                        Objetivos espec�ficos.
                    </div>
                    <div class="collapsible-body">
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

            <div class="row">
                <div class="col s12 m3">
                    <div class="card-panel teal">
                        <span class="card-title white-text text-darken-4"><h5 align="center">Documentos relacionados.</h5></span>
                        <div class="row">
                            <span class="white-text">Aenean sapien 
                                odio, fermentum sit amet tristique id, varius id nibh. Etiam dui tellus, dictum eu placerat ac, rutrum eu felis.
                            </span>
                        </div>
                    </div>
                </div>

                <div class="col s12 m3">
                    <div class="card-panel teal">
                        <span class="card-title white-text text-darken-4"><h5 align="center">Contacto con el docente.</h5></span>
                        <div class="row">
                            <span class="white-text">Nullam tortor dolor, volutpat 
                                id elit efficitur, dictum mollis turpis. In nisl enim, iaculis ac tincidunt non, scelerisque non enim. Aenean 
                                rutrum, felis ac vehicula elementum, nunc dui congue libero, non vehicula diam metus ac velit. 
                            </span>
                        </div>
                    </div>
                </div>

                <div class="col s12 m3">
                    <div class="card-panel teal">
                        <span class="card-title white-text text-darken-4"><h5 align="center">Fuentes bibliogr�ficas.</h5></span>
                        <div class="row">
                            <span class="white-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In convallis, libero quis 
                                tempus viverra, nulla lacus ornare nibh, ac pretium elit sem ac mi. Quisque feugiat, neque sed fermentum 
                                ullamcorper, diam diam venenatis tellus, eget porttitor nisi ligula et velit.  
                            </span>
                        </div>
                    </div>
                </div>

                <div class="col s12 m3">
                    <div class="card-panel teal">
                        <span class="card-title white-text text-darken-4"><h5 align="center">Calendario de actividades.</h5></span>
                        <div class="row">
                            <span class="white-text"> Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit
                            </span>
                        </div>
                    </div>
                </div>
            </div>

        </div>




        <!-- footer de la pagina -->
        <jsp:include page="../plantillas/footerHome.jsp"/>

        <jsp:include page="../plantillas/necesarioScripts.jsp"/>
    </body>

</html>
