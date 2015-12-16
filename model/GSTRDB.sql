-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 15, 2015 at 08:52 PM
-- Server version: 5.5.44-0+deb8u1
-- PHP Version: 5.6.13-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `GSTRDB`
--
CREATE DATABASE IF NOT EXISTS `GSTRDB` DEFAULT CHARACTER SET utf16 COLLATE utf16_spanish2_ci;
USE `GSTRDB`;

-- --------------------------------------------------------

--
-- Table structure for table `Apunte`
--

DROP TABLE IF EXISTS `Apunte`;
CREATE TABLE IF NOT EXISTS `Apunte` (
  `apunte_id` int(12) NOT NULL,
  `mat_id` int(12) NOT NULL,
  `anho_academico` int(2) NOT NULL,
  `apunte_name` varchar(12) COLLATE utf16_spanish2_ci NOT NULL,
  `file_name` varchar(12) COLLATE utf16_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Apunte_Usuario`
--

DROP TABLE IF EXISTS `Apunte_Usuario`;
CREATE TABLE IF NOT EXISTS `Apunte_Usuario` (
  `apunte_id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Comparte_Nota`
--

DROP TABLE IF EXISTS `Comparte_Nota`;
CREATE TABLE IF NOT EXISTS `Comparte_Nota` (
  `nota_id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Funcionalidad`
--

DROP TABLE IF EXISTS `Funcionalidad`;
CREATE TABLE IF NOT EXISTS `Funcionalidad` (
`fun_id` int(11) NOT NULL,
  `fun_name` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `fun_desc` varchar(64) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `Funcionalidad`
--

INSERT INTO `Funcionalidad` (`fun_id`, `fun_name`, `fun_desc`) VALUES
(15, 'CER_Crear', 'crear entidades en cancerbero'),
(16, 'CER_Gestion', 'Gestionar en cancerbero'),
(17, 'CER_Modificar', 'modificar entidades en cancerbero'),
(18, 'CER_Administrar', 'Administrador total de cancerbero'),
(19, 'WPA_alta', 'alta de entidades en la aplicacion integrada'),
(20, 'WPA_baja', 'baja de entidades en la aplicacion integrada'),
(21, 'WPA_modificar', 'modificar entidades en la aplicacion integrada'),
(22, 'WPA_consulta', 'consulta de entidades en la aplicacion integrada'),
(23, 'WPA_administrar', 'accesso total a la aplicacion integrada'),
(24, 'modificarPass', 'modificar la pass de un usuario'),
(25, 'WPA_usuario', '');

-- --------------------------------------------------------

--
-- Table structure for table `Materia`
--

DROP TABLE IF EXISTS `Materia`;
CREATE TABLE IF NOT EXISTS `Materia` (
`mat_id` int(11) NOT NULL,
  `mat_name` varchar(10) COLLATE utf16_spanish2_ci NOT NULL,
  `tit_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Materia_Usuario`
--

DROP TABLE IF EXISTS `Materia_Usuario`;
CREATE TABLE IF NOT EXISTS `Materia_Usuario` (
  `mat_id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Nota`
--

DROP TABLE IF EXISTS `Nota`;
CREATE TABLE IF NOT EXISTS `Nota` (
`nota_id` int(11) NOT NULL,
  `nota_name` text COLLATE utf16_spanish2_ci NOT NULL,
  `fecha` date NOT NULL,
  `contenido` varchar(40) COLLATE utf16_spanish2_ci NOT NULL,
  `user_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Notificacion`
--

DROP TABLE IF EXISTS `Notificacion`;
CREATE TABLE IF NOT EXISTS `Notificacion` (
`notificacion_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `contenido` varchar(40) COLLATE utf16_spanish2_ci NOT NULL,
  `user_name` varchar(12) COLLATE utf16_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Pagina`
--

DROP TABLE IF EXISTS `Pagina`;
CREATE TABLE IF NOT EXISTS `Pagina` (
`pag_id` int(11) NOT NULL,
  `pag_name` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `pag_desc` varchar(64) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `Pagina`
--

INSERT INTO `Pagina` (`pag_id`, `pag_name`, `pag_desc`) VALUES
(23, 'WPAaltaApuesta', 'pagina aplicacion integrada'),
(2, 'CER_GestionFuncionalidades', 'CERBERUS GestiÃ³n de Funcionalidades (NO BORRAR)'),
(3, 'CER_CrearFuncionalidad', 'CERBERUS CreaciÃ³n de Funcionalidades (NO BORRAR)'),
(4, 'CER_ModificarFuncionalidad', 'CERBERUS ModificaciÃ³n de Funcionalidades (NO BORRAR)'),
(5, 'CER_CrearPagina', 'CERBERUS CreaciÃ³n de PÃ¡ginas (NO BORRAR)'),
(6, 'CER_GestionPaginas', 'CERBERUS GestiÃ³n de PÃ¡ginas (NO BORRAR)'),
(7, 'CER_ModificarPagina', 'CERBERUS ModificaciÃ³n de PÃ¡ginas'),
(8, 'CER_CrearRol', 'CERBERUS CreaciÃ³n de Roles'),
(9, 'CER_GestionRoles', 'CERBERUS GestiÃ³n de Roles (NO BORRAR)'),
(10, 'CER_ModificarRol', 'CERBERUS ModificaciÃ³n de Roles (NO BORRAR)'),
(11, 'CER_CrearUsuario', 'CERBERUS CreaciÃ³n de Usuarios (NO BORRAR)'),
(12, 'CER_GestionUsuarios', 'CERBERUS GestiÃ³n de Usuarios (NO BORRAR)'),
(13, 'CER_ModificarPass', 'CERBERUS ModificaciÃ³n de ContraseÃ±as'),
(14, 'CER_ModificarUsuario', 'CERBERUS ModificaciÃ³n de Usuarios'),
(15, 'CER_Menu', 'CERBERUS Acceso al MenÃº Principal'),
(16, 'WPAmenu', 'MenÃº de IUET12015'),
(24, 'WPAaltaSocios', 'pagina alta socios integrada'),
(25, 'WPAbajaApuestas', 'baja apuestas integrada'),
(26, 'WPAbajaSocios', 'baja socios integrada'),
(27, 'WPAconsultaApuestas', 'consulta apuestas'),
(28, 'WPAconsultaSocios', 'consulta socios integrada'),
(29, 'WPAjornadasAlta', 'alta jornadas integrada'),
(30, 'WPAjornadasBaja', 'baja jornadas integrada'),
(31, 'WPAjornadasModificar', 'jornadas modificar integrada'),
(32, 'WPAjornadasConsultar', 'consultar jornadas integrada'),
(33, 'WPApremiosAlta', 'alta premios integrada'),
(34, 'WPApremiosBaja', 'baja de premios integrada'),
(35, 'WPApremiosModificar', 'modificar premios integrada'),
(36, 'WPApremiosConsultar', 'consulta premios integrada'),
(37, 'WPAmodificacionApuestas', 'modificacion apuestas integrada'),
(38, 'WPAmodificacionSocios', 'modificacion socios integrada');

-- --------------------------------------------------------

--
-- Table structure for table `Pag_Fun`
--

DROP TABLE IF EXISTS `Pag_Fun`;
CREATE TABLE IF NOT EXISTS `Pag_Fun` (
  `pag_id` int(11) NOT NULL,
  `fun_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `Pag_Fun`
--

INSERT INTO `Pag_Fun` (`pag_id`, `fun_id`) VALUES
(2, 16),
(2, 18),
(3, 15),
(3, 18),
(4, 17),
(4, 18),
(5, 15),
(5, 18),
(6, 16),
(6, 18),
(7, 17),
(7, 18),
(8, 15),
(8, 18),
(9, 16),
(9, 18),
(10, 17),
(10, 18),
(11, 15),
(11, 18),
(12, 16),
(12, 18),
(13, 18),
(13, 24),
(14, 17),
(14, 18),
(15, 18),
(16, 23),
(16, 25),
(23, 19),
(23, 23),
(23, 25),
(24, 19),
(24, 23),
(25, 20),
(25, 23),
(25, 25),
(26, 20),
(26, 23),
(27, 22),
(27, 23),
(27, 25),
(28, 22),
(28, 23),
(29, 19),
(29, 23),
(30, 20),
(30, 23),
(31, 21),
(31, 23),
(32, 22),
(32, 23),
(32, 25),
(33, 19),
(33, 23),
(34, 20),
(34, 23),
(35, 21),
(35, 23),
(36, 22),
(36, 23),
(36, 25),
(37, 21),
(37, 23),
(37, 25),
(38, 21),
(38, 23);

-- --------------------------------------------------------

--
-- Table structure for table `Rol`
--

DROP TABLE IF EXISTS `Rol`;
CREATE TABLE IF NOT EXISTS `Rol` (
`rol_id` int(11) NOT NULL,
  `rol_name` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `rol_desc` varchar(64) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `Rol`
--

INSERT INTO `Rol` (`rol_id`, `rol_name`, `rol_desc`) VALUES
(13, 'Administrador_WPA', 'administrador de WPA'),
(12, 'Usuario_normal', 'usuario '),
(14, 'Administrador_CER', 'administrador de cancerbero');

-- --------------------------------------------------------

--
-- Table structure for table `Rol_Fun`
--

DROP TABLE IF EXISTS `Rol_Fun`;
CREATE TABLE IF NOT EXISTS `Rol_Fun` (
  `rol_id` int(11) NOT NULL,
  `fun_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `Rol_Fun`
--

INSERT INTO `Rol_Fun` (`rol_id`, `fun_id`) VALUES
(12, 22),
(12, 24),
(12, 25),
(13, 23),
(13, 24),
(14, 18);

-- --------------------------------------------------------

--
-- Table structure for table `Titulacion`
--

DROP TABLE IF EXISTS `Titulacion`;
CREATE TABLE IF NOT EXISTS `Titulacion` (
`tit_id` int(11) NOT NULL,
  `tit_name` varchar(12) COLLATE utf16_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Titulacion_Usuario`
--

DROP TABLE IF EXISTS `Titulacion_Usuario`;
CREATE TABLE IF NOT EXISTS `Titulacion_Usuario` (
  `tit_id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `User_Fun`
--

DROP TABLE IF EXISTS `User_Fun`;
CREATE TABLE IF NOT EXISTS `User_Fun` (
  `user_id` int(11) NOT NULL,
  `fun_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `User_Pag`
--

DROP TABLE IF EXISTS `User_Pag`;
CREATE TABLE IF NOT EXISTS `User_Pag` (
  `user_id` int(11) NOT NULL,
  `pag_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `User_Pag`
--

INSERT INTO `User_Pag` (`user_id`, `pag_id`) VALUES
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(10, 8),
(10, 9),
(10, 10),
(10, 11),
(10, 12),
(10, 13),
(10, 14),
(10, 16);

-- --------------------------------------------------------

--
-- Table structure for table `User_Rol`
--

DROP TABLE IF EXISTS `User_Rol`;
CREATE TABLE IF NOT EXISTS `User_Rol` (
  `user_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `User_Rol`
--

INSERT INTO `User_Rol` (`user_id`, `rol_id`) VALUES
(10, 12),
(21, 13),
(21, 14);

-- --------------------------------------------------------

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
CREATE TABLE IF NOT EXISTS `Usuario` (
`user_id` int(11) NOT NULL,
  `user_name` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `user_pass` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `user_desc` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `user_email` varchar(64) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='tabla de usuarios';

--
-- Dumping data for table `Usuario`
--

INSERT INTO `Usuario` (`user_id`, `user_name`, `user_pass`, `user_desc`, `user_email`) VALUES
(21, 'Admin', 'admin', 'administrador general', 'admin@admin.com'),
(10, 'pepe', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'usuario sin permisos administrativos', 'pepe@wpawpa.com');

-- --------------------------------------------------------

--
-- Table structure for table `U_Tiene_A`
--

DROP TABLE IF EXISTS `U_Tiene_A`;
CREATE TABLE IF NOT EXISTS `U_Tiene_A` (
  `apunte_id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Funcionalidad`
--
ALTER TABLE `Funcionalidad`
 ADD PRIMARY KEY (`fun_id`);

--
-- Indexes for table `Materia`
--
ALTER TABLE `Materia`
 ADD PRIMARY KEY (`mat_id`);

--
-- Indexes for table `Nota`
--
ALTER TABLE `Nota`
 ADD PRIMARY KEY (`nota_id`), ADD KEY `nota_id` (`nota_id`);

--
-- Indexes for table `Notificacion`
--
ALTER TABLE `Notificacion`
 ADD PRIMARY KEY (`notificacion_id`);

--
-- Indexes for table `Pagina`
--
ALTER TABLE `Pagina`
 ADD PRIMARY KEY (`pag_id`);

--
-- Indexes for table `Pag_Fun`
--
ALTER TABLE `Pag_Fun`
 ADD PRIMARY KEY (`pag_id`,`fun_id`), ADD KEY `fun_id` (`fun_id`);

--
-- Indexes for table `Rol`
--
ALTER TABLE `Rol`
 ADD PRIMARY KEY (`rol_id`);

--
-- Indexes for table `Rol_Fun`
--
ALTER TABLE `Rol_Fun`
 ADD PRIMARY KEY (`rol_id`,`fun_id`), ADD KEY `fun_id` (`fun_id`);

--
-- Indexes for table `Titulacion`
--
ALTER TABLE `Titulacion`
 ADD PRIMARY KEY (`tit_id`);

--
-- Indexes for table `User_Fun`
--
ALTER TABLE `User_Fun`
 ADD PRIMARY KEY (`user_id`,`fun_id`), ADD KEY `fun_id` (`fun_id`);

--
-- Indexes for table `User_Pag`
--
ALTER TABLE `User_Pag`
 ADD PRIMARY KEY (`user_id`,`pag_id`), ADD KEY `pag_id` (`pag_id`);

--
-- Indexes for table `User_Rol`
--
ALTER TABLE `User_Rol`
 ADD PRIMARY KEY (`user_id`,`rol_id`), ADD KEY `rol_id` (`rol_id`);

--
-- Indexes for table `Usuario`
--
ALTER TABLE `Usuario`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Funcionalidad`
--
ALTER TABLE `Funcionalidad`
MODIFY `fun_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `Materia`
--
ALTER TABLE `Materia`
MODIFY `mat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Nota`
--
ALTER TABLE `Nota`
MODIFY `nota_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Notificacion`
--
ALTER TABLE `Notificacion`
MODIFY `notificacion_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Pagina`
--
ALTER TABLE `Pagina`
MODIFY `pag_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `Rol`
--
ALTER TABLE `Rol`
MODIFY `rol_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `Titulacion`
--
ALTER TABLE `Titulacion`
MODIFY `tit_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Usuario`
--
ALTER TABLE `Usuario`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
