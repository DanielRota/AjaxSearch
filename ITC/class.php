<?php

class API
{
    public $connection;

    function __construct()
    {
        $this->database_connection();
    }

    function database_connection()
    {
        try {
            $this->connection = new PDO("mysql:host=localhost:3307;dbname=itc", "root");
            $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo "Connection failed..." . $e->getMessage();
        }
    }

    function fetch_all()
    {
        $data = [];
        $query = "SELECT Products.pkProduct, Products.Name, Products.Description, Products.Brand, Products.Model, Products.Price, Categories.Name AS CategoryName
                  FROM (Products INNER JOIN Categories ON Products.fkCategory = Categories.pkCategory)";
        $statement = $this->connection->prepare($query);
        if ($statement->execute()) {
            while ($row = $statement->fetch(PDO::FETCH_ASSOC)) {
                $data[] = $row;
            }
            if (!$data) {
                return "Nessun risultato trovato";
            } else {
                return $data;
            }
        }
    }

    function fetch_single($id)
    {
        if (!preg_match('/^(|[A-Za-z]\d{0,3})$/', $id) && !(strlen($id) == 0)) {
            return "Il codice inserito non rispetta il formato richiesto";
        } else {
            $data = [];
            $query = "SELECT Products.pkProduct, Products.Name, Products.Description, Products.Brand, Products.Model, Products.Price, Categories.Name AS CategoryName
                    FROM (Products INNER JOIN Categories ON Products.fkCategory = Categories.pkCategory) WHERE Products.pkProduct LIKE '$id%'";
            $statement = $this->connection->prepare($query);
            if ($statement->execute()) {
                while ($row = $statement->fetch(PDO::FETCH_ASSOC)) {
                    $data[] = $row;
                }
                if (!$data) {
                    return "Nessun risultato trovato";
                } else {
                    return $data;
                }
            }
        }
    }
}