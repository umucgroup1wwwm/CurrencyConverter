-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: currencydb
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `checking`
--

DROP TABLE IF EXISTS `checking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checking` (
  `User_ID` int(11) NOT NULL,
  `Account_ID_Checking` int(11) DEFAULT NULL,
  `Account_Total_Checking` int(11) DEFAULT NULL,
  `Currency_Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checking`
--

LOCK TABLES `checking` WRITE;
/*!40000 ALTER TABLE `checking` DISABLE KEYS */;
/*!40000 ALTER TABLE `checking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currates`
--

DROP TABLE IF EXISTS `currates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currates` (
  `country` varchar(30) DEFAULT NULL,
  `rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currates`
--

LOCK TABLES `currates` WRITE;
/*!40000 ALTER TABLE `currates` DISABLE KEYS */;
INSERT INTO `currates` VALUES ('Argentine Peso',20.1653),('Australian Dollar',1.27385),('Bahraini Dinar',0.376),('Botswana Pula',9.4429),('Brazilian Real',3.22414),('Bruneian Dollar',1.31762),('Bulgarian Lev',1.58636),('Canadian Dollar',1.26798),('Chilean Peso',587.73),('Chinese Yuan Renminbi',6.30999),('Colombian Peso',2839),('Croatian Kuna',6.04451),('Czech Koruna',20.5743),('Danish Krone',6.0394),('Euro',0.811092),('Hong Kong Dollar',7.82539),('Hungarian Forint',254.428),('Icelandic Krona',100.354),('Indian Rupee',64.8706),('Indonesian Rupiah',13672.3),('Iranian Rial',37288.5),('Israeli Shekel',3.48431),('Japanese Yen',106.844),('Kazakhstani Tenge',318.587),('South Korean Won',1071.23),('Kuwaiti Dinar',0.3008),('Libyan Dinar',1.3304),('Malaysian Ringgit',3.90984),('Mauritian Rupee',33.2154),('Mexican Peso',18.685),('Nepalese Rupee',104.279),('New Zealand Dollar',1.37212),('Norwegian Krone',7.81834),('Omani Rial',0.3845),('Pakistani Rupee',110.757),('Philippine Peso',52.0718),('Polish Zloty',3.38305),('Qatari Riyal',3.64),('Romanian New Leu',3.76854),('Russian Ruble',55.6635),('Saudi Arabian Riyal',3.75),('Singapore Dollar',1.31762),('South African Rand',11.5714),('Sri Lankan Rupee',154.919),('Swedish Krona',8.14496),('Swiss Franc',0.93703),('Taiwan New Dollar',29.2305),('Thai Baht',31.3126),('Trinidadian Dollar',6.75126),('Turkish Lira',3.78525),('Emirati Dirham',3.6725),('British Pound',0.716),('Venezuelan Bolivar',9.9875);
/*!40000 ALTER TABLE `currates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `role_id` int(11) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  UNIQUE KEY `role` (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savings`
--

DROP TABLE IF EXISTS `savings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savings` (
  `User_ID` int(11) NOT NULL,
  `Account_Total_Savings` int(11) DEFAULT NULL,
  `Currency_Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savings`
--

LOCK TABLES `savings` WRITE;
/*!40000 ALTER TABLE `savings` DISABLE KEYS */;
/*!40000 ALTER TABLE `savings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `User_Id` int(11) NOT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`User_Id`),
  CONSTRAINT `fk_wu2` FOREIGN KEY (`User_Id`) REFERENCES `users` (`User_Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `User_Id` int(11) NOT NULL,
  `Email` varchar(75) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(75) NOT NULL,
  `Username` varchar(75) NOT NULL,
  PRIMARY KEY (`User_Id`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2018-02-27 23:04:54
