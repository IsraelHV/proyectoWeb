<?php

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
    echo $opcion=$_POST["opcion"];

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
        $consulta_sql= "INSERT INTO `alumno` (`No_Boleta`, `nombre`, `apellido_Paterno`, `apellido_Materno`, `fecha_Nacimiento`, `genero`, `curp`, `calle`, `numero`, `colonia`, `alcaldia`, `codigo_Postal`, `telefono_Celular`, `correo_Electronico`, `escuela_IPN`, `escuela_NoIPN`, `entidad_Federativa`, `promedio`, `opcion`, `horario`) VALUES ('$No_Boleta', '$nombre', '$apellido_Paterno', '$apellido_Materno', '$fecha_Nacimiento_Insert', '$genero', '$curp', '$calle', '$numero', '$colonia', '$alcaldia', '$codigo_Postal', '$telefono_Celular', '$correo_Electronico', '$escuela_IPN', '$escuela_NoIPN', '$entidad_Federativa', '$promedio', '$opcion',$i)";
        $query_mysql= mysqli_query($conexion, $consulta_sql);
        var_dump($query_mysql);

    } else {

 

        $consulta_sql= "INSERT INTO `alumno` (`No_Boleta`, `nombre`, `apellido_Paterno`, `apellido_Materno`, `fecha_Nacimiento`, `genero`, `curp`, `calle`, `numero`, `colonia`, `alcaldia`, `codigo_Postal`, `telefono_Celular`, `correo_Electronico`, `escuela_IPN`, `escuela_NoIPN`, `entidad_Federativa`, `promedio`, `opcion`, `horario`) VALUES ('$No_Boleta', '$nombre', '$apellido_Paterno', '$apellido_Materno', '$fecha_Nacimiento_Insert', '$genero', '$curp', '$calle', '$numero', '$colonia', '$alcaldia', '$codigo_Postal', '$telefono_Celular', '$correo_Electronico', '$escuela_IPN', '', '$entidad_Federativa', '$promedio', '$opcion','$i')";
        $query_mysql= mysqli_query($conexion, $consulta_sql);
        var_dump($query_mysql);
    }

    ///////////////////////////////////
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
        header("location: ./formulario.php");
    }

    mysqli_close($conexion);

?>