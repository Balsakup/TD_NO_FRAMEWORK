<?php
namespace core;

class AppModel {

    private $conn;

    public function __construct()
    {
        try
        {
            $this->conn = new \PDO('mysql:host=localhost;dbname=atp', 'root', 'root');
        }
        catch (\PDOException $e)
        {
            die('Erreur ! ' . $e->getMessage() . '<br>');
        }
    }

    public function count($conditions = [], $field = '*')
    {
        $table = strtolower(explode('\\', get_class($this))[2]);
        $cond  = '';

        if (isset($conditions['where']))
        {
            $cond = [];

            foreach ($conditions['where'] as $k => $v)
                array_push($cond, "$k = $v");

            $cond = ' WHERE ' . implode(' AND ', $cond);
        }

        $req   = "SELECT COUNT($field) FROM $table $cond";
        $stmt  = $this->conn->prepare($req);
        $stmt->execute();

        print_r($stmt->fetch());
        die();
    }

    public function __destruct()
    {
        $this->conn = null;
    }

}