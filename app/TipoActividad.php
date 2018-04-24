<?php

namespace siscal;

use Illuminate\Database\Eloquent\Model;

class TipoActividad extends Model
{
    
    protected $table='tipoactividad';
    protected $primaryKey="idtipoactividad";
    public $incrementing =true;
    public $timestamps=false;

    protected $fillable =[
    'nombre', 'estado'
    ];

    protected $guarded=[

    ];
}
