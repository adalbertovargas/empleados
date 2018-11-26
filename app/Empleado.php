<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Empleado extends Model
{

	/**
	 * The attributes that are not mass assignable.
	 *
	 * @var array
	 */
	protected $guarded =[];
	
	/**
	 * The validation rules.
	 *
	 * @var array
	 */
	public static $rules = [
		'nombre' 								=> 'required|string|max:255',
		'email' 								=> 'required|string|max:255',
		'puesto' 								=> 'required|string|max:255',
		'nacimiento' 							=> 'required|string|max:255',
		'domicilio' 							=> 'required|string|max:255',
	];

	/**
	 * Get the fuente that owns the obras.
	 */
	public function habilidade()
	{
		return $this->belongsToMany('App\habilidade');
	}	
    
}
