 <div class="row" id="lista-filtros">

        <div class="col-md-12">
            <span style="float: left; padding-top: 5px;padding-right: 10px;">Filtrar por: </span>

            <form class="form-group-sm form-inline" target="" method="GET">
                <?php echo csrf_field(); ?>
               
                <?php 
                
                if(request()->get('menu') == null || request()->get('menu') == 'des'){ ?>
                <div id="filtro-izquierdo" class="">
                <div id="filtro-destino">
                @include('inc.filtros.destino',$destinos)
                </div></div>
                <div id="filtro-derecho" class="">
                <div id="filtro-categoria">
                @include('inc.filtros.categoria',$categorias)
                </div>
                </div>
                <?php }else if(request()->get('menu') == 'cat'){?>
                <div id="filtro-izquierdo" class="">
                <div id="filtro-categoria">
                @include('inc.filtros.categoria',$categorias)
                </div></div>
                <div id="filtro-derecho" class="">
                 <div id="filtro-destino">
                @include('inc.filtros.destino',$destinos)
                </div>
                </div>
                <?php }?>
                
                
                <div id="btn-filtro"><button type="submit" class="btn btn-primary btn-sm">Filtrar</button></div>
            </form>
        </div>
    </div>