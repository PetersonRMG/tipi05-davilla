@extends('layout.site')

@section('content')

@include('site.regiao.pagetitle')
@include('site.regiao.recipes')

@endsection


@push('plugins')
<script src="{{ asset('davilla/js/select2.min.js') }}"></script>
@endpush