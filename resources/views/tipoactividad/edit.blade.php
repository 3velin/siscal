@extends('layouts.admin')
@section('contenido')
<div class="row">
	<section class="content">
		<div class="col-md-8 col-md-offset-2">
			@if (count($errors) > 0)
			<div class="alert alert-danger">
				<strong>Error!</strong> Revise los campos obligatorios.<br><br>
				<ul>
					@foreach ($errors->all() as $error)
					<li>{{ $error }}</li>
					@endforeach
				</ul>
			</div>
			@endif
			@if(Session::has('success'))
			<div class="alert alert-info">
				{{Session::get('success')}}
			</div>
			@endif
 
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Editar Tipo Actividad</h3>
				</div>
				<div class="panel-body">					
					<div class="table-container">
						<form method="POST" action="{{ route('tipoactividad.update',$tipoactividad->idtipoactividad) }}"  role="form">
							{{ csrf_field() }}
							<input name="_method" type="hidden" value="PATCH">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="form-group">
										<input type="text" name="nombre" id="nombre" class="form-control" value="{{$tipoactividad->nombre}}">
									</div>
								</div>
								
							</div>
							<div class="row">
								<div class="col-xs-3 col-sm-3 col-md-3">
									<input type="submit"  value="Actualizar" class="btn btn-success btn-block">
								</div>	
                                <div class="col-xs-3 col-sm-3 col-md-3">
									<a href="{{ route('tipoactividad.index') }}" class="btn btn-info btn-block" >Atrás</a>
								</div>	
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
@stop