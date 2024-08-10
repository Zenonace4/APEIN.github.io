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
$sql = $con->prepare("update Registro set usuario=?,contra=?,email=? where codigo=?");
$sql->bindParam(1, $usuario);
$sql->bindParam(2, $contra);
$sql->bindParam(3, $email);
$sql->bindParam(4, $codigo);
    try {
        $sql->execute();
        echo "REGISTRO";
    } catch (Exception $e) {
        echo "Error3" . $e->getMessage();
    }
?>