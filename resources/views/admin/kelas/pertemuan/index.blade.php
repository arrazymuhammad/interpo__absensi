<x-app page-title="Perkuliahan" extends="datatable">
    <x-component.card title="Data Pertemuan Kelas {{ $kelas->nama }}" create-title="Tambah Pertemuan">
        <x-slot name="actions">
            <a href="{{ url('admin/kehadiran-perkuliahan', $kelas->uuid) }}" class="btn btn-info">
                <i class="fa fa-arrow-left"></i> Kembali Ke Detail Kelas
            </a>
        </x-slot>
        <x-component.table
            header="No{width=10px}|Aksi{width=80px}|Pertemuan Ke-|Tanggal Pelaksanaan|Jumlah Mahasiswa Hadir" datatable
            noAction>
            @foreach ($list_pertemuan->sortBy('pertemuan_ke') as $pertemuan)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>
                        <a href="{{ url('admin/kehadiran-perkuliahan/pertemuan', $pertemuan->uuid) }}"
                            class="btn btn-info"><i class="fa fa-info"></i> Detail</a>
                    </td>
                    <td>{{ $pertemuan->pertemuan_ke }}</td>
                    <td>{{ $pertemuan->tanggal_pelaksanaan_string }}</td>
                    <td>{{ $pertemuan->absensi->count() }}</td>
                </tr>
            @endforeach
        </x-component.table>
    </x-component.card>
</x-app>
