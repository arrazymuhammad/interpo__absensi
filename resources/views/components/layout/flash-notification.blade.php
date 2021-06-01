@foreach (['success', 'warning', 'danger', 'info'] as $class)
    @if ($message = Session::get($class))
        <div class="alert alert-{{ $class }} alert-block">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>{{ $message }}</strong>
        </div>
    @endif
@endforeach
