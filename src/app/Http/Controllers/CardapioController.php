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

    public function showProduto  ($slug){
        $produto = Produto::with('CategoriaProduto')
        ->where('status_produto','ATIVO')
        ->where('slug_produto', $slug)        
        ->firstOrFail();

        $listaRelacionados = Produto::with('CategoriaProduto')
        ->where('status_produto', 'ATIVO')
        ->where('id_categoria', $produto->id_categoria)
        ->orderBy('nome_produto')
        ->get();

        $listaProduto = Produto::with('CategoriaProduto')
        ->where('status_produto', 'ATIVO')        
        ->orderBy('nome_produto')
        ->get();



       //dd($categoria);
        return view('site.produto.produto', compact('produto','listaProduto','listaRelacionados'));
    }
}
