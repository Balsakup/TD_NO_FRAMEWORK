<?php
namespace app\models;

use \core\AppModel;

class Joueurs extends AppModel {

    public function __construct()
    {
        parent::__construct();

        $this->setTable('joueur');
    }

}