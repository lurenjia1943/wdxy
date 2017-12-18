-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: localhost    Database: wdxy
-- ------------------------------------------------------
-- Server version	5.5.53-log

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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `starttime` varchar(255) DEFAULT NULL,
  `finishtime` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'全栈1班','1','2017-12-03','2017-12-24',NULL,'2017-12-14 17:39:46',NULL),(13,'全栈10班','0','2017-12-15','2017-12-15','2017-12-15 19:13:48','2017-12-15 19:13:48',NULL),(10,'全栈2班','0','2017-12-15','2017-12-15','2017-12-15 19:09:27','2017-12-15 19:09:27',NULL),(12,'全栈2班','0',NULL,NULL,'2017-12-15 19:13:21','2017-12-15 19:13:21',NULL),(14,'全栈11班','0','2017-12-15','2017-12-15','2017-12-15 19:17:01','2017-12-15 19:17:01',NULL),(15,'全栈12班','0','2017-07-21','2018-04-06','2017-12-18 11:01:16','2017-12-18 11:01:16',NULL);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liuji`
--

DROP TABLE IF EXISTS `liuji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liuji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liuji`
--

LOCK TABLES `liuji` WRITE;
/*!40000 ALTER TABLE `liuji` DISABLE KEYS */;
INSERT INTO `liuji` VALUES (1,1,43,1,5,'早退','2017-12-14','2017-12-14 16:49:26','2017-12-14 16:49:26'),(2,1,44,1,5,'迟到','2017-12-14','2017-12-14 16:51:01','2017-12-14 16:51:01'),(3,1,47,1,5,'迟到','2017-12-15','2017-12-15 16:40:25','2017-12-15 16:40:25'),(4,1,48,1,13,'迟到','2017-12-18','2017-12-18 11:00:35','2017-12-18 11:00:35');
/*!40000 ALTER TABLE `liuji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (5,1,39,-10,'迟到','2017-12-14','2017-12-14 10:52:01','2017-12-14 10:52:01'),(6,1,39,-10,'迟到','2017-12-15','2017-12-14 15:18:30','2017-12-14 15:18:30'),(7,1,46,4,'迟到','2017-12-14','2017-12-14 17:31:33','2017-12-14 17:31:33'),(8,1,46,5,'迟到','2017-12-12','2017-12-14 17:32:03','2017-12-14 17:32:03'),(9,1,48,-10,'迟到','2017-12-15','2017-12-15 15:21:06','2017-12-15 15:21:06'),(10,1,39,4,'迟到','2017-12-15','2017-12-15 16:33:24','2017-12-15 16:33:24'),(11,1,39,5,'迟到','2017-12-15','2017-12-15 16:35:17','2017-12-15 16:35:17'),(12,1,48,-5,'迟到','2017-12-18','2017-12-18 11:00:02','2017-12-18 11:00:02');
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `shenfenzheng` varchar(255) DEFAULT NULL,
  `iphone` varchar(255) DEFAULT NULL,
  `jphone` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `classid` varchar(255) DEFAULT NULL,
  `score` int(11) NOT NULL DEFAULT '100',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (67,NULL,NULL,NULL,NULL,NULL,'',NULL,100,'2017-12-18 14:45:42','2017-12-18 14:45:42',NULL),(39,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',109,'2017-12-13 12:02:22','2017-12-18 10:59:48','2017-12-18 10:59:48'),(42,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','5',100,'2017-12-13 12:02:22','2017-12-14 16:47:39',NULL),(43,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','5',100,'2017-12-13 12:02:22','2017-12-14 16:49:26',NULL),(44,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','5',100,'2017-12-13 12:02:22','2017-12-14 16:51:01',NULL),(45,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','5',100,'2017-12-13 12:02:22','2017-12-14 16:48:46',NULL),(46,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',109,'2017-12-13 12:02:22','2017-12-15 15:15:39','2017-12-15 15:15:39'),(47,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','5',100,'2017-12-13 12:02:22','2017-12-15 16:40:25',NULL),(48,'路人甲','2121212121',NULL,NULL,'男','省份地级市市、县级市鑫鹏大厦8楼','13',85,'2017-12-13 12:02:22','2017-12-18 11:00:35',NULL),(49,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 14:41:18',NULL),(50,'路人甲','2121212121',NULL,NULL,'男','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 17:57:17',NULL),(51,'路人甲123','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 17:56:34',NULL),(52,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:13:09',NULL),(53,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:02:22',NULL),(54,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:02:22',NULL),(55,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:02:22',NULL),(56,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:02:22',NULL),(57,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:02:22',NULL),(58,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:02:22',NULL),(59,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:02:22',NULL),(60,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:02:22',NULL),(62,'路人甲1943','2121212121',NULL,NULL,'男','湖南省地级市市、县级市鑫鹏大厦8楼','5',100,'2017-12-13 12:37:14','2017-12-14 13:41:19','2017-12-14 13:41:19'),(65,'路人甲','2121212121',NULL,NULL,'男','广东省茂名市茂港区鑫鹏大厦8楼','1',100,'2017-12-14 17:01:07','2017-12-14 17:01:07',NULL),(66,'路人甲','2121212121','13653592881','儿子：13653592882','男','火星','1',100,'2017-12-14 17:04:01','2017-12-14 17:05:46',NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'路人甲','395696661@qq.com','$2y$10$s6maV4flYahaHSFtCTC.ouUyALt6qq8fVL674NpE7u7Xx1r8rw.OS','1#13#14#','sFvR5eNdH1SJkvBTKnAty7PJyHD1Q1xUKbQIuoaxDKYqkyMe1hotpW5dnDOz','2017-11-23 03:30:10','2017-12-18 08:51:05'),(2,'路人乙','395696661@qq.com','$2y$10$Z9hElMWBnyOEhHpEg1fTUOBRwn/atqZzkqnngv/mW/TJKR/YaghU2','5#15#','fvq9A5Dh03REOKJHx8votm4nazUdy0rVg9rhstoQ1wKjEh7rR00usB91ngUY','2017-11-23 03:30:10','2017-12-18 03:01:16');
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

-- Dump completed on 2017-12-18 18:10:02
