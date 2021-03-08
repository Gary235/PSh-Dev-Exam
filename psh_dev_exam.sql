-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 08-03-2021 a las 15:28:13
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `psh_dev_exam`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players`
--

DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `idPlayer` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL,
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profileImage` varchar(300) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `creationDate` timestamp NOT NULL,
  PRIMARY KEY (`idPlayer`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `players`
--

INSERT INTO `players` (`idPlayer`, `score`, `nickname`, `profileImage`, `creationDate`) VALUES
(1, 87, 'Gary', 'sin foto', '2021-03-03 03:00:00'),
(2, 55, 'Martin', 'sin foto', '2021-03-04 22:19:12'),
(3, 22, 'Groso', 'sin foto', '2021-03-05 01:22:05'),
(5, 51, 'Vishal Geel', 'https://randomuser.me/api/portraits/med/men/12.jpg', '2021-03-05 02:58:48'),
(6, 32, 'Emma Keranen', 'https://randomuser.me/api/portraits/med/women/53.jpg', '2021-03-05 03:04:52'),
(7, 67, 'Sara Peltonen', 'https://randomuser.me/api/portraits/med/women/80.jpg', '2021-03-05 03:11:30'),
(8, 67, 'Jennifer Duncan', 'https://randomuser.me/api/portraits/med/women/18.jpg', '2021-03-05 03:11:30'),
(9, 43, 'Meinrad Domke', 'https://randomuser.me/api/portraits/med/men/31.jpg', '2021-03-05 03:12:30'),
(10, 43, 'James da Rocha', 'https://randomuser.me/api/portraits/med/men/97.jpg', '2021-03-05 03:12:30'),
(11, 46, 'Felix Olsen', 'https://randomuser.me/api/portraits/med/men/97.jpg', '2021-03-05 19:16:10'),
(12, 46, 'Alexander Nguyen', 'https://randomuser.me/api/portraits/med/men/70.jpg', '2021-03-05 19:16:10'),
(13, 46, 'Alexis Chu', 'https://randomuser.me/api/portraits/med/women/33.jpg', '2021-03-05 19:16:10'),
(14, 46, 'Kleydianne Ferreira', 'https://randomuser.me/api/portraits/med/women/25.jpg', '2021-03-05 19:16:10'),
(15, 93, 'Sky Punter', 'https://randomuser.me/api/portraits/med/men/72.jpg', '2021-03-05 19:23:10'),
(16, 22, 'Charlie Clark', 'https://randomuser.me/api/portraits/med/women/30.jpg', '2021-03-05 19:32:10'),
(17, 55, 'Cassandra Dupuis', 'https://randomuser.me/api/portraits/med/women/26.jpg', '2021-03-08 13:02:11'),
(18, 2, 'Yann Bertrand', 'https://randomuser.me/api/portraits/med/men/36.jpg', '2021-03-08 13:09:11'),
(19, 2, 'Sander Thomsen', 'https://randomuser.me/api/portraits/med/men/49.jpg', '2021-03-08 13:09:11'),
(20, 2, 'Liam Johnson', 'https://randomuser.me/api/portraits/med/men/37.jpg', '2021-03-08 13:09:11'),
(21, 2, 'Alexa Brown', 'https://randomuser.me/api/portraits/med/women/44.jpg', '2021-03-08 13:09:11'),
(22, 2, 'Sky De Veer', 'https://randomuser.me/api/portraits/med/women/31.jpg', '2021-03-08 13:09:11'),
(23, 85, 'Gauthier Francois', 'https://randomuser.me/api/portraits/med/men/98.jpg', '2021-03-08 13:16:10'),
(24, 48, 'Nino Robin', 'https://randomuser.me/api/portraits/med/men/79.jpg', '2021-03-08 13:20:10'),
(25, 48, 'Korstiaan Van Maaren', 'https://randomuser.me/api/portraits/med/men/53.jpg', '2021-03-08 13:20:10'),
(26, 48, 'Jasmine Ma', 'https://randomuser.me/api/portraits/med/women/84.jpg', '2021-03-08 13:20:11'),
(27, 48, 'Käthi Garcia', 'https://randomuser.me/api/portraits/med/women/82.jpg', '2021-03-08 13:20:11'),
(28, 39, 'Bernadete Lima', 'https://randomuser.me/api/portraits/med/women/75.jpg', '2021-03-08 13:21:11'),
(29, 39, 'Dylan Gaillard', 'https://randomuser.me/api/portraits/med/men/41.jpg', '2021-03-08 13:21:12'),
(30, 39, 'Sven Nysveen', 'https://randomuser.me/api/portraits/med/men/59.jpg', '2021-03-08 13:21:12'),
(31, 39, 'Ismail Guerin', 'https://randomuser.me/api/portraits/med/men/69.jpg', '2021-03-08 13:21:12'),
(32, 6, 'Luisa Duran', 'https://randomuser.me/api/portraits/med/women/87.jpg', '2021-03-08 13:22:10'),
(33, 6, 'Margot Laurent', 'https://randomuser.me/api/portraits/med/women/27.jpg', '2021-03-08 13:22:10'),
(34, 6, 'Caroline May', 'https://randomuser.me/api/portraits/med/women/6.jpg', '2021-03-08 13:22:11'),
(35, 6, 'Javier Lambert', 'https://randomuser.me/api/portraits/med/men/18.jpg', '2021-03-08 13:22:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stats`
--

DROP TABLE IF EXISTS `stats`;
CREATE TABLE IF NOT EXISTS `stats` (
  `idStat` int(11) NOT NULL AUTO_INCREMENT,
  `idPlayer` int(11) NOT NULL,
  PRIMARY KEY (`idStat`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `stats`
--

INSERT INTO `stats` (`idStat`, `idPlayer`) VALUES
(1, 1),
(2, 2),
(3, 3),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 12),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
