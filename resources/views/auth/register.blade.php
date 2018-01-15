@extends('layout')

@section('content')
<div class="container">
    <div class="row">
        @if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-heading">Login</div>

                <div class="panel-body">


                    <form action="{{url('auth/register')}}" method="POST">
                        <?php echo csrf_field(); ?>
                        <div class="form-group">
                            <label>name</label>

                            <input type="text" name="name" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Email</label>

                            <input type="email" name="email" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Password</label>

                            <input type="password" name="password" class="form-control">

                        </div>

                        <div class="form-group">
                            <label>Password confirmation</label>

                            <input type="password" name="password_confirmation" class="form-control">
                        </div>

                        <div>

                            <button type="submit">Registrar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection