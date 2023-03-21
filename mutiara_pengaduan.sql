-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2023 at 08:50 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mutiara_pengaduan`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(4, 'Prasarana Umum'),
(7, 'Perhubungan'),
(8, 'Kesehatan'),
(9, 'Pelanggaran Peraturan Daerah'),
(10, 'Perizinan'),
(11, 'Sosial'),
(12, 'Perpajakan'),
(13, 'Komunikasi dan Informatika'),
(14, 'Kepegawaian'),
(16, 'Lingkungan Hidup');

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `id` int(11) NOT NULL,
  `nik` int(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(128) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `active` enum('active','suspend') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`id`, `nik`, `nama`, `username`, `password`, `telepon`, `active`) VALUES
(4, 234862, 'Heri', 'herimau', '$2y$10$4q0zV0xIxWTm1dhcVC9gBu46C', '89023482', 'suspend'),
(9, 98012332, 'dimas', 'dimas', '$2y$10$00nDxryK9xCBacxXasxoSe1BPpx6.Dcc9IaIf0bqkH3ylC4L9GJdO', '089266123', 'active'),
(13, 2147483647, 'mutiara', 'mutiara', '$2y$10$iDqMKZShe0hr0Kk/YHhrEuQYz9Xwd92pqqeANyUSfuh6QlPAB85sG', '00087654479', 'active'),
(14, 57687564, 'diah ayu', 'ayu', '$2y$10$qu/b/I5wmhEl3K5QoJy3v.gYytfPc2OoPtgJWc1hZs8dQ.SxpCM1K', '098898877667', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tanggal_pengaduan` date NOT NULL,
  `nik` varchar(16) NOT NULL,
  `kategori` varchar(128) NOT NULL,
  `subkategori` varchar(128) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tanggal_pengaduan`, `nik`, `kategori`, `subkategori`, `isi_laporan`, `foto`, `status`) VALUES
(7, '2023-02-14', '234728934', ' 2', '4', 'gyuyut87', 'Adit-PBO.PNG', 'proses'),
(9, '2023-02-08', '234728934', ' 2', '4', 'asdwa312', 'tool_bar1.PNG', 'proses'),
(10, '2023-02-02', '234728934', ' 3', '6', 'adqasd123', 'Silver_Surfer.jpg', 'proses'),
(11, '2023-02-20', '234728934', ' 2', '4', 'asd21312asd', 'SIKEL_SENG_KIWO_NOMER_2.png', 'proses'),
(12, '2023-03-16', '98012332', ' 1', '2', 'vfbhfgj', 'booking_hotel.PNG', 'proses'),
(13, '2023-03-16', '2147483647', ' 3', '7', 'pencurian dompet', 'mencuri_dompet.jpg', '0'),
(14, '2023-03-16', '2147483647', ' 4', '8', 'Lampu jalan mati', 'lampu_jalan.jpg', '0'),
(15, '2023-03-16', '98012332', ' 8', '22', 'Nyamuk demam berdarah', 'demam_berdarah.jpg', '0'),
(16, '2023-03-16', '98012332', ' 4', '8', 'Lampu mati', 'lampu_jalan1.jpg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(128) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL,
  `active` enum('active','suspend') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`, `active`) VALUES
(11, 'admin', 'admin', '$2y$10$iLX74czhlV53iW5wJ6lcEeUx9LFrzpII4OSa6Gqj001lfwVWbAqIu', '08953459234', 'admin', 'active'),
(13, 'nanik', 'nanik', '$2y$10$iH8KGZ3tnONEpxoUQWkPQODYLK3dYOVT6/PLhJ8Rm1v7T6uC7X2Jq', '082934212', 'admin', 'suspend'),
(15, 'tiara', 'tiara', '$2y$10$HBuZY16BH./GFq8fMifGKOy.QWRbfGfBx8MHPfPySd5xNBqqRazLO', '08978655908', 'petugas', 'active'),
(16, 'fina', 'fina', '$2y$10$pKxaUQW/s11mcBnxaaqh.uFzPsOohThLuN31YQODUqJm5UXrpxdBu', '08997786789', 'admin', 'active'),
(17, 'kayla', 'kayla', '$2y$10$I9M9u7KSB.gSqDIMQa47ceuwbTW95hD2TakzheFCTu.L057/UeHZa', '098889767', 'admin', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `subkategori`
--

CREATE TABLE `subkategori` (
  `id_subkategori` int(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `sub_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subkategori`
--

INSERT INTO `subkategori` (`id_subkategori`, `id_kategori`, `sub_kategori`) VALUES
(5, 3, 'Jambret'),
(6, 3, 'Maling asd'),
(7, 3, 'Mencuri barang'),
(8, 4, 'Penerangan Jalan Umum'),
(9, 4, 'Jalan'),
(10, 4, 'Jembatan'),
(11, 4, 'Saluran Air Hujan'),
(17, 16, 'Sampah'),
(18, 16, 'Limbah Industri'),
(19, 7, 'Gangguan Trafic Light'),
(20, 7, 'Kemacetan'),
(21, 7, 'Pelanggaran Parkir'),
(22, 8, 'Demam Berdarah');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(19, 12, '2023-03-16', 'tanggapi', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `subkategori`
--
ALTER TABLE `subkategori`
  ADD PRIMARY KEY (`id_subkategori`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `masyarakat`
--
ALTER TABLE `masyarakat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subkategori`
--
ALTER TABLE `subkategori`
  MODIFY `id_subkategori` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
