# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.16)
# Database: lolol
# Generation Time: 2019-08-27 13:43:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table lolol_author
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lolol_author`;

CREATE TABLE `lolol_author` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hashcode` text COLLATE utf8mb4_general_ci,
  `location` geometry DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `lolol_author` WRITE;
/*!40000 ALTER TABLE `lolol_author` DISABLE KEYS */;

INSERT INTO `lolol_author` (`no`, `name`, `hashcode`, `location`, `created_at`)
VALUES
	(2,'장호성','340c0fb5403a62b97395a833b2275965',NULL,'2019-08-15 03:39:34'),
	(3,'장호성','340c0fb5403a62b97395a833b2275965',NULL,'2019-08-27 00:50:13'),
	(4,'장호성','340c0fb5403a62b97395a833b2275965',NULL,'2019-08-27 00:50:40'),
	(5,'장호성','340c0fb5403a62b97395a833b2275965',NULL,'2019-08-27 00:50:42'),
	(6,'장호성','340c0fb5403a62b97395a833b2275965',NULL,'2019-08-27 00:51:15'),
	(7,'장호성','340c0fb5403a62b97395a833b2275965',NULL,'2019-08-27 01:14:28');

/*!40000 ALTER TABLE `lolol_author` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table lolol_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lolol_posts`;

CREATE TABLE `lolol_posts` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `location` geometry DEFAULT NULL,
  `name` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `short_expression` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_general_ci,
  `note` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `lolol_posts` WRITE;
/*!40000 ALTER TABLE `lolol_posts` DISABLE KEYS */;

INSERT INTO `lolol_posts` (`no`, `location`, `name`, `short_expression`, `keywords`, `note`, `author_id`, `create_at`)
VALUES
	(1,NULL,'hello','hello','#123','123',1,'2019-08-15 01:16:55'),
	(2,X'000000000101000000333333333333F33F0000000000000C40','asd','asd','asd','asd',5,'2019-08-15 03:19:22'),
	(3,X'00000000010100000066666666662640403333333333935E40','esdf','asdf','undefined','3gasfd',4,'2019-08-15 03:24:28'),
	(4,X'00000000010100000066666666662640403333333333935E40','esdf','asdf','undefined','3gasfd',4,'2019-08-15 03:25:06');

/*!40000 ALTER TABLE `lolol_posts` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
