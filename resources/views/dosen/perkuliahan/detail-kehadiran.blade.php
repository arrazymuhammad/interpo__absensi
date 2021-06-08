<x-app page-title="Perkuliahan" extends="datatable">
    <x-component.card title="Detail Kehadiran Perkuliahan {{ $kelas->nama }}">
        <x-slot name="actions">
            <div class="btn-group">
                <a href="{{ url('dosen/kehadiran-perkuliahan', $kelas->uuid) }}" class="btn btn-info"><i
                        class="fa fa-arrow-left"></i> Kembali </a>
            </div>
        </x-slot>
        <dl>
            <dt>Nama Mahasiswa</dt>
            <dd>{{ $peserta->mahasiswa->nama }}</dd>
            <dt>Nama Matakuliah</dt>
            <dd>{{ $kelas->matakuliah->nama }}</dd>
            <dt>Dosen Pengampu</dt>
            <dd>{{ $kelas->dosen->pegawai->nama_gelar }}</dd>
            <dt>Jumlah Pertemuan</dt>
            <dd>{{ $kelas->pertemuan->count() }}</dd>
            <dt>Persentase Kehadiran</dt>
            <dd>{{ $kelas->persentaseKehadiran($peserta->mahasiswa->uuid) }}</dd>
        </dl>
    </x-component.card>
    <x-component.card title="Peseta Kelas">
        <x-slot name="actions">

        </x-slot>
        <x-component.table header="No|Tanggal|Pertemuan Ke|Status" noAction>
            @foreach ($list_pertemuan->sortBy('pertemuan_ke') as $pertemuan)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $pertemuan->tanggal_pelaksanaan_string }}</td>
                    <td>{{ $pertemuan->pertemuan_ke }}</td>
                    <td>{!! $pertemuan->checkStatus($peserta->mahasiswa->uuid) !!}</td>
                </tr>
            @endforeach
        </x-component.table>
    </x-component.card>
</x-app>
