<x-app page-title="Perkuliahan" extends="datatable">
    <x-component.card title="Data Kehadiran Perkuliahan {{ $kelas->nama }} ">
        <x-slot name="actions">
            <a href="{{ url('dosen/kehadiran-perkuliahan', $kelas->uuid) }}" class="btn btn-info">
                <i class="fa fa-arrow-left"></i> Kembali
            </a>
        </x-slot>
        <x-component.table header="NO|Aksi|Pertemuan Ke|Waktu Upload|Jumlah Peserta" noAction datatable>
            @foreach ($list_data->sortBy('pertemuan_ke') as $data)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td width="100px">
                        <a href="{{ url('dosen/kehadiran-perkuliahan/detail-upload-kehadiran', $data->uuid) }}"
                            class="btn btn-info btn-block">
                            <i class="fa fa-info"></i>Detail
                        </a>
                    </td>
                    <td>{{ $data->pertemuan_ke }}</td>
                    <td>{{ $data->created_at }}</td>
                    <td>{{ $data->jumlah_peserta }}</td>
                </tr>
            @endforeach
        </x-component.table>
    </x-component.card>
</x-app>
