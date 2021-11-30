-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2021 at 10:57 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(35) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `best_seller`
--

CREATE TABLE `best_seller` (
  `id_menu` int(11) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `kategori` varchar(35) DEFAULT NULL,
  `gambar` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `best_seller`
--

INSERT INTO `best_seller` (`id_menu`, `nama`, `harga`, `kategori`, `gambar`) VALUES
(1, 'The Melting Pot', 28000, 'signature', 'The-Melting-Pot.jpg'),
(2, 'Hot Nutella', 27000, 'non-coffee', 'Nuetella.jpg'),
(3, 'Smoothie Paradise Passion', 27000, 'non-coffee', 'Smoothie-Paradise-Passion.jpg'),
(4, 'Queens', 25000, 'signature', 'Queens.jpg'),
(5, 'Iced Caramel Macchiato', 30000, 'espresso ice', 'Ice-Caramel-Macchiato.jpg'),
(6, 'Chocolate Frappe', 26000, 'frappes', 'Chocolate.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `discount` varchar(30) NOT NULL,
  `potongan` int(11) DEFAULT NULL,
  `min_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`discount`, `potongan`, `min_order`) VALUES
('BIRTHDAY6', 6000, 21000),
('INDEPENDENCE17', 17000, 40000),
('RAMADHAN20', 20000, 45000),
('XMAS15', 15000, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `kategori` varchar(35) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama`, `harga`, `kategori`, `gambar`) VALUES
(1, 'Americano', 15000, 'Espresso Hot', 'Americano.jpg'),
(2, 'Cappuccino', 20000, 'Espresso Hot', 'Cappuccino.jpg'),
(3, 'Caramel Macchiato', 28000, 'Espresso Hot', 'Caramel-Macchiato.jpg'),
(4, 'Cortado', 22000, 'Espresso Hot', 'Cortado.jpg'),
(5, 'Espresso Macchiato', 18000, 'Espresso Hot', 'Espresso-Macchiato.jpg'),
(6, 'Espresso', 13000, 'Espresso Hot', 'Espresso.jpg'),
(7, 'Flat White', 20000, 'Espresso Hot', 'Flat-White.jpg'),
(8, 'Latte', 20000, 'Espresso Hot', 'Latte.jpg'),
(9, 'Mocha Dark & White', 22000, 'Espresso Hot', 'Mocha-DarkWhite.jpg'),
(10, 'Spanish Latte', 21000, 'Espresso Hot', 'Spanish-Latte.jpg'),
(11, 'Ice Americano', 15000, 'espresso ice', 'Ice-Americano.jpg'),
(12, 'Caramel Macchiato', 30000, 'espresso ice', 'Ice-Caramel-Macchiato.jpg'),
(13, 'Latte', 22000, 'espresso ice', 'Ice-Latte.jpg'),
(14, 'Mocha Dark & White', 25000, 'espresso ice', 'Ice-Mocha-DarkWhite.jpg'),
(15, 'Spanish Latte', 23000, 'espresso ice', 'Ice-Spanish-Latte.jpg'),
(16, 'The Melting Pot', 28000, 'signature', 'The-Melting-Pot.jpg'),
(17, 'Queens', 25000, 'signature', 'Queens.jpg'),
(18, 'Manhattan Special', 30000, 'signature', 'Manhattan-Special.jpg'),
(19, 'Greates of All Time', 27000, 'signature', 'Greates-of-All-Time.jpg'),
(20, 'Caramel Frappe', 25000, 'frappes', 'Caramel.jpg'),
(21, 'Chocolate Frappe', 26000, 'frappes', 'Chocolate.jpg'),
(22, 'Coffee Frappe', 25000, 'frappes', 'Coffee.jpg'),
(23, 'Mocha Frappe', 26000, 'frappes', 'Mocha.jpg'),
(24, 'Toffee Frappe', 25000, 'frappes', 'Toffee.jpg'),
(25, 'Vanilla Frappe', 25000, 'frappes', 'Vanilla.jpg'),
(26, 'Hot Nutella', 27000, 'non-coffee', 'Nuetella.jpg'),
(27, 'Orange Juice', 25000, 'non-coffee', 'Orange-Juice.jpg'),
(28, 'Shaken Iced Tea', 24000, 'non-coffee', 'Shaken-Iced-Tea.jpg'),
(29, 'Smoothie Berry Blast', 25000, 'non-coffee', 'Smoothie-Berry-Blast.jpg'),
(30, 'Smoothie Paradise Passion', 27000, 'non-coffee', 'Smoothie-Paradise-Passion.jpg'),
(31, 'Stash Tea', 22000, 'non-coffee', 'Stash-Tea.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'afrien', 'afrien123'),
(2, 'novia', '$2y$10$Gs5/KBgBUrYIY'),
(3, 'war', '$2y$10$hHQJyXTRS.xsH');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `best_seller`
--
ALTER TABLE `best_seller`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discount`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `best_seller`
--
ALTER TABLE `best_seller`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
