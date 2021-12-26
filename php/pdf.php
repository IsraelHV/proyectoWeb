<?php

    session_start();
    require 'conexionbd.php';
    $No_Boleta = $_SESSION['No_Boleta'];
    $correoElectronico = $_SESSION['correo_Eletronico'];

    if(!isset($No_Boleta)){
      header("location: ./loginEstudiante.php");
    }

    $consulta= ("SELECT * FROM alumno INNER JOIN genero ON alumno.genero = genero.id_genero INNER JOIN alcaldia ON alumno.alcaldia = alcaldia.id_alcaldia INNER JOIN escuela ON alumno.escuela_IPN = escuela.id_escuela INNER JOIN entidad_federativa ON alumno.entidad_Federativa = entidad_federativa.id_entidadFederativa INNER JOIN opcion ON alumno.opcion=opcion.id_opcion INNER JOIN laboratorio ON alumno.horario=laboratorio.id_laboratorio INNER JOIN horario ON laboratorio.horario=horario.id_horario WHERE (No_Boleta='$No_Boleta' && correo_Electronico ='$correoElectronico');");
    $queryConsulta= mysqli_query($conexion, $consulta);
    $resultConsulta=mysqli_fetch_array($queryConsulta);

    $boleta = $resultConsulta[0];
    $nombre = $resultConsulta[1];
    $paterno = $resultConsulta[2];
    $materno = $resultConsulta[3];
    $fechaNacimiento = $resultConsulta[4];
    $genero = $resultConsulta[21];
    $curp = $resultConsulta[6];
    $calle = $resultConsulta[7];
    $numero = $resultConsulta[8];
    $colonia = $resultConsulta[9];
    $Alcaldia = $resultConsulta[23];
    $cp = $resultConsulta[11];
    $tel = $resultConsulta[12];
    $email = $resultConsulta[13];
    $Escuela = $resultConsulta[25];
    $EscuelaP = $resultConsulta[15];
    $Entidad = $resultConsulta[27];
    $promedio = $resultConsulta[17];
    $opcion = $resultConsulta[29];
    $laboratorio = $resultConsulta[31];
    $horario = $resultConsulta[34];
    $idlab = $resultConsulta[30];
    $idhorario =$resultConsulta[32];

    echo $horario;

    ob_start();

    require(".././fpdf184/fpdf.php");

    class PDF extends FPDF
    {
    
      function Header()
      {
    
        $this->Image(".././Imagenes/images/Encabezado3.png", 10, 8, 190);
        $this->Ln(30);
      }
    
      function Footer()
      {
    
        $image1 = ".././Imagenes/images/QREscom.png";
        $this->Cell(
          40,
          40,
          $this->Image($image1, 150, 235, 60, 60),
          0,
          0,
          "RIGHT",
          false
        ); 
    
        $this->SetY(-15);
    
        $this->SetFont("Arial", "I", 10);
    
        $this->Cell(0, 10, "Página" . $this->PageNo() . "/{nb}", 0, 0, "C");
      }
    }

    $pdf = new PDF();
    $pdf->AliasNbPages();
    $pdf->AddPage();
    $pdf->SetFont("Arial", "", 12);
    $pdf->Ln();
    $pdf->Cell(50, 10, "Fecha:  " . date("d-m-Y") . "", 0);
    $pdf->Ln(20);
    $pdf->Image(".././Imagenes/images/Ficha.png", 10, 50, 190);
    $pdf->Ln();
    $pdf->Cell(50, 10, "Folio: ".$idlab.$idhorario.date("mY"), 0, 2, "L", 0);
    $pdf->Cell(50, 10,"Alumno: $paterno $materno $nombre                 Boleta: ".$boleta , 0, 2, "L", 0);
    $pdf->Cell(50, 10,"Curp: ". $curp, 0, 2, "L", 0);
    $pdf->Cell(50, 10, "Escuela Perteneciente al IPN: $Escuela", 0, 2, "L", 0);


    $pdf->Cell(50, 10, "Escuela No Perteneciente al IPN (Escuela de Procedencia): ".$EscuelaP, 0, 2, "L", 0);
    $pdf->Cell(50, 10, "Promedio: ".$promedio, 0, 2, "L", 0);
    $pdf->Cell(50, 10, "ESCOM fue tu: $opcion", 0, 2, "L", 0);
    $pdf->Image(".././Imagenes/images/Imagen2.png", 10, 140, 190);
    $pdf->Ln(20);
    $pdf->Cell(20, 7, "Laboratorio: ".$laboratorio, 0, 2, "L", 0);
    $pdf->Cell(50, 10, "Cita para el examen: ".$horario, 0, 2, "L", 0);
    $pdf->Image(".././Imagenes/images/Imagen3.png", 10, 180, 190);
    $pdf->Ln(20);
    $pdf->Cell(20, 7, "Entidad Federativa: ".$Entidad, 0, 2, "L", 0);
    $pdf->Cell(20, 7, "Calle y número: $calle $numero", 0, 2, "L", 0);
    $pdf->Cell(50, 10, "Colonia: ".$colonia, 0, 2, "L", 0);
    $pdf->Cell(50, 10, "Código postal: ".$cp, 0, 2, "L", 0);
    $pdf->Cell(50, 10, "Teléfono o celular: ".$tel , 0, 2, "L", 0);
    $pdf->Cell(50, 10, "Correo electrónico: ".$email, 0, 2, "L", 0);
    $pdf->Ln();


    $pdf->Output("F", "../almacenPDF/{$boleta}.pdf");
    $pdf->Output();

    ob_end_flush(); 

?>


