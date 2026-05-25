@extends('layout.admin')

@section('title', 'Produto | Confeitaria Dashboard')
@section('pg-titulo', 'Produto')
@section('link-topo', 'Produto')
@section('content')

    <!--begin::App Content-->
    <div class="app-content ">
        <!--begin::Container-->
        @if (session('success'))

            <div class="alert alert-success alert-dismissible fade show" role="alert">
                 {{ session('success') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif

        @if ($errors->any())
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>ATENÇÃO</strong> verifique os campos do formulario !
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
        <div class="container-fluid">
            <!--begin::Row-->
            <div class="row">
                <div class="col-md-12">
                    <div class=" card">
                        <div class="card-header   ">

                            <h3 class="card-title">Gerenciamento de Produtos</h3>

                            <div class=" card-tools ">
                                <button type="button" class="card-tools btn btn-success " data-bs-toggle="modal"
                                    data-bs-target="#criar"><i class="bi bi-plus-circle"></i> Novo Produto</button>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th style="width: 10px">Foto</th>
                                        <th>Nome e Descrição</th>
                                        <th>Tamanho</th>
                                        <th>Unid. Medida</th>
                                        <th>Valor</th>
                                        <th>Destaque</th>
                                        <th style="width: 40px">Status</th>
                                        <th style="width: 40px">Edição</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse ($produtos as $item)
                                        <tr class="align-middle">
                                            <td class="light-box" style="width: 150px"><a data-lightbox="galeria"
                                                    href="light-box"><img style="width: 150px"
                                                        src="{{ asset('davilla/images/' . $item->foto_produto) }}"
                                                        alt=""></a></td>
                                            <td>{{ $item->nome_produto }}
                                                <div>{{ $item->descricao_produto }}</div>
                                            </td>
                                            {{--
                                        <td>
                                             <div class="progress progress-xs">
                                                <div class="progress-bar progress-bar-danger" style="width: 55%">
                                                    
                                                </div>

                                            </div> 
                                        </td>
                                            --}}
                                            <td>
                                                {{ $item->tamanho_produto }}
                                            </td>
                                            <td>
                                                {{ $item->unid_med_produto }}
                                            </td>
                                            <td>
                                                R$ {{ number_format($item->valor_produto, 2, '.', ',') }}
                                            </td>

                                            <td>
                                                {{-- <span class="badge text-bg-danger"></span> --}}
                                                @if ($item->destaque_produto === 'SIM')
                                                    <span class="badge text-bg-success text-uppercase">SIM</span>
                                                @else
                                                    <span class="badge text-bg-danger text-uppercase">NÃO</span>
                                                @endif
                                            </td>


                                            <td>
                                                {{-- BTN ATIVAR E DESATIVAR --}}
                                                @if ($item->status_produto === 'ATIVO')
                                                    <span class="badge text-bg-success text-uppercase">Ativo</span>
                                                @else
                                                    <span class="badge text-bg-danger text-uppercase">Inativo</span>
                                                @endif
                                            </td>
                                            <td class="d-flex align-items-center">


                                                @if ($item->status_produto === 'ATIVO')
                                                    <form
                                                        action="{{ route('admin.produto.desativar', $item->id_produto) }}"method="POST">
                                                        @csrf
                                                        @method('PATCH')

                                                        <div class="form-check form-switch">
                                                            <input class="form-check-input" type="checkbox" role="switch"
                                                                checked onchange="this.form.submit()">
                                                        </div>
                                                    </form>
                                                @else
                                                    <form
                                                        action="{{ route('admin.produto.desativar', $item->id_produto) }}"method="POST">
                                                        @csrf
                                                        @method('PATCH')

                                                        <div class="form-check form-switch">
                                                            <input class="form-check-input" type="checkbox" role="switch"
                                                                checked onchange="this.form.submit()">
                                                        </div>
                                                    </form>
                                                @endif
                                                
                                                <button type="button" class="card-tools btn btn-warning "
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#editar{{ $item->id_produto }}"><i
                                                        class="bi bi-pencil-square"></i>
                                                </button>
                                                @include('admin.produto.modal.editar', [
                                                    'produto' => $item,
                                                ])
                                            </td>
                                        </tr>
                                    @empty
                                        <th>
                                        <td>Nenhuma Categoria Encontrada</td>
                                        </th>
                                    @endforelse
                                </tbody>
                            </table>

                        </div>
                        <!-- /.card-body -->
                        {{-- <div class="card-footer clearfix">
                            <ul class="pagination pagination-sm m-0 float-end">
                                <li class="page-item">
                                    <a class="page-link" href="#">&laquo;</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">1</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">2</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">3</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">&raquo;</a>
                                </li>
                            </ul>
                        </div> --}}
                    </div>

                </div>

            </div>
            <!--end::Row-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::App Content-->

    {{-- MODAL --}}

    @include('admin.produto.modal.criar')
    @include('admin.produto.modal.desativar')



@endsection
