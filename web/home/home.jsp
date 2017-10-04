<%-- 
    Document   : home
    Created on : 28/08/2017, 09:40:55 PM
    Author     : Clair
--%>

<!DOCTYPE html>
<html>
    <head>
        <!-- Bootstrap -->
<<<<<<< HEAD
        <link 
            href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
            rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" 
            crossorigin="anonymous">
        <link rel="stylesheet" href="css/navbar.css">
        <title>Gestión de Proyectos de Software</title>
<!--=======-->
        <title>Gestión de Proyectos de Software</title>
<<<<<<< HEAD
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<!-->>>>>>> ad6118ed62141ffe6d75a274c2eecd68ab43d01f-->
=======
        
        <jsp:include page="../plantillas/necesarioParaPw.jsp"></jsp:include>
>>>>>>> ca78e2b42b48472c8229c10e691762359cd20b29
    </head>

    <body>
        <!-- Inicio de la pagina -->
<<<<<<< HEAD
<<<<<<< HEAD
        <nav class="navbar navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <a href="{{URL::to("/home.jsp")}}" class="navbar-brand"><b>SLAP</b> - Admin -</a>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#navbar-collapse">
                        <i class="fa fa-bars"></i>
                    </button>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="{{URL::to("/")}}">
                                <i class="fa fa-home"></i> Inicio <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li>
                            <a href="{{URL::to("users")}}">
                                <i class="fa fa-users"></i> Usuarios
                            </a>
                        </li>
                        <li>
                            <a href="{{ URL::to("reportes") }}">
                                <i class="fa fa-pie-chart"></i> Reportes
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
                <!-- Navbar Right Menu -->
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- User Account Menu -->
                        <li class="dropdown user user-menu">
                            <!-- Menu Toggle Button -->
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <!-- The user image in the navbar-->
                                <img src="{{URL::to($user->profile_image)}}" class="user-image" alt="User Image">
                                <!-- hidden-xs hides the username on small devices so only the image appears. -->
                                <span class="hidden-xs">{{$user->type}}</span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- The user image in the menu -->
                                <li class="user-header">
                                    <img src="{{URL::to($user->profile_image)}}" class="img-circle" alt="User Image">
                                    <p>
                                        {{$user->name}} {{$user->surname}} - {{$user->type}}
                                    </p>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-right">
                                        <a href="{{URL::to("logout")}}" class="btn btn-default btn-flat">
                                            <i class="fa fa-power-off"></i> Cerrar SesiÃ³n
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-custom-menu -->
<!--=======-->
        <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
            <a class="navbar-brand" href="#">ITSTA</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Código<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Una referencia</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Otra referencia</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Opciones</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="Busqueda" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">busqueda</button>
                </form>
<!-->>>>>>> ad6118ed62141ffe6d75a274c2eecd68ab43d01f-->
            </div>
        </nav>
=======
>>>>>>> ca78e2b42b48472c8229c10e691762359cd20b29

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
                        <span class="card-title white-text text-darken-4"><h5 align="center">Card Title</h5></span>
                        <div class="row">
                            <span class="white-text">I am a very simple card. I am good at containing small bits of information.
                                I am convenient because I require little markup to use effectively. I am similar to what is called a panel in other frameworks.
                            </span>
                        </div>
                    </div>
                </div>

                <div class="col s12 m3">
                    <div class="card-panel teal">
                        <span class="card-title white-text text-darken-4"><h5 align="center">Card Title</h5></span>
                        <div class="row">
                            <span class="white-text">I am a very simple card. I am good at containing small bits of information.
                                I am convenient because I require little markup to use effectively. I am similar to what is called a panel in other frameworks.
                            </span>
                        </div>
                    </div>
                </div>

                <div class="col s12 m3">
                    <div class="card-panel teal">
                        <span class="card-title white-text text-darken-4"><h5 align="center">Card Title</h5></span>
                        <div class="row">
                            <span class="white-text">I am a very simple card. I am good at containing small bits of information.
                                I am convenient because I require little markup to use effectively. I am similar to what is called a panel in other frameworks.
                            </span>
                        </div>
                    </div>
                </div>

                <div class="col s12 m3">
                    <div class="card-panel teal">
                        <span class="card-title white-text text-darken-4"><h5 align="center">Card Title</h5></span>
                        <div class="row">
                            <span class="white-text">I am a very simple card. I am good at containing small bits of information.
                                I am convenient because I require little markup to use effectively. I am similar to what is called a panel in other frameworks.
                            </span>
                        </div>
                    </div>
                </div>
            </div>

        </div>




        <!-- footer de la pagina -->
        <jsp:include page="../plantillas/footerHome.jsp"/>

        <script type="text/javascript" src="../js/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="../js/materialize.min.js"></script>

        <script>
            //var Usuario = document.getElementById("valorOculto").value;

            $(document).ready(function () {
                $(".button-collapse").sideNav();
                $(".select").material_select();
                $(".dropdown-button").dropdown();
                $('.parallax').parallax();
                $(".carousel").carousel();
            });
        </script>
    </body>

</html>
