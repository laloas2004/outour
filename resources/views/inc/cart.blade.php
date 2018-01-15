<div class="container" id="detalle-container">
    <div class="row">
        <h1>Reservacion de Tours</h1>
        <div class="panel panel-default">

            <div class="panel-body">
                <div class="row" id="">
                    <div class="container">
                        <h3>{{$tour['NombTour']}}</h3>
                        <h4><span class="glyphicon glyphicon-map-marker"></span><?php echo $tour['destino']['NombDest']; ?></h4>
                        <div id="image-cart">
                            <img  width="250px"class="thumbnail" src="{{url('/')}}/{{isset($tour['images'][0]['UrlImg'])? $tour['images'][0]['UrlImg'] : 'no-existe'}}">
                        </div>
                        <div id="cart-table">
                            <table style="width:95%" class=" table table-striped">
                                <thead>
                                <th>Precio Regular</th>
                                <th>Precio HRTOUR.MX</th>
                                <th>Tipo</th>
                                <th>Cant.</th>
                                <th>SubTotal</th>
                                <th>Anticipo</th>
                                <th>Saldo</th>
                                </thead>
                                <tbody>
                                    <?php
                                    if (isset($tabla['adulto'])) {

                                        echo '<tr>' .
                                        '<td>' . precio($tabla['adulto']['reg']) . '</td>' .
                                        '<td>' . precio($tabla['adulto']['conDesc']) . '</td>' .
                                        '<td>' . $tabla['adulto']['tipo'] . '</td>' .
                                        '<td>' . $tabla['adulto']['qty'] . '</td>' .
                                        '<td>' . precio($tabla['adulto']['subtotal']) . '</td>' .
                                        '<td>' . precio($tabla['adulto']['anticipo']) . '</td>' .
                                        '<td>' . precio($tabla['adulto']['saldo']) . '</td>' .
                                        '</tr>';
                                    }

                                    if (isset($tabla['ninio'])) {

                                        echo '<tr>' .
                                        '<td>' . precio($tabla['ninio']['reg']) . '</td>' .
                                        '<td>' . precio($tabla['ninio']['conDesc']) . '</td>' .
                                        '<td>' . $tabla['ninio']['tipo'] . '</td>' .
                                        '<td>' . $tabla['ninio']['qty'] . '</td>' .
                                        '<td>' . precio($tabla['ninio']['subtotal']) . '</td>' .
                                        '<td>' . precio($tabla['ninio']['anticipo']) . '</td>' .
                                        '<td>' . precio($tabla['ninio']['saldo']) . '</td>' .
                                        '</tr>';
                                    }
                                    ?>
                                    <tr>
                                        <td colspan="4">Total:</td>
                                        <td>{{precio($totales['totalSub'])}}</td>
                                        <td>{{precio($totales['totalAnti'])}}</td>
                                        <td>{{precio($totales['totalSaldo'])}}</td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">Comisiones:</td>
                                        <td colspan="2">{{precio($totales['totalAnti']*$comision)}}</td>

                                    </tr>
                                    <tr>
                                        <td colspan="5"><h4>Total a Pagar:</h4></td>
                                        <td colspan="2"><h4>{{precio($totales['totalComision'])}}</h4></td>

                                    </tr>
                                    <tr>
                                        <td colspan="3">Ahorro Total:</td>
                                        <td colspan="2">{{precio($totales['ahorro'])}}</td>
                                        <td colspan="2">Con HRTOUR Ahorra el <strong>{{$totales['pctAhorro']}}%</strong></td>

                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div></div></div>

    </div>


    <div class="row">
        <form action="{{url('/checkout/buy')}}" method="POST" class="form-group form-inline">
            <?php echo csrf_field(); ?>
            <div class="panel panel-default">

                <div class="panel-body">
                    <div id="" class="col-md-12">
                        <h2>Formas de Pago</h2> 
                        <div class="col-md-8">
                            <img  width="250px" class="" src="{{url('/images')}}/pago-paypal.png"> 
                        </div>
                        <div class="col-md-2">
                            <input type="submit" value="Comprar Ahora" class="btn btn-lg btn-success">

                            </form>

                        </div></div></div></div>

    </div></div>

<script>


    $(document).ready(function () {

    });

</script>