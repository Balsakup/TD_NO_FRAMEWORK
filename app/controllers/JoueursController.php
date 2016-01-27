<?php
namespace app\controllers;

use \core\AppController;

class JoueursController extends AppController {

    public function add()
    {
        $error_lastname  = false;
        $error_firstname = false;
        $prenom          = false;
        $nom             = false;
        $codePays        = false;

        if (isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['codePays']))
        {
            $error_lastname  = empty($_POST['nom']);
            $error_firstname = empty($_POST['prenom']);

            $prenom          = $_POST['prenom'];
            $nom             = $_POST['nom'];
            $codePays        = $_POST['codePays'];

            $this->loadModel();

            if ($this->Joueurs->save(compact('prenom', 'nom', 'codePays')))
            {

            }
            else
                die('La sauvegarde du joueur s\'est mal déroulée.');
        }


        $this->set(compact('error_lastname', 'error_firstname', 'prenom', 'nom', 'codePays'));
        $this->render('add');
    }

}