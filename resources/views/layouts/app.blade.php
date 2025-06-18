<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Bookstore App - @yield('title')</title>
  <link rel="stylesheet" href="{{ asset('assets/plugins/fontawesome-free/css/all.min.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/dist/css/adminlte.min.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/plugins/select2/css/select2.min.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/dist/css/dataTables.bootstrap4.min.css') }}">
  

<style>
    body {
        font-family: 'Source Sans Pro', sans-serif;
    }
    .content-wrapper {
        min-height: calc(100vh - 56px - 56px);
    }
    @media (max-width: 600px) {
        .sidebar-mini.sidebar-collapse .main-sidebar {
            width: 100% !important;
        }
        .content-wrapper {
            margin-left: 0 !important;
        }
    }
</style>
@stack('styles')
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a href="#" class="nav-link" data-widget="pushmenu" role="button"><i class="fas fa-bars"></i></a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="{{ route('books.index') }}" class="nav-link">Home</a>
            </li>
        </ul>

        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <span class="nav-link">Logged in as: {{ auth()->user()->name }}</span>
            </li>
            <li class="nav-item">
                <form method="POST" action="{{ route('logout') }}">
                    @csrf
                    <button type="submit" class="btn btn-link nav-link" style="color: inherit;">Logout</button>
                </form>
            </li>
        </ul>
    </nav>

    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <a href="{{ route('books.index') }}" class="brand-link">
            <i class="fas fa-book-open"></i>
            <span class="brand-text font-weight-light ml-2">Toko Buku</span>
        </a>

        <div class="sidebar">
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    <i class="fas fa-user-circle fa-2x text-white"></i>
                </div>
                <div class="info">
                    <a href="#" class="d-block">{{ auth()->user()->name }}</a>
                    <small class="text-light">{{ ucfirst(auth()->user()->role) }}</small>
                </div>
            </div>

            <nav class="mt-2" style="overflow-y:auto; max-height: calc(100vh - 150px);">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu">
                    <li class="nav-item">
                        <a href="{{ route('dashboard') }}" class="nav-link">
                            <i class="nav-icon fas fa-house-user"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                    @can('manage-users')
                    <li class="nav-item">
                        <a href="{{ route('users.index') }}" class="nav-link {{ request()->is('users*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-users"></i>
                            <p>User</p>
                        </a>
                    </li>
                    @endcan

                    @can('manage-books')
                    <li class="nav-item">
                        <a href="{{ route('books.index') }}" class="nav-link {{ request()->is('books*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-book"></i>
                            <p>Buku</p>
                        </a>
                    </li>
                    @endcan

                    @can('access-pos')
                    <li class="nav-item">
                        <a href="{{ route('sales.pos') }}" class="nav-link {{ request()->is('sales/pos') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-cash-register"></i>
                            <p>Penjualan</p>
                        </a>
                    </li>
                    @endcan

                    @can('view-reports')
                    <li class="nav-header">Laporan</li>
                    <li class="nav-item">
                        <a href="{{ route('reports.sales') }}" class="nav-link {{ request()->is('reports/sales') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-chart-line"></i>
                            <p>Laporan Penjualan</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('reports.inventory') }}" class="nav-link {{ request()->is('reports/inventory') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-warehouse"></i>
                            <p>Laporan Inventory</p>
                        </a>
                    </li>
                    @endcan

                    <li class="nav-item">
                        <a href="{{ route('profile.password.edit') }}" class="nav-link {{ request()->is('profile/password') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-key"></i>
                            <p>Ubah Password</p>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </aside>

    <div class="content-wrapper p-3">
        <div class="content-header">
            <h1 class="m-0 text-dark">@yield('title')</h1>
        </div>

        <section class="content">
            @if(session('success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ session('success') }}
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                </div>
            @endif
            @if(session('error'))
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    {{ session('error') }}
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                </div>
            @endif
            @yield('content')
        </section>
    </div>

    {{-- <footer class="main-footer text-center">
        <strong>© {{ date('Y') }} Bookstore Application.</strong>
    </footer> --}}
</div>

<script src="{{ asset('assets/plugins/jquery/jquery.js') }}"></script>
<script src="{{ asset('assets/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ asset('assets/dist/js/adminlte.min.js') }}"></script>
<script src="{{ asset('assets/plugins/select2/js/select2.min.js') }}"></script>
<script src="{{ asset('assets/dist/js/bootstrap.bundle.5.3.0.min.js') }}"></script>
<script src="{{ asset('assets/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('assets/dist/js/dataTables.bootstrap4.min.js') }}"></script>


@stack('scripts')
</body>
</html>
