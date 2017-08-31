<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>SLAP - Inicio Administrador</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="{{URL::to("admin_template/bootstrap/css/bootstrap.min.css")}}">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="{{URL::to("admin_template/dist/css/AdminLTE.min.css")}}">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="{{URL::to("admin_template/dist/css/skins/_all-skins.min.css")}}">

        <link rel="stylesheet" href="{{URL::to("js/alertify/css/alertify.css")}}">

        <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.15/css/jquery.dataTables.css">

        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.min.css">

        <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />
        
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
    <body class="hold-transition skin-blue layout-top-nav">
        <div class="wrapper">

            <header class="main-header">
                <nav class="navbar navbar-static-top">
                    <div class="container">
                        <div class="navbar-header">
                            <a href="{{URL::to("/")}}" class="navbar-brand"><b>SLAP</b> - Admin -</a>
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
                                                    <i class="fa fa-power-off"></i> Cerrar Sesión
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- /.navbar-custom-menu -->
                    </div>
                    <!-- /.container-fluid -->
                </nav>
            </header>
            <!-- Full Width Column -->
            <div class="content-wrapper">
                <div class="container">
                    <!-- Content Header (Page header) -->
                    <section class="content-header">
                        <h1>
                            @yield("title")
                        </h1>
                        <ol class="breadcrumb">
                            @yield("navigation")
                        </ol>
                    </section>

                    <!-- Main content -->
                    <section class="content">
                        @yield("content")
                    </section>
                </div>
            </div>
            <footer class="main-footer">
                <div class="container">
                    <div class="pull-right hidden-xs">
                        <b>Version</b> 1.0
                    </div>
                    <strong>Copyright &copy; 2017-2018 <a href="http://almsaeedstudio.com">InseGroup</a>.</strong> impulsado por cortexinc
                </div>
            </footer>
        </div>
        <!-- jQuery 2.2.0 -->
        <!--<script src="{{URL::to("admin_template/plugins/jQuery/jQuery-2.2.0.min.js")}}"></script>-->
        <script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
        <!-- Moment para control de fechas-->
        <script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
        <!-- Bootstrap 3.3.6 -->
        <script src="{{URL::to("admin_template/bootstrap/js/bootstrap.min.js")}}"></script>
        <!-- SlimScroll -->
        <script src="{{URL::to("admin_template/plugins/slimScroll/jquery.slimscroll.min.js")}}"></script>
        <!-- FastClick -->
        <script src="{{URL::to("admin_template/plugins/fastclick/fastclick.js")}}"></script>
        <!-- AdminLTE App -->
        <script src="{{URL::to("admin_template/dist/js/app.min.js")}}"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="{{URL::to("admin_template/dist/js/demo.js")}}"></script>

        <script src="{{URL::to("js/alertify/js/alertify.js")}}"></script>


        <script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.js"></script>

<!-- <script src="http://code.jquery.com/ui/1.12.0/jquery-ui.min.js"
            integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E="
        crossorigin="anonymous"></script>-->

               

    </body>
</html>
