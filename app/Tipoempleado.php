<?php

namespace siscal;

use Illuminate\Database\Eloquent\Model;

class Tipoempleado extends Model{
	
	 protected $table = 'tipoempleado';
	 protected $primaryKey="idtipoempleado";
	 public $timestamps = false;
	 protected $fillable = [
        'idtipodocumento', 'codigo', 'nombre',
    ];

}
