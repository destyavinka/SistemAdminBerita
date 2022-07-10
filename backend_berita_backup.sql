-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 04:58 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend_berita_backup`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(25) NOT NULL,
  `judul_berita` varchar(25) DEFAULT NULL,
  `isi_berita` longtext DEFAULT NULL,
  `tanggal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul_berita`, `isi_berita`, `tanggal`) VALUES
(5, 'test API', 'test API', 1635089730),
(12, 'test upload', 'test upload', 0),
(13, 'test update 12', 'test update 12', 0),
(16, 'Warganet Ramai Komentari ', 'yah Vanessa Angel, Doddy Sudrajat, marah melihat video viral yang memerlihatkan seorang pria bertopeng menakut-nakuti Gala Sky Andriansyah.  Doddy murka karena si pembuat video yang menampilkan pria mengenakan topeng monster menakut-nakuti Gala, dengan menyebut \"Doddy ada Doddy, awas ada Doddy\".', 1640786357),
(17, 'Warganet Ramai Komentari ', 'yah Vanessa Angel, Doddy Sudrajat, marah melihat video viral yang memerlihatkan seorang pria bertopeng menakut-nakuti Gala Sky Andriansyah.  Doddy murka karena si pembuat video yang menampilkan pria mengenakan topeng monster menakut-nakuti Gala, dengan menyebut \"Doddy ada Doddy, awas ada Doddy\".', 1640786586),
(19, 'Ketemu Gibran di Solo, Bi', 'Wali Kota Bogor Bima Arya Sugiarto bertemu Wali Kota Solo Gibran Rakabuming Raka di acara Persatuan Perusahaan Air Minum Seluruh Indonesia (Perpamsi) menggelar Musyawarah Antar-Air Minum Nasional (Mapamnas) ke XIV di Solo, hari ini. Bima Arya sempat ditawari Gibran untuk berburu kuliner khas di Solo yakni sate buntel.', 1640787149),
(20, 'Ketemu Gibran di Solo, Bi', 'Bima Arya sempat ditawari Gibran untuk berburu kuliner khas di Solo yakni sate buntel.', 1640787191),
(21, 'Bima Arya diajak Berburu ', 'Bima Arya sempat ditawari Gibran untuk berburu kuliner khas Solo, yaitu Sate Buntel', 1640787303),
(22, 'Bima Arya diajak Berburu ', 'Bima Arya sempat ditawari Gibran untuk berburu kuliner khas Solo', 1640787316),
(23, 'Bima Arya diajak Berburu ', 'Bima Arya ', 1640787326),
(24, ' Berburu Sate Buntel', 'Bima Arya sempat ditawari Gibran untuk berburu kuliner khas di Solo yakni sate buntel.', 1640787336),
(25, 'Indonesia vs Thailand', '  Baca artikel sepakbola, \"Indonesia Vs Thailand: Thailand Nyaris Gandakan Keunggulan!\" ', 1640787492),
(26, 'Warganet Ramai Komentari ', 'yah Vanessa Angel, Doddy Sudrajat, marah melihat video viral yang memerlihatkan seorang pria bertopeng menakut-nakuti Gala Sky Andriansyah.  Doddy murka karena si pembuat video yang menampilkan pria mengenakan topeng monster menakut-nakuti Gala, dengan menyebut \"Doddy ada Doddy, awas ada Doddy\".', 1640787510),
(27, 'Doddy Sudrajat', 'yah Vanessa Angel, Doddy Sudrajat, marah melihat video viral yang memerlihatkan seorang pria bertopeng menakut-nakuti Gala Sky Andriansyah.  Doddy murka karena si pembuat video yang menampilkan pria mengenakan topeng monster menakut-nakuti Gala, dengan menyebut \"Doddy ada Doddy, awas ada Doddy\".', 1640787521);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_berita`
--

