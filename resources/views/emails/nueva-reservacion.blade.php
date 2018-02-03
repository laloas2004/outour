

<div style="width: 100%;"><img src="http://138.197.221.69/images/logo.jpg"></div>
<h1>Nueva Reservacion</h1>

<div style="width: 100%;">
    <strong>Nombre:</strong> {{$user->name}} <br>
    
    <strong>Num. de Confirmación:</strong> {{$venta->folio}}<br>
    <strong>Nombre de Tour:</strong> {{$tour->NombTour}}<br>
    <strong>Destino:</strong> {{$destino->NombDest}}<br>
    <strong>Adultos:</strong> {{$venta_detalle->CantPerso}}<br>
    <strong>Menores:</strong> {{$venta_detalle->CantMenor}}<br>
    <strong>Balance a Pagar:</strong> $ {{$balance}} MXN <br><br><br>
    
    
    <strong>Hotel: </strong>  {{ $venta->hotelPickUp }}<br>
    <strong>Habitacion: </strong> {{$venta->habitaPickup }}<br>
    <strong>Fecha de Reservación :</strong>  {{$venta->fechaReser}}<br>
    <strong>Telefono Hotel:</strong> {{$venta->telHotel}}<br>
    <strong>Comentarios:</strong>  {{$venta->ComentVent}}<br><br>
    
</div>


 