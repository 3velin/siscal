<?php

namespace siscal;

use Illuminate\Database\Eloquent\Model;

class Empleado extends Model{
	
	 protected $table = 'empleado';
	 protected $primaryKey="idempleado";
	 public $timestamps = false;
	 protected $fillable = [
        'idempleado','idtipodocumento', 'nombre',
    ];

	public function tipoempleado()
    {
        return $this->belongsTo('App\Tipoempleado');
    }

}
