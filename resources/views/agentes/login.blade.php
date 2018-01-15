
@extends('layout')
@section('content')
<div class="container" id="login-agentes">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-heading">Entrar como Agente</div>
                <div class="panel-body">
                    <form action="{{url('agentes/login')}}" method="POST" class="form" id="login-agente">
                        <?php echo csrf_field(); ?>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" name="email" class="form-control" required="true" minlength="4">
                        </div>
                        <div class="form-group">
                            <label>Contraseña</label>

                            <input type="password" name="password" class="form-control" required="true" minlength="4">

                        </div>
                        <div>                             
                            <button type="submit" class="btn btn-primary">Entrar</button>
                        </div>
                    </form>
                </div> 
            </div>
        </div>
    </div>
</div>
<script>

    $(document).ready(function () {

        $("#login-agente").validate({
        });
    });

</script>
@endsection