-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2019 at 07:39 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musnest`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Pitch Perfect', 1, 2, 'assets/images/artwork/pitchperfect.jpg'),
(2, 'Plavi avion', 2, 1, 'assets/images/artwork/plaviavion.jpg'),
(3, 'Tijelo', 4, 4, 'assets/images/artwork/tijelo.jpg'),
(4, 'Tour de tour', 3, 3, 'assets/images/artwork/tourdetour.jpg'),
(5, 'Pistaccio metallic', 5, 1, 'assets/images/artwork/pistacciometallic.jpg'),
(6, 'Male stvari', 4, 4, 'assets/images/artwork/malestvari.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Anna Kendrick'),
(2, 'Darko Rundek'),
(3, 'Detour'),
(4, 'Elemetal'),
(5, 'TBF');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Country'),
(3, 'Pop'),
(4, 'Hiphop'),
(5, 'Rap'),
(6, 'Techno'),
(7, 'Jazz'),
(8, 'Classical');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Cups', 1, 1, 2, '4:21', 'assets/music/cups.mp3', 1, 21),
(2, 'Goli i bosi', 4, 3, 4, '3:46', 'assets/music/goli-i-bosi.mp3', 1, 27),
(3, 'Male stvari', 4, 6, 4, '4:38', 'assets/music/male-stvari.mp3', 11, 34),
(4, 'U borbi sa silama', 2, 2, 1, '4:59', 'assets/music/u-borbi-sa-silama.mp3', 1, 27),
(5, 'Uvik kontra', 5, 5, 1, '4:33', 'assets/music/uvik-kontra.mp3', 1, 19),
(6, 'Zaljubila sam se', 3, 4, 3, '4:08', 'assets/music/zaljubila-sam-se.mp3', 1, 34),
(7, 'Sve je moje tudje', 4, 3, 4, '3:41', 'assets/music/Sve-je-moje-tudje.mp3', 2, 31),
(8, 'Sanjam', 4, 3, 4, '3:54', 'assets/music/Sanjam.mp3', 3, 27),
(9, 'Oni dolaze', 4, 3, 4, '3:43', 'assets/music/Oni-dolaze.mp3', 4, 27),
(10, 'Ne prihvacam tvoj ne', 4, 3, 4, '3:52', 'assets/music/Ne-prihvacam-tvoj-ne.mp3', 5, 28),
(11, 'Opet je kisa', 4, 3, 4, '3:56', 'assets/music/Opet-je-kisa.mp3', 6, 18),
(12, 'Hej Slaveni', 3, 6, 3, '3:29', 'assets/music/Hej-slaveni.mp3', 7, 20),
(13, 'Malo sutra', 4, 6, 4, '4:03', 'assets/music/Malo-sutra.mp3', 1, 25),
(14, 'Prsti jedne ruke', 4, 6, 4, '4:24', 'assets/music/Prsti- jedne-ruke.mp3', 12, 29),
(15, 'Ova glava zna', 4, 6, 4, '4:07', 'assets/music/Ova-glava-zna.mp3', 5, 23);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'dsdrrrr', 'Dsfsfsf', 'Sfsfsfs', 'Vajukic@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2019-08-21 00:00:00', 'assets/images/profile-pics/1.png'),
(2, 'dianak', 'Diana', 'Krall', 'Diana@gmail.com', '3a23bb515e06d0e944ff916e79a7775c', '2019-08-22 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(3, 'Nelezp', 'Nele', 'Karajlic', 'Nele@yahoo.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-08-23 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(4, 'elvis', 'Elvis', 'Presley', 'Elvis@yahoo.com', '8b28c7134887bb938e1ffed68456ffb2', '2019-08-24 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(5, 'juznivetar', 'Mile', 'Kitiä‡', 'Mile@gmail.com', 'f03b9f2211cca789865dec38b2eb56cc', '2019-08-29 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(6, 'renede', 'Rene', 'Dekart', 'Rene@ymail.com', '692d424c7c10a30261cef95694f122cb', '2019-08-30 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
