    <!-- Main Header-->
    <header class="main-header position-relative">
        <!-- Menu Wave -->
        <div class="menu_wave"></div>



        <!-- Main box -->
        <div class="main-box">
            <div class="menu-box">
                <div class="logo"><a href="{{ route('home') }}"><img class="logoP"
                            src="{{ asset('davilla/images/backgrounds/logo-davilla.svg') }}"></a></div>

                <!--Nav Box-->
                <div class="nav-outer clearfix">
                    <!-- Main Menu -->
                    <nav class="main-menu navbar-expand-md navbar-light">
                        <div class="collapse navbar-collapse clearfix" id="navbarSupportedContent">
                            <ul class="navigation menu-left clearfix">
                                <li class="current dropdown"><a href="{{ route('home') }}">Home </a>
                                    <ul>
                                        <li class="current"><a href="index.html">Cakes</a></li>

                                    </ul>
                                </li>
                                <li class="dropdown"><a href="{{ route('sobre') }}">Sobre</a>
                                    <ul>
                                        <li><a href="#">Sobre</a></li>

                                    </ul>
                                </li>
                                <li class="dropdown"><a href="{{ route('cardapio.index') }}">Cardapio</a>
                                    <ul>
                                        @forelse ($categoria as $linha)
                                            <li><a
                                                    href="{{ route('cardapio.categoria', $linha->id_categoria) }}">{{ $linha->nome_categoria }}</a>
                                            </li>

                                        @empty
                                            <li>Nenhuma Categoria</li>
                                        @endforelse

                                    </ul>
                                </li>
                            </ul>

                            <ul class="navigation menu-right clearfix">
                                <li class="dropdown"><a href="{{ route('regiao.index') }}">Região</a>
                                    <ul>
                                        <li><a href="blog-showcase.html">Checkerboard</a></li>

                                        <li class="dropdown"><a href="#">Post Types</a>
                                            <ul>
                                                <li><a href="blog-single.html">Standard Post</a></li>
                                                <li><a href="blog-single-2.html">Gallery Post</a></li>
                                                <li><a href="blog-single-3.html">Video Post</a></li>
                                                <li><a href="blog-single-4.html">Audio Post</a></li>
                                                <li><a href="blog-single-5.html">Quote Post</a></li>
                                                <li><a href="blog-single-6.html">Link Post</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="{{ route('pedidos') }}">Pedidos</a>
                                    <ul>
                                        <li><a href="shop.html">Shop</a></li>
                                        <li><a href="shopping-cart.html">Cart</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                        <li><a href="login.html">My account</a></li>
                                    </ul>
                                </li>
                                <li><a href="{{ route('contato') }}">Contato</a></li>
                                
                            </ul>
                        </div>
                    </nav>

                    <!-- Main Menu End-->

                    <div class="outer-box clearfix d-flex justify-content-between col-1">

                        
             
                        

                        <!-- Shoppping Car -->
                        <div class="cart-btn">
                            <a href="shopping-cart.html"><i class="icon flaticon-commerce"></i> <span
                                    class="count">2</span></a>

                            <div class="shopping-cart">
                                <div class="cart-footer">
                                    <div class="shopping-cart-total"><strong>Subtotal:</strong> $97.00</div>
                                    <a href="cart.html" class="theme-btn">View Cart</a>
                                    <a href="checkout.html" class="theme-btn">Checkout</a>
                                </div>
                                <ul class="shopping-cart-items">

                                    <li class="cart-item">
                                        <img src=" " alt="#" class="thumb" />
                                        <span class="item-name">Birthday Cake</span>
                                        <span class="item-quantity">1 x <span class="item-amount">$84.00</span></span>
                                        <a href="shop-single.html" class="product-detail"></a>
                                        <button class="remove-item"><span class="fa fa-times"></span></button>
                                    </li>

                                </ul>

                                <div class="cart-footer">
                                    <div class="shopping-cart-total"><strong>Subtotal:</strong> $97.00</div>
                                    <a href="cart.html" class="theme-btn">View Cart</a>
                                    <a href="checkout.html" class="theme-btn">Checkout</a>
                                </div>
                            </div> <!--end shopping-cart -->
                        </div>

                        <!-- Search Btn -->
                        <div class="search-box">
                                <button class="search-btn"><i class="fa fa-search"></i></button>
                        </div>

                        <div class="dash ms-5">
                            <a href="{{ route('login') }}"><img src="{{ asset('davilla/images/perfil.png') }}" alt="icone-dashbboard"></a>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!-- Sticky Header  -->
        <div class="sticky-header">
            <div class="auto-container clearfix">
                <!--Logo-->
                <div class="logo">
                    <a href="#" title="Sticky Logo"><img class="stick"
                            src="{{ asset('davilla/images/backgrounds/logo-davilla-texto.svg') }}"
                            alt="Sticky Logo"></a>
                </div>

                <!--Nav Outer-->
                <div class="nav-outer">
                    <!-- Main Menu -->
                    <nav class="main-menu">
                        <!--Keep This Empty / Menu will come through Javascript-->
                    </nav><!-- Main Menu End-->
                </div>
            </div>
        </div><!-- End Sticky Menu -->

        <!-- Mobile Header -->
        <div class="mobile-header">
            <div class="logo"><a href="index.html"><img
                        src="{{ asset('davilla/images/backgrounds/logo-davilla-texto.svg') }}" alt=""
                        title=""></a></div>

            <!--Nav Box-->
            <div class="nav-outer clearfix">
                <!--Keep This Empty / Menu will come through Javascript-->
            </div>
        </div>

        <!-- Mobile Menu  -->
        <div class="mobile-menu">
            <nav class="menu-box">
                <div class="nav-logo"><a href="index.html"><img
                            src="{{ asset('davilla/images/backgrounds/logo-davilla-texto.svg') }}" alt=""
                            title=""></a></div>
                <!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header-->
            </nav>
        </div><!-- End Mobile Menu -->

        <!-- Header Search -->
        <div class="search-popup">
            <span class="search-back-drop"></span>

            <div class="search-inner">
                <button class="close-search"><span class="fa fa-times"></span></button>
                <form method="post" action="blog-showcase.html">
                    <div class="form-group">
                        <input type="search" name="search-field" value="" placeholder="Search..."
                            required="">
                        <button type="submit"><i class="fa fa-search"></i></button>
                    </div>
                </form>
            </div>
        </div>
        <!-- End Header Search -->

    </header>
    <!--End Main Header -->
