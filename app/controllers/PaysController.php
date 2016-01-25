<?php
namespace app\controllers;

use \core\AppController;

class PaysController extends AppController {

    public function getAll()
    {
        $this->loadModel();

        return $this->Pays->find([
            'order' => [ 'libelle' => 'ASC' ]
        ]);
    }

}