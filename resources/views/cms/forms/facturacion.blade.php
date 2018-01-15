
<div class="row">
    <img src="{{url('/images/facturacion.jpg')}}" width="100%">
</div>
<div class="container">

    <div class="row">
        <h1>Facturación</h1>
        <p>Favor de llenar el siguiente formulario con los datos correctos para emitir la factura electrónica correspondiente.</p>
    </div>
    <div class="col-md-2"></div>
    <div class="row col-md-9">
        <div class="panel panel-default">
            <div class="panel-heading"></div>
            <div class="panel-body" style="background-color:#ebebeb;">

                <form class="" method="POST" action="">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="num-confirmacion">Núm. de Confirmación</label>
                            <input type="text" class="form-control" name="num-confirmacion" id="num-conirmacion" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" class="form-control" name="nombre" id="nombre" required>
                    </div>
                    <div class="form-group">
                        <label for="nombre">RFC</label>
                        <input type="text" class="form-control" name="rfc" id="rfc" required>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="nombre">Calle</label>
                            <input type="text" class="form-control" name="calle" id="calle" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="nombre">Número</label>
                            <input type="text" class="form-control" name="numero" id="numero" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="nombre">Colonia</label>
                            <input type="text" class="form-control" name="colonia" id="colonia" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="nombre">Municipio</label>
                            <input type="text" class="form-control" name="municipio" id="municipio" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="estado">Estado</label>
                            <input type="text" class="form-control" name="estado" id="estado" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="nombre">País</label>
                            <input type="text" class="form-control" name="pais" id="pais" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="estado">Código Postal</label>
                            <input type="text" class="form-control" name="cp" id="cp" required>
                            <input type="submit" class="btn btn-primary" value="Enviar" style="margin:10px;">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="estado">Email</label>
                            <input type="email" class="form-control" name="email" id="email" required>
                            <p style="float: right;">La factura será enviada a su cuenta de correo en las próximas 24 horas.</p>
                        </div>
                    </div>

                </form>  


            </div></div>
    </div>
</div>