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
        $input = $request->input();

        $empleado = Empleado::create($input);

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

        $empleado->update($request->input());

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
        $empleado->delete();

        return [
            "message"    => "ok"
        ];
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
