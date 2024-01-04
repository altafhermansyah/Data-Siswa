-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 02:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siswadata`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `birth` date NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama`, `birth`, `gender`, `alamat`) VALUES
(2, '211210005', 'Cahyo Muhammad', '2005-03-07', 0, 'Malang'),
(3, '211210006', 'Budi Doremi', '2006-04-07', 0, 'Blitar'),
(4, '211210004', 'Siti Astuti', '2006-08-09', 1, 'Surabaya'),
(5, '289110006', 'Laura Kimberly', '2006-11-14', 1, 'Pemalang'),
(9, '290310023', 'Peter Parker', '2007-06-21', 0, 'Lumajang'),
(10, '210910056', 'Rya Lauren', '2006-09-06', 1, 'Magelang'),
(11, '211010098', 'Miti Flora', '2004-07-06', 1, 'Semarang'),
(12, '210010066', 'Gita Sekar', '2003-06-01', 1, 'Jakarta'),
(15, '210010466', 'Kageyama Shigeo', '2004-05-05', 0, 'Tokyo'),
(16, '210010498', 'Salwa Andarini', '2006-04-24', 1, 'Malang'),
(17, '210010453', 'Gon Asagiri', '2003-03-04', 0, 'Akihabara'),
(18, '210010765', 'Asta Moon', '2007-07-07', 0, 'Tangerang'),
(19, '210010675', 'Ara Mina', '2007-08-05', 1, 'Bekasi'),
(20, '210017966', 'Luffy Monkey', '2004-12-06', 0, 'Kyoto'),
(21, '210015766', 'Arvin Leo', '2004-09-06', 0, 'Lampung');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `image`, `name`, `username`, `password`, `role`) VALUES
(1, 'Daijin.jpg', 'Altaf Hermansyah', 'altaf7', 'altaf', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nim` (`nis`),
  ADD UNIQUE KEY `nis` (`nis`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
