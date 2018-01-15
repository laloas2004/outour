
@extends('layout')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Entra con tu Cuenta</div>
                    <div class="panel-body">
                        <form action="{{url('auth/login')}}" method="POST" class="form">
                              <?php echo csrf_field(); ?>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" name="email" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                              
                                <input type="password" name="password" class="form-control">

                            </div>
                            <div class="checkbox">
                                <label><input name="remember" type="checkbox"> Recordar</label>
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
@endsection