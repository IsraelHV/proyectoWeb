<?php

    require 'conexionbd.php';


    if(isset($_POST['no_boleta']) && !empty($_POST['no_boleta']) && isset($_POST['correo_electronico']) && !empty($_POST['correo_electronico'])){
        $no_boleta = $_POST['no_boleta'];
        $correo_electronico = $_POST['correo_electronico'];

        $query = ("SELECT * FROM alumno WHERE (No_Boleta = '$no_boleta' && correo_Electronico='$correo_electronico')");
        $resultado = mysqli_query($conexion,$query);

        if(mysqli_num_rows($resultado)>0){
            $bandera="1";
            echo $bandera;
        } else{
            $bandera="0";
            echo $bandera;
        }

    }


    if(isset($_POST['no_boletaA']) && !empty($_POST['no_boletaA']) && isset($_POST['contrasena']) && !empty($_POST['contrasena'])){
        $no_boletaA = $_POST['no_boletaA'];
        $contrasena = $_POST['contrasena'];

        $query = ("SELECT * FROM administrador WHERE (boleta_PA = '$no_boletaA' && contrasena='$contrasena')");
        $resultado = mysqli_query($conexion,$query);

        if(mysqli_num_rows($resultado)>0){
            $bandera="1";
            echo $bandera;
        } else{
            $bandera="0";
            echo $bandera;
        }

    }

?>





