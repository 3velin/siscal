<?php

namespace siscal\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use siscal\TipoActividad;

class TipoActividadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('tipoactividad/index', ['tipoactividades' =>TipoActividad::where('estado', 1)->get()]);  
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('tipoactividad/create');  
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [ 'nombre'=>'required']);
        TipoActividad::create($request->all());
        return redirect()->route('tipoactividad.index')->with('success','Registro creado satisfactoriamente');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $tipoactividades=TipoActividad::find($id);
        return  view('tipoactvidad.show', compact('tipoactividades'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $tipoactividad=TipoActividad::find($id);
        return view('tipoactividad.edit',compact('tipoactividad'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[ 'nombre'=>'required']);
        TipoActividad::find($id)->update($request->all());
        return redirect()->route('tipoactividad.index')->with('success','Registro actualizado satisfactoriamente');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        TipoActividad::find($id)->delete();
        return redirect()->route('tipoactividad.index')->with('success','Registro eliminado satisfactoriamente');
    }
}
