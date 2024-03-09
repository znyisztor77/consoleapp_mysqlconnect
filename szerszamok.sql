-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 09. 20:07
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `szerszamok`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szerszamok`
--

CREATE TABLE `szerszamok` (
  `szeszamid` int(11) DEFAULT NULL,
  `megnevezes` varchar(100) DEFAULT NULL,
  `egysegar` int(11) DEFAULT NULL,
  `darabszam` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `szerszamok`
--

INSERT INTO `szerszamok` (`szeszamid`, `megnevezes`, `egysegar`, `darabszam`) VALUES
(1, 'Kalapács', 1500, 34),
(2, 'véső', 1000, 23),
(3, 'fűrész', 8300, 7),
(4, 'csavarhúzó', 3000, 12);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
