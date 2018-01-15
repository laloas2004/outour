-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-01-2018 a las 21:42:52
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `outour`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asociados`
--

CREATE TABLE IF NOT EXISTS `asociados` (
`id` int(11) NOT NULL,
  `NombAsoc` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ApeAsoc` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nacimiento` date NOT NULL,
  `cordinador_id` int(11) NOT NULL,
  `numTarjeta` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rol` enum('1','2','3','4') COLLATE utf8_unicode_ci NOT NULL COMMENT '1.- Coordinador, 2.- Vendedor',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `calle` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `colonia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_estado` int(11) NOT NULL,
  `id_pais` int(11) NOT NULL,
  `municipio` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TelFijo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `TelCel` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cp` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `num` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ban_rfc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ban_curp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ban_titular` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ban_banco` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ban_tipo` enum('Debito','Credito','Cheques','') COLLATE utf8_unicode_ci NOT NULL,
  `ban_clabe` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ban_cuenta` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `captura` tinyint(1) NOT NULL DEFAULT '0',
  `confirm_email` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asociados`
--

INSERT INTO `asociados` (`id`, `NombAsoc`, `ApeAsoc`, `nacimiento`, `cordinador_id`, `numTarjeta`, `rol`, `email`, `pass`, `calle`, `colonia`, `id_estado`, `id_pais`, `municipio`, `TelFijo`, `TelCel`, `cp`, `num`, `ban_rfc`, `ban_curp`, `ban_titular`, `ban_banco`, `ban_tipo`, `ban_clabe`, `ban_cuenta`, `captura`, `confirm_email`, `created_at`, `updated_at`) VALUES
(54, 'Jesus Abelardo', 'Acevedo Santos', '1985-01-24', 0, '1000054', '1', 'laloas_2004@yahoo.com.mx', 'abelardo', 'Gonzalitos #829', 'Chapultepec', 19, 1, 'san nicolas de os garza', '8183326461', '824429812', '66450', '66450', 'AESJ850124M9A', 'AESJ850124M9AAAAAA', 'Jesus Abelardo Acevedo Santos', '33333333333333333333', 'Debito', '111111111111111111', '333333333222222', 1, 0, '2016-07-21 15:25:22', '2016-07-22 18:46:10'),
(55, 'Jesus Abelardo', 'Acevedo Santos', '0000-00-00', 0, '2000055', '2', 'abelardo@websiete.com', 'abelardo', '', '', 0, 1, '', '', '', '', '', '', '', '', '', 'Debito', '', '', 0, 0, '2016-07-22 18:21:35', '2016-07-22 18:21:35'),
(56, 'NORA NELLY', 'HERNANDEZ GARZA', '1979-12-19', 0, '1000056', '1', 'nora89707@gmail.com', 'nora2016', 'VENECIA ', 'SANTA LUZ', 19, 1, 'ESCOBEDO', '0000000000', '8118536181', '66070', '150', 'HEGN791219US3', 'HEGN791219MNLRRR06', 'NORA NELLY HERNANDEZ GARZA', 'BANAMEX', 'Debito', '000000000000000000', '0000000000', 1, 0, '2016-07-29 15:32:29', '2016-07-29 15:45:10'),
(57, 'NORA NELLY', 'HERNANDEZ GARZA', '1979-12-19', 1000056, '2000057', '2', 'nora_hdz@hotmail.com', 'nora2016', 'VENECIA', 'SANTA LUZ', 19, 1, 'ESCOBEDO', '00000000', '8118536181', '66070', '150', 'HEGN791219US3', 'HEGN791219MNLRRR06', 'NORA NELLY HERNANDEZ GARZA', 'BANAMEX', 'Debito', '000000000000000', '000000000', 1, 0, '2016-07-29 16:03:38', '2016-07-29 16:06:01'),
(58, 'GABRIEL RICARDO', 'BARRON ALANIS', '1970-02-16', 0, '1000058', '1', 'barron721@gmail.com', 'PESCADELOBINA70', 'AVE. PINOS ', 'RESI.ESCOBEDO', 19, 1, 'ESCOBEDO', '17384300', '8117384300', '66050', '619', 'BAAG700216N41', 'BAAG700216HNLRLB08AV', 'GABRIEL RICARDO BARRON ALANIS', 'banorte', 'Debito', '999999999999999999', '99999999', 1, 0, '2016-07-29 16:52:32', '2016-07-29 16:58:59'),
(59, 'Guillermina', 'Arzola Rodrigue', '0000-00-00', 0, '2000059', '2', 'guillerminarzola@hotmail.com', 'santiago10', '', '', 0, 1, '', '', '', '', '', '', '', '', '', 'Debito', '', '', 0, 0, '2016-07-29 22:04:51', '2016-07-29 22:04:51'),
(60, 'Gabriela Elizabeth', 'Rodríguez González ', '1971-03-15', 0, '1000060', '1', 'gabrielaeli23@yahoo.com', '75217941M', 'San Remo', 'Santa Luz', 19, 1, 'General Escobedo', '20832464', '8119542181', '66070', '134', 'ROGG710315E18', 'ROGG710315MNLMND01', 'Gabriela Elizabeth Rodríguez González ', 'Banamex', 'Debito', '002580701136269312', '7011-3626931', 1, 0, '2016-07-30 16:56:03', '2016-07-30 17:10:24'),
(61, 'Gabriela Elizabeth', 'Rodríguez González ', '1971-03-15', 1000060, '2000061', '2', 'elizabeth_rodriguez007@yahoo.com', '93254170K', 'San Remo', 'Santa Luz', 19, 1, 'General Escobedo', '20832464', '8119542181', '66077', '134', 'ROGG710315E18', 'ROGG710315MNLMND01', 'Gabriela Elizabeth Rodríguez González ', 'Banamex', 'Debito', '002580701136269312', '7011-3626931', 1, 0, '2016-07-30 17:50:44', '2016-07-30 17:57:20'),
(62, 'Manuel Alonso', 'De León Vázquez', '1994-10-30', 1000060, '2000062', '2', 'alovaz.mendoza@hotmail.com', 'Am489263', 'Alfonso G. Calderón ', 'Eduardo Caballero', 19, 1, 'Guadalupe', '21641432', '8124659591', '67117', '315', 'DEVM941030LS1', 'LEVM941030HNLNZN01', 'Manuel Alonso De León Vázquez ', 'Bancopel ', 'Debito', '137580101317243017', '10131724301', 1, 0, '2016-07-30 18:49:32', '2016-07-30 19:17:51'),
(63, 'Luis Fernando', 'Flores Perez', '1965-04-26', 1000060, '2000063', '2', 'luisfloresperez65@hotmail.com', 'chino651', 'Gorrion', 'Golondrinas Sec. San Miguel', 19, 1, 'Apodaca', '20832464', '8111933188', '66649', '213', 'FOPL650426V71', 'FOPL650426HDFLRS06', 'Luis Fernando Flores Perez', 'Banregio', 'Debito', '058580088315300154', '008831530015', 1, 0, '2016-08-01 19:15:16', '2016-08-01 19:37:32'),
(64, 'Santa Lucia', 'Aguilera Corpus', '1962-05-10', 0, '1000064', '1', 'lucy_aguilera10@hotmail.com', 'alfonso85', 'calle 9', 'residencial las puentes 2do. sector', 19, 1, 'san nicolas de los garza', '8183503822', '8182251552', '66460', '41', 'aucs620510xxx', 'aucs620510mnlgrn07', 'SANTA LUCIA AGUILERA CORPUS', 'BANORTE', 'Debito', '999999999999999999', '0639161378', 1, 0, '2016-08-02 16:31:24', '2016-08-02 16:43:23'),
(65, 'santa lucia ', 'Aguilera Corpus', '1962-05-10', 1000064, '2000065', '2', 'lucyaguileracorpus@gmail.com', 'freddy89', 'calle 9', 'residencial las puentes 2do. sector', 19, 1, 'san nicolas de los garza', '8183503822', '8182251552', '66460', '41', 'aucs620510xxx', 'aucs620510mnlgrn07', 'SANTA LUCIA AGUILERA CORPUS', 'BANORTE', 'Debito', '999999999999999999', '0639161378', 1, 0, '2016-08-02 16:55:28', '2016-08-02 17:06:51'),
(66, 'Jesus Abelardo', 'Acevedo Santos', '0000-00-00', 0, '1000066', '1', 'laloas_2004@hotmail.com', 'abelardo', '', '', 0, 1, '', '', '', '', '', '', '', '', '', 'Debito', '', '', 0, 0, '2016-10-31 22:02:27', '2016-10-31 22:02:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boletin`
--

CREATE TABLE IF NOT EXISTS `boletin` (
`id` int(11) NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ubicabole` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
`id` int(11) NOT NULL,
  `NombCateg` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `NombCateg`, `created_at`, `updated_at`) VALUES
(1, 'Acuático', '2016-06-21 00:00:00', NULL),
(2, 'Arqueología', '2016-06-21 00:00:00', NULL),
(3, 'Aventura', '2016-06-21 00:00:00', NULL),
(4, 'Naturaleza', '2016-06-21 00:00:00', NULL),
(5, 'Eco parques', '2016-06-21 00:00:00', NULL),
(6, 'Combos', '2016-06-21 00:00:00', NULL),
(7, 'Vida Nocturna', '2016-06-21 00:00:00', NULL),
(8, 'Transportacíon', '2016-06-21 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE IF NOT EXISTS `ciudades` (
`id` int(11) NOT NULL,
  `IdEstado` int(11) NOT NULL,
  `NombCiud` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configs`
--

CREATE TABLE IF NOT EXISTS `configs` (
`id` int(11) NOT NULL,
  `clave` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `valor` float NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `configs`
--

INSERT INTO `configs` (`id`, `clave`, `valor`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'paypal', 0.03, 'comision de paypal', '2016-07-05 00:00:00', '2016-07-05 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--

CREATE TABLE IF NOT EXISTS `destinos` (
`id` int(11) NOT NULL,
  `NombDest` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Imagen` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `destinos`
--

INSERT INTO `destinos` (`id`, `NombDest`, `Imagen`, `created_at`, `updated_at`) VALUES
(1, 'Cancún', 'cancun.jpg', '2016-06-21 00:00:00', NULL),
(2, 'Playa del Carmen', '', '2016-06-21 00:00:00', NULL),
(3, 'Riviera Maya', '', '2016-06-21 00:00:00', NULL),
(4, 'Isla Mujeres', '', '2016-06-21 00:00:00', NULL),
(5, 'Cozumel', '', '2016-06-21 00:00:00', NULL),
(6, 'Holbox', '', '2016-06-21 00:00:00', NULL),
(7, 'Monterrey', 'monterrey.jpg', '2016-06-21 00:00:00', NULL),
(8, 'Tulum', '', '2016-07-01 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
`id` int(11) NOT NULL,
  `IdPais` int(11) NOT NULL,
  `NombEst` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `IdPais`, `NombEst`, `created_at`, `updated_at`) VALUES
(7, 1, 'Aguascalientes', '0000-00-00 00:00:00', NULL),
(8, 1, 'Baja California', '0000-00-00 00:00:00', NULL),
(9, 1, 'Baja California Sur', '0000-00-00 00:00:00', NULL),
(10, 1, 'Campeche', '0000-00-00 00:00:00', NULL),
(11, 1, 'Chiapas', '0000-00-00 00:00:00', NULL),
(12, 1, 'Chihuahua', '0000-00-00 00:00:00', NULL),
(13, 1, 'Ciudad de México', '0000-00-00 00:00:00', NULL),
(14, 1, 'Coahuila', '0000-00-00 00:00:00', NULL),
(15, 1, 'Colima', '0000-00-00 00:00:00', NULL),
(16, 1, 'Durango', '0000-00-00 00:00:00', NULL),
(17, 1, 'Distrito Federal', '0000-00-00 00:00:00', NULL),
(18, 1, 'Estado de México', '0000-00-00 00:00:00', NULL),
(19, 1, 'Guanajuato', '0000-00-00 00:00:00', NULL),
(20, 1, 'Guerrero', '0000-00-00 00:00:00', NULL),
(21, 1, 'Guerrero', '0000-00-00 00:00:00', NULL),
(22, 1, 'Jalisco', '0000-00-00 00:00:00', NULL),
(23, 1, 'Michoacán', '0000-00-00 00:00:00', NULL),
(24, 1, 'Morelos', '0000-00-00 00:00:00', NULL),
(25, 1, 'Nayarit', '0000-00-00 00:00:00', NULL),
(26, 1, 'Nuevo León', '0000-00-00 00:00:00', NULL),
(27, 1, 'Oaxaca', '0000-00-00 00:00:00', NULL),
(28, 1, 'Puebla', '0000-00-00 00:00:00', NULL),
(29, 1, 'Querétaro', '0000-00-00 00:00:00', NULL),
(30, 1, 'Quintana Roo', '0000-00-00 00:00:00', NULL),
(31, 1, 'San Luis Potosí', '0000-00-00 00:00:00', NULL),
(32, 1, 'Sinaloa', '0000-00-00 00:00:00', NULL),
(33, 1, 'Sonora', '0000-00-00 00:00:00', NULL),
(34, 1, 'Tabasco', '0000-00-00 00:00:00', NULL),
(35, 1, 'Tamaulipas', '0000-00-00 00:00:00', NULL),
(36, 1, 'Tlaxcala', '0000-00-00 00:00:00', NULL),
(37, 1, 'Veracruz', '0000-00-00 00:00:00', NULL),
(38, 1, 'Yucatán', '0000-00-00 00:00:00', NULL),
(39, 1, 'Zacatecas', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_tour`
--

CREATE TABLE IF NOT EXISTS `imagen_tour` (
`id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `UrlImg` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `AltText` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `imagen_tour`
--

INSERT INTO `imagen_tour` (`id`, `tour_id`, `UrlImg`, `thumb`, `AltText`, `created_at`, `updated_at`) VALUES
(1, 2, 'cancun/tour-1.jpg', 'cancun/thumbs/thumb-1.jpg', NULL, '2016-07-01 00:00:00', '2016-07-01 00:00:00'),
(2, 3, 'tour-2.jpg', '', NULL, '2016-07-01 00:00:00', '2016-07-01 00:00:00'),
(3, 2, 'cancun/tour-1-1.jpg', 'cancun/thumbs/thumb-1.jpg', NULL, '2016-07-01 00:00:00', '2016-07-01 00:00:00'),
(4, 2, 'cancun/tour-1-2.jpg', 'cancun/thumbs/thumb-1.jpg', NULL, '2016-07-01 00:00:00', '2016-07-01 00:00:00'),
(5, 2, 'cancun/tour-1-2.jpg', 'cancun/thumbs/thumb-1.jpg', NULL, '2016-07-01 00:00:00', '2016-07-01 00:00:00'),
(6, 2, 'cancun/tour-1-2.jpg', 'cancun/thumbs/thumb-1.jpg', NULL, '2016-07-01 00:00:00', '2016-07-01 00:00:00'),
(7, 5, '/uploads/files/tours/5/1000x900-1469579846-beach-cancun-all-inclusive-vacations-holiday-adults.jpg', '/uploads/files/tours/5/350x235-1469579846-beach-ca', NULL, '2016-07-27 00:38:12', '2016-07-27 00:38:12'),
(8, 5, '/uploads/files/tours/5/1000x900-1469579890-502271_cancun-safest-state-in-country.jpg', '/uploads/files/tours/5/350x235-1469579890-502271_c', NULL, '2016-07-27 00:38:13', '2016-07-27 00:38:13'),
(9, 6, '/uploads/files/tours/6/1000x900-1469580056-502271_cancun-safest-state-in-country.jpg', '/uploads/files/tours/6/350x235-1469580056-502271_cancun-safest-state-in-country.jpg', NULL, '2016-07-27 00:41:07', '2016-07-27 00:41:07'),
(10, 6, '/uploads/files/tours/6/1000x900-1469580060-Fundidora.jpg', '/uploads/files/tours/6/350x235-1469580060-Fundidora.jpg', NULL, '2016-07-27 00:41:08', '2016-07-27 00:41:08'),
(11, 6, '/uploads/files/tours/6/1000x900-1469580065-beach-cancun-all-inclusive-vacations-holiday-adults.jpg', '/uploads/files/tours/6/350x235-1469580065-beach-cancun-all-inclusive-vacations-holiday-adults.jpg', NULL, '2016-07-27 00:41:08', '2016-07-27 00:41:08'),
(12, 7, '/uploads/files/tours/7/1000x900-1469580421-chichen_itza1.jpg', '/uploads/files/tours/7/350x235-1469580421-chichen_itza1.jpg', NULL, '2016-07-27 00:47:33', '2016-07-27 00:47:33'),
(13, 7, '/uploads/files/tours/7/1000x900-1469580426-IMG_3359.jpg', '/uploads/files/tours/7/350x235-1469580426-IMG_3359.jpg', NULL, '2016-07-27 00:47:33', '2016-07-27 00:47:33'),
(14, 8, '/uploads/files/tours/8/1000x900-1469580674-chichen_itza1.jpg', '/uploads/files/tours/8/350x235-1469580674-chichen_itza1.jpg', NULL, '2016-07-27 00:51:33', '2016-07-27 00:51:33'),
(15, 8, '/uploads/files/tours/8/1000x900-1469580674-mexico-2.jpg', '/uploads/files/tours/8/350x235-1469580674-mexico-2.jpg', NULL, '2016-07-27 00:51:33', '2016-07-27 00:51:33'),
(16, 8, '/uploads/files/tours/8/1000x900-1469580675-IMG_3359.jpg', '/uploads/files/tours/8/350x235-1469580675-IMG_3359.jpg', NULL, '2016-07-27 00:51:34', '2016-07-27 00:51:34'),
(17, 9, '/uploads/files/tours/9/1000x900-1469582017-chichen_itza1.jpg', '/uploads/files/tours/9/350x235-1469582017-chichen_itza1.jpg', NULL, '2016-07-27 01:14:24', '2016-07-27 01:14:24'),
(18, 9, '/uploads/files/tours/9/1000x900-1469582018-IMG_3359.jpg', '/uploads/files/tours/9/350x235-1469582018-IMG_3359.jpg', NULL, '2016-07-27 01:14:24', '2016-07-27 01:14:24'),
(19, 9, '/uploads/files/tours/9/1000x900-1469582037-Templo_de_los_Guerreros.jpg', '/uploads/files/tours/9/350x235-1469582037-Templo_de_los_Guerreros.jpg', NULL, '2016-07-27 01:14:25', '2016-07-27 01:14:25'),
(20, 9, '/uploads/files/tours/9/1000x900-1469582061-mexico-2.jpg', '/uploads/files/tours/9/350x235-1469582061-mexico-2.jpg', NULL, '2016-07-27 01:14:25', '2016-07-27 01:14:25'),
(21, 10, '/uploads/files/tours/10/1000x900-1469582592-chichen_itza1.jpg', '/uploads/files/tours/10/350x235-1469582592-chichen_itza1.jpg', NULL, '2016-07-27 01:23:16', '2016-07-27 01:23:16'),
(22, 10, '/uploads/files/tours/10/1000x900-1469582592-mexico-2.jpg', '/uploads/files/tours/10/350x235-1469582592-mexico-2.jpg', NULL, '2016-07-27 01:23:16', '2016-07-27 01:23:16'),
(23, 10, '/uploads/files/tours/10/1000x900-1469582593-large.jpg', '/uploads/files/tours/10/350x235-1469582593-large.jpg', NULL, '2016-07-27 01:23:16', '2016-07-27 01:23:16'),
(24, 10, '/uploads/files/tours/10/1000x900-1469582593-IMG_3359.jpg', '/uploads/files/tours/10/350x235-1469582593-IMG_3359.jpg', NULL, '2016-07-27 01:23:16', '2016-07-27 01:23:16'),
(25, 11, '/uploads/files/tours/11/1000x900-1469583252-05.jpg', '/uploads/files/tours/11/350x235-1469583252-05.jpg', NULL, '2016-07-27 01:34:15', '2016-07-27 01:34:15'),
(26, 11, '/uploads/files/tours/11/1000x900-1469583252-catamaran2.jpg', '/uploads/files/tours/11/350x235-1469583252-catamaran2.jpg', NULL, '2016-07-27 01:34:15', '2016-07-27 01:34:15'),
(27, 11, '/uploads/files/tours/11/1000x900-1469583252-large.jpg', '/uploads/files/tours/11/350x235-1469583252-large.jpg', NULL, '2016-07-27 01:34:16', '2016-07-27 01:34:16'),
(28, 11, '/uploads/files/tours/11/1000x900-1469583252-samba-en-tours-catamaranes-isla-mujeres-e1453990494963.jpg', '/uploads/files/tours/11/350x235-1469583252-samba-en-tours-catamaranes-isla-mujeres-e1453990494963.jpg', NULL, '2016-07-27 01:34:16', '2016-07-27 01:34:16'),
(83, 24, '/uploads/files/tours/24/1000x900-1469736376-PASEO SANTA LUCÍA 2.jpg', '/uploads/files/tours/24/350x235-1469736376-PASEO SANTA LUCÍA 2.jpg', NULL, '2016-07-28 20:07:15', '2016-07-28 20:07:15'),
(84, 24, '/uploads/files/tours/24/1000x900-1469736377-El Paseo NG.jpg', '/uploads/files/tours/24/350x235-1469736377-El Paseo NG.jpg', NULL, '2016-07-28 20:07:15', '2016-07-28 20:07:15'),
(85, 25, '/uploads/files/tours/25/1000x900-1469736944-GRU4.jpg', '/uploads/files/tours/25/350x235-1469736944-GRU4.jpg', NULL, '2016-07-28 20:15:56', '2016-07-28 20:15:56'),
(86, 25, '/uploads/files/tours/25/1000x900-1469736946-Zebras_wallpapers_405 - copia.jpg', '/uploads/files/tours/25/350x235-1469736946-Zebras_wallpapers_405 - copia.jpg', NULL, '2016-07-28 20:15:57', '2016-07-28 20:15:57'),
(87, 25, '/uploads/files/tours/25/1000x900-1469736947-Maravillas_ocultas_1.jpg', '/uploads/files/tours/25/350x235-1469736947-Maravillas_ocultas_1.jpg', NULL, '2016-07-28 20:15:57', '2016-07-28 20:15:57'),
(88, 26, '/uploads/files/tours/26/1000x900-1469737182-Cola de caballo.JPG', '/uploads/files/tours/26/350x235-1469737182-Cola de caballo.JPG', NULL, '2016-07-28 20:19:50', '2016-07-28 20:19:50'),
(89, 26, '/uploads/files/tours/26/1000x900-1469737182-05.jpg', '/uploads/files/tours/26/350x235-1469737182-05.jpg', NULL, '2016-07-28 20:19:50', '2016-07-28 20:19:50'),
(90, 26, '/uploads/files/tours/26/1000x900-1469737182-Bungee.jpg', '/uploads/files/tours/26/350x235-1469737182-Bungee.jpg', NULL, '2016-07-28 20:19:50', '2016-07-28 20:19:50'),
(91, 26, '/uploads/files/tours/26/1000x900-1469737182-2643629.jpg', '/uploads/files/tours/26/350x235-1469737182-2643629.jpg', NULL, '2016-07-28 20:19:51', '2016-07-28 20:19:51'),
(92, 26, '/uploads/files/tours/26/1000x900-1469737184-630882_santiago.jpg', '/uploads/files/tours/26/350x235-1469737184-630882_santiago.jpg', NULL, '2016-07-28 20:19:51', '2016-07-28 20:19:51'),
(99, 29, '/uploads/files/tours/29/-1477938569-cancun-2.jpg', '/uploads/files/tours/29/-1477938569-cancun-2.jpg', NULL, '2016-10-31 18:37:44', '2016-10-31 18:37:44'),
(100, 29, '/uploads/files/tours/29/-1477938603-membresias 1.jpg', '/uploads/files/tours/29/-1477938603-membresias 1.jpg', NULL, '2016-10-31 18:37:46', '2016-10-31 18:37:46'),
(104, 15, '/uploads/files/tours/15/1481623949-Principal.jpg', '/uploads/files/tours/15/1481623949-Principal.jpg', NULL, '2016-12-13 10:12:31', '2016-12-13 10:12:31'),
(105, 15, '/uploads/files/tours/15/1481624037-foto 5.jpg', '/uploads/files/tours/15/1481624037-foto 5.jpg', NULL, '2016-12-13 10:14:01', '2016-12-13 10:14:01'),
(106, 15, '/uploads/files/tours/15/1481624117-foto 4.jpg', '/uploads/files/tours/15/1481624117-foto 4.jpg', NULL, '2016-12-13 10:15:18', '2016-12-13 10:15:18'),
(107, 16, '/uploads/files/tours/16/1481624202-Principal.jpg', '/uploads/files/tours/16/1481624202-Principal.jpg', NULL, '2016-12-13 10:17:14', '2016-12-13 10:17:14'),
(108, 16, '/uploads/files/tours/16/1481624229-foto 4.jpg', '/uploads/files/tours/16/1481624229-foto 4.jpg', NULL, '2016-12-13 10:17:14', '2016-12-13 10:17:14'),
(109, 16, '/uploads/files/tours/16/1481624229-foto 5.jpg', '/uploads/files/tours/16/1481624229-foto 5.jpg', NULL, '2016-12-13 10:17:15', '2016-12-13 10:17:15'),
(110, 18, '/uploads/files/tours/18/1481652006-foto 4.jpg', '/uploads/files/tours/18/1481652006-foto 4.jpg', NULL, '2016-12-13 18:00:11', '2016-12-13 18:00:11'),
(111, 18, '/uploads/files/tours/18/1481652006-foto 3.jpg', '/uploads/files/tours/18/1481652006-foto 3.jpg', NULL, '2016-12-13 18:00:11', '2016-12-13 18:00:11'),
(112, 18, '/uploads/files/tours/18/1481652006-foto 1.JPG', '/uploads/files/tours/18/1481652006-foto 1.JPG', NULL, '2016-12-13 18:00:12', '2016-12-13 18:00:12'),
(113, 18, '/uploads/files/tours/18/1481652006-foto 5.jpg', '/uploads/files/tours/18/1481652006-foto 5.jpg', NULL, '2016-12-13 18:00:12', '2016-12-13 18:00:12'),
(114, 18, '/uploads/files/tours/18/1481652006-foto 2.JPG', '/uploads/files/tours/18/1481652006-foto 2.JPG', NULL, '2016-12-13 18:00:12', '2016-12-13 18:00:12'),
(115, 18, '/uploads/files/tours/18/1481652006-Marzo.JPG', '/uploads/files/tours/18/1481652006-Marzo.JPG', NULL, '2016-12-13 18:00:12', '2016-12-13 18:00:12'),
(116, 21, '/uploads/files/tours/21/1481653060-Catamaran 3.jpg', '/uploads/files/tours/21/1481653060-Catamaran 3.jpg', NULL, '2016-12-13 18:17:43', '2016-12-13 18:17:43'),
(117, 21, '/uploads/files/tours/21/1481653060-Catamaran 2.jpg', '/uploads/files/tours/21/1481653060-Catamaran 2.jpg', NULL, '2016-12-13 18:17:44', '2016-12-13 18:17:44'),
(118, 21, '/uploads/files/tours/21/1481653060-Catamaran 1.jpg', '/uploads/files/tours/21/1481653060-Catamaran 1.jpg', NULL, '2016-12-13 18:17:44', '2016-12-13 18:17:44'),
(119, 21, '/uploads/files/tours/21/1481653060-Catamaran 4.jpg', '/uploads/files/tours/21/1481653060-Catamaran 4.jpg', NULL, '2016-12-13 18:17:44', '2016-12-13 18:17:44'),
(120, 21, '/uploads/files/tours/21/1481653060-Catamaran 5.jpg', '/uploads/files/tours/21/1481653060-Catamaran 5.jpg', NULL, '2016-12-13 18:17:45', '2016-12-13 18:17:45'),
(121, 27, '/uploads/files/tours/27/1481653181-foto 3.jpg', '/uploads/files/tours/27/1481653181-foto 3.jpg', NULL, '2016-12-13 18:19:42', '2016-12-13 18:19:42'),
(122, 27, '/uploads/files/tours/27/1481653181-Cenote 2.JPG', '/uploads/files/tours/27/1481653181-Cenote 2.JPG', NULL, '2016-12-13 18:19:42', '2016-12-13 18:19:42'),
(123, 27, '/uploads/files/tours/27/1481653181-foto 1.jpg', '/uploads/files/tours/27/1481653181-foto 1.jpg', NULL, '2016-12-13 18:19:43', '2016-12-13 18:19:43'),
(124, 27, '/uploads/files/tours/27/1481653181-foto 2.jpg', '/uploads/files/tours/27/1481653181-foto 2.jpg', NULL, '2016-12-13 18:19:43', '2016-12-13 18:19:43'),
(125, 27, '/uploads/files/tours/27/1481653181-Cenote 1.JPG', '/uploads/files/tours/27/1481653181-Cenote 1.JPG', NULL, '2016-12-13 18:19:43', '2016-12-13 18:19:43'),
(126, 19, '/uploads/files/tours/19/1481653321-foto 4.jpg', '/uploads/files/tours/19/1481653321-foto 4.jpg', NULL, '2016-12-13 18:22:06', '2016-12-13 18:22:06'),
(127, 19, '/uploads/files/tours/19/1481653321-Principal.JPG', '/uploads/files/tours/19/1481653321-Principal.JPG', NULL, '2016-12-13 18:22:06', '2016-12-13 18:22:06'),
(128, 19, '/uploads/files/tours/19/1481653321-foto 3.jpg', '/uploads/files/tours/19/1481653321-foto 3.jpg', NULL, '2016-12-13 18:22:06', '2016-12-13 18:22:06'),
(129, 19, '/uploads/files/tours/19/1481653321-Marzo.JPG', '/uploads/files/tours/19/1481653321-Marzo.JPG', NULL, '2016-12-13 18:22:06', '2016-12-13 18:22:06'),
(130, 19, '/uploads/files/tours/19/1481653321-foto 5.jpg', '/uploads/files/tours/19/1481653321-foto 5.jpg', NULL, '2016-12-13 18:22:06', '2016-12-13 18:22:06'),
(131, 22, '/uploads/files/tours/22/1481653509-Snorkel 1.jpg', '/uploads/files/tours/22/1481653509-Snorkel 1.jpg', NULL, '2016-12-13 18:25:11', '2016-12-13 18:25:11'),
(132, 22, '/uploads/files/tours/22/1481653509-Principal.jpg', '/uploads/files/tours/22/1481653509-Principal.jpg', NULL, '2016-12-13 18:25:11', '2016-12-13 18:25:11'),
(133, 22, '/uploads/files/tours/22/1481653509-isla-mujeres-8[1].jpg', '/uploads/files/tours/22/1481653509-isla-mujeres-8[1].jpg', NULL, '2016-12-13 18:25:12', '2016-12-13 18:25:12'),
(134, 22, '/uploads/files/tours/22/1481653509-Snorkel 2.jpg', '/uploads/files/tours/22/1481653509-Snorkel 2.jpg', NULL, '2016-12-13 18:25:12', '2016-12-13 18:25:12'),
(135, 12, '/uploads/files/tours/12/1481653657-Delfines 3.jpg', '/uploads/files/tours/12/1481653657-Delfines 3.jpg', NULL, '2016-12-13 18:27:55', '2016-12-13 18:27:55'),
(136, 12, '/uploads/files/tours/12/1481653657-Delfines 6.jpg', '/uploads/files/tours/12/1481653657-Delfines 6.jpg', NULL, '2016-12-13 18:27:55', '2016-12-13 18:27:55'),
(137, 12, '/uploads/files/tours/12/1481653657-Delfines 2.JPG', '/uploads/files/tours/12/1481653657-Delfines 2.JPG', NULL, '2016-12-13 18:27:55', '2016-12-13 18:27:55'),
(138, 12, '/uploads/files/tours/12/1481653657-Delfines 4.jpg', '/uploads/files/tours/12/1481653657-Delfines 4.jpg', NULL, '2016-12-13 18:27:55', '2016-12-13 18:27:55'),
(140, 13, '/uploads/files/tours/13/1481653776-Delfines 6.jpg', '/uploads/files/tours/13/1481653776-Delfines 6.jpg', NULL, '2016-12-13 18:29:39', '2016-12-13 18:29:39'),
(141, 13, '/uploads/files/tours/13/1481653776-Delfines 5.jpg', '/uploads/files/tours/13/1481653776-Delfines 5.jpg', NULL, '2016-12-13 18:29:40', '2016-12-13 18:29:40'),
(142, 13, '/uploads/files/tours/13/1481653776-Delfines1.jpg', '/uploads/files/tours/13/1481653776-Delfines1.jpg', NULL, '2016-12-13 18:29:40', '2016-12-13 18:29:40'),
(143, 13, '/uploads/files/tours/13/1481653776-Delfines 4.jpg', '/uploads/files/tours/13/1481653776-Delfines 4.jpg', NULL, '2016-12-13 18:29:40', '2016-12-13 18:29:40'),
(144, 13, '/uploads/files/tours/13/1481653776-Principal.jpg', '/uploads/files/tours/13/1481653776-Principal.jpg', NULL, '2016-12-13 18:29:42', '2016-12-13 18:29:42'),
(145, 14, '/uploads/files/tours/14/1481653903-Delfines 4.jpg', '/uploads/files/tours/14/1481653903-Delfines 4.jpg', NULL, '2016-12-13 18:31:55', '2016-12-13 18:31:55'),
(146, 14, '/uploads/files/tours/14/1481653903-Delfines 6.jpg', '/uploads/files/tours/14/1481653903-Delfines 6.jpg', NULL, '2016-12-13 18:31:55', '2016-12-13 18:31:55'),
(147, 14, '/uploads/files/tours/14/1481653903-Delfines 3.jpg', '/uploads/files/tours/14/1481653903-Delfines 3.jpg', NULL, '2016-12-13 18:31:55', '2016-12-13 18:31:55'),
(148, 14, '/uploads/files/tours/14/1481653903-Delfines1.jpg', '/uploads/files/tours/14/1481653903-Delfines1.jpg', NULL, '2016-12-13 18:31:55', '2016-12-13 18:31:55'),
(149, 14, '/uploads/files/tours/14/1481653903-Delfines 5.jpg', '/uploads/files/tours/14/1481653903-Delfines 5.jpg', NULL, '2016-12-13 18:31:56', '2016-12-13 18:31:56'),
(150, 17, '/uploads/files/tours/17/1481654146-Principal.jpg', '/uploads/files/tours/17/1481654146-Principal.jpg', NULL, '2016-12-13 18:35:48', '2016-12-13 18:35:48'),
(151, 17, '/uploads/files/tours/17/1481654146-foto 4.jpg', '/uploads/files/tours/17/1481654146-foto 4.jpg', NULL, '2016-12-13 18:35:49', '2016-12-13 18:35:49'),
(152, 17, '/uploads/files/tours/17/1481654146-foto 5.jpg', '/uploads/files/tours/17/1481654146-foto 5.jpg', NULL, '2016-12-13 18:35:49', '2016-12-13 18:35:49'),
(153, 20, '/uploads/files/tours/20/1481654303-Principal.JPG', '/uploads/files/tours/20/1481654303-Principal.JPG', NULL, '2016-12-13 18:38:26', '2016-12-13 18:38:26'),
(154, 20, '/uploads/files/tours/20/1481654303-foto 2.JPG', '/uploads/files/tours/20/1481654303-foto 2.JPG', NULL, '2016-12-13 18:38:26', '2016-12-13 18:38:26'),
(155, 20, '/uploads/files/tours/20/1481654303-foto 1.JPG', '/uploads/files/tours/20/1481654303-foto 1.JPG', NULL, '2016-12-13 18:38:27', '2016-12-13 18:38:27'),
(156, 20, '/uploads/files/tours/20/1481654303-foto 3.jpg', '/uploads/files/tours/20/1481654303-foto 3.jpg', NULL, '2016-12-13 18:38:27', '2016-12-13 18:38:27'),
(157, 20, '/uploads/files/tours/20/1481654303-Cenote 2.JPG', '/uploads/files/tours/20/1481654303-Cenote 2.JPG', NULL, '2016-12-13 18:38:27', '2016-12-13 18:38:27'),
(158, 23, '/uploads/files/tours/23/1481657517-Catamaran 1.jpg', '/uploads/files/tours/23/1481657517-Catamaran 1.jpg', NULL, '2016-12-13 19:32:01', '2016-12-13 19:32:01'),
(159, 23, '/uploads/files/tours/23/1481657517-Catamaran 3.jpg', '/uploads/files/tours/23/1481657517-Catamaran 3.jpg', NULL, '2016-12-13 19:32:01', '2016-12-13 19:32:01'),
(160, 23, '/uploads/files/tours/23/1481657517-Catamaran 5.jpg', '/uploads/files/tours/23/1481657517-Catamaran 5.jpg', NULL, '2016-12-13 19:32:01', '2016-12-13 19:32:01'),
(161, 23, '/uploads/files/tours/23/1481657517-Catamaran 4.jpg', '/uploads/files/tours/23/1481657517-Catamaran 4.jpg', NULL, '2016-12-13 19:32:02', '2016-12-13 19:32:02'),
(162, 23, '/uploads/files/tours/23/1481657518-Catamaran 2.jpg', '/uploads/files/tours/23/1481657518-Catamaran 2.jpg', NULL, '2016-12-13 19:32:02', '2016-12-13 19:32:02'),
(163, 16, '/uploads/files/tours/16/1481661878-Catamaran 5.jpg', '/uploads/files/tours/16/1481661878-Catamaran 5.jpg', NULL, '2016-12-13 20:44:40', '2016-12-13 20:44:40'),
(164, 12, '/uploads/files/tours/12/1481663377-Catamaran 5.jpg', '/uploads/files/tours/12/1481663377-Catamaran 5.jpg', NULL, '2016-12-13 21:09:40', '2016-12-13 21:09:40'),
(165, 30, '/uploads/files/tours/30/1482258749-la foto 2.JPG', '/uploads/files/tours/30/1482258749-la foto 2.JPG', NULL, '2016-12-20 18:59:25', '2016-12-20 18:59:25'),
(166, 30, '/uploads/files/tours/30/1482258749-la foto 5.JPG', '/uploads/files/tours/30/1482258749-la foto 5.JPG', NULL, '2016-12-20 18:59:25', '2016-12-20 18:59:25'),
(167, 30, '/uploads/files/tours/30/1482258749-la foto 4.JPG', '/uploads/files/tours/30/1482258749-la foto 4.JPG', NULL, '2016-12-20 18:59:25', '2016-12-20 18:59:25'),
(168, 30, '/uploads/files/tours/30/1482258749-la foto 3.JPG', '/uploads/files/tours/30/1482258749-la foto 3.JPG', NULL, '2016-12-20 18:59:25', '2016-12-20 18:59:25'),
(169, 30, '/uploads/files/tours/30/1482258749-la foto 6.JPG', '/uploads/files/tours/30/1482258749-la foto 6.JPG', NULL, '2016-12-20 18:59:25', '2016-12-20 18:59:25'),
(170, 33, '/uploads/files/tours/33/1482260848-la foto 2.JPG', '/uploads/files/tours/33/1482260848-la foto 2.JPG', NULL, '2016-12-20 19:08:38', '2016-12-20 19:08:38'),
(171, 33, '/uploads/files/tours/33/1482260848-la foto 1.JPG', '/uploads/files/tours/33/1482260848-la foto 1.JPG', NULL, '2016-12-20 19:08:38', '2016-12-20 19:08:38'),
(172, 33, '/uploads/files/tours/33/1482260848-la foto 4.JPG', '/uploads/files/tours/33/1482260848-la foto 4.JPG', NULL, '2016-12-20 19:08:38', '2016-12-20 19:08:38'),
(173, 33, '/uploads/files/tours/33/1482260848-la foto 3.JPG', '/uploads/files/tours/33/1482260848-la foto 3.JPG', NULL, '2016-12-20 19:08:38', '2016-12-20 19:08:38'),
(174, 32, '/uploads/files/tours/32/1482260965-la foto 1.JPG', '/uploads/files/tours/32/1482260965-la foto 1.JPG', NULL, '2016-12-20 19:09:27', '2016-12-20 19:09:27'),
(175, 32, '/uploads/files/tours/32/1482260965-la foto 2.JPG', '/uploads/files/tours/32/1482260965-la foto 2.JPG', NULL, '2016-12-20 19:09:27', '2016-12-20 19:09:27'),
(176, 32, '/uploads/files/tours/32/1482260965-la foto 3.JPG', '/uploads/files/tours/32/1482260965-la foto 3.JPG', NULL, '2016-12-20 19:09:27', '2016-12-20 19:09:27'),
(177, 32, '/uploads/files/tours/32/1482260965-la foto 4.JPG', '/uploads/files/tours/32/1482260965-la foto 4.JPG', NULL, '2016-12-20 19:09:27', '2016-12-20 19:09:27'),
(178, 34, '/uploads/files/tours/34/1482261991-4.JPG', '/uploads/files/tours/34/1482261991-4.JPG', NULL, '2016-12-20 19:26:33', '2016-12-20 19:26:33'),
(179, 34, '/uploads/files/tours/34/1482261991-5.JPG', '/uploads/files/tours/34/1482261991-5.JPG', NULL, '2016-12-20 19:26:33', '2016-12-20 19:26:33'),
(180, 34, '/uploads/files/tours/34/1482261991-2.JPG', '/uploads/files/tours/34/1482261991-2.JPG', NULL, '2016-12-20 19:26:33', '2016-12-20 19:26:33'),
(181, 34, '/uploads/files/tours/34/1482261991-3.JPG', '/uploads/files/tours/34/1482261991-3.JPG', NULL, '2016-12-20 19:26:33', '2016-12-20 19:26:33'),
(182, 34, '/uploads/files/tours/34/1482261991-1.JPG', '/uploads/files/tours/34/1482261991-1.JPG', NULL, '2016-12-20 19:26:33', '2016-12-20 19:26:33'),
(183, 35, '/uploads/files/tours/35/1482262171-Foto Principal.jpg', '/uploads/files/tours/35/1482262171-Foto Principal.jpg', NULL, '2016-12-20 19:34:12', '2016-12-20 19:34:12'),
(184, 35, '/uploads/files/tours/35/1482262171-la foto 3.JPG', '/uploads/files/tours/35/1482262171-la foto 3.JPG', NULL, '2016-12-20 19:34:12', '2016-12-20 19:34:12'),
(185, 35, '/uploads/files/tours/35/1482262172-la foto 1.JPG', '/uploads/files/tours/35/1482262172-la foto 1.JPG', NULL, '2016-12-20 19:34:12', '2016-12-20 19:34:12'),
(186, 35, '/uploads/files/tours/35/1482262172-la foto 2.JPG', '/uploads/files/tours/35/1482262172-la foto 2.JPG', NULL, '2016-12-20 19:34:12', '2016-12-20 19:34:12'),
(187, 35, '/uploads/files/tours/35/1482262172-la foto 5.JPG', '/uploads/files/tours/35/1482262172-la foto 5.JPG', NULL, '2016-12-20 19:34:12', '2016-12-20 19:34:12'),
(188, 36, '/uploads/files/tours/36/1482263068-7.jpg', '/uploads/files/tours/36/1482263068-7.jpg', NULL, '2016-12-20 19:44:34', '2016-12-20 19:44:34'),
(189, 36, '/uploads/files/tours/36/1482263068-9.jpg', '/uploads/files/tours/36/1482263068-9.jpg', NULL, '2016-12-20 19:44:35', '2016-12-20 19:44:35'),
(190, 36, '/uploads/files/tours/36/1482263068-8.jpg', '/uploads/files/tours/36/1482263068-8.jpg', NULL, '2016-12-20 19:44:35', '2016-12-20 19:44:35'),
(191, 36, '/uploads/files/tours/36/1482263068-6.jpg', '/uploads/files/tours/36/1482263068-6.jpg', NULL, '2016-12-20 19:44:35', '2016-12-20 19:44:35'),
(192, 36, '/uploads/files/tours/36/1482263068-10.jpg', '/uploads/files/tours/36/1482263068-10.jpg', NULL, '2016-12-20 19:44:36', '2016-12-20 19:44:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE IF NOT EXISTS `membresias` (
`id` int(11) NOT NULL,
  `NombMemb` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PrecioMemb` float NOT NULL,
  `PrecioPromo` float NOT NULL,
  `vigencia` int(11) NOT NULL,
  `cantMiembr` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `NombMemb`, `PrecioMemb`, `PrecioPromo`, `vigencia`, `cantMiembr`, `created_at`, `updated_at`) VALUES
(1, 'Membresia Clasica', 100, 50, 1, 6, '2016-07-06 00:00:00', '2016-07-06 00:00:00'),
(2, 'Membresia Black', 200, 100, 5, 8, '2016-07-06 00:00:00', '2016-07-06 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedas`
--

CREATE TABLE IF NOT EXISTS `monedas` (
`id` int(11) NOT NULL,
  `NombMon` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CodigoMon` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `TipoCambio` float NOT NULL DEFAULT '0',
  `Activo` tinyint(1) NOT NULL DEFAULT '0',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `monedas`
--

INSERT INTO `monedas` (`id`, `NombMon`, `CodigoMon`, `TipoCambio`, `Activo`, `default`, `created_at`, `updated_at`) VALUES
(1, 'Pesos Mex', 'MXN', 18.9, 1, 0, '2016-06-21 00:00:00', NULL),
(3, 'Dollar USA', 'USD', 1, 1, 1, '2016-06-21 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operadores`
--

CREATE TABLE IF NOT EXISTS `operadores` (
`id` int(11) NOT NULL,
  `NombOper` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE IF NOT EXISTS `pagos` (
`id` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `idVentaMebre` int(11) DEFAULT NULL,
  `IdRefePago` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CantPago` int(11) NOT NULL,
  `PayerStatus` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PayerEmail` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PayerId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `IdUser`, `idVentaMebre`, `IdRefePago`, `CantPago`, `PayerStatus`, `PayerEmail`, `PayerId`, `created_at`, `updated_at`) VALUES
(22, 65, NULL, 'PAY-69V47160VU7641130K6B7RGQ', 1800, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-07-11 20:00:18', '2016-07-11 20:00:18'),
(23, 71, NULL, 'PAY-510524518X690811YK6CAHTY', 900, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-07-11 20:39:38', '2016-07-11 20:39:38'),
(24, 72, NULL, 'PAY-2U2171915M2775445K6CAIRI', 1800, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-07-11 20:41:24', '2016-07-11 20:41:24'),
(25, 73, NULL, 'PAY-34942739TK7367401K6CATYA', 900, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-07-11 21:05:42', '2016-07-11 21:05:42'),
(26, 74, NULL, 'PAY-1JX47386VC849714EK6EUKGY', 1800, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-07-15 20:19:27', '2016-07-15 20:19:27'),
(27, 75, NULL, 'PAY-0XT905978K9720238K6GQWOY', 900, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-07-18 17:01:35', '2016-07-18 17:01:35'),
(28, 77, NULL, 'PAY-8XB28412SA919763HK6H3MRY', 1854, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-07-20 17:35:56', '2016-07-20 17:35:56'),
(29, 77, NULL, 'PAY-4D40570992487910DK6QXX7Q', 185, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-03 05:07:29', '2016-08-03 05:07:29'),
(30, 77, NULL, 'PAY-18H8872531859601CK6QXZQA', 185, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-03 05:10:44', '2016-08-03 05:10:44'),
(31, 77, NULL, 'PAY-8UX343400S965041AK6QX3WQ', 185, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-03 05:15:38', '2016-08-03 05:15:38'),
(32, 77, NULL, 'PAY-10P79248JR705253VK6QX42I', 185, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-03 05:18:44', '2016-08-03 05:18:44'),
(33, 77, NULL, 'PAY-33E36495VT7404540K6RCSJY', 185, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-03 17:26:39', '2016-08-03 17:26:39'),
(34, 77, NULL, 'PAY-3RV3258972009542PK6RCWSI', 927, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-03 17:35:34', '2016-08-03 17:35:34'),
(35, 77, NULL, 'PAY-8J882178FC503234XK6RCYVA', 927, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-03 17:40:49', '2016-08-03 17:40:49'),
(36, 77, NULL, 'PAY-4SV50842WL328000PK6RDM2A', 927, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-03 18:23:41', '2016-08-03 18:23:41'),
(37, 77, NULL, 'PAY-3G512156CS5955915K6RD7RA', 927, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-03 19:03:19', '2016-08-03 19:03:19'),
(38, 77, NULL, 'PAY-5Y483345JN271071NK6REEBI', 927, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-03 19:13:01', '2016-08-03 19:13:01'),
(39, 77, NULL, 'PAY-4NG820739T542683PK6R4QFI', 927, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-04 22:56:53', '2016-08-04 22:56:53'),
(40, 77, NULL, 'PAY-22B93756M9257981NK6R4YQA', 927, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-04 23:14:39', '2016-08-04 23:14:39'),
(41, 77, NULL, 'PAY-2JB231331T163420UK6R44IA', 927, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-04 23:22:39', '2016-08-04 23:22:39'),
(42, 77, NULL, 'PAY-0BR75824J44647625K6R5C2Q', 927, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-04 23:42:34', '2016-08-04 23:42:34'),
(43, 77, NULL, 'PAY-1C396219GD115661JK6R6D4Y', 927, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-05 00:48:31', '2016-08-05 00:48:31'),
(44, 77, NULL, 'PAY-3MR03156P74225705K6R6JWQ', 927, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-05 00:59:31', '2016-08-05 00:59:31'),
(45, 77, NULL, 'PAY-0XH23116NL428292TK6UPAAQ', 927, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-08 20:49:16', '2016-08-08 20:49:16'),
(46, 77, NULL, 'PAY-2J894920818540624K6VAGRA', 185, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-09 16:25:46', '2016-08-09 16:25:46'),
(47, 77, NULL, 'PAY-5MG25683FX089032LK6VEXSA', 37, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-09 21:32:14', '2016-08-09 21:32:14'),
(48, 77, NULL, 'PAY-37S98851GA7745901K6VZLMA', 185, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-10 20:59:50', '2016-08-10 20:59:50'),
(49, 77, NULL, 'PAY-9WA0338450824831PK6VZVZY', 185, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-10 21:22:21', '2016-08-10 21:22:21'),
(50, 77, NULL, 'PAY-4H700241H1438992UK6WJ6HI', 1168, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-11 15:54:44', '2016-08-11 15:54:44'),
(51, 77, NULL, 'PAY-00651687YS2605441K6WKBKA', 779, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-11 15:58:59', '2016-08-11 15:58:59'),
(52, 77, NULL, 'PAY-8X3350720U6488218K6WLWOA', 195, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-11 17:53:16', '2016-08-11 17:53:16'),
(53, 77, NULL, 'PAY-51X71954RV242622VK6WMLQA', 1168, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-11 18:37:44', '2016-08-11 18:37:44'),
(54, 77, NULL, 'PAY-2P19513136072140CK7CFQAI', 389, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-08-29 15:43:34', '2016-08-29 15:43:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE IF NOT EXISTS `paises` (
`id` int(11) NOT NULL,
  `NombPais` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CodPais` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `NombPais`, `CodPais`, `created_at`, `updated_at`) VALUES
(1, 'MEXICO', 'MX', '2016-06-21 00:00:00', '2016-06-21 00:00:00'),
(2, 'CANADA ', 'CAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'ESTADOS UNIDOS', 'EU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'OTROS', 'OTR', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `refeasociados`
--

CREATE TABLE IF NOT EXISTS `refeasociados` (
`id` int(11) NOT NULL,
  `IdAsociado` int(11) NOT NULL,
  `DireIp` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Referer` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE IF NOT EXISTS `socios` (
`id` int(11) NOT NULL,
  `NombSocio` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ApeSocio` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TelSocio` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TelCelSocio` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SexSocio` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `FechNacSocio` date NOT NULL,
  `IdPais` int(11) NOT NULL,
  `IdEstado` int(11) NOT NULL,
  `IdCiudad` int(11) NOT NULL,
  `IdAsociado` int(11) DEFAULT NULL,
  `IdUsuario` int(11) unsigned NOT NULL,
  `IdTipoMembr` int(11) NOT NULL,
  `numTarjeta` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `capturado` tinyint(1) NOT NULL DEFAULT '0',
  `pagado` tinyint(1) NOT NULL DEFAULT '0',
  `FechVigSoc` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`id`, `NombSocio`, `ApeSocio`, `TelSocio`, `TelCelSocio`, `SexSocio`, `FechNacSocio`, `IdPais`, `IdEstado`, `IdCiudad`, `IdAsociado`, `IdUsuario`, `IdTipoMembr`, `numTarjeta`, `capturado`, `pagado`, `FechVigSoc`, `created_at`, `updated_at`) VALUES
(70, 'Jesus Abelardo Acevedo Santos', '', '044444444', '8183326461', 'F', '1985-01-24', 1, 0, 0, 51, 77, 2, '2 618804 123352 77', 1, 1, '2021-07-20', '2016-07-20 17:35:31', '2016-07-20 23:19:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sociosadicionales`
--

CREATE TABLE IF NOT EXISTS `sociosadicionales` (
`id` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `NombSocAdi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ApeSocAdi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `EdadSocAdi` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sociosadicionales`
--

INSERT INTO `sociosadicionales` (`id`, `IdUser`, `NombSocAdi`, `ApeSocAdi`, `EdadSocAdi`, `created_at`, `updated_at`) VALUES
(15, 73, 'socio uno', '', 15, '2016-07-11 23:25:08', '2016-07-11 23:25:08'),
(16, 73, 'socio 2', '', 17, '2016-07-11 23:25:08', '2016-07-11 23:25:08'),
(17, 73, 'socio 3', '', 18, '2016-07-11 23:25:09', '2016-07-11 23:25:09'),
(18, 73, 'socio 4', '', 20, '2016-07-11 23:25:09', '2016-07-11 23:25:09'),
(19, 73, 'socio 5', '', 30, '2016-07-11 23:25:09', '2016-07-11 23:29:00'),
(20, 73, 'socio 6', '', 0, '2016-07-11 23:25:09', '2016-07-11 23:29:00'),
(21, 75, 'un socio', '', 10, '2016-07-18 17:02:44', '2016-07-18 17:02:44'),
(22, 75, 'dos socio', '', 12, '2016-07-18 17:02:44', '2016-07-18 17:02:44'),
(23, 75, 'tres socio', '', 14, '2016-07-18 17:02:44', '2016-07-18 17:02:44'),
(24, 75, 'cuarto socio', '', 15, '2016-07-18 17:02:44', '2016-07-18 17:02:44'),
(25, 75, 'quinto socio', '', 17, '2016-07-18 17:02:44', '2016-07-18 17:02:44'),
(26, 75, 'sexto socio', '', 18, '2016-07-18 17:02:44', '2016-07-18 17:02:44'),
(27, 77, '', '', 0, '2016-07-20 21:56:47', '2016-07-20 21:56:47'),
(28, 77, '', '', 0, '2016-07-20 21:56:47', '2016-07-20 21:56:47'),
(29, 77, '', '', 0, '2016-07-20 21:56:47', '2016-07-20 21:56:47'),
(30, 77, '', '', 0, '2016-07-20 21:56:47', '2016-07-20 21:56:47'),
(31, 77, '', '', 0, '2016-07-20 21:56:47', '2016-07-20 21:56:47'),
(32, 77, '', '', 0, '2016-07-20 21:56:47', '2016-07-20 21:56:47'),
(33, 77, '', '', 0, '2016-07-20 21:56:47', '2016-07-20 21:56:47'),
(34, 77, '', '', 0, '2016-07-20 21:56:47', '2016-07-20 21:56:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tours`
--

CREATE TABLE IF NOT EXISTS `tours` (
`id` int(11) NOT NULL,
  `NombTour` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PrecTour` decimal(10,0) NOT NULL,
  `PrecTourDesc` decimal(10,0) NOT NULL,
  `PrecioMenor` decimal(10,0) DEFAULT NULL,
  `PrecioMenorDesc` decimal(10,0) DEFAULT NULL,
  `AnticipoAdulto` decimal(10,0) NOT NULL,
  `AnticipoMenor` decimal(10,0) NOT NULL,
  `BalanceAdulto` decimal(10,0) NOT NULL,
  `BalanceMenor` decimal(10,0) NOT NULL,
  `DescripTour` text COLLATE utf8_unicode_ci NOT NULL,
  `ResuDescTour` text COLLATE utf8_unicode_ci,
  `RecomenTour` text COLLATE utf8_unicode_ci,
  `Incluye` text COLLATE utf8_unicode_ci,
  `InfoAdicio` text COLLATE utf8_unicode_ci,
  `NoIncluye` text COLLATE utf8_unicode_ci,
  `Horario` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Duracion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visitas` int(11) DEFAULT NULL,
  `cantVentas` int(11) DEFAULT NULL,
  `IdTransporte` int(11) DEFAULT NULL,
  `IdOperador` int(11) DEFAULT NULL,
  `horaPickUp` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NumPersTour` int(11) DEFAULT NULL,
  `IdDest` int(11) NOT NULL,
  `idCateg` int(11) NOT NULL,
  `ActivoTour` tinyint(1) NOT NULL DEFAULT '0',
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tours`
--

INSERT INTO `tours` (`id`, `NombTour`, `PrecTour`, `PrecTourDesc`, `PrecioMenor`, `PrecioMenorDesc`, `AnticipoAdulto`, `AnticipoMenor`, `BalanceAdulto`, `BalanceMenor`, `DescripTour`, `ResuDescTour`, `RecomenTour`, `Incluye`, `InfoAdicio`, `NoIncluye`, `Horario`, `Duracion`, `visitas`, `cantVentas`, `IdTransporte`, `IdOperador`, `horaPickUp`, `NumPersTour`, `IdDest`, `idCateg`, `ActivoTour`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(12, 'NADO CON DELFINES', '180', '105', '105', '105', '10', '10', '95', '95', '<p style="text-align: justify;">Nadar con los Tiburones Ballena en Canc&uacute;n, es una de las mejores experiencias que podr&aacute;s vivir, ya que esto cambiar&aacute; tu manera de ver a la naturaleza para siempre, considerando que tendr&aacute;s la oportunidad de ver y nadar con el pez m&aacute;s grande del mundo ya que su tama&ntilde;o es de aproximadamente 12 metros de largo y un peso de 20 toneladas. En los &uacute;ltimos a&ntilde;os se ha incrementado el inter&eacute;s por los viajeros a realizar esta actividad, ya que esta actividad no representa ning&uacute;n riesgo para ti, pues esta belleza de animal se alimenta mediante filtraci&oacute;n de agua fitoplancton, algas y peque&ntilde;os cangrejos, calamares, cangrejos y at&uacute;n. &nbsp;Qu&eacute; esperas ven y vive una de las actividades que cambiara tu forma de ver la naturaleza.</p>', '<p style="text-align: justify;">El nado con Los Tiburones Ballena, es una de las actividades m&aacute;s esperadas por los viajantes de Canc&uacute;n y la Riviera Maya, ya que esta es una de las especies m&aacute;s amigables que existen y m&aacute;s impresionantes por su tama&ntilde;o ...</p>', '<ul><li style="text-align: justify;">Evita cargar mochilas o bolsas pesadas o voluminosas.</li><li style="text-align: justify;">Viste ropa y calzado c&oacute;modos, as&iacute; como lentes de sol y gorra.</li><li style="text-align: justify;">Trae una toalla y traje de ba&ntilde;o, adem&aacute;s de c&aacute;mara sumergible.</li><li style="text-align: justify;">El protector solar que uses deber&aacute; ser 100 % biodegradable.</li><li style="text-align: justify;">Trae contigo algo de efectivo y una tarjeta de d&eacute;bito o cr&eacute;dito para gastos no previstos, en caso de que requieras dejar un deposito por el uso de alg&uacute;n equipo, o para pagar productos o servicios no contemplados en el tour.</li><li style="text-align: justify;">Si padeces de alg&uacute;n problema de salud o impedimento f&iacute;sico, por favor cont&aacute;ctenos antes de reservar para que podamos asesorarte al respecto.</li><li style="text-align: justify;">En caso de cualquier duda o pregunta, favor de comunicarte con nosotros.</li></ul>', '<p>&bull;Transportaci&oacute;n terrestre desde tu hotel (o punto de encuentro, para ciertos hoteles) y de vuelta.</p><p>&bull;Transportaci&oacute;n mar&iacute;tima hasta el punto donde son avistados los tiburones ballena para nadar con ellos y de vuelta</p><p>&bull;Gu&iacute;a biling&uuml;e.</p><p>&bull;Desayuno Ligero.</p><p>&bull;Comida.</p><p>&bull;Agua embotellada y refrescos.</p><p>&bull;Cerveza (despu&eacute;s de haber hecho el snorkel con el Tibur&oacute;n Ballena)</p><p>&bull;Uso de tubo de Snorkel.</p><p>&bull;Visor.</p><p>&bull;Aletas.</p><p>&bull;Chaleco Salvavidas.</p><p><br></p>', '<p style="text-align: justify;">Favor de verificar la hora exacta de tu transportaci&oacute;n y otros detalles del servicio en la confirmaci&oacute;n de servicio que recibir&aacute;s v&iacute;a correo electr&oacute;nico despu&eacute;s de completar tu proceso de reservaci&oacute;n y pago. En esta actividad solo se permite un m&aacute;ximo de 10 ocupantes por embarcaci&oacute;n. El uso del chaleco salvavidas es obligatorio durante todo el recorrido. Este servicio no es recomendable para mujeres embarazadas, personas con problemas de columna, cualquier tipo de lesi&oacute;n o cirug&iacute;as recientes o problemas card&iacute;acos.</p>', '<p>&bull;Actividades opcionales adicionales en Canc&uacute;n.</p><p>&bull;Comida o bebidas fuera de lo enlistado de inclusiones.</p><p>&bull;Suvenir, artesan&iacute;as, o cualquier otro producto o servicio no mencionado en la lista de inclusiones.</p><p>&bull;Servicios de foto o video.</p><p>&bull;Propinas.</p><p>&bull;Toallas.</p><p>&bull;Impuestos de uso de muelle.</p><p><br></p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '6 Horas aprox.', NULL, NULL, NULL, 0, NULL, NULL, 1, 1, 1, 0.000000, 0.000000, '2016-07-27 12:52:24', '2016-12-13 21:09:39'),
(13, 'NADO CON DELFINES', '170', '105', '105', '105', '10', '10', '95', '95', '<p style="text-align: justify;">Nadar con los Tiburones Ballena en Canc&uacute;n, es una de las mejores experiencias que podr&aacute;s vivir, ya que esto cambiar&aacute; tu manera de ver a la naturaleza para siempre, considerando que tendr&aacute;s la oportunidad de ver y nadar con el pez m&aacute;s grande del mundo ya que su tama&ntilde;o es de aproximadamente 12 metros de largo y un peso de 20 toneladas. En los &uacute;ltimos a&ntilde;os se ha incrementado el inter&eacute;s por los viajeros a realizar esta actividad, ya que esta actividad no representa ning&uacute;n riesgo para ti, pues esta belleza de animal se alimenta mediante filtraci&oacute;n de agua fitoplancton, algas y peque&ntilde;os cangrejos, calamares, cangrejos y at&uacute;n. &nbsp;Qu&eacute; esperas ven y vive una de las actividades que cambiara tu forma de ver la naturaleza.</p>', '<p style="text-align: justify;">El nado con Los Tiburones Ballena, es una de las actividades m&aacute;s esperadas por los viajantes de Canc&uacute;n y la Riviera Maya, ya que esta es una de las especies m&aacute;s amigables que existen y m&aacute;s impresionantes por su tama&ntilde;o ...</p>', '<ul><li>Evita cargar mochilas o bolsas pesadas o voluminosas.</li><li>Viste ropa y calzado c&oacute;modos, as&iacute; como lentes de sol y gorra.</li><li>Trae una toalla y traje de ba&ntilde;o, adem&aacute;s de c&aacute;mara sumergible.</li><li>El protector solar que uses deber&aacute; ser 100 % biodegradable.</li><li>Trae contigo algo de efectivo y una tarjeta de d&eacute;bito o cr&eacute;dito para gastos no previstos, en caso de que requieras dejar un deposito por el uso de alg&uacute;n equipo, o para pagar productos o servicios no contemplados en el tour.</li><li>Si padeces de alg&uacute;n problema de salud o impedimento f&iacute;sico, por favor cont&aacute;ctenos antes de reservar para que podamos asesorarte al respecto.</li><li>En caso de cualquier duda o pregunta, favor de comunicarte con nosotros.</li></ul>', '<p>&bull;Transportaci&oacute;n terrestre desde tu hotel (o punto de encuentro, para ciertos hoteles) y de vuelta.</p><p>&bull;Transportaci&oacute;n mar&iacute;tima hasta el punto donde son avistados los tiburones ballena para nadar con ellos y de vuelta</p><p>&bull;Gu&iacute;a biling&uuml;e.</p><p>&bull;Desayuno Ligero.</p><p>&bull;Comida.</p><p>&bull;Agua embotellada y refrescos.</p><p>&bull;Cerveza (despu&eacute;s de haber hecho el snorkel con el Tibur&oacute;n Ballena)</p><p>&bull;Uso de tubo de Snorkel.</p><p>&bull;Visor.</p><p>&bull;Aletas.</p><p>&bull;Chaleco Salvavidas.</p>', '<ul><li>Favor de verificar la hora exacta de tu transportaci&oacute;n y otros detalles del servicio en la confirmaci&oacute;n de servicio que recibir&aacute;s v&iacute;a correo electr&oacute;nico despu&eacute;s de completar tu proceso de reservaci&oacute;n y pago. En esta actividad solo se permite un m&aacute;ximo de 10 ocupantes por embarcaci&oacute;n.</li><li>El uso del chaleco salvavidas es obligatorio durante todo el recorrido.</li><li>Este servicio no es recomendable para mujeres embarazadas, personas con problemas de columna, cualquier tipo de lesi&oacute;n o cirug&iacute;as recientes o problemas cardiacos.</li></ul>', '<p>&bull;Actividades opcionales adicionales en Canc&uacute;n.</p><p>&bull;Comida o bebidas fuera de lo enlistado de inclusiones.</p><p>&bull;Suvenir, artesan&iacute;as, o cualquier otro producto o servicio no mencionado en la lista de inclusiones.</p><p>&bull;Servicios de foto o video.</p><p>&bull;Propinas.</p><p>&bull;Toallas.</p><p>&bull;Impuestos de uso de muelle.</p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '6 Horas aprox.', NULL, NULL, NULL, 0, NULL, NULL, 2, 1, 1, 0.000000, 0.000000, '2016-07-27 12:57:21', '2016-12-13 18:29:39'),
(14, 'NADO CON DELFINES', '180', '115', '115', '115', '10', '10', '105', '105', '<p style="text-align: justify;">Nadar con los Tiburones Ballena en Canc&uacute;n, es una de las mejores experiencias que podr&aacute;s vivir, ya que esto cambiar&aacute; tu manera de ver a la naturaleza para siempre, considerando que tendr&aacute;s la oportunidad de ver y nadar con el pez m&aacute;s grande del mundo ya que su tama&ntilde;o es de aproximadamente 12 metros de largo y un peso de 20 toneladas. En los &uacute;ltimos a&ntilde;os se ha incrementado el inter&eacute;s por los viajeros a realizar esta actividad, ya que esta actividad no representa ning&uacute;n riesgo para ti, pues esta belleza de animal se alimenta mediante filtraci&oacute;n de agua fitoplancton, algas y peque&ntilde;os cangrejos, calamares, cangrejos y at&uacute;n. &nbsp;Qu&eacute; esperas ven y vive una de las actividades que cambiara tu forma de ver la naturaleza.</p>', '<p style="text-align: justify;">El nado con Los Tiburones Ballena, es una de las actividades m&aacute;s esperadas por los viajantes de Canc&uacute;n y la Riviera Maya, ya que esta es una de las especies m&aacute;s amigables que existen y m&aacute;s impresionantes por su tama&ntilde;o ...</p>', '<ul><li style="text-align: justify;">Evita cargar mochilas o bolsas pesadas o voluminosas.</li><li style="text-align: justify;">Viste ropa y calzado c&oacute;modos, as&iacute; como lentes de sol y gorra.</li><li style="text-align: justify;">Trae una toalla y traje de ba&ntilde;o, adem&aacute;s de c&aacute;mara sumergible.</li><li style="text-align: justify;">El protector solar que uses deber&aacute; ser 100 % biodegradable.</li><li style="text-align: justify;">Trae contigo algo de efectivo y una tarjeta de d&eacute;bito o cr&eacute;dito para gastos no previstos, en caso de que requieras dejar un deposito por el uso de alg&uacute;n equipo, o para pagar productos o servicios no contemplados en el tour.</li><li style="text-align: justify;">Si padeces de alg&uacute;n problema de salud o impedimento f&iacute;sico, por favor cont&aacute;ctanos antes de reservar para que podamos asesorarte al respecto.</li><li style="text-align: justify;">En caso de cualquier duda o pregunta, favor de comunicarte con nosotros.</li></ul>', '<p>&bull;Transportaci&oacute;n terrestre desde tu hotel (o punto de encuentro, para ciertos hoteles) y de vuelta.</p><p>&bull;Transportaci&oacute;n mar&iacute;tima hasta el punto donde son avistados los tiburones ballena para nadar con ellos y de vuelta</p><p>&bull;Gu&iacute;a biling&uuml;e.</p><p>&bull;Desayuno Ligero.</p><p>&bull;Comida.</p><p>&bull;Agua embotellada y refrescos.</p><p>&bull;Cerveza (despu&eacute;s de haber hecho el snorkel con el Tibur&oacute;n Ballena)</p><p>&bull;Uso de tubo de Snorkel.</p><p>&bull;Visor.</p><p>&bull;Aletas.</p><p>&bull;Chaleco Salvavidas.</p>', '<ul><li style="text-align: justify;">Favor de verificar la hora exacta de tu transportaci&oacute;n y otros detalles del servicio en la confirmaci&oacute;n de servicio que recibir&aacute;s v&iacute;a correo electr&oacute;nico despu&eacute;s de completar tu proceso de reservaci&oacute;n y pago. En esta actividad solo se permite un m&aacute;ximo de 10 ocupantes por embarcaci&oacute;n.</li><li style="text-align: justify;">El uso del chaleco salvavidas es obligatorio durante todo el recorrido.</li><li style="text-align: justify;">Este servicio no es recomendable para mujeres embarazadas, personas con problemas de columna, cualquier tipo de lesi&oacute;n o cirug&iacute;as recientes o problemas cardiacos.</li></ul>', '<p>&bull;Actividades opcionales adicionales en Canc&uacute;n.</p><p>&bull;Comida o bebidas fuera de lo enlistado de inclusiones.</p><p>&bull;Suvenir, artesan&iacute;as, o cualquier otro producto o servicio no mencionado en la lista de inclusiones.</p><p>&bull;Servicios de foto o video.</p><p>&bull;Propinas.</p><p>&bull;Toallas.</p><p>&bull;Impuestos de uso de muelle.</p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '6 Horas aprox.', NULL, NULL, NULL, 0, NULL, NULL, 8, 1, 1, 0.000000, 0.000000, '2016-07-27 13:01:58', '2016-12-13 18:31:54'),
(15, 'CHICHEN ITZA BASICO', '75', '35', '35', '35', '10', '10', '25', '25', '<p style="text-align: justify;">Al vivir este recorrido por las pir&aacute;mides de CHICHEN ITZA, podr&aacute;s descubrir por qu&eacute; los Mayas fueron una de las culturas m&aacute;s avanzadas de su &eacute;poca.</p><p style="text-align: justify;">En este recorrido tendr&aacute;s oportunidad de conocer la pir&aacute;mide principal de Chichen Itz&aacute;, as&iacute; como el lugar donde se llevar&aacute; a cabo el gran juego de pelota, que era uno de los rituales que representar&iacute;a el origen del universo.</p><p style="text-align: justify;">En ocasiones al finalizar el juego de pelota, una parte de los participantes era sacrificado y ofrecido a los dioses. Al terminar este recorrido majestuoso tendremos la oportunidad de visitar un hermoso cenote para refrescarnos del calor de Yucat&aacute;n, nadando en sus cristalinas aguas.</p>', '<p style="text-align: justify;">En CHICHE ITZA, tendr&aacute;s la oportunidad de recorrer una de las siete maravillas del mundo, donde la historia ha quedado plasmada en sus majestuosas construcciones, y de los rituales de sacrificio&hellip;</p>', '<p style="text-align: justify;">&bull;Llevar ropa c&oacute;moda y ligera.</p><p style="text-align: justify;">&bull;Los detalles de la transportaci&oacute;n, hora de llegada y regreso, as&iacute; como puntos de encuentro te ser&aacute;n enviados por correo electr&oacute;nico despu&eacute;s de realizar tu reservaci&oacute;n y pago.</p><p style="text-align: justify;">&bull;Las tarifas de menores son v&aacute;lidas para ni&ntilde;os de entre 4 y 11 a&ntilde;os de edad.</p><p style="text-align: justify;">&bull;Los infantes de tres a&ntilde;os de edad no pagan.</p>', '<p>&bull;Transportaci&oacute;n redonda desde tu hotel o alg&uacute;n punto de reuni&oacute;n. Gu&iacute;a en la zona arqueol&oacute;gica.</p><p>&bull;Para expr&eacute;s en Valladolid Cita de entrada a Chichen Itz&aacute;.</p><p>&bull;Dos horas y media aproximadamente de tour guiado en la zona arqueol&oacute;gica.</p><p>&bull;Una hora de estancia libre en la zona arqueol&oacute;gica.</p><p>&bull;Comida buffet.</p><p>&bull;Visita a un cenote.</p>', '<p>&bull;Lleva contigo una cantidad de efectivo para productos y servicios que no est&aacute;n contemplados en el paquete.</p><p>&bull;Evita cargar con mochilas pesadas o Voluminosas.</p><p>&bull;Traer gorra o sombrero.</p><p>&bull;Usar lentes de sol.</p><p>&bull;Recuerda usar bloqueador solar biodegradable Traer toalla y traje de ba&ntilde;o.</p><p>&bull;Si padeces de alguna enfermedad o condici&oacute;n de salud f&iacute;sica, por favor cont&aacute;ctenos antes de hacer su reservaci&oacute;n, para que podamos asesorarte al respecto.</p>', '<p>&bull;Cualquier tipo de bebida durante todo el tour.</p><p>&bull;Servicio de fotos y/o video.</p><p>&bull;Uso de locker, chalecos salvavidas, o toallas en el cenote.</p><p>&bull;Otras actividades en Chichen Itz&aacute; o el cenote.</p><p>&bull;Propinas Suvenir, artesan&iacute;as, ropa, etc.</p><p>&bull;Cualquier otro producto no mencionado en la lista de los que el tour incluye.</p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '8 Horas aprox.', NULL, NULL, NULL, 0, NULL, NULL, 1, 2, 1, 0.000000, 0.000000, '2016-07-27 13:10:04', '2016-12-13 10:15:50'),
(16, 'CHICHEN ITZA BASICO', '75', '35', '35', '35', '10', '10', '25', '25', '<p style="text-align: justify;">Al vivir este recorrido por las pir&aacute;mides de CHICHEN ITZA, podr&aacute;s descubrir por qu&eacute; los Mayas fueron una de las culturas m&aacute;s avanzadas de su &eacute;poca.</p><p style="text-align: justify;">En este recorrido tendr&aacute;s oportunidad de conocer la pir&aacute;mide principal de Chichen Itz&aacute;, as&iacute; como el lugar donde se llevar&aacute; a cabo el gran juego de pelota, que era uno de los rituales que representar&iacute;a el origen del universo.</p><p style="text-align: justify;">En ocasiones al finalizar el juego de pelota, una parte de los participantes era sacrificado y ofrecido a los dioses. Al terminar este recorrido majestuoso tendremos la oportunidad de visitar un hermoso cenote para refrescarnos del calor de Yucat&aacute;n, nadando en sus cristalinas aguas.</p>', '<p style="text-align: justify;">En CHICHE ITZA, tendr&aacute;s la oportunidad de recorrer una de las siete maravillas del mundo, donde la historia ha quedado plasmada en sus majestuosas construcciones, y de los rituales de sacrificio&hellip;</p>', '<p style="text-align: justify;">&bull;Llevar ropa c&oacute;moda y ligera.</p><p style="text-align: justify;">&bull;Los detalles de la transportaci&oacute;n, hora de llegada y regreso, as&iacute; como puntos de encuentro te ser&aacute;n enviados por correo electr&oacute;nico despu&eacute;s de realizar tu reservaci&oacute;n y pago.</p><p style="text-align: justify;">&bull;Las tarifas de menores son v&aacute;lidas para ni&ntilde;os de entre 4 y 11 a&ntilde;os de edad.</p><p style="text-align: justify;">&bull;Los infantes de tres a&ntilde;os de edad no pagan.</p>', '<p>&bull;Transportaci&oacute;n redonda desde tu hotel o alg&uacute;n punto de reuni&oacute;n. Gu&iacute;a en la zona arqueol&oacute;gica.</p><p>&bull;Para expr&eacute;s en Valladolid Cita de entrada a Chichen Itz&aacute;.</p><p>&bull;Dos horas y media aproximadamente de tour guiado en la zona arqueol&oacute;gica.</p><p>&bull;Una hora de estancia libre en la zona arqueol&oacute;gica.</p><p>&bull;Comida buffet.</p><p>&bull;Visita a un cenote.</p>', '<p style="text-align: justify;">&bull;Lleva contigo una cantidad de efectivo para productos y servicios que no est&aacute;n contemplados en el paquete.</p><p style="text-align: justify;">&bull;Evita cargar con mochilas pesadas o Voluminosas.</p><p style="text-align: justify;">&bull;Traer gorra o sombrero.</p><p style="text-align: justify;">&bull;Usar lentes de sol.</p><p style="text-align: justify;">&bull;Recuerda usar bloqueador solar biodegradable Traer toalla y traje de ba&ntilde;o.</p><p style="text-align: justify;">&bull;Si padeces de alguna enfermedad o condici&oacute;n de salud f&iacute;sica, por favor cont&aacute;ctenos antes de hacer su reservaci&oacute;n, para que podamos asesorarte al respecto.</p>', '<p>&bull;Cualquier tipo de bebida durante todo el tour.</p><p>&bull;Servicio de fotos y/o video.</p><p>&bull;Uso de locker, chalecos salvavidas, o toallas en el cenote.</p><p>&bull;Otras actividades en Chichen Itz&aacute; o el cenote.</p><p>&bull;Propinas Suvenir, artesan&iacute;as, ropa, etc.</p><p>&bull;Cualquier otro producto no mencionado en la lista de los que el tour incluye.</p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '8 Horas aprox.', NULL, NULL, NULL, 0, NULL, NULL, 2, 2, 1, 0.000000, 0.000000, '2016-07-27 13:14:06', '2016-12-13 20:44:40'),
(17, 'CHICHEN ITZA BASICO', '80', '40', '40', '40', '10', '10', '30', '30', '<p style="text-align: justify;">Al vivir este recorrido por las pir&aacute;mides de CHICHEN ITZA, podr&aacute;s descubrir por qu&eacute; los Mayas fueron una de las culturas m&aacute;s avanzadas de su &eacute;poca.</p><p style="text-align: justify;">En este recorrido tendr&aacute;s oportunidad de conocer la pir&aacute;mide principal de Chichen Itz&aacute;, as&iacute; como el lugar donde se llevar&aacute; a cabo el gran juego de pelota, que era uno de los rituales que representar&iacute;a el origen del universo.</p><p style="text-align: justify;">En ocasiones al finalizar el juego de pelota, una parte de los participantes era sacrificado y ofrecido a los dioses. Al terminar este recorrido majestuoso tendremos la oportunidad de visitar un hermoso cenote para refrescarnos del calor de Yucat&aacute;n, nadando en sus cristalinas aguas.</p>', '<p style="text-align: justify;">En CHICHE ITZA, tendr&aacute;s la oportunidad de recorrer una de las siete maravillas del mundo, donde la historia ha quedado plasmada en sus majestuosas construcciones, y de los rituales de sacrificio&hellip;</p>', '<p style="text-align: justify;">&bull;Llevar ropa c&oacute;moda y ligera.</p><p style="text-align: justify;">&bull;Los detalles de la transportaci&oacute;n, hora de llegada y regreso, as&iacute; como puntos de encuentro te ser&aacute;n enviados por correo electr&oacute;nico despu&eacute;s de realizar tu reservaci&oacute;n y pago.</p><p style="text-align: justify;">&bull;Las tarifas de menores son v&aacute;lidas para ni&ntilde;os de entre 4 y 11 a&ntilde;os de edad.</p><p style="text-align: justify;">&bull;Los infantes de tres a&ntilde;os de edad no pagan.</p>', '<p>&bull;Transportaci&oacute;n redonda desde tu hotel o alg&uacute;n punto de reuni&oacute;n. Gu&iacute;a en la zona arqueol&oacute;gica.</p><p>&bull;Para expr&eacute;s en Valladolid Cita de entrada a Chichen Itz&aacute;.</p><p>&bull;Dos horas y media aproximadamente de tour guiado en la zona arqueol&oacute;gica.</p><p>&bull;Una hora de estancia libre en la zona arqueol&oacute;gica.</p><p>&bull;Comida buffet.</p><p>&bull;Visita a un cenote.</p>', '<p style="text-align: justify;">&bull;Lleva contigo una cantidad de efectivo para productos y servicios que no est&aacute;n contemplados en el paquete.</p><p style="text-align: justify;">&bull;Evita cargar con mochilas pesadas o Voluminosas.</p><p style="text-align: justify;">&bull;Traer gorra o sombrero.</p><p style="text-align: justify;">&bull;Usar lentes de sol.</p><p style="text-align: justify;">&bull;Recuerda usar bloqueador solar biodegradable Traer toalla y traje de ba&ntilde;o.</p><p style="text-align: justify;">&bull;Si padeces de alguna enfermedad o condici&oacute;n de salud f&iacute;sica, por favor cont&aacute;ctenos antes de hacer su reservaci&oacute;n, para que podamos asesorarte al respecto.</p>', '<p>&bull;Cualquier tipo de bebida durante todo el tour.</p><p>&bull;Servicio de fotos y/o video.</p><p>&bull;Uso de locker, chalecos salvavidas, o toallas en el cenote.</p><p>&bull;Otras actividades en Chichen Itz&aacute; o el cenote.</p><p>&bull;Propinas Suvenir, artesan&iacute;as, ropa, etc.</p><p>&bull;Cualquier otro producto no mencionado en la lista de los que el tour incluye.</p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '8 Horas aprox.', NULL, NULL, NULL, 0, NULL, NULL, 8, 2, 1, 0.000000, 0.000000, '2016-07-27 13:18:04', '2016-12-13 18:35:48'),
(18, 'CHICHEN ITZA PLUS', '85', '40', '40', '40', '10', '10', '30', '30', '<p style="text-align: justify;">Al vivir este recorrido por las pir&aacute;mides de CHICHEN ITZA, podr&aacute;s descubrir por qu&eacute; los Mayas fueron una de las culturas m&aacute;s avanzadas de su &eacute;poca.</p><p style="text-align: justify;">En este recorrido tendr&aacute;s oportunidad de conocer la pir&aacute;mide principal de Chichen Itz&aacute;, as&iacute; como el lugar donde se llevar&aacute; a cabo el gran juego de pelota, que era uno de los rituales que representar&iacute;a el origen del universo.</p><p style="text-align: justify;">En ocasiones al finalizar el juego de pelota, una parte de los participantes era sacrificado y ofrecido a los dioses. Al terminar este recorrido majestuoso tendremos la oportunidad de visitar un hermoso cenote para refrescarnos del calor de Yucat&aacute;n, nadando en sus cristalinas aguas.</p>', '<p style="text-align: justify;">En CHICHE ITZA, tendr&aacute;s la oportunidad de recorrer una de las siete maravillas del mundo, donde la historia ha quedado plasmada en sus majestuosas construcciones, y de los rituales de sacrificio&hellip;</p>', '<p style="text-align: justify;">&bull;Llevar ropa c&oacute;moda y ligera.</p><p style="text-align: justify;">&bull;Los detalles de la transportaci&oacute;n, hora de llegada y regreso, as&iacute; como puntos de encuentro te ser&aacute;n enviados por correo electr&oacute;nico despu&eacute;s de realizar tu reservaci&oacute;n y pago.</p><p style="text-align: justify;">&bull;Las tarifas de menores son v&aacute;lidas para ni&ntilde;os de entre 4 y 11 a&ntilde;os de edad.</p><p style="text-align: justify;">&bull;Los infantes de tres a&ntilde;os de edad no pagan.</p>', '<p>&bull;Transportaci&oacute;n redonda desde tu hotel o alg&uacute;n punto de reuni&oacute;n. Gu&iacute;a en la zona arqueol&oacute;gica.</p><p>&bull;Para expr&eacute;s en Valladolid Cita de entrada a Chichen Itz&aacute;.</p><p>&bull;Dos horas y media aproximadamente de tour guiado en la zona arqueol&oacute;gica.</p><p>&bull;Una hora de estancia libre en la zona arqueol&oacute;gica.</p><p>&bull;Comida buffet.</p><p>&bull;Bebidas durante todo el recorrido</p><p>&bull;Visita a un cenote.</p>', '<p>&bull;Lleva contigo una cantidad de efectivo para productos y servicios que no est&aacute;n contemplados en el paquete.</p><p>&bull;Evita cargar con mochilas pesadas o Voluminosas.</p><p>&bull;Traer gorra o sombrero.</p><p>&bull;Usar lentes de sol. Recuerda usar bloqueador solar biodegradable</p><p>&bull;Traer toalla y traje de ba&ntilde;o.</p><p>&bull;Si padeces de alguna enfermedad o condici&oacute;n de salud f&iacute;sica, por favor cont&aacute;ctenos antes de hacer su reservaci&oacute;n, para que podamos asesorarte al respecto.</p>', '<p>&bull;Servicio de fotos y/o video.</p><p>&bull;Uso de locker, chalecos salvavidas, o toallas en el cenote.</p><p>&bull;Otras actividades en Chichen Itz&aacute; o el cenote.</p><p>&bull;Propinas Suvenir, artesan&iacute;as, ropa, etc.</p><p>&bull;Cualquier otro producto no mencionado en la lista de los que el tour incluye.</p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '8 Horas aprox.', NULL, NULL, NULL, 0, NULL, NULL, 1, 2, 1, 0.000000, 0.000000, '2016-07-27 13:24:25', '2016-12-13 18:00:11'),
(19, 'CHICHEN ITZA PLUS', '85', '40', '40', '40', '10', '10', '30', '30', '<p style="text-align: justify;">Al vivir este recorrido por las pir&aacute;mides de CHICHEN ITZA, podr&aacute;s descubrir por qu&eacute; los Mayas fueron una de las culturas m&aacute;s avanzadas de su &eacute;poca.</p><p style="text-align: justify;">En este recorrido tendr&aacute;s oportunidad de conocer la pir&aacute;mide principal de Chichen Itz&aacute;, as&iacute; como el lugar donde se llevar&aacute; a cabo el gran juego de pelota, que era uno de los rituales que representar&iacute;a el origen del universo.</p><p style="text-align: justify;">En ocasiones al finalizar el juego de pelota, una parte de los participantes era sacrificado y ofrecido a los dioses. Al terminar este recorrido majestuoso tendremos la oportunidad de visitar un hermoso cenote para refrescarnos del calor de Yucat&aacute;n, nadando en sus cristalinas aguas.</p>', '<p style="text-align: justify;">En CHICHE ITZA, tendr&aacute;s la oportunidad de recorrer una de las siete maravillas del mundo, donde la historia ha quedado plasmada en sus majestuosas construcciones, y de los rituales de sacrificio&hellip;</p>', '<p style="text-align: justify;">&bull;Llevar ropa c&oacute;moda y ligera.</p><p style="text-align: justify;">&bull;Los detalles de la transportaci&oacute;n, hora de llegada y regreso, as&iacute; como puntos de encuentro te ser&aacute;n enviados por correo electr&oacute;nico despu&eacute;s de realizar tu reservaci&oacute;n y pago.</p><p style="text-align: justify;">&bull;Las tarifas de menores son v&aacute;lidas para ni&ntilde;os de entre 4 y 11 a&ntilde;os de edad.</p><p style="text-align: justify;">&bull;Los infantes de tres a&ntilde;os de edad no pagan.</p>', '<p>&bull;Transportaci&oacute;n redonda desde tu hotel o alg&uacute;n punto de reuni&oacute;n. Gu&iacute;a en la zona arqueol&oacute;gica.</p><p>&bull;Para expr&eacute;s en Valladolid Cita de entrada a Chichen Itz&aacute;.</p><p>&bull;Dos horas y media aproximadamente de tour guiado en la zona arqueol&oacute;gica.</p><p>&bull;Una hora de estancia libre en la zona arqueol&oacute;gica.</p><p>&bull;Comida buffet.</p><p>&bull;Bebidas durante todo el recorrido</p><p>&bull;Visita a un cenote.</p>', '<p style="text-align: justify;">&bull;Lleva contigo una cantidad de efectivo para productos y servicios que no est&aacute;n contemplados en el paquete.</p><p style="text-align: justify;">&bull;Evita cargar con mochilas pesadas o Voluminosas.</p><p style="text-align: justify;">&bull;Traer gorra o sombrero.</p><p style="text-align: justify;">&bull;Usar lentes de sol. Recuerda usar bloqueador solar biodegradable</p><p style="text-align: justify;">&bull;Traer toalla y traje de ba&ntilde;o.</p><p style="text-align: justify;">&bull;Si padeces de alguna enfermedad o condici&oacute;n de salud f&iacute;sica, por favor cont&aacute;ctenos antes de hacer su reservaci&oacute;n, para que podamos asesorarte al respecto.</p>', '<p>&bull;Servicio de fotos y/o video.</p><p>&bull;Uso de locker, chalecos salvavidas, o toallas en el cenote.</p><p>&bull;Otras actividades en Chichen Itz&aacute; o el cenote.</p><p>&bull;Propinas Suvenir, artesan&iacute;as, ropa, etc.</p><p>&bull;Cualquier otro producto no mencionado en la lista de los que el tour incluye.</p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '8 Horas aprox.', NULL, NULL, NULL, 0, NULL, NULL, 2, 2, 1, 0.000000, 0.000000, '2016-07-27 13:28:04', '2016-12-13 18:22:05'),
(20, 'CHICHEN ITZA PLUS', '90', '45', '45', '45', '10', '10', '35', '35', '<p style="text-align: justify;">Al vivir este recorrido por las pir&aacute;mides de CHICHEN ITZA, podr&aacute;s descubrir por qu&eacute; los Mayas fueron una de las culturas m&aacute;s avanzadas de su &eacute;poca.</p><p style="text-align: justify;">En este recorrido tendr&aacute;s oportunidad de conocer la pir&aacute;mide principal de Chichen Itz&aacute;, as&iacute; como el lugar donde se llevar&aacute; a cabo el gran juego de pelota, que era uno de los rituales que representar&iacute;a el origen del universo.</p><p style="text-align: justify;">En ocasiones al finalizar el juego de pelota, una parte de los participantes era sacrificado y ofrecido a los dioses. Al terminar este recorrido majestuoso tendremos la oportunidad de visitar un hermoso cenote para refrescarnos del calor de Yucat&aacute;n, nadando en sus cristalinas aguas.</p>', '<p style="text-align: justify;">En CHICHE ITZA, tendr&aacute;s la oportunidad de recorrer una de las siete maravillas del mundo, donde la historia ha quedado plasmada en sus majestuosas construcciones, y de los rituales de sacrificio&hellip;</p>', '<p style="text-align: justify;">&bull;Llevar ropa c&oacute;moda y ligera.</p><p style="text-align: justify;">&bull;Los detalles de la transportaci&oacute;n, hora de llegada y regreso, as&iacute; como puntos de encuentro te ser&aacute;n enviados por correo electr&oacute;nico despu&eacute;s de realizar tu reservaci&oacute;n y pago.</p><p style="text-align: justify;">&bull;Las tarifas de menores son v&aacute;lidas para ni&ntilde;os de entre 4 y 11 a&ntilde;os de edad.</p><p style="text-align: justify;">&bull;Los infantes de tres a&ntilde;os de edad no pagan.</p>', '<p>&bull;Transportaci&oacute;n redonda desde tu hotel o alg&uacute;n punto de reuni&oacute;n. Gu&iacute;a en la zona arqueol&oacute;gica.</p><p>&bull;Para expr&eacute;s en Valladolid Cita de entrada a Chichen Itz&aacute;.</p><p>&bull;Dos horas y media aproximadamente de tour guiado en la zona arqueol&oacute;gica.</p><p>&bull;Una hora de estancia libre en la zona arqueol&oacute;gica.</p><p>&bull;Comida buffet.</p><p>&bull;Bebidas durante todo el recorrido</p><p>&bull;Visita a un cenote.</p>', '<p style="text-align: justify;">&bull;Lleva contigo una cantidad de efectivo para productos y servicios que no est&aacute;n contemplados en el paquete.</p><p style="text-align: justify;">&bull;Evita cargar con mochilas pesadas o Voluminosas.</p><p style="text-align: justify;">&bull;Traer gorra o sombrero.</p><p style="text-align: justify;">&bull;Usar lentes de sol. Recuerda usar bloqueador solar biodegradable</p><p style="text-align: justify;">&bull;Traer toalla y traje de ba&ntilde;o.</p><p style="text-align: justify;">&bull;Si padeces de alguna enfermedad o condici&oacute;n de salud f&iacute;sica, por favor cont&aacute;ctenos antes de hacer su reservaci&oacute;n, para que podamos asesorarte al respecto.</p>', '<p>&bull;Servicio de fotos y/o video.</p><p>&bull;Uso de locker, chalecos salvavidas, o toallas en el cenote.</p><p>&bull;Otras actividades en Chichen Itz&aacute; o el cenote.</p><p>&bull;Propinas Suvenir, artesan&iacute;as, ropa, etc.</p><p>&bull;Cualquier otro producto no mencionado en la lista de los que el tour incluye.</p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '8 Horas aprox.', NULL, NULL, NULL, 0, NULL, NULL, 8, 2, 1, 0.000000, 0.000000, '2016-07-27 13:32:26', '2016-12-13 18:38:26'),
(21, 'CATAMARAN ISLA MUJERES PLUS', '100', '50', '50', '45', '10', '10', '40', '35', '<p style="text-align: justify;">Navegar a Isla Mujeres desde Canc&uacute;n en un hermoso catamar&aacute;n, es algo que no debe faltar en tus pr&oacute;ximas vacaciones. Esta experiencia te ofrece un relajante paseo en catamar&aacute;n o yate de vela, adem&aacute;s de una serie de aventuras incre&iacute;bles. Disfruta del mar del caribe, el sol, la m&uacute;sica, la diversi&oacute;n y los cocteles tropicales, este es uno de esos tours en Canc&uacute;n que no te debes perder.</p><p style="text-align: justify;"><br></p><p style="text-align: justify;">Nuestro tour a Isla Mujeres incluye hacer snorkel en un arrecife, volar sobre el mar con la fuerza del viento en una &quot;spinnaker&quot; a modo de enorme papalote, y visitar el tradicional centro de Isla Mujeres y sus decenas de tiendas de coloridas artesan&iacute;as.</p><p style="text-align: justify;"><br></p><p style="text-align: justify;">Este tour a Isla Mujeres en catamar&aacute;n desde Canc&uacute;n tambi&eacute;n te lleva hasta un club de playa privado donde podr&aacute;s disfrutar una riqu&iacute;sima comida buffet y relajarte contemplando el sol descendiendo sobre el Caribe. Nuestro recorrido termina con el bote atravesando de nueva cuenta las transparentes aguas del mar.</p>', '<p style="text-align: justify;">El tour en Catamar&aacute;n de &nbsp;Canc&uacute;n - Isla Mujeres te ofrece un relajante paseo n&aacute;utico por el paradis&iacute;aco mar del caribe mexicano, snorkel en un arrecife, volar sobre el mar en el spinnaker, visitar el tradicional centro de Isla Mujeres, y una deliciosa tarde con comida buffet incluida en un club de...</p>', '<p style="text-align: justify;">&bull;Viste ropa c&oacute;moda, calzado para nadar y traje de ba&ntilde;o, as&iacute; como lentes de sol, gorra o sombrero</p><p style="text-align: justify;">&bull;Trae una muda adicional de ropa y una toalla</p><p style="text-align: justify;">&bull;El protector solar que uses en el parque marino deber&aacute; ser 100% biodegradable</p><p style="text-align: justify;">&bull;Trae contigo efectivo y una tarjeta de d&eacute;bito o cr&eacute;dito o efectivo para gastos no previstos, en caso de que requieras dejar un dep&oacute;sito por el uso de alg&uacute;n equipo, o para pagar productos o servicios no contemplados en el tour</p><p style="text-align: justify;">&bull;Si tienes cualquier problema de salud o impedimento f&iacute;sico, por favor cont&aacute;ctanos antes de hacer tu reservaci&oacute;n, para as&iacute; poderte asesorar al respecto</p>', '<p>&bull;Transportaci&oacute;n Terrestre desde tu hotel</p><p>&bull;Tripulaci&oacute;n biling&uuml;e</p><p>&bull;Tour de snorkel en el arrecife</p><p>&bull;Equipo de snorkel</p><p>&bull;Viaje redondo en un lindo catamar&aacute;n hasta Isla Mujeres desde Canc&uacute;n y de regreso</p><p>&bull;La emocionante experiencia &quot;spinnaker&quot; *</p><p>&bull;Barra libre en el catamar&aacute;n (s&oacute;lo bebidas y licores nacionales)</p><p>&bull;Visita al centro de Isla Mujeres</p><p>&bull;Comida buffet</p><p>&bull;Acceso a un club de playa privado</p><p>&bull;Conexi&oacute;n Wi-Fi a bordo del catamar&aacute;n</p><p>&bull;* Es opcional y su realizaci&oacute;n est&aacute; sujeta a las condiciones climatol&oacute;gicas</p>', '<p>&bull;La experiencia spinnaker es opcional y est&aacute; sujeta a condiciones climatol&oacute;gicas</p>', '<p style="text-align: justify;">&bull;Actividades adicionales en Isla Mujeres o Canc&uacute;n</p><p style="text-align: justify;">&bull;Renta de carrito de golf o motoneta o bicicleta o cualquier otro veh&iacute;culo terrestre en Isla Mujeres</p><p style="text-align: justify;">&bull;Comida o bocadillos durante la transportaci&oacute;n en catamar&aacute;n en viaje redondo</p><p style="text-align: justify;">&bull;Bebidas en el club de playa</p><p style="text-align: justify;">&bull;Suvenires, artesan&iacute;as, ropa, o cualquier otro producto o servicio no mencionado (ver lista de lo que incluye el tour)</p><p style="text-align: justify;">&bull;Servicios de foto o video</p><p style="text-align: justify;">&bull;Propinas</p><p style="text-align: justify;">&bull;Impuesto por persona por uso de muelle y acceso a parque marino (11 USD aproximadamente)</p><p style="text-align: justify;">&bull;Cualquier otro servicio o producto no mencionado en la lista de lo incluido</p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '8 Horas aprox.', NULL, NULL, NULL, 0, NULL, NULL, 1, 3, 1, 0.000000, 0.000000, '2016-07-27 13:38:55', '2016-12-13 18:17:43'),
(22, 'CATAMARAN ISLA MUJERES PLUS', '100', '50', '50', '45', '10', '10', '40', '35', '<p style="text-align: justify;">Navegar a Isla Mujeres desde Canc&uacute;n en un hermoso catamar&aacute;n, es algo que no debe faltar en tus pr&oacute;ximas vacaciones. Esta experiencia te ofrece un relajante paseo en catamar&aacute;n o yate de vela, adem&aacute;s de una serie de aventuras incre&iacute;bles. Disfruta del mar del caribe, el sol, la m&uacute;sica, la diversi&oacute;n y los cocteles tropicales, este es uno de esos tours en Canc&uacute;n que no te debes perder.</p><p style="text-align: justify;"><br></p><p style="text-align: justify;">Nuestro tour a Isla Mujeres incluye hacer snorkel en un arrecife, volar sobre el mar con la fuerza del viento en una &quot;spinnaker&quot; a modo de enorme papalote, y visitar el tradicional centro de Isla Mujeres y sus decenas de tiendas de coloridas artesan&iacute;as.</p><p style="text-align: justify;"><br></p><p style="text-align: justify;">Este tour a Isla Mujeres en catamar&aacute;n desde Canc&uacute;n tambi&eacute;n te lleva hasta un club de playa privado donde podr&aacute;s disfrutar una riqu&iacute;sima comida buffet y relajarte contemplando el sol descendiendo sobre el Caribe. Nuestro recorrido termina con el bote atravesando de nueva cuenta las transparentes aguas del mar.</p>', '<p style="text-align: justify;">El tour en Catamar&aacute;n de &nbsp;Canc&uacute;n - Isla Mujeres te ofrece un relajante paseo n&aacute;utico por el paradis&iacute;aco mar del caribe mexicano, snorkel en un arrecife, volar sobre el mar en el spinnaker, visitar el tradicional centro de Isla Mujeres, y una deliciosa tarde con comida buffet incluida en un club de...</p>', '<p style="text-align: justify;">&bull;Viste ropa c&oacute;moda, calzado para nadar y traje de ba&ntilde;o, as&iacute; como lentes de sol, gorra o sombrero</p><p style="text-align: justify;">&bull;Trae una muda adicional de ropa y una toalla</p><p style="text-align: justify;">&bull;El protector solar que uses en el parque marino deber&aacute; ser 100% biodegradable</p><p style="text-align: justify;">&bull;Trae contigo efectivo y una tarjeta de d&eacute;bito o cr&eacute;dito o efectivo para gastos no previstos, en caso de que requieras dejar un dep&oacute;sito por el uso de alg&uacute;n equipo, o para pagar productos o servicios no contemplados en el tour</p><p style="text-align: justify;">&bull;Si tienes cualquier problema de salud o impedimento f&iacute;sico, por favor cont&aacute;ctanos antes de hacer tu reservaci&oacute;n, para as&iacute; poderte asesorar al respecto</p>', '<p>&bull;Transportaci&oacute;n Terrestre desde tu hotel</p><p>&bull;Tripulaci&oacute;n biling&uuml;e</p><p>&bull;Tour de snorkel en el arrecife</p><p>&bull;Equipo de snorkel</p><p>&bull;Viaje redondo en un lindo catamar&aacute;n hasta Isla Mujeres desde Canc&uacute;n y de regreso</p><p>&bull;La emocionante experiencia &quot;spinnaker&quot; *</p><p>&bull;Barra libre en el catamar&aacute;n (s&oacute;lo bebidas y licores nacionales)</p><p>&bull;Visita al centro de Isla Mujeres</p><p>&bull;Comida buffet</p><p>&bull;Acceso a un club de playa privado</p><p>&bull;Conexi&oacute;n Wi-Fi a bordo del catamar&aacute;n</p><p>&bull;* Es opcional y su realizaci&oacute;n est&aacute; sujeta a las condiciones climatol&oacute;gicas</p>', '<p>&bull;La experiencia spinnaker es opcional y est&aacute; sujeta a condiciones climatol&oacute;gicas</p>', '<p>&bull;Actividades adicionales en Isla Mujeres o Canc&uacute;n</p><p>&bull;Renta de carrito de golf o motoneta o bicicleta o cualquier otro veh&iacute;culo terrestre en Isla Mujeres</p><p>&bull;Comida o bocadillos durante la transportaci&oacute;n en catamar&aacute;n en viaje redondo</p><p>&bull;Bebidas en el club de playa</p><p>&bull;Suvenires, artesan&iacute;as, ropa, o cualquier otro producto o servicio no mencionado (ver lista de lo que incluye el tour)</p><p>&bull;Servicios de foto o video</p><p>&bull;Propinas</p><p>&bull;Impuesto por persona por uso de muelle y acceso a parque marino (11 USD aproximadamente)</p><p>&bull;Cualquier otro servicio o producto no mencionado en la lista de lo incluido</p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '8 Horas aprox.', NULL, NULL, NULL, 0, NULL, NULL, 2, 3, 1, 0.000000, 0.000000, '2016-07-27 13:43:43', '2016-12-13 18:25:11'),
(23, 'CATAMARAN ISLA MUJERES PLUS', '110', '55', '55', '50', '10', '10', '45', '40', '<p style="text-align: justify;">Navegar a Isla Mujeres desde Canc&uacute;n en un hermoso catamar&aacute;n, es algo que no debe faltar en tus pr&oacute;ximas vacaciones. Esta experiencia te ofrece un relajante paseo en catamar&aacute;n o yate de vela, adem&aacute;s de una serie de aventuras incre&iacute;bles. Disfruta del mar del caribe, el sol, la m&uacute;sica, la diversi&oacute;n y los cocteles tropicales, este es uno de esos tours en Canc&uacute;n que no te debes perder.</p><p style="text-align: justify;"><br></p><p style="text-align: justify;">Nuestro tour a Isla Mujeres incluye hacer snorkel en un arrecife, volar sobre el mar con la fuerza del viento en una &quot;spinnaker&quot; a modo de enorme papalote, y visitar el tradicional centro de Isla Mujeres y sus decenas de tiendas de coloridas artesan&iacute;as.</p><p style="text-align: justify;"><br></p><p style="text-align: justify;">Este tour a Isla Mujeres en catamar&aacute;n desde Canc&uacute;n tambi&eacute;n te lleva hasta un club de playa privado donde podr&aacute;s disfrutar una riqu&iacute;sima comida buffet y relajarte contemplando el sol descendiendo sobre el Caribe. Nuestro recorrido termina con el bote atravesando de nueva cuenta las transparentes aguas del mar.</p>', '<p style="text-align: justify;">El tour en Catamar&aacute;n de &nbsp;Canc&uacute;n - Isla Mujeres te ofrece un relajante paseo n&aacute;utico por el paradis&iacute;aco mar del caribe mexicano, snorkel en un arrecife, volar sobre el mar en el spinnaker, visitar el tradicional centro de Isla Mujeres, y una deliciosa tarde con comida buffet incluida en un club de...</p>', '<p style="text-align: justify;">&bull;Viste ropa c&oacute;moda, calzado para nadar y traje de ba&ntilde;o, as&iacute; como lentes de sol, gorra o sombrero</p><p style="text-align: justify;">&bull;Trae una muda adicional de ropa y una toalla</p><p style="text-align: justify;">&bull;El protector solar que uses en el parque marino deber&aacute; ser 100% biodegradable</p><p style="text-align: justify;">&bull;Trae contigo efectivo y una tarjeta de d&eacute;bito o cr&eacute;dito o efectivo para gastos no previstos, en caso de que requieras dejar un dep&oacute;sito por el uso de alg&uacute;n equipo, o para pagar productos o servicios no contemplados en el tour</p><p style="text-align: justify;">&bull;Si tienes cualquier problema de salud o impedimento f&iacute;sico, por favor cont&aacute;ctanos antes de hacer tu reservaci&oacute;n, para as&iacute; poderte asesorar al respecto</p>', '<p>&bull;Transportaci&oacute;n Terrestre desde tu hotel</p><p>&bull;Tripulaci&oacute;n biling&uuml;e</p><p>&bull;Tour de snorkel en el arrecife</p><p>&bull;Equipo de snorkel</p><p>&bull;Viaje redondo en un lindo catamar&aacute;n hasta Isla Mujeres desde Canc&uacute;n y de regreso</p><p>&bull;La emocionante experiencia &quot;spinnaker&quot; *</p><p>&bull;Barra libre en el catamar&aacute;n (s&oacute;lo bebidas y licores nacionales)</p><p>&bull;Visita al centro de Isla Mujeres</p><p>&bull;Comida buffet</p><p>&bull;Acceso a un club de playa privado</p><p>&bull;Conexi&oacute;n Wi-Fi a bordo del catamar&aacute;n</p><p>&bull;* Es opcional y su realizaci&oacute;n est&aacute; sujeta a las condiciones climatol&oacute;gicas</p>', '<p>&bull;La experiencia spinnaker es opcional y est&aacute; sujeta a condiciones climatol&oacute;gicas</p>', '<p>&bull;Actividades adicionales en Isla Mujeres o Canc&uacute;n</p><p>&bull;Renta de carrito de golf o motoneta o bicicleta o cualquier otro veh&iacute;culo terrestre en Isla Mujeres</p><p>&bull;Comida o bocadillos durante la transportaci&oacute;n en catamar&aacute;n en viaje redondo</p><p>&bull;Bebidas en el club de playa</p><p>&bull;Suvenires, artesan&iacute;as, ropa, o cualquier otro producto o servicio no mencionado (ver lista de lo que incluye el tour)</p><p>&bull;Servicios de foto o video</p><p>&bull;Propinas</p><p>&bull;Impuesto por persona por uso de muelle y acceso a parque marino (11 USD aproximadamente)</p><p>&bull;Cualquier otro servicio o producto no mencionado en la lista de lo incluido</p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '8 Horas aprox.', NULL, NULL, NULL, 0, NULL, NULL, 8, 3, 1, 0.000000, 0.000000, '2016-07-27 13:47:34', '2016-12-13 19:32:01'),
(24, 'CITY TOUR MONTERREY', '35', '31', '25', '21', '2', '2', '29', '19', '<p>La Catedral, el Palacio Municipal, la fuente m&aacute;s famosa de Monterrey, la fuente de Neptuno y el Museo Metropolitano, en Morelos encontraras todos los suvenirs que debes llevar a tu familia y amigos, as&iacute; como los dulces regionales incluyendo las deliciosas glorias, despu&eacute;s de esto continuaremos en el Museo del Palacio de Gobierno un edificio de cantera con m&aacute;s de 100 a&ntilde;os de antig&uuml;edad en donde conoceremos la historia de la ciudad, continuaremos con nuestro recorrido en el Paseo Santa Lucia, un canal navegable a bordo de las embarcaciones que nos llevar&aacute;n hasta el Parque Fundidora, ah&iacute; comenzaremos lo importante de este parque, que es uno de los principales pulmones de Monterrey y cede de grandes eventos.</p>', '<p>A cualquier ciudad que vayas lo primero que debes conocer es un centro hist&oacute;rico y para comenzar con este tour visitaremos el Mirador del Obispado, en donde podr&aacute;s disfrutar la visita panor&aacute;mica de la ciudad, posteriormente tendr&aacute;s la oportunidad de visitar los principales atractivos tur&iacute;sticos de Monterrey.</p>', '<p>&bull;Ropa y calzado c&oacute;modo</p><p>&bull;C&aacute;mara fotogr&aacute;fica</p><p>&bull;Protector Solar</p><p>&bull;Gorra</p>', '<p>&bull;Tripulaci&oacute;n biling&uuml;e</p><p>&bull;Transportaci&oacute;n terrestre desde el Loby del hotel</p><p>&bull;Recorrido en Lancha Santa Lucia</p>', '<p>&bull;El recorrido dar&aacute; inicio a las 10 am</p>', '<p>&bull;Comidas, botanas y bebidas</p><p>&bull;Suvenires, artesan&iacute;as, ropa, o cualquier otro producto o servicio no mencionado (ver lista de lo que incluye el tour)</p><p>&bull;Servicios de foto o video</p><p>&bull;Propinas</p><p>&bull;Cualquier otro servicio o producto no mencionado en la lista de lo incluido</p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '6 a 8 Horas aprox.', NULL, NULL, NULL, 4, NULL, NULL, 7, 4, 1, 0.000000, 0.000000, '2016-07-28 20:07:14', '2016-07-28 20:07:14');
INSERT INTO `tours` (`id`, `NombTour`, `PrecTour`, `PrecTourDesc`, `PrecioMenor`, `PrecioMenorDesc`, `AnticipoAdulto`, `AnticipoMenor`, `BalanceAdulto`, `BalanceMenor`, `DescripTour`, `ResuDescTour`, `RecomenTour`, `Incluye`, `InfoAdicio`, `NoIncluye`, `Horario`, `Duracion`, `visitas`, `cantVentas`, `IdTransporte`, `IdOperador`, `horaPickUp`, `NumPersTour`, `IdDest`, `idCateg`, `ActivoTour`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(25, 'TOUR A LAS GRUTAS DE GARCIA', '40', '36', '29', '26', '2', '2', '34', '24', '<p>Visitaremos el museo de las grutas en donde a trav&eacute;s de una proyecci&oacute;n podr&aacute;s darte una idea de lo incre&iacute;ble que ser&aacute; tu recorrido.</p><p><br></p><p>Otro interesante lugar que visitaremos es el zool&oacute;gico Xempal, en el centro hist&oacute;rico, el museo del ojo con una muestra de artesan&iacute;as de todo M&eacute;xico en una casona estilo norestense y para terminar una riqu&iacute;sima panader&iacute;a tradicional con horno de le&ntilde;a. &nbsp;</p><p><br></p>', '<p>Las Grutas de Garc&iacute;a son uno de los atractivos tur&iacute;sticos m&aacute;s visitados de Nuevo le&oacute;n, ubicadas en el municipio de Garc&iacute;a, en este recorrido admiras las diferentes formaciones de estalactitas y estalagmitas en un recorrido de m&aacute;s de 45 minutos en su interior, adem&aacute;s subir&aacute;s a m&aacute;s de 200 mts en el telef&eacute;rico.</p>', '<p>&bull;Ropa y calzado c&oacute;modo</p><p>&bull;C&aacute;mara fotogr&aacute;fica</p><p>&bull;Protector Solar</p><p>&bull;Gorra</p>', '<p>&bull;Tripulaci&oacute;n biling&uuml;e</p><p>&bull;Transportaci&oacute;n terrestre desde el Loby del hotel</p><p>&bull;Entrada a las Grutas de Garcia</p><p>&bull;Servicio de Teleferico</p><p>&bull;Entrada zool&oacute;gico Xempal</p>', '<p>&bull;El recorrido dar&aacute; inicio a las 10 am</p>', '<p>&bull;Comidas, botanas y bebidas</p><p>&bull;Suvenires, artesan&iacute;as, ropa, o cualquier otro producto o servicio no mencionado (ver lista de lo que incluye el tour)</p><p>&bull;Servicios de foto o video</p><p>&bull;Propinas</p><p>&bull;Cualquier otro servicio o producto no mencionado en la lista de lo incluido</p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '6 a 8 Horas aprox.', NULL, NULL, NULL, 4, NULL, NULL, 7, 4, 1, 0.000000, 0.000000, '2016-07-28 20:15:56', '2016-07-28 20:15:56'),
(26, 'TOUR A LA COLA DE CABALLO', '36', '33', '25', '23', '2', '2', '31', '21', '<p>En este tour conocer&aacute;s la cascada m&aacute;s famosa del Estado, la Cola de Caballo, tambi&eacute;n te llevaremos a que conozcas dos de las tantas actividades de aventura que se encuentran en este Pueblo M&aacute;gico, el bungee m&aacute;s alto de M&eacute;xico y el recorrido en tirolesas llamado canopy, despu&eacute;s visitaremos el casco hist&oacute;rico de Santiago N.L., aqu&iacute; podr&aacute;s observar la arquitectura estilo norestense que es t&iacute;pica de esta regi&oacute;n, adem&aacute;s del museo de Santiago, la casa de la cultura, la iglesia Santiago Ap&oacute;stol y el mirador en donde seguramente no dejaras de tomar fotograf&iacute;as.</p><p>Finalmente llegaremos a la zona comercial de los Cavazos, un paisaje lleno de artesan&iacute;as, comida y dulces t&iacute;picos de la regi&oacute;n. Este tour es una combinaci&oacute;n de naturaleza, cultura norestense y tradicional.</p><p><br></p>', '<p>Villa de Santiago, nombrado en 2006 como uno de los Pueblos M&aacute;gicos de M&eacute;xico se distingue por sus hermosos paisajes, localizado en la Sierra Madre Oriental rodeado de bellas monta&ntilde;as.</p>', '<p>&bull;Ropa y calzado c&oacute;modo</p><p>&bull;C&aacute;mara fotogr&aacute;fica</p><p>&bull;Protector Solar</p><p>&bull;Gorra</p>', '<p>&bull;Tripulaci&oacute;n biling&uuml;e</p><p>&bull;Transportaci&oacute;n terrestre desde el Loby del hotel</p><p>&bull;Entrada a las Cola de Caballo</p>', '<p>&bull;El recorrido dar&aacute; inicio a las 10 am</p>', '<p>&bull;Comidas, botanas y bebidas</p><p>&bull;Suvenires, artesan&iacute;as, ropa, o cualquier otro producto o servicio no mencionado (ver lista de lo que incluye el tour)</p><p>&bull;Servicios de foto o video</p><p>&bull;Los recorridos en caballo o carreta no est&aacute;n incluidos</p><p>&bull;El costo del bungee y canopy no est&aacute; incluido y solo opera el fin de semana</p><p>&bull;Propinas</p><p>&bull;Cualquier otro servicio o producto no mencionado en la lista de lo incluido</p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '8 Horas aprox.', NULL, NULL, NULL, 0, NULL, NULL, 7, 4, 1, 0.000000, 0.000000, '2016-07-28 20:19:50', '2016-07-28 20:19:50'),
(27, 'XCARET Y CHICHEN ITZA', '237', '148', '148', '80', '15', '15', '133', '65', '<p>XCARET y CHICHEN ITZA, es la combinaci&oacute;n perfecta donde podras encontrar la magia del mundo Maya y su cultura y uno de los mejores eco parques que existen en el estado de Quintana Roo. Despu&eacute;s podr&aacute;s nadar y relajarte en las cristalinas aguas del cenote de ensue&ntilde;o: Ikil cuando tengas programado el viaje a Chichen Itza.</p><p><br></p><p>El parque Xcaret en la Riviera Maya, M&eacute;xico es una experiencia incomparable para todos los sentidos y para todas las nacionalidades. Este parque, cuyo nombre significa &ldquo;peque&ntilde;a caleta&rdquo; en maya antiguo, hoy invita a descubrir tradiciones ancestrales y maravillas naturales. As&oacute;mbrate frente a la extraordinaria belleza y explora un hermoso parque, &uacute;nico en el mundo por la naturaleza aut&eacute;ntica del lugar, sus ruinas mayas originales y la energ&iacute;a de cientos de mexicanos que te reciben con amor y profesionalismo, al llegar a Xcaret.</p><p><br></p><p>Tiene m&aacute;s de 45 actividades incluidas: un r&iacute;o subterr&aacute;neo que est&aacute; a 6 metros bajo la tierra y con 3 rutas &nbsp;para conocer, que podr&aacute;s recorrer con tu equipo de snorkel o bien, solo nadando a trav&eacute;s de sus 460 metros de largo; un mariposario, un acuario con especies del arrecife, un impresionante criadero de tortugas, delfinario, una hacienda henequenera, manaties, flamencos, guacamayas y hasta el maravilloso cementerio tradicional mexicano con sus 365 inigualables tumbas. Todo esto hace de Xcaret el Tour &nbsp;m&aacute;s solicitado y visitado de Cancun y la Riviera Maya.Al anochecer Xcaret se convierte en el maravilloso escenario del m&aacute;s incre&iacute;ble espect&aacute;culo mexicano que junto con sus 300 artistas en escena dejar&aacute; claro que M&eacute;xico re&uacute;ne la m&aacute;s grande, colorida, variada y maravillosa cultura del mundo. Reserva ya el Tour Xcaret Plus! que adem&aacute;s te incluye los alimentos, equipo de snorkel, y locker!</p><p>Adquiere este paquete y selecciona las fechas en que deseas realizar cada actividad.</p><p>*Ni&ntilde;os de 4-11 a&ntilde;os. Se considera precio de adulto a partir de 12 a&ntilde;os.</p><p><br></p>', '<p>Disfruta de nuestro combo en el que te adentrar&aacute;s en el mundo Maya conociendo uno de sus sitios arqueol&oacute;gicos m&aacute;s representativos, adem&aacute;s de visitar y disfrutar uno de los m&aacute;s emblem&aacute;ticos parques de diversiones en la Riviera Maya.</p>', '<p>&bull;Bloqueador solar ecol&oacute;gico</p><p>&bull;Traje de ba&ntilde;o</p><p>&bull;Ropa c&oacute;moda</p><p>&bull;Un cambio de ropa para que no sufras de fr&iacute;o por la tarde</p><p>&bull;Toalla</p><p>&bull;Dinero para tus propinas o cena.</p><p>&bull;Dinero para &nbsp;souvenirs</p><p>&bull;C&aacute;mara fotogr&aacute;fica &nbsp;y muchas ganas de divertirte.</p>', '<p>&bull;Transportaci&oacute;n desde su hotel a Xcaret y a Chichen Itza desde Canc&uacute;n y Riviera Maya.</p><p>&bull;Entrada al parque con acceso a las 45 actividades regulares del parque.</p><p>&bull;Entrada a las ruinas de Chochen Itza</p><p>&bull;Chalecos en el r&iacute;o.</p><p>&bull;Llantas en la playa.</p><p>&bull;Show de d&iacute;a noche y gu&iacute;a.</p><p>&bull;Una comida buffet con bebidas sin alcohol.</p><p>&bull;Una cerveza por persona (en el restaurante).</p><p>&bull;Locker y equipo de snorkel.</p>', '<p>&bull;Cada uno de los tours se realiza en d&iacute;as diferentes</p>', '<p>&bull;Actividades con delfines</p>', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '12 Horas aprox.', NULL, NULL, NULL, 0, NULL, NULL, 1, 6, 1, 0.000000, 0.000000, '2016-08-01 19:27:46', '2016-12-13 18:19:42'),
(30, 'TOUR A TULUM (BASICO)', '120', '90', '90', '80', '10', '10', '20', '20', '<p><span lang="ES">Tulum se encuentra a 132 kil&oacute;metros al sur de Canc&uacute;n, en lacosta este de la pen&iacute;nsula de Yucat&aacute;n, en la orilla del Mar Caribe.Anteriormente se le conoci&oacute; con el nombre de Zam&aacute;, que significa Ciudad delAmanecer.&nbsp;</span></p><p><strong><span lang="ES">Tulum - la ciudad amurallada&ldquo;</span></strong><span lang="ES"><br>Tulum es tambi&eacute;n la antigua palabra maya que significa &ldquo;muralla&rdquo; o &ldquo;palizada&rdquo;.Esto es adecuado porque las murallas que rodean el sitio permit&iacute;an que elfuerte de Tulum se utilizara como defensa contra la invasi&oacute;n. Tulum estabaprotegido por un lado por empinados acantilados y por el otro por un muro queten&iacute;a en promedio de tres a cinco metros de altura. El muro ten&iacute;a ocho metrosde grosor y 400 metros de largo en el lado paralelo al mar. Esto demuestracu&aacute;nta importancia ten&iacute;a como defensa para el pueblo maya. Tambi&eacute;n hay peque&ntilde;asestructuras que se utilizaban como torres de observaci&oacute;n que muestran una vezm&aacute;s cu&aacute;n bien defendida estaba la ciudad.&nbsp;</span></p><p><strong><span lang="ES">El Castillo</span></strong><span lang="ES"><br>El Castillo tiene una altura de 7.5 metros y cuenta con un peque&ntilde;o santuarioque parece haber sido usado como faro para las canoas que llegaban. Estesantuario marca una divisi&oacute;n en el arrecife barrera opuesto al sitio. Justoabajo del Castillo hay una cueva y una playa en una divisi&oacute;n en los acantiladosque debe haber sido perfecta para las canoas de comerciantes que llegaban. Estacaracter&iacute;stica del sitio es probablemente una de las razones por las que losmayas fundaron aqu&iacute; la ciudad de Tulum en primer lugar, pues despu&eacute;s Tulum seconvertir&iacute;a en un muy prominente puerto comercial.</span></p><p><span lang="ES">El Castillo y el Templo est&aacute;n decorados con figuras del &ldquo;diosbuceador&rdquo; de los Mayas. En todo Tulum podr&aacute; observar estucos y figuras de estedios. Se le asociaba con el dios de las abejas y con el planeta Venus, guardi&aacute;nde la costa y del comercio. Son visibles muchos murales antiguos, algunos losuficientemente v&iacute;vidos como para hacer que uno se pregunte cu&aacute;n recientementelos mayas dejaron en realidad este sitio sorprendente.</span></p><p><strong><span lang="ES">Tours a Tulum</span></strong><span lang="ES"><br>Sus alrededores con su belleza natural, f&aacute;cil acceso y tours diarios a Tulum deCanc&uacute;n han hecho de &eacute;ste el tercer sitio arqueol&oacute;gico prehisp&aacute;nico m&aacute;s visitadoen M&eacute;xico, despu&eacute;s de Teotihuacan y Chich&eacute;n Itz&aacute;.</span></p>', '<p><span lang="ES">Tulum est&aacute; asentado sobre el borde de un acantilado y desde &eacute;l se observan las vastas aguas color turquesa del mar. No es de sorprender queTulum sea una de las ruinas mayas m&aacute;s visitadas en M&eacute;xico; en verdad se trata de uno de los sitios m&aacute;s m&aacute;gicos de la Tierra.</span></p>', '<p>&bull;Llevar ropa c&oacute;moda y ligera.</p><p>&bull;Los detalles de la transportaci&oacute;n, hora de llegada y regreso, as&iacute; como puntos de encuentro te ser&aacute;n enviados por correo electr&oacute;nico despu&eacute;s de realizar tu reservaci&oacute;n y pago.</p><p>&bull;Las tarifas de menores son v&aacute;lidas para ni&ntilde;os de entre 4 y 11 a&ntilde;os de edad.</p><p>&bull;Los infantes de tres a&ntilde;os de edad no pagan.</p>', '<p>&bull;Transportaci&oacute;n redonda desde tu hotel o alg&uacute;n punto de reuni&oacute;n. Gu&iacute;a en la zona arqueol&oacute;gica.</p><p>&bull;Para expr&eacute;s en Valladolid Cita de entrada a Chichen Itz&aacute;.</p><p>&bull;Dos horas y media aproximadamente de tour guiado en la zona arqueol&oacute;gica.</p><p>&bull;Una hora de estancia libre en la zona arqueol&oacute;gica.</p><p>&bull;Comida buffet.</p><p>&bull;Visita a un cenote.</p>', '<p>&bull;Lleva contigo una cantidad de efectivo para productos y servicios que no est&aacute;n contemplados en el paquete.</p><p>&bull;Evita cargar con mochilas pesadas o Voluminosas.</p><p>&bull;Traer gorra o sombrero.</p><p>&bull;Usar lentes de sol.</p><p>&bull;Recuerda usar bloqueador solar biodegradable Traer toalla y traje de ba&ntilde;o.</p><p>&bull;Si padeces de alguna enfermedad o condici&oacute;n de salud f&iacute;sica, por favor cont&aacute;ctenos antes de hacer su reservaci&oacute;n, para que podamos asesorarte al respecto.</p>', '<p>&bull;Cualquier tipo de bebida durante todo el tour.</p><p>&bull;Servicio de fotos y/o video.</p><p>&bull;Uso de locker, chalecos salvavidas, o toallas en el cenote.</p><p>&bull;Otras actividades en Chichen Itz&aacute; o el cenote.</p><p>&bull;Propinas Suvenir, artesan&iacute;as, ropa, etc.</p><p>&bull;Cualquier otro producto no mencionado en la lista de los que el tour incluye.</p>', '10:00PM', '1 hra', NULL, NULL, NULL, 0, NULL, NULL, 8, 2, 1, 0.000000, 0.000000, '2016-12-20 18:59:24', '2016-12-20 19:00:25'),
(32, 'TULUM PLAYA EXPRESS', '120', '90', '90', '80', '10', '10', '20', '20', '<p>Conoce la maravilla arqueol&oacute;gica de Tulum en s&oacute;lo medio d&iacute;&shy;a, este tour es ideal para aquellos que quieren regresar temprano para hacer otra actividad por la tarde.</p><p>Tulum es una joya de la cultura Maya por su impresionante arquitectura y ubicaci&oacute;n en un acantilado frente a las aguas turquesa del Mar Caribe, es la tercera zona prehisp&aacute;nica m&aacute;s visitada de M&eacute;xico.</p><p><br></p><p>No te puedes ir de Canc&uacute;n sin visitar este incre&iacute;&shy;ble lugar lleno de historia y naturaleza, por lo que hemos organizado este breve tour de aproximadamente 4 horas con transportaci&oacute;n incluida que se acomodar&aacute; a tu itinerario. Descubre con nosotros una de las civilizaciones m&aacute;s apasionantes de la antig&uuml;edad: Los Mayas.</p><!--[if !supportLineBreakNewLine]--><p><br></p><!--[endif]--><p><br></p>', '<p>Conoce la maravilla arqueol&oacute;gica de Tulum en s&oacute;lo medio d&iacute;&shy;a, este tour es ideal para aquellos que quieren regresar temprano para hacer otra actividad por la tarde.</p><p>Tulum es una joya de la cultura Maya por su impresionante arquitectura y ubicaci&oacute;n en un acantilado frente a las aguas turquesa del Mar Caribe, es la tercera zona prehisp&aacute;nica m&aacute;s visitada de M&eacute;xico.</p>', '<p>PUEDE LLEVAR:</p><p>Llevar zapatos c&oacute;modos para caminar</p><p>Dinero efectivo adicional para compra de souvenirs</p><p>C&aacute;mara</p><p>Gorra o sombrero</p><p>Lentes para sol</p><p>Bloqueador solar</p>', '<p>Transportaci&oacute;n viaje redondo desde tu hotel Canc&uacute;n o la Riviera Maya.</p><p>2 horas de visita a la zona arqueol&oacute;gica de Tulum (La primera hora con gu&iacute;&shy;a y la segunda libre para tomar fotograf&iacute;&shy;a, ir a la playa o al mercado de artesan&iacute;&shy;as)</p><p>Cuota de entrada a Tulum</p>', '<p>Menores de cualquier edad son bienvenidos</p><p>La tarifa del menor aplica de 5 a 11 a&ntilde;os</p><p>Menores de 5 a&ntilde;os son gratis</p><p>Informaci&oacute;n sobre la transportaci&oacute;n:</p><p>Transportaci&oacute;n est&aacute; disponible en la mayor&iacute;&shy;a de los hoteles en Canc&uacute;n y la Riviera Maya.La hora exacta de pick-up ser&aacute; enviada despu&eacute;s de reservar.</p><p>En caso de no tener transportaci&oacute;n desde alg&uacute;n hotel en espec&iacute;&shy;fico le diremos el punto de encuentro m&aacute;s cercano a su hotel.</p>', '<p>Alimentos</p><p>Actividades extras</p><p>Bebidas</p><p>Fotos y videos</p>', '10:00PM', '4 horas', NULL, NULL, NULL, 0, NULL, NULL, 8, 2, 1, 0.000000, 0.000000, '2016-12-20 19:07:47', '2016-12-20 19:09:26'),
(34, 'TULUM PLAYA (CAOBA+ CENOTE + PLAYA)', '200', '170', '190', '170', '30', '30', '150', '150', '<p>El tour saldr&aacute; de Canc&uacute;n. La aventura comienza con una visita a Tulum, donde llegar&aacute; a las 10 am y tendr&aacute; una visita guiada y tiempo libre para relajarse. Usted tomar&aacute; un servicio de transporte a su pr&oacute;ximo destino a las 12:15 pm para llegar a Coba por 1 pm. Antes de visitar las ruinas se dirigir&aacute; al restaurante para comer comida del buffet. Cuando termine con la comida, comenzar&aacute; el tour del sitio arqueol&oacute;gico maya, d&aacute;ndole la oportunidad de subir la pir&aacute;mide maya m&aacute;s alta en la pen&iacute;nsula de Yucat&aacute;n llamada Nohoch Muul. M&aacute;s tarde, se trasladar&aacute; al hermoso cenote de Tamchah-ha, donde podr&aacute; disfrutar de la tranquilidad de este hermoso lugar. Para terminar el recorrido, usted visitar&aacute; la ciudad de Playa del Carmen por un per&iacute;odo de 1 hora, para que pueda hacer cualquier actividad a Su gusto o comprar hermosos recuerdos.<br><!--[if !supportLineBreakNewLine]--><br></p>', '<p>Este tour ofrece una experiencia &uacute;nica llena de sitios arqueol&oacute;gicos conociendo dos tradiciones: Tulum &amp; Coba. Tambi&eacute;n visitar&aacute; un hermoso Cenote y finalizar&aacute; el tour en Playa del Carmen</p>', '<p>PUEDE LLEVAR:</p><p>Llevar zapatos c&oacute;modos para caminar</p><p>Dinero efectivo adicional para compra de souvenirs</p><p>C&aacute;mara</p><p>Gorra o sombrero</p><p>Lentes para sol</p><p>Bloqueador solar</p>', '<p>Todas las entradas a los parques</p><p>Dirigido por un gu&iacute;a local<br>Transporte terrestre<br>Entrada y visita guiada de los sitios arqueol&oacute;gicos y cenote<br>Comida<br>2 botellas de agua (500 ml)<br>Paraguas</p>', '<p>.</p>', '<p>Propinas (recomendado)</p><p>Lentes de Sol.</p>', '10:00PM', 'TODO EL DIA', NULL, NULL, NULL, 0, NULL, NULL, 8, 6, 1, 0.000000, 0.000000, '2016-12-20 19:26:32', '2016-12-20 19:26:32'),
(35, 'JUNGLE TOUR', '120', '80', '80', '90', '30', '30', '20', '20', '<p>JUNGLE TOUR</p><p><br></p><p>El Jungle Tour es el tour de snorkel m&aacute;s conocido de Canc&uacute;n. Nadie lo hace mejor que Aquaworld.</p><p><br></p><p>El Arrecife Mesoamericano es el segundo m&aacute;s grande del mundo y presenta una gran variedad de sitios de snorkel en Canc&uacute;n.</p><p><br></p><p>Sigue a tu gu&iacute;a a trav&eacute;s de la Laguna Nichupt&eacute; a bordo de tu propia lancha r&aacute;pida para dos personas. El tour incluye instrucciones de seguridad y un gu&iacute;a biling&uuml;e quien te ense&ntilde;ar&aacute; las se&ntilde;ales de mano antes de la salida.</p><p><br></p><p>Si&eacute;ntate y navega por los canales sinuosos mientras disfrutas de la naturaleza y observas la vida salvaje. La laguna es el hogar de muchas criaturas como la rana leopardo, la iguana, la tortuga blanca y el cangrejo. &iexcl;Est&aacute;s en la selva!</p><!--[if !supportLineBreakNewLine]--><p><br></p><!--[endif]--><p><br></p>', '<p>EL JUNGLE TOUR ES EL N&Uacute;MERO UNO DE LAS ACTIVIDADES EN CANC&Uacute;N</p><p>Emerger de los impresionantes manglares hacia el Caribe y sus aguas turquesas te quitar&aacute; el aliento. Mientras realizas snorkel en el arrecife de Punta Nizuc entender&aacute;s porque esta zona se conoce por su abundante vida marina, sus peces e incre&iacute;bles formaciones coralinas. Nuestro equipo de gu&iacute;as de snorkel te ayudar&aacute;n a identificar lo importante y asistir&aacute;n a los principiantes.</p>', '<p>Restricciones:<br>2 personas por barco &ndash; se deber&aacute;n comprar dos espacios para salir solo<br>Los participantes deben saber nadar<br>Mujeres embarazadas no pueden realizar esta actividad<br>L&iacute;mite de peso: 500 libras/250 kilos (peso combinado de las 2 personas)<br>Edad m&aacute;xima: 65 a&ntilde;os<br><br>Edad m&iacute;nima :<br>Edad m&iacute;nima: 5 a&ntilde;os<br>Edad m&iacute;nima para manejar: 18 a&ntilde;os</p>', '<p>Paseo en lancha r&aacute;pida</p><p>Chaleco salvavidas (obligatorio)</p><p>Gu&iacute;a de snorkel</p><p>Equipo</p><p>Tubo de snorkel nuevo</p><p>Refrescos</p>', '<p>.</p>', '<p>IVA 16%</p><p>$10 usd de muelle/parque marino &ndash; una fracci&oacute;n de su pago de derechos es destinado a la conservaci&oacute;n de MUSA</p><p>Toallas</p><p>Fotos</p><!--[if !supportLineBreakNewLine]--><p><br></p><!--[endif]--><p><br></p>', '10:00PM', '4 horas', NULL, NULL, NULL, 0, NULL, NULL, 1, 3, 1, 0.000000, 0.000000, '2016-12-20 19:34:11', '2016-12-20 19:34:40'),
(36, 'NADO CON DELFINES', '100', '90', '90', '80', '30', '30', '90', '80', '<p>Entretenimiento e interacci&oacute;n con delfines + Club de Playa + Alimentos</p><p>Si nadar con delfines es uno de tus grandes sue&ntilde;os, ahora es el momento para hacerlo realidad en las aguas color turquesa del Mar Caribe. El programa Dolphin Swim Adventure en Isla Mujeres ubicada a solo 20 minutos en barco desde Canc&uacute;n Zona Hotelera, te permitir&aacute; estar m&aacute;s cerca de los delfines de lo que alguna vez imaginaste en este incre&iacute;ble para&iacute;so tropical.</p><p>Conocer&aacute;s el mundo de los mam&iacute;feros marinos a trav&eacute;s de una m&aacute;scara de esn&oacute;rquel y se crear&aacute; un lazo incre&iacute;ble entre los delfines y t&uacute;. Se acercar&aacute;n, te dar&aacute;n la bienvenida con un beso, y te llevar&aacute;n a pasear en su barriguita con el famoso belly ride. Tambi&eacute;n te demostrar&aacute;n sus habilidades con el famoso hand target cuando el delf&iacute;n brinca hacia tus manos. Luego disfrutar&aacute;s de un delicioso buffet con barra libre y te relajar&aacute;s en la tranquilidad isle&ntilde;a de Isla Mujeres. Tambi&eacute;n podr&aacute;s quedarte dentro de nuestras intalaciones o bien salir a explorar la bella Isla Mujeres.</p>', '<p>Isla Mujeres en Canc&uacute;n M&eacute;xico es el lugar privilegiado en el que se encuentra el parque Dolphin Discovery Canc&uacute;n, donde puedes hacer realidad tu sue&ntilde;o de nadar con delfines en el Caribe mexicano.</p>', '<p>Por razones de seguridad, a mujeres con embarazo de 5 meses o m&aacute;s no se les permite participar en ninguna de nuestras actividades acu&aacute;ticas. Solo en el programa Encuentro pueden participar las mujeres con embarazo menor a 5 meses &uacute;nicamente si son acompa&ntilde;adas por otro adulto y una vez que hayan firmado el formulario de responsabilidad.</p><p>Es importante llegar 30 minutos antes de su programa, recuerda que antes de tu nado con delfines recibir&aacute;s una orientaci&oacute;n.</p><p>Si tiene alg&uacute;n problema f&iacute;sico o de salud, p&oacute;ngase en contacto con nuestro call center antes de realizar la reserva para proporcionarle toda la informaci&oacute;n acerca de nuestros servicios.</p><p>Recuerde usar protector solar biodegradable, para cuidar su piel, el medio ambiente y las especies marinas.</p><p>Es importante llevar toallas y dinero en efectivo para taxis, compras, comidas y souvenirs.</p>', '<p>&nbsp;INCLUYE</p><p>Transportaci&oacute;n terrestre</p><p>Adultos (+ 1.42 m.)</p><p>&nbsp;* Diariamente &nbsp;Belly ride</p><p>Saludo de mano</p><p>Beso</p><p>Hand target</p><p>Boogie push</p><p>Abrazo 15 minutos de informaci&oacute;n y 50 minutos en el agua.</p><p>Viaje redondo en Ferry Canc&uacute;n - Isla Mujeres - Canc&uacute;n.</p><p>Desayuno continental, Barra libre nacional y comida buffet.</p><p>Beach Club (casilleros, duchas, piscina).</p><p>Tour al centro de Isla Mujeres.</p><p>Tour en bicicleta.&nbsp;</p>', '<p>Ni&ntilde;os (1.20 m. &ndash; 1.41 m.)</p><p><br></p><p>Infantes (1 - 5 a&ntilde;os y menores de 90CM) GRATIS *Por favor ll&aacute;manos</p><p>&nbsp;* Ni&ntilde;os tienen que ir acompa&ntilde;ados de un adulto con boleto pagado&nbsp;</p><p>Para incluir en su reservacion ni&ntilde;os de 1-5 a&ntilde;os, favor de hacer menci&oacute;n en la secci&oacute;n de comentarios.</p><p>En Isla Mujeres, los grupos tienen un m&aacute;ximo de 12 personas.</p>', '<p>Fotos de su experiencia con los delfines.</p><p>Otras actividades en Canc&uacute;n o Isla Mujeres.</p><p>Muellaje de $8 d&oacute;lares (USD) por participante y acompa&ntilde;ante, este cargo deber&aacute;s pagarlo al momento de tu registro. Ni&ntilde;os a partir de 4 a&ntilde;os pagan impuesto de muellaje.</p>', '10:30 AM 12:00 PM 01:30 PM 03:30 PM', '1 HORA', NULL, NULL, NULL, 0, NULL, NULL, 2, 1, 1, 0.000000, 0.000000, '2016-12-20 19:44:34', '2016-12-20 19:45:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transportes`
--

CREATE TABLE IF NOT EXISTS `transportes` (
`id` int(11) NOT NULL,
  `NombTrans` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(77, 'Jesus Abelardo Acevedo Santos', 'laloas_2004@yahoo.com.mx', '$2y$10$t1cd3PeWwck78B8wKvy50eYUJtyCm7puTLaP9N1RqBY1fMDR2ss8.', 1, '1wltEvyt83QUZbkY8TV3feiCTDcp8nHJaPBR8L6Rzx5YxsL2hJcnqd0vAU6q', '2016-07-20 22:35:31', '2016-11-15 01:46:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
`id` int(11) unsigned NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdPago` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `VentPagado` tinyint(1) NOT NULL DEFAULT '0',
  `VentConfirm` tinyint(1) NOT NULL DEFAULT '0',
  `hotelPickUp` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lobby` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `telHotel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `habitaPickup` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ComentVent` text COLLATE utf8_unicode_ci NOT NULL,
  `fechaReser` datetime NOT NULL,
  `folio` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `IdUser`, `IdPago`, `total`, `VentPagado`, `VentConfirm`, `hotelPickUp`, `lobby`, `telHotel`, `habitaPickup`, `ComentVent`, `fechaReser`, `folio`, `created_at`, `updated_at`) VALUES
(19, 77, 47, '0', 1, 0, 'HILTON', '222', '', '320', 'un comentario', '2016-08-11 08:00:00', 0, '2016-08-09 21:32:14', '2016-08-09 21:32:55'),
(20, 77, 48, '0', 1, 0, 'riu palace', '200', '018183326461', '200', 'un comentario', '2016-08-17 02:00:00', 157720, '2016-08-10 20:59:50', '2016-08-10 21:18:28'),
(21, 77, 49, '0', 1, 0, '', '', '', '', '', '2016-08-10 00:00:00', 157721, '2016-08-10 21:22:21', '2016-08-10 22:07:52'),
(22, 77, 50, '0', 1, 0, NULL, '', '', NULL, '', '0000-00-00 00:00:00', 0, '2016-08-11 15:54:44', '2016-08-11 15:54:44'),
(23, 77, 51, '0', 1, 0, '', '', '', '', '', '2016-08-11 00:00:00', 157723, '2016-08-11 15:58:59', '2016-08-11 16:32:00'),
(24, 77, 52, '0', 1, 0, 'HILTON', '', '888888888', '200', 'UN COMENTARIO', '2016-08-11 00:00:00', 157724, '2016-08-11 17:53:17', '2016-08-11 18:35:59'),
(25, 77, 53, '0', 1, 0, 'HILTON', '', '018183326461', '320', 'UN COMENTARIO', '2016-08-25 00:00:00', 167725, '2016-08-11 18:37:44', '2016-08-11 18:40:21'),
(26, 77, 54, '0', 1, 0, NULL, '', '', NULL, '', '0000-00-00 00:00:00', 187726, '2016-08-29 15:43:34', '2016-08-29 15:43:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventasdetalle`
--

CREATE TABLE IF NOT EXISTS `ventasdetalle` (
`id` int(11) NOT NULL,
  `idVenta` int(11) NOT NULL,
  `IdTour` int(11) NOT NULL,
  `CantPerso` int(11) NOT NULL,
  `CantMenor` int(11) NOT NULL,
  `PrecioTour` decimal(10,0) NOT NULL,
  `PrecTourDesc` decimal(10,0) NOT NULL,
  `PrecioMenor` decimal(10,0) NOT NULL,
  `PrecioMenorDesc` decimal(10,0) NOT NULL,
  `AnticipoAdulto` decimal(10,0) NOT NULL,
  `AnticipoMenor` decimal(10,0) NOT NULL,
  `BalanceAdulto` decimal(10,0) NOT NULL,
  `BalanceMenor` decimal(10,0) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ventasdetalle`
--

INSERT INTO `ventasdetalle` (`id`, `idVenta`, `IdTour`, `CantPerso`, `CantMenor`, `PrecioTour`, `PrecTourDesc`, `PrecioMenor`, `PrecioMenorDesc`, `AnticipoAdulto`, `AnticipoMenor`, `BalanceAdulto`, `BalanceMenor`, `created_at`, `updated_at`) VALUES
(6, 19, 25, 1, 0, '40', '36', '29', '26', '2', '2', '34', '24', '2016-08-09 21:32:14', '2016-08-09 21:32:14'),
(7, 20, 15, 1, 0, '75', '35', '75', '35', '10', '10', '25', '25', '2016-08-10 20:59:50', '2016-08-10 20:59:50'),
(8, 21, 15, 1, 0, '75', '35', '75', '35', '10', '10', '25', '25', '2016-08-10 21:22:21', '2016-08-10 21:22:21'),
(9, 22, 16, 3, 3, '75', '35', '75', '35', '10', '10', '25', '25', '2016-08-11 15:54:44', '2016-08-11 15:54:44'),
(10, 23, 15, 1, 3, '75', '35', '75', '35', '10', '10', '25', '25', '2016-08-11 15:58:59', '2016-08-11 15:58:59'),
(11, 24, 15, 1, 0, '75', '35', '75', '35', '10', '10', '25', '25', '2016-08-11 17:53:17', '2016-08-11 17:53:17'),
(12, 25, 16, 4, 2, '75', '35', '75', '35', '10', '10', '25', '25', '2016-08-11 18:37:44', '2016-08-11 18:37:44'),
(13, 26, 18, 1, 1, '85', '40', '85', '40', '10', '10', '30', '30', '2016-08-29 15:43:34', '2016-08-29 15:43:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventasmebresia`
--

CREATE TABLE IF NOT EXISTS `ventasmebresia` (
`id` int(11) NOT NULL,
  `idUsu` int(11) NOT NULL,
  `idMemb` int(11) NOT NULL,
  `idAgente` int(11) DEFAULT NULL,
  `idPago` int(11) DEFAULT NULL,
  `ComentVent` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asociados`
--
ALTER TABLE `asociados`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`), ADD KEY `email_2` (`email`);

--
-- Indices de la tabla `boletin`
--
ALTER TABLE `boletin`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configs`
--
ALTER TABLE `configs`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `destinos`
--
ALTER TABLE `destinos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
 ADD PRIMARY KEY (`id`), ADD KEY `pais-estado` (`IdPais`);

--
-- Indices de la tabla `imagen_tour`
--
ALTER TABLE `imagen_tour`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`), ADD KEY `tour_id` (`tour_id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `monedas`
--
ALTER TABLE `monedas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `operadores`
--
ALTER TABLE `operadores`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `refeasociados`
--
ALTER TABLE `refeasociados`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `userid_IdUsuario` (`IdUsuario`);

--
-- Indices de la tabla `sociosadicionales`
--
ALTER TABLE `sociosadicionales`
 ADD PRIMARY KEY (`id`), ADD KEY `id_user` (`IdUser`);

--
-- Indices de la tabla `tours`
--
ALTER TABLE `tours`
 ADD PRIMARY KEY (`id`), ADD KEY `Destino` (`IdDest`), ADD KEY `Categoria` (`idCateg`), ADD FULLTEXT KEY `Nombretour` (`NombTour`);

--
-- Indices de la tabla `transportes`
--
ALTER TABLE `transportes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD KEY `id` (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventasdetalle`
--
ALTER TABLE `ventasdetalle`
 ADD PRIMARY KEY (`id`), ADD KEY `idVenta` (`idVenta`);

--
-- Indices de la tabla `ventasmebresia`
--
ALTER TABLE `ventasmebresia`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asociados`
--
ALTER TABLE `asociados`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT de la tabla `boletin`
--
ALTER TABLE `boletin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `configs`
--
ALTER TABLE `configs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `destinos`
--
ALTER TABLE `destinos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT de la tabla `imagen_tour`
--
ALTER TABLE `imagen_tour`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=193;
--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `monedas`
--
ALTER TABLE `monedas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `operadores`
--
ALTER TABLE `operadores`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `refeasociados`
--
ALTER TABLE `refeasociados`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT de la tabla `sociosadicionales`
--
ALTER TABLE `sociosadicionales`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `tours`
--
ALTER TABLE `tours`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `transportes`
--
ALTER TABLE `transportes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `ventasdetalle`
--
ALTER TABLE `ventasdetalle`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `ventasmebresia`
--
ALTER TABLE `ventasmebresia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `socios`
--
ALTER TABLE `socios`
ADD CONSTRAINT `Socios` FOREIGN KEY (`IdUsuario`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tours`
--
ALTER TABLE `tours`
ADD CONSTRAINT `tours_ibfk_1` FOREIGN KEY (`IdDest`) REFERENCES `destinos` (`id`),
ADD CONSTRAINT `tours_ibfk_2` FOREIGN KEY (`idCateg`) REFERENCES `categorias` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
