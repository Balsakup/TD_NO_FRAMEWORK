<?php
namespace app\controllers;

use \core\AppController;

class UsersController extends AppController {

    public function login()
    {
        if (isset($_POST['username']) && isset($_POST['password']))
        {
            $this->loadModel();

            $this->Users->count([
                'where' => [
                    'username' => 'LOL',
                    'password' => md5('LOL')
                ]
            ]);
        }

        $this->render('login', 'user');
    }

}