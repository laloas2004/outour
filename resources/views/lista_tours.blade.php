
@extends('layout')

@section('content')

<div id="pasos-compra-tour" class="row">
    @include('inc.pasos-compra-tour')
</div>
<div class="clearfix"></div>
<div class="container">

    <?php
    if (!isset($_GET['seleccion'])) {
        ?>
        @include('inc/filtros')
    <?php } ?>
    @if (isset($msglista))
    <div class="alert alert-info">
        <ul>
            <li>{{ $msglista }}</li>
        </ul>
    </div>
    @endif

    <?php
    if (isset($imagen_destino->Imagen)) {
        if ($imagen_destino->Imagen !== null && $imagen_destino->Imagen !== '') {
            echo '<div id="banner-destino" style="background-image:url(./images/tours/destinos/' . $imagen_destino->Imagen . ');">';
        } else {
            echo '<div id="banner-destino" style="background-image:url(./images/tours/destinos/default.jpg">';
        }
    } else {
        echo '<div id="banner-destino" style="background-image:url(./images/tours/destinos/default.jpg">';
    }
    ?>
    <h3 id="titulo-portada">{{isset($imagen_destino->NombDest) ? $imagen_destino->NombDest.' | ' : '' }} {{isset($imagen_categoria->NombCateg) ? $imagen_categoria->NombCateg : '' }}</h3>
</div>
<?php
$cols = 4;
$cont = 0;
foreach ($tours as $key => $tour) {

    if ($cont == 0) {
        echo '<div class="row" id="lista-tour-item">';
    }
    ?>
    @include('inc/lista-item', $tour)
    <?php
    $cont++;

    if ($cont == 4) {
        echo '</div>';
        $cont = 0;
    }
}
?>



</div>

<!--Paginador-->


<!--pgination-->
</div>



@endsection('content')