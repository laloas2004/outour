-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2016 a las 01:03:34
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
  `rol` enum('1','2') COLLATE utf8_unicode_ci NOT NULL COMMENT '1.- Coordinador, 2.- Vendedor',
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asociados`
--

INSERT INTO `asociados` (`id`, `NombAsoc`, `ApeAsoc`, `nacimiento`, `cordinador_id`, `numTarjeta`, `rol`, `email`, `pass`, `calle`, `colonia`, `id_estado`, `id_pais`, `municipio`, `TelFijo`, `TelCel`, `cp`, `num`, `ban_rfc`, `ban_curp`, `ban_titular`, `ban_banco`, `ban_tipo`, `ban_clabe`, `ban_cuenta`, `captura`, `confirm_email`, `created_at`, `updated_at`) VALUES
(54, 'Jesus Abelardo', 'Acevedo Santos', '1985-01-24', 0, '1000054', '1', 'laloas_2004@yahoo.com.mx', 'abelardo', 'Gonzalitos #829', 'Chapultepec', 19, 1, 'san nicolas de os garza', '8183326461', '824429812', '66450', '66450', 'AESJ850124M9A', 'AESJ850124M9AAAAAA', 'Jesus Abelardo Acevedo Santos', '33333333333333333333', 'Debito', '111111111111111111', '333333333222222', 1, 0, '2016-07-21 15:25:22', '2016-07-22 18:46:10'),
(55, 'Jesus Abelardo', 'Acevedo Santos', '0000-00-00', 0, '2000055', '2', 'abelardo@websiete.com', 'abelardo', '', '', 0, 1, '', '', '', '', '', '', '', '', '', 'Debito', '', '', 0, 0, '2016-07-22 18:21:35', '2016-07-22 18:21:35');

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
  `UrlImg` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AltText` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `imagen_tour`
--

