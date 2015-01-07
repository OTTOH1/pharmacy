-- MySQL dump 10.14  Distrib 5.5.32-MariaDB, for Linux (i686)
--
-- Host: localhost    Database: pset7
-- ------------------------------------------------------
-- Server version	5.5.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `transaction` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `symbol` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `shares` int(11) NOT NULL,
  `price` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (48,'BUY','2014-09-20 21:18:33','FB',5,78.0000),(48,'SELL','2014-09-20 21:18:53','FB',6,78.0000),(48,'BUY','2014-09-20 21:28:51','FB',1,78.0000),(48,'BUY','2014-09-20 21:33:20','FB',2,77.9100),(48,'SELL','2014-09-20 21:34:02','FB',3,77.9100),(50,'BUY','2014-09-21 08:18:42','FB',1,77.9100),(50,'BUY','2014-09-21 08:24:00','FB',1,77.9100),(50,'BUY','2014-09-21 08:24:44','FB',1,77.9100),(50,'BUY','2014-09-21 08:26:21','FB',1,77.9100),(50,'BUY','2014-09-21 08:27:42','FB',1,77.9100),(50,'BUY','2014-09-21 08:53:18','FB',1,77.9100),(50,'BUY','2014-09-21 08:54:47','FB',1,77.9100),(50,'BUY','2014-09-21 09:04:56','FB',1,77.9100),(50,'BUY','2014-09-21 09:05:18','FB',1,77.9100),(50,'BUY','2014-09-21 09:15:11','FB',1,77.9100),(50,'BUY','2014-09-21 09:19:22','FB',1,77.9100),(50,'BUY','2014-09-21 09:19:55','FB',1,77.9100),(50,'BUY','2014-09-21 09:23:42','FB',1,77.9100),(50,'SELL','2014-09-21 09:27:29','FB',13,77.9100),(50,'BUY','2014-09-21 09:33:09','FB',1,77.9100),(50,'SELL','2014-09-21 09:33:18','FB',1,77.9100),(50,'BUY','2014-09-21 09:34:59','FB',1,77.9100),(50,'SELL','2014-09-21 09:35:11','FB',1,77.9100),(50,'BUY','2014-09-21 09:49:52','FB',1,77.9100),(50,'BUY','2014-09-21 09:49:58','FB',1,77.9100),(50,'SELL','2014-09-21 09:50:07','FB',2,77.9100),(50,'BUY','2014-09-21 09:50:37','FB',3,77.9100),(50,'SELL','2014-09-21 09:50:45','FB',3,77.9100),(50,'BUY','2014-09-21 09:55:41','FB',5,77.9100),(50,'SELL','2014-09-21 09:55:54','FB',5,77.9100),(50,'BUY','2014-09-21 09:58:43','FB',10,77.9100),(50,'SELL','2014-09-21 09:58:55','FB',10,77.9100),(50,'BUY','2014-09-21 10:10:06','FB',4,77.9100),(50,'SELL','2014-09-21 10:13:43','FB',4,77.9100),(50,'BUY','2014-09-21 10:14:53','FB',7,77.9100),(50,'SELL','2014-09-21 10:15:00','FB',7,77.9100),(48,'BUY','2014-09-21 10:21:24','FB',3,77.9100),(48,'BUY','2014-09-21 10:21:40','FB',5,77.9100),(48,'SELL','2014-09-21 10:24:04','FB',8,77.9100),(48,'BUY','2014-09-21 10:26:58','FB',40,77.9100),(48,'SELL','2014-09-21 10:27:14','FB',40,77.9100);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `symbol` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `shares` int(11) NOT NULL,
  PRIMARY KEY (`id`,`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio`
--

LOCK TABLES `portfolio` WRITE;
/*!40000 ALTER TABLE `portfolio` DISABLE KEYS */;
INSERT INTO `portfolio` VALUES (6,'FB',100);
/*!40000 ALTER TABLE `portfolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cash` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'caesar','$1$50$GHABNWBNE/o4VL7QjmQ6x0',10000.0000,'vafon2@gmail.com'),(2,'hirschhorn','$1$50$lJS9HiGK6sphej8c4bnbX.',10000.0000,''),(3,'jharvard','$1$50$RX3wnAMNrGIbgzbRYrxM1/',10000.0000,''),(4,'malan','$1$HA$azTGIMVlmPi9W9Y12cYSj/',10000.0000,''),(5,'milo','$1$HA$6DHumQaK4GhpX8QE23C8V1',10000.0000,''),(6,'skroob','$1$50$euBi4ugiJmbpIbvTTfmfI.',10000.0000,''),(7,'zamyla','$1$50$uwfqB45ANW.9.6qaQ.DcF.',10000.0000,''),(48,'Anton','$1$DUlstQlw$3pNFB7075k9DAr4e7cKpy0',10000.0000,'vafon2@gmail.com'),(50,'igor','$1$tUhh/E5O$wRJJS0jz4ZGzlqT.ClfpF0',10000.0000,'vafon2@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-21  6:29:47
