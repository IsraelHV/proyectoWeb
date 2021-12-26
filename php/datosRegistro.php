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

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>.::Datos Registro::.</title>

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
  
          <a href="./salirA.php" class="brand-logo cyan-text text-accent-2"><i class="material-icons">computer</i>ESCOM</a>
  
  
          <ul class="right hide-on-med-and-down">
            <li><a href="./salirA.php" class="cyan-text text-accent-2">Inicio</a></li>
            <li><a href="./salirA.php" class="cyan-text text-accent-2">Registrarse</a></li>

  
  
            <!-- Dropdown Trigger -->
            <li><a class="cyan-text text-accent-2" href="./salirA.php">Cerrar Sesión<i class="material-icons right">arrow_back</i></a></li>
          
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
      <a href="#name"><span class="white-text name ">Administrador: <?php echo $nombre_PA ?> <?php echo $apellidos_PA ?> </span></a>
      <a href="#email"><span class="white-text email">Boleta Personal: <?php echo $boleta_PA ?></span></a>
    </div></li>

    <li><a href="#!"><i class="material-icons">person</i>Cuenta Administrativa</a></li>
    <li><a href="./menuAdministrador.php">Inicio Administrativo</a></li>
    <li><div class="divider"></div></li>
    <li><a href="./formularioA.php">Registrar Estudiante</a></li>
    <li><div class="divider"></div></li>
    <li><a class="subheader">Consultar Estudiantes</a></li>
    <li><a class="waves-effect cyan-accent-2" href="./datosIdentidad.php">Datos de Identidad</a></li>
    <li><a class="waves-effect cyan-accent-2" href="./datosContacto.php">Datos de Contacto</a></li>
    <li><a class="waves-effect cyan-accent-2" href="./datosProcedencia.php">Datos de Procedencia</a></li>
    <li><a class="waves-effect cyan-accent-2" href="./datosRegistro.php">Datos de Registro</a></li>
    <li><div class="divider"></div></li>



    <li><div class="divider"></div></li>
    <li><a class="waves-effect cyan-accent-2" href="./salirA.php">Cerrar Sesión<i class="material-icons right">arrow_back</i></a></li>
    <li><div class="divider"></div></li>


  </ul>

  <?php
        $link = new PDO('mysql:host=localhost; dbname=semestre2022-1', 'root', '');
   ?>

  <div class="row">

    <div class="row center col s12 m9 offset-m3">

        <br><br>

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


    <div class="input-field col s12 m8 offset-m4 l4 offset-l8" id="buscador">
      <i class="material-icons prefix">pageview</i>
      <input type="text" id="search" placeholder="Escribe para buscar..." />
      <label for="autocomplete-input">Buscar</label>
    </div>

    <div class="row">
      <div class="section">

      <!--   Icon Section   -->
        <div class="row">
        



          <div class="col s12 m9 offset-m3">

            <table class="highlight centered responsive-table" id="table">

                <thead>
                    <tr>
                        <th>Boleta</th>
                        <th>Nombre</th>
                        <th>Apellido Paterno</th>
                        <th>Apellido Materno</th>
                        <th>Laboratorio</th>
                        <th>Horario y Fecha</th>
                        <th>BORRAR</th>
                        <th>EDITAR</th>            

                    </tr>
                </thead>

                <tbody>

                    <?php foreach ($link->query('SELECT * FROM alumno INNER JOIN laboratorio ON alumno.horario=laboratorio.id_laboratorio INNER JOIN horario ON laboratorio.horario=horario.id_horario ORDER BY nombre, apellido_Paterno,apellido_Materno ;') as $row){  // aca puedes hacer la consulta e iterarla con each. ?>
                         
                        <tr>
                          <th><?php echo $row['No_Boleta'];?></th>
                          <th><?php echo $row['nombre']; ?></th>
                          <th><?php echo $row['apellido_Paterno']; ?></th>
                          <th><?php echo $row['apellido_Materno']; ?></th>
                          <th><?php echo $row['nombreLaboratorio']; ?></th>
                          <th><?php echo $row['horarioFecha']; ?></th>
                        

                          <th>

                          <a class="waves-effect waves-light cyan darken-4 brown-text text-lighten-3 btn modal-trigger" href="./delete.php?id=<?php echo $row['No_Boleta'] ?>">
                            <i class="material-icons right">delete</i>
                            </a>

                          </th>

                          <th>

                            <a class="waves-effect waves-light btn modal-trigger" href="./actualizar.php?id=<?php echo $row['No_Boleta'] ?>">
                            <i class="material-icons right">border_color</i>
                            </a>

                          </th>

                        </tr>

                    <?php
                        }
                    ?>
                    
                </tbody>

            </table>

          </div>

        </div>
      </div>
    </div>
 

  <br><br>


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