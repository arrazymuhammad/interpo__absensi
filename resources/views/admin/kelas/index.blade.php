<x-app page-title="Kelas Perkuliahan">
    <x-component.card title="Kelas Perkuliahan">
        <x-slot name="actions">
            <a href="{{ url('admin/kehadiran-perkuliahan/klaim-presensi') }}" class="btn btn-info">
                <i class="fa fa-calendar"></i> Daftar Klaim Presensi
            </a>
        </x-slot>
        <x-component.table header="No|Aksi{width=90px}|Nama Kelas|Nama Dosen|Jumlah Mahasiswa|Jumlah Pertemuan"
            noAction>
            @foreach ($list_kelas->sortBy('matakuliah.kode') as $kelas)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>
                        <a href="{{ url('admin/kehadiran-perkuliahan', $kelas->uuid) }}" class="btn btn-info">
                            <i class="fa fa-info"></i> Detail
                        </a>
                    </td>
                    <td>{{ $kelas->matakuliah->nama }}</td>
                    <td>{{ $kelas->dosen->pegawai->nama_gelar }}</td>
                    <td class="text-center">{{ $kelas->peserta_count }}</td>
                    <td class="text-center">{{ $kelas->pertemuan_count }}</td>
                </tr>
            @endforeach
        </x-component.table>
    </x-component.card>
</x-app>
