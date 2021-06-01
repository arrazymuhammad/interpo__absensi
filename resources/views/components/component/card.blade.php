<div class="card card-{{ $type }}">
    <div class="card-header">
        <div class="float-right" style="margin-top:-10px">
            <div class="btn-group">
                @if ($createTitle)
                    <a href="{{ url($createUrl) }}" class="btn btn-info"><i class="fa fa-plus"></i>
                        {{ $createTitle }}
                    </a>
                @endif
                {{ $actions }}
            </div>
        </div>
        <div class="card-title">
            {{ $title }}
        </div>
    </div>
    <hr>
    <div class="card-body">
        {{ $slot }}
    </div>
</div>
