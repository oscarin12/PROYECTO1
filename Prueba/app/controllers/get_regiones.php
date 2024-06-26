<?php
//llama a la base de datos para la regiones y comunas

// archivos necesarios
include_once 'conexion.php';
include_once '../models/regiones.php';
include_once '../models/comuna.php';
// Crear una instancia de la clase DB 
try {
    $database = new DB();
    $db_connection = $database->getConnection();

    // Crear una instancia de la clase Region y pasar la conexión a la base de datos
    $region = new Region($db_connection);
    $comuna = new comuna($db_connection);

    // Obtener las regiones y mostrarlas en la consola
    $regiones = $region->obtenerRegiones();
    $comunas = $comuna->obtenerComuna();
    //variable para imprimir
    $data = array(
        "regiones" => $regiones,
        "comunas" => $comunas
    );

    echo json_encode($data);
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
