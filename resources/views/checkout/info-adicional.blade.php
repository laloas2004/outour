@extends('layout')

@section('content')

<div class="container" id="info-adicional-container">
    <div class="row">
        <h1>Ticket de Reservación</h1>
        <form action="{{url('/payment/info-adicional')}}" method="POST" class="" id="info-adicional-form">
                            <?php echo csrf_field(); ?> 
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <label for="name">Nombre</label>
                            <input type="text" id="name" name="name" class="form-control" value="{{$user->name}}" readonly="true">
                        </div>
                    </div>
                    <div class="col-md-4">

                        <div class="form-group">
                            <label for="folio">Núm. Reservacion</label>
                            <input type="text" id="folio" name="folio" class="form-control" value="{{$venta->folio}}" readonly="true">
                        </div>   

                    </div>
                </div> 
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <label for="tour">Tour</label>
                            <input type="text" id="tour" name="tour" class="form-control" value="{{$tour->NombTour}}" readonly="true">
                        </div>
                    </div> 
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="destino">Destino</label>
                            <input type="text" id="destino" name="destino" class="form-control" value="{{$destino->NombDest}}" readonly="true">
                        </div>   
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                       <div class="form-group">
                            <label for="tour">Adultos</label>
                            <input type="text" id="adultos" name="adultos" class="form-control" value="{{$venta_detalle->CantPerso}}" readonly="true">
                        </div>  
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="tour">Menores</label>
                            <input type="text" id="adultos" name="adultos" class="form-control" value="{{$venta_detalle->CantMenor}}" readonly="true">
                        </div>   
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                            <label for="tour">Balance a Pagar </label>
                            <input type="hidden" id="cant_balance" name="cant_balance" class="form-control" value="{{cambiaraPesos($balance)['cantidad']}}">
                            <input type="text" id="balance" name="balance" class="form-control" value="{{precio($balance)}}" readonly="true">
                        </div>    
                       
                    </div>
                </div>
                
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-body">
                <div>
                    <div>
                        
                            <input type="hidden" name="venta_id" value="{{$venta_id}}">


                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="hotelPickUp">Hotel (Opcional)</label>
                                        <input type="text" id="hotelPickUp" name="hotelPickUp" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="fechaReser">Fecha Reservación (Opcional)</label>
                                        <div class="input-group">
                                            <div class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></div>
                                            <input type='text' class="form-control" id="fechaReser" name="fechaReser" value="<?php echo date("Y-m-d"); ?>" required="true">
                                        </div>
                                    </div> 
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="habitaPickup">Numero de Habitación (Opcional)</label>
                                        <input type="text" id="habitaPickup" name="habitaPickup" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="telHotel">Telefono del Hotel (Opcional)</label>
                                        <input type="text" id="telHotel" name="telHotel" class="form-control"> 
                                    </div>  
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="ComentVent">Comentarios (Opcional)</label>
                                        <textarea  class="form-control" id="ComentVent" name="ComentVent"></textarea>
                                    </div>
                                </div></div>
                            <div class="row">
                                <div class="col-md-6"></div>
                                <div class="col-md-6">

                                    <input type="submit" value="Terminar Reservacion" class="btn btn-lg btn-success">

                                </div> </div>



                    </div>
                    </form>  

                </div>

            </div>

        </div>

    </div></div>

<script>


    $(document).ready(function () {

        jQuery('#fechaReser').datetimepicker({
            minDate: '0',
            format: 'Y-m-d',
            inline: false,
            timepicker: false,
            lang: 'es'
        });

        $("#info-adicional-form").validate({
        });

    });

</script>




@endsection('content')


