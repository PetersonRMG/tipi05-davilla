@extends('layout.site')

@section('content')

@include('site.pedidos.pagetitle')
@include('site.pedidos.sidebar')

@endsection


@push('plugins')

<script src="{{ asset('davilla/js/jquery-ui.min.js') }}"></script>
<script src="{{ asset('davilla/js/select2.min.js') }}"></script>
<script src="{{ asset('davilla/js/sticky_sidebar.min.js') }}"></script>

@endpush