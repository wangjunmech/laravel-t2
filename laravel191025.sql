-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Admin','ad@t.com','2019-10-23 20:17:20','2019-10-23 20:17:20'),(2,'cindy','cd@cd.com','2019-10-23 21:38:05','2019-10-23 21:38:05'),(3,'Kevin','kevin2@cd.com','2019-10-23 21:55:43','2019-10-23 23:09:02'),(4,'Gorge','cd@cd.com','2019-10-23 21:57:48','2019-10-23 23:09:48'),(5,'Bill','rose@t.com','2019-10-23 21:58:00','2019-10-23 21:58:00'),(6,'Rose','rose@t.com','2019-10-23 21:58:09','2019-10-23 21:58:09'),(8,'Massimo','ms@test.com','2019-10-24 01:27:52','2019-10-24 01:27:52'),(9,'Leo','leo@test.com','2019-10-24 01:29:47','2019-10-24 01:29:47'),(10,'Mask','mks@test.com','2019-10-24 01:30:23','2019-10-24 01:30:23');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msgsubject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `msgcontent` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (2,'0','1','0000-00-00 00:00:00','0000-00-00 00:00:00','msg@###subjupdate',44),(3,'msg-update','MMmmsgcontentupdate','0000-00-00 00:00:00','0000-00-00 00:00:00','msg@###subjupdate',44),(4,'msg-update','MMmmsgcontentupdate','0000-00-00 00:00:00','0000-00-00 00:00:00','msg@###subjupdate',44),(5,'msg subj004','MMmmsgcontent004','0000-00-00 00:00:00','0000-00-00 00:00:00','004msg@###subj',0),(6,'msg subj005','MMmmsgcontent005','0000-00-00 00:00:00','0000-00-00 00:00:00','005msg@###subj',4),(7,'msg subj001','MMmmsgcontent001','0000-00-00 00:00:00','0000-00-00 00:00:00','001msg@###subj',4),(8,'msg subj002','MMmmsgcontent002','0000-00-00 00:00:00','0000-00-00 00:00:00','002msg@###subj',4),(9,'msg subj003','MMmmsgcontent003','0000-00-00 00:00:00','0000-00-00 00:00:00','003msg@###subj',4),(10,'msg subj004','MMmmsgcontent004','0000-00-00 00:00:00','0000-00-00 00:00:00','004msg@###subj',3),(11,'msg subj005','MMmmsgcontent005','0000-00-00 00:00:00','0000-00-00 00:00:00','005msg@###subj',4),(12,'msg subj主题','MMmmsgcontent','0000-00-00 00:00:00','0000-00-00 00:00:00','msg@###subj',4),(13,'msg subj主题','MMmmsgcontent','0000-00-00 00:00:00','0000-00-00 00:00:00','msg@###subj',4),(14,'msg subj主题','MMmmsgcontent','0000-00-00 00:00:00','0000-00-00 00:00:00','msg@###subj',0);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2018_01_27_081540_discription-of-create-table-thefirsttime',1),('2018_01_27_082128_projectcreatetblegoooooods',2),('2018_01_27_082656_projectcreatetblegoooooods',3),('2018_01_27_083057_add-emial-to-message',4),('2018_01_27_083851_add-emial-to-message',5),('2018_01_27_122040_add-age',6),('2019_10_24_033603_create_customers_table',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msglist`
--

DROP TABLE IF EXISTS `msglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `msglist` (
  `msgid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msgsubject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `msgcontent` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`msgid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msglist`
--

LOCK TABLES `msglist` WRITE;
/*!40000 ALTER TABLE `msglist` DISABLE KEYS */;
INSERT INTO `msglist` VALUES (2,'XXXSUbject01','1','0000-00-00 00:00:00','0000-00-00 00:00:00','msg@###subjupdate',44),(3,'XXXSUbject02','MMmmsgcontentupdate','0000-00-00 00:00:00','0000-00-00 00:00:00','msg@###subjupdate',44),(4,'XXXSUbject03','MMmmsgcontentupdate','0000-00-00 00:00:00','0000-00-00 00:00:00','msg@###subjupdate',44),(5,'XXXSUbject04','MMmmsgcontent004','0000-00-00 00:00:00','0000-00-00 00:00:00','004msg@###subj',0),(6,'XXXSUbject05','MMmmsgcontent005','0000-00-00 00:00:00','0000-00-00 00:00:00','005msg@###subj',4),(7,'XXXSUbject06','MMmmsgcontent001','0000-00-00 00:00:00','0000-00-00 00:00:00','001msg@###subj',4),(8,'XXXSUbject07','MMmmsgcontent002','0000-00-00 00:00:00','0000-00-00 00:00:00','002msg@###subj',4),(9,'XXXSUbject08','MMmmsgcontent003','0000-00-00 00:00:00','0000-00-00 00:00:00','003msg@###subj',4),(10,'XXXSUbject09','MMmmsgcontent004','0000-00-00 00:00:00','0000-00-00 00:00:00','004msg@###subj',3),(11,'XXXSUbject10','MMmmsgcontent005','0000-00-00 00:00:00','0000-00-00 00:00:00','005msg@###subj',4),(12,'XXXSUbject11','MMmmsgcontent','0000-00-00 00:00:00','0000-00-00 00:00:00','msg@###subj',4),(13,'XXXSUbject12','MMmmsgcontent','0000-00-00 00:00:00','0000-00-00 00:00:00','msg@###subj',4);
/*!40000 ALTER TABLE `msglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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

-- Dump completed on 2019-10-25 16:16:00
