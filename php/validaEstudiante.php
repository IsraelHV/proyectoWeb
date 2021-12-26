<?php

    require 'conexionbd.php';

    session_start();

    $no_boleta = $_POST['no_boleta'];
    $correo_electronico= $_POST['correo_electronico'];

    $q = "SELECT COUNT(*) AS contar FROM alumno WHERE (No_Boleta = '$no_boleta' AND correo_Electronico='$correo_electronico')";
    $query = mysqli_query($conexion,$q);
    $array = mysqli_fetch_array($query);

    if($array['contar']>0){
        $_SESSION['No_Boleta'] = $no_boleta;
        $_SESSION['correo_Eletronico'] = $correo_electronico;
        header("location: ./MenuEstudiante.php");
    } else{
        header("location: ./loginEstudiante.php");
    }

    mysqli_close($conexion);

?>
























    session_start();

$no_boleta = $_POST['no_boleta'];
$correo_electronico= $_POST['correo_electronico'];

$q = "SELECT COUNT(*) AS contar FROM alumno WHERE (No_Boleta = '$no_boleta' AND correo_Electronico='$correo_electronico')";
$query = mysqli_query($conexion,$q);
$array = mysqli_fetch_array($query);

if($array['contar']>0){
    $_SESSION['No_Boleta'] = $no_boleta;
    $_SESSION['correo_Eletronico'] = $correo_electronico;
    header("location: ./MenuEstudiante.php");
} else{
    header("location: ./loginEstudiante.php");
}

mysqli_close($conexion);