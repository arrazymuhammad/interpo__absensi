<x-app page-title="Perkuliahan" extends="datatable">
    <x-component.card title="Kehadiran Mahasiswa Semester {{ $semester->semester_tahun_string }}">
        <x-component.table header="NO|Kode|Mata Kuliah|SKS|Dosen|Jumlah Pertemuan|Persentase|Detail" noAction datatable>
            @foreach ($list_peserta->sortBy('matakuliah.kode') as $kelas)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $kelas->matakuliah->kode }}</td>
                    <td>{{ $kelas->matakuliah->nama }}</td>
                    <td>{{ $kelas->matakuliah->sks }}</td>
                    <td>{{ $kelas->dosen->pegawai->nama_gelar }}</td>
                    <td>{{ $kelas->pertemuan->count() }}</td>
                    <td>{{ $kelas->persentaseKehadiran($id_mahasiswa) }}</td>
                    <td>
                        <a href="{{ url('mahasiswa/kehadiran-perkuliahan', $kelas->uuid) }}"
                            class="btn btn-xs btn-warning">
                            <i class="fa fa-arrow-right"></i>
                        </a>
                    </td>
                </tr>
            @endforeach
        </x-component.table>
    </x-component.card>
</x-app>
