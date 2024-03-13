-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 13. Mrz 2024 um 14:50
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `testdatenbank`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `alarm`
--

CREATE TABLE `alarm` (
  `AlarmID` int(11) NOT NULL,
  `StationID` int(11) DEFAULT NULL,
  `Dauer` int(11) DEFAULT NULL,
  `Uhrzeit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Fehlermeldung` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `datacrawl`
--

CREATE TABLE `datacrawl` (
  `CrawlerID` int(11) NOT NULL,
  `StationID` int(11) DEFAULT NULL,
  `SensorID` int(11) DEFAULT NULL,
  `ValueID` int(11) DEFAULT NULL,
  `Uhrzeit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `datacrawl`
--

INSERT INTO `datacrawl` (`CrawlerID`, `StationID`, `SensorID`, `ValueID`, `Uhrzeit`) VALUES
(1, 5, 133, 1, '2024-03-13 13:18:16'),
(2, 5, 134, 2, '2024-03-13 13:18:16'),
(3, 5, 135, 3, '2024-03-13 13:18:16'),
(4, 5, 136, 4, '2024-03-13 13:18:16'),
(5, 5, 137, 5, '2024-03-13 13:18:16'),
(6, 5, 138, 6, '2024-03-13 13:18:16'),
(7, 5, 139, 7, '2024-03-13 13:18:16'),
(8, 5, 140, 8, '2024-03-13 13:18:16'),
(9, 5, 141, 9, '2024-03-13 13:18:16'),
(10, 5, 142, 10, '2024-03-13 13:18:18'),
(11, 5, 143, 11, '2024-03-13 13:18:18'),
(12, 5, 144, 12, '2024-03-13 13:18:18'),
(13, 5, 145, 13, '2024-03-13 13:18:18'),
(14, 5, 146, 14, '2024-03-13 13:18:18'),
(15, 5, 147, 15, '2024-03-13 13:18:18'),
(16, 5, 148, 16, '2024-03-13 13:18:18'),
(17, 5, 149, 17, '2024-03-13 13:18:18'),
(18, 5, 150, 18, '2024-03-13 13:18:18'),
(19, 5, 151, 19, '2024-03-13 13:18:18'),
(20, 5, 152, 20, '2024-03-13 13:18:19'),
(21, 5, 153, 21, '2024-03-13 13:18:19'),
(22, 5, 154, 22, '2024-03-13 13:18:19'),
(23, 5, 155, 23, '2024-03-13 13:18:19'),
(24, 5, 156, 24, '2024-03-13 13:18:19'),
(25, 5, 157, 25, '2024-03-13 13:18:19'),
(26, 5, 158, 26, '2024-03-13 13:18:19'),
(27, 5, 159, 27, '2024-03-13 13:18:19'),
(28, 5, 160, 28, '2024-03-13 13:18:19'),
(29, 5, 161, 29, '2024-03-13 13:18:19'),
(30, 5, 162, 30, '2024-03-13 13:18:21'),
(31, 5, 163, 31, '2024-03-13 13:18:21'),
(32, 5, 164, 32, '2024-03-13 13:18:21'),
(33, 5, 165, 33, '2024-03-13 13:18:21'),
(34, 5, 166, 34, '2024-03-13 13:18:21'),
(35, 5, 167, 35, '2024-03-13 13:18:21'),
(36, 5, 168, 36, '2024-03-13 13:18:21'),
(37, 5, 169, 37, '2024-03-13 13:18:21'),
(38, 5, 170, 38, '2024-03-13 13:18:21'),
(39, 1, 1, 39, '2024-03-13 13:45:02'),
(40, 1, 1, 40, '2024-03-13 13:47:10'),
(41, 1, 2, 41, '2024-03-13 13:47:10'),
(42, 1, 3, 42, '2024-03-13 13:47:10'),
(43, 1, 4, 43, '2024-03-13 13:47:10'),
(44, 1, 5, 44, '2024-03-13 13:47:10'),
(45, 1, 6, 45, '2024-03-13 13:47:10'),
(46, 1, 7, 46, '2024-03-13 13:47:10'),
(47, 1, 8, 47, '2024-03-13 13:47:11'),
(48, 1, 9, 48, '2024-03-13 13:47:11'),
(49, 1, 10, 49, '2024-03-13 13:47:11'),
(50, 1, 11, 50, '2024-03-13 13:47:11'),
(51, 1, 12, 51, '2024-03-13 13:47:12'),
(52, 1, 13, 52, '2024-03-13 13:47:12'),
(53, 1, 14, 53, '2024-03-13 13:47:12'),
(54, 1, 15, 54, '2024-03-13 13:47:12'),
(55, 1, 16, 55, '2024-03-13 13:47:13'),
(56, 1, 17, 56, '2024-03-13 13:47:13'),
(57, 1, 18, 57, '2024-03-13 13:47:13'),
(58, 1, 19, 58, '2024-03-13 13:47:13'),
(59, 1, 20, 59, '2024-03-13 13:47:13'),
(60, 1, 21, 60, '2024-03-13 13:47:13'),
(61, 1, 22, 61, '2024-03-13 13:47:13'),
(62, 1, 23, 62, '2024-03-13 13:47:13'),
(63, 1, 24, 63, '2024-03-13 13:47:14'),
(64, 1, 25, 64, '2024-03-13 13:47:14'),
(65, 1, 26, 65, '2024-03-13 13:47:14'),
(66, 1, 27, 66, '2024-03-13 13:47:14'),
(67, 1, 28, 67, '2024-03-13 13:47:14'),
(68, 1, 29, 68, '2024-03-13 13:47:14'),
(69, 1, 30, 69, '2024-03-13 13:47:14'),
(70, 1, 31, 70, '2024-03-13 13:47:14'),
(71, 2, 32, 71, '2024-03-13 13:47:18'),
(72, 2, 33, 72, '2024-03-13 13:47:18'),
(73, 2, 34, 73, '2024-03-13 13:47:18'),
(74, 2, 35, 74, '2024-03-13 13:47:18'),
(75, 2, 36, 75, '2024-03-13 13:47:18'),
(76, 2, 37, 76, '2024-03-13 13:47:18'),
(77, 2, 38, 77, '2024-03-13 13:47:18'),
(78, 2, 39, 78, '2024-03-13 13:47:18'),
(79, 2, 40, 79, '2024-03-13 13:47:18'),
(80, 2, 41, 80, '2024-03-13 13:47:18'),
(81, 2, 42, 81, '2024-03-13 13:47:18'),
(82, 2, 43, 82, '2024-03-13 13:47:18'),
(83, 2, 44, 83, '2024-03-13 13:47:18'),
(84, 2, 45, 84, '2024-03-13 13:47:18'),
(85, 2, 46, 85, '2024-03-13 13:47:18'),
(86, 2, 47, 86, '2024-03-13 13:47:19'),
(87, 2, 48, 87, '2024-03-13 13:47:19'),
(88, 2, 49, 88, '2024-03-13 13:47:19'),
(89, 2, 50, 89, '2024-03-13 13:47:19'),
(90, 2, 51, 90, '2024-03-13 13:47:19'),
(91, 2, 52, 91, '2024-03-13 13:47:19'),
(92, 2, 53, 92, '2024-03-13 13:47:19'),
(93, 2, 54, 93, '2024-03-13 13:47:20'),
(94, 2, 55, 94, '2024-03-13 13:47:20'),
(95, 2, 56, 95, '2024-03-13 13:47:20'),
(96, 2, 57, 96, '2024-03-13 13:47:20'),
(97, 2, 58, 97, '2024-03-13 13:47:20'),
(98, 2, 59, 98, '2024-03-13 13:47:20'),
(99, 2, 60, 99, '2024-03-13 13:47:20'),
(100, 2, 61, 100, '2024-03-13 13:47:20'),
(101, 2, 62, 101, '2024-03-13 13:47:20'),
(102, 2, 63, 102, '2024-03-13 13:47:21'),
(103, 2, 64, 103, '2024-03-13 13:47:21'),
(104, 2, 65, 104, '2024-03-13 13:47:21'),
(105, 3, 66, 105, '2024-03-13 13:47:24'),
(106, 3, 67, 106, '2024-03-13 13:47:24'),
(107, 3, 68, 107, '2024-03-13 13:47:24'),
(108, 3, 69, 108, '2024-03-13 13:47:24'),
(109, 3, 70, 109, '2024-03-13 13:47:24'),
(110, 3, 71, 110, '2024-03-13 13:47:24'),
(111, 3, 72, 111, '2024-03-13 13:47:24'),
(112, 3, 73, 112, '2024-03-13 13:47:24'),
(113, 3, 74, 113, '2024-03-13 13:47:24'),
(114, 3, 75, 114, '2024-03-13 13:47:24'),
(115, 3, 76, 115, '2024-03-13 13:47:24'),
(116, 3, 77, 116, '2024-03-13 13:47:24'),
(117, 3, 78, 117, '2024-03-13 13:47:24'),
(118, 3, 79, 118, '2024-03-13 13:47:24'),
(119, 3, 80, 119, '2024-03-13 13:47:25'),
(120, 3, 81, 120, '2024-03-13 13:47:25'),
(121, 3, 82, 121, '2024-03-13 13:47:25'),
(122, 3, 83, 122, '2024-03-13 13:47:25'),
(123, 3, 84, 123, '2024-03-13 13:47:25'),
(124, 3, 85, 124, '2024-03-13 13:47:25'),
(125, 3, 86, 125, '2024-03-13 13:47:25'),
(126, 3, 87, 126, '2024-03-13 13:47:26'),
(127, 3, 88, 127, '2024-03-13 13:47:26'),
(128, 3, 89, 128, '2024-03-13 13:47:26'),
(129, 3, 90, 129, '2024-03-13 13:47:26'),
(130, 3, 91, 130, '2024-03-13 13:47:26'),
(131, 3, 92, 131, '2024-03-13 13:47:26'),
(132, 3, 93, 132, '2024-03-13 13:47:26'),
(133, 3, 94, 133, '2024-03-13 13:47:26'),
(134, 3, 95, 134, '2024-03-13 13:47:26'),
(135, 3, 96, 135, '2024-03-13 13:47:26'),
(136, 3, 97, 136, '2024-03-13 13:47:26'),
(137, 3, 98, 137, '2024-03-13 13:47:26'),
(138, 3, 99, 138, '2024-03-13 13:47:26'),
(139, 3, 100, 139, '2024-03-13 13:47:26'),
(140, 3, 101, 140, '2024-03-13 13:47:26'),
(141, 3, 102, 141, '2024-03-13 13:47:26'),
(142, 3, 103, 142, '2024-03-13 13:47:26'),
(143, 3, 104, 143, '2024-03-13 13:47:26'),
(144, 3, 105, 144, '2024-03-13 13:47:27'),
(145, 3, 106, 145, '2024-03-13 13:47:27'),
(146, 4, 107, 146, '2024-03-13 13:47:30'),
(147, 4, 108, 147, '2024-03-13 13:47:30'),
(148, 4, 109, 148, '2024-03-13 13:47:30'),
(149, 4, 110, 149, '2024-03-13 13:47:30'),
(150, 4, 111, 150, '2024-03-13 13:47:30'),
(151, 4, 112, 151, '2024-03-13 13:47:30'),
(152, 4, 113, 152, '2024-03-13 13:47:30'),
(153, 4, 114, 153, '2024-03-13 13:47:30'),
(154, 4, 115, 154, '2024-03-13 13:47:31'),
(155, 4, 116, 155, '2024-03-13 13:47:31'),
(156, 4, 117, 156, '2024-03-13 13:47:31'),
(157, 4, 118, 157, '2024-03-13 13:47:31'),
(158, 4, 119, 158, '2024-03-13 13:47:31'),
(159, 4, 120, 159, '2024-03-13 13:47:31'),
(160, 4, 121, 160, '2024-03-13 13:47:31'),
(161, 4, 122, 161, '2024-03-13 13:47:31'),
(162, 4, 123, 162, '2024-03-13 13:47:31'),
(163, 4, 124, 163, '2024-03-13 13:47:31'),
(164, 4, 125, 164, '2024-03-13 13:47:31'),
(165, 4, 126, 165, '2024-03-13 13:47:31'),
(166, 4, 127, 166, '2024-03-13 13:47:31'),
(167, 4, 128, 167, '2024-03-13 13:47:32'),
(168, 4, 129, 168, '2024-03-13 13:47:32'),
(169, 4, 130, 169, '2024-03-13 13:47:32'),
(170, 4, 131, 170, '2024-03-13 13:47:32'),
(171, 4, 132, 171, '2024-03-13 13:47:32'),
(172, 3, 66, 172, '2024-03-13 13:48:53'),
(173, 3, 67, 173, '2024-03-13 13:48:53'),
(174, 3, 68, 174, '2024-03-13 13:48:53'),
(175, 3, 69, 175, '2024-03-13 13:48:53'),
(176, 3, 70, 176, '2024-03-13 13:48:53'),
(177, 3, 71, 177, '2024-03-13 13:48:53'),
(178, 3, 72, 178, '2024-03-13 13:48:53'),
(179, 3, 73, 179, '2024-03-13 13:48:53'),
(180, 3, 74, 180, '2024-03-13 13:48:53'),
(181, 3, 75, 181, '2024-03-13 13:48:53'),
(182, 3, 76, 182, '2024-03-13 13:48:55'),
(183, 3, 77, 183, '2024-03-13 13:48:55'),
(184, 3, 78, 184, '2024-03-13 13:48:55'),
(185, 3, 79, 185, '2024-03-13 13:48:55'),
(186, 3, 80, 186, '2024-03-13 13:48:55'),
(187, 3, 81, 187, '2024-03-13 13:48:55'),
(188, 3, 82, 188, '2024-03-13 13:48:55'),
(189, 3, 83, 189, '2024-03-13 13:48:55'),
(190, 3, 84, 190, '2024-03-13 13:48:55'),
(191, 3, 85, 191, '2024-03-13 13:48:55'),
(192, 3, 86, 192, '2024-03-13 13:48:55'),
(193, 3, 87, 193, '2024-03-13 13:48:56'),
(194, 3, 88, 194, '2024-03-13 13:48:56'),
(195, 3, 89, 195, '2024-03-13 13:48:56'),
(196, 3, 90, 196, '2024-03-13 13:48:56'),
(197, 3, 91, 197, '2024-03-13 13:48:56'),
(198, 3, 92, 198, '2024-03-13 13:48:56'),
(199, 3, 93, 199, '2024-03-13 13:48:56'),
(200, 3, 94, 200, '2024-03-13 13:48:56'),
(201, 3, 95, 201, '2024-03-13 13:48:56'),
(202, 3, 96, 202, '2024-03-13 13:48:56'),
(203, 3, 97, 203, '2024-03-13 13:48:56'),
(204, 3, 98, 204, '2024-03-13 13:48:58'),
(205, 3, 99, 205, '2024-03-13 13:48:58'),
(206, 3, 100, 206, '2024-03-13 13:48:58'),
(207, 3, 101, 207, '2024-03-13 13:48:58'),
(208, 3, 102, 208, '2024-03-13 13:48:58'),
(209, 3, 103, 209, '2024-03-13 13:48:58'),
(210, 3, 104, 210, '2024-03-13 13:48:58'),
(211, 3, 105, 211, '2024-03-13 13:48:58'),
(212, 3, 106, 212, '2024-03-13 13:48:58');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `datavalue`
--

CREATE TABLE `datavalue` (
  `ValueID` int(11) NOT NULL,
  `Rohwert` text DEFAULT NULL,
  `BerechneterWert` decimal(10,2) DEFAULT NULL,
  `Valid` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `datavalue`
--

INSERT INTO `datavalue` (`ValueID`, `Rohwert`, `BerechneterWert`, `Valid`) VALUES
(1, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:24.7760790 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:24.7760790 GMT, serverPicoseconds=0)', NULL, 1),
(2, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:24.8158772 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:24.8158772 GMT, serverPicoseconds=0)', NULL, 1),
(3, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:24.8275862 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:24.8275862 GMT, serverPicoseconds=0)', NULL, 1),
(4, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:24.8402032 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:24.8402032 GMT, serverPicoseconds=0)', NULL, 1),
(5, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:24.8582242 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:24.8582242 GMT, serverPicoseconds=0)', NULL, 1),
(6, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:24.8708316 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:24.8708316 GMT, serverPicoseconds=0)', NULL, 1),
(7, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:24.8835688 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:24.8835688 GMT, serverPicoseconds=0)', NULL, 1),
(8, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:24.8994712 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:24.8994712 GMT, serverPicoseconds=0)', NULL, 1),
(9, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:24.9120097 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:24.9120097 GMT, serverPicoseconds=0)', NULL, 1),
(10, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:24.9249135 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:24.9249135 GMT, serverPicoseconds=0)', NULL, 1),
(11, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:24.9386416 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:24.9386416 GMT, serverPicoseconds=0)', NULL, 1),
(12, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:24.9512768 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:24.9512768 GMT, serverPicoseconds=0)', NULL, 1),
(13, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:24.9649838 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:24.9649838 GMT, serverPicoseconds=0)', NULL, 1),
(14, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:24.9788535 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:24.9788535 GMT, serverPicoseconds=0)', NULL, 1),
(15, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:24.9915075 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:24.9915075 GMT, serverPicoseconds=0)', NULL, 1),
(16, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.0041532 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.0041532 GMT, serverPicoseconds=0)', NULL, 1),
(17, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.0158154 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.0158154 GMT, serverPicoseconds=0)', NULL, 1),
(18, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.0275739 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.0275739 GMT, serverPicoseconds=0)', NULL, 1),
(19, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.0400625 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.0400625 GMT, serverPicoseconds=0)', NULL, 1),
(20, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.0527844 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.0527844 GMT, serverPicoseconds=0)', NULL, 1),
(21, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.0646784 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.0646784 GMT, serverPicoseconds=0)', NULL, 1),
(22, 'DataValue(value=2177, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.0762897 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.0762897 GMT, serverPicoseconds=0)', NULL, 1),
(23, 'DataValue(value=0, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.0876836 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.0876836 GMT, serverPicoseconds=0)', NULL, 1),
(24, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.1036169 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.1036169 GMT, serverPicoseconds=0)', NULL, 1),
(25, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.1163073 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.1163073 GMT, serverPicoseconds=0)', NULL, 1),
(26, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.1278354 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.1278354 GMT, serverPicoseconds=0)', NULL, 1),
(27, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.1395781 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.1395781 GMT, serverPicoseconds=0)', NULL, 1),
(28, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.1521676 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.1521676 GMT, serverPicoseconds=0)', NULL, 1),
(29, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.1649141 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.1649141 GMT, serverPicoseconds=0)', NULL, 1),
(30, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.1775696 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.1775696 GMT, serverPicoseconds=0)', NULL, 1),
(31, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.1955976 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.1955976 GMT, serverPicoseconds=0)', NULL, 1),
(32, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.2125394 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.2125394 GMT, serverPicoseconds=0)', NULL, 1),
(33, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.2239788 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.2239788 GMT, serverPicoseconds=0)', NULL, 1),
(34, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.2356052 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.2356052 GMT, serverPicoseconds=0)', NULL, 1),
(35, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.2474309 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.2474309 GMT, serverPicoseconds=0)', NULL, 1),
(36, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.2590238 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.2590238 GMT, serverPicoseconds=0)', NULL, 1),
(37, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.2716853 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.2716853 GMT, serverPicoseconds=0)', NULL, 1),
(38, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.2834627 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.2834627 GMT, serverPicoseconds=0)', NULL, 1),
(39, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:22:18.4357650 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:22:18.4357650 GMT, serverPicoseconds=0)', NULL, 1),
(40, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.5442131 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.5442131 GMT, serverPicoseconds=0)', NULL, 1),
(41, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.5818553 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.5818553 GMT, serverPicoseconds=0)', NULL, 1),
(42, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.5955784 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.5955784 GMT, serverPicoseconds=0)', NULL, 1),
(43, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.6083615 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.6083615 GMT, serverPicoseconds=0)', NULL, 1),
(44, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.6210368 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.6210368 GMT, serverPicoseconds=0)', NULL, 1),
(45, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.6337686 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.6337686 GMT, serverPicoseconds=0)', NULL, 1),
(46, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.6505152 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.6505152 GMT, serverPicoseconds=0)', NULL, 1),
(47, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.6641788 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.6641788 GMT, serverPicoseconds=0)', NULL, 1),
(48, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.6780125 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.6780125 GMT, serverPicoseconds=0)', NULL, 1),
(49, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.6917842 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.6917842 GMT, serverPicoseconds=0)', NULL, 1),
(50, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.7044106 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.7044106 GMT, serverPicoseconds=0)', NULL, 1),
(51, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.7159625 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.7159625 GMT, serverPicoseconds=0)', NULL, 1),
(52, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.7275122 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.7275122 GMT, serverPicoseconds=0)', NULL, 1),
(53, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.7414207 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.7414207 GMT, serverPicoseconds=0)', NULL, 1),
(54, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.7530207 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.7530207 GMT, serverPicoseconds=0)', NULL, 1),
(55, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.7644954 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.7644954 GMT, serverPicoseconds=0)', NULL, 1),
(56, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.7776789 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.7776789 GMT, serverPicoseconds=0)', NULL, 1),
(57, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.7925664 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.7925664 GMT, serverPicoseconds=0)', NULL, 1),
(58, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.8039097 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.8039097 GMT, serverPicoseconds=0)', NULL, 1),
(59, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.8187960 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.8187960 GMT, serverPicoseconds=0)', NULL, 1),
(60, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.8366447 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.8366447 GMT, serverPicoseconds=0)', NULL, 1),
(61, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.8524895 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.8524895 GMT, serverPicoseconds=0)', NULL, 1),
(62, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.8652229 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.8652229 GMT, serverPicoseconds=0)', NULL, 1),
(63, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.8842497 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.8842497 GMT, serverPicoseconds=0)', NULL, 1),
(64, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.8969620 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.8969620 GMT, serverPicoseconds=0)', NULL, 1),
(65, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.9084199 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.9084199 GMT, serverPicoseconds=0)', NULL, 1),
(66, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.9203150 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.9203150 GMT, serverPicoseconds=0)', NULL, 1),
(67, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.9350485 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.9350485 GMT, serverPicoseconds=0)', NULL, 1),
(68, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.9528623 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.9528623 GMT, serverPicoseconds=0)', NULL, 1),
(69, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.9643432 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.9643432 GMT, serverPicoseconds=0)', NULL, 1),
(70, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:24:26.9781733 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:24:26.9781733 GMT, serverPicoseconds=0)', NULL, 1),
(71, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(72, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(73, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(74, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(75, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(76, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(77, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(78, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(79, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(80, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(81, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(82, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(83, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(84, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(85, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(86, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:22.7362924 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:22.7362924 GMT, serverPicoseconds=0)', NULL, 1),
(87, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:22.7500666 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:22.7500666 GMT, serverPicoseconds=0)', NULL, 1),
(88, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:22.7715953 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:22.7715953 GMT, serverPicoseconds=0)', NULL, 1),
(89, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:22.7872414 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:22.7872414 GMT, serverPicoseconds=0)', NULL, 1),
(90, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(91, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(92, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(93, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(94, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(95, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(96, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(97, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:22.9449296 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:22.9449296 GMT, serverPicoseconds=0)', NULL, 1),
(98, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:22.9587850 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:22.9587850 GMT, serverPicoseconds=0)', NULL, 1),
(99, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:22.9973484 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:22.9973484 GMT, serverPicoseconds=0)', NULL, 1),
(100, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:23.0486736 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:23.0486736 GMT, serverPicoseconds=0)', NULL, 1),
(101, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:23.0613845 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:23.0613845 GMT, serverPicoseconds=0)', NULL, 1),
(102, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:24.5220593 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:24.5220593 GMT, serverPicoseconds=0)', NULL, 1),
(103, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:24.5377458 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:24.5377458 GMT, serverPicoseconds=0)', NULL, 1),
(104, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:24.5494415 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:24.5494415 GMT, serverPicoseconds=0)', NULL, 1),
(105, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:27.1951689 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:27.1951689 GMT, serverPicoseconds=0)', NULL, 1),
(106, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:27.2068470 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:27.2068470 GMT, serverPicoseconds=0)', NULL, 1),
(107, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(108, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(109, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(110, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(111, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(112, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(113, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(114, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:27.2910097 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:27.2910097 GMT, serverPicoseconds=0)', NULL, 1),
(115, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:27.3024921 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:27.3024921 GMT, serverPicoseconds=0)', NULL, 1),
(116, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:27.3140449 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:27.3140449 GMT, serverPicoseconds=0)', NULL, 1),
(117, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:27.3257170 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:27.3257170 GMT, serverPicoseconds=0)', NULL, 1),
(118, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:27.3362222 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:27.3362222 GMT, serverPicoseconds=0)', NULL, 1),
(119, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.5969338 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.5969338 GMT, serverPicoseconds=0)', NULL, 1),
(120, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.6095369 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.6095369 GMT, serverPicoseconds=0)', NULL, 1),
(121, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.6224466 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.6224466 GMT, serverPicoseconds=0)', NULL, 1),
(122, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.6338584 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.6338584 GMT, serverPicoseconds=0)', NULL, 1),
(123, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.6443796 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.6443796 GMT, serverPicoseconds=0)', NULL, 1),
(124, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.6538553 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.6538553 GMT, serverPicoseconds=0)', NULL, 1),
(125, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.6645210 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.6645210 GMT, serverPicoseconds=0)', NULL, 1),
(126, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.6762141 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.6762141 GMT, serverPicoseconds=0)', NULL, 1),
(127, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.6867856 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.6867856 GMT, serverPicoseconds=0)', NULL, 1),
(128, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.6974059 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.6974059 GMT, serverPicoseconds=0)', NULL, 1),
(129, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.7092032 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.7092032 GMT, serverPicoseconds=0)', NULL, 1),
(130, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.7206375 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.7206375 GMT, serverPicoseconds=0)', NULL, 1),
(131, 'DataValue(value=46, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.7313814 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.7313814 GMT, serverPicoseconds=0)', NULL, 1),
(132, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.7449678 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.7449678 GMT, serverPicoseconds=0)', NULL, 1),
(133, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.7764544 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.7764544 GMT, serverPicoseconds=0)', NULL, 1),
(134, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.7935702 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.7935702 GMT, serverPicoseconds=0)', NULL, 1),
(135, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.8059944 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.8059944 GMT, serverPicoseconds=0)', NULL, 1),
(136, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.8176253 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.8176253 GMT, serverPicoseconds=0)', NULL, 1),
(137, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.8282619 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.8282619 GMT, serverPicoseconds=0)', NULL, 1),
(138, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.8398984 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.8398984 GMT, serverPicoseconds=0)', NULL, 1),
(139, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.8504680 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.8504680 GMT, serverPicoseconds=0)', NULL, 1),
(140, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.8622849 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.8622849 GMT, serverPicoseconds=0)', NULL, 1),
(141, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.8736878 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.8736878 GMT, serverPicoseconds=0)', NULL, 1),
(142, 'DataValue(value=16516, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.8833396 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.8833396 GMT, serverPicoseconds=0)', NULL, 1),
(143, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.8963630 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.8963630 GMT, serverPicoseconds=0)', NULL, 1),
(144, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.9086806 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.9086806 GMT, serverPicoseconds=0)', NULL, 1),
(145, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:06.9194420 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:06.9194420 GMT, serverPicoseconds=0)', NULL, 1),
(146, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:09.8810165 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:09.8810165 GMT, serverPicoseconds=0)', NULL, 1),
(147, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:09.8916748 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:09.8916748 GMT, serverPicoseconds=0)', NULL, 1),
(148, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:09.9024981 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:09.9024981 GMT, serverPicoseconds=0)', NULL, 1),
(149, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:09.9138773 GMT, sourcePicoseconds=0, se', NULL, 1),
(150, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(151, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(152, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(153, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(154, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(155, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not existrverTimestamp=04/23/12 04:44:09.9138773 GMT, serverPicoseconds=0)', NULL, 1),
(156, 'DataValue(value=6, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:09.9245722 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:09.9245722 GMT, serverPicoseconds=0)', NULL, 1),
(157, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:09.9352375 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:09.9352375 GMT, serverPicoseconds=0)', NULL, 1),
(158, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:09.9455688 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:09.9455688 GMT, serverPicoseconds=0)', NULL, 1),
(159, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:09.9574187 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:09.9574187 GMT, serverPicoseconds=0)', NULL, 1),
(160, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:09.9698988 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:09.9698988 GMT, serverPicoseconds=0)', NULL, 1),
(161, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:09.9807664 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:09.9807664 GMT, serverPicoseconds=0)', NULL, 1),
(162, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:09.9913360 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:09.9913360 GMT, serverPicoseconds=0)', NULL, 1),
(163, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestam in the server address space.\")', NULL, 1),
(164, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(165, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(166, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(167, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(168, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that does not exist in the server address space.\")', NULL, 1),
(169, 'null (cause: Bad_NodeIdUnknown (0x80340000) \"The node id refers to a node that doesp=04/23/12 04:44:10.0038082 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:10.0038082 GMT, serverPicoseconds=0)', NULL, 1),
(170, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:10.0156520 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:10.0156520 GMT, serverPicoseconds=0)', NULL, 1),
(171, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:44:10.0261199 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:44:10.0261199 GMT, serverPicoseconds=0)', NULL, 1),
(172, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.4336490 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.4336490 GMT, serverPicoseconds=0)', NULL, 1),
(173, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.4797323 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.4797323 GMT, serverPicoseconds=0)', NULL, 1),
(174, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.4945635 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.4945635 GMT, serverPicoseconds=0)', NULL, 1),
(175, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.5092795 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.5092795 GMT, serverPicoseconds=0)', NULL, 1),
(176, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.5218591 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.5218591 GMT, serverPicoseconds=0)', NULL, 1),
(177, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.5346942 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.5346942 GMT, serverPicoseconds=0)', NULL, 1),
(178, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.5472969 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.5472969 GMT, serverPicoseconds=0)', NULL, 1),
(179, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.5609401 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.5609401 GMT, serverPicoseconds=0)', NULL, 1),
(180, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.5809206 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.5809206 GMT, serverPicoseconds=0)', NULL, 1),
(181, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.5960801 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.5960801 GMT, serverPicoseconds=0)', NULL, 1),
(182, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.6084418 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.6084418 GMT, serverPicoseconds=0)', NULL, 1),
(183, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.6210539 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.6210539 GMT, serverPicoseconds=0)', NULL, 1),
(184, 'DataValue(value=-15, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.6338990 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.6338990 GMT, serverPicoseconds=0)', NULL, 1),
(185, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.6475274 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.6475274 GMT, serverPicoseconds=0)', NULL, 1),
(186, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.6602363 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.6602363 GMT, serverPicoseconds=0)', NULL, 1),
(187, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.6760033 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.6760033 GMT, serverPicoseconds=0)', NULL, 1),
(188, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.6888521 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.6888521 GMT, serverPicoseconds=0)', NULL, 1),
(189, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.7050760 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.7050760 GMT, serverPicoseconds=0)', NULL, 1),
(190, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.7174022 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.7174022 GMT, serverPicoseconds=0)', NULL, 1),
(191, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.7300737 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.7300737 GMT, serverPicoseconds=0)', NULL, 1),
(192, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.7430065 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.7430065 GMT, serverPicoseconds=0)', NULL, 1),
(193, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.7555828 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.7555828 GMT, serverPicoseconds=0)', NULL, 1),
(194, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.7713908 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.7713908 GMT, serverPicoseconds=0)', NULL, 1),
(195, 'DataValue(value=16518, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.7850297 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.7850297 GMT, serverPicoseconds=0)', NULL, 1),
(196, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.7978023 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.7978023 GMT, serverPicoseconds=0)', NULL, 1),
(197, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.8126781 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.8126781 GMT, serverPicoseconds=0)', NULL, 1),
(198, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.8251846 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.8251846 GMT, serverPicoseconds=0)', NULL, 1),
(199, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.8368298 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.8368298 GMT, serverPicoseconds=0)', NULL, 1),
(200, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.8496340 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.8496340 GMT, serverPicoseconds=0)', NULL, 1),
(201, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.8622955 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.8622955 GMT, serverPicoseconds=0)', NULL, 1),
(202, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.8791816 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.8791816 GMT, serverPicoseconds=0)', NULL, 1),
(203, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.8918702 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.8918702 GMT, serverPicoseconds=0)', NULL, 1),
(204, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.9035921 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.9035921 GMT, serverPicoseconds=0)', NULL, 1),
(205, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.9163983 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.9163983 GMT, serverPicoseconds=0)', NULL, 1),
(206, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.9288679 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.9288679 GMT, serverPicoseconds=0)', NULL, 1),
(207, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.9405330 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.9405330 GMT, serverPicoseconds=0)', NULL, 1),
(208, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.9522394 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.9522394 GMT, serverPicoseconds=0)', NULL, 1),
(209, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.9648911 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.9648911 GMT, serverPicoseconds=0)', NULL, 1),
(210, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.9764407 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.9764407 GMT, serverPicoseconds=0)', NULL, 1),
(211, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:35.9903099 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:35.9903099 GMT, serverPicoseconds=0)', NULL, 1),
(212, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/23/12 04:45:36.0050186 GMT, sourcePicoseconds=0, serverTimestamp=04/23/12 04:45:36.0050186 GMT, serverPicoseconds=0)', NULL, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `myorder`
--

CREATE TABLE `myorder` (
  `OrderID` int(11) NOT NULL,
  `StationID` int(11) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Dauer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sensor`
--

CREATE TABLE `sensor` (
  `SensorID` int(11) NOT NULL,
  `SensorTypID` int(11) DEFAULT NULL,
  `StationID` int(11) DEFAULT NULL,
  `AnzeigeName` varchar(255) DEFAULT NULL,
  `KnotenId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `sensor`
--

INSERT INTO `sensor` (`SensorID`, `SensorTypID`, `StationID`, `AnzeigeName`, `KnotenId`) VALUES
(1, 1, 1, '\"+AM-BG03_StopperPalette_LinksAS\"', 3),
(2, 1, 1, '\"+AM-BG04_StopperPalette_RechtsAS\"', 3),
(3, 1, 1, '\"+AM-BG09_FallMagazin2\"', 3),
(4, 3, 1, '\"+AM-BG07_ZylinderMag3AS\"', 3),
(5, 1, 1, '\"+AM-BG08_FallMagazin1\"', 3),
(6, 3, 1, '\"+AM-BG06_ZylinderMag2AS\"', 3),
(7, 3, 1, '\"+AM-BG05_ZylinderMag1AS\"', 3),
(8, 1, 1, '\"+AM-BG10_FallMagazin3\"', 3),
(9, 1, 1, '\"+AM-BG11_FüllstandMag1\"', 3),
(10, 1, 1, '\"+AM-BG12_FüllstandMag2\"', 3),
(11, 1, 1, '\"+AM-BG13_FüllstandMag3\"', 3),
(12, 5, 1, '\"+AN-BG1_WaageGS\"', 3),
(13, 5, 1, '\"+AN-BG2_WaageAS\"', 3),
(14, 1, 1, '\"+AM-BG01_PaletteStopperLinks\"', 3),
(15, 1, 1, '\"+AM-BG02_PaletteStopperRechts\"', 3),
(16, 4, 1, '\"+AL-BG2_Bandsensor_Rechts\"', 3),
(17, 4, 1, '\"+AL-BG1_Bandsensor_Links\"', 3),
(18, 1, 1, '\"+AL-BG4_Stopper_Rechts\"', 3),
(19, 1, 1, '\"+AL-BG3_Stopper_Links\"', 3),
(20, 3, 1, '\"+AM-MB3_ZylinderMag3\"', 3),
(21, 3, 1, '\"+AM-MB4_ZylinderMag2\"', 3),
(22, 3, 1, '\"+AM-MB5_ZylinderMag1\"', 3),
(23, 1, 1, '\"+AM-MB1_StopperPalette_Links\"', 3),
(24, 1, 1, '\"+AM-MB2_StopperPalette_Rechts\"', 3),
(25, 5, 1, '\"+AN-MB1_WaageOben\"', 3),
(26, 5, 1, '\"+AN-MB2_WaageUnten\"', 3),
(27, 2, 1, '\"+AL-MA1.Rechtslauf\"', 3),
(28, 2, 1, '\"+AL-MA1.Linkslauf\"', 3),
(29, 1, 1, '\"+AL-MB2_Stopper_Rechts\"', 3),
(30, 1, 1, '\"+AL-MB1_Stopper_Links\"', 3),
(31, 1, 1, '\"+AL-MA1.Vmax\"', 3),
(32, 4, 2, '\"+AL-BG2_Bandsensor_Rechts\"', 3),
(33, 4, 2, '\"+AL-BG1_Bandsensor_Links\"', 3),
(34, 1, 2, '\"+AL-BG4_Stopper_Rechts\"', 3),
(35, 1, 2, '\"+AL-BG3_Stopper_Links\"', 3),
(36, 1, 2, '\"+AN-BG2_InduktivOben\"', 3),
(37, 1, 2, '\"+AN-BG1_InduktivUnten\"', 3),
(38, 1, 2, '\"+AM-BG01_PositionPalette\"', 3),
(39, 1, 2, '\"+AM-BG02_StopperPalette\"', 3),
(40, 1, 2, '\"+AM-BG10_Werkstück\"', 3),
(41, 1, 2, '\"+AM-BG07_Vakuum\"', 3),
(42, 1, 2, '\"+AM-BG08_SchwenkarmBand\"', 3),
(43, 1, 2, '\"+AM-BG09_SchwenkarmMagazin\"', 3),
(44, 1, 2, '\"+AM-BG03_StopperMag1\"', 3),
(45, 1, 2, '\"+AM-BG04_StopperMag2\"', 3),
(46, 1, 2, '\"+AM-BG06_Hub2Oben\"', 3),
(47, 1, 2, '\"+AM-BG05_Hub1Oben\"', 3),
(48, 1, 2, '\"+AL-BG4_Wegmessung\"', 3),
(49, 1, 2, '\"+AN-BR1.1\"', 3),
(50, 1, 2, '\"+AN-BR1.2\"', 3),
(51, 1, 2, '\"+AN-BR1.3\"', 3),
(52, 2, 2, '\"+AL-MA1.Rechtslauf\"', 3),
(53, 2, 2, '\"+AL-MA1.Linkslauf\"', 3),
(54, 1, 2, '\"+AL-MB2_Stopper_Rechts\"', 3),
(55, 1, 2, '\"+AL-MB1_Stopper_Links\"', 3),
(56, 1, 2, '\"+AL-MA1.Vmax\"', 3),
(57, 1, 2, '\"+AM-MB1_StopperPalette\"', 3),
(58, 1, 2, '\"+AM-MB2_StopperMag1\"', 3),
(59, 1, 2, '\"+AM-MB4_Hub1\"', 3),
(60, 1, 2, '\"+AM-MB5_Hub2\"', 3),
(61, 1, 2, '\"+AM-MB3_StopperMag2\"', 3),
(62, 1, 2, '\"+AM-MB9_SchwenkGUZS\"', 3),
(63, 1, 2, '\"+AM-MB8_SchwenkUZS\"', 3),
(64, 1, 2, '\"+AM-MB6_Vakuum\"', 3),
(65, 1, 2, '\"+AM-MB7_Abblasen\"', 3),
(66, 4, 3, '\"+AL-BG2_Bandsensor_Rechts\"', 3),
(67, 4, 3, '\"+AL-BG1_Bandsensor_Links\"', 3),
(68, 1, 3, '\"+AL-BG4_Stopper_Rechts\"', 3),
(69, 1, 3, '\"+AL-BG3_Stopper_Links\"', 3),
(70, 1, 3, '\"+AN-BG1_PosLinks\"', 3),
(71, 1, 3, '\"+AN-BG2_PosRechts\"', 3),
(72, 1, 3, '\"+AN-BG3_StopperLinks\"', 3),
(73, 1, 3, '\"+AN-BG4_StopperRechts\"', 3),
(74, 1, 3, '\"+AN-BG5_VereinzelerOffen\"', 3),
(75, 1, 3, '\"+AN-BG6_HubUnten\"', 3),
(76, 1, 3, '\"+AN-BG7_HubMitte\"', 3),
(77, 1, 3, '\"+AN-BG8_HubOben\"', 3),
(78, 1, 3, '\"+AN-BL2_Füllstand\"', 3),
(79, 1, 3, '\"+AN-BG9_PaletteUntenVorhanden\"', 3),
(80, 1, 3, '\"+AN-BG10_PaletteObenVorhanden\"', 3),
(81, 1, 3, '\"+AM-BG1_PosLinks\"', 3),
(82, 1, 3, '\"+AM-BG2_PosRechts\"', 3),
(83, 1, 3, '\"+AM-BG3_StopperLinks\"', 3),
(84, 1, 3, '\"+AM-BG4_StopperRechts\"', 3),
(85, 1, 3, '\"+AM-BG5_VereinzelerOffen\"', 3),
(86, 1, 3, '\"+AM-BG6_HubUnten\"', 3),
(87, 1, 3, '\"+AM-BG7_HubMitte\"', 3),
(88, 1, 3, '\"+AM-BG8_HubOben\"', 3),
(89, 1, 3, '\"+AM-BL1_Füllstand\"', 3),
(90, 1, 3, '\"+AM-BG9_PaletteUntenVorhanden\"', 3),
(91, 1, 3, '\"+AM-BG10_PaletteObenVorhanden\"', 3),
(92, 2, 3, '\"+AL-MA1.Rechtslauf\"', 3),
(93, 2, 3, '\"+AL-MA1.Linkslauf\"', 3),
(94, 1, 3, '\"+AL-MB2_Stopper_Rechts\"', 3),
(95, 1, 3, '\"+AL-MB1_Stopper_Links\"', 3),
(96, 1, 3, '\"+AL-MA1.Vmax\"', 3),
(97, 1, 3, '\"+AN-MB1_StopperLinks\"', 3),
(98, 1, 3, '\"+AN-MB2_StopperRechts\"', 3),
(99, 1, 3, '\"+AN-MB3_Vereinzeler\"', 3),
(100, 1, 3, '\"+AN-MB4_HubUnten\"', 3),
(101, 1, 3, '\"+AN-MB5_HubOben\"', 3),
(102, 1, 3, '\"+AM-MB1_StopperLinks\"', 3),
(103, 1, 3, '\"+AM-MB2_StopperRechts\"', 3),
(104, 1, 3, '\"+AM-MB3_Vereinzeler\"', 3),
(105, 1, 3, '\"+AM-MB4_HubUnten\"', 3),
(106, 1, 3, '\"+AM-MB5_HubOben\"', 3),
(107, 4, 4, '\"+AL-BG2_Bandsensor_Rechts\"', 3),
(108, 4, 4, '\"+AL-BG1_Bandsensor_Links\"', 3),
(109, 1, 4, '\"+AL-BG4_Stopper_Rechts\"', 3),
(110, 1, 4, '\"+AL-BG3_Stopper_Links\"', 3),
(111, 1, 4, '\"+AM-BG1_PositionMontage\"', 3),
(112, 1, 4, '\"+AM-BG2_StopperMontage\"', 3),
(113, 1, 4, '\"+AM-BG3_HubMontageOben\"', 3),
(114, 1, 4, '\"+AM-BG4_HubMontageUnten\"', 3),
(115, 1, 4, '\"+AM-BG5_PositionDemontage\"', 3),
(116, 1, 4, '\"+AM-BG6_StopperDemontage\"', 3),
(117, 1, 4, '\"+AM-BG7_HubDemontageOben\"', 3),
(118, 1, 4, '\"+AM-BG8_HubDemontageUnten\"', 3),
(119, 1, 4, '\"+AN-BL1_AnalogInduktiv\"', 3),
(120, 1, 4, '\"+AO-AF1_ÜberwachungVorhanden\"', 3),
(121, 1, 4, '\"+AO-AF2_ÜberwachungAusgelöst\"', 3),
(122, 2, 4, '\"+AL-MA1.Rechtslauf\"', 3),
(123, 2, 4, '\"+AL-MA1.Linkslauf\"', 3),
(124, 1, 4, '\"+AL-MB2_Stopper_Rechts\"', 3),
(125, 1, 4, '\"+AL-MB1_Stopper_Links\"', 3),
(126, 1, 4, '\"+AL-MA1.Vmax\"', 3),
(127, 1, 4, '\"+AM-MB1_StopperMontage\"', 3),
(128, 1, 4, '\"+AM-MB2_HubMontageOben\"', 3),
(129, 1, 4, '\"+AM-MB3_HubMontageUnten\"', 3),
(130, 1, 4, '\"+AM-MB4_StopperDemontage\"', 3),
(131, 1, 4, '\"+AM-MB5_HubDemontageOben\"', 3),
(132, 1, 4, '\"+AM-MB6_HubDemontageUnten\"', 3),
(133, 4, 5, '\"+AL-BG2_Bandsensor_Rechts\"', 3),
(134, 4, 5, '\"+AL-BG1_Bandsensor_Links\"', 3),
(135, 1, 5, '\"+AL-BG4_Stopper_Rechts\"', 3),
(136, 1, 5, '\"+AL-BG3_Stopper_Links\"', 3),
(137, 1, 5, '\"+AO-BG1_PosLinks\"', 3),
(138, 1, 5, '\"+AO-BG2_PosRechts\"', 3),
(139, 1, 5, '\"+AO-BG3_StopperLinks\"', 3),
(140, 1, 5, '\"+AO-BG4_StopperRechts\"', 3),
(141, 1, 5, '\"+AO-BG5_VereinzelerOffen\"', 3),
(142, 1, 5, '\"+AO-BG6_HubUnten\"', 3),
(143, 1, 5, '\"+AO-BG7_HubMitte\"', 3),
(144, 1, 5, '\"+AO-BG8_HubOben\"', 3),
(145, 1, 5, '\"+AM-BG1_PosLinks\"', 3),
(146, 1, 5, '\"+AM-BG2_PosRechts\"', 3),
(147, 1, 5, '\"+AM-BG3_StopperLinks\"', 3),
(148, 1, 5, '\"+AM-BG4_StopperRechts\"', 3),
(149, 1, 5, '\"+AM-BG5_VereinzelerOffen\"', 3),
(150, 1, 5, '\"+AM-BG6_HubUnten\"', 3),
(151, 1, 5, '\"+AM-BG7_HubMitte\"', 3),
(152, 1, 5, '\"+AM-BG8_HubOben\"', 3),
(153, 1, 5, '\"+AN-BG1_InduktivUnten\"', 3),
(154, 1, 5, '\"+AM-BL1_Füllstand\"', 3),
(155, 1, 5, '\"+AO-BL2_Füllstand\"', 3),
(156, 2, 5, '\"+AL-MA1.Rechtslauf\"', 3),
(157, 2, 5, '\"+AL-MA1.Linkslauf\"', 3),
(158, 1, 5, '\"+AL-MB2_Stopper_Rechts\"', 3),
(159, 1, 5, '\"+AL-MB1_Stopper_Links\"', 3),
(160, 1, 5, '\"+AL-MA1.Vmax\"', 3),
(161, 1, 5, '\"+AO-MB1_StopperLinks\"', 3),
(162, 1, 5, '\"+AO-MB2_StopperRechts\"', 3),
(163, 1, 5, '\"+AO-MB3_Vereinzeler\"', 3),
(164, 1, 5, '\"+AO-MB4_HubUnten\"', 3),
(165, 1, 5, '\"+AO-MB5_HubOben\"', 3),
(166, 1, 5, '\"+AM-MB1_StopperLinks\"', 3),
(167, 1, 5, '\"+AM-MB2_StopperRechts\"', 3),
(168, 1, 5, '\"+AM-MB3_Vereinzeler\"', 3),
(169, 1, 5, '\"+AM-MB4_HubUnten\"', 3),
(170, 1, 5, '\"+AM-MB5_HubOben\"', 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sensortyp`
--

CREATE TABLE `sensortyp` (
  `SensorTypID` int(11) NOT NULL,
  `Bezeichnung` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `sensortyp`
--

INSERT INTO `sensortyp` (`SensorTypID`, `Bezeichnung`) VALUES
(1, 'Generic Type'),
(2, 'Bewegungserfassung'),
(3, 'Positionserfassung'),
(4, 'Bandsensor'),
(5, 'Gewichtssensor');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `station`
--

CREATE TABLE `station` (
  `StationID` int(11) NOT NULL,
  `Bezeichnung` varchar(255) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Produktionsrate` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `station`
--

INSERT INTO `station` (`StationID`, `Bezeichnung`, `Status`, `Produktionsrate`) VALUES
(1, 'BF', NULL, NULL),
(2, 'HL', NULL, NULL),
(3, 'PI', NULL, NULL),
(4, 'PR', NULL, NULL),
(5, 'RI', NULL, NULL);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `alarm`
--
ALTER TABLE `alarm`
  ADD PRIMARY KEY (`AlarmID`),
  ADD KEY `StationID` (`StationID`);

--
-- Indizes für die Tabelle `datacrawl`
--
ALTER TABLE `datacrawl`
  ADD PRIMARY KEY (`CrawlerID`),
  ADD KEY `StationID` (`StationID`),
  ADD KEY `SensorID` (`SensorID`),
  ADD KEY `ValueID` (`ValueID`);

--
-- Indizes für die Tabelle `datavalue`
--
ALTER TABLE `datavalue`
  ADD PRIMARY KEY (`ValueID`);

--
-- Indizes für die Tabelle `myorder`
--
ALTER TABLE `myorder`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `StationID` (`StationID`);

--
-- Indizes für die Tabelle `sensor`
--
ALTER TABLE `sensor`
  ADD PRIMARY KEY (`SensorID`),
  ADD KEY `SensorTypID` (`SensorTypID`),
  ADD KEY `StationID` (`StationID`);

--
-- Indizes für die Tabelle `sensortyp`
--
ALTER TABLE `sensortyp`
  ADD PRIMARY KEY (`SensorTypID`);

--
-- Indizes für die Tabelle `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`StationID`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `alarm`
--
ALTER TABLE `alarm`
  ADD CONSTRAINT `alarm_ibfk_1` FOREIGN KEY (`StationID`) REFERENCES `station` (`StationID`);

--
-- Constraints der Tabelle `datacrawl`
--
ALTER TABLE `datacrawl`
  ADD CONSTRAINT `datacrawl_ibfk_1` FOREIGN KEY (`StationID`) REFERENCES `station` (`StationID`),
  ADD CONSTRAINT `datacrawl_ibfk_2` FOREIGN KEY (`SensorID`) REFERENCES `sensor` (`SensorID`),
  ADD CONSTRAINT `datacrawl_ibfk_3` FOREIGN KEY (`ValueID`) REFERENCES `datavalue` (`ValueID`);

--
-- Constraints der Tabelle `myorder`
--
ALTER TABLE `myorder`
  ADD CONSTRAINT `myorder_ibfk_1` FOREIGN KEY (`StationID`) REFERENCES `station` (`StationID`);

--
-- Constraints der Tabelle `sensor`
--
ALTER TABLE `sensor`
  ADD CONSTRAINT `sensor_ibfk_1` FOREIGN KEY (`SensorTypID`) REFERENCES `sensortyp` (`SensorTypID`),
  ADD CONSTRAINT `sensor_ibfk_2` FOREIGN KEY (`StationID`) REFERENCES `station` (`StationID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
