-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 17 Ιαν 2021 στις 19:42:47
-- Έκδοση διακομιστή: 10.4.17-MariaDB
-- Έκδοση PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `test`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `astheneies_kai_diagnosi`
--

CREATE TABLE `astheneies_kai_diagnosi` (
  `onoma_astheneias` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `astheneies_kai_diagnosi`
--

INSERT INTO `astheneies_kai_diagnosi` (`onoma_astheneias`) VALUES
('allergia'),
('arithmies'),
('covid-19'),
('covid-20'),
('gastrenteritida'),
('gripi'),
('katagma'),
('kruologhma'),
('provlima_orasis');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `dedomena_asthenwn`
--

CREATE TABLE `dedomena_asthenwn` (
  `amka` int(11) NOT NULL,
  `onomatepwnumo` varchar(100) NOT NULL,
  `dieuthinsi` varchar(100) NOT NULL,
  `asfalistikos_foreas` varchar(100) NOT NULL,
  `xronia_nosimata` varchar(300) DEFAULT NULL,
  `plhrofories_prohgoumenwn_episkepsewn` varchar(300) DEFAULT NULL,
  `symptoms` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `dedomena_asthenwn`
--

INSERT INTO `dedomena_asthenwn` (`amka`, `onomatepwnumo`, `dieuthinsi`, `asfalistikos_foreas`, `xronia_nosimata`, `plhrofories_prohgoumenwn_episkepsewn`, `symptoms`) VALUES
(131312, 'Petros Arnakis', 'kentro', 'oga', '', NULL, 'ponolaimos'),
(12312312, 'Giorgos Giorgou', 'Kentro', 'efka', 'epilipsia', '23/12/2020-phre farmakeutikh agwgh', 'ponokefalos'),
(12347536, 'Tasos Magkas', 'Kentro', 'ika', 'kardiaki aneparkeia', '12/01/2021-miniaio checkup-agwgh paramenei idia', 'ponos'),
(31231231, 'Mixalis Leontas', 'Therisos', 'oga', 'diavitis', '12/11/2020-programmatismeno checkup', 'ponolaimos'),
(53523123, 'Kostas Konstantinou', 'Amnisos', 'ika', '', '11/04/2020-eksetasi sta epeigonta-phre agwgh', 'puretos');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `dedomena_efimerias`
--

CREATE TABLE `dedomena_efimerias` (
  `arithmos_diathesimwn_giatrwn` int(11) NOT NULL,
  `arithmos_diathesimwn_noshleutwn` int(11) NOT NULL,
  `arithmos_diathesimwn_dioikitikou_proswpikou` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `dedomena_efimerias`
--

INSERT INTO `dedomena_efimerias` (`arithmos_diathesimwn_giatrwn`, `arithmos_diathesimwn_noshleutwn`, `arithmos_diathesimwn_dioikitikou_proswpikou`) VALUES
(6, 2, 1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `dedomena_prosopikou`
--

CREATE TABLE `dedomena_prosopikou` (
  `onomatepwnumo` varchar(100) NOT NULL,
  `epaggelma` varchar(20) NOT NULL,
  `ekseidikikeusi` varchar(25) DEFAULT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `dedomena_prosopikou`
--

INSERT INTO `dedomena_prosopikou` (`onomatepwnumo`, `epaggelma`, `ekseidikikeusi`, `phone_number`) VALUES
('Aggelos Rosmarakis', 'giatros', 'orthopedikos', 1231231231),
('Allec Greco', 'giatros', 'allergiologos', 1231231231),
('Asterios Lentzos', 'upallilos', ' ', 1231231231),
('Giannis Dicaprio', 'giatros', 'ofthalmiatros', 1231231231),
('Giorgos Rousos', 'giatros', 'kardiologos', 1231231231),
('Giorgos Vamvakousis', 'giatros', 'genikos', 1231231231),
('Kwstas Mathiou', 'giatros', 'gastrenterologos', 1231231231),
('Maria Koula', 'nosileutis', ' ', 1231231231),
('Marios Nitis', 'nosileutis', ' ', 1231231231),
('Mixalis Toutou', 'giatros', 'allergiologos', 1231231231),
('Periandros Kotas', 'giatros', 'ofthalmiatros', 1231231231),
('Petros Peikos', 'giatros', 'orthopedikos', 1231231231),
('Rio Patatas', 'giatros', 'gastrenterologos', 1231231231),
('Sofronis Antoniou', 'upallilos', ' ', 1231231231),
('Tasia Koula', 'nosileutis', ' ', 1231231231),
('Triandros Vam', 'giatros', 'genikos', 1231231231),
('Vicky Katsouni', 'nosileutis', ' ', 1231231231),
('Vladimiros Rousounelos', 'giatros', 'kardiologos', 1231231231);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `eksetaseis_kai_farmaka`
--

CREATE TABLE `eksetaseis_kai_farmaka` (
  `onoma_diathesimou_farmakou` varchar(50) NOT NULL,
  `tupos_farmakou` varchar(15) NOT NULL,
  `periektikotita_se_drastiki_ousia` int(11) NOT NULL,
  `katallilo_gia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `eksetaseis_kai_farmaka`
--

INSERT INTO `eksetaseis_kai_farmaka` (`onoma_diathesimou_farmakou`, `tupos_farmakou`, `periektikotita_se_drastiki_ousia`, `katallilo_gia`) VALUES
('arichol', 'xapi', 500, 'ponos_stin_kardia'),
('artelac', 'stagones', 10, 'provlima_sta_matia'),
('bisolvon00', 'xapi', 150, 'ponolaimos'),
('bisolvon01', 'siropi', 150, 'ponolaimos'),
('depon00', 'xapi', 500, 'ponokefalos'),
('depon01', 'siropi', 500, 'ponokefalos'),
('mesulid', 'xapi', 500, 'ponos'),
('ponstan00', 'xapi', 120, 'puretos'),
('ponstan01', 'siropi', 120, 'puretos'),
('prodiac', 'kapsoula', 30, 'ponokoilos'),
('xanax', 'xapi', 1000, 'ponos'),
('xozal', 'xapi', 1000, 'allergies');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `eksetazomenoi_astheneis`
--

CREATE TABLE `eksetazomenoi_astheneis` (
  `onomatepwnumo` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `farmakeutikh_agwgh` varchar(255) DEFAULT NULL,
  `anafora` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `eksetazomenoi_astheneis`
--

INSERT INTO `eksetazomenoi_astheneis` (`onomatepwnumo`, `name`, `diagnosis`, `farmakeutikh_agwgh`, `anafora`) VALUES
('Giorgos Giorgou', 'Giorgos', 'covid-19', '', ' '),
('Petros Arnakis', 'Petros', 'gripi', 'bisolvon01', 'tha vgei');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `nosileuomenoi_astheneis`
--

CREATE TABLE `nosileuomenoi_astheneis` (
  `onomatepwnumo` varchar(255) NOT NULL,
  `amka` varchar(255) NOT NULL,
  `diagnosis` varchar(255) NOT NULL,
  `farmakeutikh_agwgh` varchar(255) NOT NULL,
  `dieuthinsi` varchar(255) NOT NULL,
  `asfalistikos_foreas` varchar(255) NOT NULL,
  `xronia_nosimata` varchar(255) NOT NULL,
  `symptoms` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `nosileuomenoi_astheneis`
--

INSERT INTO `nosileuomenoi_astheneis` (`onomatepwnumo`, `amka`, `diagnosis`, `farmakeutikh_agwgh`, `dieuthinsi`, `asfalistikos_foreas`, `xronia_nosimata`, `symptoms`) VALUES
('Makis Leontas', '57234543', 'covid-19', '', 'Kentro', 'ika', '', 'puretos');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`email`, `username`, `password`) VALUES
('ekei@gmail.com', 'stelios', '1234');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `xristes_pliroforiakou_susthmatos`
--

CREATE TABLE `xristes_pliroforiakou_susthmatos` (
  `onoma_xristi_sustimatos` varchar(100) NOT NULL,
  `idiotita_xristi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `xristes_pliroforiakou_susthmatos`
--

INSERT INTO `xristes_pliroforiakou_susthmatos` (`onoma_xristi_sustimatos`, `idiotita_xristi`) VALUES
('Aggelos Rosmarakis', 'proswpiko'),
('Allec Greco', 'proswpiko'),
('Asterios Lentzos', 'proswpiko'),
('Giannis Dicaprio', 'proswpiko'),
('Giorgos Giorgou', 'asthenis'),
('Giorgos Rousos', 'proswpiko'),
('Giorgos Vamvakousis', 'proswpiko'),
('Kostas Konstantinou', 'asthenis'),
('Kwstas Mathiou', 'proswpiko'),
('Makis Leontas', 'asthenis'),
('Maria Koula', 'proswpiko'),
('Marios Nitis', 'proswpiko'),
('Mixalis Leontas', 'asthenis'),
('Mixalis Toutou', 'proswpiko'),
('Periandros Kotas', 'proswpiko'),
('Petros Peikos', 'proswpiko'),
('Rio Patatas', 'proswpiko'),
('Sofronis Antoniou', 'proswpiko'),
('Tasia Koula', 'proswpiko'),
('Tasos Magkas', 'asthenis'),
('Triandros Vam', 'proswpiko'),
('Vicky Katsouni', 'proswpiko'),
('Vladimiros Rousounelos', 'proswpiko');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `astheneies_kai_diagnosi`
--
ALTER TABLE `astheneies_kai_diagnosi`
  ADD PRIMARY KEY (`onoma_astheneias`);

--
-- Ευρετήρια για πίνακα `dedomena_asthenwn`
--
ALTER TABLE `dedomena_asthenwn`
  ADD PRIMARY KEY (`amka`);

--
-- Ευρετήρια για πίνακα `dedomena_efimerias`
--
ALTER TABLE `dedomena_efimerias`
  ADD PRIMARY KEY (`arithmos_diathesimwn_giatrwn`);

--
-- Ευρετήρια για πίνακα `dedomena_prosopikou`
--
ALTER TABLE `dedomena_prosopikou`
  ADD PRIMARY KEY (`onomatepwnumo`);

--
-- Ευρετήρια για πίνακα `eksetaseis_kai_farmaka`
--
ALTER TABLE `eksetaseis_kai_farmaka`
  ADD PRIMARY KEY (`onoma_diathesimou_farmakou`);

--
-- Ευρετήρια για πίνακα `eksetazomenoi_astheneis`
--
ALTER TABLE `eksetazomenoi_astheneis`
  ADD PRIMARY KEY (`onomatepwnumo`);

--
-- Ευρετήρια για πίνακα `nosileuomenoi_astheneis`
--
ALTER TABLE `nosileuomenoi_astheneis`
  ADD PRIMARY KEY (`onomatepwnumo`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- Ευρετήρια για πίνακα `xristes_pliroforiakou_susthmatos`
--
ALTER TABLE `xristes_pliroforiakou_susthmatos`
  ADD PRIMARY KEY (`onoma_xristi_sustimatos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
