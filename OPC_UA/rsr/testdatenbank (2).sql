-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 13. Mrz 2024 um 14:19
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
(38, 5, 170, 38, '2024-03-13 13:18:21');

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
(38, 'DataValue(value=false, statusCode=GOOD (0x00000000) \"The operation succeeded.\", sourceTimestamp=03/13/24 13:14:25.2834627 GMT, sourcePicoseconds=0, serverTimestamp=03/13/24 13:14:25.2834627 GMT, serverPicoseconds=0)', NULL, 1);

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
