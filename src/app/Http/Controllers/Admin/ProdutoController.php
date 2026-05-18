<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Categoria;
use App\Models\Produto;
use Illuminate\Http\Request;

class ProdutoController extends Controller
{
    //
        public function index(){
        // Buscar Categoria para montar a lista de filtro
        $filtroCategoria = Categoria::where('status_categoria' , 'ATIVO')
        ->orderBy('ordem_categoria')
        ->get();

        // Buscar os produtos ativos da categoria
        $listaProduto = Produto::with('CategoriaProduto')
        ->where('status_produto', 'ATIVO')
        ->orderBy('ordem_produto')
        ->get();

       //dd($listaProduto);
       $categoriaAtiva = 'all';

        return view('admin.produto.index', compact('filtroCategoria' , 'listaProduto', 'categoriaAtiva'));
        
    }
}
