-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 31, 2021 at 04:08 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(3, 'Kacang Panjang', 'Kacang Panjang 1 ikat', 'Sayur', 10000, 50, 'kacang.jpg'),
(4, 'Cabai', 'Cabai 1 kg', 'Sayur', 10000, 98, 'cabai.jpg'),
(6, 'Tomat', 'Tomat 1/2 kg', 'Buah', 20000, 50, 'tomat.jpg'),
(7, 'Mangga', 'Mangga 1 kg', 'Buah', 15000, 20, 'mangga.jpg'),
(8, 'Pepaya', 'Pepaya 1 kg', 'Buah', 5000, 20, 'pepaya.jpg'),
(9, 'Minyak Goreng', 'Minyak Goreng 1 Liter', 'Sembako', 20000, 100, 'minyak.jpg'),
(10, 'Beras', 'Beras 1 Liter', 'Sembako', 9000, 100, 'beras.jpg'),
(11, 'Jeruk', 'Jeruk', 'Buah', 15000, 100, 'jeruk.jpg'),
(12, 'Jambu', 'Jambu Cristal', 'Buah', 10000, 100, 'jambu.jpg'),
(13, 'Pisang', 'Pisang Ambon 1 Pack', 'Buah', 5000, 100, 'pisang.jpg'),
(14, 'Gula', 'Gula Jawa 1 kg', 'Sembako', 20000, 100, 'gula.jpg'),
(15, 'Telor', 'Telor 1 kg', 'Sembako', 30000, 100, 'telor.jpg'),
(16, 'Pare', 'Pare 1 kg', 'Sayur', 10000, 100, 'pare.jpg'),
(17, 'Timun', 'Timun 1 kg', 'Sayur', 6000, 100, 'timun.jpg'),
(18, 'Kemangi', 'Kemangi 1 ikat', 'Sayur', 5000, 50, 'kemangi.jpg'),
(20, 'Kangkung', 'Kangkung 1 Ikat', 'Sayur', 10000, 5, 'kangkung2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) DEFAULT NULL,
  `alamat` varchar(225) DEFAULT NULL,
  `tgl_pesan` datetime DEFAULT NULL,
  `batas_bayar` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(37, 'Ilham sulaiman', 'wareng,butuh,purworejo', '2021-12-22 15:52:59', '2021-12-23 15:52:59'),
(38, 'Samsul', 'Desa Suka Maju terus', '2021-12-23 22:56:56', '2021-12-24 22:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'Kangkung', 1, 5000, ''),
(2, 5, 1, 'Kangkung', 1, 5000, ''),
(3, 5, 2, 'Terong', 1, 8000, ''),
(4, 6, 4, 'Cabai', 1, 80000, ''),
(5, 6, 3, 'kacang panjang', 1, 10000, ''),
(6, 8, 1, 'Kangkung', 1, 5000, ''),
(7, 8, 2, 'Terong', 1, 8000, ''),
(8, 10, 2, 'Terong', 1, 8000, ''),
(9, 11, 1, 'Kangkung', 1, 5000, ''),
(10, 11, 3, 'kacang panjang', 1, 10000, ''),
(11, 13, 1, 'Kangkung', 1, 5000, ''),
(12, 14, 2, 'Terong', 1, 8000, ''),
(13, 14, 1, 'Kangkung', 1, 5000, ''),
(14, 14, 4, 'Cabai', 1, 80000, ''),
(15, 15, 1, 'Kangkung', 1, 5000, ''),
(16, 16, 2, 'Terong', 1, 8000, ''),
(17, 17, 1, 'Kangkung', 2, 5000, ''),
(18, 17, 2, 'Terong', 1, 8000, ''),
(19, 19, 2, 'Terong', 1, 8000, ''),
(20, 20, 2, 'Terong', 1, 8000, ''),
(21, 21, 3, 'kacang panjang', 1, 10000, ''),
(22, 23, 1, 'Kangkung', 1, 5000, ''),
(23, 24, 2, 'Terong', 1, 8000, ''),
(24, 25, 3, 'kacang panjang', 1, 10000, ''),
(25, 26, 3, 'kacang panjang', 1, 10000, ''),
(26, 27, 3, 'kacang panjang', 1, 10000, ''),
(27, 28, 3, 'kacang panjang', 1, 10000, ''),
(28, 29, 3, 'kacang panjang', 1, 10000, ''),
(29, 30, 3, 'kacang panjang', 1, 10000, ''),
(30, 31, 3, 'kacang panjang', 1, 10000, ''),
(31, 32, 2, 'Terong', 1, 8000, ''),
(32, 33, 3, 'kacang panjang', 1, 10000, ''),
(33, 34, 4, 'Cabai', 1, 80000, ''),
(34, 34, 2, 'Terong', 1, 8000, ''),
(35, 35, 4, 'Cabai', 1, 80000, ''),
(36, 36, 1, 'Kangkung', 1, 5000, ''),
(37, 37, 1, 'Kangkung', 1, 5000, ''),
(38, 37, 2, 'Terong', 2, 8000, ''),
(39, 37, 3, 'kacang panjang', 1, 10000, ''),
(40, 37, 4, 'Cabai', 1, 10000, ''),
(41, 38, 2, 'Terong', 1, 7500, ''),
(42, 38, 4, 'Cabai', 1, 10000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'fatikhah', 'nurjamil', '1234', 2),
(4, 'wahid', 'Wahid Saja', '123', 2),
(5, 'Sara', 'Sara Puja K', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
