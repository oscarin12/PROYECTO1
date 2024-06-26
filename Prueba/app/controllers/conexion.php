<?php
//conexion a la base de datos
class DB
{
    private $host = '127.0.0.1';// cambiar si es necezario
    private $port = '3305';// cambiar si es necezario
    private $db = 'votacion_bd';
    private $user = 'root';// cambiar si es necezario
    private $password = '1234';// cambiar si es necezario
    private $charset = 'utf8mb4';
    private $pdo;

    public function __construct()
    {
        $dsn = "mysql:host=$this->host;port=$this->port;dbname=$this->db;charset=$this->charset";
        try {
            $this->pdo = new PDO($dsn, $this->user, $this->password);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
          
        } catch (PDOException $e) {
            echo 'Error de conexión: ' . $e->getMessage();
        }
    }

    public function getConnection()
    {
        return $this->pdo;
     
    }
}


