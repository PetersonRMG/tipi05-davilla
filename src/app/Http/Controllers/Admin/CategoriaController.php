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
}
