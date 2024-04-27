-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 18. Mrz 2024 um 12:11
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
(1, 1, 1, 1, '2024-03-18 10:44:01'),
(2, 1, 2, 2, '2024-03-18 10:44:01'),
(3, 1, 3, 3, '2024-03-18 10:44:01'),
(4, 1, 4, 4, '2024-03-18 10:44:01'),
(5, 1, 5, 5, '2024-03-18 10:44:01'),
(6, 1, 6, 6, '2024-03-18 10:44:01'),
(7, 1, 7, 7, '2024-03-18 10:44:01'),
(8, 1, 8, 8, '2024-03-18 10:44:02'),
(9, 1, 9, 9, '2024-03-18 10:44:02'),
(10, 1, 10, 10, '2024-03-18 10:44:02'),
(11, 1, 11, 11, '2024-03-18 10:44:02'),
(12, 1, 12, 12, '2024-03-18 10:44:02'),
(13, 1, 13, 13, '2024-03-18 10:44:02'),
(14, 1, 14, 14, '2024-03-18 10:44:03'),
(15, 1, 15, 15, '2024-03-18 10:44:03'),
(16, 1, 16, 16, '2024-03-18 10:44:05'),
(17, 1, 17, 17, '2024-03-18 10:44:05'),
(18, 1, 18, 18, '2024-03-18 10:44:05'),
(19, 1, 19, 19, '2024-03-18 10:44:05'),
(20, 1, 20, 20, '2024-03-18 10:44:05'),
(21, 1, 21, 21, '2024-03-18 10:44:05'),
(22, 1, 22, 22, '2024-03-18 10:44:05'),
(23, 1, 23, 23, '2024-03-18 10:44:05'),
(24, 1, 24, 24, '2024-03-18 10:44:07'),
(25, 1, 25, 25, '2024-03-18 10:44:07'),
(26, 1, 26, 26, '2024-03-18 10:44:07'),
(27, 1, 27, 27, '2024-03-18 10:44:07'),
(28, 1, 28, 28, '2024-03-18 10:44:07'),
(29, 1, 29, 29, '2024-03-18 10:44:07'),
(30, 1, 30, 30, '2024-03-18 10:44:07'),
(31, 1, 31, 31, '2024-03-18 10:44:07'),
(32, 2, 32, 32, '2024-03-18 10:47:01'),
(33, 2, 33, 33, '2024-03-18 10:47:01'),
(34, 2, 34, 34, '2024-03-18 10:47:01'),
(35, 2, 35, 35, '2024-03-18 10:47:01'),
(36, 2, 36, 36, '2024-03-18 10:47:01'),
(37, 2, 37, 37, '2024-03-18 10:47:01'),
(38, 2, 38, 38, '2024-03-18 10:47:01'),
(39, 2, 39, 39, '2024-03-18 10:47:01'),
(40, 2, 40, 40, '2024-03-18 10:47:09'),
(41, 2, 41, 41, '2024-03-18 10:47:09'),
(42, 2, 42, 42, '2024-03-18 10:47:09'),
(43, 2, 43, 43, '2024-03-18 10:47:09'),
(44, 2, 44, 44, '2024-03-18 10:47:09'),
(45, 2, 45, 45, '2024-03-18 10:47:09'),
(46, 2, 46, 46, '2024-03-18 10:47:09'),
(47, 2, 47, 47, '2024-03-18 10:47:09'),
(48, 2, 48, 48, '2024-03-18 10:47:09'),
(49, 2, 49, 49, '2024-03-18 10:47:30'),
(50, 2, 50, 50, '2024-03-18 10:47:30'),
(51, 2, 51, 51, '2024-03-18 10:47:30'),
(52, 2, 52, 52, '2024-03-18 10:47:30'),
(53, 2, 53, 53, '2024-03-18 10:47:30'),
(54, 2, 54, 54, '2024-03-18 10:47:30'),
(55, 2, 55, 55, '2024-03-18 10:47:30'),
(56, 2, 56, 56, '2024-03-18 10:47:30'),
(57, 2, 57, 57, '2024-03-18 10:47:30'),
(58, 2, 58, 58, '2024-03-18 10:47:47'),
(59, 2, 59, 59, '2024-03-18 10:47:47'),
(60, 2, 60, 60, '2024-03-18 10:47:47'),
(61, 2, 61, 61, '2024-03-18 10:47:47'),
(62, 2, 62, 62, '2024-03-18 10:47:47'),
(63, 2, 63, 63, '2024-03-18 10:47:47'),
(64, 2, 64, 64, '2024-03-18 10:47:47'),
(65, 2, 65, 65, '2024-03-18 10:47:47'),
(66, 1, 1, 66, '2024-03-18 11:01:09'),
(67, 1, 2, 67, '2024-03-18 11:01:09'),
(68, 1, 3, 68, '2024-03-18 11:01:09'),
(69, 1, 4, 69, '2024-03-18 11:01:09'),
(70, 1, 5, 70, '2024-03-18 11:01:09'),
(71, 1, 6, 71, '2024-03-18 11:01:09'),
(72, 1, 7, 72, '2024-03-18 11:01:09'),
(73, 1, 8, 73, '2024-03-18 11:01:12'),
(74, 1, 9, 74, '2024-03-18 11:01:12'),
(75, 1, 10, 75, '2024-03-18 11:01:12'),
(76, 1, 11, 76, '2024-03-18 11:01:12'),
(77, 1, 12, 77, '2024-03-18 11:01:12'),
(78, 1, 13, 78, '2024-03-18 11:01:12'),
(79, 1, 14, 79, '2024-03-18 11:01:12'),
(80, 1, 15, 80, '2024-03-18 11:01:12'),
(81, 1, 16, 81, '2024-03-18 11:01:14'),
(82, 1, 17, 82, '2024-03-18 11:01:14'),
(83, 1, 18, 83, '2024-03-18 11:01:14'),
(84, 1, 19, 84, '2024-03-18 11:01:14'),
(85, 1, 20, 85, '2024-03-18 11:01:14'),
(86, 1, 21, 86, '2024-03-18 11:01:14'),
(87, 1, 22, 87, '2024-03-18 11:01:14'),
(88, 1, 23, 88, '2024-03-18 11:01:14'),
(89, 1, 24, 89, '2024-03-18 11:01:16'),
(90, 1, 25, 90, '2024-03-18 11:01:16'),
(91, 1, 26, 91, '2024-03-18 11:01:16'),
(92, 1, 27, 92, '2024-03-18 11:01:16'),
(93, 1, 28, 93, '2024-03-18 11:01:16'),
(94, 1, 29, 94, '2024-03-18 11:01:16'),
(95, 1, 30, 95, '2024-03-18 11:01:16'),
(96, 1, 31, 96, '2024-03-18 11:01:16'),
(97, 1, 1, 97, '2024-03-18 11:02:08'),
(98, 1, 2, 98, '2024-03-18 11:02:08'),
(99, 1, 3, 99, '2024-03-18 11:02:08'),
(100, 1, 4, 100, '2024-03-18 11:02:08'),
(101, 1, 5, 101, '2024-03-18 11:02:08'),
(102, 1, 6, 102, '2024-03-18 11:02:08'),
(103, 1, 7, 103, '2024-03-18 11:02:08'),
(104, 1, 8, 104, '2024-03-18 11:02:10'),
(105, 1, 9, 105, '2024-03-18 11:02:10'),
(106, 1, 10, 106, '2024-03-18 11:02:10'),
(107, 1, 11, 107, '2024-03-18 11:02:10'),
(108, 1, 12, 108, '2024-03-18 11:02:10'),
(109, 1, 13, 109, '2024-03-18 11:02:10'),
(110, 1, 14, 110, '2024-03-18 11:02:10'),
(111, 1, 15, 111, '2024-03-18 11:02:10'),
(112, 1, 16, 112, '2024-03-18 11:02:15'),
(113, 1, 17, 113, '2024-03-18 11:02:15'),
(114, 1, 18, 114, '2024-03-18 11:02:15'),
(115, 1, 19, 115, '2024-03-18 11:02:15'),
(116, 1, 20, 116, '2024-03-18 11:02:15'),
(117, 1, 21, 117, '2024-03-18 11:02:15'),
(118, 1, 22, 118, '2024-03-18 11:02:15'),
(119, 1, 23, 119, '2024-03-18 11:02:15'),
(120, 1, 24, 120, '2024-03-18 11:02:19'),
(121, 1, 25, 121, '2024-03-18 11:02:19'),
(122, 1, 26, 122, '2024-03-18 11:02:19'),
(123, 1, 27, 123, '2024-03-18 11:02:19'),
(124, 1, 28, 124, '2024-03-18 11:02:19'),
(125, 1, 29, 125, '2024-03-18 11:02:19'),
(126, 1, 30, 126, '2024-03-18 11:02:19'),
(127, 1, 31, 127, '2024-03-18 11:02:19'),
(128, 3, 66, 128, '2024-03-18 11:03:06'),
(129, 3, 67, 129, '2024-03-18 11:03:06'),
(130, 3, 68, 130, '2024-03-18 11:03:06'),
(131, 3, 69, 131, '2024-03-18 11:03:06'),
(132, 3, 70, 132, '2024-03-18 11:03:06'),
(133, 3, 71, 133, '2024-03-18 11:03:06'),
(134, 3, 72, 134, '2024-03-18 11:03:06'),
(135, 3, 73, 135, '2024-03-18 11:03:06'),
(136, 3, 74, 136, '2024-03-18 11:03:06'),
(137, 3, 75, 137, '2024-03-18 11:03:06'),
(138, 3, 76, 138, '2024-03-18 11:03:08'),
(139, 3, 77, 139, '2024-03-18 11:03:08'),
(140, 3, 78, 140, '2024-03-18 11:03:08'),
(141, 3, 79, 141, '2024-03-18 11:03:08'),
(142, 3, 80, 142, '2024-03-18 11:03:08'),
(143, 3, 81, 143, '2024-03-18 11:03:08'),
(144, 3, 82, 144, '2024-03-18 11:03:08'),
(145, 3, 83, 145, '2024-03-18 11:03:08'),
(146, 3, 84, 146, '2024-03-18 11:03:08'),
(147, 3, 85, 147, '2024-03-18 11:03:08'),
(148, 3, 86, 148, '2024-03-18 11:03:08'),
(149, 3, 87, 149, '2024-03-18 11:03:10'),
(150, 3, 88, 150, '2024-03-18 11:03:10'),
(151, 3, 89, 151, '2024-03-18 11:03:10'),
(152, 3, 90, 152, '2024-03-18 11:03:10'),
(153, 3, 91, 153, '2024-03-18 11:03:10'),
(154, 3, 92, 154, '2024-03-18 11:03:10'),
(155, 3, 93, 155, '2024-03-18 11:03:10'),
(156, 3, 94, 156, '2024-03-18 11:03:10'),
(157, 3, 95, 157, '2024-03-18 11:03:10'),
(158, 3, 96, 158, '2024-03-18 11:03:10'),
(159, 3, 97, 159, '2024-03-18 11:03:10'),
(160, 3, 98, 160, '2024-03-18 11:03:12'),
(161, 3, 99, 161, '2024-03-18 11:03:12'),
(162, 3, 100, 162, '2024-03-18 11:03:12'),
(163, 3, 101, 163, '2024-03-18 11:03:12'),
(164, 3, 102, 164, '2024-03-18 11:03:12'),
(165, 3, 103, 165, '2024-03-18 11:03:12'),
(166, 3, 104, 166, '2024-03-18 11:03:12'),
(167, 3, 105, 167, '2024-03-18 11:03:12'),
(168, 3, 106, 168, '2024-03-18 11:03:12'),
(169, 4, 107, 169, '2024-03-18 11:05:35'),
(170, 4, 108, 170, '2024-03-18 11:05:35'),
(171, 4, 109, 171, '2024-03-18 11:05:35'),
(172, 4, 110, 172, '2024-03-18 11:05:35'),
(173, 4, 111, 173, '2024-03-18 11:05:35'),
(174, 4, 112, 174, '2024-03-18 11:05:35'),
(175, 4, 113, 175, '2024-03-18 11:05:37'),
(176, 4, 114, 176, '2024-03-18 11:05:37'),
(177, 4, 115, 177, '2024-03-18 11:05:37'),
(178, 4, 116, 178, '2024-03-18 11:05:37'),
(179, 4, 117, 179, '2024-03-18 11:05:37'),
(180, 4, 118, 180, '2024-03-18 11:05:37'),
(181, 4, 119, 181, '2024-03-18 11:05:37'),
(182, 4, 120, 182, '2024-03-18 11:05:39'),
(183, 4, 121, 183, '2024-03-18 11:05:39'),
(184, 4, 122, 184, '2024-03-18 11:05:39'),
(185, 4, 123, 185, '2024-03-18 11:05:39'),
(186, 4, 124, 186, '2024-03-18 11:05:39'),
(187, 4, 125, 187, '2024-03-18 11:05:39'),
(188, 4, 126, 188, '2024-03-18 11:05:39'),
(189, 4, 127, 189, '2024-03-18 11:05:40'),
(190, 4, 128, 190, '2024-03-18 11:05:40'),
(191, 4, 129, 191, '2024-03-18 11:05:40'),
(192, 4, 130, 192, '2024-03-18 11:05:40'),
(193, 4, 131, 193, '2024-03-18 11:05:40'),
(194, 4, 132, 194, '2024-03-18 11:05:40'),
(195, 5, 133, 195, '2024-03-18 11:10:15'),
(196, 5, 134, 196, '2024-03-18 11:10:15'),
(197, 5, 135, 197, '2024-03-18 11:10:15'),
(198, 5, 136, 198, '2024-03-18 11:10:15'),
(199, 5, 137, 199, '2024-03-18 11:10:15'),
(200, 5, 138, 200, '2024-03-18 11:10:15'),
(201, 5, 139, 201, '2024-03-18 11:10:15'),
(202, 5, 140, 202, '2024-03-18 11:10:15'),
(203, 5, 141, 203, '2024-03-18 11:10:15'),
(204, 5, 142, 204, '2024-03-18 11:10:16'),
(205, 5, 143, 205, '2024-03-18 11:10:16'),
(206, 5, 144, 206, '2024-03-18 11:10:16'),
(207, 5, 145, 207, '2024-03-18 11:10:16'),
(208, 5, 146, 208, '2024-03-18 11:10:16'),
(209, 5, 147, 209, '2024-03-18 11:10:16'),
(210, 5, 148, 210, '2024-03-18 11:10:16'),
(211, 5, 149, 211, '2024-03-18 11:10:16'),
(212, 5, 150, 212, '2024-03-18 11:10:16'),
(213, 5, 151, 213, '2024-03-18 11:10:16'),
(214, 5, 152, 214, '2024-03-18 11:10:18'),
(215, 5, 153, 215, '2024-03-18 11:10:18'),
(216, 5, 154, 216, '2024-03-18 11:10:18'),
(217, 5, 155, 217, '2024-03-18 11:10:18'),
(218, 5, 156, 218, '2024-03-18 11:10:18'),
(219, 5, 157, 219, '2024-03-18 11:10:18'),
(220, 5, 158, 220, '2024-03-18 11:10:18'),
(221, 5, 159, 221, '2024-03-18 11:10:18'),
(222, 5, 160, 222, '2024-03-18 11:10:18'),
(223, 5, 161, 223, '2024-03-18 11:10:18'),
(224, 5, 162, 224, '2024-03-18 11:10:21'),
(225, 5, 163, 225, '2024-03-18 11:10:21'),
(226, 5, 164, 226, '2024-03-18 11:10:21'),
(227, 5, 165, 227, '2024-03-18 11:10:21'),
(228, 5, 166, 228, '2024-03-18 11:10:21'),
(229, 5, 167, 229, '2024-03-18 11:10:21'),
(230, 5, 168, 230, '2024-03-18 11:10:21'),
(231, 5, 169, 231, '2024-03-18 11:10:21'),
(232, 5, 170, 232, '2024-03-18 11:10:21');

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
(1, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.0494733 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.0494733 GMT, serverPicoseconds=0)', NULL, 1),
(2, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.0905113 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.0905113 GMT, serverPicoseconds=0)', NULL, 1),
(3, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.1115153 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.1115153 GMT, serverPicoseconds=0)', NULL, 1),
(4, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.1263346 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.1263346 GMT, serverPicoseconds=0)', NULL, 1),
(5, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.1499661 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.1499661 GMT, serverPicoseconds=0)', NULL, 1),
(6, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.2368852 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.2368852 GMT, serverPicoseconds=0)', NULL, 1),
(7, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.2791923 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.2791923 GMT, serverPicoseconds=0)', NULL, 1),
(8, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.2959460 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.2959460 GMT, serverPicoseconds=0)', NULL, 1),
(9, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.3141844 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.3141844 GMT, serverPicoseconds=0)', NULL, 1),
(10, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.3317480 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.3317480 GMT, serverPicoseconds=0)', NULL, 1),
(11, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.3700431 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.3700431 GMT, serverPicoseconds=0)', NULL, 1),
(12, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.4147739 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.4147739 GMT, serverPicoseconds=0)', NULL, 1),
(13, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.4412877 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.4412877 GMT, serverPicoseconds=0)', NULL, 1),
(14, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.4571589 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.4571589 GMT, serverPicoseconds=0)', NULL, 1),
(15, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.4803229 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.4803229 GMT, serverPicoseconds=0)', NULL, 1),
(16, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.5056074 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.5056074 GMT, serverPicoseconds=0)', NULL, 1),
(17, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.5194533 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.5194533 GMT, serverPicoseconds=0)', NULL, 1),
(18, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.6121095 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.6121095 GMT, serverPicoseconds=0)', NULL, 1),
(19, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.6290255 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.6290255 GMT, serverPicoseconds=0)', NULL, 1),
(20, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.6458464 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.6458464 GMT, serverPicoseconds=0)', NULL, 1),
(21, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.6740725 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.6740725 GMT, serverPicoseconds=0)', NULL, 1),
(22, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.6900263 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.6900263 GMT, serverPicoseconds=0)', NULL, 1),
(23, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.7110625 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.7110625 GMT, serverPicoseconds=0)', NULL, 1),
(24, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.7468305 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.7468305 GMT, serverPicoseconds=0)', NULL, 1),
(25, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.7762177 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.7762177 GMT, serverPicoseconds=0)', NULL, 1),
(26, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.7911097 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.7911097 GMT, serverPicoseconds=0)', NULL, 1),
(27, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.8057796 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.8057796 GMT, serverPicoseconds=0)', NULL, 1),
(28, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.8583509 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.8583509 GMT, serverPicoseconds=0)', NULL, 1),
(29, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.8731908 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.8731908 GMT, serverPicoseconds=0)', NULL, 1),
(30, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.8873198 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.8873198 GMT, serverPicoseconds=0)', NULL, 1),
(31, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:21:17.9007183 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:21:17.9007183 GMT, serverPicoseconds=0)', NULL, 1),
(32, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:05.7390088 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:05.7390088 GMT, serverPicoseconds=0)', NULL, 1),
(33, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:05.9300578 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:05.9300578 GMT, serverPicoseconds=0)', NULL, 1),
(34, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:06.3534966 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:06.3534966 GMT, serverPicoseconds=0)', NULL, 1),
(35, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:06.4347337 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:06.4347337 GMT, serverPicoseconds=0)', NULL, 1),
(36, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:07.6567677 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:07.6567677 GMT, serverPicoseconds=0)', NULL, 1),
(37, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:07.7950202 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:07.7950202 GMT, serverPicoseconds=0)', NULL, 1),
(38, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:08.2391727 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:08.2391727 GMT, serverPicoseconds=0)', NULL, 1),
(39, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:08.4204497 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:08.4204497 GMT, serverPicoseconds=0)', NULL, 1),
(40, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:08.6174786 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:08.6174786 GMT, serverPicoseconds=0)', NULL, 1),
(41, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:08.7156560 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:08.7156560 GMT, serverPicoseconds=0)', NULL, 1),
(42, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:08.8127561 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:08.8127561 GMT, serverPicoseconds=0)', NULL, 1),
(43, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:08.9412840 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:08.9412840 GMT, serverPicoseconds=0)', NULL, 1),
(44, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:09.1052659 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:09.1052659 GMT, serverPicoseconds=0)', NULL, 1),
(45, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:09.2474598 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:09.2474598 GMT, serverPicoseconds=0)', NULL, 1),
(46, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:09.3619064 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:09.3619064 GMT, serverPicoseconds=0)', NULL, 1),
(47, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:09.5834901 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:09.5834901 GMT, serverPicoseconds=0)', NULL, 1),
(48, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:09.7636822 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:09.7636822 GMT, serverPicoseconds=0)', NULL, 1),
(49, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:09.7986949 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:09.7986949 GMT, serverPicoseconds=0)', NULL, 1),
(50, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:09.8787492 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:09.8787492 GMT, serverPicoseconds=0)', NULL, 1),
(51, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:09.9509106 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:09.9509106 GMT, serverPicoseconds=0)', NULL, 1),
(52, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:10.0441505 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:10.0441505 GMT, serverPicoseconds=0)', NULL, 1),
(53, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:10.0578683 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:10.0578683 GMT, serverPicoseconds=0)', NULL, 1),
(54, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:10.0754667 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:10.0754667 GMT, serverPicoseconds=0)', NULL, 1),
(55, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:10.1036982 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:10.1036982 GMT, serverPicoseconds=0)', NULL, 1),
(56, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:10.2378194 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:10.2378194 GMT, serverPicoseconds=0)', NULL, 1),
(57, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:10.3606001 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:10.3606001 GMT, serverPicoseconds=0)', NULL, 1),
(58, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:10.3743279 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:10.3743279 GMT, serverPicoseconds=0)', NULL, 1),
(59, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:10.3937056 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:10.3937056 GMT, serverPicoseconds=0)', NULL, 1),
(60, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:10.4103485 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:10.4103485 GMT, serverPicoseconds=0)', NULL, 1),
(61, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:10.4271667 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:10.4271667 GMT, serverPicoseconds=0)', NULL, 1),
(62, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:10.4970943 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:10.4970943 GMT, serverPicoseconds=0)', NULL, 1),
(63, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:10.5430553 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:10.5430553 GMT, serverPicoseconds=0)', NULL, 1),
(64, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:10.6308093 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:10.6308093 GMT, serverPicoseconds=0)', NULL, 1),
(65, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:10.6590954 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:10.6590954 GMT, serverPicoseconds=0)', NULL, 1),
(66, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.0980513 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.0980513 GMT, serverPicoseconds=0)', NULL, 1),
(67, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.1478799 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.1478799 GMT, serverPicoseconds=0)', NULL, 1),
(68, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.1733628 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.1733628 GMT, serverPicoseconds=0)', NULL, 1),
(69, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.1925742 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.1925742 GMT, serverPicoseconds=0)', NULL, 1),
(70, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.2074966 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.2074966 GMT, serverPicoseconds=0)', NULL, 1),
(71, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.2238346 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.2238346 GMT, serverPicoseconds=0)', NULL, 1),
(72, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.2578588 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.2578588 GMT, serverPicoseconds=0)', NULL, 1),
(73, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.2921373 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.2921373 GMT, serverPicoseconds=0)', NULL, 1),
(74, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.3132683 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.3132683 GMT, serverPicoseconds=0)', NULL, 1),
(75, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.3396845 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.3396845 GMT, serverPicoseconds=0)', NULL, 1),
(76, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.3732343 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.3732343 GMT, serverPicoseconds=0)', NULL, 1),
(77, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.4017043 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.4017043 GMT, serverPicoseconds=0)', NULL, 1),
(78, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.4188923 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.4188923 GMT, serverPicoseconds=0)', NULL, 1),
(79, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.4508110 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.4508110 GMT, serverPicoseconds=0)', NULL, 1),
(80, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.4882330 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.4882330 GMT, serverPicoseconds=0)', NULL, 1),
(81, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.5086358 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.5086358 GMT, serverPicoseconds=0)', NULL, 1),
(82, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.5331668 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.5331668 GMT, serverPicoseconds=0)', NULL, 1),
(83, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.5673351 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.5673351 GMT, serverPicoseconds=0)', NULL, 1),
(84, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.6015880 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.6015880 GMT, serverPicoseconds=0)', NULL, 1),
(85, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.6453026 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.6453026 GMT, serverPicoseconds=0)', NULL, 1),
(86, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.6762272 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.6762272 GMT, serverPicoseconds=0)', NULL, 1),
(87, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.7042033 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.7042033 GMT, serverPicoseconds=0)', NULL, 1),
(88, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.7266551 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.7266551 GMT, serverPicoseconds=0)', NULL, 1),
(89, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.7503665 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.7503665 GMT, serverPicoseconds=0)', NULL, 1),
(90, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.7931252 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.7931252 GMT, serverPicoseconds=0)', NULL, 1),
(91, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.8281699 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.8281699 GMT, serverPicoseconds=0)', NULL, 1),
(92, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.8711505 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.8711505 GMT, serverPicoseconds=0)', NULL, 1),
(93, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.9016998 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.9016998 GMT, serverPicoseconds=0)', NULL, 1),
(94, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.9337197 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.9337197 GMT, serverPicoseconds=0)', NULL, 1),
(95, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:25.9782144 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:25.9782144 GMT, serverPicoseconds=0)', NULL, 1),
(96, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:38:26.0078118 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:38:26.0078118 GMT, serverPicoseconds=0)', NULL, 1),
(97, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.2576261 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.2576261 GMT, serverPicoseconds=0)', NULL, 1),
(98, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.3163846 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.3163846 GMT, serverPicoseconds=0)', NULL, 1),
(99, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.3505896 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.3505896 GMT, serverPicoseconds=0)', NULL, 1),
(100, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.3951077 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.3951077 GMT, serverPicoseconds=0)', NULL, 1),
(101, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.4521485 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.4521485 GMT, serverPicoseconds=0)', NULL, 1),
(102, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.4927120 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.4927120 GMT, serverPicoseconds=0)', NULL, 1),
(103, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.5351394 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.5351394 GMT, serverPicoseconds=0)', NULL, 1),
(104, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.5669125 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.5669125 GMT, serverPicoseconds=0)', NULL, 1),
(105, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.6013666 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.6013666 GMT, serverPicoseconds=0)', NULL, 1),
(106, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.6454730 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.6454730 GMT, serverPicoseconds=0)', NULL, 1),
(107, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.6775809 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.6775809 GMT, serverPicoseconds=0)', NULL, 1),
(108, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.7010372 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.7010372 GMT, serverPicoseconds=0)', NULL, 1),
(109, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.7458848 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.7458848 GMT, serverPicoseconds=0)', NULL, 1),
(110, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.7766909 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.7766909 GMT, serverPicoseconds=0)', NULL, 1),
(111, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.8066757 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.8066757 GMT, serverPicoseconds=0)', NULL, 1),
(112, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.8246235 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.8246235 GMT, serverPicoseconds=0)', NULL, 1),
(113, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.8446483 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.8446483 GMT, serverPicoseconds=0)', NULL, 1),
(114, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.8724482 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.8724482 GMT, serverPicoseconds=0)', NULL, 1),
(115, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.8991619 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.8991619 GMT, serverPicoseconds=0)', NULL, 1),
(116, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.9438801 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.9438801 GMT, serverPicoseconds=0)', NULL, 1),
(117, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:24.9741365 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:24.9741365 GMT, serverPicoseconds=0)', NULL, 1),
(118, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:25.0037812 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:25.0037812 GMT, serverPicoseconds=0)', NULL, 1),
(119, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:25.0285745 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:25.0285745 GMT, serverPicoseconds=0)', NULL, 1),
(120, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:25.0626717 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:25.0626717 GMT, serverPicoseconds=0)', NULL, 1),
(121, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:25.0957710 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:25.0957710 GMT, serverPicoseconds=0)', NULL, 1),
(122, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:25.1297092 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:25.1297092 GMT, serverPicoseconds=0)', NULL, 1),
(123, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:25.1610394 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:25.1610394 GMT, serverPicoseconds=0)', NULL, 1),
(124, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:25.1886960 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:25.1886960 GMT, serverPicoseconds=0)', NULL, 1),
(125, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:25.2111420 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:25.2111420 GMT, serverPicoseconds=0)', NULL, 1),
(126, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:25.2409060 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:25.2409060 GMT, serverPicoseconds=0)', NULL, 1),
(127, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:39:25.2652436 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:39:25.2652436 GMT, serverPicoseconds=0)', NULL, 1),
(128, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:46.9279621 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:46.9279621 GMT, serverPicoseconds=0)', NULL, 1),
(129, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:46.9720041 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:46.9720041 GMT, serverPicoseconds=0)', NULL, 1),
(130, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:46.9939733 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:46.9939733 GMT, serverPicoseconds=0)', NULL, 1),
(131, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.0128062 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.0128062 GMT, serverPicoseconds=0)', NULL, 1),
(132, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.0274784 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.0274784 GMT, serverPicoseconds=0)', NULL, 1),
(133, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.0413721 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.0413721 GMT, serverPicoseconds=0)', NULL, 1),
(134, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.0574370 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.0574370 GMT, serverPicoseconds=0)', NULL, 1),
(135, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.0730711 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.0730711 GMT, serverPicoseconds=0)', NULL, 1),
(136, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.0888157 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.0888157 GMT, serverPicoseconds=0)', NULL, 1),
(137, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.1036683 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.1036683 GMT, serverPicoseconds=0)', NULL, 1),
(138, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.1204215 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.1204215 GMT, serverPicoseconds=0)', NULL, 1),
(139, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.1374096 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.1374096 GMT, serverPicoseconds=0)', NULL, 1),
(140, 'DataValue(value=-1, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.1587115 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.1587115 GMT, serverPicoseconds=0)', NULL, 1),
(141, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.1929533 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.1929533 GMT, serverPicoseconds=0)', NULL, 1),
(142, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.2118330 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.2118330 GMT, serverPicoseconds=0)', NULL, 1),
(143, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.2278927 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.2278927 GMT, serverPicoseconds=0)', NULL, 1),
(144, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.2478159 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.2478159 GMT, serverPicoseconds=0)', NULL, 1),
(145, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.2645819 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.2645819 GMT, serverPicoseconds=0)', NULL, 1),
(146, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.2814985 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.2814985 GMT, serverPicoseconds=0)', NULL, 1),
(147, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.2984359 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.2984359 GMT, serverPicoseconds=0)', NULL, 1),
(148, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.3120426 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.3120426 GMT, serverPicoseconds=0)', NULL, 1),
(149, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.3299198 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.3299198 GMT, serverPicoseconds=0)', NULL, 1),
(150, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.3471850 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.3471850 GMT, serverPicoseconds=0)', NULL, 1),
(151, 'DataValue(value=19275, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.3637186 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.3637186 GMT, serverPicoseconds=0)', NULL, 1),
(152, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.3785080 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.3785080 GMT, serverPicoseconds=0)', NULL, 1),
(153, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.3936125 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.3936125 GMT, serverPicoseconds=0)', NULL, 1),
(154, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.4103365 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.4103365 GMT, serverPicoseconds=0)', NULL, 1),
(155, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.4281145 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.4281145 GMT, serverPicoseconds=0)', NULL, 1),
(156, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.4418219 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.4418219 GMT, serverPicoseconds=0)', NULL, 1),
(157, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.4557054 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.4557054 GMT, serverPicoseconds=0)', NULL, 1),
(158, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.4693379 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.4693379 GMT, serverPicoseconds=0)', NULL, 1),
(159, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.4830522 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.4830522 GMT, serverPicoseconds=0)', NULL, 1),
(160, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.4967200 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.4967200 GMT, serverPicoseconds=0)', NULL, 1),
(161, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.5095195 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.5095195 GMT, serverPicoseconds=0)', NULL, 1),
(162, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.5233042 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.5233042 GMT, serverPicoseconds=0)', NULL, 1),
(163, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.5401750 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.5401750 GMT, serverPicoseconds=0)', NULL, 1),
(164, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.5539424 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.5539424 GMT, serverPicoseconds=0)', NULL, 1),
(165, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.5670041 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.5670041 GMT, serverPicoseconds=0)', NULL, 1),
(166, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.5824543 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.5824543 GMT, serverPicoseconds=0)', NULL, 1),
(167, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.5994376 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.5994376 GMT, serverPicoseconds=0)', NULL, 1),
(168, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:59:47.6183185 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:59:47.6183185 GMT, serverPicoseconds=0)', NULL, 1),
(169, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.3911496 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.3911496 GMT, serverPicoseconds=0)', NULL, 1),
(170, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.4466826 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.4466826 GMT, serverPicoseconds=0)', NULL, 1),
(171, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.5116733 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.5116733 GMT, serverPicoseconds=0)', NULL, 1),
(172, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.5463348 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.5463348 GMT, serverPicoseconds=0)', NULL, 1),
(173, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.5892905 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.5892905 GMT, serverPicoseconds=0)', NULL, 1),
(174, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.6228708 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.6228708 GMT, serverPicoseconds=0)', NULL, 1),
(175, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.6420889 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.6420889 GMT, serverPicoseconds=0)', NULL, 1),
(176, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.6779547 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.6779547 GMT, serverPicoseconds=0)', NULL, 1),
(177, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.6954471 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.6954471 GMT, serverPicoseconds=0)', NULL, 1),
(178, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.7221528 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.7221528 GMT, serverPicoseconds=0)', NULL, 1),
(179, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.7397237 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.7397237 GMT, serverPicoseconds=0)', NULL, 1),
(180, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.7680365 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.7680365 GMT, serverPicoseconds=0)', NULL, 1),
(181, 'DataValue(value=32767, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.8319657 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.8319657 GMT, serverPicoseconds=0)', NULL, 1),
(182, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.8496381 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.8496381 GMT, serverPicoseconds=0)', NULL, 1),
(183, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.8644536 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.8644536 GMT, serverPicoseconds=0)', NULL, 1),
(184, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.9116117 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.9116117 GMT, serverPicoseconds=0)', NULL, 1),
(185, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.9285600 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.9285600 GMT, serverPicoseconds=0)', NULL, 1),
(186, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.9431262 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.9431262 GMT, serverPicoseconds=0)', NULL, 1),
(187, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.9663108 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.9663108 GMT, serverPicoseconds=0)', NULL, 1),
(188, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:22.9866086 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:22.9866086 GMT, serverPicoseconds=0)', NULL, 1),
(189, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:23.0013193 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:23.0013193 GMT, serverPicoseconds=0)', NULL, 1),
(190, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:23.0317374 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:23.0317374 GMT, serverPicoseconds=0)', NULL, 1),
(191, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:23.0526601 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:23.0526601 GMT, serverPicoseconds=0)', NULL, 1),
(192, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:23.0663139 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:23.0663139 GMT, serverPicoseconds=0)', NULL, 1),
(193, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:23.0831692 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:23.0831692 GMT, serverPicoseconds=0)', NULL, 1),
(194, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 02:03:23.1062990 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 02:03:23.1062990 GMT, serverPicoseconds=0)', NULL, 1),
(195, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:20.7659740 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:20.7659740 GMT, serverPicoseconds=0)', NULL, 1),
(196, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:20.8109284 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:20.8109284 GMT, serverPicoseconds=0)', NULL, 1),
(197, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:20.8266945 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:20.8266945 GMT, serverPicoseconds=0)', NULL, 1),
(198, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:20.8467041 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:20.8467041 GMT, serverPicoseconds=0)', NULL, 1),
(199, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:20.8645799 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:20.8645799 GMT, serverPicoseconds=0)', NULL, 1),
(200, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:20.8887956 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:20.8887956 GMT, serverPicoseconds=0)', NULL, 1),
(201, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:20.9153993 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:20.9153993 GMT, serverPicoseconds=0)', NULL, 1),
(202, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:20.9309382 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:20.9309382 GMT, serverPicoseconds=0)', NULL, 1),
(203, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:20.9477399 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:20.9477399 GMT, serverPicoseconds=0)', NULL, 1),
(204, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:20.9656890 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:20.9656890 GMT, serverPicoseconds=0)', NULL, 1),
(205, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:20.9972098 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:20.9972098 GMT, serverPicoseconds=0)', NULL, 1),
(206, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.0161297 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.0161297 GMT, serverPicoseconds=0)', NULL, 1),
(207, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.0300996 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.0300996 GMT, serverPicoseconds=0)', NULL, 1),
(208, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.0436116 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.0436116 GMT, serverPicoseconds=0)', NULL, 1),
(209, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.0575563 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.0575563 GMT, serverPicoseconds=0)', NULL, 1),
(210, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.0806048 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.0806048 GMT, serverPicoseconds=0)', NULL, 1),
(211, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.0964444 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.0964444 GMT, serverPicoseconds=0)', NULL, 1),
(212, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.1081081 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.1081081 GMT, serverPicoseconds=0)', NULL, 1),
(213, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.1218168 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.1218168 GMT, serverPicoseconds=0)', NULL, 1);
INSERT INTO `datavalue` (`ValueID`, `Rohwert`, `BerechneterWert`, `Valid`) VALUES
(214, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.1346968 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.1346968 GMT, serverPicoseconds=0)', NULL, 1),
(215, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.1637834 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.1637834 GMT, serverPicoseconds=0)', NULL, 1),
(216, 'DataValue(value=3281, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.1765160 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.1765160 GMT, serverPicoseconds=0)', NULL, 1),
(217, 'DataValue(value=0, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.1913929 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.1913929 GMT, serverPicoseconds=0)', NULL, 1),
(218, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.2041323 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.2041323 GMT, serverPicoseconds=0)', NULL, 1),
(219, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.2219997 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.2219997 GMT, serverPicoseconds=0)', NULL, 1),
(220, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.2399802 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.2399802 GMT, serverPicoseconds=0)', NULL, 1),
(221, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.2536939 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.2536939 GMT, serverPicoseconds=0)', NULL, 1),
(222, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.2715320 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.2715320 GMT, serverPicoseconds=0)', NULL, 1),
(223, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.3041456 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.3041456 GMT, serverPicoseconds=0)', NULL, 1),
(224, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.3336194 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.3336194 GMT, serverPicoseconds=0)', NULL, 1),
(225, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.3492816 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.3492816 GMT, serverPicoseconds=0)', NULL, 1),
(226, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.3641708 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.3641708 GMT, serverPicoseconds=0)', NULL, 1),
(227, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.3778018 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.3778018 GMT, serverPicoseconds=0)', NULL, 1),
(228, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.3905163 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.3905163 GMT, serverPicoseconds=0)', NULL, 1),
(229, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.4136255 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.4136255 GMT, serverPicoseconds=0)', NULL, 1),
(230, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.4283228 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.4283228 GMT, serverPicoseconds=0)', NULL, 1),
(231, 'DataValue(value=true, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.4420328 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.4420328 GMT, serverPicoseconds=0)', NULL, 1),
(232, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/18/24 11:06:21.4548527 GMT, sourcePicoseconds=0, serverTimestamp=03/18/24 11:06:21.4548527 GMT, serverPicoseconds=0)', NULL, 1);

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
