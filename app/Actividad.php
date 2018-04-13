<?php

namespace siscal;

use Illuminate\Database\Eloquent\Model;

class Actividad extends Model
{
    //hace referencia a la tabla categoria
    protected $table='actividad';
    //el tributo que va ser llave primaria
    protected $primaryKey="idactividad";
    public $timestamps=false;

    protected $fillable =[
    	'nombre','periodoactividad','fecharegistro','estado','ubicacion',
    	'asistenteaproximado'	
    ];
    protected $guarded=[

    ];
}
