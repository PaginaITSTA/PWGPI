<%-- 
    Document   : home
    Created on : 28/08/2017, 09:40:55 PM
    Author     : Clair
--%>

<!DOCTYPE html>
<html>
    <head>
        <!-- Bootstrap -->

        <title>Gestión de proyectos Informáticos</title>


        <jsp:include page="../plantillas/necesarioParaPw.jsp"></jsp:include>
        </head>



        <body>
            <!-- Inicio de la pagina -->
        <jsp:include page="../plantillas/navhome.jsp"/>


        <!-- Slider de la página -->
        <div class="carousel">
            <a class="carousel-item" href="#one!"><img src="https://lorempixel.com/250/250/nature/1"></a>
            <a class="carousel-item" href="#two!"><img src="https://lorempixel.com/250/250/nature/2"></a>
            <a class="carousel-item" href="#three!"><img src="https://lorempixel.com/250/250/nature/3"></a>
            <a class="carousel-item" href="#four!"><img src="https://lorempixel.com/250/250/nature/4"></a>
            <a class="carousel-item" href="#five!"><img src="https://lorempixel.com/250/250/nature/5"></a>
        </div>


        <div class="container">


            <!-- Texto que describe a la página -->

            <h5 align="center">Referente a la página.</h5>

            <ul class="collapsible" data-collapsible="accordion">
                <li>
                    <div class="collapsible-header">
                        Mision
                    </div>
                    <div class="collapsible-body">
                        <!-- Texto de la página -->
                        <p>Ser una empresa con el mejor diseño, desarrollo y con la mejor
                            solución tecnológica para los negocios de la Región, a través de calidad y
                            confiabilidad.</p>
                    </div>
                </li>
                <li>
                    <div class="collapsible-header">
                        Vision
                    </div>
                    <div class="collapsible-body">
                        <!-- Texto de la página -->
                        <p>Que no reconozcan mejor opción competitiva de Software Tecnológico para las
                            empresas de la Región.</p>
                    </div>
                </li>

                <li>
                    <div class="collapsible-header">
                        Objetivo general
                    </div>
                    <div class="collapsible-body">
                        <!-- Texto de la página -->
                        <p>Desarrollar una página Web que brinde información de la materia de Gestión de
                            Proyectos de Software a través de apuntes, materiales, tareas y actividades. Esto
                            con la finalidad de que los estudiantes logren integrar todos los conocimientos
                            adquiridos con respecto a otras materias.</p>
                    </div>
                </li>

                <li>
                    <div class="collapsible-header">
                        Objetivos específicos.
                    </div>
                    <div class="collapsible-body">
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
                        <span class="card-title white-text text-darken-4"><h5 align="center">Fuentes bibliográficas.</h5></span>
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
