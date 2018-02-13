
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>Tours Admin</title>

        <!-- Bootstrap Core CSS -->
        <link href="{{url('/css/bootstrap.min.css')}}" rel="stylesheet">
        <link href="{{ url('/css/styles.css')}}" rel="stylesheet">
        <link href="{{ url('/css/medias.css')}}" rel="stylesheet">
        <link href="{{ url('/css/price-tables.css')}}" rel="stylesheet">
        <link href="{{ url('/css/image/lightgallery.css')}}" rel="stylesheet">

        <!-- Font Icons -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" rel="stylesheet">

        <!-- Font Style -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">

        <link href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">

        <!-- Animate -->
        <link href="{{url('css/animate.css')}}" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.3.4/css/froala_editor.min.css" rel="stylesheet" type="text/css" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.3.4/css/froala_style.min.css" rel="stylesheet" type="text/css" />

        <!-- Bootsnav -->
        <link href="{{url('/css/bootsnav.css')}}" rel="stylesheet">
        <link href="{{url('/css/overwrite.css')}}" rel="stylesheet">
        <link href="{{url('/css/skin/color.css')}}" rel="stylesheet">
        <link href="{{url('/css/jquery.datetimepicker.css')}}" rel="stylesheet">
        <link href="{{url('css/admin/admin.css')}}" rel="stylesheet">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script type="text/javascript" src="http://ajax.cdnjs.com/ajax/libs/underscore.js/1.1.4/underscore-min.js"></script>

        <script   src="https://code.jquery.com/jquery-2.2.3.js"   integrity="sha256-laXWtGydpwqJ8JA+X9x2miwmaiKhn8tVmOVEigRNtP4="   crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <script src="{{url('/js/jquery.datetimepicker.full.js')}}"></script>
        <script src="{{url('/js/jquery.formatCurrency-1.4.0.pack.js')}}"></script>

        <script src="http://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
        <script src="http://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
        <script src="{{url('/js/jquery.autocomplete.js')}}"></script>

<!--        <script type="text/javascript" src="//maps.google.com/maps/api/js?sensor=true"></script>
<script src="{{url('/js')}}/google-maps.js"></script>
<script type="text/javascript" charset="UTF-8" src="https://maps.google.com/maps-api-v3/api/js/25/9/intl/es_ALL/common.js"></script>
<script type="text/javascript" charset="UTF-8" src="https://maps.google.com/maps-api-v3/api/js/25/9/intl/es_ALL/map.js"></script>
<script type="text/javascript" charset="UTF-8" src="https://maps.google.com/maps-api-v3/api/js/25/9/intl/es_ALL/util.js"></script>
<script type="text/javascript" charset="UTF-8" src="https://maps.google.com/maps-api-v3/api/js/25/9/intl/es_ALL/onion.js"></script>
<script type="text/javascript" charset="UTF-8" src="https://maps.google.com/maps-api-v3/api/js/25/9/intl/es_ALL/stats.js"></script>
<script type="text/javascript" charset="UTF-8" src="https://maps.google.com/maps-api-v3/api/js/25/9/intl/es_ALL/controls.js"></script>
<script type="text/javascript" charset="UTF-8" src="https://maps.google.com/maps-api-v3/api/js/25/9/intl/es_ALL/marker.js"></script>-->
    </head>
    <body>

        <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Admin outours.mx</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Inicio</a></li>
                        
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Catálogos <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="{{url('admin/tours')}}">Tours</a></li>
                                <li><a href="#">Membresias</a></li>
                                <li><a href="#">Destinos</a></li>
                                <li><a href="#">Categorias</a></li>
                                <li><a href="#">Operadores</a></li>
<!--                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">One more separated link</a></li>-->
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Ventas <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Ventas</a></li>
                                <li><a href="#">Pagos</a></li>
                                <li><a href="#">Reservaciones</a></li>
<!--                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">One more separated link</a></li>-->
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Clientes <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Clientes</a></li>
<!--                                <li><a href="#">Socios</a></li>
                                <li><a href="#">Categorias</a></li>-->
<!--                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">One more separated link</a></li>-->
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">CMS <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Paginas</a></li>
                                <li><a href="#">Menus</a></li>
                                <li><a href="#">Categorias</a></li>
<!--                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">One more separated link</a></li>-->
                            </ul>
                        </li>
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Agentes <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Agentes</a></li>
                                <li><a href="#">Comisiones</a></li>
                                <li><a href="#">Roles</a></li>
<!--                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">One more separated link</a></li>-->
                            </ul>
                        </li>
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Promociones <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Cupones</a></li>
                                <li><a href="#">Estadisticas</a></li>
                               
<!--                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">One more separated link</a></li>-->
                            </ul>
                        </li>
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Reportes <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Ventas</a></li>
                                <li><a href="#">Comisiones</a></li>
                                <li><a href="#">Pagos</a></li>
                                <li><a href="#">Socios</a></li>
<!--                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">One more separated link</a></li>-->
                            </ul>
                        </li>
                        <li><a href="#">Configuracion</a></li>
                    </ul>
                  
<!--                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Link</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </li>
                    </ul>-->
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
                    </header>
