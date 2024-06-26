<?php
//llama a la base de datos para los candidatos 

// archivos necesarios
include_once 'conexion.php'; 
include_once '../models/candidatos.php';

// Crear una instancia de la clase DB 
try {
    $database = new DB();
    $db_connection = $database->getConnection();
    
    // Crear una instancia de la clase Region y pasar la conexión a la base de datos
    $candidato = new candidatos($db_connection);
    

    // Obtener las regiones y mostrarlas en la consola
   $candidatos = $candidato->obtenerCandidato();
 
//variable para imprimir
$data = array(

    "candidato"=>$candidatos 
   
);

echo json_encode($data);


} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
