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


    echo $No_Boleta=$_POST["no_boleta"];
    echo $nombre=$_POST["nombre"];
    echo $apellido_Paterno=$_POST["apellido_Paterno"];
    echo $apellido_Materno=$_POST["apellido_Materno"];
    echo $fecha_Nacimiento=$_POST["fecha_nacimiento"];
    echo $genero=$_POST["genero"];
    echo $curp=$_POST["curp"];
    echo $calle=$_POST["calle"];
    echo $numero=$_POST["numero"];
    echo $colonia=$_POST["colonia"];
    echo $alcaldia=$_POST["alcaldia"];
    echo $codigo_Postal=$_POST["codigo_postal"];
    echo $telefono_Celular=$_POST["telefono_celular"];
    echo $correo_Electronico=$_POST["correo_electronico"];
    echo $escuela_IPN=$_POST["escuelaP"];
    echo $entidad_Federativa=$_POST["entidad"];
    echo $promedio=$_POST["promedio"];
    echo "<br>";
    echo $opcion=$_POST["opcion"];
    echo "<br>";

    echo $horario=$_POST["horario"];

    echo "<br>";

    $fecha_Formato = explode("/", $fecha_Nacimiento); 
    $fecha_Nacimiento_Insert = $fecha_Formato[2]."-".$fecha_Formato[1]."-".$fecha_Formato[0];
    echo $fecha_Nacimiento_Insert;

    $consultaNumSalon= ("SELECT COUNT(*) FROM alumno WHERE horario = 1");
    $queryConsultaNumSalon= mysqli_query($conexion, $consultaNumSalon);
    $resultConsultaNumSalon=mysqli_fetch_array($queryConsultaNumSalon);
    $numSalon=$resultConsultaNumSalon[0];
    echo $numSalon;

    for($i=1;$i<=36;$i=$i+1){
        $consultaNumSalon= ("SELECT COUNT(*) FROM alumno WHERE horario = $i");
        $queryConsultaNumSalon= mysqli_query($conexion, $consultaNumSalon);
        $resultConsultaNumSalon=mysqli_fetch_array($queryConsultaNumSalon);
        $numSalon=$resultConsultaNumSalon[0];
        echo $numSalon;

        if($numSalon<=29){
            break;
        }
    }


    if(!empty($_POST["escuela_procedencia"])){
        echo $escuela_NoIPN=$_POST["escuela_procedencia"];
        $consulta_sql= "UPDATE alumno SET `nombre` = '$nombre' , `apellido_Paterno` = '$apellido_Paterno', `apellido_Materno` = '$apellido_Materno' , `fecha_Nacimiento` = '$fecha_Nacimiento_Insert', `genero` = '$genero', `curp`= '$curp', `calle` = '$calle', `numero`= '$numero', `colonia`= '$colonia', `alcaldia`= '$alcaldia', `codigo_Postal`= '$codigo_Postal', `telefono_Celular`= '$telefono_Celular' , `correo_Electronico`= '$correo_Electronico', `escuela_IPN`= '$escuela_IPN', `escuela_NoIPN`= '$escuela_NoIPN', `entidad_Federativa`= '$entidad_Federativa', `promedio`= '$promedio', `opcion`= '$opcion', `horario`= '$horario' WHERE (No_Boleta = '$No_Boleta')";
        $query_mysql= mysqli_query($conexion, $consulta_sql);
        if($query_mysql){
            header("Location: ./MenuAdministrador.php");
        }

    } else {

        $consulta_sql= "UPDATE alumno SET `nombre` = '$nombre' , `apellido_Paterno` = '$apellido_Paterno', `apellido_Materno` = '$apellido_Materno' , `fecha_Nacimiento` = '$fecha_Nacimiento_Insert', `genero` = '$genero', `curp`= '$curp', `calle` = '$calle', `numero`= '$numero', `colonia`= '$colonia', `alcaldia`= '$alcaldia', `codigo_Postal`= '$codigo_Postal', `telefono_Celular`= '$telefono_Celular' , `correo_Electronico`= '$correo_Electronico', `escuela_IPN`= '$escuela_IPN', `entidad_Federativa`= '$entidad_Federativa', `promedio`= '$promedio', `opcion`= '$opcion', `horario`= '$horario' WHERE (No_Boleta = '$No_Boleta');";
        $query_mysql= mysqli_query($conexion, $consulta_sql);
        if($query_mysql){
            header("Location: ./MenuAdministrador.php");
        }
    }

    mysqli_close($conexion);



?>