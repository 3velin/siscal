@extends ('layouts.admin')
@section ('contenido')
	<table class="table" >
	  <thead>
	    <tr>
	      <th class="col-xs-1">
						<a class="btn btn-primary btn-xs" href="{{action('TipoActividadController@create')}}" >
							<span class="fa fa-plus"></span>
						</a>
        </th>
	      <th>NOMBRE</th>
	      <th>ESTADO</th>
	    </tr>
	  </thead>
	  <tbody>
	   @foreach ($tipoactividades as $item)
	   	<tr>
	   	  <td>
	   	  </td>
	      <td>{{$item->nombre}}</td>
	      <td> @if($item->estado) {{'Activo'}} @endif </td>
				<td>
						<div class="row">
								<div class="col-xs-1">
									<a class="btn btn-primary btn-xs" href="{{action('TipoActividadController@edit', $item->idtipoactividad)}}" ><span class="fa fa-pencil"></span></a>
								</div>
								<div class="col-xs-1">
									<form action="{{action('TipoActividadController@destroy', $item->idtipoactividad)}}" method="post">
											{{csrf_field()}}
												<input name="_method" type="hidden" value="DELETE">
												<button class="btn btn-danger btn-xs" type="submit">
													<span class="fa fa-trash"></span>
												</button>
									</form>
								</div>
						</div>
				</td>
	    </tr>
	   @endforeach
	  </tbody>
	</table>
@stop