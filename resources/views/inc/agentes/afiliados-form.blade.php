<div class="col-md-4" style="margin-top: 40px;">
    <form action="{{url('/agentes')}}" method="POST" id="preregistro-agente">
        <?php echo csrf_field(); ?>

        <div class="form-group">
            <div class="panel panel-default">
                <div class="panel-heading">Datos Generales</div>
                <div class="panel-body fondo-gris">
                    <div style="margin-bottom: 15px;margin-top: 10px;">
                    Si ya estas registrado como agente <a href="{{url('/agentes/login')}}">entra aqui</a>
                    </div>
                    <div class="form-group">
                        <label for="pais">Pais</label>

                        <select class="form-control" name="pais" id="pais">
                            <?php
                            foreach ($paises as $key => $pais) {
                                echo '<option value="' . $pais['id'] . '">' . $pais['NombPais'] . '</option>';
                            }
                            ?>
                        </select>
                    </div>
                    <div class="form-group">
                       <label for="nombre">Nombre:</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" minlength="4" required> 
                    </div>
                    <div class="form-group">
                    <label for="nombre">Apellidos:</label>
                    <input type="text" class="form-control" id="apellido" name="apellido" minlength="4" required>
                    </div>
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
                    <label for="tipo">Categoría de Promotor</label>

                    <select class="form-control" name="tipo" id="tipo" required="true">
                        <option value="" disabled selected>Selecciona una Opcion... </option>
                        <option value="1">Coordinador de Grupo </option>
                        <option value="2">Vendedor de Grupo </option>
                        <option value="3">Agencia de Viajes </option>
                        <option value="2">Representante de Ventas </option>
                    </select>

                    </select>
                    <p style="margin: 10px;">
                        <input type="submit" value="Continuar" class=" btn  btn-lg btn-success">
                    </p>
                </div></div></div>
    </form>

</div>
<script>

  $(document).ready(function () {
       
$("#preregistro-agente" ).validate({
  rules: {
    password: "required",
    password_confirmation: {
      equalTo: "#password"
    }
  }
});
    });






</script>