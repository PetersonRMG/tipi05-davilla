<div class="modal fade" id="criar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content ">
            <div class="modal-header  ">
                <h1 class="modal-title fs-5 " id="exampleModalLabel">Adicionar Categoria</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                <form method="POST" action="{{ route('admin.categoria.store') }}">
                    {{-- O @csrf cria uma proteção para o form --}}
                    @csrf
                    <div class="mb-3">
                        <label for="nome_categoria" class="form-label">Categoria</label>
                        <input type="text" class="form-control" id="nome_categoria" aria-describedby="emailHelp"
                            name="nome_categoria" required>
                        <div id="emailHelp" class="form-text">Informe nome da Categoria.</div>
                    </div>
                    <div class="mb-3">
                        <label for="descricao_categoria" class="form-label">Descrição</label>
                        <textarea type="textarea" class="form-control" id="descricao_categoria" rows="3" required
                            name="descricao_categoria"></textarea>
                        <div id="emailHelp" class="form-text">Informe a descrição da Categoria.</div>
                    </div>

                    <div class="mb-3 row align-items-center">
                        <div class="col-6">
                            <label for="ordem_categoria " class="form-label">Ordem</label>
                            <input class="form-control  form-control" id="ordem_categoria" type="number"
                                name="ordem_categoria">
                            <div id="emailHelp" class="form-text">Informe a Ordem da Categoria.</div>
                        </div>


                        <div class="col-6">
                            <label for="status_categoria" class="form-label">Status</label>
                            <select class="form-select form-select" aria-label="Status" required name="status_categoria"
                                id="status_categoria">
                                <option selected>Selecione Status</option>
                                <option value="ATIVO">Ativo</option>
                                <option value="INATIVO">Inativo</option>
                            </select>
                            <div id="emailHelp" class="form-text">Informe o Status da categoria.</div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                        <button type="submit" class="btn btn-primary"  >Criar Categoria</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
