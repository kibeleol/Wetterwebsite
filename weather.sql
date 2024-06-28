-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 27. Jun 2024 um 16:05
-- Server-Version: 10.4.21-MariaDB
-- PHP-Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `weather_data`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `weather`
--

CREATE TABLE `weather` (
  `id` int(11) NOT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `feels_like_temp` float DEFAULT NULL,
  `temp_min` float DEFAULT NULL,
  `temp_max` float DEFAULT NULL,
  `weather_description` varchar(255) DEFAULT NULL,
  `wind_speed` float DEFAULT NULL,
  `cloudiness` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `weather`
--

INSERT INTO `weather` (`id`, `city_name`, `temperature`, `feels_like_temp`, `temp_min`, `temp_max`, `weather_description`, `wind_speed`, `cloudiness`, `timestamp`) VALUES
(10, 'Tettnang Castle', 24.1, 24.42, 22.51, 26.04, 'Few clouds', 3.09, 20, '2024-06-27 11:55:53'),
(11, 'Tettnang Castle', 24.1, 24.42, 22.51, 26.04, 'Few clouds', 3.09, 20, '2024-06-27 11:57:51'),
(12, 'Tettnang Castle', 24.1, 24.42, 22.51, 26.04, 'Few clouds', 3.09, 20, '2024-06-27 11:57:53'),
(13, 'Tettnang Castle', 24.1, 24.42, 22.51, 26.04, 'Few clouds', 3.09, 20, '2024-06-27 11:57:55'),
(14, 'Tettnang Castle', 24.1, 24.42, 22.51, 26.04, 'Few clouds', 3.09, 20, '2024-06-27 11:58:12'),
(16, 'Tettnang Castle', 23.91, 24.26, 22.51, 26.04, 'Light rain', 4.12, 20, '2024-06-27 12:18:19'),
(17, 'Tettnang Castle', 23.89, 24.24, 23.57, 25.37, 'Light rain', 4.12, 20, '2024-06-27 12:31:47'),
(18, 'Tettnang Castle', 23.89, 24.24, 23.57, 25.37, 'Light rain', 4.12, 20, '2024-06-27 12:32:11'),
(19, 'Tettnang Castle', 23.89, 24.24, 23.57, 25.37, 'Light rain', 4.12, 20, '2024-06-27 12:32:14'),
(20, 'Tettnang Castle', 23.89, 24.24, 23.57, 25.37, 'Light rain', 4.12, 20, '2024-06-27 12:32:15'),
(21, 'Tettnang Castle', 23.89, 24.24, 23.57, 25.37, 'Light rain', 4.12, 20, '2024-06-27 12:32:17'),
(22, 'Tettnang Castle', 23.1, 23.37, 21.57, 28.26, 'Light rain', 3.6, 20, '2024-06-27 12:49:21'),
(23, 'Tettnang Castle', 23.62, 23.92, 21.57, 26.25, 'Few clouds', 3.6, 20, '2024-06-27 13:18:46'),
(24, 'Tettnang Castle', 24.19, 24.47, 22.51, 25.37, 'Few clouds', 4.12, 20, '2024-06-27 13:36:11'),
(25, 'Tettnang Castle', 25.04, 25.35, 23.57, 27.04, 'Few clouds', 4.12, 20, '2024-06-27 14:02:54');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `weather`
--
ALTER TABLE `weather`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
