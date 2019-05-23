-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2019 at 09:05 PM
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
(3, 'Putu Asri Sri Sutanti', 'Teknik Informatika', 'Semester 6', 'Perumahan Wahana Buduk Permai No. 8'),
(4, 'Maria Okta Safira', 'Teknik Informatika', 'Semester 6', 'Perumahan Wahana Buduk Permai No.8'),
(5, 'Putu Rikky Mahendra Putra', 'Teknik Informatika ', 'Semester 6', 'Goa Gong'),
(6, 'Ega Meiliana', 'Matematika', 'Semester 6', 'Jimbaran'),
(7, 'Sekar Merta Putri', 'Teknik Sipil', 'Semester 1', 'Rusunawa '),
(8, 'Kiki Prebiana', 'Ekonomi dan Bisnis', 'Semester 4', 'Jalan Nirmala Jaya'),
(9, 'Himakom', 'teknik informatika', 'Jaya', 'Kampus Ilmu Komputer'),
(10, 'sic', 'teknik informatika', 'Jaya', 'Kampus Ilmu Komputer'),
(11, 'Komang Gede Yadnya', 'Teknik Informatika ', 'Semester 7', 'Jalan Melati Mawar');

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

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`Kd_Register`, `JudulBuku`, `Pengarang`, `Penerbit`, `TahunTerbit`) VALUES
(13, 'Pemrogram Web', 'Putu Asri Sri Sutanti', 'Erlangga', 2019),
(14, 'Usaha Bolu Kukus Apel Baik Untuk Kesehatan Ginjal', 'Putu Indah Pradnya Putri', 'Ganesha', 2018),
(15, 'Melukis Bunga', 'Putu Rikky Prasetya', 'Putrawan', 1999),
(16, 'Music Information Retrival', 'Putu Asri Sri Sutanti', 'Erlangga', 1998),
(17, 'Sound Synthesis', 'Putu Asri Sri Sutanti', 'Ganesha', 1998),
(18, 'Pengolahan Sinyal Digital', 'Muhammad Arief Budiman', 'Erlangga', 2016),
(19, 'Pengenalan Pola', 'I Putu Harta Yoga', 'Ganesha', 2018),
(20, 'Kuy ! Belajar PHP', 'Kiki Prebiana', 'Ganesha', 2010),
(21, 'Mari Rawat Kulit Wajah', 'Suhay Salim', 'Putrawan', 1998),
(22, 'Belajar Untuk Mencari Semangat', 'I Made Agus Widi Yadnyana Putra', 'Putrawan', 1997),
(24, 'Melukis Hewan Dengan Buah', 'Bagus ', 'Putrawan', 1998);

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
(8, 6, '2019-04-27', NULL),
(14, 7, '2019-05-23', NULL),
(15, 8, '2019-05-23', '2019-05-23'),
(18, 9, '2019-05-23', NULL),
(16, 10, '2019-05-23', '2019-05-23'),
(20, 11, '2019-05-23', NULL);

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
(6, 3, 4),
(7, 3, 4),
(8, 5, 3),
(9, 6, 4),
(10, 8, 3),
(11, 9, 4);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `Kd_Petugas` int(11) NOT NULL,
  `Nama` varchar(225) NOT NULL,
  `Alamat` text NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `last_login` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`Kd_Petugas`, `Nama`, `Alamat`, `password`, `username`, `last_login`) VALUES
(3, 'Putu Asri Sri Sutanti', 'Goa Gong Jimbaran', 'ayuk123', 'ayuksri', '2019-05-23'),
(4, 'safira', 'kerobokan', 'firawoo', 'fira', '2019-05-23');

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
  MODIFY `Kd_Anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `Kd_Register` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `Kd_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `Kd_Petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
