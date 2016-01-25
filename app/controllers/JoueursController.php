<?php
namespace app\controllers;

use \core\AppController;

class JoueursController extends AppController {

    public function add()
    {
        $this->render('add');
    }

}