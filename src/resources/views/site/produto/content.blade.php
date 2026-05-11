    <!--Sidebar Page Container-->
    <div class="sidebar-page-container">
        <div class="auto-container">
            <div class="row clearfix">

                <!--Content Side-->
                <div class="content-side col-lg-9 col-md-12 col-sm-12">
                    <div class="shop-single">
                        <!-- Product Detail -->
                        <div class="product-details">
                            <!--Basic Details-->
                            <div class="basic-details">
                                <div class="row clearfix">
                                    <div class="image-column col-md-6 col-sm-12">
                                        <figure class="image"><a href="{{asset('davilla/images/'.$produto->foto_produto)}}" class="lightbox-image" title="Image Caption Here"><img src="{{ asset('davilla/images/'. $produto->foto_produto) }}" alt=""><span class="icon fa fa-search"></span></a></figure>
                                    </div>
                                    <div class="info-column col-md-6 col-sm-12">
                                        <div class="details-header">
                                            <h4>{{$produto->nome_produto}}</h4>
                                            <div class="rating">
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                            </div>
                                            <a class="reviews" href="#">(2 Avaliações)</a>
                                            <div class="item-price">R$ {{ number_format($produto->valor_produto,2,'.',',') }}</div>
                                       
                                            <div class="text">{{$produto->descricao_produto}}</div>
                                        </div>

                                        <div class="other-options clearfix">
                                            <div class="item-quantity">Quantidade <input class="qty" type="number" value="1" name="quantity"></div>
                                            <button type="button" class="theme-btn add-to-cart"><span class="btn-title">Add ao Carrinho</span></button>
                                            <ul class="product-meta">
                                                <li class="posted_in">Categoria: <a href="{{route('cardapio.categoria', $produto->CategoriaProduto->id_categoria)}}">{{$produto->CategoriaProduto->nome_categoria}}</a></li>
                                          
                                            </ul>
                                        </div>
                                    </div>  
                                </div>
                            </div>
                            <!--Basic Details-->
                            
                            <!--Product Info Tabs-->
                            <div class="product-info-tabs">
                                <!--Product Tabs-->
                                <div class="prod-tabs tabs-box">
                                
                                    <!--Tab Btns-->
                                    <ul class="tab-btns tab-buttons clearfix">
                                        <li data-tab="#prod-details" class="tab-btn">Descrição</li>
                                        <li data-tab="#prod-reviews" class="tab-btn active-btn">Avaliação (2)</li>
                                    </ul>
                                    
                                    <!--Tabs Container-->
                                    <div class="tabs-content">
                                        
                                        <!--Tab-->
                                        <div class="tab" id="prod-details">
                                            <h2 class="title">Descrição</h2>
                                            <div class="content">
                                                <p>{{$produto->descricao_produto}}</p>
                                            </div>
                                        </div>
                                        
                                        <!--Tab-->
                                        <div class="tab active-tab" id="prod-reviews">
                                            <h2 class="title">Avaliação do {{$produto->nome_produto}}</h2>
                                            <!--Reviews Container-->
                                            <div class="comments-area">
                                                <!--Comment Box-->
                                                <div class="comment-box">
                                                    <div class="comment">
                                                        <div class="author-thumb"><img src="{{asset('davilla/images/' . $produto->foto_produto) }}" alt=""></div>
                                                        <div class="comment-inner">
                                                            <div class="comment-info clearfix">
                                                                <strong class="name">Stuart</strong> 
                                                                <span class="date">– 07 Jun</span>
                                                            </div> 
                                                            <div class="rating">
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star light"></span>
                                                            </div>
                                                            <div class="text">Bão demais esse {{$produto->nome_produto}}</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <!--Comment Box-->
                                                <div class="comment-box">
                                                    <div class="comment">
                                                        <div class="author-thumb"><img src="{{asset('davilla/images/'. $produto->foto_produto) }}" alt=""></div>
                                                        <div class="comment-inner">
                                                             <div class="comment-info clearfix">
                                                                <strong class="name">Maria</strong> 
                                                                <span class="date">– 07 Jun</span>
                                                            </div> 
                                                            <div class="rating">
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star light"></span>
                                                            </div>
                                                            <div class="text">Bão demais esse {{$produto->nome_produto}}</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <!--Comment Form-->
                                            <div class="comment-form">
                                                <div class="sub-title">Comentario</div>
                                                <div class="form-outer">
                                                    <p>Seu endereço de e-mail não será publicado. Os campos obrigatórios estão marcados com um *</p>
                                                    <div class="rating-box">
                                                        <div class="field-label">Sua avaliação</div>
                                                        <div class="rating">
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                        </div>
                                                    </div>
                                                    <form method="post" action="blog-showcase.html"> 
                                                        <div class="row clearfix">
                                                            <div class="col-lg-12 col-md-12 col-sm-12 form-group">
                                                                <div class="field-label">Seu Comentario *</div>
                                                                <textarea name="message" placeholder=""></textarea>
                                                            </div>

                                                            <div class="col-lg-6 col-md-12 col-sm-12 form-group">
                                                                <div class="field-label">Nome *</div>
                                                                <input type="text" name="username" placeholder="" required="">
                                                            </div>
                                                            
                                                            <div class="col-lg-6 col-md-12 col-sm-12 form-group">
                                                                <div class="field-label">Email *</div>
                                                                <input type="email" name="email" placeholder="" required="">
                                                            </div>

                                                            <div class="col-lg-12 col-md-12 col-sm-12 form-group text-right">
                                                                <input type="submit" name="submit" value="Submit">
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            <!--End Product Info Tabs-->
                            
                            <!-- Related Products -->
                            <div class="related-products">
                                <div class="sec-title">
                                    <h2>Produtos Relacionados</h2>
                                </div>

                                <div class="row clearfix">
                                    <!-- Shop Item --> 
                                    @foreach($listaRelacionados  as $linha)
                                    <div class="shop-item col-lg-4 col-md-6 col-sm-12">
                                        <div class="inner-box">
                                            <div class="image-box">
                                                <div class="sale-tag">sale!</div>
                                                <figure class="image"><a href="{{ route('cardapio.produto', $linha->slug_produto) }}"><img src="{{asset('davilla/images/' . $linha->foto_produto) }}" alt=""></a></figure>
                                                <div class="btn-box"><a href="shopping-cart.html">Add to cart</a></div>
                                            </div>
                                            <div class="lower-content">
                                                <h4 class="name"><a href="shop-single.html">{{$linha ->nome_produto}}</a></h4>
                                                <div class="rating"><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star light"></span></div>
                                                <div class="price">R${{ number_format($linha->valor_produto,2,'.',',') }}</div>

                                            </div>
                                        </div>
                                    </div>
                                    @endforeach


                                </div>
                            </div><!-- End Related Products -->
                        </div><!-- Product Detail -->
                    </div><!-- End Shop Single -->
                </div>
                
                <!--Sidebar Side-->
                <div class="sidebar-side sticky-container col-lg-3 col-md-12 col-sm-12">
                    <aside class="sidebar theiaStickySidebar">
                        <div class="sticky-sidebar">
                            <!-- Search Widget -->
                            <div class="sidebar-widget search-widget">
                                <form method="post" action="contact.html">
                                    <div class="form-group">
                                        <input type="search" name="search-field" value="" placeholder="Search products…" required>
                                        <button type="submit"><span class="icon fa fa-search"></span></button>
                                    </div>
                                </form>
                            </div>
                            
                            <!-- Cart Widget -->
                            <div class="sidebar-widget cart-widget">
                                <div class="widget-content">
                                    <h3 class="widget-title">Reserva</h3>
                                    
                                    <div class="shopping-cart">
                                        <ul class="shopping-cart-items">
                                            <li class="cart-item">
                                                <img src="{{asset('davilla/images/' . $produto->foto_produto) }}" alt="#" class="thumb" />
                                                <span class="item-name">{{$produto->nome_produto}}</span>
                                                <span class="item-quantity">1 x <span class="item-amount">R$ {{ number_format($produto->valor_produto,2,'.',',') }}</span></span>
                                                <a href="shop-single.html" class="product-detail"></a>
                                                <button class="remove-item"><span class="fa fa-times"></span></button>
                                            </li>

                                            <li class="cart-item">
                                                <img src="{{asset('davilla/images/' . $produto->foto_produto) }}" alt="#" class="thumb"  />
                                                <span class="item-name">French Macaroon</span>
                                                <span class="item-quantity">1 x <span class="item-amount">$13.00</span></span>
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
                            </div>

                            <!-- Tags Widget -->
                            <div class="sidebar-widget tags-widget">
                                <h3 class="widget-title">Categorias</h3>
                                <ul class="tag-list clearfix">
                                    @foreach($filtroCategoria as $cate)
                                    <li><a href="{{route('cardapio.categoria', $cate->id_categoria)}}">{{$cate->nome_categoria}}</a></li>
                                    @endforeach
                                    
                                </ul>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <!--End Sidebar Page Container-->