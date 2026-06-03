<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    //
    public function login(){
        return view('admin.auth.login');
    }

    public function autenticar(Request $request){
        $request->validate([
            'email_usuario' => 'required|email',
            'senha_usuario' => 'required',

        ]);

        $credenciais = [
            'email_usuario' => $request-> email_usuario,
            'password' => $request-> senha_usuario,
            'status_usuario' => 'Ativo',
        ];

        //dd($user);

        if(Auth::guard('admin')->attempt($credenciais)){
            $request -> session() -> regenerate();
            return redirect('admin');
        };


        return back()-> withInput()->with('errors','Email ou Senha Inválida');
    }

    public function logout(Request $request){
        Auth::guard('admin')->logout();

        $request->session()->invalidate();
        $request->session()->regenerate();

        return redirect()->route('admin.login');

    }

}
