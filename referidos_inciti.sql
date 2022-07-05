-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-07-2022 a las 00:00:32
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
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_admin` varchar(8) DEFAULT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `app_user`
--

INSERT INTO `app_user` (`id`, `names`, `username`, `email`, `password`, `is_admin`, `creation_date`) VALUES
(8, 'Jhonnys David', 'JhonnysDS', 'jdeavigflasalgado@gmail.com', 'pbkdf2:sha256:260000$hRAM2DwYKahnG9e7$6867cce07de7c0c08b85d701f773f3543954e97d8065b7c22a36954a06002c6b', 'dt6qNPYT', '0000-00-00 00:00:00'),
(9, 'Jhonnys David', 'JhonnysD02', 'jdeavilasalgado@gmail.com', 'pbkdf2:sha256:260000$6VgJ7rMizDYvbFLb$250f7b97d8037e7a7348d6551250f83619ef05b66431fb2a28ef901bcc70500b', '', '0000-00-00 00:00:00'),
(10, 'Jhonnys David', 'JhonnysDSS', 'nicoldeavila@gmail.com', 'pbkdf2:sha256:260000$lg6fXZfUfNfGTGFh$757b15c1686b2b8bdad5c3ac989451770677afbbc8d139596142ba033e56a52b', '', '0000-00-00 00:00:00'),
(11, 'Jhonnys David', 'JhonnysDDS', 'pedromendoza@gmail.con', 'pbkdf2:sha256:260000$amPT58Vf9m7WgTJi$205e02d1cf9a412c9476cca1f0ab88368a860f73e8aa2a0fea2f6d27ae3f0ad5', 'dt6qNPYT', '0000-00-00 00:00:00'),
(12, 'Jhonnys David', 'Jhonnys', 'jdeavilasalgado@gmail.com', 'pbkdf2:sha256:260000$YDrKCs1PGkRT89BB$6e7e237e939dda75ab4105e818f7322d68a0dee528b224964aff470b1a00de60', 'dt6qNPYT', '0000-00-00 00:00:00'),
(13, 'juan', 'juanh', 'ghkj@mail.comn', 'pbkdf2:sha256:260000$jugFLsKAgtsNJWuF$4e2f65666a37f408c95cc9283bb284c36d46bd0ee6e39c680d7c14942bd6ef1e', '', '0000-00-00 00:00:00'),
(14, 'Jhonnys David De Avila Salgado', 'JhonnysUser', 'jdeavilasalgado@gmail.com', 'pbkdf2:sha256:260000$5qMn23prKVHZko8a$8872feffe2d9200ee733225a022daff00cb2f0050bc116b2a2ce822a2c292e0d', '', '0000-00-00 00:00:00'),
(15, 'Nicol kari De Avila Salgado', 'NicolDS', 'nicoldeavila@gmail.com', 'pbkdf2:sha256:260000$4DYTAjr3fbiFqmPi$795a7d5190b99df3ae6a6f34c8e06f1e179138da22b7c621dae90e532fbb0a31', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_user_referred`
--

CREATE TABLE `app_user_referred` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name_user` varchar(255) NOT NULL,
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

INSERT INTO `app_user_referred` (`id`, `user_id`, `name_user`, `creation_date`, `all_names`, `email`, `cellphone`, `signature`, `apartment_type`, `term_cond`) VALUES
(18, 14, 'Jhonnys David De Avila Salgado', '0000-00-00 00:00:00', 'Juan camilo Sarmiento', 'nicoldeavila@gmail.com', '1234567890', 2, 4, 0),
(19, 15, 'Nicol kari De Avila Salgado', '0000-00-00 00:00:00', 'Angela Rodriguez', 'jdeavigflasalgado@gmail.com', '6519161919', 2, 3, 0);

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
  ADD KEY `user_id` (`user_id`),
  ADD KEY `name_user` (`name_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `app_user_referred`
--
ALTER TABLE `app_user_referred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
