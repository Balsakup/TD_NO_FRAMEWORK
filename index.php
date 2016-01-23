<?php
use \core\Autoloader;
use \core\AppController;

require 'core/Autoloader.php';

Autoloader::register();

$dispatcher = new \core\Dispatcher($_GET);
$dispatcher->dispatch();