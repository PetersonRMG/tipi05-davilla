<div class="modal fade" id="criar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Adicionar Produddddddddddddto</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="POST" action="{{ route('admin.produto.store') }}"  enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                        <label for="nome_produto" class="form-label">Produto</label>
                        <input type="text" class="form-control" id="nome_produto" aria-describedby="emailHelp">
                        <div id="emailHelp" class="form-text">Informe nome da Produto.</div>
                    </div>
                    <label for="id_categoria" class="form-label">Selecione a Categoria</label>
                    <select class="form-select form-select" aria-label="Status" name="nome_categoria"
                    id="id_categoria" required>
                    <option selected>Selecione Categoria do Produto</option>
                    @foreach ($categorias as $item)
                            <option value="{{$item->nome_categoria}}">{{$item->nome_categoria}}</option>
                            @endforeach
                        </select>
                    <div class="mb-3">
                        <label for="descricao_produto" class="form-label">Descrição</label>
                        <textarea type="textarea" class="form-control" id="descricao_produto" rows="5"></textarea>
                        <div id="emailHelp" class="form-text">Informe a descrição da Produto.</div>
                    </div>

                    <div class="mb-3 row align-items-center">
                        <div class="col-12">
                            <label for="ordem_produto" class="form-label">Ordem</label>
                            <input class="form-control  form-control" id="ordem_produto" type="text">
                            <div id="emailHelp" class="form-text">Informe a Ordem do Produto.</div>


                            <label for="tamanho_produto" class="form-label">Tamanho</label>
                            <select class="form-select form-select" aria-label="Status" name="tamanho_produto"
                                id="tamanho_produto" required>
                                <option selected>Selecione Status</option>
                                <option value="Pequeno">Pequeno</option>
                                <option value="Médio">Médio</option>
                                <option value="Grande">Grande</option>
                            </select>
                            <div id="emailHelp" class="form-text">Informe o Tamanho do Produto.</div>

                            <label for="unid_med_produto" class="form-label">Unidade de Medida</label>
                            <select class="form-select form-select" aria-label="Status" name="unid_med_produto"
                                id="unid_med_produto" required>
                                <option selected>Selecione Undidade de Medida</option>
                                <option value="UN">Unidade</option>
                                <option value="FT">Fatia</option>
                                <option value="CX">Caixa</option>
                                <option value="ML">ML</option>
                            </select>
                            <div id="emailHelp" class="form-text">Informe o Status do Produto.</div>


                            <label for="valor_produto" class="form-label">Valor</label>
                            <div class="input-group mb-3">
                                <span class="input-group-text">R$</span>
                                <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)"
                                    name="valor_produto" id="valor_produto">
                                <span class="input-group-text">.00</span>
                            </div>
                        </div>


                        <div class="col-12">
                            <label for="destaque_produto" class="form-label">Destaque</label>
                            <select class="form-select form-select" aria-label="Status" id="destaque_produto" required
                                name="destaque_produto">
                                <option selected>Selecione Destaque</option>
                                <option value="SIM">Sim</option>
                                <option value="NAO">Não</option>
                            </select>
                            <div id="emailHelp" class="form-text">Informe o Status do Produto.</div>

                        </div>

                        <div class="col-12">
                            <label for="status_produto" class="form-label">Status</label>
                            <select class="form-select form-select" aria-label="Status" required name="status_produto"
                                id="status_produto">
                                <option selected>Selecione Status</option>
                                <option value="ATIVO">Ativo</option>
                                <option value="INATIVO">Inativo</option>
                            </select>
                            <div id="emailHelp" class="form-text">Informe o Status do Produto.</div>

                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="foto_produto" class="form-label">Foto Produto</label>
                        <input class="form-control  form-control-sm" id="foto_produto" name="foto_produto"
                            type="file"  accept="image/png,image/jpeg,image/webp">
                        <div id="emailHelp" class="form-text">Escolha a foto do Produto.</div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                        <button type="submit" class="btn btn-primary">Criar Produto</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
