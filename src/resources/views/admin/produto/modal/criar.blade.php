<div class="modal fade col-md-10" id="criar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Adicionar Produto</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <div class="modal-body ">
                <form method="POST" action="{{ route('admin.produto.store') }}" enctype="multipart/form-data">

                    <div class="card-body">
                        <div class="row">
                            @csrf
                            {{-- NOME PRODUTO --}}
                            <div class="mb-3 col-md-6">
                                <label for="nome_produto" class="form-label">Produto</label>
                                <input type="text" class="form-control" id="nome_produto" name="nome_produto">
                                <div id="emailHelp" class="form-text">Informe nome da Produto.</div>
                            </div>
                            {{-- CATEGORIA PRODUTO --}}
                            <div class="col-md-6 mb-3">
                                <label for="id_categoria" class="form-label">Selecione a Categoria</label>
                                <select class="form-select form-select col-md-6" aria-label="Status" name="id_categoria"
                                    id="id_categoria" required>
                                    <option selected>Selecione Categoria do Produto</option>
                                    @foreach ($categorias as $item)
                                        <option value="{{ $item->id_categoria }}">{{ $item->nome_categoria }}</option>
                                    @endforeach
                                </select>
                            </div>
                            {{-- DESCRICAO PRODUTO --}}
                            <div class="mb-3">
                                <label for="descricao_produto" class="form-label">Descrição</label>
                                <textarea type="textarea" class="form-control" id="descricao_produto" name="descricao_produto" rows="5"></textarea>
                                <div id="emailHelp" class="form-text">Informe a descrição da Produto.</div>
                            </div>
                            {{-- ORDEM PRODUTO --}}
                     
                                <div class="col-md-6 mb-3">

                                    <label for="ordem_produto" class="form-label">Ordem</label>
                                    <input class="form-control  form-control" name="ordem_produto" id="ordem_produto"
                                        type="number">
                                    <div id="emailHelp" class="form-text">Informe a Ordem do Produto.</div>
                                </div>

                                <div class="col-md-6 mb-3">

                                    {{-- TAMANHO PRODUTO --}}
                                    <label for="tamanho_produto" class="form-label">Tamanho</label>
                                    <select class="form-select form-select" aria-label="Status" name="tamanho_produto"
                                        id="tamanho_produto" required>
                                        <option selected>Selecione Status</option>
                                        <option value="Pequeno">Pequeno</option>
                                        <option value="Médio">Médio</option>
                                        <option value="Grande">Grande</option>
                                    </select>
                                    <div id="emailHelp" class="form-text">Informe o Tamanho do Produto.</div>
                                </div>


                                {{-- UNID  MED  --}}
                                <div class="col-md-6 mb-3">
                                    <label for="unid_med_produto" class="form-label">Unidade de Medida</label>
                                    <select class="form-select form-select" aria-label="Status" name="unid_med_produto"
                                        id="unid_med_produto" required>
                                        <option selected>Selecione Undidade de Medida</option>
                                        <option value="UN">Unidade</option>
                                        <option value="FT">Fatia</option>
                                        <option value="CX">Caixa</option>
                                        <option value="ML">ML</option>
                                    </select>
                                    <div id="emailHelp" class="form-text">Informe a Uni de Med do Produto.</div>
                                </div>
                                

                                {{-- VALOR PRODUTO --}}
                                <div class="col-md-6 mb-3">
                                    <label for="valor_produto" class="form-label">Valor</label>
                                    <div class="input-group mb-3 col-1">
                                        <span class="input-group-text">R$</span>
                                        <input type="text" class="form-control"
                                            aria-label="Amount (to the nearest dollar)" name="valor_produto"
                                            id="valor_produto">
                                        <span class="input-group-text">.00</span>
                                    </div>
                                </div>
                            
                            {{-- DESTAQUE --}}
                            <div class="col-md-6 mb-3">
                                <label for="destaque_produto" class="form-label">Destaque</label>
                                <select class="form-select form-select" aria-label="Status" id="destaque_produto"
                                    required name="destaque_produto">
                                    <option selected>Selecione Destaque</option>
                                    <option value="SIM">Sim</option>
                                    <option value="NAO">Não</option>
                                </select>
                                <div id="emailHelp" class="form-text">Informe o Status do Produto.</div>
                            </div>
                            {{-- STATUS --}}
                            <div class="col-md-6 mb-3">
                                <label for="status_produto" class="form-label">Status</label>
                                <select class="form-select form-select" aria-label="Status" required
                                    name="status_produto" id="status_produto">
                                    <option selected>Selecione Status</option>
                                    <option value="ATIVO">Ativo</option>
                                    <option value="INATIVO">Inativo</option>
                                </select>
                                <div id="emailHelp" class="form-text">Informe o Status do Produto.</div>
                            </div>
                        </div>
                        {{-- FOTO PRODUTO --}}
                        <div class="mb-3">
                            <label for="foto_produto" class="form-label">Foto Produto</label>
                            <input class="form-control  form-control-sm" id="foto_produto" name="foto_produto"
                                type="file" accept="image/png,image/jpeg,image/webp">
                            <div id="emailHelp" class="form-text">Escolha a foto do Produto.</div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                            <button type="submit" class="btn btn-primary">Criar Produto</button>
                        </div>
                    </div>
            </div>
            </form>
        </div>
    </div>
</div>
</div>
