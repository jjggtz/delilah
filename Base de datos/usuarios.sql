-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2020 a las 19:32:02
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
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
