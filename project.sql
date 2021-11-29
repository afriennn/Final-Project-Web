-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Nov 2021 pada 09.13
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(35) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `discount`
--

CREATE TABLE `discount` (
  `discount` varchar(30) NOT NULL,
  `potongan` int(11) DEFAULT NULL,
  `min_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `discount`
--

INSERT INTO `discount` (`discount`, `potongan`, `min_order`) VALUES
('BIRTHDAY6', 6000, 21000),
('INDEPENDENCE17', 17000, 40000),
('RAMADHAN20', 20000, 45000),
('XMAS15', 15000, 35000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `kategori` varchar(35) DEFAULT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `nama`, `harga`, `kategori`, `gambar`) VALUES
(1, 'americano', 15000, 'espresso hot', ''),
(2, 'cappuccino', 20000, 'espresso hot', ''),
(3, 'caramel macchiato', 28000, 'espresso hot', ''),
(4, 'cortado', 220000, 'espresso hot', ''),
(5, 'espresso macchiato', 18000, 'espresso hot', ''),
(6, 'espresso', 13000, 'espresso hot', ''),
(7, 'flat white', 20000, 'espresso hot', ''),
(8, 'latte', 20000, 'espresso hot', ''),
(9, 'mocha dark & white', 22000, 'espresso hot', ''),
(10, 'spanish latte', 21000, 'espresso hot', ''),
(11, 'americano', 15000, 'espresso ice', ''),
(12, 'caramel macchiato', 30000, 'espresso ice', ''),
(13, 'latte', 22000, 'espresso ice', ''),
(14, 'mocha dark & white', 25000, 'espresso ice', ''),
(15, 'spanish latte', 23000, 'espresso ice', ''),
(16, 'the melting pot', 28000, 'signature', ''),
(17, 'queens', 25000, 'signature', ''),
(18, 'manhattan special', 30000, 'signature', ''),
(19, 'greates of all time', 27000, 'signature', ''),
(20, 'caramel frappe', 25000, 'frappes', ''),
(21, 'chocolate frappe', 26000, 'frappes', ''),
(22, 'coffee frappe', 25000, 'frappes', ''),
(23, 'mocha frappe', 26000, 'frappes', ''),
(24, 'toffee frappe', 25000, 'frappes', ''),
(25, 'vanilla frappe', 25000, 'frappes', ''),
(26, 'hot nutella', 27000, 'not coffee', ''),
(27, 'orange juice', 25000, 'not coffee', ''),
(28, 'shaken iced tea', 24000, 'not coffee', ''),
(29, 'smoothie berry blast', 25000, 'not coffee', ''),
(30, 'smoothie paradise passion', 27000, 'not coffee', ''),
(31, 'stash tea', 22000, 'not coffee', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discount`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
