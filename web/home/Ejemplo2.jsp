<%-- 
    Document   : Ejemplo2
    Created on : 31-ago-2017, 19:48:48
    Author     : Yaquiii
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link 
            href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
            rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" 
            crossorigin="anonymous">
        <link rel="stylesheet" href="css/navbar.css">
        <title>Gestión de proyectos Informáticos</title>
    </head>
    
    <body>
        <!-- Inicio de la pagina -->
        <nav class= "navbar navbar-default">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Cambiar Navegacion</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="navbar-brand">DevCode</a></div>

                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Proyectos</a></li>
                        <li><a href="#">Servicios</a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Tutoriales<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Bootstrap</a></li>
                                <li><a href="#">DJango</a></li>
                                <li><a href="#">Phyton</a></li>
                                <li><a href="#">JQuery</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left">
                        <div class="form-group">
                            <input type="text" class="form-control"></div>
                        <button type="submit" class="btn btn-default">Buscar</button>
                    </form>

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Eventos</a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Libros<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Html 5</a></li>
                                <li><a href="#">Css 3</a></li>
                                <li><a href="#">Phyton</a></li>
                                <li><a href="#">Ruby</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

        </nav>
        <!-- contenido final de la página -->
        <div>

        </div>

        <!-- Área final de la pagina -->
        <footer>

        </footer>
         <script 
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" 
            crossorigin="anonymous">

        </script>
    </body>
</html>
