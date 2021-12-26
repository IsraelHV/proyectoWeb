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

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>.::Menu Estudiante::.</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href=".././css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link  rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href=".././css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link  rel = "stylesheet" href = ".././css/materialize-social.css">

  <!-- My CSS -->
  <link href=".././css/mystyle.css" type="text/css" rel="stylesheet" media="screen,projection"/>


  <link rel="icon" type="image/png" href=".././Imagenes/escudoESCOM.png">

</head>

<body>
  
      <!-- nav -->
    <div class="navbar-fixed" id="navbar-administrador">
  
      <nav class="cyan darken-4" role="navigation">
        
        <div class="nav-wrapper container" id="nav-wrapper-administrador">
  
          <a href=".././index.html" class="brand-logo cyan-text text-accent-2"><i class="material-icons">computer</i>ESCOM</a>

  
          <ul class="right hide-on-med-and-down">
            <li><a href="./salir.php" class="cyan-text text-accent-2">Inicio</a></li>
            <li><a href="./salir.php" class="cyan-text text-accent-2">Registrarse</a></li>

  
  
            <!-- Dropdown Trigger -->
            <li><a class="dropdown-trigger cyan-text text-accent-2" href="./salir.php" data-target="dropdown1">Cerrar Sesión<i class="material-icons right">arrow_back</i></a></li>
          
          </ul>

          <a href="#" data-target="slide-out" class="sidenav-trigger cyan-text text-accent-2"><i class="material-icons">menu</i></a>
          
        </div>
      </nav>   <!-- nav -->
  
    </div>


  <ul id="slide-out" class="sidenav sidenav-fixed ">
    <li><div class="user-view">
      <div class="background">
        <img src=".././Imagenes/fondoAdministrativo.jpg">
      </div>
      <a href="#user"><img class="circle" src=".././Imagenes/logoAdministrador.png"></a>
      <a href="#name"><span class="white-text name ">Alumno: <?php echo $nombre ?> <?php echo $paterno ?> <?php echo $materno ?> </span></a>
      <a href="#email"><span class="white-text email">Correo: <?php echo $email ?></span></a>
    </div></li>
    <li><a href="#!"><i class="material-icons">person</i>Cuenta Estudiante</a></li>
    <li><a href="./MenuEstudiante.php">Inicio Estudiante</a></li>

    <li><div class="divider"></div></li>
    <li><a class="subheader">Menu de Estudiante</a></li>
    <li><a class="waves-effect cyan-accent-2" href="./datosConsultar.php">Consultar Datos</a></li>
    
    
    <li><a class="waves-effect cyan-accent-2" href="./pdf.php">Imprimir Comprobante</a></li>
    <li><a class="waves-effect cyan-accent-2" href="./enviapdf.php">Volver Enviar Comprobante</a></li>
    <li><div class="divider"></div></li>
    <li><a class="waves-effect cyan-accent-2" href="./salir.php">Cerrar Sesión<i class="material-icons right">arrow_back</i></a></li>
    <li><div class="divider"></div></li>

  </ul>


  <div class="row">

    <div class="row center col s12 m9 offset-m3">

    <br><br><br><br><br><br>

      <div class="col s12">

          <div class="col s2">

            <img class="center responsive-img" src=".././Imagenes/logo-ipn.png">

          </div>

          <div class="col s8">
            <h2 class="header center blue-grey-text text-darken-4" >¡Bienvenido!</h2>
          </div>

          <div class="col s2">
            <img class="responsive-img" src=".././Imagenes/escudoESCOM.png">
          </div>          
    
      </div>

      

    </div>
  </div>


 

  <br><br><br><br>


  <footer class="page-footer cyan darken-4" id="footer-administrador">
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="cyan-text text-accent-2">INSTITUTO POLITÉCNICO NACIONAL</h5>
          <p class="cyan-text text-accent-2">D.R. Instituto Politécnico Nacional (IPN). Av. Luis Enrique Erro S/N, Unidad Profesional Adolfo López Mateos, Zacatenco, Delegación Gustavo A. Madero, C.P. 07738, Ciudad de México 2009-2013.</p>
        </div>

        <div class="col l3 s12">
          <h5 class="cyan-text text-accent-2">Contactos</h5>
          <ul>
            <li><a class="cyan-text text-accent-2" href="#!">Mesa de ayuda: dudas e información</a></li>
            
            <li><a class="cyan-text text-accent-2" href="#!">Denuncia contra servidores públicos</a></li>
            <li><a class="cyan-text text-accent-2" href="#!">Síguenos en</a></li>
    
            <a class="waves-effect waves-light social-icon btn facebook" href="https://www.facebook.com/escomipnmx/"><i class="fa fa-facebook"></i></a>
            <a class="waves-effect waves-light btn-floating social twitter" href="https://twitter.com/escomunidad?lang=es"><i class="fa fa-twitter"></i> Sign in with twitter</a>

          </ul>
        </div>

        <div class="col l3 s12">
          <h5 class="cyan-text text-accent-2">Enlaces</h5>
          <ul>
            <li><a class="white-text" href="https://www.gob.mx/sep">www.gob.mx/SEP/</a></li>
            <li><a class="white-text" href="http://portaltransparencia.gob.mx/buscador/search/search.do?method=begin">Portal de Obligaciones de Transparencia</a></li>
            <li><a class="white-text" href="https://www.infomex.org.mx/gobiernofederal/home.action"></a>Sistema Infomex</li>
            <li><a class="white-text" href="https://home.inai.org.mx/">INAI</a></li>
          </ul>
        </div>

      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
      Hecho por <a class="brown-text text-lighten-3" href="https://github.com/IsraelHV">EQUIPO 9 - WEB</a>
      </div>
    </div>
  </footer><!-- footer -->



  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src=".././js/materialize.js"></script>
  <script src=".././js/init.js"></script>
  <script src=".././js/myjavascript.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

  </body>
</html>