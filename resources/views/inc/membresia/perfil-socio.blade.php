<div class="container">

    
    @if($socio->pagado == 0)
    <div class="alert alert-danger" role="alert">
        
    Su membresia todavia no ha sido pagada o ya no cuenta con vigencia, favor de dar <a href="{{url('/membresia/pagar')}}">Click Aqui</a> para pagar.
        
    </div>
    @endif
    
    <h1>Mi Perfil</h1>
    <h4>Bienvenido, su cuenta de Socio es: <strong> {{$socio->numTarjeta}}</strong> , Recuerde que no podra operar hasta no ingresar los datos solicitados.</h4>
    <div class="col-md-10">
        <form action="{{url('/membresia/perfil')}}" method="POST" id="perfil-socio">
            <?php echo csrf_field(); ?>
            <div class="panel panel-default">
                <div class="panel-heading">Datos del Usuario.</div>
                <div class="panel-body"> 
                    <div class="form-group">
                        <label for="email">E-mail:</label>

                        <input type="text" class="form-control" id="email" name="email" minlength="4" value='{{$user->email}}' readonly>
                    </div>
                    <div class="form-group">
                        <label for="promotor">Promotor:</label>
                        <?php
                        if ($asociado == null) {
                            ?>
                            <input type="text" class="form-control" id="promotor" name="promotor" value='' minlength="4">
                            <input type="hidden" class="form-control" id="id_promotor" name="id_promotor" value="">

                        <?php } else { ?>
                            <input type="text" class="form-control" id="promotor" name="promotor" value='{{$asociado}}' minlength="4" readonly>
                            <input type="hidden" class="form-control" id="id_promotor" name="id_promotor" value="{{$id_asociado}}">
                        <?php } ?>
                    </div>


                </div></div>


            <div class="panel panel-default">
                <div class="panel-heading">Datos Generales del Socio</div>
                <div class="panel-body">

                    <div class="form-group">
                        <label for="nombre">Nombre:</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" minlength="4"  value="{{isset($user->name) ? $user->name :''}}"required>
                        <!--                        <label for="email">Email:</label>
                                                <input type="email" class="form-control" id="email" name="email" required>
                                                <div class="form-group">
                                                    <label for="pass">Contraseña:</label>
                                                    <input type="password" class="form-control password" id="password" name="password" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="password_confirmation">Confirmar Contraseña:</label>
                                                    <input type="password" class="form-control confpass" id="password_confirmation" name="password_confirmation" required>
                                                </div>-->
                        <div class="form-group">
                            <label for="tipo">Tipo de Membresia</label>

                            <input type="text" class="form-control" name="tipo" id="tipo"value='{{$membresia->NombMemb}}' readonly>
                        </div>
                        <div class="form-group">
                            <label for="tipo">Vigencia de Membresia</label>

                            <input type="text" class="form-control" name="vigencia" id="vigencia" value='{{$socio->FechVigSoc}}' readonly>  
                        </div>
                        <div class="form-group">
                            <label for="tel">Telefono:</label>
                            <input type="text" class="form-control" id="tel" name="tel" value="{{isset($socio->TelSocio) ? $socio->TelSocio :''}}" minlength="4" required>
                        </div>
                        <div class="form-group">
                            <label for="cel">Celular:</label>
                            <input type="text" class="form-control" id="cel" name="cel" value="{{isset($socio->TelCelSocio) ? $socio->TelCelSocio :''}}" minlength="4" required>
                        </div>
                        <div class="form-group">
                            <label for="cel">Fecha de Nacimiento:</label>

                            <input type="date" class="form-control" id="fechNac" name="fechNac" value="{{isset($socio->FechNacSocio) ? $socio->FechNacSocio :''}}" required>
                        </div>
                        <div class="form-group">
                            <label for="sexo">Sexo:</label>

                            <select name="sexo" id="sexo" class="form-control">
                                <?php
                                if ($socio->SexSocio == 'M') {
                                    echo
                                    '<option value="M" selected>Masculino</option>' .
                                    '<option value="F">Femenino</option>';
                                } else {
                                    echo
                                    '<option value="M">Masculino</option>' .
                                    '<option value="F" selected>Femenino</option>';
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">Datos de Socios Adicionales.</div>
                <div class="panel-body"> 
                    <table style="width:100%;" class="table-borderless">
                        <thead>
                        <th><center>Nombre</center></th>
                        <th><center>Edad</center></th>
                        </thead>
                        <?php
                        $integrantes = (int) $membresia->cantMiembr;
                        for ($x = 1; $x <= $integrantes; $x++) {

                            $nombre = '';
                            $edad = '';
                            $tipo = 'ins';

                            if (isset($adicionales[$x - 1])) {
                                $nombre = $adicionales[$x - 1]['NombSocAdi'];
                                $edad = $adicionales[$x - 1]['EdadSocAdi'];
                                $tipo = 'upd';
                            }

                            echo'<tr>
                                                <td style="width: 80%;">';
                            echo ' <div class="form-group form-inline">' .
                            ' <label for="adicional">' . $x . ':</label>' .
                            '<input type="text" value="' . $nombre . '" class="form-control nombre-adicional" id="adicional.' . $x . '" name="adi.name.' . $tipo . '.' . ($x - 1) . '">' .
                            '</div></td>';

                            echo '<td style="width: 20%;">'
                            . '<div class="form-group form-inline">'
                            . '<label for="edad.' . $x . '"></label>'
                            . '<input type="text" value="' . $edad . '" class="form-control edad-adicional" id="edad.' . $x . '" name="adi.edad.' . $tipo . '.' . ($x - 1) . '">'
                            . '</td></tr>';
                        }
                        ?>

                    </table>



                    <p style="margin: 10px;">
                        <input type="submit" value="Guardar Perfil" class=" btn  btn-lg btn-success">
                    </p>



                </div></div></div>


</form>

</div>



</div>