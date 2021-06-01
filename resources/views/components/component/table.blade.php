<table class="table table-striped table-bordered @if ($datatable) table-datatable @endif">
    <thead>
        @if ($withAction)
            <th width="50px">No</th>
            <th width="150px">Aksi</th>
        @endif
        @foreach ($header as $h)
            <th>{{ $h }}</th>
        @endforeach
    </thead>
    <tbody>
        {{ $slot }}
    </tbody>
</table>
<x-component.modal.delete />
