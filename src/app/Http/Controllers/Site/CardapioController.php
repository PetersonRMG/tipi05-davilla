<?php

namespace App\Http\Controllers\Site;
use App\Http\Controllers\Controller; 
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
       $categoriaAtiva = 'all';

        return view('site.cardapio.cardapio', compact('filtroCategoria' , 'listaProduto', 'categoriaAtiva'));
        
    }

    public function show($id){
         $filtroCategoria = Categoria::where('status_categoria' , 'ATIVO')
        ->orderBy('ordem_categoria')
        ->get();

        // Buscar os produtos ativos da categoria
        $listaProduto = Produto::with('CategoriaProduto')
        ->where('status_produto', 'ATIVO')
        ->orderBy('ordem_produto')
        ->get();

        $categoriaAtiva= '.categoria-'. $id;
        //dd($categoriaAtiva);

         return view('site.cardapio.cardapio', compact('filtroCategoria' , 'listaProduto','categoriaAtiva'));
    }

    public function showProduto  ($slug){
        $produto = Produto::with('CategoriaProduto')
        ->where('status_produto','ATIVO')
        ->where('slug_produto', $slug)        
        ->firstOrFail();

        $listaRelacionados = Produto::with('CategoriaProduto')
        ->where('status_produto', 'ATIVO')
        ->where('id_categoria', $produto->id_categoria)            
        ->where('id_produto', '!=', $produto->id_produto)
        ->limit(5)
        ->orderBy('ordem_produto')
        ->get();

        $listaProduto = Produto::with('CategoriaProduto')
        ->where('status_produto', 'ATIVO')        
        ->orderBy('ordem_produto')
        ->get();

         $filtroCategoria = Categoria::where('status_categoria' , 'ATIVO')
        ->orderBy('ordem_categoria')
        ->get();

       //dd( $listaProduto);
        return view('site.produto.produto', compact('produto','listaProduto','listaRelacionados',  'filtroCategoria'));
    }
}
