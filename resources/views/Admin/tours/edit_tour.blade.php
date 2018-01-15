
@extends('Admin.layout')

@section('content')
<div class="container">
    <div class="row">
        <h1>Editar Tour</h1>
    </div>

    <div class="row">
        <form class="" method="POST" id="new-tour-form" action="{{url('/admin/tours/edit')}}">
            <?php echo csrf_field(); ?>
            <input type="hidden" value="{{$tours->id or ''}}" name="id">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="NombTour">Nombre de Tour </label>
                    <input type="text" class="form-control" name="NombTour" id="NombTour" required="true" value="{{$tours->NombTour or ''}}">
                </div>
            </div>
            <div class="col-md-12" style="height: 300px;">
                <div class="form-group">
                    <label for="ResuDescTour">Resumen Descripcion</label>
                    <textarea class="form-control" id="ResuDescTour" name="ResuDescTour" rows="20" cols="200" style="height: 300px;" required="true">{{$tours->ResuDescTour}}</textarea>
                </div>  
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <label for="DescripTour">Descripcion</label>
                    <textarea class="form-control" id="DescripTour" name="DescripTour" rows="20" cols="200" required="true">{{$tours->DescripTour or ''}}</textarea>
                </div>   


            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="PrecTour">Precio Regular Adulto</label>
                    <input type="text" class="form-control" name="PrecTour" id="PrecTour" required="true" value="{{$tours->PrecTour or ''}}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="PrecTourDesc">Precio Descuento Adulto</label>
                    <input type="text" class="form-control" name="PrecTourDesc" id="PrecTourDesc" required="true" value="{{$tours->PrecTourDesc or ''}}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="PrecioMenor">Precio Regular Niño</label>
                    <input type="text" class="form-control" name="PrecioMenor" id="PrecioMenor" required="true" value="{{$tours->PrecTourDesc or ''}}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="PrecioMenorDesc">Precio Descuento Niño</label>
                    <input type="text" class="form-control" name="PrecioMenorDesc" id="PrecioMenorDesc" required="true" value="{{$tours->PrecioMenorDesc or ''}}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="AnticipoAdulto">Anticipo Adulto</label>
                    <input type="text" class="form-control" name="AnticipoAdulto" id="AnticipoAdulto" required="true" value="{{$tours->AnticipoAdulto or ''}}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="AnticipoMenor">Anticipo Niño</label>
                    <input type="text" class="form-control" name="AnticipoMenor" id="AnticipoMenor" required="true" value="{{$tours->AnticipoMenor or ''}}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="BalanceAdulto">Balance Adulto</label>
                    <input type="text" class="form-control" name="BalanceAdulto" id="BalanceAdulto" required="true" value="{{$tours->BalanceAdulto or ''}}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="BalanceMenor">Balance Niño</label>
                    <input type="text" class="form-control" name="BalanceMenor" id="BalanceMenor" required="true" value="{{$tours->BalanceMenor or ''}}">
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <label for="RecomenTour">Recomendaciones</label>
                    <!--<input type="text" class="form-control" name="RecomenTour" id="RecomenTour" required="true">-->
                    <textarea class="form-control" id="RecomenTour" name="RecomenTour" rows="20" cols="200" required="true">{{$tours->RecomenTour or ''}}</textarea>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="NoIncluye">Que No Incluye</label>
                    <!--<input type="text" class="form-control" name="NoIncluye" id="QueLlevar" required="true">-->
                    <textarea class="form-control" id="NoIncluye" name="NoIncluye" rows="20" cols="200" required="true">{{$tours->NoIncluye or ''}}</textarea>

                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="Incluye">Incluye</label>
                    <!--<input type="text" class="form-control" name="Incluye" id="Incluye" required="true">-->
                    <textarea class="form-control" id="Incluye" name="Incluye" rows="20" cols="200" required="true">{{$tours->Incluye or ''}}</textarea>

                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="InfoAdicio">Info Adicional</label>
                    <!--<input type="text" class="form-control" name="InfoAdicio" id="InfoAdicio" required="true">-->
                    <textarea class="form-control" id="InfoAdicio" name="InfoAdicio" rows="20" cols="200" required="true">{{$tours->InfoAdicio or ''}}</textarea>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="Horario">Horario</label>
                    <input type="text" class="form-control" name="Horario" id="Horario" required="true" value="{{$tours->Horario or ''}}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="Duracion">Duracion</label>
                    <input type="text" class="form-control" name="Duracion" id="Duracion" required="true" value="{{$tours->Duracion or ''}}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="lat">latitud</label>
                    <input type="text" class="form-control" name="lat" id="lat" value="{{$tours->lat or ''}}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="lng">Longitud</label>
                    <input type="text" class="form-control" name="lng" id="lng" value="{{$tours->lng or ''}}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="IdOperador">ID Operador</label>
                    <input type="text" class="form-control" name="IdOperador" id="IdOperador">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="IdDest">Destino</label>
                    <select name="IdDest" id="IdDest" class="form-control">
                        @foreach ($destinos as $destino)
                        <option value="{{$destino->id}}" {{($destino->id ==$tours->IdDest) ? ' selected="selected"' : '' }}>{{$destino->NombDest}}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="idCateg">Categoria</label>
                    <select name="idCateg" id="idCateg" class="form-control">
                        @foreach ($categorias as $categoria)
                        <option value="{{$categoria->id}}" {{($categoria->id ==$tours->idCateg) ? ' selected="selected"' : '' }}>{{$categoria->NombCateg}}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="row">

                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">Imagenes del Tour</div>
                        <div class="panel-body">
                            <table class="table">
                            @foreach($images as $image)
                            <tr>
                                <td>
                               <img src="{{url($image->UrlImg)}}" height="200px" style="margin: 10px;">
                               <input type="hidden" name="imagen" value="{{$image->id}}">
                                </td>
                                <td><a class="btn btn-default" onclick="eliminar_imagen({{$image->id}})">Eliminar</a></td>
                           </tr>
                            @endforeach
                            
                             </table>
                        </div></div>


                </div></div>

            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">Agregar Imagenes</div>
                        <div class="panel-body">

                            <span class="btn btn-success fileinput-button">
                                <i class="glyphicon glyphicon-plus"></i>
                                <span>Selecciona una Imagen...</span>
                                <!-- The file input field used as target for the file upload widget -->
                                <input id="fileupload" type="file" name="files[]" multiple>
                            </span>
                            <br>
                            <br>
                            <!-- The global progress bar -->
                            <div id="progress" class="progress">
                                <div class="progress-bar progress-bar-success"></div>
                            </div>
                            <!-- The container for the uploaded files -->
                            <div id="files" class="files"></div>
                            <br> 



                        </div>
                    </div>


                </div></div>
            <div class="col-md-12">

                <input type="submit" value="Guardar" class="btn btn-default btn-lg" id="btn-guardar">
            </div>

        </form>

    </div>

</div>

@endsection('content')