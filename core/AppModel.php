<?php
namespace core;

class AppModel {

    private $conn;
    private $table;

    public function __construct()
    {
        try
        {
            $this->conn  = new \PDO('mysql:host=localhost;dbname=atp', 'root', 'root');
            $this->table = strtolower(explode('\\', get_class($this))[2]);
        }
        catch (\PDOException $e)
        {
            die('Erreur ! ' . $e->getMessage() . '<br>');
        }
    }

    public function count($conditions = [], $field = '*')
    {
        $cond  = '';

        if (isset($conditions['where']))
        {
            $cond = [];

            foreach ($conditions['where'] as $k => $v)
                array_push($cond, "$k = '$v'");

            $cond = ' WHERE ' . implode(' AND ', $cond);
        }

        return $this->conn->query("SELECT COUNT($field) FROM $this->table $cond")->fetchColumn();
    }

    public function find($conditions = [], $fields = [], $join = [])
    {
        $cond   = '';
        $j      = '';
        $order  = '';

        if (empty($fields))
            $fields = '*';
        else
            $fields = implode(', ', $fields);

        if (isset($conditions['where']))
        {
            $cond = [];

            foreach ($conditions['where'] as $k => $v)
                array_push($cond, "$k = '$v'");

            $cond = ' WHERE ' . implode(' AND ', $cond);
        }

        if (isset($conditions['order']))
        {
            $order = [];

            foreach ($conditions['order'] as $field => $type)
                array_push($order, "$field $type");

            $order = ' ORDER BY ' . implode(' ', $order);
        }

        if (!empty($join)) {
            $j = [];

            foreach ($join as $table => $keys)
                array_push($j, "JOIN $table ON " . $keys[0] . ' = ' . $keys[1]);

            $j = implode(' ', $j);
        }

        return $this->conn->query("SELECT $fields FROM $this->table $j $cond $order")->fetchAll(\PDO::FETCH_OBJ);
    }

    public function setTable($table)
    {
        $this->table = $table;
    }

    public function __destruct()
    {
        $this->conn = null;
    }

}