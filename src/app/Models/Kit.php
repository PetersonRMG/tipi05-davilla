<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\ItemKit;

class Kit extends Model
{
    // 
    protected $table = 'tbl_kits';
    
    protected $primaryKey = 'id_kit';

     public $timestamps = true;

    const CREATED_AT = 'criado_em_kit';
    const UPDATED_AT = 'atualizado_em_kit'; 

        
    protected $fillable = [
        'nome_kit',
        'descricao_kit',
        'foto_kit',
        'slug_kit',    
    ];


    public function itensKit()
    {
        return $this->hasMany(ItemKit::class, 'id_kit', 'id_kit');
    }


}
