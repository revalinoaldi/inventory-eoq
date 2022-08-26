-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2022 at 05:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `eoq`
--

CREATE TABLE `eoq` (
  `id` int(11) NOT NULL,
  `periode` varchar(50) DEFAULT NULL,
  `tgl_eoq` datetime DEFAULT NULL,
  `periode_tahun` year(4) DEFAULT NULL,
  `reorder_poin` int(11) DEFAULT NULL,
  `jarak_tiap_pesan` int(11) DEFAULT NULL,
  `frequensi_pesan` int(11) DEFAULT NULL,
  `jumlah_total_pesanan` int(11) DEFAULT NULL,
  `barang_id` varchar(20) DEFAULT NULL,
  `biaya_pesan` double DEFAULT NULL,
  `biaya_simpan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eoq`
--

INSERT INTO `eoq` (`id`, `periode`, `tgl_eoq`, `periode_tahun`, `reorder_poin`, `jarak_tiap_pesan`, `frequensi_pesan`, `jumlah_total_pesanan`, `barang_id`, `biaya_pesan`, `biaya_simpan`) VALUES
(1, 'Tahunan', '2022-08-23 00:57:15', 2022, 42, 3, 36, 500, 'KD-001', 7000, 5460),
(2, 'Tahunan', '2022-08-23 00:57:15', 2022, 52, 3, 37, 750, 'KD-002', 5000, 5600),
(3, 'Tahunan', '2022-08-25 21:25:28', 2022, 42, 3, 36, 500, 'KD-001', 7000, 5460),
(4, 'Tahunan', '2022-08-25 21:25:28', 2022, 52, 3, 37, 750, 'KD-002', 5000, 5600),
(5, 'Tahunan', '2022-08-25 21:25:28', 2022, 182, 5, 57, 300, 'KD-003', 15000, 2750),
(6, 'Tahunan', '2022-08-25 23:12:39', 2022, 42, 3, 36, 500, 'KD-001', 7000, 5460),
(7, 'Tahunan', '2022-08-25 23:12:39', 2022, 52, 3, 37, 750, 'KD-002', 5000, 5600),
(8, 'Tahunan', '2022-08-25 23:12:39', 2022, 182, 5, 57, 300, 'KD-003', 15000, 2750),
(9, 'Tahunan', '2022-08-25 23:12:39', 2022, 66, 2, 66, 100, 'KD-004', 3500, 160);

-- --------------------------------------------------------

--
-- Table structure for table `ms_barang`
--

CREATE TABLE `ms_barang` (
  `kd_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(150) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `ket_barang` varchar(255) DEFAULT NULL,
  `harga_barang` double DEFAULT NULL,
  `leadtime` int(11) DEFAULT 1,
  `percentage_biaya_simpan` int(11) DEFAULT 0,
  `biaya_simpan` double DEFAULT NULL,
  `stok_awal` int(11) DEFAULT NULL,
  `pemakaian` int(11) DEFAULT NULL,
  `stok_akhir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ms_barang`
--

INSERT INTO `ms_barang` (`kd_barang`, `nama_barang`, `satuan`, `ket_barang`, `harga_barang`, `leadtime`, `percentage_biaya_simpan`, `biaya_simpan`, `stok_awal`, `pemakaian`, `stok_akhir`) VALUES
('KD-001', 'Kopi Robusta', 'Kg', 'Biji Kopi', 78000, 3, 7, 5460, 2, 5, NULL),
('KD-002', 'Kopi Arabica', 'Kg', 'Biji Kopi', 80000, 3, 7, 5600, 5, 5, NULL),
('KD-003', 'Kopi Aceh', 'Kg', 'Kopi aceh pilihan', 55000, 5, 5, 2750, 25, 15, NULL),
('KD-004', 'Gelas Plastik', 'Pcs', 'Gelas plastik bergambar', 8000, 2, 2, 160, 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ms_supplier`
--

CREATE TABLE `ms_supplier` (
  `id_supplier` int(11) NOT NULL,
  `kd_supplier` varchar(30) DEFAULT NULL,
  `nama_supplier` varchar(50) DEFAULT NULL,
  `alamat_supplier` varchar(255) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `pic_supplier` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ms_supplier`
--

INSERT INTO `ms_supplier` (`id_supplier`, `kd_supplier`, `nama_supplier`, `alamat_supplier`, `no_hp`, `email`, `pic_supplier`) VALUES
(1, 'SUP-0001', 'Farhan Aldi', 'Bintara', '081577779999', 'nadya@gmail.com', 'Nadyakun'),
(2, 'SUP-0002', 'Pororo', 'Ujung Menteng', '0219878123', 'proro@gmail.com', 'Mbroror');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `foto` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id_login`, `username`, `password`, `level`, `nama`, `foto`) VALUES
(1, 'superadmin', '17c4520f6cfd1ab53d8745e84681eb49', 'Super Admin', 'Super Admin', '5fd0316534625d0fb476e28fce7836c9.png'),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'Admin', '54da95a73d41593c2b3a69cc7638034c.jpg'),
(9, 'barista', 'ada9c74be4e5a45106d0b9ae3b31b7ce', 'Barista', 'Barista Joni', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tr_barang_keluar`
--

CREATE TABLE `tr_barang_keluar` (
  `id_tr_k` varchar(30) NOT NULL,
  `tgl_tr_k` timestamp NULL DEFAULT current_timestamp(),
  `id_login` int(11) DEFAULT NULL,
  `ket_tr_k` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tr_barang_keluar`
--

INSERT INTO `tr_barang_keluar` (`id_tr_k`, `tgl_tr_k`, `id_login`, `ket_tr_k`) VALUES
('TRP2208220001', '2022-08-22 16:45:34', 1, 'Untuk keperluan hari ini'),
('TRP2508220001', '2022-08-25 14:24:55', 1, 'Keluar per hari ini');

-- --------------------------------------------------------

--
-- Table structure for table `tr_barang_keluar_beli`
--

CREATE TABLE `tr_barang_keluar_beli` (
  `id` int(11) NOT NULL,
  `id_tr_k` varchar(30) DEFAULT NULL,
  `kd_barang` varchar(20) DEFAULT NULL,
  `jumlah_beli` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tr_barang_keluar_beli`
--

INSERT INTO `tr_barang_keluar_beli` (`id`, `id_tr_k`, `kd_barang`, `jumlah_beli`) VALUES
(1, 'TRP2208220001', 'KD-002', 5),
(2, 'TRP2208220001', 'KD-001', 5),
(3, 'TRP2508220001', 'KD-003', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tr_barang_keluar_dtl`
--

CREATE TABLE `tr_barang_keluar_dtl` (
  `id_tr_kdetail` int(11) NOT NULL,
  `kd_barang` varchar(20) DEFAULT NULL,
  `jumlah_awal` int(11) DEFAULT NULL,
  `jumlah_keluar` int(11) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `id_tr_k` varchar(30) DEFAULT NULL,
  `id_tr_m` varchar(30) DEFAULT NULL,
  `tgl_masuk` datetime DEFAULT NULL,
  `id_tr_mdetail` int(11) DEFAULT NULL,
  `jumlah_beli` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tr_barang_keluar_dtl`
--

INSERT INTO `tr_barang_keluar_dtl` (`id_tr_kdetail`, `kd_barang`, `jumlah_awal`, `jumlah_keluar`, `harga`, `id_tr_k`, `id_tr_m`, `tgl_masuk`, `id_tr_mdetail`, `jumlah_beli`) VALUES
(1, 'KD-002', 10, 5, 80000, 'TRP2208220001', 'BRM2208220001', NULL, 2, NULL),
(2, 'KD-001', 7, 2, 78000, 'TRP2208220001', 'BRM2208220001', NULL, 1, NULL),
(3, 'KD-003', 40, 25, 55000, 'TRP2508220001', 'BRM2508220001', NULL, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tr_barang_masuk`
--

CREATE TABLE `tr_barang_masuk` (
  `id_tr_m` varchar(30) NOT NULL,
  `tgl_tr_m` timestamp NULL DEFAULT current_timestamp(),
  `id_login` int(11) DEFAULT NULL,
  `ket_tr_m` varchar(255) DEFAULT NULL,
  `id_supplier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tr_barang_masuk`
--

INSERT INTO `tr_barang_masuk` (`id_tr_m`, `tgl_tr_m`, `id_login`, `ket_tr_m`, `id_supplier`) VALUES
('BRM2208220001', '2022-08-22 16:43:31', 1, 'Masuk di hari ke sini', 1),
('BRM2508220001', '2022-08-25 14:23:14', 1, 'Masuk per tanggal 25 Agustus', 1),
('BRM2508220002', '2022-08-25 15:02:24', 1, 'ABCDE', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tr_barang_masuk_dtl`
--

CREATE TABLE `tr_barang_masuk_dtl` (
  `id_tr_mdetail` int(11) NOT NULL,
  `kd_barang` varchar(20) DEFAULT NULL,
  `jumlah_masuk` int(11) DEFAULT NULL,
  `id_tr_m` varchar(30) DEFAULT NULL,
  `tgl_masuk` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tr_barang_masuk_dtl`
--

INSERT INTO `tr_barang_masuk_dtl` (`id_tr_mdetail`, `kd_barang`, `jumlah_masuk`, `id_tr_m`, `tgl_masuk`) VALUES
(1, 'KD-001', 7, 'BRM2208220001', '2022-08-22 23:08:31'),
(2, 'KD-002', 10, 'BRM2208220001', '2022-08-22 23:08:31'),
(3, 'KD-003', 40, 'BRM2508220001', '2022-08-25 21:08:14'),
(4, 'KD-004', 100, 'BRM2508220002', '2022-08-25 22:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `tr_barang_masuk_dtl_pakai`
--

CREATE TABLE `tr_barang_masuk_dtl_pakai` (
  `id_tr_mdetail` int(11) NOT NULL,
  `kd_barang` varchar(20) DEFAULT NULL,
  `jumlah_masuk` int(11) DEFAULT NULL,
  `id_tr_m` varchar(30) DEFAULT NULL,
  `tgl_masuk` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tr_barang_masuk_dtl_pakai`
--

INSERT INTO `tr_barang_masuk_dtl_pakai` (`id_tr_mdetail`, `kd_barang`, `jumlah_masuk`, `id_tr_m`, `tgl_masuk`) VALUES
(1, 'KD-001', 2, 'BRM2208220001', '2022-08-22 23:08:31'),
(2, 'KD-002', 5, 'BRM2208220001', '2022-08-22 23:08:31'),
(3, 'KD-003', 25, 'BRM2508220001', '2022-08-25 21:08:14'),
(4, 'KD-004', 100, 'BRM2508220002', '2022-08-25 22:08:24');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_dtl_keluar`
-- (See below for the actual view)
--
CREATE TABLE `v_dtl_keluar` (
`id_tr_kdetail` int(11)
,`kd_barang` varchar(20)
,`jumlah_awal` int(11)
,`jumlah_keluar` int(11)
,`harga` double
,`id_tr_k` varchar(30)
,`tgl_tr_k` timestamp
,`ket_tr_k` varchar(255)
,`id_tr_m` varchar(30)
,`tgl_masuk` datetime
,`id_tr_mdetail` int(11)
,`jumlah_beli` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `v_dtl_keluar`
--
DROP TABLE IF EXISTS `v_dtl_keluar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_dtl_keluar`  AS SELECT `k`.`id_tr_kdetail` AS `id_tr_kdetail`, `k`.`kd_barang` AS `kd_barang`, `k`.`jumlah_awal` AS `jumlah_awal`, `k`.`jumlah_keluar` AS `jumlah_keluar`, `k`.`harga` AS `harga`, `k`.`id_tr_k` AS `id_tr_k`, `b`.`tgl_tr_k` AS `tgl_tr_k`, `b`.`ket_tr_k` AS `ket_tr_k`, `k`.`id_tr_m` AS `id_tr_m`, `k`.`tgl_masuk` AS `tgl_masuk`, `k`.`id_tr_mdetail` AS `id_tr_mdetail`, `k`.`jumlah_beli` AS `jumlah_beli` FROM (`tr_barang_keluar_dtl` `k` join `tr_barang_keluar` `b` on(`k`.`id_tr_k` = `b`.`id_tr_k`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eoq`
--
ALTER TABLE `eoq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_barang`
--
ALTER TABLE `ms_barang`
  ADD PRIMARY KEY (`kd_barang`) USING BTREE;

--
-- Indexes for table `ms_supplier`
--
ALTER TABLE `ms_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id_login`) USING BTREE;

--
-- Indexes for table `tr_barang_keluar`
--
ALTER TABLE `tr_barang_keluar`
  ADD PRIMARY KEY (`id_tr_k`) USING BTREE;

--
-- Indexes for table `tr_barang_keluar_beli`
--
ALTER TABLE `tr_barang_keluar_beli`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tr_barang_keluar_dtl`
--
ALTER TABLE `tr_barang_keluar_dtl`
  ADD PRIMARY KEY (`id_tr_kdetail`) USING BTREE;

--
-- Indexes for table `tr_barang_masuk`
--
ALTER TABLE `tr_barang_masuk`
  ADD PRIMARY KEY (`id_tr_m`) USING BTREE;

--
-- Indexes for table `tr_barang_masuk_dtl`
--
ALTER TABLE `tr_barang_masuk_dtl`
  ADD PRIMARY KEY (`id_tr_mdetail`) USING BTREE;

--
-- Indexes for table `tr_barang_masuk_dtl_pakai`
--
ALTER TABLE `tr_barang_masuk_dtl_pakai`
  ADD PRIMARY KEY (`id_tr_mdetail`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eoq`
--
ALTER TABLE `eoq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ms_supplier`
--
ALTER TABLE `ms_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tr_barang_keluar_beli`
--
ALTER TABLE `tr_barang_keluar_beli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tr_barang_keluar_dtl`
--
ALTER TABLE `tr_barang_keluar_dtl`
  MODIFY `id_tr_kdetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tr_barang_masuk_dtl`
--
ALTER TABLE `tr_barang_masuk_dtl`
  MODIFY `id_tr_mdetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tr_barang_masuk_dtl_pakai`
--
ALTER TABLE `tr_barang_masuk_dtl_pakai`
  MODIFY `id_tr_mdetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
