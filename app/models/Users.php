<?php
namespace app\models;

use \core\AppModel;

class Users extends AppModel {

    public function login($username, $password)
    {
        $password = md5($password);
        $req      = "SELECT COUNT(*) FROM users WHERE username = '$username' AND password = '$password'";
    }

}