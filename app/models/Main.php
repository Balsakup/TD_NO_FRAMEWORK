<?php
namespace app\models;

use \core\AppModel;

class Main extends AppModel {

    public function __construct()
    {
        parent::__construct();

        $this->setTable('classement');
    }

}