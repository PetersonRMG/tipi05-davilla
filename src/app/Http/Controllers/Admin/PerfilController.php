<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PerfilController extends Controller
{
    //
    public function index(){
        $user = Auth::user();

        //dd($user);

        return view("admin.perfil.index",compact("user"));
    }
    
    public function update(Request $request, $id)
    {   
        //dd($request);
        $request->validate([
            'nome_usuario'       => 'required|string|max:200',
            'email_usuario' => 'required|string',
            'perfil_usuario'   => 'required|in:Administrador,Gerente,Atendente,Confeiteiro,Caixa',
            'foto_usuario'      => 'nullable|image|mimes:jpg,jpeg,png,webp|max:2048',
            'status_usuario'    => 'required|in:Ativo,Inativo',
            
        ]);
        
        $user = Auth::user($id);
        

       

        // mantém a foto antiga
        $caminhoFoto = $user->foto_usuario;

        // se enviou nova foto
        if ($request->hasFile('foto_usuario')) {

            $imagem = $request->file('foto_usuario');

            $nomeImagem = time() . '.' . $imagem->getClientOriginalExtension();

            $imagem->move(
                public_path('dash/assets/img/user'),
                $nomeImagem
            );

            $caminhoFoto = 'user/' . $nomeImagem;
        }

        $user->update([
            'nome_usuario'       => $request->nome_usuario,
            'email_usuario' => $request->email_usuario,
            'perfil_usuario'   => $request->perfil_usuario,
            'foto_usuario'      => $caminhoFoto ,
            'status_usuario'    => $request->status_usuario,

        ]);


        return redirect()
            ->route('admin.perfil')
            ->with('success', 'Perfil editado com sucesso!');
    }
}
