-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 8.0.30 - MySQL Community Server - GPL
-- OS Server:                    Win64
-- HeidiSQL Versi:               12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk sistem_pencatatan_penjualan
CREATE DATABASE IF NOT EXISTS `sistem_pencatatan_penjualan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sistem_pencatatan_penjualan`;

-- membuang struktur untuk table sistem_pencatatan_penjualan.sistem_pencatatan_penjualan
CREATE TABLE IF NOT EXISTS `sistem_pencatatan_penjualan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_product` varchar(50) NOT NULL,
  `price_product` float NOT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel sistem_pencatatan_penjualan.sistem_pencatatan_penjualan: ~3 rows (lebih kurang)
INSERT INTO `sistem_pencatatan_penjualan` (`id`, `name_product`, `price_product`, `created_at`, `updated_at`) VALUES
	(1, 'Laptop', 10000000, '2024-11-28 03:56:33', '2024-11-28 03:56:33'),
	(3, 'Mouse', 550000, '2024-11-28 03:57:11', '2024-11-28 03:57:22'),
	(4, 'Keybord', 1000000, '2024-11-28 03:57:48', '2024-11-28 03:57:48');

-- membuang struktur untuk table sistem_pencatatan_penjualan.tr_penjualan
CREATE TABLE IF NOT EXISTS `tr_penjualan` (
  `id_transaction` varchar(50) NOT NULL,
  `tgl_transaction` datetime DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  PRIMARY KEY (`id_transaction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel sistem_pencatatan_penjualan.tr_penjualan: ~2 rows (lebih kurang)
INSERT INTO `tr_penjualan` (`id_transaction`, `tgl_transaction`, `product_id`, `amount`, `total_price`) VALUES
	('Tr_BrG-2024-11-28 03:58:01', '2024-11-28 03:58:01', 1, 3, 30000000),
	('Tr_BrG-2024-11-28 03:58:18', '2024-11-28 03:58:18', 3, 5, 2750000);

-- membuang struktur untuk table sistem_pencatatan_penjualan.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel sistem_pencatatan_penjualan.user: ~1 rows (lebih kurang)
INSERT INTO `user` (`id`, `username`, `password`) VALUES
	(1, '', '$2y$10$tqt1KBGjL5vxv72PCVI9cu76eMdOZUkElsj6YUvzFy/MuKM2BRa36');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
