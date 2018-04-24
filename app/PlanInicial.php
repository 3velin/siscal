<?php

namespace siscal;

use Illuminate\Database\Eloquent\Model;

class PlanInicial extends Model
{
    
    protected $table='planinicial';
    protected $primaryKey="idplaninicial";
    public $incrementing =true;
    public $timestamps=false;

    protected $fillable =[
    'nombre', 'estado'
    ];

    protected $guarded=[

    ];
}
