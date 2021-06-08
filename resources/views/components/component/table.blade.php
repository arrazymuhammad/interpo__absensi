<table class="table table-striped table-bordered @if ($datatable) table-datatable @endif">
    <thead>
        @if ($withAction)
            <th width="50px">No</th>
            <th width="150px">Aksi</th>
        @endif
        @foreach ($header as $h)
            @if (is_array($h))
                <th {{ $h['param'] }}>{{ $h['text'] }}</th>
            @else
                <th>{{ $h }}</th>
            @endif
        @endforeach
    </thead>
    <tbody>
        {{ $slot }}
    </tbody>
</table>
<x-component.modal.delete />
