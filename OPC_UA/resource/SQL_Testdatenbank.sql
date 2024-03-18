-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 18. Mrz 2024 um 11:54
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
(65, 2, 65, 65, '2024-03-18 10:47:47');

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
(65, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=04/28/12 01:44:10.6590954 GMT, sourcePicoseconds=0, serverTimestamp=04/28/12 01:44:10.6590954 GMT, serverPicoseconds=0)', NULL, 1);

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
