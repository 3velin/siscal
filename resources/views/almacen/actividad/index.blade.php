@extends ('layouts.admin')
@section ('contenido')
<div class="maincenter">
	<form  action="{{URL::asset('almacen/actividad')}}" method="post" >
		{{ csrf_field() }}
	<div class="mdl-textfield__expandable-holder">
          <input type="text" id="searchText" name="searchText" placeholder="Valor a buscar" >
    </div>
	<table class="buscarEnTabla mdl-data-table mdl-js-data-table">
	  <thead>
	    <tr>
	      <th>
	      	<a href="{{URL::asset('almacen/actividad/create')}}"> <div class="mdl-tooltip" for="btnNew">Nuevo</div></a>
          </th>
	      <th class="mdl-data-table__cell--non-numeric">NOMBRE</th>
	      <th class="mdl-data-table__cell--non-numeric">PERIODO ACTIVIDAD</th>
	      <th class="mdl-data-table__cell--non-numeric">UBICACION</th>
	      <th class="mdl-data-table__cell--non-numeric">ESTADO</th>
	      <th class="mdl-data-table__cell--non-numeric">FECHA DE REGISTRO</th>
	    </tr>
	  </thead>
	  <tbody>
	   @foreach ($actividades as $item)
	   	<tr>
	   	  <td>
	   	  
	   	  </td>
	      <td class="mdl-data-table__cell--non-numeric">{{$item->nombre}}</td>
	      <td class="mdl-data-table__cell--non-numeric">{{$item->periodoactividad}}</td>
	      <td class="mdl-data-table__cell--non-numeric">{{$item->ubicacion }}</td>
	      <td class="mdl-data-table__cell--non-numeric">{{$item->estado}}</td>
	      <td class="mdl-data-table__cell--non-numeric">{{$item->fecharegistro}}</td>
	    </tr>
	   @endforeach
	  </tbody>
	</table>
	</form>
 </div>
@stop