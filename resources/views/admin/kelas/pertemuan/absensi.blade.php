<x-app page-title="Perkuliahan" extends="datatable">
    <x-component.card title="Detail Absensi Mahasiswa Kelas {{ $kelas->nama }}">
        <x-slot name="actions">
            <a href="{{ url('admin/kehadiran-perkuliahan/pertemuan', $pertemuan->uuid) }}" class="btn btn-info">
                <i class="fa fa-arrow-left"></i> Kembali
            </a>
        </x-slot>
        <dl>
            <dt>Nama Kelas</dt>
            <dd>{{ $kelas->nama }}</dd>
            <dt>Nama Matakuliah</dt>
            <dd>{{ $kelas->matakuliah->nama }}</dd>
            <dt>Tanggal Pelaksanaan (Pertemuan Ke-)</dt>
            <dd>{{ $pertemuan->tanggal_pelaksanaan }} (Pertemuan Ke-{{ $pertemuan->pertemuan_ke }})</dd>
        </dl>
    </x-component.card>
    <x-component.card title="Absensi Mahasiswa">
        <x-component.table
            header="No{width=50px}|Aksi{width=150px}|NIM|Nama Mahasiswa|Username|Waktu Absensi|Status{width=100px}|Verifikasi{width=150px}"
            noAction>
            @foreach ($list_absensi->sortBy('mahasiswa.nim') as $absensi)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>
                        <a href="#" target="popup"
                            onclick="window.open('{{ url($absensi->bukti) }}','popup','width=800,height=600'); return false;"
                            class="btn btn-info btn-block"><i class="fa fa-eye"></i> Lihat Bukti
                        </a>
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
                            <a href="{{ url('admin/kehadiran-perkuliahan/verifikasi-kehadiran', $pertemuan->uuid) . "/$absensi->uuid" }}"
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
