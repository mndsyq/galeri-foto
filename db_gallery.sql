-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2024 at 05:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery_album`
--

CREATE TABLE `gallery_album` (
  `AlbumId` int(11) NOT NULL,
  `NamaAlbum` varchar(255) NOT NULL,
  `Deskripsi` text NOT NULL,
  `TanggalDibuat` date NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_album`
--

INSERT INTO `gallery_album` (`AlbumId`, `NamaAlbum`, `Deskripsi`, `TanggalDibuat`, `UserId`) VALUES
(10, 'pemandangan', 'pemandangan alam', '2024-03-24', 4),
(11, 'kota', '', '2024-03-24', 4),
(12, 'dan Bandung', 'random aja tentang Bandung', '2024-03-24', 2),
(13, 'laut', 'semua tentang laut dan yah', '2024-03-24', 2),
(14, 'myself', '', '2024-03-24', 3),
(15, 'ma friend', 'tentang mereka', '2024-03-24', 3),
(16, 'game', '', '2024-03-24', 5),
(17, 'kpop', 'kpopersss', '2024-03-24', 6),
(18, 'skull', 'tentang masa sekolah yang sebentar lagi usai', '2024-03-24', 6),
(21, 'YummY', 'food', '2024-03-25', 5),
(22, 'kuliner', 'kulineraann\r\n', '2024-03-25', 2),
(23, 'makanan', 'makanan indonesia', '2024-03-26', 7),
(24, 'minuman', 'seger\r\n', '2024-03-26', 7);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_foto`
--

CREATE TABLE `gallery_foto` (
  `FotoId` int(11) NOT NULL,
  `JudulFoto` varchar(255) NOT NULL,
  `DeskripsiFoto` text NOT NULL,
  `TanggalUnggah` date NOT NULL,
  `LokasiFile` varchar(255) NOT NULL,
  `AlbumId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_foto`
--

INSERT INTO `gallery_foto` (`FotoId`, `JudulFoto`, `DeskripsiFoto`, `TanggalUnggah`, `LokasiFile`, `AlbumId`, `UserId`) VALUES
(21, 'rain', 'hujan di kala senja', '2024-03-24', '2090312053-download.jpg', 10, 4),
(22, 'aesthetic view', 'langit oranye', '2024-03-24', '1224584601-0fb50c87-55d6-4649-a089-0452a28f42ed.jpg', 10, 4),
(23, 'rain again', 'suasana saat hujan', '2024-03-24', '1723671931-日本¹²♡.jpg', 11, 4),
(24, 'vibes kota tua', 'cakepp bangettt', '2024-03-24', '1381169648-download (1).jpg', 11, 4),
(25, 'Bandung.', 'Jl. Braga', '2024-03-24', '1202640117-Jln_ Braga , Bandung.jpg', 12, 2),
(26, 'pidi baiq', 'Bandung dan Pidi Baiq', '2024-03-24', '1244485755-Braga.jpg', 12, 2),
(27, 'laut', 'laut dan kisahnya', '2024-03-24', '566850149-seas.jpg', 13, 2),
(28, 'Haruto', 'aku dan diriku', '2024-03-24', '156960859-download (2).jpg', 14, 3),
(29, 'f-r-i-e-n-d-s', 'aku dan mereka', '2024-03-24', '609538519-download (3).jpg', 15, 3),
(30, 'T5', 'lucu aja gitu', '2024-03-24', '1646695404-download (4).jpg', 15, 3),
(32, 'trejo', 'find your treasure', '2024-03-24', '2113675985-Scribble Treasure.jpg', 17, 6),
(36, 'ciwik ciwikkk', 'lucu amay kalian', '2024-03-24', '980755274-WhatsApp Image 2024-03-25 at 03.04.36.jpeg', 18, 6),
(37, 'sekul', 'cakep uga', '2024-03-24', '1176327182-WhatsApp Image 2024-03-25 at 03.04.34.jpeg', 18, 6),
(40, '0104', 'lucu amay pak', '2024-03-24', '1111023298-0104.jpg', 17, 6),
(41, 'newjeans', '<3', '2024-03-25', '196195943-download (6).jpg', 17, 6),
(42, 'nwjns', 'kangen era ditto', '2024-03-25', '729741999-𓃹.jpg', 17, 6),
(45, 'gameee', '', '2024-03-25', '1736755532-download (5).jpg', 16, 5),
(49, 'gacoan', 'jajan gacoan', '2024-03-25', '2042212056-download (7).jpg', 22, 2),
(50, 'bakso aci', 'yummy', '2024-03-25', '177522371-Bakso Aci Instant.jpg', 22, 2),
(51, 'bakso', 'makanan enak', '2024-03-26', '794456146-Bakso Aci Instant.jpg', 23, 7),
(52, 'leci', 'minuman segar', '2024-03-26', '1373751319-minuman.jpg', 24, 7),
(53, 'ramen', 'ramen jepang', '2024-03-26', '129210893-ramen.jpg', 23, 7);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_komentarfoto`
--

