
<div class="row">
    <div class="" id="portada-wrap">
        <div id="fondo-portada">
            <div id="buscar-destino-wrap">
                <div id="buscar-destino-form">
                    <h3 id="titulo-portada">Encuentra los mejores Tours</h3>
                    <form class="form-inline form-group-lg" action="{{url('/tours')}}">
                        <select class="form-control" name="destino" id="select-destino-portada">
                            <option disabled="true" selected>¿Cual es tu Destino?</option>
                            <?php
                            foreach ($destinos as $key => $destino) {

                                echo '<option value="' . $destino['id'] . '">' . $destino['NombDest'] . '</option>';
                            }
                            ?>   

                        </select> 
                        <div id="btn-buscar-portada">
                        <button type="submit" class="btn btn-primary btn-lg" >Buscar</button> 
                        </div>
                    </form></div>
            </div></div>
    </div>
</div>
<div class="row" id="pasos-wrap">
    @include('inc/pasos-compra')
</div>
<div class='row'>
    <div class="container columnas-portada">

        <div class="col-md-6">
            <a href='{{url('/tours?seleccion=2,3,4')}}'><img class="img-responsive img-thumbnail" src="{{url('/images/portadas')}}/lo-mas-buscado650px.jpg"></a>
        </div>
        <div class="col-md-6">
            <a href='{{url('/tours?seleccion=2,3,4')}}'><img class="img-responsive img-thumbnail" src="{{url('/images/portadas')}}/los-de-temporada650px.jpg"></a>
        </div>
    </div>
</div>
<div class='row'>
    <div class="container columnas-portada">

        <div class="col-md-6">
            <a href='{{url('/tours?seleccion=2,3,4')}}'><img class="img-responsive img-thumbnail" src="{{url('/images/portadas')}}/sugerencias.jpg"></a>
        </div>
        <div class="col-md-6">
            <a href='{{url('/tours?seleccion=2,3,4')}}'><img class="img-responsive img-thumbnail" src="{{url('/images/portadas')}}/super-combos.jpg"></a>
        </div>
    </div>
</div>

<div class='row'>
    <div class="col-md-12 container garantia-portada">

        <center><h3>---- Garantizamos tu satisfacción ----</h3></center>

    </div>
</div>
<div class='row lista-garantias'>
    <div class="container">
        <div class="col-md-4">
            <ul>
                <li><i class="fa fa-money" aria-hidden="true"></i> Garantía de Precio</li>
                <li><i class="fa fa-gavel" aria-hidden="true"></i> Precios finales sin cargos ocultos.</li>
            </ul>

        </div>
        <div class="col-md-4">

            <ul>
                <li><i class="fa fa-user" aria-hidden="true"></i> Trato Personalizado</li>
                <li><i class="fa fa-arrow-up" aria-hidden="true"></i> Tus Compras Acumulan puntos</li>
            </ul>

        </div>
        <div class="col-md-4">

            <ul>
                <li><i class="fa fa-calendar" aria-hidden="true"></i> Facturación Inmediata.</li>
                <li><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> Ahorro de tiempo en tus reservaciones</li>
            </ul>

        </div></div>

</div>