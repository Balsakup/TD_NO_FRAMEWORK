<?php
namespace core;

class AppController {

    public function render($view, $layout = 'default')
    {
        require "app/views/layouts/$layout.balsa";
    }

}