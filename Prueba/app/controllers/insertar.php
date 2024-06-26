<?php
// insertar la informacion del from  que envia insertar.js 

// archivos necesarios
require_once 'conexion.php';

// Verificar si los datos han sido enviados mediante POST
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Conectar a la base de datos
    $db = new DB(); // Instancia de la clase DB
    $pdo = $db->getConnection(); // Obtener la conexión PDO

    // Obtener los datos del formulario
    $nombre = $_POST['nombre'] ?? '';
    $alias = $_POST['alias'] ?? '';
    $rut = $_POST['rut'] ?? '';
    $email = $_POST['email'] ?? '';
    $region = $_POST['region'] ?? '';
    $comuna = $_POST['comuna'] ?? '';
    $candidato = $_POST['candidato'] ?? '';
    $enterado = isset($_POST['tipo']) ? implode(", ", $_POST['tipo']) : ''; // Capturar los valores del array tipo[]


    // la consulta SQL
    $stmt = $pdo->prepare("INSERT INTO votaciones (nombrevotacion, alias, rut, email, region, comuna, candidato, tipo) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");

    // Ejecutar la consulta
    try {
        $stmt->execute([$nombre, $alias, $rut, $email, $region, $comuna, $candidato, $enterado]);

        // Comprobar si la inserción fue exitosa
        if ($stmt->rowCount() > 0) {
            echo ("
            <h1>Datos insertados correctamente.</h1>");
        } else {
            echo ( "<h1>No se insertaron los datos.</h1>");
        }
    } catch (PDOException $e) {
        echo ( "<h1>Error al insertar los datos: " . $e->getMessage() ."</h1>");
    }
} else {
    echo ( "<h1>Método de solicitud no válido.</h1>");
}
?>



