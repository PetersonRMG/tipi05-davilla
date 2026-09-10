<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('tbl_categorias', function (Blueprint $table) {
            $table->charset = 'utf8mb4';
            $table->collation = 'utf8mb4_general_ci';

            $table->integer('id_categoria', true);

            $table->string('nome_categoria', 30);

            $table->text('descricao_categoria');

            $table->string('status_categoria', 10)
                ->default('ATIVO');

            $table->integer('ordem_categoria')
                ->default(0);

            $table->dateTime('criado_em_categoria')
                ->useCurrent();

            $table->dateTime('atualizado_em_categoria')
                ->useCurrent()
                ->useCurrentOnUpdate();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('tbl_categorias');
    }
};