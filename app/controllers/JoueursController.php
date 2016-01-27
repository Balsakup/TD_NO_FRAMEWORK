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

            if (!$error_firstname && !$error_lastname)
            {
                $prenom   = $_POST['prenom'];
                $nom      = $_POST['nom'];
                $codePays = $_POST['codePays'];

                $this->loadModel();

                if ($this->Joueurs->save(compact('prenom', 'nom', 'codePays')) )
                {
                    $idJoueur = $this->Joueurs->find([
                        'where' => [
                            'prenom'   => $prenom,
                            'nom'      => $nom,
                            'codePays' => $codePays
                        ]
                    ]);

                    $this->Joueurs->setTable('classement');

                    $idJoueur = current($idJoueur)->id;
                    $annee    = date('Y');
                    $rang     = $this->Joueurs->max(null, 'rang') + 1;
                    $points   = 0;
                    $diff     = 0;
                    $nbMatchs = 0;

                    if ($this->Joueurs->save(compact('idJoueur', 'annee', 'rang', 'points', 'diff', 'nbMatchs')))
                    {
                        $this->session->setFlash('Le joueur a bien été ajouté :)');
                        header('Location: ?controller=main');
                        return;
                    }
                    else
                        die('La sauvegarde du joueur s\'est mal déroulée.');
                }
                else
                    die('La sauvegarde du joueur s\'est mal déroulée.');
            }
        }


        $this->set(compact('error_lastname', 'error_firstname', 'prenom', 'nom', 'codePays'));
        $this->render('add');
    }

    public function edit($id)
    {
        $this->loadModel();

        $id              = $id['id'];
        $error_lastname  = false;
        $error_firstname = false;
        $joueur          = current($this->Joueurs->find([ 'where' => [ 'id' => $id ] ]));
        $prenom          = $joueur->prenom;
        $nom             = $joueur->nom;
        $codePays        = $joueur->codePays;

        if (isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['codePays'])) {
            $error_lastname = empty($_POST['nom']);
            $error_firstname = empty($_POST['prenom']);

            if (!$error_lastname && !$error_firstname)
            {
                $prenom   = $_POST['prenom'];
                $nom      = $_POST['nom'];
                $codePays = $_POST['codePays'];

                if ($this->Joueurs->update(compact('prenom', 'nom', 'codePays'), [
                    'where' => [ 'id' => $id ]
                ]))
                {
                    $this->session->setFlash('Le joueur a bien été modifié :)');
                    header('Location: ?controller=main');
                    return;
                }
            }
        }

        $this->set(compact('id', 'error_lastname', 'error_firstname', 'prenom', 'nom', 'codePays'));
        $this->render('edit');
    }

    public function delete($id)
    {
        $id = $id['id'];

        $this->loadModel();

        $this->Joueurs->setTable('classement');

        if ($this->Joueurs->delete('idJoueur', $id))
        {
            $this->Joueurs->setTable('joueur');

            if ($this->Joueurs->delete('id', $id))
            {
                $this->session->setFlash('Le joueur a bien été supprimé :)');
                header('Location: ?controller=main');
            }
        }
        else
            die('Erreur lors de la suppression.');
    }

}