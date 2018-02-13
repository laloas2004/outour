
@extends('admin.layout')

@section('content')
<div class="container col-md-12">
    <div class="row toolbar" >
        <a href="{{url('/admin/tours/new')}}" class="btn btn-default">Nuevo Tour</a>
    </div>
    <div class="row">
        <table width="100%"  id="lista-tours">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">NOMBRE</th>
                    <th scope="col">PRECIO REG.</th>
                    <th scope="col">PRECIO DESC.</th>
                    <th scope="col">DESTINO</th>
                    <th scope="col">CATEGORIA</th>
                    <th scope="col">ACTIVO</th>
                    <th scope="col">EDITAR</th>
                </tr> 
            </thead>
            @foreach($tours as $tour)
            <tr>
                <td>{{$tour->id}}</td>
                <td>{{$tour->NombTour}}</td>
                <td>{{$tour->PrecTour}}</td>
                <td>{{$tour->PrecTourDesc}}</td>
                <td>{{$tour->NombDest}}</td>
                <td>{{$tour->NombCateg}}</td>
                <td>{{$tour->ActivoTour}}</td>
                <td><a href="{{url('/admin/tours/edit/')}}/{{$tour->id}}">Editar</a> | <a href="{{url('/admin/tours/eliminar/')}}/{{$tour->id}}">Eliminar</a></td>
            </tr> 
            @endforeach

        </table>  

    </div>

</div>


@endsection('content')