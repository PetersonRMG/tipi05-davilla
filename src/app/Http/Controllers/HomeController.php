<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categoria;
use App\Models\Produto;
use App\Models\Banner;
use App\Models\Kit;
use App\Models\ItensKit;

class HomeController extends Controller


{
    // Metodo HOME - Carrega a index 
    public function home(){

        $filtroCategoria = Categoria::where('status_categoria' , 'ATIVO')       
        ->inRandomOrder()        
        ->limit(4)
        ->get();
        
        // Buscar os produtos ativos da categoria
        $listaProduto = Produto::with('CategoriaProduto')
        ->where('status_produto', 'ATIVO')       
        ->limit(8)
        ->inRandomOrder()        
        ->get();
        
        $banner = Banner::where('status_banner', 'ATIVO')
        ->inRandomOrder()        
        ->get();

          
        $kits = Kit::with('itensKit.produto')
        ->inRandomOrder()
        ->get();

        $kits = Kit::with('itensKit.produto')
        ->inRandomOrder()
        ->get();

            foreach ($kits as $kit) {

                $total = 0;

            foreach ($kit->itensKit as $item) {

                $total += $item->produto->valor_produto;
            }

            // desconto de 10%
            $desconto = $total * 0.10;

            // valor final
            $valorFinal = $total - $desconto;

            // adiciona dinamicamente no objeto
            $kit->valor_total = $total;
            $kit->valor_desconto = $desconto;
            $kit->valor_final = $valorFinal;
            }

        //dd($kits);

        //dd($kits); 


        return view('site.home.home', compact('filtroCategoria','listaProduto','banner','kits'));
    }
    


}
