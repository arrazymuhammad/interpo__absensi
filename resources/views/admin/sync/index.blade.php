<x-app page-title="Sinkronisasi Data">
    <x-component.card title="Sinkronisasi Data" create-title="Tambah Data">
        <x-slot name="actions">
            <a href="{{ url('admin/sync/update/all') }}" class="btn btn-info">
                <i class="fa fa-refresh"></i> Sinkronkan Data
            </a>
        </x-slot>
        <x-component.table header="Nama Data|Terakhir Sinkron{width=250px}">
            @foreach ($list_data->sortBy('created_at') as $item)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>
                        <div class="btn-group">
                            <a href="{{ url('admin/sync/update', $item->uuid) }}" class="btn btn-info"><i
                                    class="fa fa-refresh"></i> Update</a>
                            <x-component.button.delete uuid="{{ $item->uuid }}" />
                        </div>
                    </td>
                    <td>{{ $item->nama }}</td>
                    <td>{{ $item->last_update ? $item->last_update->diffForHumans() : '-' }}</td>
                </tr>
            @endforeach
        </x-component.table>
    </x-component.card>
</x-app>
