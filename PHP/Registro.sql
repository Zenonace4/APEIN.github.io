-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: bhrbsfg9lc8pq8zeheur-mysql.services.clever-cloud.com:3306
-- Tiempo de generación: 21-04-2024 a las 13:49:26
-- Versión del servidor: 8.0.22-13
-- Versión de PHP: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bhrbsfg9lc8pq8zeheur`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Registro`
--

CREATE TABLE `Registro` (
  `codigo` char(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usuario` char(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contra` char(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` char(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Registro`
--

INSERT INTO `Registro` (`codigo`, `usuario`, `contra`, `email`) VALUES
('', '', '', ''),
('1411', 'jdjjdj', 'djjjd', 'jdjjd'),
('20230528A', 'Lynri', '1998thalia', 'thalia.cadillo.a@uni.pe'),
('a', 'a', 'a', 'a'),
('s', 's', 's', 's'),
('yo', 'b', 'b', ' b');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Registro`
--
ALTER TABLE `Registro`
  ADD PRIMARY KEY (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
