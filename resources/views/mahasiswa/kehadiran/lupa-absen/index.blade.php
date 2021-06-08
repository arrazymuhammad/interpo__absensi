<x-app page-title="Riwayat Lupa Absensi Perkuliahan" extends="datatable">
    <a href="{{ url('mahasiswa/kehadiran-perkuliahan', $kelas->uuid) }}" class="btn btn-warning">
        <i class="fa fa-arrow-left"></i> Kembali
    </a>
    <a href="{{ url('mahasiswa/kehadiran-perkuliahan', $kelas->uuid) }}/lupa-absen/create"
        class="btn btn-info float-right">
        <i class="fa fa-plus"></i> Tambah Absensi
    </a>
    <x-component.card>
        <x-slot name="title">
            <b>{{ $kelas->matakuliah->kode }}</b> {{ $kelas->matakuliah->nama }} <br>
            Dosen : {{ $kelas->dosen->pegawai->nama_gelar }}
        </x-slot>
        <x-component.table header="No{width=50px}|Aksi{width=150px}|Pertemuan Ke|Waktu Absensi|Status" noAction>
            @foreach ($list_absensi->sortBy('pertemuan_ke') as $absensi)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>
                        <a href="#" target="popup"
                            onclick="window.open('{{ url($absensi->surat_pengantar) }}','popup','width=800,height=600'); return false;"
                            class="btn btn-info btn-block"><i class="fa fa-eye"></i> Lihat Pengantar
                        </a>
                        @if ($absensi->bukti)
                            <a href="#" target="popup"
                                onclick="window.open('{{ url($absensi->bukti) }}','popup','width=800,height=600'); return false;"
                                class="btn btn-info btn-block"><i class="fa fa-eye"></i> Lihat Bukti
                            </a>
                        @else
                            {!! $absensi->mahasiswa->checkAtensi($kelas->uuid, $absensi->pertemuan_ke) !!}
                        @endif
                    </td>
                    <td width="150px" class="text-center">{{ $absensi->pertemuan_ke }}</td>
                    <td>{{ $absensi->created_at }}</td>
                    <td class="text-center">{!! $absensi->status_label !!}</td>
                </tr>
            @endforeach
        </x-component.table>
    </x-component.card>
</x-app>
