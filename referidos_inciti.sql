-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2022 a las 21:59:58
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
-- Estructura de tabla para la tabla `app_projects`
--

CREATE TABLE `app_projects` (
  `id` int(11) NOT NULL,
  `name_project` varchar(11) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `terms_conditions` text NOT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `app_projects`
--

INSERT INTO `app_projects` (`id`, `name_project`, `imagen`, `description`, `terms_conditions`, `creation_date`) VALUES
(1, 'Alameda', NULL, 'Primer proyecto en desarrollarse en el Gran malecón de Barranquilla, que contará con vista al río magdalena con un diseño vanguardista de 33 pisos que hacen de sus apartamentos, una oportunidad única para vivir e invertir en uno de los principales polos de desarrollo en Barranquilla, desde los 36m2 apartamentos totalmente terminados, con múltiples amenidades como: terraza mirador, piscina para adultos, sala creativa, turco, sauna y zona para mascotas y una excelente relación de apartamentos con parqueadero.', 'asasasa', '2022-09-13 20:24:30'),
(2, 'Vive Rio', NULL, 'Primer proyecto en desarrollarse en el Gran malecón de Barranquilla, que contará con vista al río magdalena con un diseño vanguardista de 33 pisos que hacen de sus apartamentos, una oportunidad única para vivir e invertir en uno de los principales polos de desarrollo en Barranquilla, desde los 36m2 apartamentos totalmente terminados, con múltiples amenidades como: terraza mirador, piscina para adultos, sala creativa, turco, sauna y zona para mascotas y una excelente relación de apartamentos con parqueadero.', 'asdasd', '2022-09-13 20:34:25'),
(3, 'Mambo', NULL, 'Primer proyecto en desarrollarse en el Gran malecón de Barranquilla, que contará con vista al río magdalena con un diseño vanguardista de 33 pisos que hacen de sus apartamentos, una oportunidad única para vivir e invertir en uno de los principales polos de desarrollo en Barranquilla, desde los 36m2 apartamentos totalmente terminados, con múltiples amenidades como: terraza mirador, piscina para adultos, sala creativa, turco, sauna y zona para mascotas y una excelente relación de apartamentos con parqueadero.', 'Terminos y Condiciones de Mambo', '2022-09-13 21:59:35');

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
  `creation_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `app_user`
--

INSERT INTO `app_user` (`id`, `names`, `username`, `email`, `password`, `is_admin`, `creation_date`) VALUES
(1, 'ANA ARAG?N', 'anaragon', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(2, 'Alfredo Arellana', 'alarellana', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(3, 'Ana Maria zu?iga', 'anzuniga', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(4, 'Jorge de castro- Silvia acosta apto 1109', 'joapto1109', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(5, 'Gina otero', 'giotero', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(6, 'German Ignacio Luna Soto', 'gesoto', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(7, 'Felipe Aroca', 'fearoca', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(8, 'Gloria Henao gonzalez ', 'glgonzalez', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(9, 'Sebastian Cure Alzamora ', 'sealzamora', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(10, 'Felipe Conto', 'feconto', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(11, 'Hans Garces', 'hagarces', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(12, 'Jorge Rubio', 'jorubio', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(13, 'SARA MU?OZ GALEANO', 'sagaleano', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(14, 'Mike Arenas Murillo ', 'mimurillo', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(15, 'Ernesto Ariza', 'erariza', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(16, 'Inversiones IJJ', 'inijj', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(17, 'Alex lascarro', 'allascarro', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(18, 'Nathalie torrente ', 'natorrente', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(19, 'Jos? Rodriguez Locarno', 'jolocarno', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(20, 'Margarita OByrne', 'maobyrne', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(21, 'Jorge Iv?n Cristancho Casta?eda', 'jocastaneda', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(22, 'Dinklab', 'didinklab', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(23, 'Adolfo Rafael mercado de avila ', 'adavila', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(24, 'Andres villafanez', 'anvillafanez', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(25, 'Johanna Alvarez Navarro', 'jonavarro', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(26, 'Jaime Guti?rrez ', 'jagutierrez', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(27, 'jose otero', 'jootero', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(28, 'Juan Llinas', 'jullinas', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(29, 'Leonardo David Serje Morales', 'lemorales', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(30, 'Rayber Reyes', 'rareyes', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(31, 'Alex dau ', 'aldau', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(32, 'ALBERTO CARDONA', 'alcardona', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(33, 'Mois?s fisboim ', 'mofisboim', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(34, 'ROGELIO ESTEBAN MANTILLA SALCEDO', 'rosalcedo', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(35, 'Ivan Villazon', 'ivvillazon', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(36, 'Jhonatan Guti?rrez Sanin', 'jhsanin', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(37, 'Alfonso cachan ', 'alcachan', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(38, 'Mauricio Martinez', 'mamartinez', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(39, 'OMAR CACERES ARROYAVE', 'omarroyave', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(40, 'Indira P?rez ', 'inperez', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(41, 'David ?lvarez ', 'daalvarez', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(42, 'Nidia Luz Otero Otero', 'niotero', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(43, 'Sandra Milena Cujia Rico ', 'sarico', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(44, 'Luis Fernando Aguado Quintero', 'luquintero', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(45, 'Rafael J Florez Macias', 'ramacias', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(46, 'Jorge Enrique Guarin Barrag?n', 'jobarragan', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(47, 'Flavia De Lourdes Macias Lopez', 'fllopez', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(48, 'Juan Manuel Mendoza', 'jumendoza', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(49, 'Gustavo Coronado Nieves', 'gunieves', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(50, 'Victor barros', 'vibarros', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(51, 'Gustavo Osorio', 'guosorio', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(52, 'Wall de colombia SAS', 'wasas', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '0000-00-00 00:00:00'),
(53, 'Jhonnys David De Avila Salgado', 'JhonnysD02', 'j_honydavid@hotmail.com', 'pbkdf2:sha256:260000$kZSmFH1mkH4DrR2V$99cd6171cdf3a27071a4421dcb21aa0a53f3b3b29e4188e16f229d4739e55d22', '', '2022-07-24 18:32:54'),
(54, 'Jhonnys David De Avila Salgado', 'JhonnysDs', 'jdeavilasalgado@gmail.com', 'pbkdf2:sha256:260000$p7pCXBT9xNAeB5He$994d8a5d7f2634650c7318756c7c6f33a87949a056d5b9209a1a4d85d81e5f91', 'dt6qNPYT', '2022-07-24 20:08:36'),
(55, 'Katherine Velazques', 'KaVelasquez', 'katerine@inciti.co', 'pbkdf2:sha256:260000$vQ8LBzCYsfYbw1Fd$dfade67af11bd50820fee6e146de17c1383d1844f70866d3ef46b677a763bd28', 'dt6qNPYT', '2022-07-26 19:48:19'),
(56, 'David Casas', 'DavidCa', 'david@inciti.co', 'pbkdf2:sha256:260000$uYlFCldGmxfJ1NBg$ad416aef0fd63c131712aa00da759bbfa9f52a5823810af66ec26192278fdaec', 'dt6qNPYT', '2022-07-26 19:54:48'),
(57, 'Katherine Diaz', 'KaDiaz', 'katerin@inciti.co', 'pbkdf2:sha256:260000$n7CsXQPgU3s1IXg1$bef6d1499acc0b1da4ee65e3a707bc9f1d7bd51f650cd98e183dae09a6b50664', 'dt6qNPYT', '2022-07-26 20:01:35'),
(58, 'Pedro Otero', 'Pedrotero', 'pedroterogris@gmail.com', 'pbkdf2:sha256:260000$MuPMVM1sI7SJi8kl$1e40287ecf1170aec3993cde73c2ff90f63aae495ace7cf77204702cc0e8d69a', 'dt6qNPYT', '2022-07-27 19:19:29'),
(134, 'Fabian Casalins', 'marketing', 'marketing@inciti.co', 'pbkdf2:sha256:260000$7XILt7VYwHYjtpNy$521efd4754a628e5e6185ac606cbd586f746d244758225a3a4955e11ff0bcdec', 'dt6qNPYT', '2022-08-08 21:28:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_user_referred`
--

CREATE TABLE `app_user_referred` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT current_timestamp(),
  `all_names` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cellphone` varchar(255) NOT NULL,
  `signature` smallint(6) NOT NULL DEFAULT 1,
  `apartment_type` smallint(6) NOT NULL DEFAULT 1,
  `term_cond` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `app_user_referred`
--

INSERT INTO `app_user_referred` (`id`, `project_id`, `user_id`, `creation_date`, `all_names`, `email`, `cellphone`, `signature`, `apartment_type`, `term_cond`) VALUES
(1, 2, 1, '0000-00-00 00:00:00', 'JOSE GUILLERMO OTERO', 'jotegri@gmail.com', '72343855', 2, 4, 1),
(2, 2, 2, '0000-00-00 00:00:00', 'Milton Marsiglia', 'miltonmarsiglia@gmail.com', '3173370324', 1, 1, 1),
(3, 2, 2, '0000-00-00 00:00:00', 'Karen Arellana', 'karellana1806@hotmail.com', '3114917701', 1, 1, 1),
(4, 2, 2, '0000-00-00 00:00:00', 'Ricardo Andres Arellana', 'ricardoandresarellana@hotmail.com', '3164971634', 1, 1, 1),
(5, 2, 2, '0000-00-00 00:00:00', 'Hugo Perez', 'huaperez@gmail.com', '14086379948', 1, 1, 1),
(6, 2, 2, '0000-00-00 00:00:00', 'Alfredo Varela', 'alfrevarela@hotmail.com', '3126924898', 2, 4, 1),
(7, 2, 2, '0000-00-00 00:00:00', 'Ada Arellana', 'adaar50@hotmail.com', '3183849938', 1, 1, 1),
(8, 2, 2, '0000-00-00 00:00:00', 'Cristian Meriño Pua', 'cristian.merino@hotmail.com', '3205128340', 2, 2, 1),
(9, 2, 2, '0000-00-00 00:00:00', 'Julian Humberto Ferro Arellana', 'ju-ferro@uniandes.edu.co', '3002560299', 1, 1, 1),
(10, 2, 3, '0000-00-00 00:00:00', 'Maria Monica Hernandez', 'hernandezucros@gmail.com', '3205182186', 2, 5, 1),
(11, 2, 3, '0000-00-00 00:00:00', 'Giovanni Novella', 'giovanni.novella@paramopresenta.com', '3186296818', 1, 1, 1),
(12, 2, 3, '0000-00-00 00:00:00', 'Julio Camacho', 'julio.camacho@woobsing.com', '3116881375', 1, 1, 1),
(13, 2, 3, '0000-00-00 00:00:00', 'Juan Carlos Correa', 'juancarloscorreaescobar@gmail.com', '3157211809', 1, 1, 1),
(14, 2, 3, '0000-00-00 00:00:00', 'Antonio Habib', 'ahabib@redsis.com', '3186964127', 1, 1, 1),
(15, 2, 3, '0000-00-00 00:00:00', 'Christian Murillo', 'murilloc725@gmail.com', '3183379166', 2, 2, 1),
(16, 2, 3, '0000-00-00 00:00:00', 'Julian Gutierrez', 'Juliangutierrez2@gmail.com', '3167108177', 1, 1, 1),
(17, 2, 4, '0000-00-00 00:00:00', 'federico eckardth', 'jorgedecastro2005@gmail.com', '0', 1, 1, 1),
(18, 2, 4, '0000-00-00 00:00:00', 'Alfredo de castro', 'jorgedecastro2005@gmail.com', '0', 2, 6, 1),
(19, 2, 4, '0000-00-00 00:00:00', 'silvia acosta', 'jorgedecastro2005@gmail.com', '0', 2, 6, 1),
(20, 2, 4, '0000-00-00 00:00:00', 'Guillermo pupo', 'jorgedecastro2005@gmail.com', '0', 2, 6, 1),
(21, 2, 5, '0000-00-00 00:00:00', 'Luis castro', 'mail@mai.com', '3006772295', 1, 1, 1),
(22, 2, 4, '0000-00-00 00:00:00', 'Marlon Herrera', 'Alex Castillo', '0', 1, 1, 1),
(23, 2, 4, '0000-00-00 00:00:00', 'Elisa guerrero', 'Alex Castillo', '0', 2, 5, 1),
(24, 2, 6, '0000-00-00 00:00:00', 'Nestor Joaquin Taffur Barrios', 'joaquintaffur@icloud.com', '17323576058', 1, 1, 1),
(25, 2, 6, '0000-00-00 00:00:00', 'ubaldo altamar', 'ubaldo.altamar@gmail.com', '3003652378', 1, 1, 1),
(26, 2, 4, '0000-00-00 00:00:00', 'Nidia otero', 'jorgedecastro2005@gmail.com', '3008053609', 2, 6, 1),
(27, 2, 4, '0000-00-00 00:00:00', 'Felipe bedoya', 'jorgedecastro2005@gmail.com', '3006508436', 1, 1, 1),
(28, 2, 4, '0000-00-00 00:00:00', 'Carlos Rozo Nader', 'jorgedecastro2005@gmail.com', '3153295140', 1, 1, 1),
(29, 2, 4, '0000-00-00 00:00:00', 'Jairo angulo', 'Jorgedecastro2005@gmail.com', '3114186078', 1, 1, 1),
(30, 2, 7, '0000-00-00 00:00:00', 'Luis Camilo Palacios', 'luispalacios@me.com', '5,73103E+11', 1, 1, 1),
(31, 2, 4, '0000-00-00 00:00:00', 'Orlando retamoso', 'jorgedecastro2005@gmail.com', '3103612181', 1, 1, 1),
(32, 2, 4, '0000-00-00 00:00:00', 'David payares', 'jorgedecastro2005@gmail.com', '17862461242', 1, 1, 1),
(33, 2, 4, '0000-00-00 00:00:00', 'Marzio del vechio', 'jorhedecastro2005@gmail.com', '3166289053', 1, 1, 1),
(34, 2, 4, '0000-00-00 00:00:00', 'Luis Felipe Hernandez', 'jorgedecastro2005@gmail.com', '3163121858', 1, 1, 1),
(35, 2, 8, '0000-00-00 00:00:00', 'Ivan Gomez lee', 'Gerencia@ivandariogomezlee.com', '5,73165E+11', 1, 1, 1),
(36, 2, 9, '0000-00-00 00:00:00', 'Farid Cure del Castillo', 'Fcure@arroceradellitoral.com', '3157267766', 2, 6, 1),
(37, 2, 9, '0000-00-00 00:00:00', 'Winston javier Cure ', 'Curew@arroceradellitoral.com', '3103544673', 1, 1, 1),
(38, 2, 10, '0000-00-00 00:00:00', 'Pedro Cobos', 'pjcobos@gmail.com', '3156020558', 2, 5, 1),
(39, 2, 10, '0000-00-00 00:00:00', 'Carlos Diaz ', 'diazluiscarlos8@hotmail.com', '3183384934', 2, 6, 1),
(40, 2, 8, '0000-00-00 00:00:00', 'Felipe Rodriguez ', 'feliperodriguezc@me.com', '5,73006E+11', 2, 5, 1),
(41, 2, 11, '0000-00-00 00:00:00', 'Jean Carlo Godoy', 'jc.godoy@yahoo.com ', '19083576644', 1, 1, 1),
(42, 2, 12, '0000-00-00 00:00:00', 'Angela Rubio', 'Angelarubio10@gmail.com', '5,73023E+11', 2, 5, 1),
(43, 2, 12, '0000-00-00 00:00:00', 'Margarita Echavarria ', 'Margaraechavarria29@gmail.com', '5,73012E+11', 1, 1, 1),
(44, 2, 8, '0000-00-00 00:00:00', 'Felipe Rodriguez ', 'feliperodriguezc@me.com', '5,73006E+11', 1, 1, 1),
(45, 2, 13, '0000-00-00 00:00:00', 'Cindy Ballestas Sandoval', 'Cindyballestas@hotmail.com', '13016486627', 1, 1, 1),
(46, 2, 14, '0000-00-00 00:00:00', 'Luis Barros ', 'luisvinorico@yahoo.com', '3174424772', 1, 1, 1),
(47, 2, 15, '0000-00-00 00:00:00', 'Roberto solano', 'robertosolanonavarra@hotmail.com', '5,73106E+11', 2, 5, 1),
(48, 2, 16, '0000-00-00 00:00:00', 'Antonio castro', 'acastro@acfcia.com', '320 5423551', 1, 1, 1),
(49, 2, 17, '0000-00-00 00:00:00', 'Julio Enrique Troncoso Calvo', 'Julio.troncoso@unclic.com.co', '3214535133', 1, 1, 1),
(50, 2, 16, '0000-00-00 00:00:00', 'welfran mendoza', 'Mwelfran@gmail.com', '323 3138338', 1, 1, 1),
(51, 2, 17, '0000-00-00 00:00:00', 'Laura Lopez', 'Laura.f.lopez@hotmail.com', '5,73134E+11', 1, 1, 1),
(52, 2, 15, '0000-00-00 00:00:00', 'Miguel bolivar', 'Mibolivar@hotmail.com', '3215396160', 2, 6, 1),
(53, 2, 15, '0000-00-00 00:00:00', 'Luis Carlos Pertuz ', 'luis_pertuz@hotmail.com', '5,73127E+11', 1, 1, 1),
(54, 2, 18, '0000-00-00 00:00:00', 'Paola londoño', 'Paola.londos@gmail.com', '3214731427', 1, 1, 1),
(55, 2, 4, '0000-00-00 00:00:00', 'Jose rodriguez', 'jorgedecastro2005@gmail.com', '3013295230', 2, 6, 1),
(56, 2, 19, '0000-00-00 00:00:00', 'Oliver Antequera', 'oliverantequera777@gmail.com ', '19545931664', 1, 1, 1),
(57, 2, 10, '0000-00-00 00:00:00', 'Marcela Ospina', 'marceos_r@hotmail.com', '5,73016E+11', 1, 1, 1),
(58, 2, 20, '0000-00-00 00:00:00', 'Valentina Garcia', 'garcia-vale@hotmail.com', '3157212652', 1, 1, 1),
(59, 2, 21, '0000-00-00 00:00:00', 'Carlos C?sar Cristancho Castañeda ', 'carlos.cristancho@hotmail.com', '79445571', 2, 5, 1),
(60, 2, 22, '0000-00-00 00:00:00', 'Valentina Diaz', 'vdiaz9328@gmail.com', '3112018256', 1, 1, 1),
(61, 2, 22, '0000-00-00 00:00:00', 'Andres Felipe anaya giraldo', 'gerencia@agconstructora.com.co', '3106321533', 2, 6, 1),
(62, 2, 22, '0000-00-00 00:00:00', 'Arnaldo Jader Del Valle Jassan', 'arnaldo.delvalle@gmail.com', '3008298523', 1, 1, 1),
(63, 2, 8, '0000-00-00 00:00:00', 'Fabian duarte', 'Fabianvolado76@yahoo.es', '3103616746', 1, 1, 1),
(64, 2, 8, '0000-00-00 00:00:00', 'Armando fontalvo', 'Armandofontalvo@hotmail.com', '3173755130', 1, 1, 1),
(65, 2, 16, '0000-00-00 00:00:00', 'Ricardo angulo', 'ricardoangulodams@gmail.com', '310 8315035', 1, 1, 1),
(66, 2, 16, '0000-00-00 00:00:00', 'Andrea Albornoz ', 'aalbornozf@outlook.com', '313 8560532', 2, 6, 1),
(67, 2, 23, '0000-00-00 00:00:00', 'mileidys mercado Martinez  - Antonio Ismael ulloa', 'Ulloa/ c @ icloud.com', '8609408489', 2, 5, 1),
(68, 2, 4, '0000-00-00 00:00:00', 'marcela barrios', 'jorgedecastro2005@gmail.com', '0', 2, 5, 1),
(69, 2, 24, '0000-00-00 00:00:00', 'Hernando peña', 'hernandojavierpena@hotmail.com', '5,73008E+11', 1, 1, 1),
(70, 2, 27, '0000-00-00 00:00:00', 'pedro quijano ', 'pedroquijanoplata@gmail.com', '3507969087', 2, 6, 1),
(71, 2, 16, '0000-00-00 00:00:00', 'alejandro cano', 'alecan1123@gmail.com', '15619095454', 1, 1, 1),
(72, 2, 22, '0000-00-00 00:00:00', 'Carlos Alberto Olivares Vigles ', 'Olivares.vigles@gmail.com', '3013952546', 2, 6, 1),
(73, 2, 22, '0000-00-00 00:00:00', 'Alejandro hage tafache', 'Aht.arquitectura@gmail.com', '3005446475', 2, 5, 1),
(74, 2, 22, '0000-00-00 00:00:00', 'Leonardo Serje Morales', 'leoserje@gmail.com', '50671080117', 2, 5, 1),
(75, 2, 22, '0000-00-00 00:00:00', 'Sarita duran medina', 'sarita_duran21@hotmail.com', '3017747495', 2, 6, 1),
(76, 2, 22, '0000-00-00 00:00:00', 'Orietta hage tafache', 'Aht.arquitectura@gmail.com', '3135237463', 1, 1, 1),
(77, 2, 24, '0000-00-00 00:00:00', 'Daniela albornoz ', 'Daniela-albornoz@hotmail.com', '320 6804890', 1, 1, 1),
(78, 2, 24, '0000-00-00 00:00:00', 'Fuad salebe', 'Fuadslb@gmail.com', '5,73003E+11', 1, 1, 1),
(79, 2, 25, '0000-00-00 00:00:00', 'Alexander Dau', 'daualex@hotmail.com', '3205696976', 2, 5, 1),
(80, 2, 26, '0000-00-00 00:00:00', 'Rayber Reyes ', 'Raybercito21@hotmail.com', '3204985880', 2, 2, 1),
(81, 2, 26, '0000-00-00 00:00:00', 'Jorge Mario Reyes ', 'Raybercito21@hotmail.com', '17863277139', 2, 3, 1),
(82, 2, 27, '0000-00-00 00:00:00', 'julian pinzon', 'Gerencia@pinos.com.co', '3113674132', 1, 1, 1),
(83, 2, 28, '0000-00-00 00:00:00', 'Hector Llinas', 'hector_llinas@hotmail.com', '17865563001', 1, 1, 1),
(84, 2, 29, '0000-00-00 00:00:00', 'Ramon Elias Anaya Artuz', 'ramoneanaya@hotmail.com ', '3005708620', 1, 1, 1),
(85, 2, 30, '0000-00-00 00:00:00', 'Ricardo Trujillo ', 'Alfonsoeme@hotmail.com', '5,73114E+11', 1, 1, 1),
(86, 2, 26, '0000-00-00 00:00:00', 'Tomas Molina ', 'Rayber21@hotmail.com', '3153783281', 2, 2, 1),
(87, 2, 31, '0000-00-00 00:00:00', 'Moises Fisboim ', 'Moisedgisboim@hotmail.com', '3126601754', 2, 5, 1),
(88, 2, 32, '0000-00-00 00:00:00', 'Paul Bolkhovsky', 'Paulandmila@gmail.com', '0', 2, 2, 1),
(89, 2, 19, '0000-00-00 00:00:00', 'Veronica Vargas ', 'vevaga@hotmail.com ', '300 894-9862', 1, 1, 1),
(90, 2, 23, '0000-00-00 00:00:00', 'Jose luis caez', 'jlcaez@hotmail.com', '3014478546', 1, 1, 1),
(91, 2, 34, '0000-00-00 00:00:00', 'ADOLFO RAFAEL PERTUZ PINZON ', 'apertuz02@hotmail.com', '3157216353', 2, 5, 1),
(92, 2, 35, '0000-00-00 00:00:00', 'Alfonso Macias', 'monomacias@gmail.com', '3135551098', 1, 1, 1),
(93, 2, 36, '0000-00-00 00:00:00', 'Conrado Alberto Jaramillo', 'conradojr@icloud.com', '5,73157E+11', 1, 1, 1),
(94, 2, 36, '0000-00-00 00:00:00', 'Maria Alejandra Gutierrez', 'maria_alejandra_2000@hotmail.com', '17865536900', 1, 1, 1),
(95, 2, 36, '0000-00-00 00:00:00', 'Hebert Andres Gutierrez', 'agutierrez@controlcase.com', '5,73006E+11', 1, 1, 1),
(96, 2, 33, '0000-00-00 00:00:00', 'Jhonatan Gutierrez ', 'jgs1215@icloud.com', '300 2027775', 1, 1, 1),
(97, 2, 37, '0000-00-00 00:00:00', 'Tania bustamante schettini ', 'taniaschettini@gmail.com', '18432613445', 2, 5, 1),
(98, 2, 37, '0000-00-00 00:00:00', 'Mauricio Otalora ', 'No lo tengo ', '3157215250', 1, 1, 1),
(99, 2, 38, '0000-00-00 00:00:00', 'Ruby Hernandez', 'gerencia@agproyectosinmobiliarios.com', '3184721110', 1, 1, 1),
(100, 2, 27, '0000-00-00 00:00:00', 'Accion activa natural sas', 'Pedroquijanoplata@gmail.com', '3507969087', 2, 6, 1),
(101, 2, 39, '0000-00-00 00:00:00', 'FRANCISCO MELO', 'francisco@me.com', '5,73174E+11', 1, 1, 1),
(102, 2, 40, '0000-00-00 00:00:00', 'David alvarez ', 'Deap.27@hotmail.com', '3002166651', 2, 5, 1),
(103, 2, 41, '0000-00-00 00:00:00', 'Jaime Sanchez ', 'josanchezc1@yahoo.com', '3017859129', 2, 2, 1),
(104, 2, 36, '0000-00-00 00:00:00', 'Carlos Gonzales ', 'c_gonzalezb@hotmail.com', '5,73024E+11', 1, 1, 1),
(105, 2, 36, '0000-00-00 00:00:00', 'Ricardo Bayuelo', 'ricardobayuelo@gmail.com', '5,73165E+11', 1, 1, 1),
(106, 2, 37, '0000-00-00 00:00:00', 'Mauricio Olarte ', 'Molarte@colarquin.com', '5,73136E+11', 1, 1, 1),
(107, 2, 42, '0000-00-00 00:00:00', 'GUNTER CORINEK', 'nidiaotero@gmail.com', '3008053609', 1, 1, 1),
(108, 2, 33, '0000-00-00 00:00:00', 'DAREK BAL', 'darekbal@yahoo.com', '19172880338', 1, 1, 1),
(109, 2, 8, '0000-00-00 00:00:00', 'Viky restrepo ', 'mrestrep@constructorabolivar.com', '5,73103E+11', 1, 1, 1),
(110, 2, 43, '0000-00-00 00:00:00', 'Mario Andres Huyo Obando ', 'mariohuyo@yahoo.com', '3012412928', 2, 5, 1),
(111, 2, 43, '0000-00-00 00:00:00', 'Diana Cujia', 'dianacu80@hotmail.com', '3203053361', 2, 5, 1),
(112, 2, 44, '0000-00-00 00:00:00', 'Claudia Patricia Aguado Quintero', 'cpaguado@yahoo.com', '300 4391848', 2, 6, 1),
(113, 2, 45, '0000-00-00 00:00:00', 'Rafael Florez Janica y Flavia Florez', 'Rafaelflorez@yahoo.com', '3059797434', 1, 1, 1),
(114, 2, 46, '0000-00-00 00:00:00', 'Juan Felipe Piedrahita Amin', 'jfpa86@gmail.com', '3502260342', 1, 1, 1),
(115, 2, 42, '0000-00-00 00:00:00', 'Lina Diaz', 'Linapad@gmail.com', '3004716486', 2, 6, 1),
(116, 2, 37, '0000-00-00 00:00:00', 'Janet Celin', 'jferreiros@oplcarga.com.co', '5,73104E+11', 1, 1, 1),
(117, 2, 37, '0000-00-00 00:00:00', 'Luis frieri', 'Luis.frieri@cannoncol.com', '5,73153E+11', 1, 1, 1),
(118, 2, 42, '0000-00-00 00:00:00', 'Diana Carolina David Celefon', 'Dianita.david@ gmail.com', '3157162248', 2, 5, 1),
(119, 2, 37, '0000-00-00 00:00:00', 'Luis frieri', 'Luis.frieri@cannoncol.com', '3152500267', 2, 5, 1),
(120, 2, 47, '0000-00-00 00:00:00', 'David Felipe Florez Macias', 'dflorezlaw@outlook.com', '7864367217', 1, 1, 1),
(121, 2, 48, '0000-00-00 00:00:00', 'camila berrio', 'camilaberrio@hotmail.com', '3205224470', 1, 1, 1),
(122, 2, 48, '0000-00-00 00:00:00', 'Carlos Andres Mendoza', 'cmendoza@amtlegal.co', '3103544903', 1, 1, 1),
(123, 2, 49, '0000-00-00 00:00:00', 'Wilson Rincon', 'wilson.rincon@segurosdelestado.com', '3102481891', 1, 1, 1),
(124, 2, 49, '0000-00-00 00:00:00', 'Carlos Rojas', 'carlos.rojas@segurosdelestado.com', '3214651580', 1, 1, 1),
(125, 2, 50, '0000-00-00 00:00:00', 'Alex viñas', 'alex@renzo.c?mo.co', '3135041169', 1, 1, 1),
(126, 2, 50, '0000-00-00 00:00:00', 'Mauricio barros', 'maubarcas@yahho.com', '3017336507', 1, 1, 1),
(127, 2, 51, '0000-00-00 00:00:00', 'Carlos Martes M', 'carlos.martes@celta.com.co', '3123320017', 1, 1, 1),
(128, 2, 52, '0000-00-00 00:00:00', 'Sissi Vargas', 'Sissi.Vargas@cannoncol.com', '3117915397', 2, 6, 1),
(129, 2, 27, '0000-00-00 00:00:00', 'pedro quijano ', 'pedroquijanoplata@gmail.com', '3507969087', 2, 6, 1),
(130, 2, 27, '0000-00-00 00:00:00', 'Accion activa natural sas', 'Pedroquijanoplata@gmail.com', '3507969087', 2, 6, 1),
(131, 2, 53, '0000-00-00 00:00:00', 'Juan camilo Sarmiento', 'admin@gmail.com', '8256238752', 1, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `app_projects`
--
ALTER TABLE `app_projects`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `projects_id` (`project_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `app_projects`
--
ALTER TABLE `app_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT de la tabla `app_user_referred`
--
ALTER TABLE `app_user_referred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
