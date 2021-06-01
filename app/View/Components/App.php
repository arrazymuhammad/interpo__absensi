<?php

namespace App\View\Components;

use Illuminate\View\Component;

class App extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $container = 'container';
    public $pageTitle;
    public $menu_list = "";
    public $extends;
    public function __construct($container = null, $pageTitle = null, $extends = null)
    {
        if ($container) $this->container = $container;
        if ($pageTitle) $this->pageTitle = $pageTitle;
        $this->extends = $this->getExtends($extends);
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.app');
    }

    function getExtends($extends)
    {
        if (!$extends) return [];
        return explode("|", $extends);
    }

    function extendable($extend)
    {
        return in_array($extend, $this->extends);
    }
}