INSERT INTO `imagen_tour` (`id`, `tour_id`, `UrlImg`, `thumb`, `AltText`, `created_at`, `updated_at`) VALUES
(1, 2, 'cancun/tour-1.jpg', 'cancun/thumbs/thumb-1.jpg', NULL, '2016-07-01 00:00:00', '2016-07-01 00:00:00'),
(2, 3, 'tour-2.jpg', '', NULL, '2016-07-01 00:00:00', '2016-07-01 00:00:00'),
(3, 2, 'cancun/tour-1-1.jpg', 'cancun/thumbs/thumb-1.jpg', NULL, '2016-07-01 00:00:00', '2016-07-01 00:00:00'),
(4, 2, 'cancun/tour-1-2.jpg', 'cancun/thumbs/thumb-1.jpg', NULL, '2016-07-01 00:00:00', '2016-07-01 00:00:00'),
(5, 2, 'cancun/tour-1-2.jpg', 'cancun/thumbs/thumb-1.jpg', NULL, '2016-07-01 00:00:00', '2016-07-01 00:00:00'),
(6, 2, 'cancun/tour-1-2.jpg', 'cancun/thumbs/thumb-1.jpg', NULL, '2016-07-01 00:00:00', '2016-07-01 00:00:00');

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
(1, 'Pesos Mex', 'MXN', 18, 1, 0, '2016-06-21 00:00:00', NULL),
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(28, 77, NULL, 'PAY-8XB28412SA919763HK6H3MRY', 1854, '', 'adavila-buyer-1@outour.mx', '6W3QVNYYW58VA', '2016-07-20 17:35:56', '2016-07-20 17:35:56');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `FechVigSoc` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`id`, `NombSocio`, `ApeSocio`, `TelSocio`, `TelCelSocio`, `SexSocio`, `FechNacSocio`, `IdPais`, `IdEstado`, `IdCiudad`, `IdAsociado`, `IdUsuario`, `IdTipoMembr`, `numTarjeta`, `capturado`, `FechVigSoc`, `created_at`, `updated_at`) VALUES
(70, 'Jesus Abelardo Acevedo Santos', '', '044444444', '8183326461', 'F', '1985-01-24', 1, 0, 0, 51, 77, 2, '2 618804 123352 77', 1, '2021-07-20', '2016-07-20 17:35:31', '2016-07-20 23:19:29');

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
  `QueLlevar` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tours`
--

INSERT INTO `tours` (`id`, `NombTour`, `PrecTour`, `PrecTourDesc`, `PrecioMenor`, `PrecioMenorDesc`, `AnticipoAdulto`, `AnticipoMenor`, `BalanceAdulto`, `BalanceMenor`, `DescripTour`, `ResuDescTour`, `RecomenTour`, `QueLlevar`, `Incluye`, `InfoAdicio`, `NoIncluye`, `Horario`, `Duracion`, `visitas`, `cantVentas`, `IdTransporte`, `IdOperador`, `horaPickUp`, `NumPersTour`, `IdDest`, `idCateg`, `ActivoTour`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(1, 'Snorkel en las musas en Isla Mujeres', '1000', '900', '0', '0', '0', '0', '0', '0', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tincidunt dolor nec ligula egestas, et pellentesque enim rhoncus. Vestibulum lacinia ut risus vel tristique. Sed vel gravida massa. Proin posuere cursus fringilla. Ut dui orci, sodales eget porttitor sit amet, mollis condimentum felis. Duis elit massa, aliquet vitae nibh eget, tristique mollis velit. Vestibulum vehicula nec ex sed congue. Vestibulum vel condimentum ex. Aliquam non metus nec leo vulputate fringilla a ac purus. Integer semper lobortis nulla, nec auctor leo ultricies sed. Nunc lobortis rhoncus ligula, aliquet maximus sapien scelerisque hendrerit. Duis sit amet porttitor turpis, non vestibulum nisi. Duis mattis neque vel porttitor tristique.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tincidunt dolor nec ligula egestas, et pellentesque enim rhoncus. Vestibulum lacinia ut risus vel tristique. Sed vel gravida massa. Proin posuere cursus fringilla. Ut dui orci, sodales eget porttitor sit amet, mollis condimentum felis. Duis elit massa, aliquet vitae nibh eget, tristique mollis velit. Vestibulum vehicula nec ex sed congue. Vestibulum vel condimentum ex. Aliquam non metus nec leo vulputate fringilla a ac purus. Integer semper lobortis nulla, nec auctor leo ultricies sed. Nunc lobortis rhoncus ligula, aliquet maximus sapien scelerisque hendrerit. Duis sit amet porttitor turpis, non vestibulum nisi. Duis mattis neque vel porttitor tristique.', NULL, 'Que llevar', NULL, NULL, 'no incluye', '10:00 AM a 6:00PM', NULL, 0, 0, NULL, NULL, '9:00 AM', 1, 2, 2, 0, 21.147602, -86.791550, '2016-06-27 00:00:00', NULL),
(2, 'NADO CON EL TIBURON BALLENA', '170', '105', '170', '105', '10', '10', '95', '95', 'Nadar con los Tiburones Ballena en Cancún, es una de las mejores experiencias que podrás vivir, ya que esto cambiará tu manera de ver a la naturaleza para siempre, considerando que tendrás la oportunidad de ver y nadar con el pez más grande del mundo ya que su tamaño es de aproximadamente 12 metros de largo y un peso de 20 toneladas. En los últimos años se ha incrementado el interés por los viajeros a realizar esta actividad, ya que esta actividad no representa ningún riesgo para ti, pues esta belleza de animal se alimenta mediante filtración de agua fitoplancton, algas y pequeños cangrejos, calamares, cangrejos y atún.  Qué esperas ven y vive una de las actividades que cambiara tu forma de ver la naturaleza.', 'El nado con Los Tiburones Ballena, es una de las actividades más esperadas por los viajantes de Cancún y la Riviera Maya, ya que esta es una de las especies más amigables que existen y más impresionantes por su tamaño ...', 'Evita cargar mochilas o bolsas pesadas o voluminosas. Viste ropa y calzado cómodos, así como lentes de sol y gorra. Trae una toalla y traje de baño, además de cámara sumergible. El protector solar que uses deberá ser 100 % biodegradable. Trae contigo algo de efectivo y una tarjeta de débito o crédito para gastos no previstos, en caso de que requieras dejar un deposito por el uso de algún equipo, o para pagar productos o servicios no contemplados en el tour. Si padeces de algún problema de salud o impedimento físico, por favor contáctanos antes de reservar para que podamos asesorarte al respecto. En caso de cualquier duda o pregunta, favor de comunicarte con nosotros.', NULL, '•	Transportación terrestre desde tu hotel (o punto de encuentro, para ciertos hoteles) y de vuelta. •	Transportación marítima hasta el punto donde son avistados los tiburones ballena para nadar con ellos y de vuelta •	Guía bilingüe. •	Desayuno Ligero.  •	Comida.  •	Agua embotellada y refrescos.  •	Cerveza (después de haber hecho el snorkel con el Tiburón Ballena) •	Uso de tubo de Snorkel.  •	Visor.  •	Aletas.  •	Chaleco Salvavidas.', 'Favor de verificar la hora exacta de tu transportación y otros detalles del servicio en la confirmación de servicio que recibirás vía correo electrónico después de completar tu proceso de reservación y pago. En esta actividad solo se permite un máximo de 10 ocupantes por embarcación. El uso del chaleco salvavidas es obligatorio durante todo el recorrido. Este servicio no es recomendable para mujeres embarazadas, personas con problemas de columna, cualquier tipo de lesión o cirugías recientes o problemas cardiacos.', '•	Actividades opcionales adicionales en Cancún. \r\n•	Comida o bebidas fuera de lo enlistado de inclusiones. \r\n•	Suvenir, artesanías, o cualquier otro producto o servicio no mencionado en la lista de inclusiones. \r\n•	Servicios de foto o video. \r\n•	Propinas. \r\n•	Toallas. \r\n•	Impuestos de uso de muelle.\r\n', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '6 Horas aprox.', NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 1, 21.147602, -86.791550, '0000-00-00 00:00:00', NULL),
(3, 'NADO CON EL TIBURON BALLENA', '170', '105', '170', '105', '10', '10', '95', '95', 'Nadar con los Tiburones Ballena en Cancún, es una de las mejores experiencias que podrás vivir, ya que esto cambiará tu manera de ver a la naturaleza para siempre, considerando que tendrás la oportunidad de ver y nadar con el pez más grande del mundo ya que su tamaño es de aproximadamente 12 metros de largo y un peso de 20 toneladas. En los últimos años se ha incrementado el interés por los viajeros a realizar esta actividad, ya que esta actividad no representa ningún riesgo para ti, pues esta belleza de animal se alimenta mediante filtración de agua fitoplancton, algas y pequeños cangrejos, calamares, cangrejos y atún.  Qué esperas ven y vive una de las actividades que cambiara tu forma de ver la naturaleza.', 'El nado con Los Tiburones Ballena, es una de las actividades más esperadas por los viajantes de Cancún y la Riviera Maya, ya que esta es una de las especies más amigables que existen y más impresionantes por su tamaño ...', 'Evita cargar mochilas o bolsas pesadas o voluminosas. Viste ropa y calzado cómodos, así como lentes de sol y gorra. Trae una toalla y traje de baño, además de cámara sumergible. El protector solar que uses deberá ser 100 % biodegradable. Trae contigo algo de efectivo y una tarjeta de débito o crédito para gastos no previstos, en caso de que requieras dejar un deposito por el uso de algún equipo, o para pagar productos o servicios no contemplados en el tour. Si padeces de algún problema de salud o impedimento físico, por favor contáctanos antes de reservar para que podamos asesorarte al respecto. En caso de cualquier duda o pregunta, favor de comunicarte con nosotros.', NULL, '•	Transportación terrestre desde tu hotel (o punto de encuentro, para ciertos hoteles) y de vuelta. •	Transportación marítima hasta el punto donde son avistados los tiburones ballena para nadar con ellos y de vuelta •	Guía bilingüe. •	Desayuno Ligero.  •	Comida.  •	Agua embotellada y refrescos.  •	Cerveza (después de haber hecho el snorkel con el Tiburón Ballena) •	Uso de tubo de Snorkel.  •	Visor.  •	Aletas.  •	Chaleco Salvavidas.', 'Favor de verificar la hora exacta de tu transportación y otros detalles del servicio en la confirmación de servicio que recibirás vía correo electrónico después de completar tu proceso de reservación y pago. En esta actividad solo se permite un máximo de 10 ocupantes por embarcación. El uso del chaleco salvavidas es obligatorio durante todo el recorrido. Este servicio no es recomendable para mujeres embarazadas, personas con problemas de columna, cualquier tipo de lesión o cirugías recientes o problemas cardiacos.', '•	Actividades opcionales adicionales en Cancún. \r\n•	Comida o bebidas fuera de lo enlistado de inclusiones. \r\n•	Suvenir, artesanías, o cualquier otro producto o servicio no mencionado en la lista de inclusiones. \r\n•	Servicios de foto o video. \r\n•	Propinas. \r\n•	Toallas. \r\n•	Impuestos de uso de muelle.\r\n', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '6 Horas aprox.', NULL, NULL, NULL, NULL, NULL, 1, 2, 3, 1, 0.000000, 0.000000, '0000-00-00 00:00:00', NULL),
(4, 'NADO CON EL TIBURON BALLENA', '180', '115', '180', '115', '10', '10', '105', '105', 'Nadar con los Tiburones Ballena en Cancún, es una de las mejores experiencias que podrás vivir, ya que esto cambiará tu manera de ver a la naturaleza para siempre, considerando que tendrás la oportunidad de ver y nadar con el pez más grande del mundo ya que su tamaño es de aproximadamente 12 metros de largo y un peso de 20 toneladas. En los últimos años se ha incrementado el interés por los viajeros a realizar esta actividad, ya que esta actividad no representa ningún riesgo para ti, pues esta belleza de animal se alimenta mediante filtración de agua fitoplancton, algas y pequeños cangrejos, calamares, cangrejos y atún.  Qué esperas ven y vive una de las actividades que cambiara tu forma de ver la naturaleza.', 'El nado con Los Tiburones Ballena, es una de las actividades más esperadas por los viajantes de Cancún y la Riviera Maya, ya que esta es una de las especies más amigables que existen y más impresionantes por su tamaño ...', 'Evita cargar mochilas o bolsas pesadas o voluminosas. Viste ropa y calzado cómodos, así como lentes de sol y gorra. Trae una toalla y traje de baño, además de cámara sumergible. El protector solar que uses deberá ser 100 % biodegradable. Trae contigo algo de efectivo y una tarjeta de débito o crédito para gastos no previstos, en caso de que requieras dejar un deposito por el uso de algún equipo, o para pagar productos o servicios no contemplados en el tour. Si padeces de algún problema de salud o impedimento físico, por favor contáctanos antes de reservar para que podamos asesorarte al respecto. En caso de cualquier duda o pregunta, favor de comunicarte con nosotros.', NULL, '•	Transportación terrestre desde tu hotel (o punto de encuentro, para ciertos hoteles) y de vuelta. •	Transportación marítima hasta el punto donde son avistados los tiburones ballena para nadar con ellos y de vuelta •	Guía bilingüe. •	Desayuno Ligero.  •	Comida.  •	Agua embotellada y refrescos.  •	Cerveza (después de haber hecho el snorkel con el Tiburón Ballena) •	Uso de tubo de Snorkel.  •	Visor.  •	Aletas.  •	Chaleco Salvavidas.', 'Favor de verificar la hora exacta de tu transportación y otros detalles del servicio en la confirmación de servicio que recibirás vía correo electrónico después de completar tu proceso de reservación y pago. En esta actividad solo se permite un máximo de 10 ocupantes por embarcación. El uso del chaleco salvavidas es obligatorio durante todo el recorrido. Este servicio no es recomendable para mujeres embarazadas, personas con problemas de columna, cualquier tipo de lesión o cirugías recientes o problemas cardiacos.', '•	Actividades opcionales adicionales en Cancún. \r\n•	Comida o bebidas fuera de lo enlistado de inclusiones. \r\n•	Suvenir, artesanías, o cualquier otro producto o servicio no mencionado en la lista de inclusiones. \r\n•	Servicios de foto o video. \r\n•	Propinas. \r\n•	Toallas. \r\n•	Impuestos de uso de muelle.\r\n', 'Lun. Mar. Mie. Jue. Vie. Sab. Dom.', '6 Horas aprox.', NULL, NULL, NULL, NULL, NULL, 1, 8, 3, 1, 0.000000, 0.000000, '0000-00-00 00:00:00', NULL);

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
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(77, 'Jesus Abelardo Acevedo Santos', 'laloas_2004@yahoo.com.mx', '$2y$10$t1cd3PeWwck78B8wKvy50eYUJtyCm7puTLaP9N1RqBY1fMDR2ss8.', NULL, '2016-07-20 22:35:31', '2016-07-20 22:35:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
`id` int(11) NOT NULL,
  `IdSocio` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `VentPagado` tinyint(1) NOT NULL DEFAULT '0',
  `VentConfirm` tinyint(1) NOT NULL DEFAULT '0',
  `hotelPickUp` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `habitaPickup` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ComentVent` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventasdetalle`
--

CREATE TABLE IF NOT EXISTS `ventasdetalle` (
`id` int(11) NOT NULL,
  `IdTour` int(11) NOT NULL,
  `CantPerso` int(11) NOT NULL,
  `CantMenor` int(11) NOT NULL,
  `PrecioTour` decimal(10,0) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
 ADD PRIMARY KEY (`id`);

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
 ADD PRIMARY KEY (`id`);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ventasdetalle`
--
ALTER TABLE `ventasdetalle`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
