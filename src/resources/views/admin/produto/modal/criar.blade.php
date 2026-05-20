<div class="modal fade" id="criar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Adicionar Produto</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Produto</label>
                        <input type="text" class="form-control" id="nome_categoria" aria-describedby="emailHelp">
                        <div id="emailHelp" class="form-text">Informe nome da Produto.</div>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Descrição</label>
                        <textarea type="textarea" class="form-control" id="descricao_categoria" rows="5"></textarea>
                        <div id="emailHelp" class="form-text">Informe a descrição da Produto.</div>
                    </div>

                    <div class="mb-3 row align-items-center">
                        <div class="col-12">
                            <label for="formFileSm" class="form-label">Ordem</label>
                            <input class="form-control  form-control" id="foto_categoria" type="text">
                            <div id="emailHelp" class="form-text">Informe a Ordem do Produto.</div>


                            <label for="formFileSm" class="form-label">Tamanho</label>
                            <select class="form-select form-select" aria-label="Status" required>
                                <option selected>Selecione Status</option>
                                <option value="1">Pequeno</option>
                                <option value="2">Médio</option>
                                <option value="3">Grande</option>
                            </select>
                            <div id="emailHelp" class="form-text">Informe o Status do Produto.</div>

                            <label for="formFileSm" class="form-label">Unidade de Medida</label>
                            <select class="form-select form-select" aria-label="Status" required>
                                <option selected>Selecione Undidade de Medida</option>
                                <option value="1">Unidade</option>
                                <option value="2">Fatia</option>
                                <option value="3">Caixa</option>
                                <option value="4">ML</option>
                            </select>
                            <div id="emailHelp" class="form-text">Informe o Status do Produto.</div>


                            <label for="formFileSm" class="form-label">Valor</label>
                            <div class="input-group mb-3">
                                <span class="input-group-text">R$</span>
                                <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
                                <span class="input-group-text">.00</span>
                            </div>
                        </div>


                        <div class="col-12">
                            <label for="formFileSm" class="form-label">Destaque</label>
                            <select class="form-select form-select" aria-label="Status" required>
                                <option selected>Selecione Destaque</option>
                                <option value="1">Ativo</option>
                                <option value="2">Desativo</option>
                            </select>
                            <div id="emailHelp" class="form-text">Informe o Status do Produto.</div>

                        </div>

                        <div class="col-12">
                            <label for="formFileSm" class="form-label">Destaque</label>
                            <select class="form-select form-select" aria-label="Status" required>
                                <option selected>Selecione Status</option>
                                <option value="1">Sim</option>
                                <option value="2">Não</option>
                            </select>
                            <div id="emailHelp" class="form-text">Informe o Status do Produto.</div>

                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="formFileSm" class="form-label">Foto Produto</label>
                        <input class="form-control  form-control-sm" id="foto_categoria" type="file">
                        <div id="emailHelp" class="form-text">Escolha a foto do Produto.</div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                <button type="button" class="btn btn-primary">Criar Produto</button>
            </div>
        </div>
    </div>
</div>
