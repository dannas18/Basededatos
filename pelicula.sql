-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-03-2022 a las 14:31:37
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pelicula`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor`
--

CREATE TABLE `actor` (
  `id_actor` int(11) NOT NULL,
  `nom_actor` varchar(10) NOT NULL,
  `ape_actor` varchar(10) NOT NULL,
  `edad_actor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actor`
--

INSERT INTO `actor` (`id_actor`, `nom_actor`, `ape_actor`, `edad_actor`) VALUES
(1047876556, 'Leonardo', 'DiCaprio ', 47),
(1567834432, 'Jennifer ', 'Lawrence', 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escena`
--

CREATE TABLE `escena` (
  `cod_esc` int(11) NOT NULL,
  `num_esc` int(11) DEFAULT NULL,
  `esen_esc` varchar(45) DEFAULT NULL,
  `personajes_cod_personaje` int(11) NOT NULL,
  `actor_id_actor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `escena`
--

INSERT INTO `escena` (`cod_esc`, `num_esc`, `esen_esc`, `personajes_cod_personaje`, `actor_id_actor`) VALUES
(43324, 1, 'Jungla', 654, 1047876556);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `cod_peli` int(11) NOT NULL,
  `nom_peli` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`cod_peli`, `nom_peli`) VALUES
(85485, 'My world submerged in the jungle');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `cod_personaje` int(11) NOT NULL,
  `nom_personaje` varchar(30) NOT NULL,
  `form_personaje` varchar(30) NOT NULL,
  `_cod_peli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`cod_personaje`, `nom_personaje`, `form_personaje`, `_cod_peli`) VALUES
(654, 'Martin Prings', 'Hippe', 85485);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id_actor`);

--
-- Indices de la tabla `escena`
--
ALTER TABLE `escena`
  ADD PRIMARY KEY (`cod_esc`,`personajes_cod_personaje`,`actor_id_actor`),
  ADD KEY `fk_escena_personajes1_idx` (`personajes_cod_personaje`),
  ADD KEY `fk_escena_actor1_idx` (`actor_id_actor`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`cod_peli`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`cod_personaje`,`_cod_peli`),
  ADD KEY `fk_personajes_1_idx` (`_cod_peli`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `escena`
--
ALTER TABLE `escena`
  ADD CONSTRAINT `fk_escena_actor1` FOREIGN KEY (`actor_id_actor`) REFERENCES `actor` (`id_actor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_escena_personajes1` FOREIGN KEY (`personajes_cod_personaje`) REFERENCES `personajes` (`cod_personaje`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD CONSTRAINT `fk_personajes_1` FOREIGN KEY (`_cod_peli`) REFERENCES `pelicula` (`cod_peli`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
