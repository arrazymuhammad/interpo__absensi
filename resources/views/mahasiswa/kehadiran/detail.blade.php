<x-app page-title="Perkuliahan" extends="datatable">
    <a href="{{ url('mahasiswa/kehadiran-perkuliahan') }}" class="btn btn-warning">
        <i class="fa fa-arrow-left"></i> Kembali
    </a>
    <div class="btn-group float-right">
        <a href="{{ url('mahasiswa/kehadiran-perkuliahan', $kelas->uuid) }}/create" class="btn btn-info">
            <i class="fa fa-plus"></i> Tambah Absensi
        </a>
        <a href="{{ url('mahasiswa/kehadiran-perkuliahan', $kelas->uuid) }}/riwayat" class="btn btn-info">
            <i class="fa fa-history"></i> Riwayat Absensi
        </a>
        <a href="{{ url('mahasiswa/kehadiran-perkuliahan', $kelas->uuid) }}/lupa-absen" class="btn btn-danger">
            <i class="fa fa-times"></i> Lupa Absen
        </a>
    </div>
    <x-component.card>
        <x-slot name="title">
            <b>{{ $kelas->matakuliah->kode }}</b> {{ $kelas->matakuliah->nama }} <br>
            Dosen : {{ $kelas->dosen->pegawai->nama_gelar }}
        </x-slot>
        <x-component.table header="Pertemuan Ke|Tanggal|Jam Mulai|Jam Selesai|Status" noAction>
            @foreach ($list_pertemuan->sortBy('pertemuan_ke') as $pertemuan)
                <tr>
                    <td width="150px" class="text-center">{{ $pertemuan->pertemuan_ke }}</td>
                    <td>{{ $pertemuan->tanggal_pelaksanaan_string }}</td>
                    <td>-</td>
                    <td>-</td>
                    <td class="text-center">{!! $pertemuan->checkStatus($id_mahasiswa) !!}</td>
                </tr>
            @endforeach
        </x-component.table>
    </x-component.card>
</x-app>
