# Host: localhost  (Version: 5.5.53-log)
# Date: 2018-02-02 09:11:54
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "class"
#

DROP TABLE IF EXISTS `class`;
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

#
# Data for table "class"
#

/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'全栈1班','1','2017-12-03','2017-12-24',NULL,'2017-12-14 17:39:46',NULL),(5,'全栈2班','0','2017-12-15','2017-12-15','2017-12-15 19:09:27','2017-12-15 19:09:27',NULL),(13,'全栈10班','0','2017-12-15','2017-12-15','2017-12-15 19:13:48','2017-12-15 19:13:48',NULL),(14,'全栈11班','0','2017-12-15','2017-12-15','2017-12-15 19:17:01','2017-12-15 19:17:01',NULL),(15,'全栈12班','0','2017-07-21','2018-04-10','2017-12-18 11:01:16','2018-01-15 11:30:02',NULL);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;

#
# Structure for table "grade"
#

DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `studentid` varchar(255) NOT NULL,
  `subjectid` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;

#
# Data for table "grade"
#

/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (68,'46','16','90','1'),(69,'48','16','','1'),(70,'50','16','','1'),(71,'51','16','','1'),(72,'52','16','','1'),(73,'53','16','','1'),(74,'54','16','','1'),(75,'55','16','546','1'),(76,'56','16','123123','1'),(77,'57','16','','1'),(78,'58','16','','1'),(79,'59','16','','1'),(80,'60','16','','1'),(81,'65','16','','1'),(82,'66','16','123','1'),(83,'39','17','1234','1'),(85,'46','17','34','1'),(86,'48','17','','1'),(87,'50','17','','1'),(88,'51','17','45','1'),(89,'52','17','','1'),(90,'53','17','','1'),(91,'54','17','','1'),(92,'55','17','122','1'),(93,'56','17','','1'),(94,'57','17','','1'),(95,'58','17','','1'),(96,'59','17','','1'),(97,'60','17','','1'),(98,'65','17','','1'),(99,'66','17','','1'),(102,'46','18','12','1'),(103,'48','18','123','1'),(104,'50','18','','1'),(105,'51','18','','1'),(106,'52','18','','1'),(107,'53','18','','1'),(108,'54','18','','1'),(109,'55','18','','1'),(110,'56','18','','1'),(111,'57','18','','1'),(112,'58','18','','1'),(113,'59','18','122','1'),(114,'60','18','','1'),(115,'65','18','','1'),(116,'66','18','','1'),(151,'49','21','12','1'),(152,'39','22','78','1'),(154,'46','22','','1'),(155,'48','22','123','1'),(156,'50','22','','1'),(157,'51','22','','1'),(158,'52','22','','1'),(159,'53','22','','1'),(160,'54','22','','1'),(161,'55','22','','1'),(162,'56','22','','1'),(163,'57','22','','1'),(164,'58','22','','1'),(165,'59','22','','1'),(166,'60','22','','1'),(167,'65','22','','1'),(168,'66','22','','1'),(169,'39','21','1111','2'),(170,'42','24','123','1'),(171,'46','24','','1'),(172,'48','24','','1'),(173,'50','24','','1'),(174,'51','24','','1'),(175,'52','24','','1'),(176,'53','24','','1'),(177,'54','24','','1'),(178,'55','24','','1'),(179,'56','24','','1'),(180,'57','24','','1'),(181,'58','24','','1'),(182,'59','24','','1'),(183,'60','24','','1'),(184,'65','24','','1'),(185,'66','24','','1');
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;

#
# Structure for table "liuji"
#

DROP TABLE IF EXISTS `liuji`;
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

#
# Data for table "liuji"
#

