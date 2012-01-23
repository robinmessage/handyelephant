CREATE DATABASE  IF NOT EXISTS `rails_development` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `rails_development`;
-- MySQL dump 10.13  Distrib 5.5.16, for osx10.5 (i386)
--
-- Host: localhost    Database: rails_development
-- ------------------------------------------------------
-- Server version	5.5.19

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
-- Table structure for table `staffmembers`
--

DROP TABLE IF EXISTS `staffmembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffmembers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_manager` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffmembers`
--

LOCK TABLES `staffmembers` WRITE;
/*!40000 ALTER TABLE `staffmembers` DISABLE KEYS */;
INSERT INTO `staffmembers` VALUES (1,'Nathan','Willoughby','Director',1,'2012-01-02 09:50:07','2012-01-02 09:50:07'),(2,'Sam','Willoughby','Director',0,'2012-01-02 09:50:14','2012-01-02 09:50:14');
/*!40000 ALTER TABLE `staffmembers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-01-05 11:13:26
