<?php
include "db.php";
$codigo =$_GET['codigo'];
//$codigo =filter_var($_GET['codigo'], FILTER_SANITIZE_STRING);
//$codigo= "a";
$db = new Database();
$con = $db->conectar();
$sql = $con->prepare("select*from Registro where codigo=?");
$sql->bindParam(1, $codigo);
$sql->execute();
$Registro = array();
while ($fila = $sql->fetch(PDO::FETCH_ASSOC)) {
 $Registro[] = $fila; 
}
echo json_encode($Registro);
$sql->close();
?>