
<div class="img-lista-tour">
    <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
            <a href="{{url('/tour/')}}/{{$tour['id']}}">

                <img class="img-responsive img-thumbnail" src="{{url('/')}}/{{$tour['images'][0]['UrlImg'] or 'no-existe.jpg'}}">
            </a>

            <div class="caption">

                <h3> <a href="{{url('/tour/')}}/{{$tour['id']}}">{{$tour['NombTour']}}</a></h3>
                <h4><span class="glyphicon glyphicon-map-marker"></span><?php echo $tour['destino']['NombDest']; ?></h4>
                <div id="lista-tour-desc">
               <?php echo str_limit($tour['ResuDescTour'],350); ?>
                </div>
            </div>
            <div class="precio-lista-item">
                
                <div class="precio">Precio Reg.<br><span>{{precio($tour['PrecTour'])}}</span></div>
                <div class="precio-desc">Precio outour.mx <br><span>{{precio($tour['PrecTourDesc'])}}</span></div>
                <div class="ver-mas-btn">
                <a class="btn btn-primary btn-lg" href="{{url('/tour/')}}/{{$tour['id']}}">Ver Detalles</a>
                </div>
            </div>
        </div></div>
</div>