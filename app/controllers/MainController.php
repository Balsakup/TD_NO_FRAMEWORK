<?php
namespace app\controllers;

use \core\AppController;

class MainController extends AppController {

    public function index($order = [])
    {
        $this->loadModel();

        if (empty($order))
            $order = [ 'rang' => 'asc' ];

        $classement = $this->Main->find([
            'order'  => $order
        ], null, [
            'joueur' => [ 'idJoueur', 'id' ],
            'pays'   => [ 'codePays', 'code' ]
        ]);

        $this->set(compact('classement'));
        $this->render('index');
    }

}