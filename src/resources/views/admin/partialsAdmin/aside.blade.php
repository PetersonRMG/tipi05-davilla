<!--begin::Sidebar-->
<aside class="app-sidebar bg-primary-subtle shadow" data-bs-theme="dark">
  <!--begin::Sidebar Brand-->
  <div class="sidebar-brand">
      <!--begin::Brand Link-->
      <a href="{{ route('home') }}" class="brand-link">
        <!--begin::Brand Image-->
        <div class="col-12  ">
          <img src="{{ asset('davilla/images/backgrounds/logo-davilla-texto.svg') }}" alt="AdminLTE Logo"class="brand-image opacity-75 shadow w-100" />

        </div>
        <!--end::Brand Image-->
        <!--begin::Brand Text-->
        <span class="brand-text fw-light"></span>
        <!--end::Brand Text-->
      </a>
      <!--end::Brand Link-->
  </div>
  <!--end::Sidebar Brand-->
  <!--begin::Sidebar Wrapper-->
  <div class="sidebar-wrapper">
    <nav class="mt-2">
      <!--begin::Sidebar Menu-->
      <ul class="nav sidebar-menu flex-column" data-lte-toggle="treeview" role="navigation" aria-label="Main navigation" data-accordion="false" id="navigation">
        <li class="nav-header">DASHBOARD</li>

        <li class="nav-header">GESTÃO DE CATÁLOGO</li>
        <li class="nav-item">
            <a href="#" class="nav-link">
                <i class="nav-icon bi bi-box-arrow-in-right"></i>
                <p>
                    Catálogo
                    <i class="nav-arrow bi bi-chevron-right"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="{{route('admin.categoria')}}" class="nav-link">
                        <i class="nav-icon bi bi-circle"></i>
                        <p>
                            Catálogos
                            <i class="nav-arrow bi "></i>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon bi bi-circle"></i>
                        <p>
                            Produtos
                            <i class="nav-arrow bi "></i>
                        </p>
                    </a>
                </li>

            </ul>
        </li>

        <li class="nav-header">GESTÃO COMERCIAL</li>
        <li class="nav-item">
            <a href="#" class="nav-link">
                <i class="nav-icon bi bi-box-arrow-in-right"></i>
                <p>
                    Comercial
                    <i class="nav-arrow bi bi-chevron-right"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon bi bi-circle"></i>
                        <p>
                            Clientes
                            <i class="nav-arrow bi "></i>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon bi bi-circle"></i>
                        <p>
                            Pedidos
                            <i class="nav-arrow bi "></i>
                        </p>
                    </a>



                </li>

            </ul>
        </li>
        <li class="nav-header">GESTÃO DE ESTOQUE</li>
        <li class="nav-item">
            <a href="#" class="nav-link">
                <i class="nav-icon bi bi-box-arrow-in-right"></i>
                <p>
                    Estoque
                    <i class="nav-arrow bi bi-chevron-right"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon bi bi-circle "></i>
                        <p>
                            Materias-primas
                            <i class="nav-arrow bi "></i>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon bi  bi-circle"></i>
                        <p>
                            Movimentação de estoque
                            <i class="nav-arrow bi "></i>
                        </p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon bi bi-circle "></i>
                        <p>
                            Fornecedores
                            <i class="nav-arrow bi "></i>
                        </p>
                    </a>
                </li>

            </ul>
        </li>

        <li class="nav-header">SITE</li>
        <li class="nav-item">
            <a href="#" class="nav-link">
                <i class="nav-icon bi bi-box-arrow-in-right"></i>
                <p>
                    Conteudo do site
                    <i class="nav-arrow bi bi-chevron-right"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon bi bi-circle"></i>
                        <p>
                            Banners
                            <i class="nav-arrow bi "></i>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon bi bi-circle"></i>
                        <p>
                            Mensagem de contato
                            <i class="nav-arrow bi "></i>
                        </p>
                    </a>
                </li>

            </ul>
        </li>

                <li class="nav-header">SISTEMA</li>
        <li class="nav-item">
            <a href="#" class="nav-link">
                <i class="nav-icon bi bi-box-arrow-in-right"></i>
                <p>
                   Sitema
                    <i class="nav-arrow bi bi-chevron-right"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon bi bi-circle"></i>
                        <p>
                            Usuarios
                            <i class="nav-arrow bi "></i>
                        </p>
                    </a>
                </li>


            </ul>
        </li>
      </ul>
      <!--end::Sidebar Menu-->
    </nav>
  </div>
  <!--end::Sidebar Wrapper-->
</aside>
<!--end::Sidebar-->