/*!40000 ALTER TABLE `liuji` DISABLE KEYS */;
INSERT INTO `liuji` VALUES (1,1,43,1,5,'早退','2017-12-14','2017-12-14 16:49:26','2017-12-14 16:49:26'),(2,1,44,1,5,'迟到','2017-12-14','2017-12-14 16:51:01','2017-12-14 16:51:01'),(3,1,47,1,5,'迟到','2017-12-15','2017-12-15 16:40:25','2017-12-15 16:40:25'),(4,1,48,1,13,'迟到','2017-12-18','2017-12-18 11:00:35','2017-12-18 11:00:35'),(5,1,49,1,13,'考试成绩不合格','2018-01-15','2018-01-15 11:32:54','2018-01-15 11:32:54'),(6,1,48,13,1,'考试考太好了','2018-01-15','2018-01-15 11:33:31','2018-01-15 11:33:31'),(7,1,50,1,1,'考试成绩不合格','2018-01-15','2018-01-15 11:33:48','2018-01-15 11:33:48'),(8,1,49,13,13,NULL,NULL,'2018-01-16 16:29:17','2018-01-16 16:29:17'),(9,1,42,1,13,NULL,'2018-01-10','2018-01-26 15:30:28','2018-01-26 15:30:28'),(10,1,42,13,1,NULL,NULL,'2018-01-26 15:35:59','2018-01-26 15:35:59'),(11,1,56,1,13,NULL,'2018-01-01','2018-01-29 12:14:43','2018-01-29 12:14:43'),(12,1,56,13,1,NULL,NULL,'2018-01-29 12:20:39','2018-01-29 12:20:39'),(13,1,49,13,1,NULL,NULL,'2018-01-30 09:39:35','2018-01-30 09:39:35'),(14,1,49,1,1,NULL,NULL,'2018-01-30 10:00:58','2018-01-30 10:00:58'),(15,1,49,1,13,NULL,NULL,'2018-01-30 10:01:07','2018-01-30 10:01:07');
/*!40000 ALTER TABLE `liuji` ENABLE KEYS */;

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "migrations"
#

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

#
# Structure for table "password_resets"
#

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "password_resets"
#

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('395696661@qq.com','$2y$10$LVtMUxjbETuu6zqI1DwIE.bxKQl23RiFT8hWyy0gTQKPJrF6Vksha','2018-01-15 11:30:41'),('395696662@qq.com','$2y$10$Y9xG6dfawoJH/riJM.A9fuDg87Uvi/Y0aM6v0B5FFxhASeqd/tOZi','2017-12-19 09:07:16');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

#
# Structure for table "project_con"
#

