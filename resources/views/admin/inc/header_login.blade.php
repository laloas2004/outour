
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

    <center><h1>OUTOUR.MX</h1></center>