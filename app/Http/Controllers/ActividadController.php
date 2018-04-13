<?php

namespace siscal\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use siscal\Http\Requests;
use siscal\Actividad;
use Illuminate\Support\Facades\Redirect;
use siscal\Http\Requests\ActividadFormRequest;
use DB;


class ActividadController extends BaseController
{
    public function __construct()
    {

    }
    
    public function index(Request $request)
    {
        if ($request)
        {
            $query=trim($request->get('searchText'));
            $actividades=DB::table('actividad')->where('nombre','LIKE','%'.$query.'%')
            ->where ('periodoactividad','=','1')
            ->orderBy('idactividad','desc')
            ->paginate(7);
            return view('almacen.actividad.index',["actividades"=>$actividades,"searchText"=>$query]);
        }
        return view('almacen.actividad.index');
    }

    public function create()
    {
        return view("almacen.actividad.create");
    }

    public function store (ActividadFormRequest $request)
    {
        $actividad=new Acticidad;
        $actividad->nombre=$request->get('nombre');
        $actividad->periodoactividad=$request->get('periodoactividad');
        $actividad->condicion='1';
        $actividad->save();
        return Redirect::to('almacen/actividad');

    }
    public function show($id)
    {
        return view("almacen.actividad.show",["actividad"=>Actividad::findOrFail($id)]);
    }
    public function edit($id)
    {
        return view("almacen.actividad.edit",["actividad"=>Actividad::findOrFail($id)]);
    }
    public function update(ActividadFormRequest $request,$id)
    {
        $actividad=Actividad::findOrFail($id);
        $actividad->nombre=$request->get('nombre');
        $actividad->periodoactividad=$request->get('periodoactividad');
        $actividad->update();
        return Redirect::to('almacen/actividad');
    }
    public function destroy($id)
    {
        $actividad=Actividad::findOrFail($id);
        $actividad->condicion='0';
        $actividad->update();
        return Redirect::to('almacen/actividad');
    }

}
