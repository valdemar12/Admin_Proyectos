-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2015 a las 02:27:41
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `horariosacademicos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE IF NOT EXISTS `asignaturas` (
  `IDA` int(11) NOT NULL,
  `Asignatura` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `IDB` int(11) NOT NULL,
  `IDE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloques`
--

CREATE TABLE IF NOT EXISTS `bloques` (
  `IDB` int(11) NOT NULL,
  `Bloque` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `IDP` int(11) NOT NULL,
  `IDH` int(11) NOT NULL,
  `IDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campus`
--

CREATE TABLE IF NOT EXISTS `campus` (
  `IDCA` int(11) NOT NULL,
  `Campus` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Folio` int(11) NOT NULL,
  `Ciudad` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `IDC` int(11) NOT NULL,
  `IDE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE IF NOT EXISTS `carrera` (
  `IDC` int(11) NOT NULL,
  `Carrera` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `IDE` int(11) NOT NULL,
  `IDM` int(11) NOT NULL,
  `IDH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edificio`
--

CREATE TABLE IF NOT EXISTS `edificio` (
  `IDE` int(11) NOT NULL,
  `Edificio` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `IDC` int(11) NOT NULL,
  `IDB` int(11) NOT NULL,
  `IDA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE IF NOT EXISTS `horario` (
  `IDH` int(11) NOT NULL,
  `Turno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `IDC` int(11) NOT NULL,
  `IDM` int(11) NOT NULL,
  `NRCA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE IF NOT EXISTS `maestros` (
  `NRCA` int(11) NOT NULL,
  `Academico` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `IDC` int(11) NOT NULL,
  `Tutor` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Cubiculo` int(11) NOT NULL,
  `IDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE IF NOT EXISTS `materias` (
  `IDM` int(11) NOT NULL,
  `Materia` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Creditos` int(11) NOT NULL,
  `IDC` int(11) NOT NULL,
  `IDE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE IF NOT EXISTS `periodo` (
  `IDP` int(11) NOT NULL,
  `Periodo` date NOT NULL,
  `Año` int(11) NOT NULL,
  `IDC` int(11) NOT NULL,
  `IDM` int(11) NOT NULL,
  `IDB` int(11) NOT NULL,
  `NRCA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salon`
--

CREATE TABLE IF NOT EXISTS `salon` (
  `IDS` int(11) NOT NULL,
  `Salón#` int(11) NOT NULL,
  `IDE` int(11) NOT NULL,
  `IDC` int(11) NOT NULL,
  `IDH` int(11) NOT NULL,
  `IDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
 ADD PRIMARY KEY (`IDA`);

--
-- Indices de la tabla `bloques`
--
ALTER TABLE `bloques`
 ADD PRIMARY KEY (`IDB`);

--
-- Indices de la tabla `campus`
--
ALTER TABLE `campus`
 ADD PRIMARY KEY (`IDCA`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
 ADD PRIMARY KEY (`IDC`);

--
-- Indices de la tabla `edificio`
--
ALTER TABLE `edificio`
 ADD PRIMARY KEY (`IDE`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
 ADD PRIMARY KEY (`IDH`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
 ADD PRIMARY KEY (`NRCA`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
 ADD PRIMARY KEY (`IDM`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
 ADD PRIMARY KEY (`IDP`);

--
-- Indices de la tabla `salon`
--
ALTER TABLE `salon`
 ADD PRIMARY KEY (`IDS`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
