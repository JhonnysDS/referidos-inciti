-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-06-2022 a las 23:58:38
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `referidos_inciti`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_user`
--

CREATE TABLE `app_user` (
  `id` int(11) NOT NULL,
  `names` varchar(255) NOT NULL,
  `last_names` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_admin` varchar(8) DEFAULT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `app_user`
--

INSERT INTO `app_user` (`id`, `names`, `last_names`, `username`, `email`, `password`, `is_admin`, `creation_date`) VALUES
(8, 'Jhonnys David', 'De Avila Salgado', 'JhonnysDS', 'jdeavigflasalgado@gmail.com', 'pbkdf2:sha256:260000$hRAM2DwYKahnG9e7$6867cce07de7c0c08b85d701f773f3543954e97d8065b7c22a36954a06002c6b', 'dt6qNPYT', '0000-00-00 00:00:00'),
(9, 'Jhonnys David', 'De Avila Salgado', 'JhonnysD02', 'jdeavilasalgado@gmail.com', 'pbkdf2:sha256:260000$6VgJ7rMizDYvbFLb$250f7b97d8037e7a7348d6551250f83619ef05b66431fb2a28ef901bcc70500b', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_user_referred`
--

CREATE TABLE `app_user_referred` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `all_names` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cellphone` varchar(255) NOT NULL,
  `signature` smallint(2) NOT NULL,
  `apartment_type` smallint(2) NOT NULL,
  `term_cond` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `app_user_referred`
--

INSERT INTO `app_user_referred` (`id`, `user_id`, `creation_date`, `all_names`, `email`, `cellphone`, `signature`, `apartment_type`, `term_cond`) VALUES
(8, 9, '0000-00-00 00:00:00', 'Juan camilo Sarmiento', 'juanda@mail.com', '3214569586', 0, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `app_user_referred`
--
ALTER TABLE `app_user_referred`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `app_user_referred`
--
ALTER TABLE `app_user_referred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
