<?php
namespace app\controllers;

use \core\AppController;

class MainController extends AppController {

    public function index($order = [])
    {
        $this->loadModel();

        if (empty($order))
            $order = [ 'rang' => 'asc' ];

        $title_for_layout = 'Gestion des joueurs';
        $classement       = $this->Main->find([
            'order'  => $order
        ], null, [
            'joueur' => [ 'idJoueur', 'id' ],
            'pays'   => [ 'codePays', 'code' ]
        ]);

        $this->set(compact('title_for_layout', 'classement'));
        $this->render('index');
    }

}