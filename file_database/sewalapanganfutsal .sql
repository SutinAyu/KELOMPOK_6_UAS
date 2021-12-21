-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Des 2021 pada 12.44
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewalapanganfutsal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `no_kitas` varchar(20) NOT NULL,
  `nama_pemesan` varchar(50) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nama_team` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `no_kitas`, `nama_pemesan`, `no_telpon`, `email`, `alamat`, `nama_team`) VALUES
(1, '2131740029', 'Haikal Roufi', '087762522563', 'haikal@gmail.com', 'Malang', 'Team Daiwa'),
(2, '2131740032', 'Sutin Ayu', '085230550698', 'sutinayu@gmail.com', 'Jember', 'Team Penn'),
(3, '2311740050', 'Syahid Qoim', '081330490350', 'syahid@gmail.com', 'Lumajang', 'Team Exodus'),
(4, '2131740045', 'Muhammad Alkarim', '083117626619', 'alkarim@gmail.com', 'Surabaya', 'Team Relix');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pemesanan` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `tanggal_bayar` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pemesanan`, `total_bayar`, `bayar`, `tanggal_bayar`) VALUES
(1, 1, 60000, 300000, '2021-12-21 18:43:14'),
(2, 2, 120000, 200000, '2021-12-21 18:43:38'),
(3, 3, 60000, 100000, '2021-12-21 18:43:58'),
(4, 4, 120000, 400000, '2021-12-21 18:44:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `kode_lapangan` varchar(15) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `waktu` varchar(15) NOT NULL,
  `durasi` int(11) NOT NULL,
  `id_member` varchar(50) NOT NULL,
  `status_bayar` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `kode_lapangan`, `tanggal_pemesanan`, `waktu`, `durasi`, `id_member`, `status_bayar`) VALUES
(1, 'Lapangan 10', '2021-12-25', '08:00-09:00', 1, '1 / Haikal Roufi / Team Daiwa', 'Selesai Bayar'),
(2, 'Lapangan 9', '2022-01-13', '08:00-10:00', 2, '2 / Sutin Ayu / Team Penn', 'Selesai Bayar'),
(3, 'Lapangan 8', '2022-02-06', '08:00-09:00', 1, '3 / Syahid Qoim / Team Exodus', 'Selesai Bayar'),
(4, 'Lapangan 7', '2022-03-05', '08:00-10:00', 2, '4 / Muhammad Alkarim / Team Relix', 'Selesai Bayar');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
