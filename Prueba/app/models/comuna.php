<?php
//comuna  tiene funciones de llamado a la base de datos 
class Comuna {
    private $conn;
    private $table_name = "comuna"; 

    public $id;
    public $nombre;

    public function __construct(PDO $db) {
        $this->conn = $db;
    }

    public function obtenerComuna() {
        $query = "SELECT id, nombre, region_id FROM " . $this->table_name;
        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        // Obtener todas las filas como un array asociativo
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        // Imprimir las regiones en formato JSON en la consola
       // echo json_encode($result);

        return $result; 
    }
}
?>
