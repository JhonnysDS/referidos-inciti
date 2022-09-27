-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2022 a las 00:20:13
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
-- Base de datos: `referidos_inciti_v1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_projects`
--

CREATE TABLE `app_projects` (
  `id` int(11) NOT NULL,
  `name_project` varchar(50) COLLATE utf8_bin NOT NULL,
  `imagen` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `terms_conditions` text COLLATE utf8_bin NOT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `app_projects`
--

INSERT INTO `app_projects` (`id`, `name_project`, `imagen`, `description`, `terms_conditions`, `creation_date`) VALUES
(1, 'Vive Rio', '', 'Primer proyecto en desarrollarse en el Gran malecón de Barranquilla, que contará con vista al río magdalena con un diseño vanguardista de 33 pisos que hacen de sus apartamentos, una oportunidad única para vivir e invertir en uno de los principales polos de desarrollo en Barranquilla, desde los 36m2 apartamentos totalmente terminados, con múltiples amenidades como: terraza mirador, piscina para adultos, sala creativa, turco, sauna y zona para mascotas y una excelente relación de apartamentos con parqueadero.', 'TERMINOS Y CONDICIONES PLAN DE CLIENTES REFERIDOS INCITI.CO SAS VIGENCIA AÑO 2022\r\n\r\n¿Quién puede participar?\r\nEL CLIENTE, es un cliente de Inciti.co, es decir que debe haber o estar en proceso de adquirir al menos un inmueble en alguno de los proyectos que comercializa Inciti.co sas y acepte las condiciones del presente acuerdo. EL CLIENTE se debe encontrar activo como cliente en la base de datos de Inciti.co., antes de registrar al interesado. Esto quiere decir que EL CLIENTE ya debe tener el proceso de compra de su inmueble debidamente legalizado y aparecer en la base de datos como cliente activo para llevar a cabo el proceso correspondiente.\r\n\r\n¿A quién puedo referir?\r\nPuedo referir a un familiar o a un amigo, el referidor debe contar con la autorización del Referido para suministrar su Información a inciti.co, con fines comerciales, suministrando los siguientes datos: EL CLIENTE: Nombre del cliente, cédula, teléfono Referido: Nombre, teléfono y correo.\r\n\r\n¿Cómo lo hago?\r\nEL CLIENTE debe inscribir sus datos y los del interesado a través del BOTÓN del Programa de Referidos, que se encuentra en la página web: www.inciti.co, aceptando la política de privacidad de datos personales. Lo primero que debe ocurrir es que el CLIENTE registre a las personas interesadas en comprar un inmueble comercializado por inciti.co y este hecho se materializa una vez lo registra en la página web designada para tal efecto. Posterior a ello el Interesado puede legalizar la compra de su inmueble a través de los diferentes canales de venta que tienen las compañías. En ningún caso podrá ser, al contrario, pues el CLIENTE perderá el derecho al premio. Políticas y condiciones\r\n\r\nSi por algún motivo el INTERESADO fue registrado en la página web (plataforma de referidos) por dos CLIENTES diferentes, el registro del interesado será válido para el primer CLIENTE que lo haya registrado. Se validará fecha y hora del registro para determinar quién es el CLIENTE cuando se presente esta situación. El Bono de descuento se entregará sobre el valor inicial del negocio y se aplicará al último pago de acuerdo al plan de pago del negocio.\r\nTanto el Cliente como la persona que refiere serán notificados a partir del tercer mes, por medio del correo electrónico para reclamar el descuento.\r\n\r\nEl valor del bono se calcula sobre el negocio que EL CLIENTE refiere de la siguiente manera:\r\nReferido de un aptoestudio (tipo 3) Bono de descuento: $1.000.000\r\nReferido de un apto de 65m2 (tipo 2) Bono de descuento: $1.500.000\r\nReferido de un apto de > 95 m2 (tipo 1A,1B,1C) Bono de descuento: $2.000.000\r\n\r\nTrimestralmente, se hará corte de los beneficiarios del Bono del plan de referidos y este lo podrá hacer efectivo hasta dentro de los próximos 6 meses.\r\nSi el desistimiento de la venta del interesado se realiza dentro de los seis (6) meses siguientes se entenderá para todos los efectos que el CLIENTE Y EL REFERIDO no tendrá derecho al bono de descuento.\r\nLos interesados inscritos en etapas anteriores del Programa de Referidos NO serán tenidos en cuenta dentro de esta campaña.\r\nNo aplica para Cesiones.\r\nEl bono de referido no es acumulable con otras promociones.\r\n\r\nVálido únicamente para clientes de INCITI.CO que acepten las condiciones del presente plan.', '2022-09-27 22:00:37');

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
(1, 'ANA ARAG?N', 'anaragon', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(2, 'Alfredo Arellana', 'alarellana', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(3, 'Ana Maria zu?iga', 'anzuniga', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(4, 'Jorge de castro- Silvia acosta apto 1109', 'joapto1109', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(5, 'Gina otero', 'giotero', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(6, 'German Ignacio Luna Soto', 'gesoto', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(7, 'Felipe Aroca', 'fearoca', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(8, 'Gloria Henao gonzalez ', 'glgonzalez', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(9, 'Sebastian Cure Alzamora ', 'sealzamora', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(10, 'Felipe Conto', 'feconto', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(11, 'Hans Garces', 'hagarces', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(12, 'Jorge Rubio', 'jorubio', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(13, 'SARA MU?OZ GALEANO', 'sagaleano', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(14, 'Mike Arenas Murillo ', 'mimurillo', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(15, 'Ernesto Ariza', 'erariza', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(16, 'Inversiones IJJ', 'inijj', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(17, 'Alex lascarro', 'allascarro', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(18, 'Nathalie torrente ', 'natorrente', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(19, 'Jos? Rodriguez Locarno', 'jolocarno', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(20, 'Margarita OByrne', 'maobyrne', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(21, 'Jorge Iv?n Cristancho Casta?eda', 'jocastaneda', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(22, 'Dinklab', 'didinklab', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(23, 'Adolfo Rafael mercado de avila ', 'adavila', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(24, 'Andres villafanez', 'anvillafanez', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(25, 'Johanna Alvarez Navarro', 'jonavarro', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(26, 'Jaime Guti?rrez ', 'jagutierrez', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(27, 'jose otero', 'jootero', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(28, 'Juan Llinas', 'jullinas', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(29, 'Leonardo David Serje Morales', 'lemorales', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(30, 'Rayber Reyes', 'rareyes', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(31, 'Alex dau ', 'aldau', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(32, 'ALBERTO CARDONA', 'alcardona', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(33, 'Mois?s fisboim ', 'mofisboim', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(34, 'ROGELIO ESTEBAN MANTILLA SALCEDO', 'rosalcedo', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(35, 'Ivan Villazon', 'ivvillazon', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(36, 'Jhonatan Guti?rrez Sanin', 'jhsanin', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(37, 'Alfonso cachan ', 'alcachan', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(38, 'Mauricio Martinez', 'mamartinez', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(39, 'OMAR CACERES ARROYAVE', 'omarroyave', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(40, 'Indira P?rez ', 'inperez', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(41, 'David ?lvarez ', 'daalvarez', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(42, 'Nidia Luz Otero Otero', 'niotero', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(43, 'Sandra Milena Cujia Rico ', 'sarico', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(44, 'Luis Fernando Aguado Quintero', 'luquintero', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(45, 'Rafael J Florez Macias', 'ramacias', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(46, 'Jorge Enrique Guarin Barrag?n', 'jobarragan', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(47, 'Flavia De Lourdes Macias Lopez', 'fllopez', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(48, 'Juan Manuel Mendoza', 'jumendoza', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(49, 'Gustavo Coronado Nieves', 'gunieves', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(50, 'Victor barros', 'vibarros', 'mailfake2@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(51, 'Gustavo Osorio', 'guosorio', 'mailfake3@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(52, 'Wall de colombia SAS', 'wasas', 'mailfake1@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', '', '2022-09-27 19:24:38'),
(53, 'Jhonnys David De Avila Salgado', 'JhonnysD02', 'j_honydavid@hotmail.com', 'pbkdf2:sha256:260000$kZSmFH1mkH4DrR2V$99cd6171cdf3a27071a4421dcb21aa0a53f3b3b29e4188e16f229d4739e55d22', '', '2022-09-27 19:24:38'),
(54, 'Jhonnys David De Avila Salgado', 'JhonnysDs', 'jdeavilasalgado@gmail.com', 'pbkdf2:sha256:260000$p7pCXBT9xNAeB5He$994d8a5d7f2634650c7318756c7c6f33a87949a056d5b9209a1a4d85d81e5f91', 'dt6qNPYT', '2022-09-27 19:24:38'),
(55, 'Katherine Velazques', 'KaVelasquez', 'katerine@inciti.co', 'pbkdf2:sha256:260000$vQ8LBzCYsfYbw1Fd$dfade67af11bd50820fee6e146de17c1383d1844f70866d3ef46b677a763bd28', 'dt6qNPYT', '2022-09-27 19:24:38'),
(56, 'David Casas', 'DavidCa', 'david@inciti.co', 'pbkdf2:sha256:260000$uYlFCldGmxfJ1NBg$ad416aef0fd63c131712aa00da759bbfa9f52a5823810af66ec26192278fdaec', 'dt6qNPYT', '2022-09-27 19:24:38'),
(57, 'Katherine Diaz', 'KaDiaz', 'katerin@inciti.co', 'pbkdf2:sha256:260000$n7CsXQPgU3s1IXg1$bef6d1499acc0b1da4ee65e3a707bc9f1d7bd51f650cd98e183dae09a6b50664', 'dt6qNPYT', '2022-09-27 19:24:38'),
(58, 'Pedro Otero', 'Pedrotero', 'pedroterogris@gmail.com', 'pbkdf2:sha256:260000$MuPMVM1sI7SJi8kl$1e40287ecf1170aec3993cde73c2ff90f63aae495ace7cf77204702cc0e8d69a', 'dt6qNPYT', '2022-09-27 19:24:38'),
(134, 'Fabian Casalins', 'marketing', 'marketing@inciti.co', 'pbkdf2:sha256:260000$7XILt7VYwHYjtpNy$521efd4754a628e5e6185ac606cbd586f746d244758225a3a4955e11ff0bcdec', 'dt6qNPYT', '2022-09-27 19:24:38'),
(135, 'mi nombre y apellido', 'minickname', 'microrreo@gmail.com', 'pbkdf2:sha256:260000$Fx6az2xKbC1PawkH$28f439d0e0fa0f26360e9b00d7cc2ad4c6c552a3cdcc352f0e7654bb9651940c', '', '2022-09-27 19:24:38'),
(136, 'Leonardo Alberto Wilches Cruz', 'leowilches', 'Wilches.leonardo@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', NULL, '2022-09-27 19:24:38'),
(138, 'Ivan Montenegro', 'imontenegro', 'ivanfranciscomontenegro@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', NULL, '2022-09-27 19:24:38'),
(140, 'JULIAN DE LEON', 'juleon', 'blincol.info@gmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', NULL, '2022-09-27 19:24:38'),
(142, 'VERONICA DE CASTRO', 'vdecastro', 'verodecastro@hotmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', NULL, '2022-09-27 19:24:38'),
(143, 'MILLER GAMA', 'mgama', 'millergama@hotmail.com', 'pbkdf2:sha256:260000$HlTNar86H0Hk5ap3$abafb1d1624ec9d45f7d491ba3e00094b7855c3a0e603ee82ea317188fd7876b', NULL, '2022-09-27 19:24:38'),
(146, 'Pedro Otero', 'pedroterogris', 'pedroterogris@gmail.com', 'pbkdf2:sha256:260000$lOrvJom4PFOPpTUQ$077faf3f698fafd20aa692c31c5d1abf170751c132f2c5fbe6dec2edb04838eb', '', '2022-09-27 19:24:38'),
(147, 'Alex Castillo', 'alex.castillo@alianzaydn.com.co', 'alex.castillo@alianzaydn.com.co', 'pbkdf2:sha256:260000$aQJQaLuDNv34GLxK$e1334889d968fa6185097f2b91ceaea16ae2865d419adba79ad7d4f1636156d5', 'dt6qNPYT', '2022-09-27 19:24:38'),
(148, 'Silvia Acosta-jorge de castro', 'Gabriela2005', 'jorgedecastro2005@gmail.com', 'pbkdf2:sha256:260000$C8jNhF80aE11f1HR$cb237a3906210aabf7e88bee7616abee8195687b68859368e06f68a0fc2c027e', '', '2022-09-27 19:24:38'),
(149, 'Jorge Enrique De Castro Escobar', 'Jorgedecastro', 'jorgedecastro2005@gmail.com', 'pbkdf2:sha256:260000$N8wRk1aN2xenhbdB$28c1798c443a1f0fe9b3417dc9485201c4b3bc6429e44b48dd83590a7b524219', '', '2022-09-27 19:24:38'),
(150, 'Alfredo Arellana', 'aarellana', 'aarellana@gmail.com', 'pbkdf2:sha256:260000$MIw6ogewz5I6rPKe$e1388b883092dc5acdcbafceb4f9879783a58317c7f15582f744ee8014964aef', '', '2022-09-27 19:24:38'),
(151, 'Orlando Jose Ropero Anaya', '8486285', 'eljoch01@gmail.com', 'pbkdf2:sha256:260000$unbix56KOd0xfRS4$199fc44561ea0a353b952e3d6d0411e017d2db2a595421a33d9d1aeabf1e0db4', '', '2022-09-27 19:24:38'),
(153, 'Josue David Barros Vengoechea', 'Jbarrosv27', 'josuebarros@kw.com', 'pbkdf2:sha256:260000$jnD8AiyHTAL59gZo$1e4d5985b39e74adb4a0a445b01194914d9f16261e7a03e9348351ba1da18bc0', '', '2022-09-27 19:24:38'),
(154, 'Beatriz González', '50847529', 'gestionhumana@sacsa.com.co', 'pbkdf2:sha256:260000$61585pnksippAbF3$8d2fef27e0099aadced9001894e87e90d60088a10936d53180ca6c97646fcdf8', '', '2022-09-27 19:24:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_user_referred`
--

CREATE TABLE `app_user_referred` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name_user` varchar(211) NOT NULL,
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

INSERT INTO `app_user_referred` (`id`, `project_id`, `user_id`, `name_user`, `creation_date`, `all_names`, `email`, `cellphone`, `signature`, `apartment_type`, `term_cond`) VALUES
(1, 1, 1, 'ANA ARAGON', '0000-00-00 00:00:00', 'JOSE GUILLERMO OTERO', 'jotegri@gmail.com', '72343855', 2, 5, 1),
(2, 1, 2, 'Alfredo Arellana', '0000-00-00 00:00:00', 'Milton Marsiglia', 'miltonmarsiglia@gmail.com', '3173370324', 1, 1, 1),
(3, 1, 2, 'Alfredo Arellana', '0000-00-00 00:00:00', 'Karen Arellana', 'karellana1806@hotmail.com', '3114917701', 1, 1, 1),
(4, 1, 2, 'Alfredo Arellana', '0000-00-00 00:00:00', 'Ricardo Andres Arellana', 'ricardoandresarellana@hotmail.com', '3164971634', 1, 1, 1),
(5, 1, 2, 'Alfredo Arellana', '0000-00-00 00:00:00', 'Hugo Perez', 'huaperez@gmail.com', '14086379948', 1, 1, 1),
(6, 1, 2, 'Alfredo Arellana', '0000-00-00 00:00:00', 'Alfredo Varela', 'alfrevarela@hotmail.com', '3126924898', 2, 4, 1),
(7, 1, 2, 'Alfredo Arellana', '0000-00-00 00:00:00', 'Ada Arellana', 'adaar50@hotmail.com', '3183849938', 1, 1, 1),
(8, 1, 2, 'Alfredo Arellana', '0000-00-00 00:00:00', 'Cristian Meri?o Pua', 'cristian.merino@hotmail.com', '3205128340', 2, 2, 1),
(9, 1, 2, 'Alfredo Arellana', '0000-00-00 00:00:00', 'Julian Humberto Ferro Arellana', 'ju-ferro@uniandes.edu.co', '3002560299', 1, 1, 1),
(10, 1, 3, 'Ana Maria zu?iga', '0000-00-00 00:00:00', 'Maria Monica Hernandez', 'hernandezucros@gmail.com', '3205182186', 2, 5, 1),
(11, 1, 3, 'Ana Maria zu?iga', '0000-00-00 00:00:00', 'Giovanni Novella', 'giovanni.novella@paramopresenta.com', '3186296818', 1, 1, 1),
(12, 1, 3, 'Ana Maria zu?iga', '0000-00-00 00:00:00', 'Julio Camacho', 'julio.camacho@woobsing.com', '3116881375', 1, 1, 1),
(13, 1, 3, 'Ana Maria zu?iga', '0000-00-00 00:00:00', 'Juan Carlos Correa', 'juancarloscorreaescobar@gmail.com', '3157211809', 1, 1, 1),
(14, 1, 3, 'Ana Maria zu?iga', '0000-00-00 00:00:00', 'Antonio Habib', 'ahabib@redsis.com', '3186964127', 1, 1, 1),
(15, 1, 3, 'Ana Maria zu?iga', '0000-00-00 00:00:00', 'Christian Murillo', 'murilloc725@gmail.com', '3183379166', 2, 2, 1),
(16, 1, 3, 'Ana Maria zu?iga', '0000-00-00 00:00:00', 'Julian Gutierrez', 'Juliangutierrez2@gmail.com', '3167108177', 1, 1, 1),
(17, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'federico eckardth', 'jorgedecastro2005@gmail.com', '0', 1, 1, 1),
(18, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'Alfredo de castro', 'jorgedecastro2005@gmail.com', '0', 2, 6, 1),
(19, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'silvia acosta', 'jorgedecastro2005@gmail.com', '0', 2, 6, 1),
(20, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'Guillermo pupo', 'jorgedecastro2005@gmail.com', '0', 2, 6, 1),
(21, 1, 5, 'Gina otero', '0000-00-00 00:00:00', 'Luis castro', 'mail@mai.com', '3006772295', 1, 1, 1),
(22, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'Marlon Herrera', 'Alex Castillo', '0', 1, 1, 1),
(23, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'Elisa guerrero', 'Alex Castillo', '0', 2, 5, 1),
(24, 1, 6, 'German Ignacio Luna Soto', '0000-00-00 00:00:00', 'Nestor Joaquin Taffur Barrios', 'joaquintaffur@icloud.com', '17323576058', 1, 1, 1),
(25, 1, 6, 'German Ignacio Luna Soto', '0000-00-00 00:00:00', 'ubaldo altamar', 'ubaldo.altamar@gmail.com', '3003652378', 1, 1, 1),
(26, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'Nidia otero', 'jorgedecastro2005@gmail.com', '3008053609', 2, 6, 1),
(27, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'Felipe bedoya', 'jorgedecastro2005@gmail.com', '3006508436', 1, 1, 1),
(28, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'Carlos Rozo Nader', 'jorgedecastro2005@gmail.com', '3153295140', 1, 1, 1),
(29, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'Jairo angulo', 'Jorgedecastro2005@gmail.com', '3114186078', 1, 1, 1),
(30, 1, 7, 'Felipe Aroca', '0000-00-00 00:00:00', 'Luis Camilo Palacios', 'luispalacios@me.com', '573102692891', 1, 1, 1),
(31, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'Orlando retamoso', 'jorgedecastro2005@gmail.com', '3103612181', 1, 1, 1),
(32, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'David payares', 'jorgedecastro2005@gmail.com', '17862461242', 1, 1, 1),
(33, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'Marzio del vechio', 'jorhedecastro2005@gmail.com', '3166289053', 1, 1, 1),
(34, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'Luis Felipe Hernandez', 'jorgedecastro2005@gmail.com', '3163121858', 1, 1, 1),
(35, 1, 8, 'Gloria Henao gonzalez ', '0000-00-00 00:00:00', 'Ivan Gomez lee', 'Gerencia@ivandariogomezlee.com', '573164725292', 1, 1, 1),
(36, 1, 9, 'Sebastian Cure Alzamora ', '0000-00-00 00:00:00', 'Farid Cure del Castillo', 'Fcure@arroceradellitoral.com', '3157267766', 2, 6, 1),
(37, 1, 9, 'Sebastian Cure Alzamora ', '0000-00-00 00:00:00', 'Winston javier Cure ', 'Curew@arroceradellitoral.com', '3103544673', 1, 1, 1),
(38, 1, 10, 'Felipe Conto', '0000-00-00 00:00:00', 'Pedro Cobos', 'pjcobos@gmail.com', '3156020558', 2, 5, 1),
(39, 1, 10, 'Felipe Conto', '0000-00-00 00:00:00', 'Carlos Diaz ', 'diazluiscarlos8@hotmail.com', '3183384934', 2, 6, 1),
(40, 1, 8, 'Gloria Henao gonzalez ', '0000-00-00 00:00:00', 'Felipe Rodriguez ', 'feliperodriguezc@me.com', '573005587589', 2, 5, 1),
(41, 1, 11, 'Hans Garces', '0000-00-00 00:00:00', 'Sara Mu?oz', 'saritamunoz89@hotmail.com', '19083576644', 2, 6, 1),
(42, 1, 12, 'Jorge Rubio', '0000-00-00 00:00:00', 'Angela Rubio', 'Angelarubio10@gmail.com', '573022638860', 2, 5, 1),
(43, 1, 12, 'Jorge Rubio', '0000-00-00 00:00:00', 'Margarita Echavarria ', 'Margaraechavarria29@gmail.com', '573012452906', 1, 1, 1),
(44, 1, 8, 'Gloria Henao gonzalez ', '0000-00-00 00:00:00', 'Felipe Rodriguez ', 'feliperodriguezc@me.com', '573005587589', 1, 1, 1),
(45, 1, 13, 'SARA MU?OZ GALEANO', '0000-00-00 00:00:00', 'Cindy Ballestas Sandoval', 'Cindyballestas@hotmail.com', '13016486627', 1, 1, 1),
(46, 1, 14, 'Mike Arenas Murillo ', '0000-00-00 00:00:00', 'Luis Barros ', 'luisvinorico@yahoo.com', '3174424772', 2, 5, 1),
(47, 1, 15, 'Ernesto Ariza', '0000-00-00 00:00:00', 'Roberto solano', 'robertosolanonavarra@hotmail.com', '573106302010', 1, 1, 1),
(48, 1, 16, 'Inversiones IJJ', '0000-00-00 00:00:00', 'Antonio castro', 'acastro@acfcia.com', '320 5423551', 1, 1, 1),
(49, 1, 17, 'Alex lascarro', '0000-00-00 00:00:00', 'Julio Enrique Troncoso Calvo', 'Julio.troncoso@unclic.com.co', '3214535133', 1, 1, 1),
(50, 1, 16, 'Inversiones IJJ', '0000-00-00 00:00:00', 'welfran mendoza', 'Mwelfran@gmail.com', '323 3138338', 1, 1, 1),
(51, 1, 17, 'Alex lascarro', '0000-00-00 00:00:00', 'Nicolas Ortiz', 'nicolasortiz7610@gmail.com', '573125102665', 2, 6, 1),
(52, 1, 15, 'Ernesto Ariza', '0000-00-00 00:00:00', 'Miguel bolivar', 'Mibolivar@hotmail.com', '3215396160', 2, 6, 1),
(53, 1, 15, 'Ernesto Ariza', '0000-00-00 00:00:00', 'Luis Carlos Pertuz ', 'luis_pertuz@hotmail.com', '573126695019', 1, 1, 1),
(54, 1, 18, 'Nathalie torrente ', '0000-00-00 00:00:00', 'Paola londo?o', 'Paola.londos@gmail.com', '3214731427', 1, 1, 1),
(55, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'Jose rodriguez', 'jorgedecastro2005@gmail.com', '3013295230', 2, 6, 1),
(56, 1, 19, 'Jose Rodriguez Locarno', '0000-00-00 00:00:00', 'Oliver Antequera', 'oliverantequera777@gmail.com ', '19545931664', 1, 1, 1),
(57, 1, 10, 'Felipe Conto', '0000-00-00 00:00:00', 'Marcela Ospina', 'marceos_r@hotmail.com', '573016289079', 1, 1, 1),
(58, 1, 20, 'Margarita OByrne', '0000-00-00 00:00:00', 'Valentina Garcia', 'garcia-vale@hotmail.com', '3157212652', 1, 1, 1),
(59, 1, 21, 'Jorge Ivan Cristancho Casta?eda', '0000-00-00 00:00:00', 'Carlos C?sar Cristancho Casta?eda ', 'carlos.cristancho@hotmail.com', '79445571', 2, 5, 1),
(60, 1, 22, 'Dinklab', '0000-00-00 00:00:00', 'Valentina Diaz', 'vdiaz9328@gmail.com', '3112018256', 1, 1, 1),
(61, 1, 22, 'Dinklab', '0000-00-00 00:00:00', 'Andres Felipe anaya giraldo', 'gerencia@agconstructora.com.co', '3106321533', 2, 6, 1),
(62, 1, 22, 'Dinklab', '0000-00-00 00:00:00', 'Arnaldo Jader Del Valle Jassan', 'arnaldo.delvalle@gmail.com', '3008298523', 1, 1, 1),
(63, 1, 8, 'Gloria Henao gonzalez ', '0000-00-00 00:00:00', 'Fabian duarte', 'Fabianvolado76@yahoo.es', '3103616746', 1, 1, 1),
(64, 1, 8, 'Gloria Henao gonzalez ', '0000-00-00 00:00:00', 'Armando fontalvo', 'Armandofontalvo@hotmail.com', '3173755130', 1, 1, 1),
(65, 1, 16, 'Inversiones IJJ', '0000-00-00 00:00:00', 'Ricardo angulo', 'ricardoangulodams@gmail.com', '310 8315035', 1, 1, 1),
(66, 1, 16, 'Inversiones IJJ', '0000-00-00 00:00:00', 'Andrea Albornoz ', 'aalbornozf@outlook.com', '313 8560532', 2, 6, 1),
(67, 1, 23, 'Adolfo Rafael mercado de avila ', '0000-00-00 00:00:00', 'mileidys mercado Martinez  - Antonio Ismael ulloa', 'Ulloa/ c @ icloud.com', '8609408489', 2, 5, 1),
(68, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'marcela barrios', 'jorgedecastro2005@gmail.com', '0', 2, 5, 1),
(69, 1, 24, 'Andres villafanez', '0000-00-00 00:00:00', 'Hernando pe?a', 'hernandojavierpena@hotmail.com', '573007878893', 1, 1, 1),
(70, 1, 27, 'jose otero', '0000-00-00 00:00:00', 'pedro quijano ', 'pedroquijanoplata@gmail.com', '3507969087', 2, 6, 1),
(71, 1, 16, 'Inversiones IJJ', '0000-00-00 00:00:00', 'alejandro cano', 'alecan1123@gmail.com', '15619095454', 1, 1, 1),
(72, 1, 22, 'Dinklab', '0000-00-00 00:00:00', 'Carlos Alberto Olivares Vigles ', 'Olivares.vigles@gmail.com', '3013952546', 2, 6, 1),
(73, 1, 22, 'Dinklab', '0000-00-00 00:00:00', 'Alejandro hage tafache', 'Aht.arquitectura@gmail.com', '3005446475', 2, 5, 1),
(74, 1, 22, 'Dinklab', '0000-00-00 00:00:00', 'Leonardo Serje Morales', 'leoserje@gmail.com', '50671080117', 2, 5, 1),
(75, 1, 22, 'Dinklab', '0000-00-00 00:00:00', 'Sarita duran medina', 'sarita_duran21@hotmail.com', '3017747495', 2, 6, 1),
(76, 1, 22, 'Dinklab', '0000-00-00 00:00:00', 'Orietta hage tafache', 'Aht.arquitectura@gmail.com', '3135237463', 1, 1, 1),
(77, 1, 24, 'Andres villafanez', '0000-00-00 00:00:00', 'Daniela albornoz ', 'Daniela-albornoz@hotmail.com', '320 6804890', 2, 6, 1),
(78, 1, 24, 'Andres villafanez', '0000-00-00 00:00:00', 'Fuad salebe', 'Fuadslb@gmail.com', '573002597933', 1, 1, 1),
(79, 1, 25, 'Johanna Alvarez Navarro', '0000-00-00 00:00:00', 'Alexander Dau', 'daualex@hotmail.com', '3205696976', 2, 5, 1),
(80, 1, 26, 'Jaime Gutierrez ', '0000-00-00 00:00:00', 'Rayber Reyes ', 'Raybercito21@hotmail.com', '3204985880', 2, 2, 1),
(81, 1, 26, 'Jaime Gutierrez ', '0000-00-00 00:00:00', 'Jorge Mario Reyes ', 'Raybercito21@hotmail.com', '17863277139', 2, 3, 1),
(82, 1, 27, 'jose otero', '0000-00-00 00:00:00', 'julian pinzon', 'Gerencia@pinos.com.co', '3113674132', 1, 1, 1),
(83, 1, 28, 'Juan Llinas', '0000-00-00 00:00:00', 'Hector Llinas', 'hector_llinas@hotmail.com', '17865563001', 1, 1, 1),
(84, 1, 29, 'Leonardo David Serje Morales', '0000-00-00 00:00:00', 'Ramon Elias Anaya Artuz', 'ramoneanaya@hotmail.com ', '3005708620', 1, 1, 1),
(85, 1, 30, 'Rayber Reyes', '0000-00-00 00:00:00', 'Ricardo Trujillo ', 'Alfonsoeme@hotmail.com', '573114187319', 1, 1, 1),
(86, 1, 26, 'Jaime Gutierrez ', '0000-00-00 00:00:00', 'Tomas Molina ', 'Rayber21@hotmail.com', '3153783281', 2, 2, 1),
(87, 1, 31, 'Alex dau ', '0000-00-00 00:00:00', 'Moises Fisboim ', 'Moisedgisboim@hotmail.com', '3126601754', 2, 5, 1),
(88, 1, 32, 'ALBERTO CARDONA', '0000-00-00 00:00:00', 'Paul Bolkhovsky', 'Paulandmila@gmail.com', '0', 2, 2, 1),
(89, 1, 19, 'Jose Rodriguez Locarno', '0000-00-00 00:00:00', 'Veronica Vargas ', 'vevaga@hotmail.com ', '300 894-9862', 1, 1, 1),
(90, 1, 23, 'Adolfo Rafael mercado de avila ', '0000-00-00 00:00:00', 'Jose luis caez', 'jlcaez@hotmail.com', '3014478546', 1, 1, 1),
(91, 1, 34, 'ROGELIO ESTEBAN MANTILLA SALCEDO', '0000-00-00 00:00:00', 'ADOLFO RAFAEL PERTUZ PINZON ', 'apertuz02@hotmail.com', '3157216353', 2, 5, 1),
(92, 1, 35, 'Ivan Villazon', '0000-00-00 00:00:00', 'Alfonso Macias', 'monomacias@gmail.com', '3135551098', 1, 1, 1),
(93, 1, 36, 'Jhonatan Gutierrez Sanin', '0000-00-00 00:00:00', 'Conrado Alberto Jaramillo', 'conradojr@icloud.com', '573157106356', 1, 1, 1),
(94, 1, 36, 'Jhonatan Gutierrez Sanin', '0000-00-00 00:00:00', 'Maria Alejandra Gutierrez', 'maria_alejandra_2000@hotmail.com', '17865536900', 1, 1, 1),
(95, 1, 36, 'Jhonatan Gutierrez Sanin', '0000-00-00 00:00:00', 'Hebert Andres Gutierrez', 'agutierrez@controlcase.com', '573006059944', 1, 1, 1),
(96, 1, 33, 'Moises fisboim ', '0000-00-00 00:00:00', 'Jhonatan Gutierrez ', 'jgs1215@icloud.com', '300 2027775', 1, 1, 1),
(97, 1, 37, 'Alfonso cachan ', '0000-00-00 00:00:00', 'Tania bustamante schettini ', 'taniaschettini@gmail.com', '18432613445', 2, 5, 1),
(98, 1, 37, 'Alfonso cachan ', '0000-00-00 00:00:00', 'Mauricio Otalora ', 'No lo tengo ', '3157215250', 1, 1, 1),
(99, 1, 38, 'Mauricio Martinez', '0000-00-00 00:00:00', 'Ruby Hernandez', 'gerencia@agproyectosinmobiliarios.com', '3184721110', 1, 1, 1),
(100, 1, 27, 'jose otero', '0000-00-00 00:00:00', 'Accion activa natural sas', 'Pedroquijanoplata@gmail.com', '3507969087', 2, 6, 1),
(101, 1, 39, 'OMAR CACERES ARROYAVE', '0000-00-00 00:00:00', 'FRANCISCO MELO', 'francisco@me.com', '573174358450', 2, 5, 1),
(102, 1, 40, 'Indira Perez ', '0000-00-00 00:00:00', 'David alvarez ', 'Deap.27@hotmail.com', '3002166651', 2, 5, 1),
(103, 1, 41, 'David alvarez ', '0000-00-00 00:00:00', 'Jaime Sanchez ', 'josanchezc1@yahoo.com', '3017859129', 2, 2, 1),
(104, 1, 36, 'Jhonatan Gutierrez Sanin', '0000-00-00 00:00:00', 'Carlos Gonzales ', 'c_gonzalezb@hotmail.com', '573024281668', 1, 1, 1),
(105, 1, 36, 'Jhonatan Gutierrez Sanin', '0000-00-00 00:00:00', 'Ricardo Bayuelo', 'ricardobayuelo@gmail.com', '573164536545', 1, 1, 1),
(106, 1, 37, 'Alfonso cachan ', '0000-00-00 00:00:00', 'Mauricio Olarte ', 'Molarte@colarquin.com', '573135727792', 1, 1, 1),
(107, 1, 42, 'Nidia Luz Otero Otero', '0000-00-00 00:00:00', 'GUNTER CORINEK', 'nidiaotero@gmail.com', '3008053609', 1, 1, 1),
(108, 1, 33, 'Moises fisboim ', '0000-00-00 00:00:00', 'DAREK BAL', 'darekbal@yahoo.com', '19172880338', 1, 1, 1),
(109, 1, 8, 'Gloria Henao gonzalez ', '0000-00-00 00:00:00', 'Viky restrepo ', 'mrestrep@constructorabolivar.com', '573103046531', 1, 1, 1),
(110, 1, 43, 'Sandra Milena Cujia Rico ', '0000-00-00 00:00:00', 'Mario Andres Huyo Obando ', 'mariohuyo@yahoo.com', '3012412928', 2, 5, 1),
(111, 1, 43, 'Sandra Milena Cujia Rico ', '0000-00-00 00:00:00', 'Diana Cujia', 'dianacu80@hotmail.com', '3203053361', 2, 5, 1),
(112, 1, 44, 'Luis Fernando Aguado Quintero', '0000-00-00 00:00:00', 'Claudia Patricia Aguado Quintero', 'cpaguado@yahoo.com', '300 4391848', 2, 6, 1),
(113, 1, 45, 'Rafael J Florez Macias', '0000-00-00 00:00:00', 'Rafael Florez Janica y Flavia Florez', 'Rafaelflorez@yahoo.com', '3059797434', 2, 5, 1),
(114, 1, 46, 'Jorge Enrique Guarin Barrag?n', '0000-00-00 00:00:00', 'Juan Felipe Piedrahita Amin', 'jfpa86@gmail.com', '3502260342', 1, 1, 1),
(115, 1, 42, 'Nidia Luz Otero Otero', '0000-00-00 00:00:00', 'Lina Diaz', 'Linapad@gmail.com', '3004716486', 2, 6, 1),
(116, 1, 37, 'Alfonso cachan ', '0000-00-00 00:00:00', 'Janet Celin', 'jferreiros@oplcarga.com.co', '573103609801', 1, 1, 1),
(117, 1, 37, 'Alfonso cachan ', '0000-00-00 00:00:00', 'Luis frieri', 'Luis.frieri@cannoncol.com', '573152500267', 1, 1, 1),
(118, 1, 42, 'Nidia Luz Otero Otero', '0000-00-00 00:00:00', 'Diana Carolina David Celefon', 'Dianita.david@ gmail.com', '3157162248', 2, 5, 1),
(119, 1, 37, 'Alfonso cachan ', '0000-00-00 00:00:00', 'Luis frieri', 'Luis.frieri@cannoncol.com', '3152500267', 2, 5, 1),
(120, 1, 47, 'Flavia De Lourdes Macias Lopez', '0000-00-00 00:00:00', 'David Felipe Florez Macias', 'dflorezlaw@outlook.com', '7864367217', 2, 6, 1),
(121, 1, 48, 'Juan Manuel Mendoza', '0000-00-00 00:00:00', 'camila berrio', 'camilaberrio@hotmail.com', '3205224470', 1, 1, 1),
(122, 1, 48, 'Juan Manuel Mendoza', '0000-00-00 00:00:00', 'Carlos Andres Mendoza', 'cmendoza@amtlegal.co', '3103544903', 1, 1, 1),
(123, 1, 49, 'Gustavo Coronado Nieves', '0000-00-00 00:00:00', 'Wilson Rincon', 'wilson.rincon@segurosdelestado.com', '3102481891', 1, 1, 1),
(124, 1, 49, 'Gustavo Coronado Nieves', '0000-00-00 00:00:00', 'Carlos Rojas', 'carlos.rojas@segurosdelestado.com', '3214651580', 1, 1, 1),
(125, 1, 50, 'Victor barros', '0000-00-00 00:00:00', 'Alex vi?as', 'alex@renzo.c?mo.co', '3135041169', 1, 1, 1),
(126, 1, 50, 'Victor barros', '0000-00-00 00:00:00', 'Mauricio barros', 'maubarcas@yahho.com', '3017336507', 1, 1, 1),
(127, 1, 51, 'Gustavo Osorio', '0000-00-00 00:00:00', 'Carlos Martes M', 'carlos.martes@celta.com.co', '3123320017', 1, 1, 1),
(128, 1, 52, 'Wall de colombia SAS', '0000-00-00 00:00:00', 'Sissi Vargas', 'Sissi.Vargas@cannoncol.com', '3117915397', 2, 6, 1),
(129, 1, 27, 'jose otero', '0000-00-00 00:00:00', 'pedro quijano ', 'pedroquijanoplata@gmail.com', '3507969087', 2, 6, 1),
(130, 1, 27, 'jose otero', '0000-00-00 00:00:00', 'Accion activa natural sas', 'Pedroquijanoplata@gmail.com', '3507969087', 2, 6, 1),
(133, 1, 136, 'Leonardo Alberto Wilches Cruz', '0000-00-00 00:00:00', 'Iv?n Montenegro ', 'Ivanfranciscomontenegro@gmail.com', '301 3705713', 1, 1, 1),
(135, 1, 138, 'Ivan Montenegro', '0000-00-00 00:00:00', 'Ivan Recaman', 'ivanrecaman@unifer-sa.com', '3102515998', 1, 1, 1),
(136, 1, 138, 'Ivan Montenegro', '0000-00-00 00:00:00', 'Andr?s Navarro', 'andresnavarrodulcey@gmail.com', '447472690989', 1, 1, 1),
(137, 1, 140, 'JULIAN DE LEON', '0000-00-00 00:00:00', 'ANGELICA ANDON', 'blincol.info@gmail.com', '12404237757', 1, 1, 1),
(138, 1, 142, 'VERONICA DE CASTRO', '0000-00-00 00:00:00', 'Cesar Florez', 'cesar_ivanfl@hotmail.com', '3004924090', 1, 1, 1),
(139, 1, 143, 'MILLER GAMA', '0000-00-00 00:00:00', 'Boris Sanabria - Armando Sanabria ', 'Millergama@hotmail.com', '3004021462', 1, 1, 1),
(140, 1, 8, 'Gloria Henao gonzalez ', '0000-00-00 00:00:00', 'Nassim jam', 'nasimxmorales@gmail.com', '3102358796', 1, 1, 1),
(141, 1, 151, 'Orlando Jose Ropero Anaya', '0000-00-00 00:00:00', 'Helmut Burchardt', 'helmutb@gmail.com', '5491158277963', 1, 1, 1),
(142, 1, 153, 'Josue David Barros Vengoechea', '0000-00-00 00:00:00', 'Sandra Mansur', 'sandramansur15@gmail.com', '2975929144', 1, 1, 1),
(143, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'Vanessa Ruiz', '1@gmail.com', '1', 2, 6, 1),
(144, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'luis angulo', '01@gmail.com', '3114186078', 2, 5, 1),
(145, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'luis angulo', 'manager@solmarineoffshort.com', '3114186078', 2, 6, 1),
(146, 1, 4, 'Jorge de castro- Silvia acosta apto 1109', '0000-00-00 00:00:00', 'Luis Maestre', 'luismiguelmaestre@gmail.com', '3042133726', 2, 6, 1);

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
  ADD KEY `project_id` (`project_id`),
  ADD KEY `name_user` (`name_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `app_projects`
--
ALTER TABLE `app_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT de la tabla `app_user_referred`
--
ALTER TABLE `app_user_referred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
