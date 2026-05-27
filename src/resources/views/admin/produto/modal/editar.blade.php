<div class="modal fade" id="editar{{ $produto->id_produto }}" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Editar Produto</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="POST" action="{{ route('admin.produto.update', $produto->id_produto) }}"
                    enctype="multipart/form-data">
                    @csrf
                    @method('PUT')

                    <div class="card-body">
                        <div class="row">
                            <div class="mb-3 col-md-6">
                                <label for="nome_produto" class="form-label">Produto</label>
                                <input type="text" class="form-control" id="nome_produto" name="nome_produto"
                                    value="{{ $produto->nome_produto }}">
                                <div id="emailHelp" class="form-text">Informe nome da Produto.</div>
                            </div>
                            <div class="mb-3 col-md-6">
                                <label for="id_categoria" class="form-label">Selecione a Categoria</label>
                                <select class="form-select form-select" aria-label="Status" name="id_categoria"
                                    id="id_categoria" required>
                                   
                                    @foreach ($categorias as $item)
                                        <option value="{{ $item->id_categoria }}"
                                            {{ $produto->id_categoria == $item->id_categoria ? 'selected' : '' }}>

                                            {{ $item->nome_categoria }}

                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="mb-3 col-md-12">
                                <label for="descricao_produto" class="form-label">Descrição</label>
                                <textarea type="textarea" class="form-control" id="descricao_produto" name="descricao_produto" rows="5">{{ $produto->descricao_produto }}</textarea>
                                <div id="emailHelp" class="form-text">Informe a descrição da Produto.</div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="ordem_produto" class="form-label">Ordem</label>
                                <input class="form-control  form-control" name="ordem_produto" id="ordem_produto"
                                    type="number" value="{{ $produto->ordem_produto }}">
                                <div id="emailHelp" class="form-text">Informe a Ordem do Produto.</div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="tamanho_produto" class="form-label">Tamanho</label>

                                <select class="form-select" name="tamanho_produto" id="tamanho_produto" required>

                                    <option value="Pequeno"
                                        {{ $produto->tamanho_produto == 'Pequeno' ? 'selected' : '' }}>
                                        Pequeno
                                    </option>

                                    <option value="Médio"
                                        {{ $produto->tamanho_produto == 'Médio' ? 'selected' : '' }}>
                                        Médio
                                    </option>

                                    <option value="Grande"
                                        {{ $produto->tamanho_produto == 'Grande' ? 'selected' : '' }}>
                                        Grande
                                    </option>

                                </select>

                                <div id="emailHelp" class="form-text">
                                    Informe o Tamanho do Produto.
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="unid_med_produto" class="form-label">Unidade de Medida</label>
                                <select class="form-select form-select" aria-label="Status" name="unid_med_produto"
                                    id="unid_med_produto" required>
                                    <option value="UN" {{ $produto->unid_med_produto == 'UN' ? 'selected' : '' }}>
                                        Unidade</option>
                                    <option value="FT"{{ $produto->unid_med_produto == 'FT' ? 'selected' : '' }}>
                                        Fatia</option>
                                    <option value="CX" {{ $produto->unid_med_produto == 'CX' ? 'selected' : '' }}>
                                        Caixa</option>
                                    <option value="ML"{{ $produto->unid_med_produto == 'ML' ? 'selected' : '' }}>ML
                                    </option>
                                </select>
                                <div id="emailHelp" class="form-text">Informe o Status do Produto.</div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="valor_produto" class="form-label">Valor</label>
                                <div class="input-group mb-3">
                                    <span class="input-group-text">R$</span>
                                    <input type="text" class="form-control"
                                        aria-label="Amount (to the nearest dollar)" name="valor_produto"
                                        id="valor_produto" value="{{ $produto->valor_produto }}">
                                    <span class="input-group-text">.00</span>
                                </div>
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="destaque_produto" class="form-label">Destaque</label>
                                <select class="form-select form-select" aria-label="Status" id="destaque_produto"
                                    required name="destaque_produto">
                                    <option value="SIM"
                                        {{ $produto->destaque_produto == 'SIM' ? 'selected' : '' }}>Sim</option>
                                    <option value="NAO"
                                        {{ $produto->destaque_produto == 'NAO' ? 'selected' : '' }}>Não</option>
                                </select>
                                <div id="emailHelp" class="form-text">Informe o Status do Produto.</div>
                            </div>

                            <div class="col-md-6 mb-3   ">
                                <label for="status_produto" class="form-label">Status</label>
                                <select class="form-select form-select" aria-label="Status" required
                                    name="status_produto" id="status_produto">

                                    <option value="ATIVO"
                                        {{ $produto->status_produto == 'ATIVO' ? 'selected' : '' }}>Ativo</option>
                                    <option
                                        value="INATIVO"{{ $produto->status_produto == 'INATIVO' ? 'selected' : '' }}>
                                        Inativo</option>
                                </select>
                                <div id="emailHelp" class="form-text">Informe o Status do Produto.</div>
                            </div>

                            <div class="mb-3">
                                <label for="foto_produto" class="form-label">Foto Produto</label>

                                <input class="form-control  form-control-sm" id="foto_produto" name="foto_produto"  type="file" accept="image/png,image/jpeg,image/webp">

                                <div id="emailHelp" class="form-text">Escolha a foto do Produto.</div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary"
                                    data-bs-dismiss="modal">Fechar</button>
                                <button type="submit" class="btn btn-primary">Criar Produto</button>
                            </div>
                        </div>
                    </div>

                </form>
            </div>

        </div>
    </div>
</div>
