<?php

namespace App\Http\Controllers;
use App\Models\Categoria;
use App\Models\Produto;

use Illuminate\Http\Request;

class CardapioController extends Controller
{
    //
    public function cardapio(){
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

        return view('site.cardapio.cardapio', compact('filtroCategoria' , 'listaProduto'));
    }
}
