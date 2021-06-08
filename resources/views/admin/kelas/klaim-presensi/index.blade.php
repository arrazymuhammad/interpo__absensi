<x-app page-title="Perkuliahan" extends="datatable">
    <x-component.card title="Daftar Kalim Presensi Mahasiswa">
        <x-slot name="actions">
            <a href="{{ url('admin/kehadiran-perkuliahan/klaim-presensi') }}" class="btn btn-info">
                <i class="fa fa-arrow-left"></i> Kembali
            </a>
        </x-slot>
        <x-component.table
            header="No{width=50px}|Aksi{width=150px}|NIM|Nama Mahasiswa|Username|Waktu Absensi|Status{width=100px}|Verifikasi{width=150px}"
            noAction>
            @foreach ($list_klaim->sortBy('created_at') as $absensi)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>
                        @if ($absensi->surat_pengantar)
                            <a href="#" target="popup"
                                onclick="window.open('{{ url($absensi->surat_pengantar) }}','popup','width=800,height=600'); return false;"
                                class="btn btn-info btn-block"><i class="fa fa-eye"></i> Lihat Surat Pengantar
                            </a>
                        @endif
                        @if ($absensi->bukti)
                            <a href="#" target="popup"
                                onclick="window.open('{{ url($absensi->bukti) }}','popup','width=800,height=600'); return false;"
                                class="btn btn-info btn-block"><i class="fa fa-eye"></i> Lihat Bukti
                            </a>
                        @else
                            {!! $absensi->mahasiswa->checkAtensi($absensi->id_kelas, $absensi->pertemuan_ke) !!}
                        @endif
                    </td>
                    <td width="150px" class="text-center">{{ $absensi->mahasiswa->nim }}</td>
                    <td width="150px" class="text-center">{{ $absensi->mahasiswa->nama }}</td>
                    <td width="150px" class="text-center">{{ $absensi->mahasiswa->username }}</td>
                    <td>{{ $absensi->created_at }}</td>
                    <td class="text-center">
                        {!! $absensi->status_label !!}
                    </td>
                    <td>
                        @if ($absensi->status == 0)
                            <a href="{{ url('admin/kehadiran-perkuliahan/klaim-presensi', $absensi->uuid) }}/verifikasi"
                                class="btn btn-info btn-block"><i class="fa fa-check"></i>Verifikasi</a>
                        @else
                            Terverifikasi
                        @endif
                    </td>
                </tr>
            @endforeach
        </x-component.table>
    </x-component.card>
</x-app>
