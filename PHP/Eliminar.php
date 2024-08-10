<?php
include "db.php";
$codigo = $_POST['codigo'];
//$codigo= "a";
$db = new Database();
$con = $db->conectar();
$sql = $con->prepare("delete from Registro where codigo=?");
$sql->bindParam(1, $codigo);
    try {
        $sql->execute();
        echo "REGISTRO";
    } catch (Exception $e) {
        echo "Error3" . $e->getMessage();
    }
?>