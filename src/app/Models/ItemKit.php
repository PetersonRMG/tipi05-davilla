<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Kit;
use App\Models\Produto;

class ItemKit extends Model
{
    protected $table = 'tbl_itens_kit';

    protected $primaryKey = 'id_item_kit';

    public $timestamps = true;

    const CREATED_AT = 'criado_em_item_kit';
    const UPDATED_AT = 'atualizado_em_item_kit';

    protected $fillable = [
        'id_kit',
        'id_produto',
        'status_item_kit'
    ];

    public function kit()
    {
        return $this->belongsTo(Kit::class, 'id_kit', 'id_kit');
    }

    public function produto()
    {
        return $this->belongsTo(Produto::class, 'id_produto', 'id_produto');
    }
}