<?php
require_once 'conexion.php';

// Verificar si se envió el formulario
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST["registrar"])) {
    $contraseña = $_POST['contraseña'];
    $nombre = $_POST['nombre'];
    $apodo = $_POST['apodo'];
    $dni = $_POST['dni'];
    $mail = $_POST['mail'];
    $edad = $_POST['edad'];
    $fechaNacimiento = $_POST['fecha_nacimiento'];

    $sql = "CALL AltaUsuario(?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);

    if (!$stmt) {
        die("Error al preparar la llamada al stored procedure: " . $conn->error);
    }

    $stmt->bind_param("ssssiss", $contraseña, $nombre, $apodo, $dni, $mail, $edad, $fechaNacimiento);

    $result = $stmt->execute();

    if (!$result) {
        die("Error al ejecutar el stored procedure: " . $stmt->error);
    }

    $stmt->close();
}


$conn->close();
?>
