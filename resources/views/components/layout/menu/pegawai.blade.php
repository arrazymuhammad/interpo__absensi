<div class="sidebar-header m-b-30">
    ABSENSI
</div>
<div class="sidebar-menu">
    <ul class="menu-items">
        <li class="{{ $isActive(2, 'dashboard') }}">
            <a href="{{ url('admin/dashboard') }}">
                <span class="">DASHBOARD</span>
            </a>
            <span class="{{ $isActiveIcon(2, 'dashboard') }}"><i class="fa fa-home"></i></span>
        </li>
        @if (auth()->user()->is_admin)
            <li class="{{ $isActive(2, 'kehadiran-perkuliahan') }}">
                <a href="{{ url('admin/kehadiran-perkuliahan') }}">
                    <span class="">Kehadiran Perkuliahan</span>
                </a>
                <span class="{{ $isActiveIcon(2, 'kehadiran-perkuliahan') }}"><i class="fa fa-calendar"></i></span>
            </li>
            <li class="{{ $isActive(2, 'sync') }}">
                <a href="{{ url('admin/sync') }}">
                    <span class="">Sinkronisasi Data</span>
                </a>
                <span class="{{ $isActiveIcon(2, 'sync') }}"><i class="fa fa-refresh"></i></span>
            </li>
        @endif

        @if (auth()->user()->is_dosen)
            <li class="{{ $isActive(2, 'kehadiran-perkuliahan') }}">
                <a href="{{ url('dosen/kehadiran-perkuliahan') }}">
                    <span class="">Kehadiran Perkuliahan</span>
                </a>
                <span class="{{ $isActiveIcon(2, 'kehadiran-perkuliahan') }}"><i class="fa fa-calendar"></i></span>
            </li>
        @endif
    </ul>
    <div class="clearfix"></div>
</div>
