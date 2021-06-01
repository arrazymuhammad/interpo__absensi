<div class="sidebar-header m-b-30">
    SIMASTER
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
            <hr>
            <li><label class="pl-3">Admin</label></li>
            <li class="{{ $isActive(2, 'master') }}">
                <a href="javascript:;">
                    <span class="title">Master Data</span>
                    <span class=" arrow"></span>
                </a>
                <span class="icon-thumbnail"><i class="fa fa-archive"></i></span>
                <ul class="sub-menu">
                    <li class="{{ $isActive(3, 'pegawai') }}">
                        <a href="{{ url('admin/master/pegawai') }}" class="detailed ">
                            <span class="title">Pegawai</span>
                        </a>
                        <span class="{{ $isActiveIcon(3, 'pegawai') }}">Peg</span>
                    </li>
                    <li class="{{ $isActive(3, 'dosen') }}">
                        <a href="{{ url('admin/master/dosen') }}" class="detailed">
                            <span class="title">Dosen</span>
                        </a>
                        <span class="{{ $isActiveIcon(3, 'dosen') }}">Dos</span>
                    </li>
                    <li class="{{ $isActive(3, 'matakuliah') }}">
                        <a href="{{ url('admin/master/matakuliah') }}" class="detailed">
                            <span class="title">Matakuliah</span>
                        </a>
                        <span class="{{ $isActiveIcon(3, 'matakuliah') }}">MK</span>
                    </li>
                    <li class="{{ $isActive(3, 'mahasiswa') }}">
                        <a href="{{ url('admin/master/mahasiswa') }}" class="detailed">
                            <span class="title">Mahasiswa</span>
                        </a>
                        <span class="{{ $isActiveIcon(3, 'mahasiswa') }}">Mhs</span>
                    </li>
                    <li class="{{ $isActive(3, 'semester') }}">
                        <a href="{{ url('admin/master/semester') }}" class="detailed">
                            <span class="title">Semester</span>
                        </a>
                        <span class="{{ $isActiveIcon(3, 'semester') }}">Sem</span>
                    </li>
                </ul>
            </li>
            <li class="{{ $isActive(2, 'perkuliahan') }}">
                <a href="javascript:;">
                    <span class="title">Perkuliahan</span>
                    <span class=" arrow"></span>
                </a>
                <span class="icon-thumbnail"><i class="fa fa-archive"></i></span>
                <ul class="sub-menu">
                    <li class="{{ $isActive(3, 'kelas') }}">
                        <a href="{{ url('admin/perkuliahan/kelas') }}" class="detailed ">
                            <span class="title">Kelas Kuliah</span>
                        </a>
                        <span class="{{ $isActiveIcon(3, 'kelas') }}">Kls</span>
                    </li>
                </ul>
            </li>
        @endif

        @if (auth()->user()->is_dosen)
            <hr>
            <li><label class="pl-3">Dosen</label></li>
            <li class="{{ $isActive(2, 'kelas-dosen') }}">
                <a href="{{ url('dosen/kelas-dosen') }}">
                    <span class="">Perkuliahan</span>
                </a>
                <span class="{{ $isActiveIcon(2, 'kelas-dosen') }}"><i class="fa fa-users"></i></span>
            </li>
        @endif
    </ul>
    <div class="clearfix"></div>
</div>
