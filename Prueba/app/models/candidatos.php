<?php
// candidatos  tiene funciones de llamado a la base de datos
class Candidatos {

    //variables
    private $conn;
    private $table_name = "candidato"; 
    public $id;
    public $nombre;

    public function __construct(PDO $db) {
        $this->conn = $db;
    }
//obtener la informacion de los candidatos por consultas 
    public function obtenerCandidato() {
        $query = "SELECT id, nombre FROM " . $this->table_name;
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