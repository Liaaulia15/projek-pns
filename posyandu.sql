-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Mar 2023 pada 07.07
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posyandu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `balita`
--

CREATE TABLE `balita` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_lahir` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(13) NOT NULL,
  `umur` varchar(11) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `alamat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `balita`
--

INSERT INTO `balita` (`id`, `nama`, `tgl_lahir`, `jenis_kelamin`, `umur`, `nama_ibu`, `nama_ayah`, `alamat`) VALUES
(1, 'ahktar farzan ibrahim', '2022-08-17', 'laki - laki', '7 bulan', 'nia', 'andri', 'kp sukasirna rt04 rw 06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ibu hamil`
--

CREATE TABLE `ibu hamil` (
  `Id` int(1) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `tgl_lahir` varchar(50) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `usia_kandungan` varchar(15) NOT NULL,
  `nama_suami` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ibu hamil`
--

INSERT INTO `ibu hamil` (`Id`, `Nama`, `tgl_lahir`, `alamat`, `usia_kandungan`, `nama_suami`) VALUES
(1, 'heni nuraeni', '09-03-2000', 'kp sukasirna rt04 rw 06', '2 bulan', 'yanuar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kader`
--

CREATE TABLE `kader` (
  `id` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(35) NOT NULL,
  `no_hp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kader`
--

INSERT INTO `kader` (`id`, `nama`, `jabatan`, `tgl_lahir`, `alamat`, `no_hp`) VALUES
(1, 'hj carkiyah', 'ketua ', '2015-03-12', 'kp sukasirna rt 04 rw 06', '0851234547');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(0, 'admin', 'nusa indah');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `balita`
--
ALTER TABLE `balita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ibu hamil`
--
ALTER TABLE `ibu hamil`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `kader`
--
ALTER TABLE `kader`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `balita`
--
ALTER TABLE `balita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kader`
--
ALTER TABLE `kader`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
