<div class="sidebar-overlay-slide from-top" id="appMenu">
	<div class="row">
        @foreach($moduleList as $module)
		<div class="col-6 overlay-item">
		    <a href="{{$getMenuUrl($module['url'])}}" class="tile" style="background: {{$module['bg-color']}};">
			    <span class="tile-big">{{$module['title']}}</span>
				<span class="tile-small">{{$module['tag']}}</span>
			</a>
		</div>
        @endforeach
	</div>
</div>