CREATE TABLE `gallery_komentarfoto` (
  `KomentarId` int(11) NOT NULL,
  `FotoId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `IsiKomentar` text NOT NULL,
  `TanggalKomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_komentarfoto`
--

INSERT INTO `gallery_komentarfoto` (`KomentarId`, `FotoId`, `UserId`, `IsiKomentar`, `TanggalKomentar`) VALUES
(33, 41, 3, 'cakep', '2024-03-25'),
(34, 27, 4, 'cakepp bangettt', '2024-03-25'),
(36, 45, 5, 'keren ngab', '2024-03-25'),
(37, 25, 5, 'estetik yak', '2024-03-25'),
(38, 30, 5, 'barudak well', '2024-03-25'),
(39, 22, 5, 'estetikk', '2024-03-25'),
(41, 22, 2, 'cakeppp', '2024-03-25'),
(43, 28, 2, 'cakep amay', '2024-03-25'),
(44, 41, 2, '<3', '2024-03-25'),
(45, 37, 2, 'kangen skull', '2024-03-25'),
(46, 36, 2, 'lucuu', '2024-03-25'),
(48, 42, 4, 'seru bangeett', '2024-03-25'),
(49, 42, 4, 'cakep cakep banget siihhh', '2024-03-25'),
(51, 25, 4, '<3', '2024-03-25'),
(52, 22, 4, 'indah bangett', '2024-03-25'),
(54, 22, 6, 'secakep itu yaa', '2024-03-25'),
(57, 37, 7, 'seru', '2024-03-26'),
(58, 37, 7, 'suasana sekolah', '2024-03-26'),
(59, 52, 7, 'seger', '2024-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_likefoto`
--

CREATE TABLE `gallery_likefoto` (
  `LikeId` int(11) NOT NULL,
  `FotoId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `TanggalLike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_likefoto`
--

INSERT INTO `gallery_likefoto` (`LikeId`, `FotoId`, `UserId`, `TanggalLike`) VALUES
(326, 23, 4, '2024-03-24'),
(327, 24, 5, '2024-03-25'),
(328, 28, 5, '2024-03-25'),
(330, 36, 5, '2024-03-25'),
(331, 30, 5, '2024-03-25'),
(332, 37, 3, '2024-03-25'),
(333, 45, 5, '2024-03-25'),
(334, 25, 5, '2024-03-25'),
(335, 22, 5, '2024-03-25'),
(336, 26, 5, '2024-03-25'),
(337, 22, 2, '2024-03-25'),
(339, 30, 2, '2024-03-25'),
(340, 28, 2, '2024-03-25'),
(341, 41, 2, '2024-03-25'),
(342, 37, 2, '2024-03-25'),
(343, 36, 2, '2024-03-25'),
(346, 32, 2, '2024-03-25'),
(347, 22, 4, '2024-03-25'),
(348, 40, 4, '2024-03-25'),
(349, 27, 4, '2024-03-25'),
(350, 29, 4, '2024-03-25'),
(351, 42, 4, '2024-03-25'),
(352, 21, 4, '2024-03-25'),
(353, 49, 4, '2024-03-25'),
(354, 50, 4, '2024-03-25'),
(355, 25, 4, '2024-03-25'),
(357, 22, 6, '2024-03-25'),
(358, 26, 6, '2024-03-25'),
(359, 21, 6, '2024-03-25'),
(360, 28, 6, '2024-03-25'),
(361, 24, 2, '2024-03-26'),
(364, 37, 7, '2024-03-26'),
(366, 52, 7, '2024-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_user`
--

CREATE TABLE `gallery_user` (
  `UserId` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `NamaLengkap` varchar(255) NOT NULL,
  `Alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_user`
--

INSERT INTO `gallery_user` (`UserId`, `Username`, `Password`, `Email`, `NamaLengkap`, `Alamat`) VALUES
(2, 'p_wulandari', 'pp', 'putriwulandari@gmail.com', 'Putri Wulandari', 'Bandung'),
(3, 'wtnbharuto', 'manda', 'hrto@gmail.com', 'Watanabe Haruto', 'Fukuoka'),
(4, 'nau_ra', 'manda', 'nauraadara@gmail.com', 'Naura Adara', 'Surabaya\r\n'),
(5, 'Joh_n', '123', 'John@gmail.com', 'John Robert', 'LA'),
(6, 'mandasyiqa', 'asdfghjkl', 'mandanaisyiq@gmail.com', 'Amanda Naisyiqa', 'Medan'),
(7, 'mandasyiq', '1234', 'manda@gmail.com', 'amandanaisyiqa', 'medan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery_album`
--
ALTER TABLE `gallery_album`
  ADD PRIMARY KEY (`AlbumId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `gallery_foto`
--
ALTER TABLE `gallery_foto`
  ADD PRIMARY KEY (`FotoId`),
  ADD KEY `AlbumId` (`AlbumId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `gallery_komentarfoto`
--
ALTER TABLE `gallery_komentarfoto`
  ADD PRIMARY KEY (`KomentarId`),
  ADD KEY `FotoId` (`FotoId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `gallery_likefoto`
--
ALTER TABLE `gallery_likefoto`
  ADD PRIMARY KEY (`LikeId`),
  ADD KEY `FotoId` (`FotoId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `gallery_user`
--
ALTER TABLE `gallery_user`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery_album`
--
ALTER TABLE `gallery_album`
  MODIFY `AlbumId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `gallery_foto`
--
ALTER TABLE `gallery_foto`
  MODIFY `FotoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `gallery_komentarfoto`
--
ALTER TABLE `gallery_komentarfoto`
  MODIFY `KomentarId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `gallery_likefoto`
--
ALTER TABLE `gallery_likefoto`
  MODIFY `LikeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `gallery_user`
--
ALTER TABLE `gallery_user`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gallery_album`
--
ALTER TABLE `gallery_album`
  ADD CONSTRAINT `gallery_album_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `gallery_user` (`UserId`);

--
-- Constraints for table `gallery_foto`
--
ALTER TABLE `gallery_foto`
  ADD CONSTRAINT `gallery_foto_ibfk_1` FOREIGN KEY (`AlbumId`) REFERENCES `gallery_album` (`AlbumId`),
  ADD CONSTRAINT `gallery_foto_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `gallery_user` (`UserId`);

--
-- Constraints for table `gallery_komentarfoto`
--
ALTER TABLE `gallery_komentarfoto`
  ADD CONSTRAINT `gallery_komentarfoto_ibfk_1` FOREIGN KEY (`FotoId`) REFERENCES `gallery_foto` (`FotoId`),
  ADD CONSTRAINT `gallery_komentarfoto_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `gallery_user` (`UserId`);

--
-- Constraints for table `gallery_likefoto`
--
ALTER TABLE `gallery_likefoto`
  ADD CONSTRAINT `gallery_likefoto_ibfk_1` FOREIGN KEY (`FotoId`) REFERENCES `gallery_foto` (`FotoId`),
  ADD CONSTRAINT `gallery_likefoto_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `gallery_user` (`UserId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
