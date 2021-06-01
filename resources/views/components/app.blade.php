<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8" />
    <title>SIMASTER UGM</title>
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta content="SIMASTER UGM" name="description" />
    <meta content="Ar-Razy Muhammad" name="author" />
    <link href="https://simaster.ugm.ac.id/ugmfw-assets/images/favicon.ico" rel="shortcut icon">
    <link href="{{ url('public') }}/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet"
        type="text/css" />
    <link href="{{ url('public') }}/assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet"
        type="text/css" />
    <link href="{{ url('public') }}/assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet"
        type="text/css" media="screen" />
    <link href="{{ url('public') }}/assets/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css"
        media="screen" />
    <link href="{{ url('public') }}/assets/plugins/switchery/css/switchery.min.css" rel="stylesheet" type="text/css"
        media="screen" />
    <link href="{{ url('public') }}/pages/css/pages-icons.css" rel="stylesheet" type="text/css">
    <link class="main-stylesheet" href="{{ url('public') }}/pages/css/pages.css" rel="stylesheet" type="text/css" />
    <link class="main-stylesheet" href="{{ url('public') }}/assets/css/style.css" rel="stylesheet" type="text/css" />
    @stack('style')
    @if ($extendable('datatable'))
        <link href="{{ url('https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css') }}"
            rel="stylesheet" type="text/css" />
    @endif
    @if ($extendable('select2'))
        <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    @endif
</head>

<body class="fixed-header menu-behind menu-pin">
    <nav class="page-sidebar" data-pages="sidebar">
        <x-layout.menu />
    </nav>
    <div class="page-container ">
        <div class="header">
            <a href="#" class="btn-link toggle-sidebar d-lg-none pg pg-menu" data-toggle="sidebar"></a>
            <div class="">
                <div class="brand inline" style="width: 250px; text-align: center; padding-left: 0;">
                    <h4>
                        SIMASTER
                    </h4>
                </div>
            </div>
            <x-layout.account />
        </div>
        <div class="page-content-wrapper ">
            <div class="content">
                <div class="jumbotron sm-p-l-30 sm-p-r-30 xs-p-l-30" data-pages="parallax">
                    <div class="{{ $container }}">
                        <div class="inner">
                            <h2>{{ $pageTitle }}</h2>
                        </div>
                    </div>
                </div>
                <div class="{{ $container }} container-fixed-lg">
                    <x-layout.flash-notification />
                    {{ $slot }}
                </div>
            </div>
            <div class="container-fluid container-fixed-lg footer">
                <div class="copyright sm-text-center">
                    <p class="small no-margin pull-left sm-pull-reset">
                        <span class="hint-text">All rights reserved.</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
    <script src="{{ url('public') }}/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
    <script src="{{ url('public') }}/assets/plugins/jquery/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="{{ url('public') }}/assets/plugins/modernizr.custom.js" type="text/javascript"></script>
    <script src="{{ url('public') }}/assets/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
    <script src="{{ url('public') }}/assets/plugins/popper/umd/popper.min.js" type="text/javascript"></script>
    <script src="{{ url('public') }}/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="{{ url('public') }}/assets/plugins/jquery/jquery-easy.js" type="text/javascript"></script>
    <script src="{{ url('public') }}/assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript">
    </script>
    <script src="{{ url('public') }}/assets/plugins/jquery-ios-list/jquery.ioslist.min.js" type="text/javascript">
    </script>
    <script src="{{ url('public') }}/assets/plugins/jquery-actual/jquery.actual.min.js"></script>
    <script src="{{ url('public') }}/assets/plugins/jquery-scrollbar/jquery.scrollbar.min.js"></script>
    <script src="{{ url('public') }}/assets/plugins/select2/js/select2.full.min.js"></script>
    <script src="{{ url('public') }}/assets/plugins/classie/classie.js"></script>
    <script src="{{ url('public') }}/assets/plugins/switchery/js/switchery.min.js" type="text/javascript"></script>
    @if ($extendable('datatable'))
        <script src="//cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
        <script>
            $(".table-datatable").DataTable();

        </script>
    @endif
    @if ($extendable('livewire')) @livewireScripts @endif
    @if ($extendable('select2'))
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    @endif
    <script src="{{ url('public') }}/pages/js/pages.js" defer></script>
    <script src="{{ url('public') }}/assets/js/laravel.js"></script>
    <script>
        const BASE_URL = "{{ url('public') }}";
        const CURRENT_URL = '{{ url()->current() }}'
        const CSRF_TOKEN = '{{ csrf_token() }}';

    </script>
    <script src="{{ url('public') }}/assets/js/script.js"></script>
    @stack('script')
</body>

</html>
