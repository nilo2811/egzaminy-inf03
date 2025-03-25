-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Kwi 2024, 12:21
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `psy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `login` text NOT NULL,
  `haslo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`login`, `haslo`) VALUES
('Justyna', 'a056c8d05ae9ac6ca180bc991b93b7ffe37563e0'),
('Ewa', 'c50267b906a652f2142cfab006e215c9f6fdc8a0'),
('Krzysiek', '637a81ed8e8217bb01c15c67c39b43b0ab4e20f1'),
('Adam', '8578173555a47d4ea49e697badfda270dee0858f'),
('Magda', '99ebdbd711b0e1854a6c2e93f759efc2af291fd0'),
('Werka', '186154712b2d5f6791d85b9a0987b98fa231779c'),
( 'Janek', '7823372203bd98aeb10e6f33a6ce7dab12d13423'),
( 'Heniek', '425ffc1422dc4f32528bd9fd5af355fdb5c96192'),
( 'Ola', '4ae9fa0a8299a828a886c0eb30c930c7cf302a72'),
( 'Dawid', 'b3054ff0797ff0b2bbce03ec897fe63e0b6490e0'),
( 'Ewelina', '7e240de74fb1ed08fa08d38063f6a6a91462a815'),
( 'asas', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
( 'ssss', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
( 'ssssssssssss', 'c455582f41f589213a7d34ccb3954c67476077da'),
( ' dfgdfg', '7e240de74fb1ed08fa08d38063f6a6a91462a815');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
