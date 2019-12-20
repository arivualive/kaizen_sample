-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.10-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table sample.result
CREATE TABLE IF NOT EXISTS `result` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `contents_id` int(11) DEFAULT NULL,
  `percentage` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sample.result: ~9 rows (approximately)
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` (`id`, `Name`, `contents_id`, `percentage`) VALUES
	(1, 'Lesson1', 1, 12),
	(2, 'Lesson1', 2, 10),
	(3, 'Lesson2', 10, 50),
	(4, 'Lesson2', 11, 10),
	(5, 'Lesson3', 20, 40),
	(6, 'Lesson3', 21, 30),
	(7, 'Lesson4', 30, 10),
	(8, 'Lesson4', 31, 20),
	(9, 'Test', 41, 5);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;

-- Dumping structure for table sample.tbl_category
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_Name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table sample.tbl_category: ~4 rows (approximately)
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` (`id`, `cat_Name`) VALUES
	(1, 'Productivity'),
	(2, 'Kaizen'),
	(3, '5S'),
	(4, 'Others');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;

-- Dumping structure for table sample.tbl_contents
CREATE TABLE IF NOT EXISTS `tbl_contents` (
  `id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `subcat_id` int(11) DEFAULT NULL,
  `content_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sample.tbl_contents: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_contents` DISABLE KEYS */;
INSERT INTO `tbl_contents` (`id`, `cat_id`, `subcat_id`, `content_name`) VALUES
	(1, 1, 1, 'V1'),
	(2, 1, 1, 'V2'),
	(3, 1, 1, 'V3'),
	(4, 1, 1, 'V4'),
	(5, 1, 2, 'V5'),
	(6, 1, 2, 'V6'),
	(7, 1, 2, 'V7'),
	(8, 1, 2, 'V8'),
	(9, 1, 3, 'V9'),
	(10, 1, 3, 'V10'),
	(11, 1, 3, 'V11'),
	(12, 1, 3, 'V12'),
	(5, 1, 2, 'V5'),
	(12, 1, 4, 'V13'),
	(13, 1, 4, 'V14'),
	(14, 1, 4, 'V15'),
	(15, 1, 4, 'V16'),
	(16, 1, 5, 'T1'),
	(17, 1, 5, 'T2'),
	(18, 1, 5, 'T3');
/*!40000 ALTER TABLE `tbl_contents` ENABLE KEYS */;

-- Dumping structure for table sample.tbl_result
CREATE TABLE IF NOT EXISTS `tbl_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `contents_id` varchar(200) DEFAULT NULL,
  `percentage` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table sample.tbl_result: ~16 rows (approximately)
/*!40000 ALTER TABLE `tbl_result` DISABLE KEYS */;
INSERT INTO `tbl_result` (`id`, `cat_id`, `subcat_id`, `contents_id`, `percentage`) VALUES
	(1, 1, 1, '1', 60),
	(2, 1, 1, '2', 40),
	(3, 1, 1, '3', 80),
	(4, 1, 1, '4', 50),
	(5, 1, 2, '5', 10),
	(6, 1, 2, '6', 50),
	(7, 1, 2, '7', 50),
	(8, 1, 2, '8', 30),
	(9, 1, 3, '9', 10),
	(10, 1, 3, '10', 50),
	(11, 1, 3, '11', 50),
	(12, 1, 4, '12', 45),
	(13, 1, 4, '13', 10),
	(14, 1, 4, '14', 20),
	(15, 2, 6, '15', 50),
	(17, 2, 7, '17', 50),
	(18, 2, 7, '18', 10);
/*!40000 ALTER TABLE `tbl_result` ENABLE KEYS */;

-- Dumping structure for table sample.tbl_subcat
CREATE TABLE IF NOT EXISTS `tbl_subcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_Id` int(11) NOT NULL,
  `sub_cat` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Dumping data for table sample.tbl_subcat: ~17 rows (approximately)
/*!40000 ALTER TABLE `tbl_subcat` DISABLE KEYS */;
INSERT INTO `tbl_subcat` (`id`, `cat_Id`, `sub_cat`) VALUES
	(1, 1, 'Lesson 1'),
	(2, 1, 'Lesson 2'),
	(3, 1, 'Lesson 3'),
	(4, 1, 'Lesson 4'),
	(5, 1, 'Productivity Test'),
	(6, 2, 'Lesson 1'),
	(7, 2, 'Lesson 2'),
	(8, 2, 'Lesson 3'),
	(9, 2, 'Kaizen Test'),
	(10, 3, 'Lesson 1'),
	(11, 3, 'Lesson 2'),
	(12, 3, 'Lesson 3'),
	(13, 3, 'Lesson 4'),
	(14, 3, '5S Test'),
	(15, 4, 'Lesson 1'),
	(16, 4, 'Lesson 2'),
	(17, 4, 'Lesson 3'),
	(18, 4, 'Lesson 4'),
	(19, 4, 'Others Test');
/*!40000 ALTER TABLE `tbl_subcat` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
