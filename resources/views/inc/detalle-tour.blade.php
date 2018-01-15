<div class="container" id="detalle-container">
    <div class="row">
        <div class="col-lg-12 col-md-12 detalle-informacion">
            <div class="detalle-titulo">
                
                <h1>{{$tour[0]['NombTour']}}</h1>
            <h4><span class="glyphicon glyphicon-map-marker"></span><?php echo $tour['destino']['NombDest']; ?></h4>
            </div>
            <div class="row">
                
                @include('inc.detalle-images',$tour)
            </div>

            <div class="row" id="detalle-desc-container">
                
                @include('inc.detalle-descripcion',$tour)
            </div>
            <div class="row">
                @include('inc.tours.mapa-tour')
                @include('inc.tours.detalle-pedido')
                
            </div>
            
            
        </div>
</div></div>