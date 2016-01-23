<?php
namespace app\controllers;

use \core\AppController;

class MainController extends AppController {

    public function index()
    {
        $this->requireAuth();

        $this->render('index');
    }

}