<!DOCTYPE html>
<html lang="pt-br">

<head>
    @include('admin.partialsAdmin.head')
</head>

  <body class="layout-fixed sidebar-mini sidebar-expand-lg bg-body-tertiary">
    <!--begin::App Wrapper-->
    <div class="app-wrapper">
        @include('admin.partialsAdmin.nav')
        @include('admin.partialsAdmin.aside')
      
        <main>
            @include('admin.partialsAdmin.content-header')
            @yield('content')
        </main>

        @include('admin.partialsAdmin.footer')

      


    </div>

    @include('admin.partialsAdmin.script')

 

</body>

</html>