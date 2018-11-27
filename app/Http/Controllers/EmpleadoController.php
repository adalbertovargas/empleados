<?php

namespace App\Http\Controllers;

use App\Empleado;
use App\Habilidade;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;
use App\Http\Requests\RecordEmpleado;

class EmpleadoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $empleados = Empleado::All();

        foreach ($empleados as $empleado){
            $empleado = $this->expandRelations($empleado);
        }

        return $empleados;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(RecordEmpleado $request)
    {

        $in = $request->input();

        $in["nacimiento"] = date_format(date_create_from_format('d/m/Y', $in["nacimiento"]), 'Y-m-d');

        // Validate habilidad
        $passed = false;    

        if(!isset($in["habilidades"])){
            abort(422, 'The given data was invalid.');
        }

        foreach ($in["habilidades"] as $habilidad){
            $passed = true; // There is at leas one habilidad
        }

        if($passed==false){
            abort(422, 'The given data was invalid.');
        } 

        // Update Empleado
        $input_to_create = $in;
        unset($input_to_create["habilidades"]);
        $empleado = Empleado::create($input_to_create);

        // Update Habilidades        
        $empleado->habilidades()->detach();
        
        foreach ($in["habilidades"] as $habilidad){

            $habilidadx = Habilidade::findOrfail($habilidad["habilidade_id"]);

            if( !($habilidad["calificacion"]>=1 && $habilidad["calificacion"]<=5) ){

                abort(422, 'La calificacion debe ser del 1 al 5');
            }

            $empleado->habilidades()->attach($habilidad["habilidade_id"], ['calificacion' => $habilidad["calificacion"]]);
        }

        $empleado = $this->expandRelations($empleado);

        return $empleado;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $empleado = Empleado::findOrFail($id);

        $empleado = $this->expandRelations($empleado);

        return $empleado;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(RecordEmpleado $request, $id)
    {

        $empleado = Empleado::findOrFail($id);
        $in = $request->input();

        $in["nacimiento"] = date_format(date_create_from_format('d/m/Y', $in["nacimiento"]), 'Y-m-d');

        // Validate habilidad
        $passed = false;    

        if(!isset($in["habilidades"])){
            abort(422, 'Debe ingresar al menos una habilidad.');
        }

        foreach ($in["habilidades"] as $habilidad){
            $passed = true; // There is at leas one habilidad
        }

        if($passed==false){
            abort(422, 'Debe ingresar al menos una habilidad.');
        } 

        // Update Empleado
        $input_to_update = $in;
        unset($input_to_update["habilidades"]);
        $empleado->update($input_to_update);

        // Update Habilidades        
        $empleado->habilidades()->detach();

        foreach ($in["habilidades"] as $habilidad){

            $habilidadx = Habilidade::findOrfail($habilidad["habilidade_id"]);

            if( !($habilidad["calificacion"]>=1 && $habilidad["calificacion"]<=5) ){
                abort(422, 'La calificacion debe ser del 1 al 5');
            }

            $empleado->habilidades()->attach($habilidad["habilidade_id"], ['calificacion' => $habilidad["calificacion"]]);
        }

        $empleado = $this->expandRelations($empleado);

        return $empleado;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $empleado = Empleado::findOrFail($id);
        $empleado->habilidades()->detach();
        $empleado->delete();
        return $empleado;
    }

    /**
     * Expand Relations of the specified resource.
     *
     * @param  obj  $empleado
     * @return obj  $empleado
     */
    public function expandRelations($empleado){

        if(isset($empleado->habilidades)){
            foreach($empleado->habilidades as $habilidad){}
        }
        
        return $empleado;
    }   
}
