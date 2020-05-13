-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2020 a las 19:29:25
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `delilah`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `ID` int(10) NOT NULL,
  `Codigo` varchar(10) DEFAULT NULL,
  `NombrePlato` text DEFAULT NULL,
  `Gluten` tinyint(1) DEFAULT NULL,
  `Precio` int(10) DEFAULT NULL,
  `Img` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`ID`, `Codigo`, `NombrePlato`, `Gluten`, `Precio`, `Img`) VALUES
(1, 'HamClas', 'Hamburgesa clasica', 1, 250, 'https://i.imgur.com/KaGNegD.png'),
(2, 'BglSalmon', 'Bagel de salmon', 1, 420, 'https://i.imgur.com/yrHKMiK.jpg'),
(3, 'SandVegg', 'Sandwich veggie', 0, 310, 'https://i.imgur.com/pZehRUK.jpg'),
(4, 'EnsVegg', 'Ensalada veggie', 0, 340, 'https://i.imgur.com/2pmnLhG.jpg'),
(5, 'Foca', 'Focaccia', 1, 300, 'https://i.imgur.com/eQ8563H.jpg'),
(6, 'SandFoca', 'Sandwich focaccia', 0, 440, 'https://i.imgur.com/RgVYbEX.jpg'),
(7, 'EnsCaes', 'Ensalada Caesar', 0, 320, 'https://i.imgur.com/OUwLnpw.jpg'),
(8, 'HambLent', 'Hamburguesa de lentejas', 1, 380, 'https://i.imgur.com/1cnJL1v.jpg'),
(9, 'EnsAtun', 'Ensalada de atún', 0, 305, 'https://i.imgur.com/I2lLT2J.jpg'),
(10, 'TarJyQ', 'Tarta de jamon y queso', 1, 380, 'https://i.imgur.com/hKrt49L.jpg'),
(11, 'TarVerd', 'Tarta integral de verdura', 0, 380, 'https://i.imgur.com/fcTZtic.jpg'),
(12, 'EmpJyQ', 'Empanada de jamon y queso', 1, 100, 'https://i.imgur.com/FcnX7F1.jpg'),
(13, 'EmpCar', 'Empanada de carne', 1, 100, 'https://i.imgur.com/Mxq4vTT.jpg'),
(14, 'EmpVer', 'Empanada de verdura', 1, 100, 'https://i.imgur.com/FhDkhmj.jpg'),
(15, 'WrVer', 'Wrap de verdura', 0, 210, 'https://i.imgur.com/3OlClju.jpg'),
(16, 'WrPollyV', 'Wrap de pollo y verdura', 0, 270, 'https://i.imgur.com/kKExXq7.jpg'),
(17, 'WrAtun', 'Wrap integral de atún', 0, 330, 'https://i.imgur.com/RyF2d3T.jpg'),
(18, 'NoqGel', 'Ñoquis de alcohol en gel', 0, 450, 'https://i.imgur.com/tPbRwcF.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
