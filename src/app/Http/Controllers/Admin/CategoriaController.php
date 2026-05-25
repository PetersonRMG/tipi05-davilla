<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Categoria;
use Illuminate\Http\Request;

class CategoriaController extends Controller
{
    //
    public function index(){
        $categoria = Categoria::orderBy('ordem_categoria')
        ->get();
        return view('admin.categoria.index', compact('categoria'));
    }

    public function store(Request $request){
       // dd($request);
        $request->validate([
            'nome_categoria'     => 'required|string|max:30',
            'descricao_categoria'=> 'required|string|max:300',
            'ordem_categoria'    => 'required|integer|max:20',
            'status_categoria'   => 'required|in:ATIVO,INATIVO',
        ]);  

        Categoria::create([
            'nome_categoria'=> $request->nome_categoria,
            'descricao_categoria'=> $request->descricao_categoria,
            'ordem_categoria'=> $request->ordem_categoria,
            'status_categoria'=> $request->status_categoria,
        ]);

        return redirect()
        ->route('admin.categoria')
        ->with('success','Categoria cadastrada com sucesso!');
        
        
    }

    public function desativar($id){
        $categoria = Categoria::findOrFail($id);
        //dd($categoria);

        $categoria->update([
            'status_categoria' => 'INATIVO',

        ]);

        return redirect()
        ->route('admin.categoria')
        ->with('success','Categoria desativada com sucesso!');
    }

    public function ativar($id){
        $categoria = Categoria::findOrFail($id);
        //dd($categoria);

        $categoria->update([
            'status_categoria' => 'ATIVO',

        ]);

        return redirect()
        ->route('admin.categoria')
        ->with('success','Categoria ativada com sucesso!');
    }

    public function update(Request $request, $id){

         // dd($request);
        $request->validate([
            'nome_categoria'     => 'required|string|max:30',
            'descricao_categoria'=> 'required|string|max:300',
            'ordem_categoria'    => 'required|integer|max:20',
            'status_categoria'   => 'required|in:ATIVO,INATIVO',
        ]);  

        $categoria = Categoria::findOrFail($id);
        //dd($categoria);

        $categoria->update([
            'nome_categoria'=> $request->nome_categoria,
            'descricao_categoria'=> $request->descricao_categoria,
            'ordem_categoria'=> $request->ordem_categoria,
            'status_categoria'=> $request->status_categoria,
        ]);
       

        return redirect()
        ->route('admin.categoria')
        ->with('success','Categoria editada com sucesso!');
         
    }


}
