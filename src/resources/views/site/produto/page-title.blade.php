 @php
    $bgproduto = asset('davilla/images/backgrounds/imgsobre-3.jpg')
 @endphp
 <!--Page Title-->
    <section class="page-title" style="background-image:url('{{$bgproduto}}')">
        <div class="auto-container">
            <h1>{{$produto->nome_produto}}</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{route('home')}}">Home</a></li>
                <li><a href="{{route('cardapio.index')}}">Cardápio</a></li>
                <li>{{$produto->nome_produto}}</li>
            </ul>
        </div>
    </section>
    <!--End Page Title-->