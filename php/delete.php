<?php

    session_start();
    require 'conexionbd.php';

    $no_boletaA = $_SESSION['boletaA'];
    $contrasena = $_SESSION['contrasena'];

    if(!isset($no_boletaA)){
        header("location: ./loginAdministrativo.php");
    }

    $consulta= ("SELECT * FROM administrador;");
    $queryConsulta= mysqli_query($conexion, $consulta);
    $resultConsulta=mysqli_fetch_array($queryConsulta);

    $boleta_PA = $resultConsulta[0];
    $nombre_PA = $resultConsulta[2];
    $apellidos_PA = $resultConsulta[3];

    require 'conexionbd.php';

    echo $No_Boleta=$_GET["no_boleta"];

    $id = $_GET['id'];

    $consulta_sql= "DELETE FROM alumno WHERE (No_Boleta = '$id')";
    $query_mysql= mysqli_query($conexion, $consulta_sql);

    if ($query_mysql){
            header("Location: ./datosIdentidad.php");
    }

    mysqli_close($conexion);



?>