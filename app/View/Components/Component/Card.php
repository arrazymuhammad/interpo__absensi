<?php

namespace App\View\Components\Component;

use Illuminate\View\Component;

class Card extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $type = "default";
    public $title;
    public $createUrl;
    public $createTitle;
    public $actions;
    public function __construct($type = null, $title = null, $createUrl = null, $createTitle = null, $actions = null)
    {
        $this->type = $type;
        $this->title = $title;
        $this->createUrl = ($createUrl) ? $createUrl : url()->current()."/create";
        $this->createTitle = $createTitle;
        $this->actions = $actions;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.component.card');
    }
}
