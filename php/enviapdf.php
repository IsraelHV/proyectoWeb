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

    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;

    require '.././PHPMailer-master/src/Exception.php';
    require '.././PHPMailer-master/src/PHPMailer.php';
    require '.././PHPMailer-master/src/SMTP.php';

    //Create an instance; passing `true` enables exceptions
    $mail = new PHPMailer(true);

    try {
        //Server settings
        $mail->SMTPDebug = 0;                      //Enable verbose debug output
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
        $mail->Username   = 'equipo9tecweb@gmail.com';                     //SMTP username
        $mail->Password   = 'Equipo9TecWeb';                               //SMTP password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
        $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

        //Recipients
        $mail->setFrom('equipo9tecweb@gmail.com', 'Proyecto Web');
        $mail->addAddress($correoElectronico, $nombre." ".$paterno." ".$materno);     //Add a recipient
        //$mail->addAddress('ellen@example.com');               //Name is optional
        //$mail->addReplyTo('info@example.com', 'Information');
        //$mail->addCC('cc@example.com');
        //$mail->addBCC('bcc@example.com');

        //Attachments
        //$mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
        //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name
        $mail->addAttachment(".././almacenPDF/{$boleta}.pdf");    //Optional name
        //Content
        $mail->isHTML(true);                                  //Set email format to HTML
        $mail->CharSet = 'UTF-8';
        $mail->Subject = "Envió de Comprobante de Inscripción {$nombre} {$paterno} {$materno} con boleta {$boleta}";
        $mail->Body    = '

            <!DOCTYPE html>
            <html>
                <head>
                    <meta charset="utf-8" />
                    <title>Contenido Correo::.</title>
                </head>
            <body>
                <center>
                    <h1 style="color: 115ec2" aling="text-center">
                        FELICIDADES ALUMN@ REGISTRO EXITOSO!!!
                    </h1>
                    <h2 style="color: navy" aling="text-center">
                        Bienvenido a la comunidad
                    </h2>
                    <h2 style="color: red" aling="text-center">
                        En la Parte de Abajo encontraras el archivo PDF
                    </h2>
                </center>
            </body>
            </html>';


        $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

        $mail->send();
        echo 'El mensaje se envió correctamente';
        header("location: ./exito.php");
    } catch (Exception $e) {
        echo "Hubo un error al enviar el mensaje: {$mail->ErrorInfo}";
    }


?>