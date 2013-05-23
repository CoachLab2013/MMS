CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.5.30

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
-- Table structure for table `analysis`
--

DROP TABLE IF EXISTS `analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analysis` (
  `idAnalysis` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idAnalysis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analysis`
--

LOCK TABLES `analysis` WRITE;
/*!40000 ALTER TABLE `analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atmortuary`
--

DROP TABLE IF EXISTS `atmortuary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atmortuary` (
  `bodyReceivedFromPerNumber` varchar(10) NOT NULL,
  `bodyHandOverFromPerNumber` varchar(10) NOT NULL,
  `Body_idDeathRegisterNumber` varchar(45) NOT NULL,
  `idAtMortuary` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idAtMortuary`),
  KEY `fk_AtMortuary_Body1_idx` (`Body_idDeathRegisterNumber`),
  CONSTRAINT `fk_AtMortuary_Body1` FOREIGN KEY (`Body_idDeathRegisterNumber`) REFERENCES `body` (`idDeathRegisterNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atmortuary`
--

LOCK TABLES `atmortuary` WRITE;
/*!40000 ALTER TABLE `atmortuary` DISABLE KEYS */;
/*!40000 ALTER TABLE `atmortuary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atscene`
--

DROP TABLE IF EXISTS `atscene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atscene` (
  `sceneIncidentOccured` varchar(45) NOT NULL,
  `sceneDateTime` datetime NOT NULL,
  `pathOnScene` bit(1) NOT NULL,
  `allegedInjuryDateTime` datetime NOT NULL,
  `allegedDeathDateTime` datetime NOT NULL,
  `externalCircumstanceOfInjury` varchar(45) NOT NULL,
  `placeOfDeath` varchar(45) NOT NULL,
  `dateTimeBodyFound` datetime NOT NULL,
  `Body_idDeathRegisterNumber` varchar(45) NOT NULL,
  `idAtScene` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idAtScene`),
  KEY `fk_AtScene_Body1_idx` (`Body_idDeathRegisterNumber`),
  CONSTRAINT `fk_AtScene_Body1` FOREIGN KEY (`Body_idDeathRegisterNumber`) REFERENCES `body` (`idDeathRegisterNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atscene`
--

LOCK TABLES `atscene` WRITE;
/*!40000 ALTER TABLE `atscene` DISABLE KEYS */;
/*!40000 ALTER TABLE `atscene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audittrail`
--

DROP TABLE IF EXISTS `audittrail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audittrail` (
  `idAuditTrail` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `eventType` varchar(45) NOT NULL,
  `eventMessage` varchar(80) NOT NULL,
  `currentUser` varchar(10) NOT NULL,
  `eventLocation` varchar(45) NOT NULL,
  PRIMARY KEY (`idAuditTrail`)
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audittrail`
--

LOCK TABLES `audittrail` WRITE;
/*!40000 ALTER TABLE `audittrail` DISABLE KEYS */;
INSERT INTO `audittrail` VALUES (1,'2013-05-14','10:20:39','Warning','Unsuccessfull log in','12312124','Log In Screen'),(2,'2013-05-14','10:28:17','Log In','Successfull log in','12345678','Log In Screen'),(3,'2013-05-14','10:29:32','Warning','Unsuccessfull log in','12345678','Log In Screen'),(4,'2013-05-14','10:29:42','Log In','Successfull log in','12345678','Log In Screen'),(5,'2013-05-14','10:31:50','Log In','Successfull log in','12345678','Log In Screen'),(6,'2013-05-14','10:40:10','Log In','Successfull log in','12345678','Log In Screen'),(7,'2013-05-14','10:40:44','Log Incident','Created new incident 00920130514','12345678','Log Incident Tab'),(8,'2013-05-14','10:47:38','Log In','Successfull log in','12345678','Log In Screen'),(9,'2013-05-14','10:48:16','Log Incident','Created new incident 01020130514','12345678','Log Incident Tab'),(10,'2013-05-14','10:48:22','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(11,'2013-05-14','10:53:19','Log In','Successfull log in','12345678','Log In Screen'),(12,'2013-05-14','10:53:39','Closed Incident','Closed incident 00420130514','12345678','Open Incidents Tab'),(13,'2013-05-14','11:07:29','Log In','Successfull log in','12345678','Log In Screen'),(14,'2013-05-14','11:08:41','Log In','Successfull log in','12345678','Log In Screen'),(15,'2013-05-14','11:11:03','Log In','Successfull log in','12345678','Log In Screen'),(16,'2013-05-14','11:13:06','Log In','Successfull log in','12345678','Log In Screen'),(17,'2013-05-14','11:13:24','Closed Incident','Closed incident 00720130514','12345678','Open Incidents Tab'),(18,'2013-05-14','11:14:30','Log In','Successfull log in','12345678','Log In Screen'),(19,'2013-05-14','11:15:45','Log In','Successfull log in','12345678','Log In Screen'),(20,'2013-05-14','11:17:20','Log In','Successfull log in','12345678','Log In Screen'),(21,'2013-05-14','11:18:34','Log In','Successfull log in','12345678','Log In Screen'),(22,'2013-05-14','11:19:29','Log In','Successfull log in','12345678','Log In Screen'),(23,'2013-05-14','11:21:11','Log In','Successfull log in','12345678','Log In Screen'),(24,'2013-05-14','11:23:11','Log In','Successfull log in','12345678','Log In Screen'),(25,'2013-05-14','11:24:29','Log In','Successfull log in','12345678','Log In Screen'),(26,'2013-05-14','11:30:17','Log In','Successfull log in','12345678','Log In Screen'),(27,'2013-05-14','11:33:08','Log In','Successfull log in','12345678','Log In Screen'),(28,'2013-05-14','11:34:40','Log In','Successfull log in','12345678','Log In Screen'),(29,'2013-05-14','11:35:33','Warning','Unsuccessfull log in','12345678','Log In Screen'),(30,'2013-05-14','11:35:40','Log In','Successfull log in','12345678','Log In Screen'),(31,'2013-05-14','11:36:48','Log In','Successfull log in','12345678','Log In Screen'),(32,'2013-05-14','11:38:45','Log In','Successfull log in','12345678','Log In Screen'),(33,'2013-05-14','11:39:57','Log In','Successfull log in','12345678','Log In Screen'),(34,'2013-05-14','11:51:10','Log In','Successfull log in','12345678','Log In Screen'),(35,'2013-05-14','11:59:18','Log In','Successfull log in','12345678','Log In Screen'),(36,'2013-05-14','12:03:24','Log In','Successfull log in','12345678','Log In Screen'),(37,'2013-05-14','12:06:36','Log In','Successfull log in','12345678','Log In Screen'),(38,'2013-05-14','12:08:42','Log In','Successfull log in','12345678','Log In Screen'),(39,'2013-05-14','12:23:24','Log In','Successfull log in','12345678','Log In Screen'),(40,'2013-05-14','12:24:24','Log In','Successfull log in','12345678','Log In Screen'),(41,'2013-05-14','12:31:02','Log In','Successfull log in','12345678','Log In Screen'),(42,'2013-05-14','12:31:45','Log In','Successfull log in','12345678','Log In Screen'),(43,'2013-05-14','12:32:39','Log In','Successfull log in','12345678','Log In Screen'),(44,'2013-05-14','13:04:43','Log In','Successfull log in','12345678','Log In Screen'),(45,'2013-05-16','07:57:03','Log In','Successfull log in','12345678','Log In Screen'),(46,'2013-05-16','07:59:38','Log In','Successfull log in','12345678','Log In Screen'),(47,'2013-05-16','09:22:59','Log In','Successfull log in','12345678','Log In Screen'),(48,'2013-05-16','09:24:49','Log In','Successfull log in','12345678','Log In Screen'),(49,'2013-05-16','09:47:27','Log In','Successfull log in','12345678','Log In Screen'),(50,'2013-05-16','10:03:53','Log In','Successfull log in','12345678','Log In Screen'),(51,'2013-05-16','10:07:24','Log Incident','Created new incident 00120130516','12345678','Log Incident Tab'),(52,'2013-05-16','10:07:33','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(53,'2013-05-16','10:10:12','Log In','Successfull log in','12345678','Log In Screen'),(54,'2013-05-16','10:16:20','Log In','Successfull log in','12345678','Log In Screen'),(55,'2013-05-16','10:31:54','Log In','Successfull log in','12345678','Log In Screen'),(56,'2013-05-16','10:32:18','Log In','Successfull log in','12345678','Log In Screen'),(57,'2013-05-16','10:51:53','Log In','Successfull log in','12345678','Log In Screen'),(58,'2013-05-16','11:10:52','Log In','Successfull log in','12345678','Log In Screen'),(59,'2013-05-16','11:16:22','Log In','Successfull log in','12345678','Log In Screen'),(60,'2013-05-16','11:17:12','Log Incident','Created new incident 00220130516','12345678','Log Incident Tab'),(61,'2013-05-16','11:17:17','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(62,'2013-05-16','11:30:11','Log In','Successfull log in','12345678','Log In Screen'),(63,'2013-05-16','11:31:33','Log In','Successfull log in','12345678','Log In Screen'),(64,'2013-05-16','11:32:31','Log In','Successfull log in','12345678','Log In Screen'),(65,'2013-05-16','11:33:30','Log In','Successfull log in','12345678','Log In Screen'),(66,'2013-05-16','11:35:26','Warning','Unsuccessfull log in','12345678','Log In Screen'),(67,'2013-05-16','11:35:37','Log In','Successfull log in','12345678','Log In Screen'),(68,'2013-05-16','11:36:37','Log In','Successfull log in','12345678','Log In Screen'),(69,'2013-05-16','11:39:28','Log In','Successfull log in','12345678','Log In Screen'),(70,'2013-05-16','11:41:02','Log In','Successfull log in','12345678','Log In Screen'),(71,'2013-05-16','11:47:45','Log In','Successfull log in','12345678','Log In Screen'),(72,'2013-05-16','11:49:00','Log In','Successfull log in','12345678','Log In Screen'),(73,'2013-05-16','11:49:54','Log In','Successfull log in','12345678','Log In Screen'),(74,'2013-05-16','11:50:55','Log In','Successfull log in','12345678','Log In Screen'),(75,'2013-05-16','11:51:44','Log In','Successfull log in','12345678','Log In Screen'),(76,'2013-05-16','11:54:06','Warning','Unsuccessfull log in','12345678','Log In Screen'),(77,'2013-05-16','11:54:13','Log In','Successfull log in','12345678','Log In Screen'),(78,'2013-05-16','11:54:57','Log In','Successfull log in','12345678','Log In Screen'),(79,'2013-05-16','12:08:50','Log In','Successfull log in','12345678','Log In Screen'),(80,'2013-05-16','12:17:37','Log In','Successfull log in','12345678','Log In Screen'),(81,'2013-05-16','12:18:41','Log In','Successfull log in','12345678','Log In Screen'),(82,'2013-05-16','12:19:50','Log In','Successfull log in','12345678','Log In Screen'),(83,'2013-05-16','12:26:53','Log In','Successfull log in','12345678','Log In Screen'),(84,'2013-05-16','12:27:55','Log In','Successfull log in','12345678','Log In Screen'),(85,'2013-05-16','12:29:22','Log In','Successfull log in','12345678','Log In Screen'),(86,'2013-05-16','12:31:47','Log In','Successfull log in','12345678','Log In Screen'),(87,'2013-05-16','12:32:41','Log In','Successfull log in','12345678','Log In Screen'),(88,'2013-05-16','12:32:53','Closed Incident','Closed incident 00620130514','12345678','Open Incidents Tab'),(89,'2013-05-16','12:37:41','Log In','Successfull log in','12345678','Log In Screen'),(90,'2013-05-16','13:03:59','Log In','Successfull log in','12345678','Log In Screen'),(91,'2013-05-16','13:06:43','Log In','Successfull log in','12345678','Log In Screen'),(92,'2013-05-16','13:19:11','Log In','Successfull log in','12345678','Log In Screen'),(93,'2013-05-16','13:23:16','Log In','Successfull log in','12345678','Log In Screen'),(94,'2013-05-16','13:26:19','Log In','Successfull log in','12345678','Log In Screen'),(95,'2013-05-16','13:27:36','Log In','Successfull log in','12345678','Log In Screen'),(96,'2013-05-16','13:29:44','Log Incident','Created new incident 00320130516','12345678','Log Incident Tab'),(97,'2013-05-16','13:31:41','Log Incident','Created new incident 00420130516','12345678','Log Incident Tab'),(98,'2013-05-16','13:31:47','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(99,'2013-05-16','13:37:23','Log Incident','Created new incident 00520130516','12345678','Log Incident Tab'),(100,'2013-05-16','13:37:28','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(101,'2013-05-16','13:38:22','Log In','Successfull log in','12345678','Log In Screen'),(102,'2013-05-16','13:40:23','Closed Incident','Closed incident 220130514','12345678','Open Incidents Tab'),(103,'2013-05-16','13:56:02','Log In','Successfull log in','12345678','Log In Screen'),(104,'2013-05-16','13:57:21','Log In','Successfull log in','12345678','Log In Screen'),(105,'2013-05-16','13:59:48','Log In','Successfull log in','12345678','Log In Screen'),(106,'2013-05-16','14:01:16','Log In','Successfull log in','12345678','Log In Screen'),(107,'2013-05-16','14:02:29','Log In','Successfull log in','12345678','Log In Screen'),(108,'2013-05-16','14:03:41','Log In','Successfull log in','12345678','Log In Screen'),(109,'2013-05-16','14:05:11','Log In','Successfull log in','12345678','Log In Screen'),(110,'2013-05-16','14:05:57','Log In','Successfull log in','12345678','Log In Screen'),(111,'2013-05-16','14:06:59','Log In','Successfull log in','12345678','Log In Screen'),(112,'2013-05-16','14:07:51','Log In','Successfull log in','12345678','Log In Screen'),(113,'2013-05-16','14:08:53','Log In','Successfull log in','12345678','Log In Screen'),(114,'2013-05-16','14:09:36','Log In','Successfull log in','12345678','Log In Screen'),(115,'2013-05-16','14:17:42','Log In','Successfull log in','12345678','Log In Screen'),(116,'2013-05-16','14:19:25','Log In','Successfull log in','12345678','Log In Screen'),(117,'2013-05-16','14:23:54','Log In','Successfull log in','12345678','Log In Screen'),(118,'2013-05-16','14:25:02','Log In','Successfull log in','12345678','Log In Screen'),(119,'2013-05-16','14:26:00','Log In','Successfull log in','12345678','Log In Screen'),(120,'2013-05-16','14:27:17','Log In','Successfull log in','12345678','Log In Screen'),(121,'2013-05-16','14:28:15','Log In','Successfull log in','12345678','Log In Screen'),(122,'2013-05-16','14:29:13','Log In','Successfull log in','12345678','Log In Screen'),(123,'2013-05-16','14:30:19','Log In','Successfull log in','12345678','Log In Screen'),(124,'2013-05-16','14:31:28','Log In','Successfull log in','12345678','Log In Screen'),(125,'2013-05-16','14:32:37','Log In','Successfull log in','12345678','Log In Screen'),(126,'2013-05-16','14:33:30','Log In','Successfull log in','12345678','Log In Screen'),(127,'2013-05-16','14:35:48','Log In','Successfull log in','12345678','Log In Screen'),(128,'2013-05-16','14:37:13','Log In','Successfull log in','12345678','Log In Screen'),(129,'2013-05-16','14:38:16','Log In','Successfull log in','12345678','Log In Screen'),(130,'2013-05-16','14:40:25','Log In','Successfull log in','12345678','Log In Screen'),(131,'2013-05-16','14:42:29','Log In','Successfull log in','12345678','Log In Screen'),(132,'2013-05-16','14:46:12','Log In','Successfull log in','12345678','Log In Screen'),(133,'2013-05-16','14:49:28','Log In','Successfull log in','12345678','Log In Screen'),(134,'2013-05-16','14:51:58','Log In','Successfull log in','12345678','Log In Screen'),(135,'2013-05-16','14:54:34','Log In','Successfull log in','12345678','Log In Screen'),(136,'2013-05-16','14:57:08','Log In','Successfull log in','12345678','Log In Screen'),(137,'2013-05-16','14:58:12','Log In','Successfull log in','12345678','Log In Screen'),(138,'2013-05-16','14:59:16','Log In','Successfull log in','12345678','Log In Screen'),(139,'2013-05-16','14:59:54','Log Incident','Created new incident 00620130516','12345678','Log Incident Tab'),(140,'2013-05-16','15:00:00','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(141,'2013-05-16','15:00:33','Closed Incident','Closed incident 00620130516','12345678','Open Incidents Tab'),(142,'2013-05-17','07:33:34','Log In','Successfull log in','12345678','Log In Screen'),(143,'2013-05-17','07:34:26','Log In','Successfull log in','12345678','Log In Screen'),(144,'2013-05-17','07:38:24','Log In','Successfull log in','12345678','Log In Screen'),(145,'2013-05-17','07:39:37','Log In','Successfull log in','12345678','Log In Screen'),(146,'2013-05-17','07:41:00','Warning','Unsuccessfull log in','12345678','Log In Screen'),(147,'2013-05-17','07:41:10','Log In','Successfull log in','12345678','Log In Screen'),(148,'2013-05-17','07:50:02','Log In','Successfull log in','12345678','Log In Screen'),(149,'2013-05-17','07:52:51','Log In','Successfull log in','12345678','Log In Screen'),(150,'2013-05-17','07:55:26','Log In','Successfull log in','12345678','Log In Screen'),(151,'2013-05-17','07:59:57','Log In','Successfull log in','12345678','Log In Screen'),(152,'2013-05-17','08:01:10','Log In','Successfull log in','12345678','Log In Screen'),(153,'2013-05-17','08:04:09','Log In','Successfull log in','12345678','Log In Screen'),(154,'2013-05-17','08:11:11','Log In','Successfull log in','12345678','Log In Screen'),(155,'2013-05-17','08:12:31','Log In','Successfull log in','12345678','Log In Screen'),(156,'2013-05-17','08:15:34','Log In','Successfull log in','12345678','Log In Screen'),(157,'2013-05-17','08:16:56','Log In','Successfull log in','12345678','Log In Screen'),(158,'2013-05-17','08:17:49','Log In','Successfull log in','12345678','Log In Screen'),(159,'2013-05-17','08:19:33','Log In','Successfull log in','12345678','Log In Screen'),(160,'2013-05-17','08:20:38','Log In','Successfull log in','12345678','Log In Screen'),(161,'2013-05-17','08:21:39','Log In','Successfull log in','12345678','Log In Screen'),(162,'2013-05-17','08:22:38','Log In','Successfull log in','12345678','Log In Screen'),(163,'2013-05-17','08:23:17','Log In','Successfull log in','12345678','Log In Screen'),(164,'2013-05-17','08:25:55','Log In','Successfull log in','12345678','Log In Screen'),(165,'2013-05-17','08:26:48','Log In','Successfull log in','12345678','Log In Screen'),(166,'2013-05-17','08:28:58','Log In','Successfull log in','12345678','Log In Screen'),(167,'2013-05-17','08:32:48','Log In','Successfull log in','12345678','Log In Screen'),(168,'2013-05-17','08:34:39','Log In','Successfull log in','12345678','Log In Screen'),(169,'2013-05-17','08:44:14','Log In','Successfull log in','12345678','Log In Screen'),(170,'2013-05-17','08:44:49','Log In','Successfull log in','12345678','Log In Screen'),(171,'2013-05-17','08:51:55','Log In','Successfull log in','12345678','Log In Screen'),(172,'2013-05-17','08:57:00','Log In','Successfull log in','12345678','Log In Screen'),(173,'2013-05-17','08:59:33','Log In','Successfull log in','12345678','Log In Screen'),(174,'2013-05-17','09:01:00','Warning','Unsuccessfull log in','12345678','Log In Screen'),(175,'2013-05-17','09:01:06','Log In','Successfull log in','12345678','Log In Screen'),(176,'2013-05-17','09:03:24','Log In','Successfull log in','12345678','Log In Screen'),(177,'2013-05-17','09:04:41','Log In','Successfull log in','12345678','Log In Screen'),(178,'2013-05-17','09:08:54','Log In','Successfull log in','12345678','Log In Screen'),(179,'2013-05-17','09:09:30','Log Incident','Created new incident 00120130517','12345678','Log Incident Tab'),(180,'2013-05-17','09:16:08','Log In','Successfull log in','12345678','Log In Screen'),(181,'2013-05-17','09:16:39','Log In','Successfull log in','12345678','Log In Screen'),(182,'2013-05-17','09:18:17','Log In','Successfull log in','12345678','Log In Screen'),(183,'2013-05-17','09:24:56','Log In','Successfull log in','12345678','Log In Screen'),(184,'2013-05-17','09:26:07','Log In','Successfull log in','12345678','Log In Screen'),(185,'2013-05-17','09:26:48','Log In','Successfull log in','12345678','Log In Screen'),(186,'2013-05-17','09:27:45','Log Incident','Created new incident 00120130517','12345678','Log Incident Tab'),(187,'2013-05-17','09:29:26','Warning','Unsuccessfull log in','12345678','Log In Screen'),(188,'2013-05-17','09:29:33','Log In','Successfull log in','12345678','Log In Screen'),(189,'2013-05-17','09:30:07','Log Incident','Created new incident 00220130517','12345678','Log Incident Tab'),(190,'2013-05-17','09:30:12','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(191,'2013-05-17','09:30:13','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(192,'2013-05-17','09:31:08','Closed Incident','Closed incident 00120130517','12345678','Open Incidents Tab'),(193,'2013-05-20','07:38:28','Log In','Successfull log in','12345678','Log In Screen'),(194,'2013-05-20','07:39:37','Log In','Successfull log in','12345678','Log In Screen'),(195,'2013-05-20','08:50:29','Log In','Successfull log in','12345678','Log In Screen'),(196,'2013-05-20','08:51:45','Log In','Successfull log in','12345678','Log In Screen'),(197,'2013-05-20','08:54:14','Log In','Successfull log in','12345678','Log In Screen'),(198,'2013-05-20','09:35:08','Log In','Successfull log in','12345678','Log In Screen'),(199,'2013-05-20','09:39:10','Log Incident','Created new incident 00120130520','12345678','Log Incident Tab'),(200,'2013-05-20','09:48:17','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(201,'2013-05-20','09:51:37','Log In','Successfull log in','12345678','Log In Screen'),(202,'2013-05-20','10:13:30','Log In','Successfull log in','12345678','Log In Screen'),(203,'2013-05-20','10:13:52','Log Incident','Created new incident 00220130520','12345678','Log Incident Tab'),(204,'2013-05-20','10:14:18','Log In','Successfull log in','12345678','Log In Screen'),(205,'2013-05-20','10:16:03','Log Incident','Created new incident 00220130520','12345678','Log Incident Tab'),(206,'2013-05-20','10:18:05','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(207,'2013-05-20','10:48:25','Log In','Successfull log in','12345678','Log In Screen'),(208,'2013-05-20','11:08:28','Log In','Successfull log in','12345678','Log In Screen'),(209,'2013-05-20','11:09:29','Log Incident','Created new incident 00320130520','12345678','Log Incident Tab'),(210,'2013-05-20','11:10:08','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(211,'2013-05-20','11:19:15','Log In','Successfull log in','12345678','Log In Screen'),(212,'2013-05-20','11:51:54','Log In','Successfull log in','12345678','Log In Screen'),(213,'2013-05-20','11:52:21','Log Incident','Created new incident 00420130520','12345678','Log Incident Tab'),(214,'2013-05-20','11:55:25','Log In','Successfull log in','12345678','Log In Screen'),(215,'2013-05-20','11:58:53','Log In','Successfull log in','12345678','Log In Screen'),(216,'2013-05-20','12:00:28','Log Incident','Created new incident 00120130520','12345678','Log Incident Tab'),(217,'2013-05-20','12:00:37','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(218,'2013-05-20','12:09:42','Log Incident','Created new incident 00220130520','12345678','Log Incident Tab'),(219,'2013-05-20','12:11:32','Log Incident','Created new incident 00220130520','12345678','Log Incident Tab'),(220,'2013-05-20','12:16:21','Log In','Successfull log in','12345678','Log In Screen'),(221,'2013-05-20','12:16:43','Log Incident','Created new incident 00120130520','12345678','Log Incident Tab'),(222,'2013-05-20','12:20:50','Log In','Successfull log in','12345678','Log In Screen'),(223,'2013-05-20','12:22:10','Log Incident','Created new incident 00120130520','12345678','Log Incident Tab'),(224,'2013-05-20','12:22:20','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(225,'2013-05-20','12:27:31','Log In','Successfull log in','12345678','Log In Screen'),(226,'2013-05-20','12:29:43','Log In','Successfull log in','12345678','Log In Screen'),(227,'2013-05-20','12:31:03','Log In','Successfull log in','12345678','Log In Screen'),(228,'2013-05-20','12:56:46','Log In','Successfull log in','12345678','Log In Screen'),(229,'2013-05-20','20:33:14','Log In','Successfull log in','12345678','Log In Screen'),(230,'2013-05-20','20:36:54','Log In','Successfull log in','12345678','Log In Screen'),(231,'2013-05-20','20:37:40','Log In','Successfull log in','12345678','Log In Screen'),(232,'2013-05-20','20:38:55','Log In','Successfull log in','12345678','Log In Screen'),(233,'2013-05-20','20:54:01','Log In','Successfull log in','12345678','Log In Screen'),(234,'2013-05-20','20:54:44','Log Incident','Created new incident 00220130520','12345678','Log Incident Tab'),(235,'2013-05-20','20:54:51','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(236,'2013-05-20','21:02:24','Log In','Successfull log in','12345678','Log In Screen'),(237,'2013-05-20','21:03:39','Log Incident','Created new incident 00420130520','12345678','Log Incident Tab'),(238,'2013-05-20','21:04:44','Log Incident','Created new incident 00520130520','12345678','Log Incident Tab'),(239,'2013-05-20','21:06:53','Log In','Successfull log in','12345678','Log In Screen'),(240,'2013-05-20','21:07:33','Log Incident','Created new incident 00620130520','12345678','Log Incident Tab'),(241,'2013-05-20','21:08:21','Log In','Successfull log in','12345678','Log In Screen'),(242,'2013-05-20','21:08:59','Log Incident','Created new incident 00720130520','12345678','Log Incident Tab'),(243,'2013-05-20','21:09:07','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(244,'2013-05-20','21:09:26','Log In','Successfull log in','12345678','Log In Screen'),(245,'2013-05-20','21:16:18','Log In','Successfull log in','12345678','Log In Screen'),(246,'2013-05-20','21:19:12','Log In','Successfull log in','12345678','Log In Screen'),(247,'2013-05-20','21:25:34','Log In','Successfull log in','12345678','Log In Screen'),(248,'2013-05-20','21:29:00','Log In','Successfull log in','12345678','Log In Screen'),(249,'2013-05-20','21:30:45','Log In','Successfull log in','12345678','Log In Screen'),(250,'2013-05-20','21:38:34','Log In','Successfull log in','12345678','Log In Screen'),(251,'2013-05-20','21:41:47','Log In','Successfull log in','12345678','Log In Screen'),(252,'2013-05-20','21:43:20','Log In','Successfull log in','12345678','Log In Screen'),(253,'2013-05-21','07:51:09','Log In','Successfull log in','12345678','Log In Screen'),(254,'2013-05-21','08:02:34','Log In','Successfull log in','12345678','Log In Screen'),(255,'2013-05-21','08:04:15','Log In','Successfull log in','12345678','Log In Screen'),(256,'2013-05-21','08:04:49','Log In','Successfull log in','12345678','Log In Screen'),(257,'2013-05-21','08:05:32','Log In','Successfull log in','12345678','Log In Screen'),(258,'2013-05-21','08:08:07','Log In','Successfull log in','12345678','Log In Screen'),(259,'2013-05-21','08:11:07','Log In','Successfull log in','12345678','Log In Screen'),(260,'2013-05-21','08:13:25','Log In','Successfull log in','12345678','Log In Screen'),(261,'2013-05-21','08:13:56','Log In','Successfull log in','12345678','Log In Screen'),(262,'2013-05-21','08:21:52','Log In','Successfull log in','12345678','Log In Screen'),(263,'2013-05-21','08:23:02','Closed Incident','Closed incident 00320130520','12345678','Open Incidents Tab'),(264,'2013-05-21','08:24:40','Log In','Successfull log in','12345678','Log In Screen'),(265,'2013-05-21','08:27:52','Log In','Successfull log in','12345678','Log In Screen'),(266,'2013-05-21','08:32:36','Log In','Successfull log in','12345678','Log In Screen'),(267,'2013-05-21','08:32:37','Log In','Successfull log in','12345678','Log In Screen'),(268,'2013-05-21','08:34:25','Log Incident','Created new incident 00120130521','12345678','Log Incident Tab'),(269,'2013-05-21','08:34:36','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(270,'2013-05-21','08:35:15','Closed Incident','Closed incident 00120130521','12345678','Open Incidents Tab'),(271,'2013-05-21','08:35:44','Log In','Successfull log in','11111111','Log In Screen'),(272,'2013-05-21','08:39:35','Log In','Successfull log in','11111111','Log In Screen'),(273,'2013-05-21','08:43:22','Log In','Successfull log in','22222222','Log In Screen'),(274,'2013-05-21','08:46:20','Log Incident','Created new incident 00120130521','22222222','Log Incident Tab'),(275,'2013-05-21','08:49:16','Log Incident','Created new incident 00120130521','22222222','Log Incident Tab'),(276,'2013-05-21','08:52:18','Log In','Successfull log in','12345678','Log In Screen'),(277,'2013-05-21','08:53:06','Log Incident','Created new incident 00120130521','12345678','Log Incident Tab'),(278,'2013-05-21','08:53:12','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab'),(279,'2013-05-21','08:55:20','Log In','Successfull log in','12345678','Log In Screen'),(280,'2013-05-21','08:56:17','Log Incident','Created new incident 00120130521','12345678','Log Incident Tab'),(281,'2013-05-21','08:59:06','Log In','Successfull log in','12345678','Log In Screen'),(282,'2013-05-21','08:59:17','Log Incident','Created new incident 00220130521','12345678','Log Incident Tab'),(283,'2013-05-21','08:59:42','Closed Incident','Closed incident 00220130521','12345678','Open Incidents Tab'),(284,'2013-05-21','09:03:40','Log In','Successfull log in','12345678','Log In Screen'),(285,'2013-05-21','09:04:00','Closed Incident','Closed incident 00620130520','12345678','Open Incidents Tab'),(286,'2013-05-21','09:04:37','Log Incident','Created new incident 00320130521','12345678','Log Incident Tab'),(287,'2013-05-21','09:04:43','Dispatch Vehicle','Dispatched vehicle PKG297GP','12345678','Log Incident Tab');
/*!40000 ALTER TABLE `audittrail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `body`
--

DROP TABLE IF EXISTS `body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `body` (
  `idDeathRegisterNumber` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `race` varchar(45) NOT NULL,
  `assignedTo` varchar(45) NOT NULL,
  `nameOfDeceased` varchar(45) NOT NULL,
  `surnameOfDeceased` varchar(45) NOT NULL,
  `placeOfBirth` varchar(45) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `ageOnDateFound` int(11) NOT NULL,
  `maritalStatus` varchar(45) NOT NULL,
  `occupation` varchar(45) NOT NULL,
  `citizen` varchar(45) NOT NULL,
  `maidenName` varchar(45) NOT NULL,
  `identifiedDateTime` datetime NOT NULL,
  `estimatedAgeYear` int(11) NOT NULL,
  `estimatedAgeMonth` int(11) NOT NULL,
  `ID` varchar(13) NOT NULL,
  `passport` varchar(45) NOT NULL,
  `bodyStatus` bit(1) NOT NULL,
  `dateBodyReceived` datetime NOT NULL,
  `bodyReleased` bit(1) NOT NULL,
  `Incident_incidentLogNumber` varchar(45) NOT NULL,
  `bodyType` varchar(45) NOT NULL,
  `dateBodyReleased` datetime NOT NULL,
  `bodyReleasedTo` varchar(45) NOT NULL,
  PRIMARY KEY (`idDeathRegisterNumber`),
  KEY `fk_Body_Incident1_idx` (`Incident_incidentLogNumber`),
  CONSTRAINT `fk_Body_Incident1` FOREIGN KEY (`Incident_incidentLogNumber`) REFERENCES `incident` (`incidentLogNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `body`
--

LOCK TABLES `body` WRITE;
/*!40000 ALTER TABLE `body` DISABLE KEYS */;
/*!40000 ALTER TABLE `body` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodyaddress`
--

DROP TABLE IF EXISTS `bodyaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodyaddress` (
  `building` varchar(45) NOT NULL,
  `street` varchar(45) NOT NULL,
  `suburb` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `postalCode` varchar(45) NOT NULL,
  `province` varchar(45) NOT NULL,
  `region` varchar(45) NOT NULL,
  `magisterialDistrict` varchar(45) NOT NULL,
  `Body_idDeathRegisterNumber` varchar(45) NOT NULL,
  `idBodyAddress` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idBodyAddress`),
  KEY `fk_BodyAddress_Body1_idx` (`Body_idDeathRegisterNumber`),
  CONSTRAINT `fk_BodyAddress_Body1` FOREIGN KEY (`Body_idDeathRegisterNumber`) REFERENCES `body` (`idDeathRegisterNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodyaddress`
--

LOCK TABLES `bodyaddress` WRITE;
/*!40000 ALTER TABLE `bodyaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodyaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodyfile`
--

DROP TABLE IF EXISTS `bodyfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodyfile` (
  `dateFileOpened` date NOT NULL,
  `bodyFileStatus` bit(1) NOT NULL,
  `Body_idDeathRegisterNumber` varchar(45) NOT NULL,
  `allSamplesReceived` bit(1) NOT NULL,
  `bodyIdentified` bit(1) NOT NULL,
  `postMortemComplete` bit(1) NOT NULL,
  `idBodyFile` int(11) NOT NULL AUTO_INCREMENT,
  `dateFileClosed` date NOT NULL,
  PRIMARY KEY (`idBodyFile`),
  KEY `fk_Case_Body1_idx` (`Body_idDeathRegisterNumber`),
  CONSTRAINT `fk_Case_Body1` FOREIGN KEY (`Body_idDeathRegisterNumber`) REFERENCES `body` (`idDeathRegisterNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodyfile`
--

LOCK TABLES `bodyfile` WRITE;
/*!40000 ALTER TABLE `bodyfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodyfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodylink`
--

DROP TABLE IF EXISTS `bodylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodylink` (
  `idBodyLink` int(11) NOT NULL AUTO_INCREMENT,
  `BodyFile_Body_idDeathRegisterNumber1` varchar(45) NOT NULL,
  PRIMARY KEY (`idBodyLink`),
  KEY `fk_BodyLink_BodyFile2_idx` (`BodyFile_Body_idDeathRegisterNumber1`),
  CONSTRAINT `fk_BodyLink_BodyFile2` FOREIGN KEY (`BodyFile_Body_idDeathRegisterNumber1`) REFERENCES `bodyfile` (`Body_idDeathRegisterNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodylink`
--

LOCK TABLES `bodylink` WRITE;
/*!40000 ALTER TABLE `bodylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodypart`
--

DROP TABLE IF EXISTS `bodypart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodypart` (
  `idBodyPart` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idBodyPart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodypart`
--

LOCK TABLES `bodypart` WRITE;
/*!40000 ALTER TABLE `bodypart` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodypart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodyreleaseplace`
--

DROP TABLE IF EXISTS `bodyreleaseplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodyreleaseplace` (
  `idBodyReleasePlace` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idBodyReleasePlace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodyreleaseplace`
--

LOCK TABLES `bodyreleaseplace` WRITE;
/*!40000 ALTER TABLE `bodyreleaseplace` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodyreleaseplace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodyreleasestatus`
--

DROP TABLE IF EXISTS `bodyreleasestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodyreleasestatus` (
  `idBodyReleaseStatus` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idBodyReleaseStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodyreleasestatus`
--

LOCK TABLES `bodyreleasestatus` WRITE;
/*!40000 ALTER TABLE `bodyreleasestatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodyreleasestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodystatus`
--

DROP TABLE IF EXISTS `bodystatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodystatus` (
  `idBodyStatus` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(45) NOT NULL,
  PRIMARY KEY (`idBodyStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodystatus`
--

LOCK TABLES `bodystatus` WRITE;
/*!40000 ALTER TABLE `bodystatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodystatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodystorage`
--

DROP TABLE IF EXISTS `bodystorage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodystorage` (
  `idBodyStorage` int(11) NOT NULL AUTO_INCREMENT,
  `numberOfBins` int(11) NOT NULL,
  `nameOfMortuary` varchar(45) NOT NULL,
  PRIMARY KEY (`idBodyStorage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodystorage`
--

LOCK TABLES `bodystorage` WRITE;
/*!40000 ALTER TABLE `bodystorage` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodystorage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deathcall`
--

DROP TABLE IF EXISTS `deathcall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deathcall` (
  `Incident_incidentLogNumber` varchar(11) NOT NULL,
  `timeOfCall` time NOT NULL,
  `dateOfCall` date NOT NULL,
  `numberOfCaller` varchar(10) NOT NULL,
  `institution` varchar(45) NOT NULL,
  `sceneAddress` varchar(100) NOT NULL,
  `province` varchar(45) NOT NULL,
  `region` varchar(45) NOT NULL,
  `sceneConditions` varchar(45) NOT NULL,
  `nameOfCaller` varchar(45) NOT NULL,
  PRIMARY KEY (`Incident_incidentLogNumber`),
  KEY `fk_DeathCall_Incident1_idx` (`Incident_incidentLogNumber`),
  CONSTRAINT `fk_DeathCall_Incident1` FOREIGN KEY (`Incident_incidentLogNumber`) REFERENCES `incident` (`incidentLogNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deathcall`
--

LOCK TABLES `deathcall` WRITE;
/*!40000 ALTER TABLE `deathcall` DISABLE KEYS */;
INSERT INTO `deathcall` VALUES ('00120130520','12:12:00','2013-05-20','0768511335','Wits',' University Corner','Guateng','Region 1',' asas','Asheen'),('00120130521','02:04:00','2013-05-21','0717581272','sssdjdj',' sjkdjdjd','Guateng','Region 2',' sjjshdhdhj','dfdujf'),('00220130520','04:03:00','2013-05-20','1234567890','sac',' asc','Guateng','Region 1',' sac','asc'),('00220130521','04:04:00','2013-05-21','0717581272','ascac',' ascac','Guateng','Region 1',' ascas','sasd'),('00320130520','03:05:00','2013-05-20','1234567890','asc',' asc','Guateng','Region 1',' asc','sac'),('00320130521','02:02:00','2013-05-21','0717581272','zxv',' zxv','Guateng','Region 1',' zxv','xvczx'),('00420130520','09:05:00','2013-05-20','1234567890','asd',' asd','Guateng','Region 1',' gc','asd'),('00520130520','03:03:00','2013-05-20','1234567890','as',' as','Guateng','Region 1',' asc','Asheen'),('00620130520','05:05:00','2013-05-20','1234567890','asc',' asc','Guateng','Region 1',' asc','sac'),('00720130520','01:04:00','2013-05-20','1234567890','asc',' asc','Guateng','Region 1',' sac','sac');
/*!40000 ALTER TABLE `deathcall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dutyroster`
--

DROP TABLE IF EXISTS `dutyroster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dutyroster` (
  `idDutyRoster` int(11) NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `role` varchar(45) NOT NULL,
  `Employee_password` varchar(128) NOT NULL,
  `Employee_personnelNumber` varchar(10) NOT NULL,
  PRIMARY KEY (`idDutyRoster`),
  KEY `fk_DutyRoster_Employee_idx` (`Employee_password`,`Employee_personnelNumber`),
  CONSTRAINT `fk_DutyRoster_Employee` FOREIGN KEY (`Employee_password`, `Employee_personnelNumber`) REFERENCES `employee` (`password`, `personnelNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dutyroster`
--

LOCK TABLES `dutyroster` WRITE;
/*!40000 ALTER TABLE `dutyroster` DISABLE KEYS */;
/*!40000 ALTER TABLE `dutyroster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `password` varchar(128) NOT NULL,
  `personnelNumber` varchar(8) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `rank` varchar(45) NOT NULL,
  `email` varchar(80) NOT NULL,
  `access` int(11) NOT NULL,
  `active` bit(1) NOT NULL,
  PRIMARY KEY (`password`,`personnelNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('4abf0fc14ec06633fa0ed3048601b98c5bf3a09b75d6bee3618cb2eed6385c264a070a3ccac35016600e905845ad3589046f9600255e5a24dec7e1ff2db3c322','22222222','Nkululeko','Mindu','Gauteng MMS','nkululeko.mindu@gmail.com',3,''),('b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86','11111111','User','UserSurname','Admin','user1@user.com',4,''),('ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413','12345678','User2','UserSurname2','Pathologist','user2@user.com',3,'');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `externalcircumstance`
--

DROP TABLE IF EXISTS `externalcircumstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `externalcircumstance` (
  `idExternalCircumstance` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`idExternalCircumstance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externalcircumstance`
--

LOCK TABLES `externalcircumstance` WRITE;
/*!40000 ALTER TABLE `externalcircumstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `externalcircumstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forensicsample`
--

DROP TABLE IF EXISTS `forensicsample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forensicsample` (
  `sealNumber` varchar(45) NOT NULL,
  `deathRegisterNumber` varchar(45) NOT NULL,
  `reason` longtext NOT NULL,
  `sealType` varchar(45) NOT NULL,
  `brokenSealNumber` varchar(45) NOT NULL,
  `typeOfAnalysis` varchar(45) NOT NULL,
  `institution` varchar(45) NOT NULL,
  `specialInstructions` varchar(45) NOT NULL,
  `received` bit(1) NOT NULL,
  `labNumber` varchar(45) NOT NULL,
  `dateSent` date NOT NULL,
  `dateReceived` date NOT NULL,
  PRIMARY KEY (`sealNumber`),
  KEY `fk_ForensicSample_LabRecord1_idx` (`labNumber`),
  CONSTRAINT `fk_ForensicSample_LabRecord1` FOREIGN KEY (`labNumber`) REFERENCES `labrecord` (`labNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forensicsample`
--

LOCK TABLES `forensicsample` WRITE;
/*!40000 ALTER TABLE `forensicsample` DISABLE KEYS */;
/*!40000 ALTER TABLE `forensicsample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender` (
  `idGender` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idGender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icd10`
--

DROP TABLE IF EXISTS `icd10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icd10` (
  `idICD10` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) NOT NULL,
  PRIMARY KEY (`idICD10`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icd10`
--

LOCK TABLES `icd10` WRITE;
/*!40000 ALTER TABLE `icd10` DISABLE KEYS */;
/*!40000 ALTER TABLE `icd10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident`
--

DROP TABLE IF EXISTS `incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incident` (
  `incidentLogNumber` varchar(11) NOT NULL,
  `referenceNumber` varchar(9) NOT NULL,
  `numberOfBodies` int(11) NOT NULL,
  `dateOfIncident` date NOT NULL,
  `timeOfIncident` time NOT NULL,
  `circumstanceOfDeath` varchar(45) NOT NULL,
  `specialCircumstances` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL,
  `reason` longtext NOT NULL,
  `bodyCount` int(11) NOT NULL,
  `placeBodyFound` varchar(45) NOT NULL,
  `dateIncidentClosed` date DEFAULT NULL,
  PRIMARY KEY (`incidentLogNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident`
--

LOCK TABLES `incident` WRITE;
/*!40000 ALTER TABLE `incident` DISABLE KEYS */;
INSERT INTO `incident` VALUES ('00120130520','asc',15,'2013-11-15','15:11:00',' asc\r\n','None','','',0,' asc\r\n',NULL),('00120130521','didfj',6,'2013-04-04','04:06:00',' dydeuru','Aviation Accident','\0','gfcfg ',0,' siuduud','2013-05-21'),('00220130520','123',5,'2012-03-02','03:04:00',' asc\r\n','Aviation Accident','','',0,' as\r\n',NULL),('00220130521','asc',15,'2012-03-03','13:12:00','ascasc','Aviation Accident','\0','asc ',0,' SXs','2013-05-21'),('00320130520','asc',5,'2012-05-03','04:04:00',' asc\r\n','None','\0','asdd ',0,' asc\r\n','2013-05-21'),('00320130521','ZC',12,'2012-05-16','16:14:00',' cs','Aviation Accident','','',0,' asC',NULL),('00420130520','assc',6,'2013-01-19','03:01:00',' asc','Aviation Accident','','',0,' asc',NULL),('00520130520','asc',4,'2012-05-06','04:03:00',' sac','Aviation Accident','','',0,' sac',NULL),('00620130520','asc',5,'2012-09-11','03:03:00',' sac','Aviation Accident','\0','ghgf ',0,'asc','2013-05-21'),('00720130520','asc',4,'2012-04-03','03:03:00',' asc','Aviation Accident','','',0,' sc',NULL);
/*!40000 ALTER TABLE `incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidentmessage`
--

DROP TABLE IF EXISTS `incidentmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incidentmessage` (
  `date` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `mannerOfDeath` varchar(45) NOT NULL,
  `nameOfDeceased` varchar(45) NOT NULL,
  `vip` bit(1) NOT NULL,
  `bodyFileStatus` bit(1) NOT NULL,
  `Incident_incidentLogNumber` varchar(45) NOT NULL,
  `idIncidentMessage` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idIncidentMessage`),
  KEY `fk_IncidentMessage_Incident1_idx` (`Incident_incidentLogNumber`),
  CONSTRAINT `fk_IncidentMessage_Incident1` FOREIGN KEY (`Incident_incidentLogNumber`) REFERENCES `incident` (`incidentLogNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidentmessage`
--

LOCK TABLES `incidentmessage` WRITE;
/*!40000 ALTER TABLE `incidentmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `incidentmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution` (
  `idInstitution` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idInstitution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution`
--

LOCK TABLES `institution` WRITE;
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kin`
--

DROP TABLE IF EXISTS `kin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kin` (
  `passport` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `relationWithDeceased` varchar(45) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `workAddress` varchar(100) NOT NULL,
  `ID` varchar(13) NOT NULL,
  `Body_idDeathRegisterNumber` varchar(45) NOT NULL,
  `idKin` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idKin`),
  KEY `fk_Kin_Body1_idx` (`Body_idDeathRegisterNumber`),
  CONSTRAINT `fk_Kin_Body1` FOREIGN KEY (`Body_idDeathRegisterNumber`) REFERENCES `body` (`idDeathRegisterNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kin`
--

LOCK TABLES `kin` WRITE;
/*!40000 ALTER TABLE `kin` DISABLE KEYS */;
/*!40000 ALTER TABLE `kin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labrecord`
--

DROP TABLE IF EXISTS `labrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labrecord` (
  `receivedAllSamples` bit(1) NOT NULL,
  `labNumber` varchar(45) NOT NULL,
  `idLabRecord` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idLabRecord`),
  KEY `fk_LabRecord_PostMortem1_idx` (`labNumber`),
  CONSTRAINT `fk_LabRecord_PostMortem1` FOREIGN KEY (`labNumber`) REFERENCES `postmortem` (`labNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labrecord`
--

LOCK TABLES `labrecord` WRITE;
/*!40000 ALTER TABLE `labrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `labrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mannerofdeath`
--

DROP TABLE IF EXISTS `mannerofdeath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mannerofdeath` (
  `idMannerOfDeath` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(90) NOT NULL,
  PRIMARY KEY (`idMannerOfDeath`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mannerofdeath`
--

LOCK TABLES `mannerofdeath` WRITE;
/*!40000 ALTER TABLE `mannerofdeath` DISABLE KEYS */;
/*!40000 ALTER TABLE `mannerofdeath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maritalstatus`
--

DROP TABLE IF EXISTS `maritalstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maritalstatus` (
  `idMartalStatus` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idMartalStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maritalstatus`
--

LOCK TABLES `maritalstatus` WRITE;
/*!40000 ALTER TABLE `maritalstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `maritalstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `rank` varchar(45) NOT NULL,
  `personnelNumber` varchar(10) NOT NULL,
  `organization` varchar(45) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `AtScene_Body_idDeathRegisterNumber` varchar(45) NOT NULL,
  `idMember` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idMember`),
  KEY `fk_Member_AtScene1` (`AtScene_Body_idDeathRegisterNumber`),
  CONSTRAINT `fk_Member_AtScene1` FOREIGN KEY (`AtScene_Body_idDeathRegisterNumber`) REFERENCES `atscene` (`Body_idDeathRegisterNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occupation`
--

DROP TABLE IF EXISTS `occupation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `occupation` (
  `idOccupation` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idOccupation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupation`
--

LOCK TABLES `occupation` WRITE;
/*!40000 ALTER TABLE `occupation` DISABLE KEYS */;
/*!40000 ALTER TABLE `occupation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `idOrganization` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contactNumber` varchar(45) NOT NULL,
  `OrganizationType_type` varchar(45) NOT NULL,
  PRIMARY KEY (`idOrganization`),
  KEY `fk_Organization_OrganizationType1_idx` (`OrganizationType_type`),
  CONSTRAINT `fk_Organization_OrganizationType1` FOREIGN KEY (`OrganizationType_type`) REFERENCES `organizationtype` (`type`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizationtype`
--

DROP TABLE IF EXISTS `organizationtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizationtype` (
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizationtype`
--

LOCK TABLES `organizationtype` WRITE;
/*!40000 ALTER TABLE `organizationtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `organizationtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postmortem`
--

DROP TABLE IF EXISTS `postmortem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postmortem` (
  `labNumber` varchar(45) NOT NULL,
  `icd10` varchar(3) NOT NULL,
  `chiefFind` longtext NOT NULL,
  `causeOfDeath` longtext NOT NULL,
  `status` bit(1) NOT NULL,
  `approved` bit(1) NOT NULL,
  `DHA1663number` varchar(45) NOT NULL,
  `Body_idDeathRegisterNumber` varchar(45) NOT NULL,
  PRIMARY KEY (`labNumber`),
  KEY `fk_PostMortem_Body1_idx` (`Body_idDeathRegisterNumber`),
  CONSTRAINT `fk_PostMortem_Body1` FOREIGN KEY (`Body_idDeathRegisterNumber`) REFERENCES `body` (`idDeathRegisterNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postmortem`
--

LOCK TABLES `postmortem` WRITE;
/*!40000 ALTER TABLE `postmortem` DISABLE KEYS */;
/*!40000 ALTER TABLE `postmortem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
  `sealNumber` varchar(45) NOT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL,
  `type` varchar(45) NOT NULL,
  `sealType` varchar(45) NOT NULL,
  `takenBy` varchar(10) NOT NULL,
  `witness1_name` varchar(45) NOT NULL,
  `witness1_surname` varchar(45) NOT NULL,
  `witness2_name` varchar(45) NOT NULL,
  `witness2_surname` varchar(45) NOT NULL,
  `SAPS_name` varchar(45) NOT NULL,
  `SAPS_surname` varchar(45) NOT NULL,
  `SAPS_taken` bit(1) NOT NULL,
  `Body_idDeathRegisterNumber` varchar(45) NOT NULL,
  `released` bit(1) DEFAULT NULL,
  PRIMARY KEY (`sealNumber`),
  KEY `fk_Property_Body1_idx` (`Body_idDeathRegisterNumber`),
  CONSTRAINT `fk_Property_Body1` FOREIGN KEY (`Body_idDeathRegisterNumber`) REFERENCES `body` (`idDeathRegisterNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertytype`
--

DROP TABLE IF EXISTS `propertytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertytype` (
  `idPropertyType` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idPropertyType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertytype`
--

LOCK TABLES `propertytype` WRITE;
/*!40000 ALTER TABLE `propertytype` DISABLE KEYS */;
/*!40000 ALTER TABLE `propertytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `idProvince` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idProvince`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'Guateng'),(2,'Free State');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `race`
--

DROP TABLE IF EXISTS `race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `race` (
  `idRace` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idRace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race`
--

LOCK TABLES `race` WRITE;
/*!40000 ALTER TABLE `race` DISABLE KEYS */;
/*!40000 ALTER TABLE `race` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank` (
  `idRank` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idRank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank`
--

LOCK TABLES `rank` WRITE;
/*!40000 ALTER TABLE `rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `idRegion` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idRegion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Region 1'),(2,'Region 2');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationship`
--

DROP TABLE IF EXISTS `relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationship` (
  `idRelationship` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idRelationship`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationship`
--

LOCK TABLES `relationship` WRITE;
/*!40000 ALTER TABLE `relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample` (
  `idSample` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idSample`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample`
--

LOCK TABLES `sample` WRITE;
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scenetype`
--

DROP TABLE IF EXISTS `scenetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scenetype` (
  `idSceneType` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`idSceneType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scenetype`
--

LOCK TABLES `scenetype` WRITE;
/*!40000 ALTER TABLE `scenetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `scenetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seal`
--

DROP TABLE IF EXISTS `seal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seal` (
  `idSeal` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idSeal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seal`
--

LOCK TABLES `seal` WRITE;
/*!40000 ALTER TABLE `seal` DISABLE KEYS */;
/*!40000 ALTER TABLE `seal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialcircumstance`
--

DROP TABLE IF EXISTS `specialcircumstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialcircumstance` (
  `idSpecialCircumstance` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idSpecialCircumstance`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialcircumstance`
--

LOCK TABLES `specialcircumstance` WRITE;
/*!40000 ALTER TABLE `specialcircumstance` DISABLE KEYS */;
INSERT INTO `specialcircumstance` VALUES (1,'Aviation Accident'),(2,'None');
/*!40000 ALTER TABLE `specialcircumstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `registrationNumber` varchar(11) NOT NULL,
  PRIMARY KEY (`registrationNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('PKG297GP');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicledispatch`
--

DROP TABLE IF EXISTS `vehicledispatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicledispatch` (
  `Incident_incidentLogNumber` varchar(45) NOT NULL,
  `notificationDateTime` datetime NOT NULL,
  `Vehicle_registrationNumber` varchar(11) NOT NULL,
  `idVehicleDispatch` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idVehicleDispatch`),
  KEY `fk_VehicleDispatch_Incident1_idx` (`Incident_incidentLogNumber`),
  KEY `fk_VehicleDispatch_Vehicle1_idx` (`Vehicle_registrationNumber`),
  CONSTRAINT `fk_VehicleDispatch_Incident1` FOREIGN KEY (`Incident_incidentLogNumber`) REFERENCES `incident` (`incidentLogNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_VehicleDispatch_Vehicle1` FOREIGN KEY (`Vehicle_registrationNumber`) REFERENCES `vehicle` (`registrationNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicledispatch`
--

LOCK TABLES `vehicledispatch` WRITE;
/*!40000 ALTER TABLE `vehicledispatch` DISABLE KEYS */;
INSERT INTO `vehicledispatch` VALUES ('00120130520','2013-05-20 12:22:20','PKG297GP',16),('00220130520','2013-05-20 20:54:51','PKG297GP',17),('00720130520','2013-05-20 21:09:07','PKG297GP',18),('00120130521','2013-05-21 08:34:36','PKG297GP',19),('00120130521','2013-05-21 08:53:12','PKG297GP',20),('00320130521','2013-05-21 09:04:43','PKG297GP',21);
/*!40000 ALTER TABLE `vehicledispatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiclerecord`
--

DROP TABLE IF EXISTS `vehiclerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehiclerecord` (
  `idVehicle` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idVehicle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiclerecord`
--

LOCK TABLES `vehiclerecord` WRITE;
/*!40000 ALTER TABLE `vehiclerecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehiclerecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-21  9:15:37
