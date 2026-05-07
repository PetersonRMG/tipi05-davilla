@extends('layout.site')

@section('content')
@include('site.cardapio.page-title')
@include('site.cardapio.content')

@endsection


@push('plugins')
<script src="{{ asset('davilla/js/mixitup.js') }}"></script>


@endpush

<script>
    document.addEventListener('DOMContentLoaded', function(){
        const filtroInicial = "{{ $categoriaAtiva }}";

        if(filtroInicial !== 'all'){
            const btn = document.querySelector(`[data-filter="${filtroInicial}"]`);

            if(btn){
                btn.click();
            }
        }
    });
</script>

