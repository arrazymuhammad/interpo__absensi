<?php

namespace App\View\Components\Component\Form;

class Select extends Form
{
    public $options;
    public function __construct($label, $name, $value = null, $id = null, $class = null, $options = [])
    {
        parent::__construct($label, $name, $value, $id, $class);
        $this->options = $this->getOption($options);
    }

    public function render()
    {
        return view('components.component.form.select');
    }

    public function getOption($options)
    {
        if (isset($options[0]['key'])) return $options;
        return $this->convertToAssoc($options);
    }

    function convertToAssoc($arr)
    {
        $newArr = [];
        foreach ($arr as $value) {
            $newArr[] = ['key' => $value, 'value' => $value];
        }
        return $newArr;
    }
}
