<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Categoria;
use App\Models\Produto;
use Illuminate\Http\Request;
use Illuminate\Support\Str;


class ProdutoController extends Controller
{
    
    public function index(){




        $produtos = Produto::orderBy('ordem_produto')->get();
        
        $categorias = Categoria::where('status_categoria', 'ATIVO')
            ->orderBy('nome_categoria')
            ->get();

        //dd($produtos);

        return view('admin.produto.index', compact('produtos', 'categorias'));
        
    }

    public function store(Request $request){
        $request->validate([
            'nome_produto'     => 'required|string|max:30',
            'id_categoria' =>'required|exists:tbl_categorias,id_categoria',
            'descricao_produto'=> 'required|string',
            'tamanho_produto'=> 'required|string|max:10',   
            'unid_med_produto'=>'required|string|max:2',
            'valor_produto'=> 'required|numeric|min:0',
            'foto_produto'=>'required|image|mimes:jpg,jpeg,png,webp|max:2048', 
            'status_produto'   => 'required|in:ATIVO,INATIVO',
            'destaque_produto'=> 'required|in:SIM,NAO',            
            'ordem_produto'    => 'required|integer',
        ]);  
        
        $fotoProduto = $request->file('foto_produto');
        $slugProduto = Str::slug($request->nome_produto);
        $nomeFoto = $slugProduto . '.' .$fotoProduto->getClientOriginalExtension();
        $fotoProduto->move(public_path('davilla/images/produto/'), $nomeFoto);
        $caminhoFoto = 'produto/'. $nomeFoto;
        
        Produto::create([
            'nome_produto'=> $request->nome_produto,
            'slug_produto' => $slugProduto,
            'id_categoria' => $request->id_categoria,
            'descricao_produto'=> $request->descricao_produto,
            'tamanho_produto'=> $request->tamanho_produto,
            'unid_med_produto'=> $request->unid_med_produto,
            'valor_produto'=> $request->valor_produto,
            'foto_produto'=>  $caminhoFoto,
            'status_produto'=> $request->status_produto,
            'destaque_produto'=> $request->destaque_produto,
            'ordem_produto'=> $request->ordem_produto,
        ]);
        dd($request);
        
        return redirect()
        ->route('admin.produto')
        ->with('success','Produto cadastradO com sucesso!');
        
        
    }

    public function desativar($id){
        $produto = Produto::findOrFail($id);
        //dd($produto);

        $produto->update([
            'status_produto' => 'INATIVO',

        ]);

        return redirect()
        ->route('admin.produto')
        ->with('success','Produto desativada com sucesso!');
    }

    public function ativar($id){
        $produto = Produto::findOrFail($id);
        //dd($produto);

        $produto->update([
            'status_produto' => 'ATIVO',

        ]);

        return redirect()
        ->route('admin.produto')
        ->with('success','Produto ativada com sucesso!');
    }

    public function update(Request $request, $id){

         // dd($request);
        $request->validate([
            'nome_produto'     => 'required|string|max:30',
            'descricao_produto'=> 'required|string|max:300',
            'ordem_produto'    => 'required|integer|max:20',
            'status_produto'   => 'required|in:ATIVO,INATIVO',
        ]);  

        $produto = Produto::findOrFail($id);
        //dd($produto);

        $produto->update([
            'nome_produto'=> $request->nome_produto,
            'descricao_produto'=> $request->descricao_produto,
            'ordem_produto'=> $request->ordem_produto,

        ]);
       

        return redirect()
        ->route('admin.produto')
        ->with('success','Produto editada com sucesso!');
         
    }
}
