<div class="sidebar-header m-b-30">
    ABSENSI
</div>
<div class="sidebar-menu">
    <ul class="menu-items">
        <li class="{{ $isActive(2, 'dashboard') }}">
            <a href="{{ url('mahasiswa/dashboard') }}">
                <span class="">DASHBOARD</span>
            </a>
            <span class="{{ $isActiveIcon(2, 'dashboard') }}"><i class="fa fa-home"></i></span>
        </li>
        <li class="{{ $isActive(2, 'perkuliahan') }}">
            <a href="javascript:;">
                <span class="title">Perkuliahan</span>
                <span class=" arrow"></span>
            </a>
            <span class="icon-thumbnail"><i class="fa fa-calendar"></i></span>
            <ul class="sub-menu">
                <li class="{{ $isActive(2, 'kehadiran-perkuliahan') }}">
                    <a href="{{ url('mahasiswa/kehadiran-perkuliahan') }}" class="detailed ">
                        <span class="title">Kehadiran Mahasiswa</span>
                    </a>
                    <span class="{{ $isActiveIcon(2, 'kehadiran-perkuliahan') }}"><i
                            class="fa fa-calendar"></i></span>
                </li>
            </ul>
        </li>
    </ul>
    <div class="clearfix"></div>
</div>
