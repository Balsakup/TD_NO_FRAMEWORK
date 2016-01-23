<?php
namespace app\controllers;

use \core\AppController;

class MainController extends AppController {

    public function index()
    {
        echo 'LOL';

        $this->render('index');
    }

}