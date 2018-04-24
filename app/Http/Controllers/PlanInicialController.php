<?php

namespace siscal\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use siscal\PlanInicial;

class PlanInicialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('planinicial.index', ['planiniciales' =>PlanInicial::where('estado', 1)->get()]);  
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('planinicial.create');  
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
        PlanInicial::create($request->all());
        return redirect()->route('planinicial.index')->with('success','Registro creado satisfactoriamente');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $planiniciales=PlanInicial::find($id);
        return  view('planinicial.show', compact('planiniciales'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $planinicial=PlanInicial::find($id);
        return view('planinicial.edit', compact('planinicial'));
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
        PlanInicial::find($id)->update($request->all());
        return redirect()->route('planinicial.index')->with('success','Registro actualizado satisfactoriamente');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        PlanInicial::find($id)->delete();
        return redirect()->route('planinicial.index')->with('success','Registro eliminado satisfactoriamente');
    }
}
