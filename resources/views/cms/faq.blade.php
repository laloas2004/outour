
@extends('layout')

@section('content')

<div class="row">
    <img src="{{url('/images/ayuda/ayuda.jpg')}}" style="width: 100%;">  
</div>
<div class="row" style="margin-top: 20px;">
    <div class="col-md-10 col-md-offset-2">
        <div class="col-md-7">

            <h2>¿Necesitas Ayuda?</h2> 
            <h4>!Estamos para ayudarte!</h4>
            <p>
                Envíanos tus datos y un asesor se pondra de inmediato contigo 01-800-422-12-07 o al correo info@outour.mx
            </p>
            @include('inc.ayuda.form-ayuda')
        </div>

        <div class="col-md-3">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h1 class="text-center">AYUDA</h1>
                    <div class="menu_simple">
                        <ul>
                            <li><a href="#">¿Contacto?</a></li>
                            <li><a href="{{url('/como-funciona')}}">¿Como funciona?</a></li>
                            <li><a href="{{url('/como-pago')}}">¿Como la pago?</a></li>
                            <li><a href="{{url('/politicas')}}">Terminos y condiciones</a></li>
                            <li><a href="{{url('/privacidad')}}">Aviso de privacidad</a></li>
                            <li><a href="{{url('/proveedores')}}">¿Como ser proveedor?</a></li>
                        </ul>
                    </div></div></div>
        </div>
    </div>

</div>
<div class="row">
    
    <img src="{{url('/images/ayuda/ayuda2.jpg')}}" class="" style="width:100%">
    
</div>

@endsection('content')