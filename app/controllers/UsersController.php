<?php
namespace app\controllers;

use \core\AppController;

class UsersController extends AppController {

    public function login()
    {
        if (isset($_POST['username']) && isset($_POST['password']))
        {
            $this->loadModel();

            $exist = $this->Users->count([
                'where' => [
                    'username' => 'admin',
                    'password' => md5('admin')
                ]
            ]);

            if ($exist)
            {
                $_SESSION['Auth'] = $_POST;

                header('Location: ?controller=main');
            }
        }

        $this->render('login', 'user');
    }

    public function logout()
    {
        session_destroy();
        header('Location: ?controller=main');
    }

}