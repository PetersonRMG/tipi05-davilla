<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    // Metodo HOME - Carrega a index 
    public function home(){
        return view('site.home.home');
    }


}
