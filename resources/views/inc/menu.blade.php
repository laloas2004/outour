<div class="pageheader">
    <!--    <div class="container" >
    
            <h5 style="float:right;">Telefono (81)21417091</h5>
            <div id="moneda-select" >
    
                <form id="monedas" class="form-group">
                    <label for="monedas" id="moneda-lbl">Moneda: </label>
                    <select class="form-control">
    
    <?php
//                    $mon_default = session()->get('CodigoMon');
//
//                    foreach ($monedas as $key => $moneda) {
//                        $active = '';
//                        if ($moneda['CodigoMon'] == $mon_default) {
//                            $active = 'selected';
//                        }
//                        echo'<option value="' . $moneda['CodigoMon'] . '"' . $active . '>' . $moneda['NombMon'] . '</option>';
//                    }
//                    unset($key);
    ?>
    
                    </select>
                </form>
    
            </div>
        </div>-->
</div>
<div class="clearfix"></div>
<div class="wrap-sticky">
    <nav class="navbar navbar-default navbar-sticky bootsnav">

        <div class=""> 

            <div class="attr-nav">
                <ul>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
                            <i class="fa fa-shopping-cart"></i>
                            <span class="badge" id="badge_cant">0</span>
                        </a>
                        <ul class="dropdown-menu cart-list" id="lista_cart">
                            <!--                            <li>
                                                            <a href="#" class="photo"><img src="IMAGE_ADDRESS" class="cart-thumb" alt="" /></a>
                                                            <h6>Delica omtantur</h6>
                                                            <p>2x - <span class="price">$99.99</span></p>
                                                        </li>
                                                        <li>
                                                            <a href="#" class="photo"><img src="IMAGE_ADDRESS" class="cart-thumb" alt="" /></a>
                                                            <h6><a href="#">Delica omtantur </a></h6>
                                                            <p>2x - <span class="price">$99.99</span></p>
                                                        </li>-->

                            <!--                            <li class="total">
                                                            <span class="pull-right"><strong>Total</strong>: $0.00</span>
                                                            <a href="#" class="btn btn-default btn-cart">Continuar</a>
                                                        </li>-->
                        </ul>
                    </li>
                </ul>
            </div> 
            <div class="attr-nav" id="micuenta">
                <ul>
                    <li class="dropdown">

                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
                            <i class="fa fa-user"></i><span id="">&nbsp Mi Cuenta</span> 
<!--                                        <span class="badge">3</span>-->
                        </a>
                        <ul class="dropdown-menu login-menu">
                            <li>
                                <?php
                                if (auth()->user()) {
                                    ?>
                                    @include('inc.user')

                                    <?php
                                } else {
                                    ?>

                                    @include('inc.login-menu')
                                <?php } ?>
                            </li>                      
                        </ul>
                    </li>
                </ul>
            </div>  

            <!-- Start Header Navigation -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="{{url('/')}}"><img src="{{url('/images/logo.jpg')}}" class="logo" alt="HrTours.mx"></a>
            </div>
            <!-- End Header Navigation -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav navbar-left" data-in="fadeInDown" data-out="fadeOutUp">
                    <!--<li><a href="{{ url('/') }}">Inicio</a></li>-->
                    <li><a href="{{ url('/membresias') }}">Membresías</a></li>
                    <li class="dropdown">
                        <a href="#" class="" data-toggle="dropdown">Destinos</a>
                        <ul class="dropdown-menu">
                            <?php
                            foreach ($destinos as $key => $destino) {
                                echo '<li><a href="' . url('/tours') . '?destino=' . $destino['id'] . '&menu=des">' . $destino['NombDest'] . '</a></li>';
                            }
                            ?>

                        </ul>


                    </li>
                    <li class="dropdown">
                        <a href="{{ url('#') }}" class="" data-toggle="dropdown">Categorías</a>
                        <ul class="dropdown-menu">

                            <?php
                            foreach ($categorias as $key => $categoria) {
                                echo '<li><a href="' . url('/tours') . '?categoria=' . $categoria['id'] .'&menu=cat">' . $categoria['NombCateg'] . '</a></li>';
                            }
                            ?>  

                        </ul>

                    </li>
                    <li><a href="{{ url('/faq') }}">Ayuda</a></li>
                    <li class="dropdown">
                        <a href=""  data-toggle="dropdown">Idioma</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Español</a></li>
                            <li><a href="#">Ingles</a></li>
                        </ul>

                    </li>
                    <li>
                        <div id="moneda-menu-item">
                            <div class="btn-group">
                                <form method="GET" id="form-moneda" action="<?php echo $_SERVER['REQUEST_URI']; ?>">
                                    <button type="button" id="moneda-btn" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <?php
                                        unset($key);
                                        $mon_default = Session::get('CodigoMon');
                                        $active = '';
                                        $inactivo = '';
                                        foreach ($monedas as $key => $moneda) {

                                            if ($moneda['CodigoMon'] == $mon_default) {
                                                $active = $moneda['CodigoMon'];
                                            } else {
                                                $inactivo = $moneda['CodigoMon'];
                                            }
                                        }
                                        unset($key);
                                        ?>

                                        {{$active}} <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#" class="moneda-menu" id="{{$inactivo}}">{{$inactivo}}</a></li>
                                        <input type="hidden" value="{{$inactivo}}" name="moneda">
                                    </ul></form>
                            </div>
                        </div>

                    </li>
                    <!--<li><a href="{{ url('/contacto') }}">Contacto</a></li>-->

                </ul>
                <div id="buscador">
                    <form class="form-inline">
                        <div class="form-group">
                            <input type="text" placeholder="Buscar..." class="form-control"  id="search-inp" name="search-inp">
                            <input type="hidden" value="" id="search-val">
                            <button class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i></button>
                        </div>
                        <div id="lista-sugerencia"></div>
                    </form>
                </div>
            </div>
            <div id="franja-menu">
                <div id="telefono"> Tel: 01-800-422-12-07</div>
                
                
<!--                <div id="whats"> 
                    
                    <i class="fa fa-whatsapp" aria-hidden="true"></i> 998-247-32-52</div>-->
            </div>
        </div>   
    </nav></div>

<div class="clearfix"></div>