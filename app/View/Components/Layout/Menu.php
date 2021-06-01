<?php

namespace App\View\Components\Layout;

use Illuminate\View\Component;

class Menu extends Component
{
    public function __construct()
    {
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        if (auth()->guard('web')->check()) return view("components.layout.menu.pegawai");
        if (auth()->guard('mahasiswa')->check()) return view("components.layout.menu.mahasiswa");
    }

    public function isActive($segment, $item)
    {
        if ($segment == 2) {
            if (is_array($item)) if (in_array(request()->segment($segment), $item)) return "active";
            if (request()->segment($segment) == $item) return "active";
        } else {
            if (is_array($item)) if (in_array(request()->segment($segment), $item)) return "active";
            if (request()->segment($segment) == $item) return "active";
        }
    }

    public function isActiveIcon($segment, $item)
    {
        if (is_array($item)) {
            if (in_array(request()->segment($segment), $item)) return "icon-thumbnail bg-success";
        } else {
            if (request()->segment($segment) == $item) return "icon-thumbnail bg-success";
        }
        return "icon-thumbnail";
    }
}
