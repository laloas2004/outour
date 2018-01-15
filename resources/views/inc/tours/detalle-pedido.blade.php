        <div class="col-md-12 detalle-pedido">
            <div class="col-md-2">
            <form action="{{url('/cart')}}" method="POST" class="form-group-sm">
                <?php echo csrf_field(); ?>
                <input type="hidden" name="tour_id" value="{{$tour[0]['id']}}">
                <div class="form-group">
                <label for="cant-menores">Cant. de Niños</label>
                <select id="cant-menores" name="cant_menores" class="form-control">
                    <?php
                    $numMax = 10;
                    for ($x = 0; $x < $numMax; $x++) {

                        echo '<option value="' . $x . '">' . $x . ' Menores </value>';
                    }
                    ?>
                </select>
                </div>
                <div class="form-group">
                <label for="cant-adultos">Cant. de Adultos</label>
                <select id="cant-adultos" name="cant_adultos" class="form-control">
                    <?php
                    $numMax = 10;
                    for ($x = 1; $x < $numMax; $x++) {

                        echo '<option value="' . $x . '">' . $x . ' Adultos </value>';
                    }
                    ?>
                </select>
                </div>
                
                <br>
                <!--<div class="">Niños</div>-->
                <!--<div class="precio">{{precio($tour[0]['PrecioMenor'])}}</div>-->
                <!--<div class="precio-desc">{{precio($tour[0]['PrecioMenorDesc'])}}</div>-->

                <!--<div class="">Adultos</div>-->
                <!--<div class="precio">{{precio($tour[0]['PrecTour'])}}</div>-->
                <!--<div class="precio-desc">{{precio($tour[0]['PrecTourDesc'])}}</div>-->

<!--                <div class="">Total:</div>
                <div class="detalle-total"><h2>{{precio(1000)}}</h2></div>-->

                <button type='submit' class="btn btn-primary btn-lg">Lo Quiero!</button>
            </form>
            
            </div>

        </div>