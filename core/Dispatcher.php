<?php
namespace core;

class Dispatcher {

    private $controller;
    private $action;
    private $params;

    public function __construct($get)
    {
        $this->controller = (isset($get['controller']) && !empty($get['controller']) ? ucfirst($get['controller']) : 'Main') . 'Controller';
        $this->action     = isset($get['action']) && !empty($get['action']) ? $get['action'] : 'index';

        unset($get['controller']);
        unset($get['action']);

        $this->params     = $get;
    }

    public function dispatch()
    {
        $controller = "app\\controllers\\$this->controller";

        if (file_exists($controller . '.php'))
        {
            $controller = new $controller();
            $action     = $this->action;

            $controller->$action();
        }
        else
            die('Le controlleur n\'existe pas !');
    }

    public function toString()
    {
        return "Dispatcher[controller: $this->controller, action: $this->action, params: { " . implode($this->params) . " }]";
    }

}