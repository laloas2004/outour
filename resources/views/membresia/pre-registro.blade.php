@extends('layout')

@section('content')


@include('inc.membresia.pre-registro')

<script>
    $(document).ready(function () {
        
   
//    jQuery.validator.setDefaults({
//  debug: true,
//  success: "valid"
//});

$("#preregistro" ).validate({
  rules: {
    password: "required",
    password_confirmation: {
      equalTo: "#password"
    }
  }
});
    });
</script>
 
@endsection('content')