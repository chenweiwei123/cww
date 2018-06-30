-- MySQL dump 10.16  Distrib 10.2.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: self
-- ------------------------------------------------------
-- Server version	10.2.15-MariaDB-10.2.15+maria~artful

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
-- Table structure for table `friend_music`
--

DROP TABLE IF EXISTS `friend_music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend_music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `desc` varchar(4500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_friend_music_1_idx` (`mid`),
  KEY `fk_friend_music_2_idx` (`fid`),
  CONSTRAINT `fk_friend_music_1` FOREIGN KEY (`mid`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_friend_music_2` FOREIGN KEY (`fid`) REFERENCES `worker` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_music`
--

LOCK TABLES `friend_music` WRITE;
/*!40000 ALTER TABLE `friend_music` DISABLE KEYS */;
/*!40000 ALTER TABLE `friend_music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `location` varchar(2048) DEFAULT NULL,
  `singer` int(11) DEFAULT NULL,
  `follow` int(11) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_music_1_idx` (`singer`),
  CONSTRAINT `fk_music_1` FOREIGN KEY (`singer`) REFERENCES `single` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music` VALUES (1,'仰望星空','/OfficeXm/music/1.mp3',1,1244,'/OfficeXm/2/img/xiaoren.jpg');
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_music`
--

DROP TABLE IF EXISTS `owner_music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner_music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `musicid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_owner_music_1_idx` (`sid`),
  KEY `fk_owner_music_2_idx` (`musicid`),
  CONSTRAINT `fk_owner_music_1` FOREIGN KEY (`sid`) REFERENCES `worker` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_owner_music_2` FOREIGN KEY (`musicid`) REFERENCES `music` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_music`
--

LOCK TABLES `owner_music` WRITE;
/*!40000 ALTER TABLE `owner_music` DISABLE KEYS */;
/*!40000 ALTER TABLE `owner_music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `single`
--

DROP TABLE IF EXISTS `single`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `single` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(45) DEFAULT NULL,
  `follows` int(11) DEFAULT 0,
  `name` varchar(45) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `single`
--

LOCK TABLES `single` WRITE;
/*!40000 ALTER TABLE `single` DISABLE KEYS */;
INSERT INTO `single` VALUES (1,'四川省成都',1222,'张杰',1);
/*!40000 ALTER TABLE `single` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT '工作人员',
  `password` varchar(45) DEFAULT NULL COMMENT '密码 MD5加密',
  `sex` int(11) DEFAULT 1 COMMENT '0,女   1：男',
  `address` varchar(45) DEFAULT NULL COMMENT '地址',
  `phone` int(110) DEFAULT NULL COMMENT '电话',
  `qq` int(11) DEFAULT NULL,
  `wechat` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL COMMENT '职位',
  `desc` varchar(45) DEFAULT NULL,
  `number` int(11) DEFAULT NULL COMMENT '打卡次数',
  `image` varchar(10240) DEFAULT NULL COMMENT '头像',
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES (6,'陈维维','123',1,NULL,123,NULL,NULL,NULL,NULL,NULL,NULL,'/OfficeXm/2/img/xiaoren.jpg',NULL),(12,'陈炫','123',NULL,NULL,1234,NULL,NULL,NULL,NULL,NULL,NULL,'/OfficeXm/2/img/xiaoren.jpg',NULL),(23,'1','1',1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'/OfficeXm/2/img/xiaoren.jpg',NULL),(24,'陈维维','111',1,NULL,111,NULL,NULL,NULL,NULL,NULL,NULL,'/OfficeXm/2/img/xiaoren.jpg',NULL),(25,'','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/OfficeXm/2/img/xiaoren.jpg',NULL),(28,'???','123',1,NULL,123456,NULL,NULL,NULL,NULL,NULL,NULL,'/OfficeXm/2/img/xiaoren.jpg',NULL),(29,'qq','000',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'/OfficeXm/2/img/xiaoren.jpg',NULL);
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-30 17:08:16