CREATE TABLE `kategori_berita` (
  `id_kategori` int(25) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `id_user` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_berita`
--

INSERT INTO `kategori_berita` (`id_kategori`, `nama_kategori`, `id_user`) VALUES
(12, 'Viral', 18),
(13, 'Terkini', 18),
(14, 'Olahraga', 18),
(15, 'Kuliner', 18);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(25) NOT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `kelompok_menu` int(255) NOT NULL,
  `icon` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `url`, `kelompok_menu`, `icon`) VALUES
(1, 'User Test', 'zone_admin_26', 1, 'fas fa-address-book'),
(2, 'Peran', 'manage_admin_26/peran_26', 2, 'fas fa-handshake'),
(3, 'Menu', 'manage_admin_26/menu_26', 4, 'fas fa-sitemap'),
(4, 'User Dalam Peran', 'manage_admin_26/userDalamPeran_26', 3, 'fas fa-address-card'),
(5, 'Menu Dalam Peran', 'manage_admin_26/menuDalamPeran_26', 5, 'fas fa-clipboard'),
(6, 'Manajemen Kategori Berita', 'zone_contributor_26', 6, 'fas fa-file-alt'),
(7, 'Manajemen Berita', 'manage_contributor_26/berita', 7, 'fas fa-newspaper');

-- --------------------------------------------------------

--
-- Table structure for table `peran`
--

CREATE TABLE `peran` (
  `id_peran` int(25) NOT NULL,
  `nama_peran` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peran`
--

INSERT INTO `peran` (`id_peran`, `nama_peran`, `url`) VALUES
(1, 'Admin', 'zone_admin_26'),
(2, 'Contributor', 'zone_contributor_26');

-- --------------------------------------------------------

--
-- Table structure for table `trx_berita_kategori`
--

CREATE TABLE `trx_berita_kategori` (
  `id_trx_berita_kategori` int(25) NOT NULL,
  `id_berita` int(25) NOT NULL,
  `id_kategori` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trx_berita_kategori`
--

INSERT INTO `trx_berita_kategori` (`id_trx_berita_kategori`, `id_berita`, `id_kategori`) VALUES
(6, 24, 15),
(7, 25, 14),
(8, 27, 12);

-- --------------------------------------------------------

--
-- Table structure for table `trx_menu`
--

CREATE TABLE `trx_menu` (
  `id_trx_menu` int(25) NOT NULL,
  `id_peran` int(25) NOT NULL,
  `id_menu` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trx_menu`
--

INSERT INTO `trx_menu` (`id_trx_menu`, `id_peran`, `id_menu`) VALUES
(2, 1, 1),
(3, 1, 2),
(4, 1, 3),
(5, 1, 4),
(6, 1, 5),
(7, 2, 6),
(8, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `trx_peran`
--

CREATE TABLE `trx_peran` (
  `id_trx_peran` int(25) NOT NULL,
  `id_user` int(25) NOT NULL,
  `id_peran` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trx_peran`
--

INSERT INTO `trx_peran` (`id_trx_peran`, `id_user`, `id_peran`) VALUES
(19, 18, 2),
(20, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_pengguna` varchar(255) NOT NULL,
  `is_aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `user`, `password`, `nama_pengguna`, `is_aktif`) VALUES
(18, 'destyavinka@gmail.com', '123', 'destyavinka', 0),
(19, 'destya@gmail.com', '123', 'destyav', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indexes for table `peran`
--
ALTER TABLE `peran`
  ADD PRIMARY KEY (`id_peran`),
  ADD KEY `id_peran` (`id_peran`);

--
-- Indexes for table `trx_berita_kategori`
--
ALTER TABLE `trx_berita_kategori`
  ADD PRIMARY KEY (`id_trx_berita_kategori`),
  ADD KEY `id_berita` (`id_berita`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `trx_menu`
--
ALTER TABLE `trx_menu`
  ADD PRIMARY KEY (`id_trx_menu`),
  ADD KEY `id_peran` (`id_peran`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indexes for table `trx_peran`
--
ALTER TABLE `trx_peran`
  ADD PRIMARY KEY (`id_trx_peran`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_peran` (`id_peran`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `id_kategori` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `peran`
--
ALTER TABLE `peran`
  MODIFY `id_peran` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `trx_berita_kategori`
--
ALTER TABLE `trx_berita_kategori`
  MODIFY `id_trx_berita_kategori` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trx_menu`
--
ALTER TABLE `trx_menu`
  MODIFY `id_trx_menu` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trx_peran`
--
ALTER TABLE `trx_peran`
  MODIFY `id_trx_peran` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD CONSTRAINT `kategori_berita_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trx_berita_kategori`
--
ALTER TABLE `trx_berita_kategori`
  ADD CONSTRAINT `trx_berita_kategori_ibfk_1` FOREIGN KEY (`id_berita`) REFERENCES `berita` (`id_berita`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trx_berita_kategori_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_berita` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trx_menu`
--
ALTER TABLE `trx_menu`
  ADD CONSTRAINT `trx_menu_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trx_menu_ibfk_3` FOREIGN KEY (`id_peran`) REFERENCES `peran` (`id_peran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trx_peran`
--
ALTER TABLE `trx_peran`
  ADD CONSTRAINT `trx_peran_ibfk_2` FOREIGN KEY (`id_peran`) REFERENCES `peran` (`id_peran`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trx_peran_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
