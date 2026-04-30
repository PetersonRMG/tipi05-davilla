<!DOCTYPE html>
<html lang="pt-br">

<head>
    @include('partials.head')
</head>

<body>

    <div class="page-wrapper">
        @include('partials.preloader')
        @include('partials.header')

        <main>
            @yield('content')
        </main>

        @include('partials.footer')

        @include('partials.scroll')


    </div>

    @include('partials.script')

    @stack('plugins')
        
        <script src="{{asset('davilla/js/script.js')}}"></script>
        
    @stack('scripts')


</body>

</html>