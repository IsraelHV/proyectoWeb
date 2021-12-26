<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>.::Login Estudiante::.</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href=".././css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link  rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href=".././css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link  rel = "stylesheet" href = ".././css/materialize-social.css">
  
  <!-- My CSS -->
  <link href=".././css/mystyle.css" type="text/css" rel="stylesheet" media="screen,projection"/>


  <link rel="icon" type="image/png" href=".././Imagenes/escudoESCOM.png">


  <!--PHP-->
  <link href=".././css/mystyle.css" type="" rel="stylesheet" media="screen,projection"/>

</head>

<body>

  <!-- Dropdown Structure -->
  <ul id="dropdown1" class="dropdown-content">
    <li><a href="./loginEstudiante.php" class="teal-text text-darken-4">Alumno</a></li>
    
    <li class="divider"></li>
    <li><a href="./loginAdministrativo.php" class="teal-text text-darken-4">Administrador</a></li>
  </ul>

  <ul id="dropdown2" class="dropdown-content">
    <li><a href="./loginEstudiante.php" class="teal-text text-darken-4">Alumno</a></li>
  
    <li class="divider"></li>
    <li><a href="./loginAdministrativo.php" class="teal-text text-darken-4">Administrador</a></li>
  </ul>

    <!-- nav -->
  <div class="navbar-fixed">

    <nav class="cyan darken-4" role="navigation">
      
      <div class="nav-wrapper container">

        <a href=".././index.html" class="brand-logo cyan-text text-accent-2"><i class="material-icons">computer</i>ESCOM</a>



        <ul class="right hide-on-med-and-down">
          <li><a href=".././index.html" class="cyan-text text-accent-2">Inicio</a></li>
          
          <li><a href="./loginEstudiante.php" class="cyan-text text-accent-2">Imprimir comprobante</a></li>
          <li><a href="./formulario.php" class="cyan-text text-accent-2">Registrarse</a></li>

          <!-- Dropdown Trigger -->

          <li><a class="dropdown-trigger cyan-text text-accent-2" href="#!" data-target="dropdown1">Iniciar Sesión<i class="material-icons right">person</i></a></li> 
 
        </ul>


        <a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons cyan-text text-accent-2">menu</i></a>
      
      </div>
    </nav>   <!-- nav -->

  </div>


  <ul id="nav-mobile" class="sidenav cyan darken-4 ">
    <li><a href=".././index.html" class="cyan-text text-accent-2">Inicio</a></li>
    <li><a href="./loginEstudiante.php" class="cyan-text text-accent-2">Imprimir comprobante</a></li>
    <li><a href="./formulario.php" class="cyan-text text-accent-2">Registrarse</a></li>
    
    <li><a class="dropdown-trigger cyan-text text-accent-2" href="#!" data-target="dropdown2">Iniciar Sesión<i class="material-icons right cyan-text text-accent-2">person</i></a></li>
  

  </ul>


  <!-- Bannner -->
  <div id="index-banner" class="parallax-container">

    <div class="section no-pad-bot">
      <div class="container">

        <br><br>

        <h2 class="header center blue-grey-text text-darken-4">Inicio Sesión</h2>

        <div class="row center">
          
          <h4 class="header col s12 blue-grey-text text-darken-4">Alumnos de nuevo ingreso de la ESCOM (2021)</h4>
        </div>


      </div>

    </div>

    <div class="parallax"><img src=".././Imagenes/ImagenMate2.jpg" alt="Unsplashed background img 1"></div>

    <br><br>
  </div><!-- Bannner -->


  <br>



  <div class="container row center">

    <form class="" id="formularioLogin" action="./validaEstudiante.php" method="POST">

      <div class="row center">

        <div class="col s12">

            <div class="col s2">

              <img class="center responsive-img" src=".././Imagenes/logo-ipn.png">

            </div>

            <div class="col s8">
              <h2 class="header center blue-grey-text text-darken-4" >Iniciar Sesión</h2>
            </div>

            <div class="col s2">
              <img class="responsive-img" src=".././Imagenes/escudoESCOM.png">
            </div>          
          
        </div>
          

        <div class="col s12 m8 offset-m2 l6 offset-l3 z-depth-3" id="contenedorform">

            <div class="col s12 m12" id="margen">

                <br>
                <br>


                <div class="row center">
                    <div class="input-field">
                    <i class="material-icons prefix">call_to_action</i>
                    <input placeholder="No. de Boleta" id="no_boleta" type="text" class="validate" name="no_boleta">
                    <label for="no_boleta">No. de Boleta:</label>
                    <span class="helper-text" data-error="Boleta Incorrecta" data-success="Boleta Correcta">Boleta con 10 dígitos</span>
                    </div>
                </div>

                <div class="row center">
                    <div class="input-field">
                        <i class="material-icons prefix">contact_mail</i>
                        <input placeholder="Correo Electrónico" id="correo_electronico" type="text" class="validate" name="correo_electronico">
                        <label for="correo_electronico">Correo Electrónico:</label>
                        <span class="helper-text" data-error="Correo Electrónico Incorrecto" data-success="Correo Electrónico Correcto">Inserta tu correo de la forma ********@**.**.**</span>
                    </div>
                </div>


                <button class="btn waves-effect waves-light cyan darken-4" type="submit" name="action">INICIAR SESIÓN 
                    <i class="material-icons right">send</i>
                </button>

                <br>
                <br>
                <br>

            </div>

        </div>

      </div>
      
    </form>

  </div>  <!-- form -->


  <br>

   <!-- footer -->
 
  <footer class="page-footer cyan darken-4">
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="cyan-text text-accent-2">INSTITUTO POLITÉCNICO NACIONAL</h5>
          <p class="cyan-text text-accent-2">D.R. Instituto Politécnico Nacional (IPN). Av. Luis Enrique Erro S/N, Unidad Profesional Adolfo López Mateos, Zacatenco, Delegación Gustavo A. Madero, C.P. 07738, Ciudad de México 2009-2013.</p>
        </div>

        <div class="col l3 s12">
          <h5 class="cyan-text text-accent-2">Contactos</h5>
          <ul>
            <li><a class="cyan-text text-accent-2" href="#!">Mesa de ayuda: dudas e información gobmx@funcionpublica.gob.mx</a></li>
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
  <script src=".././js/login.js"></script>

  </body>
</html>