<?php
// Detalles de conexión a la base de datos
$servername = "localhost";
$username = "5to_agbd";
$password = "Trigg3rs!";
$database = "5to_BetGambler";

// Crear la conexión
$conn = new mysqli($servername, $username, $password, $database);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Aquí puedes realizar operaciones en la base de datos

// Cerrar la conexión
$conn->close();
?>
