<?php
include "db.php";
$codigo = $_POST['codigo'];
$usuario = $_POST['usuario'];
$contra = $_POST['contra'];
$email = $_POST['email'];
//$codigo= "a";
//$usuario="a";
//$contra ="a";
//$email="a";
$db = new Database();
$con = $db->conectar();
$sql = $con->prepare("INSERT INTO Registro (codigo,usuario,contra,email) VALUES (?,?,?,?)");
$sql->bindParam(1, $codigo);
$sql->bindParam(2, $usuario);
$sql->bindParam(3, $contra);
$sql->bindParam(4, $email);
    try {
        $sql->execute();
        echo "REGISTRO";
    } catch (Exception $e) {
        echo "Error3" . $e->getMessage();
    }
?>