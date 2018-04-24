<?php

namespace siscal;

use Illuminate\Database\Eloquent\Model;

class ActividadCliente extends Model
{
    //hace referencia a la tabla categoria
    protected $table='actividadcliente';
    //el tributo que va ser llave primaria
    protected $primaryKey="idactividadcliente";
    public $timestamps=false;

    protected $fillable =[
    
    ];

    protected $guarded=[

    ];
}
