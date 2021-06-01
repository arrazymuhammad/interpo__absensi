<?php

namespace App\View\Components\Component\Form;

use Illuminate\View\Component;

class Form extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $label;
    public $name;
    public $value;
    public $id;
    public $class;
    public $type;

    public function __construct($label = null, $name = null, $value = null, $id = null, $class = null, $type = 'text')
    {
        $this->label = $label;
        $this->name = $name;
        $this->value = $value;
        $this->id = $id;
        $this->class = $class;
        $this->type = $type;
    }

    public function render()
    {
        return;
    }
}
