
@extends('layout')

@section('content')

<div class="row-fluid">
    <img src="{{url('/images/agentes/afiliados.jpg')}}" style="width: 100%; max-width: 1600px;">
</div>
<div class="row" >
    <div class="col-md-6 col-md-offset-1" id="contenedor-agente">
        <div id="msg-afiliados">
            <h1>outour</h1> 
            <strong><h3>les da la bienvenida</h3></strong>
            <div> Registrate aqui y un ejecutivo te solicitara la documentación requerida, para que recibas tu cuenta de usuario, con la que tu podras
                recibir grandes comisiones por cada operación de venta realizada.</div></div>
    </div>
    @include('inc.agentes.afiliados-form')
</div>
<div class="row">
    <img src="{{url('/images/agentes/beneficios.jpg')}}" width="100%">
</div>
<div class="row">
    <div class="col-md-6 col-md-offset-1" style="margin-top:30px; font-size:20px;">
        <ul>
            <li>Comisiones por cada operación de venta realizada</li>
            <li>Sin cargos ocultos para ti y tus clientes</li>
            <li>Una gama de destinos y atractivos turísticos para tus clientes</li>
            <li>Operaciones de venta y reservación totalmente en línea</li>
            <li>Claridad y transparencia en todas las operaciones</li>
            <li>Estado de cuenta personalizado</li>
            <li>Plataforma virtual a tu disposición</li>
            <li>Atención y soporte personalizado</li>
            <li>Programa de recompensas por volumen de ventas</li> 
        </ul>

    </div>
    <div class="col-md-4">
        <img src="{{url('/images/agentes/tabla-comisiones.jpg')}}" width="100%" style="margin:20px;">   
    </div>
    <div class="row">

    </div>
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-body" id="panel-calc-agente">

                    <div class="" style="margin: 20px;">
                        <h3>Tipo de Agente</h3>
                        <select id="tipo_agente" class="form-control">
                            <option value="1">Coordinador</option>
                            <option value="2">Vendedor</option>
                        </select>
                    </div>

                    <table width="100%" class="calculadora-agente" id="calculadora-agente" class="table table-striped">
                        <thead>
                        <th>Tipo de Membresia</th>
                        <th>P.V.</th>
                        <th>CANT.</th>
                        <th>COMISION</th>
                        <th>BONO</th>
                        </thead>
                        <tr>
                            <td><div style="text-align: center;">BLACK</div></td>
                            <td>
                                <input type="text" id="pv_black" class="form-control" value="$100.00" readonly="true">
                            </td>
                            <td>
                                <input type="number" id="cant_black" class="form-control" value="0" required="required">
                            </td>
                            <td>
                                <input type="text" id="comision_black" class="form-control" value="" readonly="true"style="width: 130px;">
                            </td>
                            <td>
                                <input type="text" id="bono_black" class="form-control" value="" readonly="true" style="width: 130px;">
                            </td>
                        </tr>
                        <tr>
                            <td><div style="text-align: center;">CLASICA</div></td>
                            <td>
                                <input type="text" id="pv_clasica" class="form-control" value="$50.00" readonly="true">
                            </td>
                            <td>
                                <input type="number" id="cant_clasica" class="form-control" value="0" required="required">
                            </td>
                            <td>
                                <input type="text" id="comision_clasica" class="form-control" value="" readonly="true" style="width: 130px;">
                            </td>
                            <td>
                                <input type="text" id="bono_clasica" class="form-control" value="" readonly="true" style="width: 130px;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3"><div style="text-align: right; margin-right: 10px;">Comisiones en Dlls</div></td>
                            <td><input type="text" id="co_dlls" class="form-control" value="" readonly="true" style="width: 130px;"></td>
                            <td><input type="text" id="bo_dlls" class="form-control" value="" readonly="true" style="width: 130px;"></td>
                        </tr>
                        <tr>
                            <td colspan="3"><div style="text-align: right; margin-right: 10px;">Comisiones en Mxn</div></td>
                            <td><input type="text" id="co_mxn" class="form-control" value="" readonly="true" style="width: 130px;"></td>
                            <td><input type="text" id="con_mxn" class="form-control" value="" readonly="true" style="width: 130px;"></td>
                        </tr>
                        <tr>
                            <td colspan="4"><div style="text-align: right; margin-right: 10px;">Total comision Mxn</div></td>

                            <td><input type="text" id="bon_total" class="form-control" value="" readonly="true" style="width: 130px;"></td>
                        </tr>

                    </table>



                </div>
            </div>

        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $('#tipo_agente').change(function (e) {

            $('#calculadora-agente').trigger('cambioCantidad');
        });

        $('#cant_clasica').change(function (e) {

            $('#calculadora-agente').trigger('cambioCantidad');
        });

        $('#cant_black').change(function (e) {

            $('#calculadora-agente').trigger('cambioCantidad');
        });


        $('#calculadora-agente').on('cambioCantidad', function (e) {
            var comi_coordinador = .075;
            var comi_vendedor = .25;

            var comision = 0;

            if ($('#tipo_agente').val() == 1) {
                comision = comi_coordinador;
            } else {
                comision = comi_vendedor;
            }

            var p_black = 100;
            var p_clasica = 50;
            var cant_black = $('#cant_black').val() == '' ? 0 : parseInt($('#cant_black').val());
            var cant_clasica = $('#cant_clasica').val() == '' ? 0 : parseInt($('#cant_clasica').val());


            var comi_black = (p_black * cant_black) * comision;
            var comi_clasica = (p_clasica * cant_clasica) * comision;

            var total_dlls = comi_black + comi_clasica;
            var total_mxn = total_dlls * 19;

            $('#comision_black').val(comi_black).formatCurrency();
            $('#comision_clasica').val(comi_clasica).formatCurrency();
            $('#co_dlls').val(total_dlls).formatCurrency();
            $('#co_mxn').val(total_mxn).formatCurrency();


            if ((cant_black + cant_clasica) >= 150 && $('#tipo_agente').val() == 1) {

                $('#bono_black').val(comi_black).formatCurrency();
                $('#bono_clasica').val(comi_clasica).formatCurrency();

                $('#bo_dlls').val(total_dlls).formatCurrency();
                $('#con_mxn').val(total_mxn).formatCurrency();
                $('#bon_total').val(total_mxn * 2).formatCurrency();

            } else {
                $('#bono_black').val("---");
                $('#bono_clasica').val("---");
                $('#bo_dlls').val("---");
                $('#con_mxn').val("---");
                $('#bon_total').val("---");
            }


        });

    });




</script>
@endsection('content')