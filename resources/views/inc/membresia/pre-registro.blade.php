<div style="margin-left: -15px;margin-right: -15px;">
    <img src="{{url('/images/membresia/pre-registro-header.jpg')}}" width="100%">
</div>
<div class="container">

    <h1>Pre-registro de Socios</h1>

    <div class="col-md-6">
        <div id="preregistro-socio-portada">
            
            
            
            
        </div>
    </div>
    <div class="col-md-6">
        <form action="{{url('/membresia/comprar')}}" method="POST" id="preregistro">
            <?php echo csrf_field(); ?>
            <div class="panel panel-default">
                <div class="panel-body"> 
                    <div class="form-group">
                        <label for="pais">Pais</label>

                        <select class="form-control" name="pais" id="pais">

                            <?php
                            foreach ($paises as $key => $pais) {
                                echo '<option value="' . $pais['id'] . '">' . $pais['NombPais'] . '</option>';
                            }
                            ?>
                        </select>
                    </div></div></div>
            <div class="form-group">
                <div class="panel panel-default">
                    <div class="panel-heading">Datos Generales</div>
                    <div class="panel-body">
                        <label for="nombre">Nombre:</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" minlength="4" required>
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                        <div class="form-group">
                            <label for="pass">Contraseña:</label>
                            <input type="password" class="form-control password" id="password" name="password" required>
                        </div>
                        <div class="form-group">
                            <label for="password_confirmation">Confirmar Contraseña:</label>
                            <input type="password" class="form-control confpass" id="password_confirmation" name="password_confirmation" required>
                        </div>
                        <label for="tipo">Tipo de Membresia</label>

                        <select class="form-control" name="tipo" id="tipo">
                            <?php
                            unset($key);
                            foreach ($membresias as $key => $membresia) {
                                $sel = '';
                                if ($tipo == $membresia['id']) {
                                    $sel = 'selected';
                                }
                                echo '<option value="' . $membresia['id'] . '" ' . $sel . '>' . $membresia['NombMemb'] . '</option>';
                            }
                            ?>


                        </select>
                        <p style="margin: 10px;">
                            <input type="submit" value="Continuar" class=" btn  btn-lg btn-success">
                        </p>
                    </div></div></div>
        </form>

    </div>



</div>