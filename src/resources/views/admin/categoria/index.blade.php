@extends('layout.admin')

@section('title', 'Categoria | Confeitaria Dashboard')
@section('pg-titulo', 'Categoria')
@section('link-topo', 'Categoria')
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

                            <h3 class="card-title">Gerenciamento de Categorias</h3>

                            <div class=" card-tools ">
                                <button type="button" class="card-tools btn btn-success " data-bs-toggle="modal"
                                    data-bs-target="#criar"><i class="bi bi-plus-circle"></i> Nova Categoria</button>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th style="width: 10px">Ordem</th>
                                        <th>Nome</th>
                                        <th>Descrições</th>
                                        <th style="width: 40px">Status</th>
                                        <th style="width: 40px">Edição</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse ($categoria as $item)
                                        <tr class="align-middle">
                                            <td>{{ $item->id_categoria }}</td>
                                            <td>{{ $item->nome_categoria }}</td>
                                            <td>
                                                {{-- <div class="progress progress-xs">
                                                <div class="progress-bar progress-bar-danger" style="width: 55%">
                                                    
                                                </div>

                                            </div> --}}
                                                <div>{{ $item->descricao_categoria }}</div>
                                            </td>
                                            <td>
                                                {{-- BTN ATIVAR E DESATIVAR --}}
                                                @if ($item->status_categoria === 'ATIVO')
                                                    <span class="badge text-bg-success text-uppercase">Ativo</span>
                                                @else
                                                    <span class="badge text-bg-danger text-uppercase">Inativo</span>
                                                @endif
                                            </td>
                                            <td class=" d-flex align-items-center">  
                                                
                                               @if ($item->status_categoria === 'ATIVO')

                                                    <form action="{{ route('admin.categoria.desativar', $item->id_categoria) }}"
                                                        method="POST">
                                                        @csrf
                                                        @method('PATCH')

                                                        <div class="form-check form-switch">
                                                            <input class="form-check-input"
                                                                type="checkbox"
                                                                    role="switch"
                                                                    checked
                                                                    onchange="this.form.submit()">
                                                            </div>
                                                        </form>

                                                        @else

                                                    <form action="{{ route('admin.categoria.ativar', $item->id_categoria) }}"
                                                        method="POST">
                                                        @csrf
                                                        @method('PATCH')

                                                        <div class="form-check form-switch">
                                                            <input class="form-check-input"
                                                                type="checkbox"
                                                                role="switch"
                                                                onchange="this.form.submit()">
                                                        </div>
                                                    </form>

                                                @endif
                                                    {{-- BTN EDITAR --}}
                                                <button type="button" class="card-tools btn btn-warning "
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#editar{{ $item->id_categoria }}"><i
                                                    class="bi bi-pencil-square"></i>
                                                </button>
                                                @include('admin.categoria.modal.editar', ['categoria' => $item])
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

    @include('admin.categoria.modal.criar')

    @include('admin.categoria.modal.desativar')



@endsection
