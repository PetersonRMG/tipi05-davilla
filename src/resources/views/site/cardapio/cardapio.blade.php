@extends('layout.site')

@section('content')
@include('site.cardapio.page-title')
@include('site.cardapio.content')
@endsection


@push('plugins')
<script src="{{ asset('davilla/js/mixitup.js') }}"></script>
@endpush