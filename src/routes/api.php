<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api\V1\StatusController;
use App\Http\Controllers\Api\V1\BannerController;
use App\Http\Controllers\Api\V1\CategoriaController;
use App\Http\Controllers\Api\V1\ProdutoController;


Route::prefix('v1')->group(function () {

    Route::get('/status', [StatusController::class, 'index']);
    
    Route::get('/banners', [BannerController::class, 'index']);

    Route::get('/categorias', [CategoriaController::class, 'index']);
    Route::get('/categorias{id}/produtos', [CategoriaController::class, 'produtos']);

    Route::get('/produtos', [ProdutoController::class, 'index']);
    Route::get('/produtos/{slug}', [ProdutoController::class, 'show']);
});