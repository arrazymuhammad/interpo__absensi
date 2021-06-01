<div class="btn-group">
    <a href="{{ url()->current() }}/{{ $uuid }}" class="btn btn-info"><i class="fa fa-info"></i></a>
    <a href="{{ url()->current() }}/{{ $uuid }}/edit" class="btn btn-warning"><i class="fa fa-edit"></i></a>
    <x-component.button.delete uuid="{{ $uuid }}" />
</div>
