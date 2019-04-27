-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2019 at 07:39 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `Kd_Anggota` int(11) NOT NULL,
  `Nama` varchar(225) NOT NULL,
  `Prodi` varchar(225) NOT NULL,
  `Jenjang` varchar(225) NOT NULL,
  `Alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`Kd_Anggota`, `Nama`, `Prodi`, `Jenjang`, `Alamat`) VALUES
(3, 'Putu Asri Sri Sutanti', 'Teknik Informatika a', 'Semester 6', 'Perumahan Wahana Buduk Permai No. 8'),
(4, 'Maria Okta Safira', 'Teknik Informatika', 'Semester 6', 'Perumahan Wahana Buduk Permai No.8'),
(5, 'Putu Rikky Mahendra Putra', 'Teknik Informatika ', 'Semester 6', 'Goa Gong'),
(6, 'Ega Meiliana', 'Matematika', 'Semester 6', 'Jimbaran'),
(7, 'Sekar Merta Putri', 'Teknik Sipil', 'Semester 1', 'Rusunawa '),
(8, 'Kiki Prebiana', 'Ekonomi dan Bisnis', 'Semester 4', 'Jalan Nirmala Jaya'),
(9, 'Himakom', 'teknik informatika', 'Jaya', 'Kampus Ilmu Komputer'),
(10, 'sic', 'teknik informatika', 'Jaya', 'Kampus Ilmu Komputer');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `Kd_Register` int(11) NOT NULL,
  `JudulBuku` varchar(225) NOT NULL,
  `Pengarang` varchar(225) NOT NULL,
  `Penerbit` varchar(225) NOT NULL,
  `TahunTerbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table db_perpustakaan.buku: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `db_perpustakaan`.`buku`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `Kd_register` int(11) NOT NULL,
  `Kd_pinjam` int(11) NOT NULL,
  `Tgl_pinjam` date NOT NULL,
  `Tgl_kembali` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`Kd_register`, `Kd_pinjam`, `Tgl_pinjam`, `Tgl_kembali`) VALUES
(1, 4, '2019-04-27', '2019-04-27'),
(6, 5, '2019-04-27', NULL),
(8, 6, '2019-04-27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `Kd_pinjam` int(11) NOT NULL,
  `Kd_anggota` int(11) NOT NULL,
  `Kd_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`Kd_pinjam`, `Kd_anggota`, `Kd_petugas`) VALUES
(4, 1, 2),
(5, 2, 1),
(6, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `Kd_Petugas` int(11) NOT NULL,
  `Nama` varchar(225) NOT NULL,
  `Alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`Kd_Petugas`, `Nama`, `Alamat`) VALUES
(3, 'Putu Asri Sri Sutanti', 'Goa Gong Jimbaran'),
(4, 'safira', 'kerobokan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`Kd_Anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`Kd_Register`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`Kd_pinjam`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`Kd_Petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `Kd_Anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `Kd_Register` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `Kd_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `Kd_Petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
