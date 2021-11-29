-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2021 pada 19.55
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.5

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
(1, 'Americano', 15000, 'espresso hot', ''),
(2, 'Cappuccino', 20000, 'espresso hot', ''),
(3, 'Caramel Macchiato', 28000, 'espresso hot', ''),
(4, 'Cortado', 22000, 'espresso hot', ''),
(5, 'Espresso Macchiato', 18000, 'espresso hot', ''),
(6, 'Espresso', 13000, 'espresso hot', ''),
(7, 'Flat White', 20000, 'espresso hot', ''),
(8, 'Latte', 20000, 'espresso hot', ''),
(9, 'Mocha Dark & White', 22000, 'espresso hot', ''),
(10, 'Spanish Latte', 21000, 'espresso hot', ''),
(11, 'Ice Americano', 15000, 'espresso ice', ''),
(12, 'Caramel Macchiato', 30000, 'espresso ice', ''),
(13, 'Latte', 22000, 'espresso ice', ''),
(14, 'Mocha Dark & White', 25000, 'espresso ice', ''),
(15, 'Spanish Latte', 23000, 'espresso ice', ''),
(16, 'The Melting Pot', 28000, 'signature', ''),
(17, 'Queens', 25000, 'signature', ''),
(18, 'Manhattan Special', 30000, 'signature', ''),
(19, 'Greates of All Time', 27000, 'signature', ''),
(20, 'Caramel Frappe', 25000, 'frappes', ''),
(21, 'Chocolate Frappe', 26000, 'frappes', ''),
(22, 'Coffee Frappe', 25000, 'frappes', ''),
(23, 'Mocha Frappe', 26000, 'frappes', ''),
(24, 'Toffee Frappe', 25000, 'frappes', ''),
(25, 'Vanilla Frappe', 25000, 'frappes', ''),
(26, 'Hot Nutella', 27000, 'non-coffee', ''),
(27, 'Orange Juice', 25000, 'non-coffee', ''),
(28, 'Shaken Iced Tea', 24000, 'non-coffee', ''),
(29, 'Smoothie Berry Blast', 25000, 'non-coffee', ''),
(30, 'Smoothie Paradise Passion', 27000, 'non-coffee', ''),
(31, 'Stash Tea', 22000, 'non-coffee', '');

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
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'afrien', 'afrien123'),
(2, 'novia', '$2y$10$Gs5/KBgBUrYIY');

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
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
