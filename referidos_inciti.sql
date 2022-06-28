-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-06-2022 a las 00:14:07
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
(1, 'Jhonnys David', 'De Avila Salgado', 'JhonnysD02', 'jdeavilasalgado@gmail.com', 'pbkdf2:sha256:260000$cn3W4ZEAN66GRKXz$19f1aa00dc0db1d7711dfe1e7a4e7799318c19c9d61a56b80fa00c75cc83eea3', '', '0000-00-00 00:00:00'),
(2, 'Jhonnys David', 'Rodriguez', 'JhonnysDS', 'nicoldeavila@gmail.com', 'pbkdf2:sha256:260000$BCb10r7FmiSpVStU$d3126601fa8887082b70facbaadb461d2d4db129aed48e0627ca44873cf94359', 'dt6qNPYT', '0000-00-00 00:00:00'),
(5, 'fulaniro', 'mendoza', 'fulano', 'fulano@gmail.com', 'pbkdf2:sha256:260000$kdpRNcNX0UTcuq7p$004304fecb9a7146aa92d6dfdf5c5be68869eab6183918a33ce0677e5afa7e64', 'dt6qNPYT', '0000-00-00 00:00:00');

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
  `term_cond` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `app_user_referred`
--

INSERT INTO `app_user_referred` (`id`, `user_id`, `creation_date`, `all_names`, `email`, `cellphone`, `term_cond`) VALUES
(1, 2, '0000-00-00 00:00:00', 'Nicol Kari De Avila Salgado', 'nicoldeavila@gmail.com', '3043569874', 0),
(2, 4, '0000-00-00 00:00:00', 'Juan camilo Sarmiento', 'pedromendoza@gmail.con', '3214569870', 0),
(3, 4, '0000-00-00 00:00:00', 'Rodolfo Enrique De Avila Hernandez', 'rodolfoenrique@gmail.com', '3214569556', 0),
(4, 2, '0000-00-00 00:00:00', 'JHONATHAN FONTALVO', 'jhonathan@gmail.com', '3135698552', 0),
(6, 2, '0000-00-00 00:00:00', 'JHONATHA ENRRIQUE HERNANDEZ FONTALVO', 'enrique@mail.com', '1234567890', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `app_user_referred`
--
ALTER TABLE `app_user_referred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
