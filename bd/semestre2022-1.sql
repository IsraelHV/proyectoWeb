-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-12-2021 a las 18:37:40
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `semestre2022-1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `boleta_PA` varchar(10) NOT NULL,
  `contrasena` varchar(10) NOT NULL,
  `nombre_PA` varchar(50) NOT NULL,
  `apellidos_PA` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`boleta_PA`, `contrasena`, `nombre_PA`, `apellidos_PA`) VALUES
('1234567891', '1122334455', 'Israel', 'Hernández Vázquez'),
('2345678912', '2233445566', 'Tanjiro', 'Hernández Vázquez'),
('3456789123', '3344556677', 'Nezuko', 'Hernández Vázquez'),
('4567891234', '4455667788', 'Pain', 'Hernández Vázquez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alcaldia`
--

CREATE TABLE `alcaldia` (
  `id_alcaldia` varchar(2) NOT NULL,
  `nombreAlcaldia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alcaldia`
--

INSERT INTO `alcaldia` (`id_alcaldia`, `nombreAlcaldia`) VALUES
('1', 'Álvaro Obregón'),
('10', 'Magdalena Contreras'),
('11', 'Miguel Hidalgo'),
('12', 'Milpa Alta'),
('13', 'Tláhuac'),
('14', 'Tlalpan'),
('15', 'Venustiano Carranza'),
('16', 'Xochimilco'),
('2', 'Azcapotzalco'),
('3', 'Benito Juárez'),
('4', 'Coyoacán'),
('5', 'Cuajimalpa de Morelos'),
('6', 'Cuauhtémoc'),
('7', 'Gustavo A. Madero'),
('8', 'Iztacalco'),
('9', 'Iztapalapa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `No_Boleta` varchar(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido_Paterno` varchar(100) NOT NULL,
  `apellido_Materno` varchar(100) NOT NULL,
  `fecha_Nacimiento` date NOT NULL,
  `genero` varchar(1) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `calle` varchar(500) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `colonia` varchar(200) NOT NULL,
  `alcaldia` varchar(2) NOT NULL,
  `codigo_Postal` varchar(5) NOT NULL,
  `telefono_Celular` varchar(10) NOT NULL,
  `correo_Electronico` varchar(100) NOT NULL,
  `escuela_IPN` varchar(2) NOT NULL,
  `escuela_NoIPN` varchar(200) NOT NULL,
  `entidad_Federativa` varchar(2) NOT NULL,
  `promedio` varchar(6) NOT NULL,
  `opcion` varchar(1) NOT NULL,
  `horario` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`No_Boleta`, `nombre`, `apellido_Paterno`, `apellido_Materno`, `fecha_Nacimiento`, `genero`, `curp`, `calle`, `numero`, `colonia`, `alcaldia`, `codigo_Postal`, `telefono_Celular`, `correo_Electronico`, `escuela_IPN`, `escuela_NoIPN`, `entidad_Federativa`, `promedio`, `opcion`, `horario`) VALUES
('2015178573', 'Jimena', 'Aguirre', 'Fernandez', '1996-05-13', '2', 'AGFJ960513FDFRM77', 'Rio de la Piedad', '18', 'Polanco', '13', '00810', '5534885164', 'Jimena_Aguirre55@gmail.com', '18', '', '14', '6', '1', '2'),
('2015182437', 'Sofia', 'Marin', 'Crespo', '1999-01-23', '2', 'MACS990123FDFEF64', 'Glorieta de los Insurgentes', '19', 'El Prado', '6', '01500', '5553412325', 'Sofia_Marin98@gmail.com', '12', '', '30', '9', '3', '1'),
('2015212443', 'Jimena', 'Aguirre', 'Torres', '1996-09-03', '2', 'AGTJ960903FGDRM16', 'Avenida Alvaro Obregon', '42', 'Tlatelolco', '14', '07210', '5517742786', 'Jimena_Aguirre79@gmail.com', '8', '', '31', '6', '3', '2'),
('2015217111', 'Alejandro', 'Lopez', 'Crespo', '1999-10-08', '1', 'LOCA991008MGDEE63', 'Calzada de Tlalpan', '46', 'El Prado', '6', '01567', '5534731724', 'Alejandro_Lopez46@gmail.com', '7', '', '28', '8', '1', '3'),
('2015226777', 'Erick', 'Sanchez', 'Perez', '1998-09-17', '1', 'SAPE980917MDFRI32', 'Eje Central Lazaro Cardenas', '50', 'Rinconada ', '5', '08934', '5547577224', 'Erick_Sanchez98@gmail.com', '8', '', '14', '7', '1', '1'),
('2015233153', 'Manuel', 'Sosa', 'Aguirre', '1997-07-14', '1', 'SOAM970714MGDUN33', 'Avenida Amsterdam', '43', 'Polanco', '13', '02210', '5575311745', 'Manuel_Sosa15@gmail.com', '15', '', '2', '7', '2', '1'),
('2015241244', 'Alejandro', 'Lopez', 'Ruiz', '1999-03-13', '1', 'LORA990313MDFIE83', 'Avenida Alvaro Obregon', '36', 'Lomas Altas', '10', '01567', '5553333245', 'Alejandro_Lopez30@gmail.com', '15', '', '28', '6', '1', '6'),
('2015273157', 'Manuel', 'Sosa', 'Gomez', '1999-03-11', '1', 'SOGM990311MOAMN80', 'Eje 3 Norte', '37', 'Roma', '12', '01330', '5527676186', 'Manuel_Sosa28@gmail.com', '20', '', '14', '7', '3', '5'),
('2015325544', 'Erick', 'Sanchez', 'Ruiz', '1997-09-29', '1', 'SARE970929MOAII91', 'Eje Central Lazaro Cardenas', '47', 'Del Carmen', '15', '02210', '5525576776', 'Erick_Sanchez64@gmail.com', '4', '', '20', '9', '3', '2'),
('2015332544', 'Nicolas', 'Ruiz', 'Prieto', '1999-10-04', '1', 'RUPN991004MOAIC37', 'Avenida Alvaro Obregon', '81', 'Polanco', '13', '01330', '5521857345', 'Nicolas_Ruiz69@gmail.com', '6', '', '4', '6', '1', '7'),
('2015364856', 'Sebastian', 'Diaz', 'Alvarez', '1999-04-23', '1', 'DIAS990423MASVB49', 'Calle de Republica de Argentina', '59', 'San Juan De Aragon', '3', '01010', '5553231187', 'Sebastian_Diaz40@gmail.com', '5', '', '7', '7', '1', '4'),
('2015378142', 'Hugo', 'Torres', 'Sanchez', '1998-10-25', '1', 'TOSH981025MGDNG48', 'Rio de la Piedad', '72', 'El Prado', '6', '01388', '5578152685', 'Hugo_Torres34@gmail.com', '6', '', '20', '8', '2', '3'),
('2015436872', 'Veronica', 'Pastor', 'Rodriguez', '1997-10-05', '2', 'PARV971005FASDR79', 'Calle de Republica de Argentina', '62', 'Lomas Altas', '10', '01330', '5522233542', 'Veronica_Pastor69@gmail.com', '10', '', '20', '8', '1', '6'),
('2015446544', 'Lucia', 'Benites', 'Caballero', '1998-02-14', '2', 'BECL980214FTXBC24', 'Rio Churubusco', '81', 'La Martinica', '1', '02210', '5527868851', 'Lucia_Benites15@gmail.com', '14', '', '20', '9', '1', '4'),
('2015483472', 'Joaquin', 'Gomez', 'Aguirre', '1998-04-19', '1', 'GOAJ980419MDFUA14', 'Avenida Alvaro Obregon', '45', 'Chinampac De Juarez', '7', '01010', '5527877613', 'Joaquin_Gomez30@gmail.com', '19', '', '13', '9', '1', '3'),
('2015527848', 'Victor', 'Ramirez', 'Diaz', '1996-11-25', '1', 'RADV961125MVRAC58', 'Rio Churubusco', '18', 'La Pastora', '8', '01567', '5557272284', 'Victor_Ramirez52@gmail.com', '6', '', '15', '9', '3', '7'),
('2015578486', 'Guadalupe', 'Caballero', 'Alvarez', '1999-08-09', '2', 'CAAG990809FASVA53', 'Calle de Republica de Argentina', '80', 'El Prado', '6', '01330', '5522117774', 'Guadalupe_Caballero55@gmail.com', '6', '', '15', '9', '3', '6'),
('2015611425', 'Lourdes', 'Suarez', 'Torres', '1996-06-18', '2', 'SUTL960618FYCRU23', 'Rio Churubusco', '45', 'Benito Juarez', '9', '01420', '5587536512', 'Lourdes_Suarez85@gmail.com', '3', '', '2', '7', '2', '4'),
('2015654274', 'Nicolas', 'Ruiz', 'Gomez', '1997-11-26', '1', 'RUGN971126MDFMC77', 'Avenida Alvaro Obregon', '57', 'Lomas Altas', '10', '01318', '5561627518', 'Nicolas_Ruiz60@gmail.com', '9', '', '12', '7', '2', '4'),
('2015655617', 'Nicolas', 'Ruiz', 'Alvarez', '1999-05-23', '1', 'RUAN990523MEMVC90', 'Rio Churubusco', '69', 'Chinampac De Juarez', '7', '01590', '5543581873', 'Nicolas_Ruiz59@gmail.com', '17', '', '7', '7', '3', '4'),
('2015656681', 'Sofia', 'Marin', 'Benites', '1997-11-28', '2', 'MABS971128FDFNF55', 'Calle de Republica de Argentina', '68', 'Chinampac De Juarez', '7', '01388', '5573816864', 'Sofia_Marin86@gmail.com', '2', '', '26', '6', '3', '5'),
('2015663222', 'Federico', 'Fernandez', 'Torres', '1998-04-20', '1', 'FETF980420MOARD54', 'Calzada de Tlalpan', '76', 'La Martinica', '1', '01049', '5556532115', 'Federico_Fernandez11@gmail.com', '20', '', '25', '6', '1', '2'),
('2015665233', 'Sofia', 'Marin', 'Aguirre', '1997-01-02', '2', 'MAAS970102FDFUF45', 'Calzada de Guadalupe', '49', 'Roma', '12', '01049', '5553753544', 'Sofia_Marin33@gmail.com', '7', '', '27', '6', '3', '6'),
('2015671324', 'Joaquin', 'Gomez', 'Gonzales', '1999-06-05', '1', 'GOGJ990605MGDNA50', 'Avenida Amsterdam', '16', 'La Pastora', '8', '01567', '5543378133', 'Joaquin_Gomez63@gmail.com', '11', '', '2', '7', '1', '2'),
('2015677551', 'Erick', 'Sanchez', 'Garcia', '1999-03-21', '1', 'SAGE990321MTXRI48', 'Calzada de Tlalpan', '28', 'Tlatelolco', '14', '02210', '5582554414', 'Erick_Sanchez71@gmail.com', '10', '', '14', '7', '3', '3'),
('2015716825', 'Esteban', 'Gonzales', 'Prieto', '1997-06-25', '1', 'GOPE970625MVRIT89', 'Calzada de Tlalpan', '49', 'Tlatelolco', '14', '01357', '5564568584', 'Esteban_Gonzales51@gmail.com', '14', '', '10', '9', '2', '1'),
('2015725725', 'Nicolas', 'Ruiz', 'Alvarez', '1996-03-18', '1', 'RUAN960318MEMVC82', 'Glorieta de los Insurgentes', '73', 'Paulino Navarro', '4', '01500', '5552617175', 'Nicolas_Ruiz55@gmail.com', '2', '', '30', '9', '3', '2'),
('2015744748', 'Jimena', 'Aguirre', 'Alvarez', '1999-02-01', '2', 'AGAJ990201FEMVM52', 'Avenida Revolucion', '44', 'Santa Ursula Xitla', '2', '02210', '5548775283', 'Jimena_Aguirre85@gmail.com', '3', '', '2', '7', '2', '4'),
('2015746243', 'Israel', 'Hernandez', 'Acosta', '1997-07-13', '1', 'PEAA970713MGDOB94', 'Eje 3 Norte', '70', 'La Pastora', '8', '01357', '5543382385', 'Alberto_Perez58@gmail.com', '9', '', '18', '9', '1', '4'),
('2015817642', 'Esteban', 'Gonzales', 'Herrera', '1996-06-06', '1', 'GOHE960606MTXRT16', 'Calle de Republica de Argentina', '65', 'El Prado', '6', '01330', '5518722638', 'Esteban_Gonzales27@gmail.com', '16', '', '10', '8', '1', '2'),
('2015841726', 'Joaquin', 'Gomez', 'Sosa', '1999-08-23', '1', 'GOSJ990823MOASA14', 'Calzada de Guadalupe', '64', 'El Prado', '6', '07210', '5562331178', 'Joaquin_Gomez42@gmail.com', '9', '', '17', '9', '2', '5'),
('2015842334', 'Sebastian', 'Diaz', 'Herrera', '1998-02-21', '1', 'DIHS980221MTXRB24', 'Avenida Alvaro Obregon', '60', 'Benito Juarez', '9', '01357', '5574733577', 'Sebastian_Diaz89@gmail.com', '14', '', '25', '9', '3', '5'),
('2015857543', 'Manuel', 'Sosa', 'Marin', '1996-04-29', '1', 'SOMM960429MYCRN55', 'Eje Central Lazaro Cardenas', '44', 'Paulino Navarro', '4', '00810', '5542442582', 'Manuel_Sosa19@gmail.com', '13', '', '13', '7', '3', '6'),
('2015866337', 'Pablo', 'Garcia', 'Rodriguez', '1997-04-05', '1', 'GARP970405MYCDB64', 'Avenida Revolucion', '23', 'Chinampac De Juarez', '7', '01590', '5541765341', 'Pablo_Garcia73@gmail.com', '18', '', '9', '8', '2', '1'),
('2015885538', 'Erick', 'Sanchez', 'Gomez', '1998-02-13', '1', 'SAGE980213MEMMI45', 'Calzada Ignacio Zaragoza', '32', 'Paulino Navarro', '4', '00810', '5522773281', 'Erick_Sanchez52@gmail.com', '10', '', '31', '7', '1', '5'),
('2016162628', 'Isabella', 'Serrano', 'Diaz', '1998-10-17', '2', 'SEDI981017FVRAA41', 'Avenida Amsterdam', '31', 'Benito Juarez', '9', '01049', '5534413544', 'Isabella_Serrano65@gmail.com', '3', '', '13', '9', '3', '5'),
('2016165732', 'Guadalupe', 'Caballero', 'Ruiz', '1999-01-06', '2', 'CARG990106FYCIA76', 'Avenida Alvaro Obregon', '12', 'Paulino Navarro', '4', '01357', '5573437826', 'Guadalupe_Caballero33@gmail.com', '7', '', '27', '6', '2', '7'),
('2016172556', 'Edgar', 'Martinez', 'Lopez', '1996-11-29', '1', 'MALE961129MASPG45', 'Rio Churubusco', '39', 'Rinconada ', '5', '01590', '5583773361', 'Edgar_Martinez47@gmail.com', '19', '', '2', '9', '1', '1'),
('2016177143', 'Alejandro', 'Lopez', 'Perez', '1998-07-16', '1', 'LOPA980716MASRE54', 'Rio Churubusco', '72', 'Roma', '12', '01330', '5537112168', 'Alejandro_Lopez72@gmail.com', '2', '', '19', '7', '3', '6'),
('2016185816', 'Alejandro', 'Lopez', 'Ramirez', '1998-07-01', '1', 'LORA980701MGDME95', 'Calzada de Guadalupe', '16', 'La Pastora', '8', '01420', '5527874261', 'Alejandro_Lopez65@gmail.com', '3', '', '13', '9', '3', '1'),
('2016214471', 'Jessica', 'Calvo', 'Caballero', '1999-01-06', '2', 'CACJ990106FOABS61', 'Avenida 16 de Septiembre', '44', 'Santa Ursula Xitla', '2', '01330', '5544762848', 'Jessica_Calvo49@gmail.com', '3', '', '12', '8', '1', '5'),
('2016263742', 'Guadalupe', 'Caballero', 'Alvarez', '1999-07-05', '2', 'CAAG990705FYCVA74', 'Avenida Amsterdam', '25', 'Benito Juarez', '9', '01420', '5581743277', 'Guadalupe_Caballero57@gmail.com', '17', '', '13', '7', '3', '6'),
('2016276173', 'Nicolas', 'Ruiz', 'Benites', '1999-11-03', '1', 'RUBN991103MYCNC61', 'Eje Central Lazaro Cardenas', '44', 'Roma', '12', '01388', '5562477427', 'Nicolas_Ruiz70@gmail.com', '10', '', '26', '9', '2', '5'),
('2016277413', 'Isabella', 'Serrano', 'Serrano', '1997-04-20', '2', 'SESI970420FASRA68', 'Calzada de Tlalpan', '25', 'Polanco', '13', '00810', '5545671532', 'Isabella_Serrano35@gmail.com', '18', '', '25', '7', '2', '6'),
('2016323655', 'Nicolas', 'Ruiz', 'Benites', '1997-04-08', '1', 'RUBN970408MYCNC59', 'Callejon de Manzanares', '69', 'Rinconada ', '5', '07210', '5541532523', 'Nicolas_Ruiz69@gmail.com', '18', '', '21', '7', '1', '7'),
('2016415587', 'Joaquin', 'Gomez', 'Torres', '1999-10-07', '1', 'GOTJ991007MDFRA47', 'Avenida Alvaro Obregon', '36', 'La Pastora', '8', '00810', '5576574242', 'Joaquin_Gomez63@gmail.com', '8', '', '30', '8', '1', '4'),
('2016436263', 'Federico', 'Fernandez', 'Torres', '1996-04-25', '1', 'FETF960425MDFRD85', 'Glorieta de los Insurgentes', '19', 'Lomas Altas', '10', '08934', '5575346662', 'Federico_Fernandez28@gmail.com', '15', '', '3', '6', '3', '4'),
('2016444674', 'Guadalupe', 'Caballero', 'Martinez', '1999-07-08', '2', 'CAMG990708FEMRA26', 'Callejon de Manzanares', '60', 'Juarez', '11', '02210', '5568727325', 'Guadalupe_Caballero27@gmail.com', '4', '', '24', '6', '1', '3'),
('2016476183', 'Jessica', 'Calvo', 'Fernandez', '1996-05-02', '2', 'CAFJ960502FGDRS65', 'Rio Churubusco', '51', 'Tlatelolco', '14', '01590', '5585445421', 'Jessica_Calvo37@gmail.com', '17', '', '24', '9', '1', '4'),
('2016514527', 'Federico', 'Fernandez', 'Fernandez', '1996-02-14', '1', 'FEFF960214MASRD21', 'Rio Churubusco', '39', 'Juarez', '11', '01500', '5555113223', 'Federico_Fernandez11@gmail.com', '11', '', '29', '8', '2', '6'),
('2016541373', 'Federico', 'Fernandez', 'Garcia', '1999-06-11', '1', 'FEGF990611MDFRD20', 'Calle de Republica de Argentina', '41', 'Chinampac De Juarez', '7', '01567', '5535747536', 'Federico_Fernandez49@gmail.com', '3', '', '12', '7', '2', '4'),
('2016548717', 'Nicolas', 'Ruiz', 'Calvo', '1997-07-08', '1', 'RUCN970708MVRLC85', 'Callejon de Manzanares', '30', 'Tlatelolco', '14', '01590', '5578715463', 'Nicolas_Ruiz64@gmail.com', '20', '', '4', '9', '3', '1'),
('2016567841', 'Jose', 'Rodriguez', 'Caballero', '1997-10-07', '1', 'ROCJ971007MVRBS19', 'Rio Churubusco', '81', 'San Juan De Aragon', '3', '01010', '5522538585', 'Jose_Rodriguez37@gmail.com', '9', '', '23', '9', '3', '5'),
('2016573447', 'Emily', 'Alvarez', 'Marin', '1996-08-02', '2', 'ALME960802FEMRI84', 'Calzada de Guadalupe', '76', 'Juarez', '11', '01357', '5511428431', 'Emily_Alvarez67@gmail.com', '11', '', '21', '7', '1', '6'),
('2016633682', 'Isabella', 'Serrano', 'Alvarez', '1999-08-24', '2', 'SEAI990824FDFVA81', 'Rio Churubusco', '66', 'Chinampac De Juarez', '7', '02130', '5515828677', 'Isabella_Serrano77@gmail.com', '5', '', '16', '7', '2', '2'),
('2016635626', 'Manuel', 'Sosa', 'Alvarez', '1999-11-27', '1', 'SOAM991127MEMVN41', 'Rio de la Piedad', '48', 'Santa Ursula Xitla', '2', '00810', '5548387342', 'Manuel_Sosa11@gmail.com', '20', '', '25', '6', '1', '4'),
('2016641583', 'Manuel', 'Sosa', 'Moreno', '1998-08-08', '1', 'SOMM980808MGDRN58', 'Avenida Alvaro Obregon', '72', 'Rinconada ', '5', '08934', '5518856868', 'Manuel_Sosa11@gmail.com', '11', '', '29', '8', '2', '1'),
('2016662277', 'Angelica', 'Prieto', 'Ruiz', '1997-08-23', '2', 'PRRA970823FSOIG57', 'Avenida Amsterdam', '40', 'Lomas Altas', '10', '01388', '5552355322', 'Angelica_Prieto95@gmail.com', '20', '', '31', '7', '2', '3'),
('2016671543', 'Lucia', 'Benites', 'Moreno', '1997-01-12', '2', 'BEML970112FDFRC79', 'Avenida Tlahuac', '45', 'El Prado', '6', '01388', '5524767137', 'Lucia_Benites80@gmail.com', '20', '', '5', '6', '2', '3'),
('2016718851', 'Pablo', 'Garcia', 'Caballero', '1996-02-13', '1', 'GACP960213MEMBB29', 'Calzada de Guadalupe', '25', 'Santa Ursula Xitla', '2', '01330', '5525311684', 'Pablo_Garcia88@gmail.com', '18', '', '4', '6', '3', '7'),
('2016775218', 'Sebastian', 'Diaz', 'Prieto', '1996-07-17', '1', 'DIPS960717MTXIB33', 'Eje Central Lazaro Cardenas', '23', 'Paulino Navarro', '4', '01420', '5581381788', 'Sebastian_Diaz89@gmail.com', '14', '', '25', '6', '3', '6'),
('2016833251', 'Johana', 'Moreno', 'Rodriguez', '1996-04-07', '2', 'MORJ960407FGDDH65', 'Rio Churubusco', '63', 'Polanco', '13', '01420', '5572616261', 'Johana_Moreno53@gmail.com', '2', '', '5', '8', '1', '3'),
('2016842365', 'Ester', 'Crespo', 'Fernandez', '1997-05-12', '2', 'CRFE970512FYCRT38', 'Glorieta de los Insurgentes', '28', 'San Juan De Aragon', '3', '08934', '5551111524', 'Ester_Crespo31@gmail.com', '3', '', '17', '9', '1', '5'),
('2016865333', 'Mercedes', 'Acosta', 'Sanchez', '1999-03-09', '2', 'ACSM990309FTXNR77', 'Rio Churubusco', '42', 'Tlatelolco', '14', '01420', '5585272441', 'Mercedes_Acosta68@gmail.com', '18', '', '15', '9', '3', '4'),
('2016871238', 'Ester', 'Crespo', 'Suarez', '1999-03-09', '2', 'CRSE990309FGDAT88', 'Calzada de Tlalpan', '82', 'Tlatelolco', '14', '07210', '5512183243', 'Ester_Crespo77@gmail.com', '9', '', '1', '9', '2', '1'),
('2017112156', 'Hugo', 'Torres', 'Sosa', '1997-05-24', '1', 'TOSH970524MYCSG59', 'Calzada Ignacio Zaragoza', '23', 'Rinconada ', '5', '01318', '5586426528', 'Hugo_Torres37@gmail.com', '13', '', '8', '8', '1', '4'),
('2017116663', 'Angelica', 'Prieto', 'Martinez', '1997-08-07', '2', 'PRMA970807FSORG21', 'Rio de la Piedad', '63', 'El Prado', '6', '08934', '5582587432', 'Angelica_Prieto90@gmail.com', '13', '', '18', '9', '1', '4'),
('2017143616', 'Lourdes', 'Suarez', 'Serrano', '1996-01-11', '2', 'SUSL960111FOARU25', 'Avenida 16 de Septiembre', '38', 'Santa Ursula Xitla', '2', '01500', '5522282642', 'Lourdes_Suarez82@gmail.com', '11', '', '3', '9', '2', '7'),
('2017181643', 'Juan', 'Hernandez', 'Perez', '1997-05-17', '1', 'HEPJ970517MEMRA60', 'Rio de la Piedad', '42', 'El Prado', '6', '08934', '5532828863', 'Juan_Hernandez38@gmail.com', '1', '', '28', '8', '3', '4'),
('2017187671', 'Isabella', 'Serrano', 'Fernandez', '1997-11-09', '2', 'SEFI971109FASRA59', 'Avenida Revolucion', '14', 'San Juan De Aragon', '3', '01388', '5538414868', 'Isabella_Serrano57@gmail.com', '13', '', '28', '8', '2', '3'),
('2017242855', 'Maria', 'Alvarez', 'Crespo', '1996-08-07', '2', 'ALCM960807FOAER48', 'Avenida 16 de Septiembre', '32', 'Del Carmen', '15', '01420', '5536272185', 'Maria_Alvarez75@gmail.com', '13', '', '23', '8', '1', '6'),
('2017283116', 'Mercedes', 'Acosta', 'Torres', '1996-11-03', '2', 'ACTM961103FVRRR98', 'Avenida Alvaro Obregon', '39', 'Benito Juarez', '9', '08934', '5543651428', 'Mercedes_Acosta72@gmail.com', '18', '', '3', '7', '3', '6'),
('2017368212', 'Sebastian', 'Diaz', 'Gomez', '1999-09-07', '1', 'DIGS990907MEMMB71', 'Calzada de Guadalupe', '25', 'Lomas Altas', '10', '01318', '5554767243', 'Sebastian_Diaz36@gmail.com', '10', '', '30', '8', '3', '7'),
('2017425567', 'Mercedes', 'Acosta', 'Perez', '1998-06-11', '2', 'ACPM980611FASRR51', 'Eje 3 Norte', '16', 'Chinampac De Juarez', '7', '08934', '5586782658', 'Mercedes_Acosta43@gmail.com', '8', '', '10', '7', '2', '5'),
('2017445466', 'Erick', 'Sanchez', 'Prieto', '1999-04-19', '1', 'SAPE990419MSOII80', 'Avenida 16 de Septiembre', '41', 'La Pastora', '8', '01590', '5543274182', 'Erick_Sanchez71@gmail.com', '18', '', '15', '9', '2', '6'),
('2017477657', 'Federico', 'Fernandez', 'Diaz', '1997-10-28', '1', 'FEDF971028MSOAD36', 'Avenida Revolucion', '41', 'Roma', '12', '00810', '5543658818', 'Federico_Fernandez68@gmail.com', '6', '', '16', '9', '3', '3'),
('2017516252', 'Pablo', 'Garcia', 'Ramirez', '1996-10-27', '1', 'GARP961027MASMB13', 'Rio Churubusco', '18', 'Paulino Navarro', '4', '07210', '5517212336', 'Pablo_Garcia95@gmail.com', '16', '', '15', '8', '2', '2'),
('2017656247', 'Emily', 'Alvarez', 'Ruiz', '1998-02-14', '2', 'ALRE980214FOAII90', 'Avenida 16 de Septiembre', '38', 'Rinconada ', '5', '02130', '5546335412', 'Emily_Alvarez86@gmail.com', '6', '', '11', '6', '2', '5'),
('2017728841', 'Guadalupe', 'Caballero', 'Calvo', '1997-05-05', '2', 'CACG970505FASLA28', 'Avenida Revolucion', '26', 'Tlatelolco', '14', '01590', '5532255765', 'Guadalupe_Caballero69@gmail.com', '14', '', '5', '8', '2', '6'),
('2017741686', 'Joaquin', 'Gomez', 'Sosa', '1999-11-17', '1', 'GOSJ991117MSOSA84', 'Avenida Tlahuac', '36', 'El Prado', '6', '01388', '5538814258', 'Joaquin_Gomez30@gmail.com', '7', '', '27', '7', '1', '1'),
('2017746325', 'Sebastian', 'Diaz', 'Torres', '1999-04-12', '1', 'DITS990412MTXRB54', 'Calzada de Guadalupe', '52', 'Santa Ursula Xitla', '2', '01318', '5547183418', 'Sebastian_Diaz68@gmail.com', '19', '', '28', '9', '1', '5'),
('2017747877', 'Ester', 'Crespo', 'Gomez', '0000-00-00', '2', 'CRGE970229FASMT28', 'Avenida 16 de Septiembre', '17', 'El Prado', '6', '01357', '5537243232', 'Ester_Crespo28@gmail.com', '15', '', '3', '8', '1', '4'),
('2017761651', 'Guadalupe', 'Caballero', 'Hernandez', '1998-10-28', '2', 'CAHG981028FEMRA37', 'Avenida Alvaro Obregon', '72', 'Santa Ursula Xitla', '2', '02210', '5555342751', 'Guadalupe_Caballero77@gmail.com', '4', '', '21', '8', '2', '3'),
('2017768771', 'Angelica', 'Prieto', 'Prieto', '1996-11-07', '2', 'PRPA961107FTXIG39', 'Calzada de Guadalupe', '19', 'Roma', '12', '01567', '5515738864', 'Angelica_Prieto92@gmail.com', '9', '', '27', '7', '3', '1'),
('2017778872', 'Erick', 'Sanchez', 'Sanchez', '1996-02-09', '1', 'SASE960209MDFNI56', 'Eje Central Lazaro Cardenas', '11', 'Chinampac De Juarez', '7', '01388', '5516712324', 'Erick_Sanchez91@gmail.com', '1', '', '7', '8', '3', '1'),
('2017813853', 'Emily', 'Alvarez', 'Rodriguez', '1997-07-24', '2', 'ALRE970724FSODI21', 'Avenida Tlahuac', '51', 'Roma', '12', '01318', '5527486545', 'Emily_Alvarez72@gmail.com', '13', '', '23', '8', '3', '4'),
('2017815854', 'Lourdes', 'Suarez', 'Suarez', '1998-01-07', '2', 'SUSL980107FVRAU58', 'Callejon de Manzanares', '72', 'La Pastora', '8', '01357', '5524716764', 'Lourdes_Suarez81@gmail.com', '8', '', '25', '7', '1', '1'),
('2017823816', 'Guadalupe', 'Caballero', 'Serrano', '1998-06-20', '2', 'CASG980620FTXRA35', 'Avenida Revolucion', '74', 'Polanco', '13', '00810', '5546671621', 'Guadalupe_Caballero94@gmail.com', '1', '', '7', '7', '3', '5'),
('2017824461', 'Federico', 'Fernandez', 'Marin', '1999-06-05', '1', 'FEMF990605MYCRD57', 'Rio de la Piedad', '27', 'Chinampac De Juarez', '7', '01590', '5553647414', 'Federico_Fernandez10@gmail.com', '4', '', '4', '9', '1', '2'),
('2017828677', 'Angelica', 'Prieto', 'Diaz', '1999-05-18', '2', 'PRDA990518FEMAG37', 'Calle de Republica de Argentina', '38', 'La Martinica', '1', '01330', '5588443552', 'Angelica_Prieto12@gmail.com', '15', '', '2', '9', '1', '3'),
('2017854757', 'Maria', 'Alvarez', 'Gonzales', '1997-05-27', '2', 'ALGM970527FTXNR95', 'Calzada de Guadalupe', '61', 'Del Carmen', '15', '01357', '5556516484', 'Maria_Alvarez55@gmail.com', '1', '', '17', '6', '3', '7'),
('2017866833', 'Sebastian', 'Diaz', 'Rodriguez', '1998-04-15', '1', 'DIRS980415MSODB10', 'Calzada Ignacio Zaragoza', '29', 'Del Carmen', '15', '01049', '5527438361', 'Sebastian_Diaz61@gmail.com', '4', '', '20', '7', '1', '5'),
('2018113283', 'Federico', 'Fernandez', 'Perez', '1996-11-07', '1', 'FEPF961107MOARD59', 'Calle de Republica de Argentina', '80', 'Polanco', '13', '01318', '5575517822', 'Federico_Fernandez63@gmail.com', '8', '', '30', '8', '2', '7'),
('2018136637', 'Joaquin', 'Gomez', 'Fernandez', '1998-06-11', '1', 'GOFJ980611MVRRA28', 'Avenida 16 de Septiembre', '32', 'Juarez', '11', '01590', '5568823561', 'Joaquin_Gomez20@gmail.com', '5', '', '18', '7', '1', '6'),
('2018137861', 'Federico', 'Fernandez', 'Crespo', '1999-09-05', '1', 'FECF990905MDFED41', 'Calzada Ignacio Zaragoza', '41', 'Tlatelolco', '14', '07210', '5518423853', 'Federico_Fernandez18@gmail.com', '18', '', '5', '6', '3', '2'),
('2018138742', 'Pablo', 'Garcia', 'Pastor', '1996-05-08', '1', 'GAPP960508MYCSB47', 'Calzada de Guadalupe', '43', 'Paulino Navarro', '4', '02130', '5584533173', 'Pablo_Garcia14@gmail.com', '15', '', '27', '6', '3', '3'),
('2018153247', 'Veronica', 'Pastor', 'Gomez', '1996-06-12', '2', 'PAGV960612FSOMR95', 'Avenida Tlahuac', '57', 'El Prado', '6', '02130', '5573548213', 'Veronica_Pastor83@gmail.com', '15', '', '7', '7', '3', '3'),
('2018165321', 'Guadalupe', 'Caballero', 'Torres', '1997-08-18', '2', 'CATG970818FVRRA19', 'Calzada de Guadalupe', '46', 'Roma', '12', '02210', '5532778228', 'Guadalupe_Caballero19@gmail.com', '5', '', '12', '7', '3', '3'),
('2018185164', 'Sebastian', 'Diaz', 'Torres', '1998-01-14', '1', 'DITS980114MSORB95', 'Avenida 16 de Septiembre', '32', 'San Juan De Aragon', '3', '08934', '5517511378', 'Sebastian_Diaz46@gmail.com', '15', '', '29', '8', '3', '6'),
('2018221343', 'Ester', 'Crespo', 'Suarez', '1997-10-09', '2', 'CRSE971009FTXAT82', 'Calzada de Guadalupe', '40', 'Roma', '12', '01318', '5541776245', 'Ester_Crespo61@gmail.com', '4', '', '20', '7', '2', '7'),
('2018247218', 'Pablo', 'Garcia', 'Alvarez', '1996-01-19', '1', 'GAAP960119MTXVB20', 'Calle de Republica de Argentina', '62', 'Rinconada ', '5', '01318', '5533858262', 'Pablo_Garcia11@gmail.com', '19', '', '12', '7', '2', '4'),
('2018271243', 'Jose', 'Rodriguez', 'Marin', '1999-03-18', '1', 'ROMJ990318MEMRS26', 'Rio Churubusco', '69', 'Santa Ursula Xitla', '2', '01318', '5558171775', 'Jose_Rodriguez68@gmail.com', '2', '', '31', '8', '2', '4'),
('2018317756', 'Jessica', 'Calvo', 'Fernandez', '1996-03-27', '2', 'CAFJ960327FGDRS63', 'Eje Central Lazaro Cardenas', '41', 'Chinampac De Juarez', '7', '01357', '5563738433', 'Jessica_Calvo68@gmail.com', '3', '', '26', '6', '3', '6'),
('2018335218', 'Israel', 'Perez', 'Suarez', '1997-06-16', '1', 'MAHJ280603MSPRRV09', 'Calzada de Guadalupe', '61', 'San Juan De Aragon', '3', '08934', '5576284762', 'Alberto_Perez86@gmail.com', '21', 'Ezequiela Chavez UNAM', '7', '7', '2', '3'),
('2018384138', 'Victor', 'Ramirez', 'Gomez', '1998-05-17', '1', 'RAGV980517MGDMC46', 'Avenida Amsterdam', '58', 'Paulino Navarro', '4', '02210', '5568224266', 'Victor_Ramirez21@gmail.com', '9', '', '22', '6', '2', '3'),
('2018412343', 'Johana', 'Moreno', 'Benites', '1999-10-14', '2', 'MOBJ991014FTXNH22', 'Eje Central Lazaro Cardenas', '68', 'Del Carmen', '15', '01318', '5588871415', 'Johana_Moreno44@gmail.com', '12', '', '14', '6', '3', '1'),
('2018415463', 'Angelica', 'Prieto', 'Alvarez', '1996-06-08', '2', 'PRAA960608FTXVG37', 'Rio Churubusco', '66', 'La Martinica', '1', '01357', '5537715821', 'Angelica_Prieto94@gmail.com', '5', '', '23', '9', '3', '3'),
('2018455434', 'Emily', 'Alvarez', 'Serrano', '1999-07-28', '2', 'ALSE990728FDFRI73', 'Eje 3 Norte', '34', 'Del Carmen', '15', '01318', '5564481463', 'Emily_Alvarez10@gmail.com', '15', '', '8', '8', '2', '5'),
('2018473755', 'Nicolas', 'Ruiz', 'Gonzales', '1996-05-13', '1', 'RUGN960513MGDNC10', 'Calle de Republica de Argentina', '14', 'Roma', '12', '01318', '5525445881', 'Nicolas_Ruiz89@gmail.com', '6', '', '24', '8', '1', '1'),
('2018516117', 'Jessica', 'Calvo', 'Sosa', '1999-01-13', '2', 'CASJ990113FGDSS84', 'Glorieta de los Insurgentes', '52', 'Santa Ursula Xitla', '2', '02130', '5511586321', 'Jessica_Calvo71@gmail.com', '18', '', '15', '8', '3', '6'),
('2018526815', 'Israel', 'Perez', 'Alvarez', '1999-02-17', '1', 'HEVI960821HPLRZS08', 'Calzada de Guadalupe', '55', 'Polanco', '13', '01590', '5536446554', 'Alberto_Perez83@gmail.com', '21', '---', '23', '7', '2', '7'),
('2018565458', 'Lucia', 'Benites', 'Hernandez', '1998-01-03', '2', 'BEHL980103FVRRC77', 'Rio de la Piedad', '78', 'Lomas Altas', '10', '02130', '5514361632', 'Lucia_Benites36@gmail.com', '6', '', '14', '6', '3', '7'),
('2018577726', 'Maria', 'Alvarez', 'Martinez', '1998-05-28', '2', 'ALMM980528FOARR38', 'Glorieta de los Insurgentes', '43', 'Tlatelolco', '14', '01420', '5587211776', 'Maria_Alvarez12@gmail.com', '15', '', '2', '8', '2', '2'),
('2018586113', 'Alejandro', 'Lopez', 'Caballero', '1996-05-22', '1', 'LOCA960522MGDBE14', 'Calle de Republica de Argentina', '35', 'Tlatelolco', '14', '01420', '5511881635', 'Alejandro_Lopez72@gmail.com', '6', '', '4', '7', '2', '5'),
('2018618723', 'Ester', 'Crespo', 'Caballero', '1998-03-02', '2', 'CRCE980302FDFBT26', 'Calzada Ignacio Zaragoza', '74', 'Lomas Altas', '10', '01420', '5583187145', 'Ester_Crespo82@gmail.com', '16', '', '14', '9', '1', '5'),
('2018632845', 'Mercedes', 'Acosta', 'Torres', '1997-08-25', '2', 'ACTM970825FYCRR81', 'Glorieta de los Insurgentes', '52', 'El Prado', '6', '01010', '5587816738', 'Mercedes_Acosta49@gmail.com', '15', '', '11', '7', '2', '1'),
('2018652816', 'Lourdes', 'Suarez', 'Marin', '1997-08-10', '2', 'SUML970810FDFRU90', 'Avenida Tlahuac', '18', 'La Pastora', '8', '01500', '5537631252', 'Lourdes_Suarez42@gmail.com', '9', '', '17', '7', '1', '5'),
('2018676151', 'Manuel', 'Sosa', 'Pastor', '1996-03-14', '1', 'SOPM960314MVRSN37', 'Eje 3 Norte', '67', 'El Prado', '6', '01318', '5543317832', 'Manuel_Sosa74@gmail.com', '5', '', '3', '7', '2', '2'),
('2018738878', 'Hugo', 'Torres', 'Acosta', '1999-11-29', '1', 'TOAH991129MDFOG81', 'Eje Central Lazaro Cardenas', '14', 'La Pastora', '8', '02130', '5538382215', 'Hugo_Torres64@gmail.com', '15', '', '24', '8', '1', '7'),
('2018753832', 'Veronica', 'Pastor', 'Garcia', '1996-01-29', '2', 'PAGV960129FDFRR64', 'Avenida Revolucion', '38', 'Benito Juarez', '9', '01318', '5535437266', 'Veronica_Pastor66@gmail.com', '15', '', '18', '9', '2', '6'),
('2018775853', 'Nicolas', 'Ruiz', 'Ramirez', '1998-01-19', '1', 'RURN980119MTXMC41', 'Calle de Republica de Argentina', '14', 'El Prado', '6', '08934', '5583638584', 'Nicolas_Ruiz52@gmail.com', '10', '', '31', '7', '1', '2'),
('2018786774', 'Esteban', 'Gonzales', 'Ruiz', '1999-07-04', '1', 'GORE990704MSOIT57', 'Avenida Tlahuac', '42', 'Benito Juarez', '9', '01010', '5523424551', 'Esteban_Gonzales68@gmail.com', '2', '', '31', '9', '1', '4'),
('2018787533', 'Edgar', 'Martinez', 'Ruiz', '1996-11-26', '1', 'MARE961126MGDIG58', 'Avenida Tlahuac', '42', 'La Pastora', '8', '01318', '5515188822', 'Edgar_Martinez82@gmail.com', '16', '', '14', '6', '3', '1'),
('2018836354', 'Jimena', 'Aguirre', 'Garcia', '1998-04-17', '2', 'AGGJ980417FYCRM38', 'Glorieta de los Insurgentes', '28', 'Lomas Altas', '10', '02130', '5578611458', 'Jimena_Aguirre43@gmail.com', '12', '', '26', '7', '2', '2'),
('2018872158', 'Jimena', 'Aguirre', 'Martinez', '1998-10-17', '2', 'AGMJ981017FYCRM89', 'Calle de Republica de Argentina', '11', 'Rinconada ', '5', '01049', '5543421811', 'Jimena_Aguirre15@gmail.com', '18', '', '5', '6', '2', '5'),
('2018886563', 'Jose', 'Rodriguez', 'Perez', '1999-08-11', '1', 'ROPJ990811MSORS80', 'Avenida Revolucion', '23', 'Tlatelolco', '14', '01357', '5583623882', 'Jose_Rodriguez36@gmail.com', '14', '', '15', '9', '1', '6'),
('2019121437', 'Manuel', 'Sosa', 'Serrano', '1997-02-26', '1', 'SOSM970226MDFRN96', 'Avenida 16 de Septiembre', '35', 'Santa Ursula Xitla', '2', '01567', '5544337164', 'Manuel_Sosa24@gmail.com', '16', '', '10', '9', '3', '2'),
('2019122652', 'Federico', 'Fernandez', 'Crespo', '1999-01-18', '1', 'FECF990118MEMED26', 'Avenida 16 de Septiembre', '56', 'San Juan De Aragon', '3', '00810', '5565326776', 'Federico_Fernandez43@gmail.com', '12', '', '26', '7', '1', '5'),
('2019135541', 'Nicolas', 'Ruiz', 'Rodriguez', '1996-07-26', '1', 'RURN960726MGDDC69', 'Calzada de Guadalupe', '16', 'Paulino Navarro', '4', '01420', '5522677771', 'Nicolas_Ruiz29@gmail.com', '15', '', '22', '9', '2', '1'),
('2019164881', 'Maria', 'Alvarez', 'Gonzales', '1997-05-27', '2', 'ALGM970527FTXNR95', 'Calzada de Guadalupe', '61', 'Del Carmen', '15', '01357', '5556516484', 'Maria_Alvarez55@gmail.com', '1', '', '17', '6', '3', '1'),
('2019213214', 'Mercedes', 'Acosta', 'Martinez', '1998-11-27', '2', 'ACMM981127FASRR72', 'Calzada de Guadalupe', '73', 'Paulino Navarro', '4', '02130', '5561567127', 'Mercedes_Acosta68@gmail.com', '15', '', '12', '6', '1', '4'),
('2019247655', 'Pablo', 'Garcia', 'Gomez', '1997-07-05', '1', 'GAGP970705MEMMB33', 'Glorieta de los Insurgentes', '22', 'Lomas Altas', '10', '02130', '5571224787', 'Pablo_Garcia86@gmail.com', '15', '', '7', '6', '1', '3'),
('2019252125', 'Lorena', 'Herrera', 'Crespo', '1998-09-11', '2', 'HECL980911FOAER74', 'Eje Central Lazaro Cardenas', '20', 'Benito Juarez', '9', '00810', '5541472724', 'Lorena_Herrera23@gmail.com', '4', '', '5', '8', '1', '7'),
('2019276111', 'Ester', 'Crespo', 'Alvarez', '1996-10-10', '2', 'CRAE961010FOAVT90', 'Eje Central Lazaro Cardenas', '38', 'Rinconada ', '5', '00810', '5568621656', 'Ester_Crespo82@gmail.com', '7', '', '18', '8', '3', '4'),
('2019283771', 'Isabella', 'Serrano', 'Herrera', '1998-06-15', '2', 'SEHI980615FTXRA67', 'Eje 3 Norte', '37', 'Roma', '12', '01318', '5571815173', 'Isabella_Serrano52@gmail.com', '6', '', '15', '8', '2', '2'),
('2019313346', 'Sofia', 'Marin', 'Acosta', '1997-03-13', '2', 'MAAS970313FYCOF36', 'Glorieta de los Insurgentes', '13', 'Benito Juarez', '9', '00810', '5564835148', 'Sofia_Marin86@gmail.com', '6', '', '11', '8', '1', '2'),
('2019324757', 'Hugo', 'Torres', 'Sosa', '1998-03-18', '1', 'TOSH980318MGDSG72', 'Calzada Ignacio Zaragoza', '11', 'La Martinica', '1', '01049', '5531112188', 'Hugo_Torres17@gmail.com', '18', '', '30', '6', '3', '1'),
('2019342377', 'Lorena', 'Herrera', 'Calvo', '1997-05-14', '2', 'HECL970514FTXLR48', 'Callejon de Manzanares', '15', 'Del Carmen', '15', '01318', '5571171248', 'Lorena_Herrera90@gmail.com', '10', '', '15', '9', '1', '3'),
('2019351518', 'Lucia', 'Benites', 'Serrano', '1998-09-11', '2', 'BESL980911FTXRC16', 'Calzada Ignacio Zaragoza', '38', 'Benito Juarez', '9', '01010', '5574411471', 'Lucia_Benites19@gmail.com', '6', '', '25', '6', '2', '1'),
('2019355572', 'Hugo', 'Torres', 'Caballero', '1999-01-17', '1', 'TOCH990117MASBG95', 'Calzada Ignacio Zaragoza', '23', 'San Juan De Aragon', '3', '01500', '5574147785', 'Hugo_Torres93@gmail.com', '9', '', '2', '9', '1', '6'),
('2019368167', 'Sebastian', 'Diaz', 'Diaz', '1996-03-04', '1', 'DIDS960304MEMAB15', 'Avenida 16 de Septiembre', '14', 'Benito Juarez', '9', '01567', '5513786171', 'Sebastian_Diaz17@gmail.com', '6', '', '31', '9', '2', '2'),
('2019415727', 'Lourdes', 'Suarez', 'Alvarez', '1996-04-24', '2', 'SUAL960424FGDVU24', 'Rio Churubusco', '15', 'Rinconada ', '5', '01010', '5511128866', 'Lourdes_Suarez55@gmail.com', '6', '', '15', '6', '3', '6'),
('2019456716', 'Ester', 'Crespo', 'Gonzales', '1999-10-07', '2', 'CRGE991007FTXNT29', 'Calzada Ignacio Zaragoza', '77', 'Paulino Navarro', '4', '01590', '5583371481', 'Ester_Crespo43@gmail.com', '12', '', '26', '6', '1', '3'),
('2019521854', 'Jimena', 'Aguirre', 'Prieto', '1997-03-17', '2', 'AGPJ970317FOAIM14', 'Avenida Tlahuac', '30', 'Polanco', '13', '01388', '5514763518', 'Jimena_Aguirre44@gmail.com', '4', '', '31', '9', '2', '1'),
('2019536474', 'Jose', 'Rodriguez', 'Crespo', '1996-06-29', '1', 'ROCJ960629MOAES90', 'Calzada Ignacio Zaragoza', '65', 'La Martinica', '1', '00810', '5537346361', 'Jose_Rodriguez38@gmail.com', '5', '', '13', '7', '2', '2'),
('2019553784', 'Angelica', 'Prieto', 'Rodriguez', '1997-01-13', '2', 'PRRA970113FASDG95', 'Eje Central Lazaro Cardenas', '68', 'Roma', '12', '01330', '5521677757', 'Angelica_Prieto46@gmail.com', '15', '', '29', '9', '1', '4'),
('2019557815', 'Guadalupe', 'Caballero', 'Alvarez', '1997-05-23', '2', 'CAAG970523FOAVA29', 'Avenida Tlahuac', '75', 'Polanco', '13', '07210', '5552221572', 'Guadalupe_Caballero20@gmail.com', '5', '', '18', '6', '3', '6'),
('2019566158', 'Jimena', 'Aguirre', 'Calvo', '1997-05-01', '2', 'AGCJ970501FVRLM77', 'Eje 3 Norte', '58', 'Benito Juarez', '9', '01357', '5577813846', 'Jimena_Aguirre16@gmail.com', '2', '', '9', '8', '2', '3'),
('2019616862', 'Hugo', 'Torres', 'Perez', '1998-05-12', '1', 'TOPH980512MOARG72', 'Calle de Republica de Argentina', '77', 'Rinconada ', '5', '02130', '5578237372', 'Hugo_Torres59@gmail.com', '17', '', '7', '8', '3', '5'),
('2019627734', 'Esteban', 'Gonzales', 'Perez', '1998-05-23', '1', 'GOPE980523MDFRT13', 'Calzada de Tlalpan', '22', 'San Juan De Aragon', '3', '01590', '5582384471', 'Esteban_Gonzales73@gmail.com', '9', '', '13', '9', '1', '5'),
('2019661221', 'Hugo', 'Torres', 'Alvarez', '1999-01-12', '1', 'TOAH990112MDFVG51', 'Avenida Amsterdam', '46', 'La Pastora', '8', '08934', '5551486175', 'Hugo_Torres18@gmail.com', '6', '', '19', '8', '3', '2'),
('2019661632', 'Juan', 'Hernandez', 'Acosta', '1998-09-08', '1', 'HEAJ980908MVROA85', 'Calzada Ignacio Zaragoza', '38', 'Santa Ursula Xitla', '2', '07210', '5518516478', 'Juan_Hernandez78@gmail.com', '16', '', '26', '8', '2', '6'),
('2019682242', 'Jessica', 'Calvo', 'Fernandez', '1997-03-11', '2', 'CAFJ970311FDFRS32', 'Avenida 16 de Septiembre', '44', 'La Pastora', '8', '07210', '5555735181', 'Jessica_Calvo14@gmail.com', '19', '', '12', '9', '2', '4'),
('2019684464', 'Sebastian', 'Diaz', 'Serrano', '0000-00-00', '1', 'DISS980229MVRRB24', 'Eje 3 Norte', '28', 'Paulino Navarro', '4', '01590', '5571853383', 'Sebastian_Diaz87@gmail.com', '10', '', '15', '6', '1', '3'),
('2019687123', 'Veronica', 'Pastor', 'Torres', '1999-10-18', '2', 'PATV991018FYCRR76', 'Avenida Amsterdam', '19', 'Paulino Navarro', '4', '00810', '5527182821', 'Veronica_Pastor66@gmail.com', '15', '', '18', '9', '3', '6'),
('2019721377', 'Isabella', 'Serrano', 'Caballero', '1997-02-13', '2', 'SECI970213FVRBA81', 'Avenida Amsterdam', '46', 'San Juan De Aragon', '3', '01357', '5551622426', 'Isabella_Serrano83@gmail.com', '19', '', '23', '6', '2', '1'),
('2019815228', 'Hugo', 'Torres', 'Torres', '1998-11-27', '1', 'TOTH981127MVRRG70', 'Avenida Amsterdam', '31', 'Roma', '12', '01388', '5546588775', 'Hugo_Torres77@gmail.com', '13', '', '17', '8', '3', '5'),
('2019822526', 'Edgar', 'Martinez', 'Pastor', '1997-06-03', '1', 'MAPE970603MASSG41', 'Calzada de Guadalupe', '43', 'Tlatelolco', '14', '01500', '5558828437', 'Edgar_Martinez94@gmail.com', '5', '', '23', '8', '1', '2'),
('2019878721', 'Isabella', 'Serrano', 'Benites', '1996-01-03', '2', 'SEBI960103FASNA55', 'Avenida Tlahuac', '36', 'La Pastora', '8', '01318', '5588582775', 'Isabella_Serrano91@gmail.com', '9', '', '8', '9', '1', '4'),
('2020132686', 'Sofia', 'Marin', 'Torres', '1997-09-07', '2', 'MATS970907FVRRF83', 'Avenida 16 de Septiembre', '44', 'Del Carmen', '15', '01420', '5543876484', 'Sofia_Marin74@gmail.com', '5', '', '3', '9', '2', '5'),
('2020137123', 'Juan', 'Hernandez', 'Alvarez', '1996-03-08', '1', 'HEAJ960308MSOVA44', 'Eje 3 Norte', '34', 'Roma', '12', '01567', '5574341368', 'Juan_Hernandez32@gmail.com', '11', '', '6', '8', '1', '3'),
('2020142518', 'Emily', 'Alvarez', 'Prieto', '1999-08-23', '2', 'ALPE990823FGDII42', 'Callejon de Manzanares', '21', 'San Juan De Aragon', '3', '01590', '5582653842', 'Emily_Alvarez97@gmail.com', '4', '', '10', '9', '1', '4'),
('2020145837', 'Edgar', 'Martinez', 'Perez', '1997-07-03', '1', 'MAPE970703MDFRG83', 'Callejon de Manzanares', '33', 'La Martinica', '1', '08934', '5538561427', 'Edgar_Martinez39@gmail.com', '13', '', '2', '7', '1', '2'),
('2020148214', 'Jessica', 'Calvo', 'Prieto', '1999-10-19', '2', 'CAPJ991019FEMIS51', 'Calle de Republica de Argentina', '14', 'La Pastora', '8', '01049', '5537786243', 'Jessica_Calvo17@gmail.com', '14', '', '14', '7', '3', '2'),
('2020182834', 'Joaquin', 'Gomez', 'Fernandez', '1997-09-27', '1', 'GOFJ970927MEMRA51', 'Avenida Amsterdam', '67', 'Chinampac De Juarez', '7', '02130', '5523456368', 'Joaquin_Gomez38@gmail.com', '1', '', '28', '6', '2', '2'),
('2020184823', 'Angelica', 'Prieto', 'Gomez', '1996-02-14', '2', 'PRGA960214FOAMG55', 'Avenida Revolucion', '23', 'Polanco', '13', '01420', '5513556247', 'Angelica_Prieto62@gmail.com', '16', '', '25', '8', '3', '3'),
('2020185356', 'Juan', 'Hernandez', 'Martinez', '1999-02-12', '1', 'HEMJ990212MEMRA20', 'Avenida Revolucion', '80', 'Paulino Navarro', '4', '01049', '5583514861', 'Juan_Hernandez11@gmail.com', '19', '', '12', '6', '3', '3'),
('2020186526', 'Lourdes', 'Suarez', 'Martinez', '1997-11-02', '2', 'SUML971102FYCRU85', 'Calzada de Tlalpan', '49', 'Lomas Altas', '10', '01590', '5568148276', 'Lourdes_Suarez10@gmail.com', '16', '', '3', '6', '2', '7'),
('2020225153', 'Jessica', 'Calvo', 'Ruiz', '1997-03-21', '2', 'CARJ970321FYCIS23', 'Calzada de Tlalpan', '70', 'San Juan De Aragon', '3', '01567', '5566634186', 'Jessica_Calvo58@gmail.com', '5', '', '2', '6', '2', '5'),
('2020236215', 'Emily', 'Alvarez', 'Fernandez', '1996-04-01', '2', 'ALFE960401FGDRI77', 'Calzada Ignacio Zaragoza', '23', 'Chinampac De Juarez', '7', '01318', '5533446585', 'Emily_Alvarez11@gmail.com', '20', '', '25', '9', '3', '4'),
('2020275838', 'Sofia', 'Marin', 'Gonzales', '1998-03-09', '2', 'MAGS980309FDFNF45', 'Rio Churubusco', '57', 'Paulino Navarro', '4', '01330', '5541487728', 'Sofia_Marin73@gmail.com', '13', '', '29', '9', '1', '5'),
('2020315812', 'Jessica', 'Calvo', 'Rodriguez', '1996-05-03', '2', 'CARJ960503FYCDS21', 'Glorieta de los Insurgentes', '58', 'El Prado', '6', '08934', '5588365546', 'Jessica_Calvo43@gmail.com', '12', '', '26', '9', '2', '6'),
('2020331684', 'Mercedes', 'Acosta', 'Ramirez', '1996-02-15', '2', 'ACRM960215FTXMR20', 'Glorieta de los Insurgentes', '55', 'Benito Juarez', '9', '08934', '5554457517', 'Mercedes_Acosta51@gmail.com', '14', '', '10', '8', '2', '6'),
('2020373365', 'Lourdes', 'Suarez', 'Sosa', '1999-09-29', '2', 'SUSL990929FSOSU14', 'Glorieta de los Insurgentes', '79', 'Santa Ursula Xitla', '2', '01318', '5576737161', 'Lourdes_Suarez86@gmail.com', '14', '', '25', '6', '2', '7'),
('2020432616', 'Alejandro', 'Lopez', 'Fernandez', '1998-02-18', '1', 'LOFA980218MASRE32', 'Rio Churubusco', '21', 'Juarez', '11', '01500', '5531382152', 'Alejandro_Lopez16@gmail.com', '10', '', '10', '7', '2', '2'),
('2020463425', 'Joaquin', 'Gomez', 'Gomez', '1997-08-22', '1', 'GOGJ970822MSOMA89', 'Calzada de Guadalupe', '37', 'Del Carmen', '15', '02210', '5545288881', 'Joaquin_Gomez63@gmail.com', '20', '', '29', '8', '3', '2'),
('2020474241', 'Jimena', 'Aguirre', 'Gomez', '1996-08-26', '2', 'AGGJ960826FSOMM55', 'Eje Central Lazaro Cardenas', '65', 'Lomas Altas', '10', '01567', '5581145353', 'Jimena_Aguirre62@gmail.com', '20', '', '10', '6', '2', '6'),
('2020523117', 'Johana', 'Moreno', 'Perez', '1998-03-26', '2', 'MOPJ980326FVRRH34', 'Rio Churubusco', '21', 'El Prado', '6', '08934', '5556282534', 'Johana_Moreno65@gmail.com', '3', '', '13', '8', '1', '5'),
('2020548462', 'Emily', 'Alvarez', 'Acosta', '1998-03-06', '2', 'ALAE980306FGDOI88', 'Avenida Tlahuac', '78', 'San Juan De Aragon', '3', '01388', '5552566614', 'Emily_Alvarez53@gmail.com', '14', '', '4', '8', '2', '1'),
('2020626777', 'Erick', 'Sanchez', 'Perez', '1998-09-17', '1', 'SAPE980917MDFRI32', 'Eje Central Lazaro Cardenas', '50', 'Rinconada ', '5', '08934', '5547577224', 'Erick_Sanchez98@gmail.com', '8', '', '14', '7', '1', '7'),
('2020628268', 'Joaquin', 'Gomez', 'Prieto', '1999-11-07', '1', 'GOPJ991107MSOIA17', 'Glorieta de los Insurgentes', '40', 'Benito Juarez', '9', '08934', '5565757655', 'Joaquin_Gomez60@gmail.com', '9', '', '12', '8', '2', '7'),
('2020630603', 'Israel', 'Hernández', 'Vázquez', '2021-12-20', '1', 'HEVI960821HPLRZS08', 'Calle de la cruz', '7', 'Copalera', '3', '56337', '5526326651', 'al2183045545@azc.uam.mx', '21', 'Ezequiel A. Chávez', '11', '8.01', '1', '1'),
('2020630604', 'Israel', 'Hernández', 'Vázquez', '2021-12-28', '1', 'HEVI960821HPLRZS08', 'La Cruz', '1', 'Copalera', '6', '56337', '5577898989', 'hisral_v21@yahoo.com.mx', '2', '', '6', '8.01', '1', '7'),
('2020630612', 'Alfonso', 'Hernandez', 'Vazquez', '2021-12-23', '1', 'SAZM991212HPLRZS08', 'La Cruz', '10', 'Copalera', '1', '56337', '5577898989', 'alfonso_v21@yahoo.com.mx', '1', '', '2', '8.01', '1', '7'),
('2020637772', 'Isabella', 'Serrano', 'Aguirre', '1997-09-21', '2', 'SEAI970921FOAUA44', 'Calle de Republica de Argentina', '20', 'Rinconada ', '5', '01567', '5512463636', 'Isabella_Serrano40@gmail.com', '17', '', '6', '8', '2', '3'),
('2020642217', 'Jessica', 'Calvo', 'Suarez', '1996-01-17', '2', 'CASJ960117FTXAS29', 'Callejon de Manzanares', '12', 'Del Carmen', '15', '02130', '5572847841', 'Jessica_Calvo23@gmail.com', '9', '', '16', '9', '1', '1'),
('2020657432', 'Nicolas', 'Ruiz', 'Marin', '1997-06-20', '1', 'RUMN970620MOARC20', 'Rio Churubusco', '45', 'La Martinica', '1', '01049', '5557145133', 'Nicolas_Ruiz95@gmail.com', '4', '', '16', '6', '2', '7'),
('2020662336', 'Juan', 'Hernandez', 'Acosta', '1998-09-07', '1', 'HEAJ980907MTXOA82', 'Avenida Revolucion', '20', 'La Pastora', '8', '02210', '5537715821', 'Juan_Hernandez94@gmail.com', '5', '', '23', '9', '3', '2'),
('2020717437', 'Lorena', 'Herrera', 'Suarez', '1999-10-08', '2', 'HESL991008FVRAR64', 'Avenida Amsterdam', '43', 'Rinconada ', '5', '01567', '5517748312', 'Lorena_Herrera38@gmail.com', '1', '', '28', '8', '2', '4'),
('2020728542', 'Mercedes', 'Acosta', 'Serrano', '1999-07-20', '2', 'ACSM990720FOARR10', 'Rio de la Piedad', '48', 'Del Carmen', '15', '02210', '5584141451', 'Mercedes_Acosta89@gmail.com', '6', '', '24', '9', '1', '1'),
('2020744368', 'Lourdes', 'Suarez', 'Diaz', '1996-01-08', '2', 'SUDL960108FTXAU12', 'Avenida Tlahuac', '57', 'Chinampac De Juarez', '7', '01318', '5553114151', 'Lourdes_Suarez39@gmail.com', '9', '', '17', '8', '2', '3'),
('2020747372', 'Lorena', 'Herrera', 'Diaz', '1998-01-13', '2', 'HEDL980113FEMAR88', 'Glorieta de los Insurgentes', '34', 'La Martinica', '1', '02130', '5572641513', 'Lorena_Herrera98@gmail.com', '8', '', '14', '6', '2', '1'),
('2020755222', 'Victor', 'Ramirez', 'Perez', '1999-07-12', '1', 'RAPV990712MTXRC67', 'Callejon de Manzanares', '45', 'Roma', '12', '01049', '5558351124', 'Victor_Ramirez38@gmail.com', '1', '', '28', '7', '1', '2'),
('2020846321', 'Esteban', 'Gonzales', 'Ruiz', '1998-03-10', '1', 'GORE980310MDFIT16', 'Calle de Republica de Argentina', '50', 'Lomas Altas', '10', '08934', '5538778844', 'Esteban_Gonzales33@gmail.com', '7', '', '27', '6', '3', '1'),
('2020867311', 'Alejandro', 'Lopez', 'Suarez', '1996-06-17', '1', 'LOSA960617MYCAE34', 'Avenida 16 de Septiembre', '71', 'Benito Juarez', '9', '00810', '5542115123', 'Alejandro_Lopez60@gmail.com', '16', '', '31', '6', '3', '4'),
('2020882326', 'Nicolas', 'Ruiz', 'Moreno', '1996-04-02', '1', 'RUMN960402MOARC31', 'Eje Central Lazaro Cardenas', '20', 'Santa Ursula Xitla', '2', '01388', '5532816767', 'Nicolas_Ruiz66@gmail.com', '11', '', '2', '6', '3', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidad_federativa`
--

CREATE TABLE `entidad_federativa` (
  `id_entidadFederativa` varchar(2) NOT NULL,
  `nombreEntidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entidad_federativa`
--

INSERT INTO `entidad_federativa` (`id_entidadFederativa`, `nombreEntidad`) VALUES
('1', 'Aguascalientes'),
('10', 'Durango'),
('11', 'Estado de México'),
('12', 'Guanajuato'),
('13', 'Guerrero'),
('14', 'Hidalgo'),
('15', 'Jalisco'),
('16', 'Michoacán'),
('17', 'Morelos'),
('18', 'Nayarit'),
('19', 'Nuevo León'),
('2', 'Baja California'),
('20', 'Oaxaca'),
('21', 'Puebla'),
('22', 'Querétaro'),
('23', 'Quintana Roo'),
('24', 'San Luis Potosí'),
('25', 'Sinaloa'),
('26', 'Sonora'),
('27', 'Tabasco'),
('28', 'Tamaulipas'),
('29', 'Tlaxcala'),
('3', 'Baja California Sur'),
('30', 'Veracruz'),
('31', 'Yucatán'),
('32', 'Zacatecas'),
('4', 'Campeche'),
('5', 'Chiapas'),
('6', 'Chihuahua'),
('7', 'Ciudad de México'),
('8', 'Coahuila'),
('9', 'Colima');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuela`
--

CREATE TABLE `escuela` (
  `id_escuela` varchar(2) NOT NULL,
  `nombreEscuela` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `escuela`
--

INSERT INTO `escuela` (`id_escuela`, `nombreEscuela`) VALUES
('1', 'CECyT 1 \"Gonzalo Vázquez Vela\" IPN'),
('10', 'CECyT 10 \"Carlos Vallejo Márquez\" IPN'),
('11', 'CECyT 11 \"Wilfrido Massieu\" IPN'),
('12', 'CECyT 12\"José María Morelos\" IPN'),
('13', 'CECyT 13\"Ricardo Flores Magón\" IPN'),
('14', 'CECyT 14\"Luis Enrique Erro Soler\" IPN '),
('15', 'CECyT 15 \"Diodoro Antúnez Echegaray\" IPN'),
('16', 'CECyT 16 \"Hidalgo\" IPN'),
('17', 'CECyT 17 \"León Guanajuato\" IPN'),
('18', 'CECyT 18 \"Zacatecas\" IPN'),
('19', 'CECyT 19 \"Leona Vicario\" - IPN'),
('2', 'CECyT 2 \"Miguel Bernard\" IPN'),
('20', 'CET 1 \"Walter Cross Buchanan\" IPN'),
('21', 'Otro'),
('3', 'CECyT 3 \"Estanislao Ramírez Ruiz\" IPN'),
('4', 'CECyT 4 \"Lázaro Cárdenas\" IPN'),
('5', 'CECyT 5 \"Benito Juárez\" IPN'),
('6', 'CECyT 6 \"Miguel Othón de Mendizabal\" IPN'),
('7', 'CECyT 7 \"Cuauhtémoc\" IPN'),
('8', 'CECyT 8 \"Narciso Bassols\" IPN'),
('9', 'CECyT 9 \"Juan de Dios Bátiz\" IPN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` varchar(1) NOT NULL,
  `nombreGenero` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombreGenero`) VALUES
('1', 'Hombre'),
('2', 'Mujer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id_horario` varchar(3) NOT NULL,
  `horarioFecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id_horario`, `horarioFecha`) VALUES
('1', '2022-01-17 08:45:00'),
('2', '2022-01-17 10:15:00'),
('3', '2022-01-17 11:45:00'),
('4', '2022-01-17 13:15:00'),
('5', '2022-01-17 14:15:00'),
('6', '2021-12-15 15:45:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorio`
--

CREATE TABLE `laboratorio` (
  `id_laboratorio` varchar(2) NOT NULL,
  `nombreLaboratorio` varchar(50) NOT NULL,
  `horario` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `laboratorio`
--

INSERT INTO `laboratorio` (`id_laboratorio`, `nombreLaboratorio`, `horario`) VALUES
('1', 'LAB-01', '1'),
('10', 'LAB-02', '4'),
('11', 'LAB-02', '5'),
('12', 'LAB-02', '6'),
('13', 'LAB-03', '1'),
('14', 'LAB-03', '2'),
('15', 'LAB-03', '3'),
('16', 'LAB-03', '4'),
('17', 'LAB-03', '5'),
('18', 'LAB-03', '6'),
('19', 'LAB-04', '1'),
('2', 'LAB-01', '2'),
('20', 'LAB-04', '2'),
('21', 'LAB-04', '3'),
('22', 'LAB-04', '4'),
('23', 'LAB-04', '5'),
('24', 'LAB-04', '6'),
('25', 'LAB-05', '1'),
('26', 'LAB-05', '2'),
('27', 'LAB-05', '3'),
('28', 'LAB-05', '4'),
('29', 'LAB-05', '5'),
('3', 'LAB-01', '3'),
('30', 'LAB-05', '6'),
('31', 'LAB-06', '1'),
('32', 'LAB-06', '2'),
('33', 'LAB-06', '3'),
('34', 'LAB-06', '4'),
('35', 'LAB-06', '5'),
('36', 'LAB-06', '6'),
('4', 'LAB-01', '4'),
('5', 'LAB-01', '5'),
('6', 'LAB-01', '6'),
('7', 'LAB-02', '1'),
('8', 'LAB-02', '2'),
('9', 'LAB-02', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opcion`
--

CREATE TABLE `opcion` (
  `id_opcion` varchar(1) NOT NULL,
  `nombre_Opcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `opcion`
--

INSERT INTO `opcion` (`id_opcion`, `nombre_Opcion`) VALUES
('1', '1ra Opción'),
('2', '2da Opción'),
('3', '3ra Opción'),
('4', '4ta Opción');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`boleta_PA`);

--
-- Indices de la tabla `alcaldia`
--
ALTER TABLE `alcaldia`
  ADD PRIMARY KEY (`id_alcaldia`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`No_Boleta`),
  ADD KEY `genero` (`genero`),
  ADD KEY `entidad_Federativa` (`entidad_Federativa`),
  ADD KEY `alcaldia` (`alcaldia`),
  ADD KEY `opcion` (`opcion`),
  ADD KEY `escuela_IPN` (`escuela_IPN`),
  ADD KEY `horario` (`horario`);

--
-- Indices de la tabla `entidad_federativa`
--
ALTER TABLE `entidad_federativa`
  ADD PRIMARY KEY (`id_entidadFederativa`);

--
-- Indices de la tabla `escuela`
--
ALTER TABLE `escuela`
  ADD PRIMARY KEY (`id_escuela`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`),
  ADD UNIQUE KEY `genero` (`nombreGenero`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id_horario`);

--
-- Indices de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`id_laboratorio`),
  ADD KEY `horario` (`horario`);

--
-- Indices de la tabla `opcion`
--
ALTER TABLE `opcion`
  ADD PRIMARY KEY (`id_opcion`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`genero`) REFERENCES `genero` (`id_genero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumno_ibfk_2` FOREIGN KEY (`alcaldia`) REFERENCES `alcaldia` (`id_alcaldia`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumno_ibfk_3` FOREIGN KEY (`escuela_IPN`) REFERENCES `escuela` (`id_escuela`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumno_ibfk_4` FOREIGN KEY (`entidad_Federativa`) REFERENCES `entidad_federativa` (`id_entidadFederativa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumno_ibfk_5` FOREIGN KEY (`opcion`) REFERENCES `opcion` (`id_opcion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumno_ibfk_6` FOREIGN KEY (`horario`) REFERENCES `laboratorio` (`id_laboratorio`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD CONSTRAINT `laboratorio_ibfk_1` FOREIGN KEY (`horario`) REFERENCES `horario` (`id_horario`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
