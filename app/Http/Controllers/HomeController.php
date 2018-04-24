<?php

namespace siscal\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
   
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $userName= 'cristian.villegas';
        return view('home', [ 'userName' => $userName]);
    }
}
