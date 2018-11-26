<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Habilidade extends Model
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
		'nombre' 								=> 'required|string|max:255'
	];    
}
