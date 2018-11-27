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
		'email' 								=> 'email|string|max:255',
		'puesto' 								=> 'required|string|max:255',
		'nacimiento' 							=> 'date_format:d/m/Y',
		'domicilio' 							=> 'required|string|max:255',
	];

	/**
	 * Get the fuente that owns the obras.
	 */
	public function habilidades()
	{
		return $this->belongsToMany('App\Habilidade')->withPivot('calificacion');
	}	
    
}
