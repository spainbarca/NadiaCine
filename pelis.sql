-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-07-2018 a las 02:54:34
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pelis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinefilos`
--

CREATE TABLE `cinefilos` (
  `dni` int(11) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  `ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cinefilos`
--

INSERT INTO `cinefilos` (`dni`, `nombres`, `apellidos`, `direccion`, `sexo`, `fecha`, `ciudad`) VALUES
(414444, 'Benny', 'Lamela', ' Av. Faroles 214', 'on', '2000-09-04', 'Cajamarca'),
(434353, 'david', 'beckam', 'av.metro ', 'on', '2018-07-13', 'Lima');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `dni` int(11) NOT NULL,
  `tip_pago` varchar(20) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `pelicula` varchar(100) NOT NULL,
  `num_salas` int(11) NOT NULL,
  `actividades` varchar(100) NOT NULL,
  `ciudad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`dni`, `tip_pago`, `categoria`, `pelicula`, `num_salas`, `actividades`, `ciudad`) VALUES
(124411, 'VIP', 'Animacion', 'Toy Story 4', 1, 'Pop corn', 'Trujillo'),
(457125, 'contado', 'Musical', 'La La Land', 4, 'Jugar hockey', 'Lima');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` varchar(40) NOT NULL,
  `contra` varchar(40) NOT NULL,
  `nombres` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `contra`, `nombres`, `apellidos`) VALUES
('hola', '123456', 'Mustafa', 'Al-Sheeri'),
('MohaRM', 'realmadrid10', 'Moha', 'Fernandez'),
('nadia', 'tatu', 'nadiam', 'melissa');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cinefilos`
--
ALTER TABLE `cinefilos`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