DROP TABLE IF EXISTS `project_con`;
CREATE TABLE `project_con` (
  `id` int(11) NOT NULL,
  `pn_id` int(11) DEFAULT NULL,
  `zigongneng` varchar(255) DEFAULT NULL,
  `kaohedian` varchar(255) DEFAULT NULL,
  `pfbiaozhun` varchar(255) DEFAULT NULL,
  `fenzhi` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "project_con"
#

/*!40000 ALTER TABLE `project_con` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_con` ENABLE KEYS */;

#
# Structure for table "project_needs"
#

DROP TABLE IF EXISTS `project_needs`;
CREATE TABLE `project_needs` (
  `id` int(11) NOT NULL,
  `gongneng` varchar(255) DEFAULT NULL,
  `zhuyemian` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "project_needs"
#

/*!40000 ALTER TABLE `project_needs` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_needs` ENABLE KEYS */;

#
# Structure for table "qin"
#

DROP TABLE IF EXISTS `qin`;
CREATE TABLE `qin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stuid` varchar(255) DEFAULT NULL,
  `classid` varchar(255) DEFAULT NULL,
  `tid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `liuid` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

#
# Data for table "qin"
#

/*!40000 ALTER TABLE `qin` DISABLE KEYS */;
INSERT INTO `qin` VALUES (1,'48','1',NULL,'1','4','777',NULL,'2017-12-13 12:02:22',NULL),(2,'48','1',NULL,'1','1','777',NULL,'2017-12-13 12:02:22',NULL),(3,'48','1',NULL,'1','1','777',NULL,'2017-12-13 12:02:22',NULL),(4,'48','1',NULL,'2','1','77',NULL,'2017-12-13 12:02:22',NULL),(5,'48','1',NULL,'3','1','77',NULL,'2017-12-13 12:02:22',NULL),(6,'48','1',NULL,'4','1','77',NULL,'2017-12-13 12:02:22',NULL),(7,'50','1',NULL,'4','1','77',NULL,'2017-12-13 12:02:22',NULL),(8,'48','10',NULL,'1','1','77',NULL,'2017-12-13 12:02:22',NULL),(9,'48','1',NULL,'1','1','111',NULL,'2017-12-13 12:02:22',NULL),(10,'48','1',NULL,'1','1','2222',NULL,'2017-12-13 12:02:22',NULL),(14,'48','1','1','5','1',NULL,'4','2017-12-13 12:02:22',NULL),(15,'48','1','1','5','1','最新添加11',NULL,'2018-01-24 16:06:12','2018-01-25 16:06:12'),(16,'48','1','1','1','4','最新添加22',NULL,'2018-01-25 16:19:58','2018-01-25 16:19:58'),(17,'48','1','1','2','1','心情不好',NULL,'2018-01-26 09:45:30','2018-01-26 09:45:30'),(18,'48','1','1','4','3','哈哈',NULL,'2018-01-29 14:48:55','2018-01-29 14:48:55'),(19,'48','1','1','1','4','哈哈1',NULL,'2018-01-29 14:50:45','2018-01-29 14:50:45'),(20,'48','1','1','5','1',NULL,'6','2017-12-13 12:02:22',NULL);
/*!40000 ALTER TABLE `qin` ENABLE KEYS */;

#
# Structure for table "score"
#

DROP TABLE IF EXISTS `score`;
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "score"
#

/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (5,1,48,-10,'迟到','2017-12-14','2017-12-14 10:52:01','2017-12-14 10:52:01'),(6,1,48,-10,'迟到','2017-12-15','2017-12-14 15:18:30','2017-12-14 15:18:30'),(7,1,48,4,'迟到','2017-12-14','2017-12-14 17:31:33','2017-12-14 17:31:33'),(8,1,46,5,'迟到','2017-12-12','2017-12-14 17:32:03','2017-12-14 17:32:03'),(9,1,46,-10,'迟到','2017-12-15','2017-12-15 15:21:06','2017-12-15 15:21:06'),(10,1,48,4,'迟到','2017-12-15','2017-12-15 16:33:24','2017-12-15 16:33:24'),(11,1,48,5,'迟到','2017-12-15','2017-12-15 16:35:17','2017-12-15 16:35:17'),(12,1,48,-5,'迟到','2017-12-18','2017-12-18 11:00:02','2017-12-18 11:00:02'),(13,1,53,-10,'考试成绩不合格','2018-01-15','2018-01-15 11:35:46','2018-01-15 11:35:46'),(14,1,49,-3,'周星驰v','2018-01-02','2018-01-16 16:29:07','2018-01-16 16:29:07');
/*!40000 ALTER TABLE `score` ENABLE KEYS */;

#
# Structure for table "students"
#

DROP TABLE IF EXISTS `students`;
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
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

#
# Data for table "students"
#

/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (43,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','5',100,'2017-12-13 12:02:22','2017-12-14 16:49:26',NULL),(44,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','5',100,'2017-12-13 12:02:22','2017-12-14 16:51:01',NULL),(45,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','5',100,'2017-12-13 12:02:22','2017-12-14 16:48:46',NULL),(46,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',109,'2017-12-13 12:02:22','2017-12-15 15:15:39','2017-12-15 15:15:39'),(47,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','5',100,'2017-12-13 12:02:22','2017-12-15 16:40:25',NULL),(48,'路人甲','2121212121',NULL,'21321','男','省份地级市市、县级市鑫鹏大厦8楼','1',85,'2017-12-13 12:02:22','2018-01-24 13:57:04',NULL),(49,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','13',97,'2017-12-13 12:02:22','2018-01-30 10:01:07',NULL),(50,'路人甲','2121212121',NULL,NULL,'男','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 17:57:17',NULL),(51,'路人甲123','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2018-01-15 14:44:32','2018-01-15 14:44:32'),(52,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:13:09',NULL),(53,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',90,'2017-12-13 12:02:22','2018-01-30 16:29:13','2018-01-30 16:29:13'),(54,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:02:22',NULL),(55,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:02:22',NULL),(56,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2018-01-29 12:20:39',NULL),(57,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:02:22',NULL),(58,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:02:22',NULL),(59,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:02:22',NULL),(60,'路人甲','2121212121',NULL,NULL,'女','省份地级市市、县级市鑫鹏大厦8楼','1',100,'2017-12-13 12:02:22','2017-12-13 12:02:22',NULL),(62,'路人甲1943','2121212121',NULL,NULL,'男','湖南省地级市市、县级市鑫鹏大厦8楼','5',100,'2017-12-13 12:37:14','2017-12-14 13:41:19','2017-12-14 13:41:19'),(65,'路人甲','2121212121',NULL,NULL,'男','广东省茂名市茂港区鑫鹏大厦8楼','1',100,'2017-12-14 17:01:07','2017-12-14 17:01:07',NULL),(66,'路人甲','2121212121','13653592881','儿子：13653592882','男','火星','1',100,'2017-12-14 17:04:01','2017-12-14 17:05:46',NULL),(67,NULL,NULL,NULL,NULL,NULL,'',NULL,100,'2017-12-18 14:45:42','2017-12-18 14:45:42',NULL),(68,NULL,NULL,NULL,NULL,NULL,'',NULL,100,'2018-01-17 11:51:50','2018-01-17 11:51:50',NULL),(69,NULL,NULL,NULL,NULL,NULL,'',NULL,100,'2018-01-17 12:09:53','2018-01-17 12:09:53',NULL),(70,NULL,NULL,NULL,NULL,NULL,'',NULL,100,'2018-01-17 12:21:12','2018-01-17 12:21:12',NULL),(71,NULL,NULL,NULL,NULL,NULL,'',NULL,100,'2018-01-17 12:30:17','2018-01-17 12:30:17',NULL),(72,NULL,NULL,NULL,NULL,NULL,'',NULL,100,'2018-01-17 12:30:28','2018-01-17 12:30:28',NULL),(73,NULL,NULL,NULL,NULL,NULL,'',NULL,100,'2018-01-17 12:30:42','2018-01-17 12:30:42',NULL),(74,NULL,NULL,NULL,NULL,NULL,'',NULL,100,'2018-01-17 15:51:41','2018-01-17 15:51:41',NULL),(75,NULL,NULL,NULL,NULL,NULL,'',NULL,100,'2018-01-17 15:53:06','2018-01-17 15:53:06',NULL),(76,NULL,NULL,NULL,NULL,NULL,'',NULL,100,'2018-01-17 15:55:00','2018-01-17 15:55:00',NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;

#
# Structure for table "test"
#

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` varchar(255) DEFAULT '',
  `subject` varchar(255) NOT NULL,
  `testteacher` varchar(255) DEFAULT NULL,
  `teststarttime` varchar(255) DEFAULT NULL,
  `testyingdao` varchar(255) DEFAULT NULL,
  `testshidao` varchar(255) DEFAULT NULL,
  `pingjuanteacher` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

#
# Data for table "test"
#

/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (16,'1','php','星星','2018-01-04','12123','11123','月儿213'),(17,'1','mysql','贺小丹','2018-01-23','123','123','213'),(18,'1','oop','杨杰','2018-01-18','123','111','张婷'),(21,'13','php',NULL,NULL,NULL,NULL,NULL),(22,'1','Javascript','','2018-01-04','','',''),(24,'1','123','1','2018-01-02','12','12','123');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "users"
#

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'路人甲','395696661@qq.com','$2y$10$UOW14/1O.maGD/zDulOpYeDAG9jKUXsfgXCOTD1CSxTAUUqxAcMPW','1#13#14#','VYcYcoEhvqvsOcxGUBCkNH5xHLKlGhvBZyfNKPlFbSWEaGNIwz7ouexEs1VF','2017-11-23 11:30:10','2017-12-19 11:08:57'),(2,'路人乙','395696662@qq.com','$2y$10$Z9hElMWBnyOEhHpEg1fTUOBRwn/atqZzkqnngv/mW/TJKR/YaghU2','5#15#','lpWbP2aLLKcRxr0YJuc7awmsXOnnXWO52K8bBupfByiY6fFnSbjr509KG1HC','2017-11-23 11:30:10','2017-12-18 11:01:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
