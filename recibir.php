<?php
require_once "ConexionDB.php";
$conexion=ConexionDB::getConexion("tienda");

if(isset($_POST["correo"])){
    $correo=$_POST["correo"]."%";
    $sql="SELECT nombre,apellidos,email FROM usuarios WHERE email like :correo ";
    $resultado=$conexion->prepare($sql);
    $resultado->bindParam(":correo",$correo);
    $resultado->execute();
    $row=$resultado->fetchAll(PDO::FETCH_ASSOC);
    //muestro la fila como json
    echo json_encode($row);
}