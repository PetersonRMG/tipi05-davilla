<?php
// SITE
use App\Http\Controllers\Site\HomeController;
use App\Http\Controllers\Site\SobreController;
use App\Http\Controllers\Site\CardapioController;
use App\Http\Controllers\Site\PedidosController;
use App\Http\Controllers\Site\RegiaoController;
use App\Http\Controllers\Site\ContatoController;



// ADMIN

use App\Http\Controllers\Admin\CategoriaController;
use App\Http\Controllers\Admin\ProdutoController;
use App\Http\Controllers\Admin\DashController;
use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\Admin\PerfilController;
   
use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class, 'home'])->name('home');
Route::get('/sobre', [SobreController::class, 'sobre'])->name('sobre');
Route::get('/cardapio', [CardapioController::class , 'cardapio'])->name('cardapio.index');

/*  get -> /cardapio é o que mostra o caminho , 2 cardapio é a chamada do método eo terceiro é para voce chamar no caminho da rota  */

/**Sub menu cardapio */
Route::get('/cardapio/categoria/{id}', [CardapioController::class , 'show'])->name('cardapio.categoria');

Route::get('/pedidos', [PedidosController::class , 'pedidos'])->name('pedidos');
Route::get('/regiao', [RegiaoController::class, 'regiao'])->name('regiao.index');

/*Submenu Produto*/
Route::get('/cardapio/produtos/{slug}',[CardapioController::class, 'showProduto'])->name('cardapio.produto');

/* Submenu Regiao */
Route::get('/regiao/area/{id}', [RegiaoController::class, 'show'])->name('regiao.area');

Route::get('/contato', [ContatoController::class, 'contato'])->name('contato');


//INICIO DO PREFIX ADMIN
Route::prefix('admin')->name('admin.')->group(function () {

    Route::get('/login', [AuthController::class,'login'])->name('login');
    Route::post('/login/autenticar', [AuthController::class,'autenticar'])->name('login.autenticar');
    Route::post('/logout', [AuthController::class,'logout'])->name('logout');

    //ROTAS PROTEGIDAS:

    Route::middleware('auth:admin')->group(function(){

        Route::get('/', [DashController::class,'index'])->name('dash');
    
        Route::get('/categoria', [CategoriaController::class,'index'])->name('categoria');
        Route::post('/categoria', [CategoriaController::class,'store'])->name('categoria.store');
        Route::patch('/categoria/{id}/ativar', [CategoriaController::class,'ativar'])->name('categoria.ativar');
        Route::patch('/categoria/{id}/desativar', [CategoriaController::class,'desativar'])->name('categoria.desativar');
        Route::put('/categoria/{id}/editar', [CategoriaController::class,'update'])->name('categoria.update');        
        
        
        
        Route::get('/produto', [ProdutoController::class,'index'])->name('produto');
        Route::post('/produto', [ProdutoController::class,'store'])->name('produto.store');
        Route::patch('/produto/{id}/ativar', [ProdutoController::class,'ativar'])->name('produto.ativar');
        Route::patch('/produto/{id}/desativar', [ProdutoController::class,'desativar'])->name('produto.desativar');
        Route::put('/produto/{id}/editar', [ProdutoController::class,'update'])->name('produto.update');

        Route::get('/perfil',[PerfilController::class,'index'])->name('perfil');
        Route::put('/perfil/{id}',[PerfilController::class,'update'])->name('perfil.update');
    });
});
     