-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2020 a las 20:10:24
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
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `ID` int(10) DEFAULT NULL,
  `NombrePlato` varchar(50) NOT NULL,
  `Codigo` varchar(20) NOT NULL,
  `Precio` int(20) NOT NULL,
  `Img` varchar(1000) NOT NULL,
  `username` varchar(50) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `Estado` varchar(20) NOT NULL,
  `Hora` varchar(100) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Descripcion` varchar(1000) NOT NULL,
  `DescripcionCompleta` varchar(1000) NOT NULL,
  `TipoPago` varchar(20) NOT NULL,
  `Pago` int(11) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `user_id` int(10) NOT NULL,
  `Direccion` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `Estado` text NOT NULL,
  `Hora` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `Numero` int(11) NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  `DescripcionCompleta` varchar(1000) NOT NULL,
  `TipoPago` text DEFAULT NULL,
  `Pago` int(20) NOT NULL,
  `Usuario` text NOT NULL,
  `user_id` int(20) NOT NULL,
  `Direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('AAZrN9uVktTGfc6szeonr670MRpo3bYA', 1589479155, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"passport\":{\"user\":10}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  `Role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `username`, `fullname`, `email`, `phone`, `address`, `password`, `Role`) VALUES
(3, 'joe123', 'Joe McMahom', 'joe@gmail.com', 1166589487, 'Reconquista 548', '$2a$10$g3v.q5ZlG.geqVLpKshjIOUZXzXqyMfPrFj4YzgGt8KwamM3dglUG', ''),
(4, 'mark4', 'Mark Anthony', 'mark@netscape.com', 1178479234, 'Blanco Encalada 2291', '$2a$10$m9N6hx4uGvLW1H5TenBtm.BtWQSr4H2T4O6dqYS/nS0xowWI6wIli', ''),
(5, 'jenn30', 'Jennifer Aniston', 'jen@aol.com', 1123740546, 'Av. Gaona 9012', '$2a$10$52r0EB.p8SabOlmjgxm9wue3ZXXhEI3qbEB2AEeX6QjRRanGfDzCa', ''),
(6, 'tomtom', 'Tom Petty', 'petty2020@gmail.com', 1130059632, 'Sanabria 940', '$2a$10$LFAieY9a6P0KXZijgfmHT.OOlK9KogxbMF7Z0jAN1rXtSr8Jt7IQi', ''),
(7, 'juanjose', 'Juan Gutierrez', 'jjggtz@gmail.com', 1165482100, 'Balcarce 50', '$2a$10$xkZSqk9gmRIDPPfY9QFEi.hhHCf4vZggFipm5ARSCKPLsDF/Kuh2m', ''),
(8, 'pepe24', 'Pepe Argento', 'pepe123@gmail.com', 2147483647, 'Austria 6650', '$2a$10$mgZCHIzmvVCzeQHtgxyg4.3NFpl8YJ.yBepYBcD.6tyBZqsWeH6Nq', ''),
(9, 'billy6', 'Billy Joel', 'pianoman@gmail.com', 1132897741, 'Bonifacini 1505', '$2a$10$uzBySdlDzC7P9mjAowJDheEJ06MhtcJIa/VySEqRwALD9CyVWrzXS', ''),
(10, 'gloria', 'Gloria Gaynor', 'survive@outlook.com', 237129837, 'Humahuaca 500', '$2a$10$Iq9Uv8ERuxCp/jWs961mTes3JtYi387vy2.z3wJnRN1C/AdIAZKDC', 'admin'),
(11, 'jovi', 'Jon Bon Jovi', 'jbj@yahoo.com', 1146025319, 'Nicaragua 2450', '$2a$10$N3k1r2RLgzKhaCsPG99CFuZanvsi23olBtIMNokjDSvs244Jr.T/2', ''),
(12, 'alf', 'Alf', 'suertudo@gmail.com', 1120204563, 'Hemdale 167', '$2a$10$0ZiCsacclCbBMJ2CgS.Jae32CWlum9kfJOXovmIHTKhaRC4w8EPGy', ''),
(13, 'elton1', 'Elton John', 'rocketman@hotbot.com', 1185204975, 'Humboldt 1984', '$2a$10$q0JjM6c0PuFUkpJ.m2geQ.tg2dSjClm8HRmwUrB1afL7uzB4uPAU6', ''),
(14, 'pedro123', 'Pedro Aznar', 'pedro@gmail.com', 1100519514, 'Lituania 1920', '$2a$10$5qxSUiBPXvsbzBw4vtDNUua9CSai/zYgFoRuRykqdNVuoHnYodUhG', ''),
(15, 'ryan', 'Ryan Reynolds', 'shittyactor@gmail.com', 1165891120, 'Nowhere 9182', '$2a$10$lUnHRi.o0rPANMMTAZG4G.JmSOW02PF1eja/Ux21b74s.tFEcIx2W', ''),
(16, 'fred123', 'Fred Durst', 'nookie@bing.com', 1124059837, 'California 1293', '$2a$10$WPWJ7EqJqbKYXe/HfXRWU.MdU4qpN0QVCmKKqgbpD6N8DVdRG1Qnm', ''),
(17, 'phil', 'Phil Collins', 'intheair@tonight.com', 1130204879, 'Paradise 1152', '$2a$10$STLWXtD5cAvlXZkHilUPdOSQKiWq47QEP86RwDcik1SMh3k/x/s1.', ''),
(18, 'admin', 'admin', 'admin@delilah.com.ar', 1112341234, 'Delilah Resto', '$2a$10$3q2VzByvZ.SspsIZ0LK6N.x3s0eFd.Gqk7j4RQXIfVNjniUu9tw/K', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD KEY `fk_user` (`user_id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`Numero`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `Numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
