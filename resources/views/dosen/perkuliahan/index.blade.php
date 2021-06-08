<x-app page-title="Perkuliahan" extends="datatable">
    <x-component.card title="Data Kelas Perkuliahan {{ $semester->semester_tahun_string }}">
        <x-component.table header="NO|Aksi|Nama Kelas|Matakuliah|Dosen|Jumlah Peserta" noAction datatable>
            @foreach ($list_kelas->sortBy('nama') as $kelas)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td width="100px">
                        <a href="{{ url('dosen/kehadiran-perkuliahan', $kelas->uuid) }}"
                            class="btn btn-info btn-block">
                            <i class="fa fa-info"></i>Detail
                        </a>
                    </td>
                    <td>{{ $kelas->nama }}</td>
                    <td>{{ $kelas->matakuliah->nama }}</td>
                    <td>{{ $kelas->dosen->pegawai->nama_gelar }}</td>
                    <td>{{ $kelas->peserta->count() }} Mahasiswa</td>
                </tr>
            @endforeach
        </x-component.table>
    </x-component.card>
</x-app>
