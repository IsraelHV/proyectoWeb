<?php

 
    require 'conexionbd.php';

    session_start();

    $no_boletaA = $_POST['no_boletaA'];
    $contrasena= $_POST['contrasena'];

    $q = "SELECT COUNT(*) AS contar FROM administrador WHERE (boleta_PA = '$no_boletaA' AND contrasena='$contrasena')";
    $query = mysqli_query($conexion,$q);
    $array = mysqli_fetch_array($query);

    if($array['contar']>0){
        $_SESSION['boletaA'] = $no_boletaA;
        $_SESSION['contrasena'] = $contrasena;
        header("location: ./menuAdministrador.php");
    } else{
        header("location: ./loginAdministrador.php");
    }

    mysqli_close($conexion);

?>