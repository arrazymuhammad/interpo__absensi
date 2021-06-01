<?php

namespace App\View\Components\Component;

use Illuminate\View\Component;

class Form extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */

    public $action;
    public $edit;
    public $enctype;

    public function __construct($action = null, $edit = null, $enctype = false)
    {
        $this->action = ($action) ? url($action) : $this->getAction();
        $this->edit = $edit;
        $this->enctype = $enctype;
    }

    public function render()
    {
        return view('components.component.form');
    }

    public function getAction()
    {
        $current = url()->current();
        $pop = explode("/", $current);
        $pop = array_pop($pop);
        $url = str_replace("/$pop", "", $current);
        return $url;
    }
}
