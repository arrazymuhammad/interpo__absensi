<x-app page-title="Perkuliahan" extends="datatable">
    <x-component.card title="Data Kehadiran Perkuliahan {{ $kelas->nama }} ">
        <x-slot name="actions">
            <a href="{{ url('dosen/kehadiran-perkuliahan', $kelas->uuid) }}" class="btn btn-info">
                <i class="fa fa-arrow-left"></i> Kembali
            </a>
        </x-slot>
        <x-component.table header="NIM|Username|Nama Mahasiswa|Waktu Masuk" noAction datatable>
            @foreach ($list_peserta->sortBy('mahasiwa.nim') as $peserta)
                <tr>
                    <td>{{ $peserta->mahasiswa->nim }}</td>
                    <td>{{ $peserta->mahasiswa->username }}</td>
                    <td>{{ $peserta->mahasiswa->nama }}</td>
                    <td>{{ $peserta->waktu_absen }}</td>
                </tr>
            @endforeach
        </x-component.table>
    </x-component.card>
</x-app>
