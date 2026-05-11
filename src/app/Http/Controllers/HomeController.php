<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categoria;
use App\Models\Produto;
use App\Models\Banner;

class HomeController extends Controller


{
    // Metodo HOME - Carrega a index 
    public function home(){

        $filtroCategoria = Categoria::where('status_categoria' , 'ATIVO')
        ->orderBy('ordem_categoria')
        ->get();
        
        // Buscar os produtos ativos da categoria
        $listaProduto = Produto::with('CategoriaProduto')
        ->where('status_produto', 'ATIVO')
        ->orderBy('ordem_produto')
        ->get();

        $banner = Banner::where('status_banner', 'ATIVO')
        ->orderBy('ordem_banner')
        ->get();

        //dd($banner);


        return view('site.home.home', compact('filtroCategoria','listaProduto','banner'));
    }
    


}
