
@extends('layout')

@section('content')
<div class="row" style="margin-bottom: 20px;"> 
    <img src="{{url('/images/agentes/captura.jpg')}}" width="100%">
</div>
<div class="col-md-8 col-md-offset-2">
    <div class="row">
        <h2>Bienvenido,<span id="name-bienvenida">{{$agente['NombAsoc']}}</span>  y su numero de agente es <span id="num-agente">{{$agente['numTarjeta']}}</span>.</h2>
    </div>
    <form method="POST" action="{{url('/agentes/registro/save')}}" id="registro-agentes">
        <?php echo csrf_field(); ?>
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-heading">Información General</div>
                <div class="panel-body">


                    @if($agente['rol'] == 2)
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="nombre">ID de cordinador</label>
                                <input type="text" class="form-control" id="cordinador" name="cordinador" value="{{isset($agente['cordinador_id'])? $agente['cordinador_id'] : 'N/D'}}"  minlength="7" required>

                            </div></div>  
                    </div>
                    @endif
                    @if($agente['rol'] == 3)
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="nombre">ID de agencia</label>
                                <input type="text" class="form-control" id="cordinador" name="cordinador" value="{{isset($agente['cordinador_id'])? $agente['cordinador_id'] : 'N/D'}}"  minlength="7" required>

                            </div></div>  
                    </div>
                    @endif
                    <input type="hidden" class="form-control" id="tipo_agente" name="tipo_agente" value="{{$agente['rol']}}">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" value="{{$agente['NombAsoc']}}" required>
                            </div></div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="apellido">Apellidos</label>
                                <input type="text" class="form-control" id="apellido" name="apellido" value="{{$agente['ApeAsoc']}}" required>
                            </div>  
                        </div></div>


                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="nacimiento">Fecha de Nacimiento</label>
                                <input type="date" class="form-control" id="nacimiento" name="nacimiento" value="{{$agente['nacimiento']}}"required>
                            </div>

                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" class="form-control" id="email" value="{{$agente['email']}}" readonly="true" required>
                            </div> 
                        </div>
                    </div>





                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="rfc">R.F.C</label>
                                <input type="text" class="form-control" id="rfc" name="rfc" required minlength="12" value="{{$agente['ban_rfc']}}">
                            </div></div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="curp">CURP</label>
                                <input type="text" class="form-control" id="curp" name="curp" required minlength="18" value="{{$agente['ban_curp']}}">
                            </div> 
                        </div>
                    </div>
                </div>
            </div> 

        </div>

        <div class="row">

            <div class="panel panel-default">
                <div class="panel-heading">Domicilio Particular</div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="calle">Calle</label>
                                <input type="text" class="form-control" id="calle" name="calle" required="true" required value="{{$agente['calle']}}">
                            </div> 
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="num">Número</label>
                                <input type="text" class="form-control" id="num" name="num" required value="{{$agente['num']}}">
                            </div> 
                        </div></div>


                    <div class="row">   
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="colonia">Colonia</label>
                                <input type="text" class="form-control" id="colonia" name="colonia" required value="{{$agente['colonia']}}">
                            </div> 
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="municipio">Municipio</label>
                                <input type="text" class="form-control" id="municipio" name="municipio" required value="{{$agente['municipio']}}">
                            </div> 
                        </div></div>


                    <div class="row"> 
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="estado">Estado</label>
                                <input type="hidden" id="id_estado" value="{{$agente['id_estado']}}">
                                <select class="form-control" name="estado" id="estado">
                                    <option selected="" disabled="">-- Selecciona Pais --</option>
                                </select>
                            </div> 
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="pais">Pais</label>
                                <select name="pais" id="pais" class="form-control" required>
                                    <?php
                                    
                                    foreach ($paises as $key => $pais) {
                                        $sel = '';
                                        if ($agente['id_pais'] == $pais['id']) {
                                            $sel = 'selected';
                                        }
                                        echo '<option value="' . $pais['id'] . '"' . $sel . '>' . $pais['NombPais'] . '</option>';
                                    }
                                    ?> 
                                </select>

                            </div> 
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-md-offset-6">
                            <div class="form-group">
                                <label for="num">Codigo Postal</label>
                                <input type="text" class="form-control" id="cp-agente" name="cp_agente" required minlength="4" value="{{$agente['cp']}}">
                            </div> 
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="tel">Tel. Fijo</label>
                                <input type="text" class="form-control" id="tel" name="tel_fijo" required value="{{$agente['TelFijo']}}">
                            </div> 
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="cel">Tel.Celular</label>
                                <input type="text" class="form-control" id="cel" name="tel_cel" value="{{$agente['TelCel']}}">
                            </div> 
                        </div></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-heading">Información Bancaria</div>
                <div class="panel-body">
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label for="nom_titular">Nombre del Titular</label>
                            <input type="text" class="form-control" id="nom_titular" name="ban_titular" required value="{{$agente['ban_titular']}}">
                        </div> </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="nom_titular">CLABE Interbancaria</label>
                            <input type="text" class="form-control" id="ban_clabe" name="ban_clabe" required value="{{$agente['ban_clabe']}}">
                        </div> 
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="banco_rfc">Num. Cuenta</label>
                                <input type="text" class="form-control" id="ban_cuenta" name="ban_cuenta" required value="{{$agente['ban_cuenta']}}">
                            </div>    
                        </div> 

                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="banco">Banco</label>
                                <input type="text" class="form-control" id="banco" name="ban_banco" required value="{{$agente['ban_banco']}}">
                            </div>    
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="tipo_cuenta">Tipo de Cuenta</label>
                                <select class="form-control" name="ban_tipo" required>
                                    <option disabled="true" selected="true">-- Selecciona --</option>
                                    <?php
                                    $opciones = ['Debito', 'Credito', 'Cheques'];
                                   
                                    unset($key);

                                    foreach ($opciones as $key => $opcion) {
                                        
                                        $sel = '';
                                        if ($agente['ban_tipo'] == $opcion) {
                                            $sel = 'selected';
                                        }
                                        echo '<option value="' . $opcion . '"' . $sel . '>' . $opcion . '</option>';
                                    }
                                    ?>

                                </select>
                            </div>    
                        </div></div>

                    <!--                    <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="banco_rfc">R.F.C.</label>
                                                    <input type="text" class="form-control" id="banco_rfc" name="ban_rfc" required minlength="12">
                                                </div>    
                                            </div> 
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="banco_curp">CURP</label>
                                                    <input type="text" class="form-control" id="banco_curp" name="ban_curp" required minlength="18">
                                                </div>    
                                            </div> 
                                        </div>-->
                </div>
            </div>
        </div>
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-heading">Documentación Requerida</div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-6">
                            <ul>
                                <li>IFE</li>
                                <li>COMPROBANTE DE DOMICILIO</li>
                                <li>CURP</li>
                                <li>CONSTANCIA DE IDENTIFICACION FISCAL</li>
                            </ul> 
                        </div>
                        <div class="col-md-6">
                            <div style="float: right;">
                                <input type="submit" value="Guardar" class="btn btn-primary btn-lg">
                            </div>
                        </div></div>


                </div>                
            </div>            
        </div>

    </form>
</div>
<script>

    $(document).ready(function () {


        $("#registro-agentes").validate({
        });
   


    $('#pais').change(function (e) {
        var pais = $(e.currentTarget).val();
         id_estado = $('#id_estado').val();
        
        $.ajax({
            method: "GET",
            url: "{{url('/estados')}}",
            dataType: "json",
            data: {pais: pais},
        }).done(function (data) {
            $('#estado').empty();
            for (key in data.estados) {
                
                if(id_estado == key){
                $('#estado').append('<option value="' + key + '" selected>' + data.estados[key].NombEst + '</option>');    
                }else{
                $('#estado').append('<option value="' + key + '">' + data.estados[key].NombEst + '</option>');
            }
            }
            $('#estado').append('<option value="null">Otro</option>');

        });

    });

$('#pais').trigger('change');


 });


</script>
@endsection('content')