CREATE DATABASE  IF NOT EXISTS `reporting database` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `reporting database`;
-- MySQL dump 10.13  Distrib 5.6.11, for Win64 (x86_64)
--
-- Host: localhost    Database: reporting database
-- ------------------------------------------------------
-- Server version	5.6.11

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
-- Table structure for table `dim_age`
--

DROP TABLE IF EXISTS `dim_age`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_age` (
  `age_SK` int(11) NOT NULL AUTO_INCREMENT,
  `actualAge` int(11) NOT NULL,
  `ageBand` varchar(10) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`age_SK`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_age`
--

LOCK TABLES `dim_age` WRITE;
/*!40000 ALTER TABLE `dim_age` DISABLE KEYS */;
INSERT INTO `dim_age` VALUES (-1,-1,'unknown','2013-05-16 16:46:08'),(1,0,'0-10','2013-05-16 16:46:08'),(2,1,'0-10','2013-05-16 16:46:08'),(3,2,'0-10','2013-05-16 16:46:08'),(4,3,'0-10','2013-05-16 16:46:08'),(5,4,'0-10','2013-05-16 16:46:08'),(6,5,'0-10','2013-05-16 16:46:08'),(7,6,'0-10','2013-05-16 16:46:08'),(8,7,'0-10','2013-05-16 16:46:08'),(9,8,'0-10','2013-05-16 16:46:08'),(10,9,'0-10','2013-05-16 16:46:08'),(11,10,'0-10','2013-05-16 16:46:08'),(12,11,'11-20','2013-05-16 16:46:08'),(13,12,'11-20','2013-05-16 16:46:08'),(14,13,'11-20','2013-05-16 16:46:08'),(15,14,'11-20','2013-05-16 16:46:08'),(16,15,'11-20','2013-05-16 16:46:08'),(17,16,'11-20','2013-05-16 16:46:08'),(18,17,'11-20','2013-05-16 16:46:08'),(19,18,'11-20','2013-05-16 16:46:08'),(20,19,'11-20','2013-05-16 16:46:08'),(21,20,'11-20','2013-05-16 16:46:08'),(22,21,'21-30','2013-05-16 16:46:08'),(23,22,'21-30','2013-05-16 16:46:08'),(24,23,'21-30','2013-05-16 16:46:08'),(25,24,'21-30','2013-05-16 16:46:08'),(26,25,'21-30','2013-05-16 16:46:08'),(27,26,'21-30','2013-05-16 16:46:08'),(28,27,'21-30','2013-05-16 16:46:08'),(29,28,'21-30','2013-05-16 16:46:08'),(30,29,'21-30','2013-05-16 16:46:08'),(31,30,'21-30','2013-05-16 16:46:08'),(32,31,'31-40','2013-05-16 16:46:08'),(33,32,'31-40','2013-05-16 16:46:08'),(34,33,'31-40','2013-05-16 16:46:08'),(35,34,'31-40','2013-05-16 16:46:08'),(36,35,'31-40','2013-05-16 16:46:08'),(37,36,'31-40','2013-05-16 16:46:08'),(38,37,'31-40','2013-05-16 16:46:08'),(39,38,'31-40','2013-05-16 16:46:08'),(40,39,'31-40','2013-05-16 16:46:08'),(41,40,'31-40','2013-05-16 16:46:08'),(42,41,'41-50','2013-05-16 16:46:08'),(43,42,'41-50','2013-05-16 16:46:08'),(44,43,'41-50','2013-05-16 16:46:08'),(45,44,'41-50','2013-05-16 16:46:08'),(46,45,'41-50','2013-05-16 16:46:08'),(47,46,'41-50','2013-05-16 16:46:08'),(48,47,'41-50','2013-05-16 16:46:08'),(49,48,'41-50','2013-05-16 16:46:08'),(50,49,'41-50','2013-05-16 16:46:08'),(51,50,'41-50','2013-05-16 16:46:08'),(52,51,'51-60','2013-05-16 16:46:08'),(53,52,'51-60','2013-05-16 16:46:08'),(54,53,'51-60','2013-05-16 16:46:08'),(55,54,'51-60','2013-05-16 16:46:08'),(56,55,'51-60','2013-05-16 16:46:09'),(57,56,'51-60','2013-05-16 16:46:09'),(58,57,'51-60','2013-05-16 16:46:09'),(59,58,'51-60','2013-05-16 16:46:09'),(60,59,'51-60','2013-05-16 16:46:09'),(61,60,'51-60','2013-05-16 16:46:09'),(62,61,'61-70','2013-05-16 16:46:09'),(63,62,'61-70','2013-05-16 16:46:09'),(64,63,'61-70','2013-05-16 16:46:09'),(65,64,'61-70','2013-05-16 16:46:09'),(66,65,'61-70','2013-05-16 16:46:09'),(67,66,'61-70','2013-05-16 16:46:09'),(68,67,'61-70','2013-05-16 16:46:09'),(69,68,'61-70','2013-05-16 16:46:09'),(70,69,'61-70','2013-05-16 16:46:09'),(71,70,'61-70','2013-05-16 16:46:09'),(72,71,'71-80','2013-05-16 16:46:09'),(73,72,'71-80','2013-05-16 16:46:09'),(74,73,'71-80','2013-05-16 16:46:09'),(75,74,'71-80','2013-05-16 16:46:09'),(76,75,'71-80','2013-05-16 16:46:09'),(77,76,'71-80','2013-05-16 16:46:09'),(78,77,'71-80','2013-05-16 16:46:09'),(79,78,'71-80','2013-05-16 16:46:09'),(80,79,'71-80','2013-05-16 16:46:09'),(81,80,'71-80','2013-05-16 16:46:09'),(82,81,'81-90','2013-05-16 16:46:09'),(83,82,'81-90','2013-05-16 16:46:09'),(84,83,'81-90','2013-05-16 16:46:09'),(85,84,'81-90','2013-05-16 16:46:09'),(86,85,'81-90','2013-05-16 16:46:09'),(87,86,'81-90','2013-05-16 16:46:09'),(88,87,'81-90','2013-05-16 16:46:09'),(89,88,'81-90','2013-05-16 16:46:09'),(90,89,'81-90','2013-05-16 16:46:09'),(91,90,'81-90','2013-05-16 16:46:09'),(92,91,'91-100','2013-05-16 16:46:09'),(93,92,'91-100','2013-05-16 16:46:09'),(94,93,'91-100','2013-05-16 16:46:09'),(95,94,'91-100','2013-05-16 16:46:09'),(96,95,'91-100','2013-05-16 16:46:09'),(97,96,'91-100','2013-05-16 16:46:09'),(98,97,'91-100','2013-05-16 16:46:09'),(99,98,'91-100','2013-05-16 16:46:09'),(100,99,'91-100','2013-05-16 16:46:09'),(101,100,'91-100','2013-05-16 16:46:09'),(102,101,'100+','2013-05-16 16:46:09'),(103,102,'100+','2013-05-16 16:46:09'),(104,103,'100+','2013-05-16 16:46:09'),(105,104,'100+','2013-05-16 16:46:09'),(106,105,'100+','2013-05-16 16:46:09'),(107,106,'100+','2013-05-16 16:46:09'),(108,107,'100+','2013-05-16 16:46:09'),(109,108,'100+','2013-05-16 16:46:09'),(110,109,'100+','2013-05-16 16:46:09'),(111,110,'100+','2013-05-16 16:46:09'),(112,111,'100+','2013-05-16 16:46:09'),(113,112,'100+','2013-05-16 16:46:09'),(114,113,'100+','2013-05-16 16:46:09'),(115,114,'100+','2013-05-16 16:46:09'),(116,115,'100+','2013-05-16 16:46:09'),(117,116,'100+','2013-05-16 16:46:09'),(118,117,'100+','2013-05-16 16:46:09'),(119,118,'100+','2013-05-16 16:46:09'),(120,119,'100+','2013-05-16 16:46:09'),(121,120,'100+','2013-05-16 16:46:09');
/*!40000 ALTER TABLE `dim_age` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_body`
--

DROP TABLE IF EXISTS `dim_body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_body` (
  `body_SK` int(11) NOT NULL AUTO_INCREMENT,
  `deathRegisterNumber_BK` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `identificationNumber` varchar(13) NOT NULL,
  `releasedTo` varchar(45) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`body_SK`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_body`
--

LOCK TABLES `dim_body` WRITE;
/*!40000 ALTER TABLE `dim_body` DISABLE KEYS */;
INSERT INTO `dim_body` VALUES (-1,'-1','unknown','-1','unknown','2013-05-16 16:46:09'),(1,'099888592','00','gg','2013-06-03','2013-05-16 16:46:09');
/*!40000 ALTER TABLE `dim_body` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_bodystatus`
--

DROP TABLE IF EXISTS `dim_bodystatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_bodystatus` (
  `bodyStatus_SK` int(11) NOT NULL AUTO_INCREMENT,
  `bodyStatus_BK` tinyint(1) NOT NULL,
  `bodyStatusDescription` varchar(45) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`bodyStatus_SK`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_bodystatus`
--

LOCK TABLES `dim_bodystatus` WRITE;
/*!40000 ALTER TABLE `dim_bodystatus` DISABLE KEYS */;
INSERT INTO `dim_bodystatus` VALUES (-1,-1,'unknown','2013-05-16 16:46:09'),(1,0,'unidentified','2013-05-16 16:46:09'),(2,1,'identified','2013-05-16 16:46:09');
/*!40000 ALTER TABLE `dim_bodystatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_caller`
--

DROP TABLE IF EXISTS `dim_caller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_caller` (
  `caller_SK` int(11) NOT NULL AUTO_INCREMENT,
  `callerName` varchar(45) NOT NULL,
  `callerContact` varchar(45) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`caller_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_caller`
--

LOCK TABLES `dim_caller` WRITE;
/*!40000 ALTER TABLE `dim_caller` DISABLE KEYS */;
INSERT INTO `dim_caller` VALUES (-1,'unknown','unknown','2013-05-16 16:46:09');
/*!40000 ALTER TABLE `dim_caller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_date`
--

DROP TABLE IF EXISTS `dim_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_date` (
  `date_SK` int(11) NOT NULL,
  `dateStamp` date NOT NULL,
  `CalenderYearKey` int(11) NOT NULL,
  `CalenderMonthKey` int(11) NOT NULL,
  `CalenderDayKey` int(11) NOT NULL,
  `CalenderMonthDescription` varchar(45) NOT NULL,
  `CalenderDayDescription` varchar(45) NOT NULL,
  PRIMARY KEY (`date_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_date`
--

LOCK TABLES `dim_date` WRITE;
/*!40000 ALTER TABLE `dim_date` DISABLE KEYS */;
INSERT INTO `dim_date` VALUES (19000101,'1900-01-01',-1,-1,-1,'unknown','unknown'),(20130101,'2013-01-01',2013,1,1,'January','Tuesday'),(20130102,'2013-01-02',2013,1,2,'January','Wednesday'),(20130103,'2013-01-03',2013,1,3,'January','Thursday'),(20130104,'2013-01-04',2013,1,4,'January','Friday'),(20130105,'2013-01-05',2013,1,5,'January','Saturday'),(20130106,'2013-01-06',2013,1,6,'January','Sunday'),(20130107,'2013-01-07',2013,1,7,'January','Monday'),(20130108,'2013-01-08',2013,1,8,'January','Tuesday'),(20130109,'2013-01-09',2013,1,9,'January','Wednesday'),(20130110,'2013-01-10',2013,1,10,'January','Thursday'),(20130111,'2013-01-11',2013,1,11,'January','Friday'),(20130112,'2013-01-12',2013,1,12,'January','Saturday'),(20130113,'2013-01-13',2013,1,13,'January','Sunday'),(20130114,'2013-01-14',2013,1,14,'January','Monday'),(20130115,'2013-01-15',2013,1,15,'January','Tuesday'),(20130116,'2013-01-16',2013,1,16,'January','Wednesday'),(20130117,'2013-01-17',2013,1,17,'January','Thursday'),(20130118,'2013-01-18',2013,1,18,'January','Friday'),(20130119,'2013-01-19',2013,1,19,'January','Saturday'),(20130120,'2013-01-20',2013,1,20,'January','Sunday'),(20130121,'2013-01-21',2013,1,21,'January','Monday'),(20130122,'2013-01-22',2013,1,22,'January','Tuesday'),(20130123,'2013-01-23',2013,1,23,'January','Wednesday'),(20130124,'2013-01-24',2013,1,24,'January','Thursday'),(20130125,'2013-01-25',2013,1,25,'January','Friday'),(20130126,'2013-01-26',2013,1,26,'January','Saturday'),(20130127,'2013-01-27',2013,1,27,'January','Sunday'),(20130128,'2013-01-28',2013,1,28,'January','Monday'),(20130129,'2013-01-29',2013,1,29,'January','Tuesday'),(20130130,'2013-01-30',2013,1,30,'January','Wednesday'),(20130131,'2013-01-31',2013,1,31,'January','Thursday'),(20130201,'2013-02-01',2013,2,1,'February','Friday'),(20130202,'2013-02-02',2013,2,2,'February','Saturday'),(20130203,'2013-02-03',2013,2,3,'February','Sunday'),(20130204,'2013-02-04',2013,2,4,'February','Monday'),(20130205,'2013-02-05',2013,2,5,'February','Tuesday'),(20130206,'2013-02-06',2013,2,6,'February','Wednesday'),(20130207,'2013-02-07',2013,2,7,'February','Thursday'),(20130208,'2013-02-08',2013,2,8,'February','Friday'),(20130209,'2013-02-09',2013,2,9,'February','Saturday'),(20130210,'2013-02-10',2013,2,10,'February','Sunday'),(20130211,'2013-02-11',2013,2,11,'February','Monday'),(20130212,'2013-02-12',2013,2,12,'February','Tuesday'),(20130213,'2013-02-13',2013,2,13,'February','Wednesday'),(20130214,'2013-02-14',2013,2,14,'February','Thursday'),(20130215,'2013-02-15',2013,2,15,'February','Friday'),(20130216,'2013-02-16',2013,2,16,'February','Saturday'),(20130217,'2013-02-17',2013,2,17,'February','Sunday'),(20130218,'2013-02-18',2013,2,18,'February','Monday'),(20130219,'2013-02-19',2013,2,19,'February','Tuesday'),(20130220,'2013-02-20',2013,2,20,'February','Wednesday'),(20130221,'2013-02-21',2013,2,21,'February','Thursday'),(20130222,'2013-02-22',2013,2,22,'February','Friday'),(20130223,'2013-02-23',2013,2,23,'February','Saturday'),(20130224,'2013-02-24',2013,2,24,'February','Sunday'),(20130225,'2013-02-25',2013,2,25,'February','Monday'),(20130226,'2013-02-26',2013,2,26,'February','Tuesday'),(20130227,'2013-02-27',2013,2,27,'February','Wednesday'),(20130228,'2013-02-28',2013,2,28,'February','Thursday'),(20130301,'2013-03-01',2013,3,1,'March','Friday'),(20130302,'2013-03-02',2013,3,2,'March','Saturday'),(20130303,'2013-03-03',2013,3,3,'March','Sunday'),(20130304,'2013-03-04',2013,3,4,'March','Monday'),(20130305,'2013-03-05',2013,3,5,'March','Tuesday'),(20130306,'2013-03-06',2013,3,6,'March','Wednesday'),(20130307,'2013-03-07',2013,3,7,'March','Thursday'),(20130308,'2013-03-08',2013,3,8,'March','Friday'),(20130309,'2013-03-09',2013,3,9,'March','Saturday'),(20130310,'2013-03-10',2013,3,10,'March','Sunday'),(20130311,'2013-03-11',2013,3,11,'March','Monday'),(20130312,'2013-03-12',2013,3,12,'March','Tuesday'),(20130313,'2013-03-13',2013,3,13,'March','Wednesday'),(20130314,'2013-03-14',2013,3,14,'March','Thursday'),(20130315,'2013-03-15',2013,3,15,'March','Friday'),(20130316,'2013-03-16',2013,3,16,'March','Saturday'),(20130317,'2013-03-17',2013,3,17,'March','Sunday'),(20130318,'2013-03-18',2013,3,18,'March','Monday'),(20130319,'2013-03-19',2013,3,19,'March','Tuesday'),(20130320,'2013-03-20',2013,3,20,'March','Wednesday'),(20130321,'2013-03-21',2013,3,21,'March','Thursday'),(20130322,'2013-03-22',2013,3,22,'March','Friday'),(20130323,'2013-03-23',2013,3,23,'March','Saturday'),(20130324,'2013-03-24',2013,3,24,'March','Sunday'),(20130325,'2013-03-25',2013,3,25,'March','Monday'),(20130326,'2013-03-26',2013,3,26,'March','Tuesday'),(20130327,'2013-03-27',2013,3,27,'March','Wednesday'),(20130328,'2013-03-28',2013,3,28,'March','Thursday'),(20130329,'2013-03-29',2013,3,29,'March','Friday'),(20130330,'2013-03-30',2013,3,30,'March','Saturday'),(20130331,'2013-03-31',2013,3,31,'March','Sunday'),(20130401,'2013-04-01',2013,4,1,'April','Monday'),(20130402,'2013-04-02',2013,4,2,'April','Tuesday'),(20130403,'2013-04-03',2013,4,3,'April','Wednesday'),(20130404,'2013-04-04',2013,4,4,'April','Thursday'),(20130405,'2013-04-05',2013,4,5,'April','Friday'),(20130406,'2013-04-06',2013,4,6,'April','Saturday'),(20130407,'2013-04-07',2013,4,7,'April','Sunday'),(20130408,'2013-04-08',2013,4,8,'April','Monday'),(20130409,'2013-04-09',2013,4,9,'April','Tuesday'),(20130410,'2013-04-10',2013,4,10,'April','Wednesday'),(20130411,'2013-04-11',2013,4,11,'April','Thursday'),(20130412,'2013-04-12',2013,4,12,'April','Friday'),(20130413,'2013-04-13',2013,4,13,'April','Saturday'),(20130414,'2013-04-14',2013,4,14,'April','Sunday'),(20130415,'2013-04-15',2013,4,15,'April','Monday'),(20130416,'2013-04-16',2013,4,16,'April','Tuesday'),(20130417,'2013-04-17',2013,4,17,'April','Wednesday'),(20130418,'2013-04-18',2013,4,18,'April','Thursday'),(20130419,'2013-04-19',2013,4,19,'April','Friday'),(20130420,'2013-04-20',2013,4,20,'April','Saturday'),(20130421,'2013-04-21',2013,4,21,'April','Sunday'),(20130422,'2013-04-22',2013,4,22,'April','Monday'),(20130423,'2013-04-23',2013,4,23,'April','Tuesday'),(20130424,'2013-04-24',2013,4,24,'April','Wednesday'),(20130425,'2013-04-25',2013,4,25,'April','Thursday'),(20130426,'2013-04-26',2013,4,26,'April','Friday'),(20130427,'2013-04-27',2013,4,27,'April','Saturday'),(20130428,'2013-04-28',2013,4,28,'April','Sunday'),(20130429,'2013-04-29',2013,4,29,'April','Monday'),(20130430,'2013-04-30',2013,4,30,'April','Tuesday'),(20130501,'2013-05-01',2013,5,1,'May','Wednesday'),(20130502,'2013-05-02',2013,5,2,'May','Thursday'),(20130503,'2013-05-03',2013,5,3,'May','Friday'),(20130504,'2013-05-04',2013,5,4,'May','Saturday'),(20130505,'2013-05-05',2013,5,5,'May','Sunday'),(20130506,'2013-05-06',2013,5,6,'May','Monday'),(20130507,'2013-05-07',2013,5,7,'May','Tuesday'),(20130508,'2013-05-08',2013,5,8,'May','Wednesday'),(20130509,'2013-05-09',2013,5,9,'May','Thursday'),(20130510,'2013-05-10',2013,5,10,'May','Friday'),(20130511,'2013-05-11',2013,5,11,'May','Saturday'),(20130512,'2013-05-12',2013,5,12,'May','Sunday'),(20130513,'2013-05-13',2013,5,13,'May','Monday'),(20130514,'2013-05-14',2013,5,14,'May','Tuesday'),(20130515,'2013-05-15',2013,5,15,'May','Wednesday'),(20130516,'2013-05-16',2013,5,16,'May','Thursday'),(20130517,'2013-05-17',2013,5,17,'May','Friday'),(20130518,'2013-05-18',2013,5,18,'May','Saturday'),(20130519,'2013-05-19',2013,5,19,'May','Sunday'),(20130520,'2013-05-20',2013,5,20,'May','Monday'),(20130521,'2013-05-21',2013,5,21,'May','Tuesday'),(20130522,'2013-05-22',2013,5,22,'May','Wednesday'),(20130523,'2013-05-23',2013,5,23,'May','Thursday'),(20130524,'2013-05-24',2013,5,24,'May','Friday'),(20130525,'2013-05-25',2013,5,25,'May','Saturday'),(20130526,'2013-05-26',2013,5,26,'May','Sunday'),(20130527,'2013-05-27',2013,5,27,'May','Monday'),(20130528,'2013-05-28',2013,5,28,'May','Tuesday'),(20130529,'2013-05-29',2013,5,29,'May','Wednesday'),(20130530,'2013-05-30',2013,5,30,'May','Thursday'),(20130531,'2013-05-31',2013,5,31,'May','Friday'),(20130601,'2013-06-01',2013,6,1,'June','Saturday'),(20130602,'2013-06-02',2013,6,2,'June','Sunday'),(20130603,'2013-06-03',2013,6,3,'June','Monday'),(20130604,'2013-06-04',2013,6,4,'June','Tuesday'),(20130605,'2013-06-05',2013,6,5,'June','Wednesday'),(20130606,'2013-06-06',2013,6,6,'June','Thursday'),(20130607,'2013-06-07',2013,6,7,'June','Friday'),(20130608,'2013-06-08',2013,6,8,'June','Saturday'),(20130609,'2013-06-09',2013,6,9,'June','Sunday'),(20130610,'2013-06-10',2013,6,10,'June','Monday'),(20130611,'2013-06-11',2013,6,11,'June','Tuesday'),(20130612,'2013-06-12',2013,6,12,'June','Wednesday'),(20130613,'2013-06-13',2013,6,13,'June','Thursday'),(20130614,'2013-06-14',2013,6,14,'June','Friday'),(20130615,'2013-06-15',2013,6,15,'June','Saturday'),(20130616,'2013-06-16',2013,6,16,'June','Sunday'),(20130617,'2013-06-17',2013,6,17,'June','Monday'),(20130618,'2013-06-18',2013,6,18,'June','Tuesday'),(20130619,'2013-06-19',2013,6,19,'June','Wednesday'),(20130620,'2013-06-20',2013,6,20,'June','Thursday'),(20130621,'2013-06-21',2013,6,21,'June','Friday'),(20130622,'2013-06-22',2013,6,22,'June','Saturday'),(20130623,'2013-06-23',2013,6,23,'June','Sunday'),(20130624,'2013-06-24',2013,6,24,'June','Monday'),(20130625,'2013-06-25',2013,6,25,'June','Tuesday'),(20130626,'2013-06-26',2013,6,26,'June','Wednesday'),(20130627,'2013-06-27',2013,6,27,'June','Thursday'),(20130628,'2013-06-28',2013,6,28,'June','Friday'),(20130629,'2013-06-29',2013,6,29,'June','Saturday'),(20130630,'2013-06-30',2013,6,30,'June','Sunday'),(20130701,'2013-07-01',2013,7,1,'July','Monday'),(20130702,'2013-07-02',2013,7,2,'July','Tuesday'),(20130703,'2013-07-03',2013,7,3,'July','Wednesday'),(20130704,'2013-07-04',2013,7,4,'July','Thursday'),(20130705,'2013-07-05',2013,7,5,'July','Friday'),(20130706,'2013-07-06',2013,7,6,'July','Saturday'),(20130707,'2013-07-07',2013,7,7,'July','Sunday'),(20130708,'2013-07-08',2013,7,8,'July','Monday'),(20130709,'2013-07-09',2013,7,9,'July','Tuesday'),(20130710,'2013-07-10',2013,7,10,'July','Wednesday'),(20130711,'2013-07-11',2013,7,11,'July','Thursday'),(20130712,'2013-07-12',2013,7,12,'July','Friday'),(20130713,'2013-07-13',2013,7,13,'July','Saturday'),(20130714,'2013-07-14',2013,7,14,'July','Sunday'),(20130715,'2013-07-15',2013,7,15,'July','Monday'),(20130716,'2013-07-16',2013,7,16,'July','Tuesday'),(20130717,'2013-07-17',2013,7,17,'July','Wednesday'),(20130718,'2013-07-18',2013,7,18,'July','Thursday'),(20130719,'2013-07-19',2013,7,19,'July','Friday'),(20130720,'2013-07-20',2013,7,20,'July','Saturday'),(20130721,'2013-07-21',2013,7,21,'July','Sunday'),(20130722,'2013-07-22',2013,7,22,'July','Monday'),(20130723,'2013-07-23',2013,7,23,'July','Tuesday'),(20130724,'2013-07-24',2013,7,24,'July','Wednesday'),(20130725,'2013-07-25',2013,7,25,'July','Thursday'),(20130726,'2013-07-26',2013,7,26,'July','Friday'),(20130727,'2013-07-27',2013,7,27,'July','Saturday'),(20130728,'2013-07-28',2013,7,28,'July','Sunday'),(20130729,'2013-07-29',2013,7,29,'July','Monday'),(20130730,'2013-07-30',2013,7,30,'July','Tuesday'),(20130731,'2013-07-31',2013,7,31,'July','Wednesday'),(20130801,'2013-08-01',2013,8,1,'August','Thursday'),(20130802,'2013-08-02',2013,8,2,'August','Friday'),(20130803,'2013-08-03',2013,8,3,'August','Saturday'),(20130804,'2013-08-04',2013,8,4,'August','Sunday'),(20130805,'2013-08-05',2013,8,5,'August','Monday'),(20130806,'2013-08-06',2013,8,6,'August','Tuesday'),(20130807,'2013-08-07',2013,8,7,'August','Wednesday'),(20130808,'2013-08-08',2013,8,8,'August','Thursday'),(20130809,'2013-08-09',2013,8,9,'August','Friday'),(20130810,'2013-08-10',2013,8,10,'August','Saturday'),(20130811,'2013-08-11',2013,8,11,'August','Sunday'),(20130812,'2013-08-12',2013,8,12,'August','Monday'),(20130813,'2013-08-13',2013,8,13,'August','Tuesday'),(20130814,'2013-08-14',2013,8,14,'August','Wednesday'),(20130815,'2013-08-15',2013,8,15,'August','Thursday'),(20130816,'2013-08-16',2013,8,16,'August','Friday'),(20130817,'2013-08-17',2013,8,17,'August','Saturday'),(20130818,'2013-08-18',2013,8,18,'August','Sunday'),(20130819,'2013-08-19',2013,8,19,'August','Monday'),(20130820,'2013-08-20',2013,8,20,'August','Tuesday'),(20130821,'2013-08-21',2013,8,21,'August','Wednesday'),(20130822,'2013-08-22',2013,8,22,'August','Thursday'),(20130823,'2013-08-23',2013,8,23,'August','Friday'),(20130824,'2013-08-24',2013,8,24,'August','Saturday'),(20130825,'2013-08-25',2013,8,25,'August','Sunday'),(20130826,'2013-08-26',2013,8,26,'August','Monday'),(20130827,'2013-08-27',2013,8,27,'August','Tuesday'),(20130828,'2013-08-28',2013,8,28,'August','Wednesday'),(20130829,'2013-08-29',2013,8,29,'August','Thursday'),(20130830,'2013-08-30',2013,8,30,'August','Friday'),(20130831,'2013-08-31',2013,8,31,'August','Saturday'),(20130901,'2013-09-01',2013,9,1,'September','Sunday'),(20130902,'2013-09-02',2013,9,2,'September','Monday'),(20130903,'2013-09-03',2013,9,3,'September','Tuesday'),(20130904,'2013-09-04',2013,9,4,'September','Wednesday'),(20130905,'2013-09-05',2013,9,5,'September','Thursday'),(20130906,'2013-09-06',2013,9,6,'September','Friday'),(20130907,'2013-09-07',2013,9,7,'September','Saturday'),(20130908,'2013-09-08',2013,9,8,'September','Sunday'),(20130909,'2013-09-09',2013,9,9,'September','Monday'),(20130910,'2013-09-10',2013,9,10,'September','Tuesday'),(20130911,'2013-09-11',2013,9,11,'September','Wednesday'),(20130912,'2013-09-12',2013,9,12,'September','Thursday'),(20130913,'2013-09-13',2013,9,13,'September','Friday'),(20130914,'2013-09-14',2013,9,14,'September','Saturday'),(20130915,'2013-09-15',2013,9,15,'September','Sunday'),(20130916,'2013-09-16',2013,9,16,'September','Monday'),(20130917,'2013-09-17',2013,9,17,'September','Tuesday'),(20130918,'2013-09-18',2013,9,18,'September','Wednesday'),(20130919,'2013-09-19',2013,9,19,'September','Thursday'),(20130920,'2013-09-20',2013,9,20,'September','Friday'),(20130921,'2013-09-21',2013,9,21,'September','Saturday'),(20130922,'2013-09-22',2013,9,22,'September','Sunday'),(20130923,'2013-09-23',2013,9,23,'September','Monday'),(20130924,'2013-09-24',2013,9,24,'September','Tuesday'),(20130925,'2013-09-25',2013,9,25,'September','Wednesday'),(20130926,'2013-09-26',2013,9,26,'September','Thursday'),(20130927,'2013-09-27',2013,9,27,'September','Friday'),(20130928,'2013-09-28',2013,9,28,'September','Saturday'),(20130929,'2013-09-29',2013,9,29,'September','Sunday'),(20130930,'2013-09-30',2013,9,30,'September','Monday'),(20131001,'2013-10-01',2013,10,1,'October','Tuesday'),(20131002,'2013-10-02',2013,10,2,'October','Wednesday'),(20131003,'2013-10-03',2013,10,3,'October','Thursday'),(20131004,'2013-10-04',2013,10,4,'October','Friday'),(20131005,'2013-10-05',2013,10,5,'October','Saturday'),(20131006,'2013-10-06',2013,10,6,'October','Sunday'),(20131007,'2013-10-07',2013,10,7,'October','Monday'),(20131008,'2013-10-08',2013,10,8,'October','Tuesday'),(20131009,'2013-10-09',2013,10,9,'October','Wednesday'),(20131010,'2013-10-10',2013,10,10,'October','Thursday'),(20131011,'2013-10-11',2013,10,11,'October','Friday'),(20131012,'2013-10-12',2013,10,12,'October','Saturday'),(20131013,'2013-10-13',2013,10,13,'October','Sunday'),(20131014,'2013-10-14',2013,10,14,'October','Monday'),(20131015,'2013-10-15',2013,10,15,'October','Tuesday'),(20131016,'2013-10-16',2013,10,16,'October','Wednesday'),(20131017,'2013-10-17',2013,10,17,'October','Thursday'),(20131018,'2013-10-18',2013,10,18,'October','Friday'),(20131019,'2013-10-19',2013,10,19,'October','Saturday'),(20131020,'2013-10-20',2013,10,20,'October','Sunday'),(20131021,'2013-10-21',2013,10,21,'October','Monday'),(20131022,'2013-10-22',2013,10,22,'October','Tuesday'),(20131023,'2013-10-23',2013,10,23,'October','Wednesday'),(20131024,'2013-10-24',2013,10,24,'October','Thursday'),(20131025,'2013-10-25',2013,10,25,'October','Friday'),(20131026,'2013-10-26',2013,10,26,'October','Saturday'),(20131027,'2013-10-27',2013,10,27,'October','Sunday'),(20131028,'2013-10-28',2013,10,28,'October','Monday'),(20131029,'2013-10-29',2013,10,29,'October','Tuesday'),(20131030,'2013-10-30',2013,10,30,'October','Wednesday'),(20131031,'2013-10-31',2013,10,31,'October','Thursday'),(20131101,'2013-11-01',2013,11,1,'November','Friday'),(20131102,'2013-11-02',2013,11,2,'November','Saturday'),(20131103,'2013-11-03',2013,11,3,'November','Sunday'),(20131104,'2013-11-04',2013,11,4,'November','Monday'),(20131105,'2013-11-05',2013,11,5,'November','Tuesday'),(20131106,'2013-11-06',2013,11,6,'November','Wednesday'),(20131107,'2013-11-07',2013,11,7,'November','Thursday'),(20131108,'2013-11-08',2013,11,8,'November','Friday'),(20131109,'2013-11-09',2013,11,9,'November','Saturday'),(20131110,'2013-11-10',2013,11,10,'November','Sunday'),(20131111,'2013-11-11',2013,11,11,'November','Monday'),(20131112,'2013-11-12',2013,11,12,'November','Tuesday'),(20131113,'2013-11-13',2013,11,13,'November','Wednesday'),(20131114,'2013-11-14',2013,11,14,'November','Thursday'),(20131115,'2013-11-15',2013,11,15,'November','Friday'),(20131116,'2013-11-16',2013,11,16,'November','Saturday'),(20131117,'2013-11-17',2013,11,17,'November','Sunday'),(20131118,'2013-11-18',2013,11,18,'November','Monday'),(20131119,'2013-11-19',2013,11,19,'November','Tuesday'),(20131120,'2013-11-20',2013,11,20,'November','Wednesday'),(20131121,'2013-11-21',2013,11,21,'November','Thursday'),(20131122,'2013-11-22',2013,11,22,'November','Friday'),(20131123,'2013-11-23',2013,11,23,'November','Saturday'),(20131124,'2013-11-24',2013,11,24,'November','Sunday'),(20131125,'2013-11-25',2013,11,25,'November','Monday'),(20131126,'2013-11-26',2013,11,26,'November','Tuesday'),(20131127,'2013-11-27',2013,11,27,'November','Wednesday'),(20131128,'2013-11-28',2013,11,28,'November','Thursday'),(20131129,'2013-11-29',2013,11,29,'November','Friday'),(20131130,'2013-11-30',2013,11,30,'November','Saturday'),(20131201,'2013-12-01',2013,12,1,'December','Sunday'),(20131202,'2013-12-02',2013,12,2,'December','Monday'),(20131203,'2013-12-03',2013,12,3,'December','Tuesday'),(20131204,'2013-12-04',2013,12,4,'December','Wednesday'),(20131205,'2013-12-05',2013,12,5,'December','Thursday'),(20131206,'2013-12-06',2013,12,6,'December','Friday'),(20131207,'2013-12-07',2013,12,7,'December','Saturday'),(20131208,'2013-12-08',2013,12,8,'December','Sunday'),(20131209,'2013-12-09',2013,12,9,'December','Monday'),(20131210,'2013-12-10',2013,12,10,'December','Tuesday'),(20131211,'2013-12-11',2013,12,11,'December','Wednesday'),(20131212,'2013-12-12',2013,12,12,'December','Thursday'),(20131213,'2013-12-13',2013,12,13,'December','Friday'),(20131214,'2013-12-14',2013,12,14,'December','Saturday'),(20131215,'2013-12-15',2013,12,15,'December','Sunday'),(20131216,'2013-12-16',2013,12,16,'December','Monday'),(20131217,'2013-12-17',2013,12,17,'December','Tuesday'),(20131218,'2013-12-18',2013,12,18,'December','Wednesday'),(20131219,'2013-12-19',2013,12,19,'December','Thursday'),(20131220,'2013-12-20',2013,12,20,'December','Friday'),(20131221,'2013-12-21',2013,12,21,'December','Saturday'),(20131222,'2013-12-22',2013,12,22,'December','Sunday'),(20131223,'2013-12-23',2013,12,23,'December','Monday'),(20131224,'2013-12-24',2013,12,24,'December','Tuesday'),(20131225,'2013-12-25',2013,12,25,'December','Wednesday'),(20131226,'2013-12-26',2013,12,26,'December','Thursday'),(20131227,'2013-12-27',2013,12,27,'December','Friday'),(20131228,'2013-12-28',2013,12,28,'December','Saturday'),(20131229,'2013-12-29',2013,12,29,'December','Sunday'),(20131230,'2013-12-30',2013,12,30,'December','Monday'),(20131231,'2013-12-31',2013,12,31,'December','Tuesday'),(20140101,'2014-01-01',2014,1,1,'January','Wednesday'),(20140102,'2014-01-02',2014,1,2,'January','Thursday'),(20140103,'2014-01-03',2014,1,3,'January','Friday'),(20140104,'2014-01-04',2014,1,4,'January','Saturday'),(20140105,'2014-01-05',2014,1,5,'January','Sunday'),(20140106,'2014-01-06',2014,1,6,'January','Monday'),(20140107,'2014-01-07',2014,1,7,'January','Tuesday'),(20140108,'2014-01-08',2014,1,8,'January','Wednesday'),(20140109,'2014-01-09',2014,1,9,'January','Thursday'),(20140110,'2014-01-10',2014,1,10,'January','Friday'),(20140111,'2014-01-11',2014,1,11,'January','Saturday'),(20140112,'2014-01-12',2014,1,12,'January','Sunday'),(20140113,'2014-01-13',2014,1,13,'January','Monday'),(20140114,'2014-01-14',2014,1,14,'January','Tuesday'),(20140115,'2014-01-15',2014,1,15,'January','Wednesday'),(20140116,'2014-01-16',2014,1,16,'January','Thursday'),(20140117,'2014-01-17',2014,1,17,'January','Friday'),(20140118,'2014-01-18',2014,1,18,'January','Saturday'),(20140119,'2014-01-19',2014,1,19,'January','Sunday'),(20140120,'2014-01-20',2014,1,20,'January','Monday'),(20140121,'2014-01-21',2014,1,21,'January','Tuesday'),(20140122,'2014-01-22',2014,1,22,'January','Wednesday'),(20140123,'2014-01-23',2014,1,23,'January','Thursday'),(20140124,'2014-01-24',2014,1,24,'January','Friday'),(20140125,'2014-01-25',2014,1,25,'January','Saturday'),(20140126,'2014-01-26',2014,1,26,'January','Sunday'),(20140127,'2014-01-27',2014,1,27,'January','Monday'),(20140128,'2014-01-28',2014,1,28,'January','Tuesday'),(20140129,'2014-01-29',2014,1,29,'January','Wednesday'),(20140130,'2014-01-30',2014,1,30,'January','Thursday'),(20140131,'2014-01-31',2014,1,31,'January','Friday'),(20140201,'2014-02-01',2014,2,1,'February','Saturday'),(20140202,'2014-02-02',2014,2,2,'February','Sunday'),(20140203,'2014-02-03',2014,2,3,'February','Monday'),(20140204,'2014-02-04',2014,2,4,'February','Tuesday'),(20140205,'2014-02-05',2014,2,5,'February','Wednesday'),(20140206,'2014-02-06',2014,2,6,'February','Thursday'),(20140207,'2014-02-07',2014,2,7,'February','Friday'),(20140208,'2014-02-08',2014,2,8,'February','Saturday'),(20140209,'2014-02-09',2014,2,9,'February','Sunday'),(20140210,'2014-02-10',2014,2,10,'February','Monday'),(20140211,'2014-02-11',2014,2,11,'February','Tuesday'),(20140212,'2014-02-12',2014,2,12,'February','Wednesday'),(20140213,'2014-02-13',2014,2,13,'February','Thursday'),(20140214,'2014-02-14',2014,2,14,'February','Friday'),(20140215,'2014-02-15',2014,2,15,'February','Saturday'),(20140216,'2014-02-16',2014,2,16,'February','Sunday'),(20140217,'2014-02-17',2014,2,17,'February','Monday'),(20140218,'2014-02-18',2014,2,18,'February','Tuesday'),(20140219,'2014-02-19',2014,2,19,'February','Wednesday'),(20140220,'2014-02-20',2014,2,20,'February','Thursday'),(20140221,'2014-02-21',2014,2,21,'February','Friday'),(20140222,'2014-02-22',2014,2,22,'February','Saturday'),(20140223,'2014-02-23',2014,2,23,'February','Sunday'),(20140224,'2014-02-24',2014,2,24,'February','Monday'),(20140225,'2014-02-25',2014,2,25,'February','Tuesday'),(20140226,'2014-02-26',2014,2,26,'February','Wednesday'),(20140227,'2014-02-27',2014,2,27,'February','Thursday'),(20140228,'2014-02-28',2014,2,28,'February','Friday'),(20140301,'2014-03-01',2014,3,1,'March','Saturday'),(20140302,'2014-03-02',2014,3,2,'March','Sunday'),(20140303,'2014-03-03',2014,3,3,'March','Monday'),(20140304,'2014-03-04',2014,3,4,'March','Tuesday'),(20140305,'2014-03-05',2014,3,5,'March','Wednesday'),(20140306,'2014-03-06',2014,3,6,'March','Thursday'),(20140307,'2014-03-07',2014,3,7,'March','Friday'),(20140308,'2014-03-08',2014,3,8,'March','Saturday'),(20140309,'2014-03-09',2014,3,9,'March','Sunday'),(20140310,'2014-03-10',2014,3,10,'March','Monday'),(20140311,'2014-03-11',2014,3,11,'March','Tuesday'),(20140312,'2014-03-12',2014,3,12,'March','Wednesday'),(20140313,'2014-03-13',2014,3,13,'March','Thursday'),(20140314,'2014-03-14',2014,3,14,'March','Friday'),(20140315,'2014-03-15',2014,3,15,'March','Saturday'),(20140316,'2014-03-16',2014,3,16,'March','Sunday'),(20140317,'2014-03-17',2014,3,17,'March','Monday'),(20140318,'2014-03-18',2014,3,18,'March','Tuesday'),(20140319,'2014-03-19',2014,3,19,'March','Wednesday'),(20140320,'2014-03-20',2014,3,20,'March','Thursday'),(20140321,'2014-03-21',2014,3,21,'March','Friday'),(20140322,'2014-03-22',2014,3,22,'March','Saturday'),(20140323,'2014-03-23',2014,3,23,'March','Sunday'),(20140324,'2014-03-24',2014,3,24,'March','Monday'),(20140325,'2014-03-25',2014,3,25,'March','Tuesday'),(20140326,'2014-03-26',2014,3,26,'March','Wednesday'),(20140327,'2014-03-27',2014,3,27,'March','Thursday'),(20140328,'2014-03-28',2014,3,28,'March','Friday'),(20140329,'2014-03-29',2014,3,29,'March','Saturday'),(20140330,'2014-03-30',2014,3,30,'March','Sunday'),(20140331,'2014-03-31',2014,3,31,'March','Monday'),(20140401,'2014-04-01',2014,4,1,'April','Tuesday'),(20140402,'2014-04-02',2014,4,2,'April','Wednesday'),(20140403,'2014-04-03',2014,4,3,'April','Thursday'),(20140404,'2014-04-04',2014,4,4,'April','Friday'),(20140405,'2014-04-05',2014,4,5,'April','Saturday'),(20140406,'2014-04-06',2014,4,6,'April','Sunday'),(20140407,'2014-04-07',2014,4,7,'April','Monday'),(20140408,'2014-04-08',2014,4,8,'April','Tuesday'),(20140409,'2014-04-09',2014,4,9,'April','Wednesday'),(20140410,'2014-04-10',2014,4,10,'April','Thursday'),(20140411,'2014-04-11',2014,4,11,'April','Friday'),(20140412,'2014-04-12',2014,4,12,'April','Saturday'),(20140413,'2014-04-13',2014,4,13,'April','Sunday'),(20140414,'2014-04-14',2014,4,14,'April','Monday'),(20140415,'2014-04-15',2014,4,15,'April','Tuesday'),(20140416,'2014-04-16',2014,4,16,'April','Wednesday'),(20140417,'2014-04-17',2014,4,17,'April','Thursday'),(20140418,'2014-04-18',2014,4,18,'April','Friday'),(20140419,'2014-04-19',2014,4,19,'April','Saturday'),(20140420,'2014-04-20',2014,4,20,'April','Sunday'),(20140421,'2014-04-21',2014,4,21,'April','Monday'),(20140422,'2014-04-22',2014,4,22,'April','Tuesday'),(20140423,'2014-04-23',2014,4,23,'April','Wednesday'),(20140424,'2014-04-24',2014,4,24,'April','Thursday'),(20140425,'2014-04-25',2014,4,25,'April','Friday'),(20140426,'2014-04-26',2014,4,26,'April','Saturday'),(20140427,'2014-04-27',2014,4,27,'April','Sunday'),(20140428,'2014-04-28',2014,4,28,'April','Monday'),(20140429,'2014-04-29',2014,4,29,'April','Tuesday'),(20140430,'2014-04-30',2014,4,30,'April','Wednesday'),(20140501,'2014-05-01',2014,5,1,'May','Thursday'),(20140502,'2014-05-02',2014,5,2,'May','Friday'),(20140503,'2014-05-03',2014,5,3,'May','Saturday'),(20140504,'2014-05-04',2014,5,4,'May','Sunday'),(20140505,'2014-05-05',2014,5,5,'May','Monday'),(20140506,'2014-05-06',2014,5,6,'May','Tuesday'),(20140507,'2014-05-07',2014,5,7,'May','Wednesday'),(20140508,'2014-05-08',2014,5,8,'May','Thursday'),(20140509,'2014-05-09',2014,5,9,'May','Friday'),(20140510,'2014-05-10',2014,5,10,'May','Saturday'),(20140511,'2014-05-11',2014,5,11,'May','Sunday'),(20140512,'2014-05-12',2014,5,12,'May','Monday'),(20140513,'2014-05-13',2014,5,13,'May','Tuesday'),(20140514,'2014-05-14',2014,5,14,'May','Wednesday'),(20140515,'2014-05-15',2014,5,15,'May','Thursday'),(20140516,'2014-05-16',2014,5,16,'May','Friday');
/*!40000 ALTER TABLE `dim_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_employee`
--

DROP TABLE IF EXISTS `dim_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_employee` (
  `employee_SK` int(11) NOT NULL AUTO_INCREMENT,
  `employeeName` varchar(45) NOT NULL,
  `persalNumber` varchar(45) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`employee_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_employee`
--

LOCK TABLES `dim_employee` WRITE;
/*!40000 ALTER TABLE `dim_employee` DISABLE KEYS */;
INSERT INTO `dim_employee` VALUES (-1,'unknown','-1','2013-05-16 16:46:10');
/*!40000 ALTER TABLE `dim_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_event`
--

DROP TABLE IF EXISTS `dim_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_event` (
  `event_SK` int(11) NOT NULL AUTO_INCREMENT,
  `eventID_BK` int(11) NOT NULL,
  `eventMessage` varchar(512) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`event_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_event`
--

LOCK TABLES `dim_event` WRITE;
/*!40000 ALTER TABLE `dim_event` DISABLE KEYS */;
INSERT INTO `dim_event` VALUES (-1,-1,'unknown','2013-05-16 16:46:10');
/*!40000 ALTER TABLE `dim_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_eventlocation`
--

DROP TABLE IF EXISTS `dim_eventlocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_eventlocation` (
  `location_SK` int(11) NOT NULL AUTO_INCREMENT,
  `locationName` varchar(45) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`location_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_eventlocation`
--

LOCK TABLES `dim_eventlocation` WRITE;
/*!40000 ALTER TABLE `dim_eventlocation` DISABLE KEYS */;
INSERT INTO `dim_eventlocation` VALUES (-1,'unknown','2013-05-16 16:46:10');
/*!40000 ALTER TABLE `dim_eventlocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_eventtype`
--

DROP TABLE IF EXISTS `dim_eventtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_eventtype` (
  `type_SK` int(11) NOT NULL AUTO_INCREMENT,
  `typeDescription` varchar(45) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`type_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_eventtype`
--

LOCK TABLES `dim_eventtype` WRITE;
/*!40000 ALTER TABLE `dim_eventtype` DISABLE KEYS */;
INSERT INTO `dim_eventtype` VALUES (-1,'unknown','2013-05-16 16:46:10');
/*!40000 ALTER TABLE `dim_eventtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_facility`
--

DROP TABLE IF EXISTS `dim_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_facility` (
  `facility_SK` int(11) NOT NULL AUTO_INCREMENT,
  `facilityID_BK` int(11) NOT NULL,
  `facilityTotalStorageCapacity` int(11) NOT NULL,
  `facilityName` varchar(45) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`facility_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_facility`
--

LOCK TABLES `dim_facility` WRITE;
/*!40000 ALTER TABLE `dim_facility` DISABLE KEYS */;
INSERT INTO `dim_facility` VALUES (-1,-1,-1,'unknown','2013-05-16 16:46:10');
/*!40000 ALTER TABLE `dim_facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_gender`
--

DROP TABLE IF EXISTS `dim_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_gender` (
  `gender_SK` int(11) NOT NULL AUTO_INCREMENT,
  `genderDescription` varchar(45) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`gender_SK`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_gender`
--

LOCK TABLES `dim_gender` WRITE;
/*!40000 ALTER TABLE `dim_gender` DISABLE KEYS */;
INSERT INTO `dim_gender` VALUES (-1,'unknown','2013-05-16 16:46:10'),(1,'female','2013-05-16 16:46:10'),(2,'male','2013-05-16 16:46:10');
/*!40000 ALTER TABLE `dim_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_incident`
--

DROP TABLE IF EXISTS `dim_incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_incident` (
  `incident_SK` int(11) NOT NULL AUTO_INCREMENT,
  `incidentNumber_BK` varchar(45) NOT NULL,
  `SAPSReference` varchar(45) NOT NULL,
  `specialCircumstance` varchar(45) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`incident_SK`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_incident`
--

LOCK TABLES `dim_incident` WRITE;
/*!40000 ALTER TABLE `dim_incident` DISABLE KEYS */;
INSERT INTO `dim_incident` VALUES (-1,'unknown','unknown','unknown','2013-05-16 16:46:10'),(1,'002201301','REF','had beef with Rick Ross','2013-05-16 16:46:10');
/*!40000 ALTER TABLE `dim_incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_kin`
--

DROP TABLE IF EXISTS `dim_kin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_kin` (
  `kin_SK` int(11) NOT NULL AUTO_INCREMENT,
  `kinIdentificationNumber_BK` varchar(45) NOT NULL,
  `kinName` varchar(45) NOT NULL,
  `kinContact` varchar(45) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`kin_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_kin`
--

LOCK TABLES `dim_kin` WRITE;
/*!40000 ALTER TABLE `dim_kin` DISABLE KEYS */;
INSERT INTO `dim_kin` VALUES (-1,'unknown','unknown','unknown','2013-05-16 16:46:10');
/*!40000 ALTER TABLE `dim_kin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_location`
--

DROP TABLE IF EXISTS `dim_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_location` (
  `location_SK` int(11) NOT NULL AUTO_INCREMENT,
  `locationName` varchar(45) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`location_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_location`
--

LOCK TABLES `dim_location` WRITE;
/*!40000 ALTER TABLE `dim_location` DISABLE KEYS */;
INSERT INTO `dim_location` VALUES (-1,'unknown','2013-05-16 16:46:10');
/*!40000 ALTER TABLE `dim_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_mannerofdeath`
--

DROP TABLE IF EXISTS `dim_mannerofdeath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_mannerofdeath` (
  `mannerOfDeath_SK` int(11) NOT NULL AUTO_INCREMENT,
  `deathType` varchar(45) NOT NULL,
  `ICD10` varchar(45) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`mannerOfDeath_SK`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_mannerofdeath`
--

LOCK TABLES `dim_mannerofdeath` WRITE;
/*!40000 ALTER TABLE `dim_mannerofdeath` DISABLE KEYS */;
INSERT INTO `dim_mannerofdeath` VALUES (-1,'unknown','unknown','2013-05-16 16:46:10'),(1,'cdaa','323','2013-05-16 16:46:10');
/*!40000 ALTER TABLE `dim_mannerofdeath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_organisation`
--

DROP TABLE IF EXISTS `dim_organisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_organisation` (
  `organisation_SK` int(11) NOT NULL AUTO_INCREMENT,
  `organisationType` varchar(45) NOT NULL,
  `organisationName` varchar(45) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`organisation_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_organisation`
--

LOCK TABLES `dim_organisation` WRITE;
/*!40000 ALTER TABLE `dim_organisation` DISABLE KEYS */;
INSERT INTO `dim_organisation` VALUES (-1,'unknown','unknown','2013-05-16 16:46:10');
/*!40000 ALTER TABLE `dim_organisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_postmortem`
--

DROP TABLE IF EXISTS `dim_postmortem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_postmortem` (
  `postMortem_SK` int(11) NOT NULL AUTO_INCREMENT,
  `postMortemID_BK` varchar(45) NOT NULL,
  `PostMortemDescription` varchar(512) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`postMortem_SK`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_postmortem`
--

LOCK TABLES `dim_postmortem` WRITE;
/*!40000 ALTER TABLE `dim_postmortem` DISABLE KEYS */;
INSERT INTO `dim_postmortem` VALUES (-1,'unknown','unknown','2013-05-16 16:46:10'),(1,'908','cdaa','2013-05-16 16:46:10');
/*!40000 ALTER TABLE `dim_postmortem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_property`
--

DROP TABLE IF EXISTS `dim_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_property` (
  `property_SK` int(11) NOT NULL AUTO_INCREMENT,
  `propertyID_BK` int(11) NOT NULL,
  `propertyType` varchar(45) NOT NULL,
  `propertyDescription` varchar(256) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`property_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_property`
--

LOCK TABLES `dim_property` WRITE;
/*!40000 ALTER TABLE `dim_property` DISABLE KEYS */;
INSERT INTO `dim_property` VALUES (-1,-1,'unknown','unknown','2013-05-16 16:46:10');
/*!40000 ALTER TABLE `dim_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_sample`
--

DROP TABLE IF EXISTS `dim_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_sample` (
  `sample_SK` int(11) NOT NULL AUTO_INCREMENT,
  `sampleReference` int(11) NOT NULL,
  `sampleLabReference` varchar(45) NOT NULL,
  `analysisType` varchar(45) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`sample_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_sample`
--

LOCK TABLES `dim_sample` WRITE;
/*!40000 ALTER TABLE `dim_sample` DISABLE KEYS */;
INSERT INTO `dim_sample` VALUES (-1,-1,'unknown','unknown','2013-05-16 16:46:10');
/*!40000 ALTER TABLE `dim_sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_status`
--

DROP TABLE IF EXISTS `dim_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_status` (
  `Status_SK` int(11) NOT NULL AUTO_INCREMENT,
  `Status_BK` tinyint(1) NOT NULL DEFAULT '1',
  `StatusDescription` varchar(7) NOT NULL DEFAULT 'unknown',
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`Status_SK`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_status`
--

LOCK TABLES `dim_status` WRITE;
/*!40000 ALTER TABLE `dim_status` DISABLE KEYS */;
INSERT INTO `dim_status` VALUES (-1,-1,'unknown','2013-05-16 16:46:10'),(1,0,'false','2013-05-16 16:46:10'),(2,1,'true','2013-05-16 16:46:10');
/*!40000 ALTER TABLE `dim_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_audittrail`
--

DROP TABLE IF EXISTS `fact_audittrail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_audittrail` (
  `countEvent` int(11) NOT NULL DEFAULT '-1',
  `countWarning` int(11) NOT NULL DEFAULT '-1',
  `countError` int(11) NOT NULL DEFAULT '-1',
  `FK_Employee_SK` int(11) NOT NULL,
  `FK_EventLocation_SK` int(11) NOT NULL,
  `FK_EventType_SK` int(11) NOT NULL,
  `FK_Event_SK` int(11) NOT NULL,
  `FK_DateOccured_SK` int(11) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`FK_DateOccured_SK`,`FK_Event_SK`,`FK_EventType_SK`,`FK_EventLocation_SK`,`FK_Employee_SK`),
  KEY `fk_Fact_AuditTrailReport_Dim_Employee1_idx` (`FK_Employee_SK`),
  KEY `fk_Fact_AuditTrailReport_Dim_EventLocation1_idx` (`FK_EventLocation_SK`),
  KEY `fk_Fact_AuditTrailReport_Dim_EventType1_idx` (`FK_EventType_SK`),
  KEY `fk_Fact_AuditTrailReport_Dim_Event1_idx` (`FK_Event_SK`),
  KEY `fk_Fact_AuditTrailReport_Dim_Date1_idx` (`FK_DateOccured_SK`),
  CONSTRAINT `fk_Fact_AuditTrailReport_Dim_Date1` FOREIGN KEY (`FK_DateOccured_SK`) REFERENCES `dim_date` (`date_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_AuditTrailReport_Dim_Employee1` FOREIGN KEY (`FK_Employee_SK`) REFERENCES `dim_employee` (`employee_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_AuditTrailReport_Dim_Event1` FOREIGN KEY (`FK_Event_SK`) REFERENCES `dim_event` (`event_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_AuditTrailReport_Dim_EventLocation1` FOREIGN KEY (`FK_EventLocation_SK`) REFERENCES `dim_eventlocation` (`location_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_AuditTrailReport_Dim_EventType1` FOREIGN KEY (`FK_EventType_SK`) REFERENCES `dim_eventtype` (`type_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_audittrail`
--

LOCK TABLES `fact_audittrail` WRITE;
/*!40000 ALTER TABLE `fact_audittrail` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_audittrail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_body`
--

DROP TABLE IF EXISTS `fact_body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_body` (
  `countBody` int(11) NOT NULL DEFAULT '-1',
  `durationBodyStored` int(11) NOT NULL DEFAULT '999',
  `FK_Incident_SK` int(11) NOT NULL,
  `FK_Body_SK` int(11) NOT NULL,
  `FK_Kin_SK` int(11) NOT NULL,
  `FK_Organisation_SK` int(11) NOT NULL,
  `FK_Gender_SK` int(11) NOT NULL,
  `FK_Age_SK` int(11) NOT NULL,
  `FK_MannerOfDeath_SK` int(11) NOT NULL,
  `FK_Location` int(11) NOT NULL,
  `FK_PostMortem_SK` int(11) NOT NULL,
  `Fk_BodyStatus_SK` int(11) NOT NULL,
  `FK_DateReceived_SK` int(11) NOT NULL,
  `FK_DateReleased_SK` int(11) NOT NULL,
  `FK_SamplesStatus_SK` int(11) NOT NULL,
  `FK_PostMortemStatus_SK` int(11) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`FK_SamplesStatus_SK`,`FK_DateReleased_SK`,`FK_DateReceived_SK`,`Fk_BodyStatus_SK`,`FK_PostMortem_SK`,`FK_Location`,`FK_Age_SK`,`FK_MannerOfDeath_SK`,`FK_Gender_SK`,`FK_Organisation_SK`,`FK_Kin_SK`,`FK_Body_SK`,`FK_Incident_SK`,`FK_PostMortemStatus_SK`),
  KEY `fk_Fact_SpecificBodyFileReport_Dim_Incident1_idx` (`FK_Incident_SK`),
  KEY `fk_Fact_SpecificBodyFileReport_Dim_Body1_idx` (`FK_Body_SK`),
  KEY `fk_Fact_SpecificBodyFileReport_Dim_Kin1_idx` (`FK_Kin_SK`),
  KEY `fk_Fact_SpecificBodyFileReport_Dim_Organisation1_idx` (`FK_Organisation_SK`),
  KEY `fk_Fact_SpecificBodyFileReport_Dim_Gender1_idx` (`FK_Gender_SK`),
  KEY `fk_Fact_SpecificBodyFileReport_Dim_Age1_idx` (`FK_Age_SK`),
  KEY `fk_Fact_SpecificBodyFileReport_Dim_MannerOfDeath1_idx` (`FK_MannerOfDeath_SK`),
  KEY `fk_Fact_SpecificBodyFileReport_Dim_Location1_idx` (`FK_Location`),
  KEY `fk_Fact_SpecificBodyFileReport_Dim_PostMortem1_idx` (`FK_PostMortem_SK`),
  KEY `fk_Fact_Body_Dim_BodyStatus1_idx` (`Fk_BodyStatus_SK`),
  KEY `fk_Fact_Body_Dim_Date1_idx` (`FK_DateReceived_SK`),
  KEY `fk_Fact_Body_Dim_Date2_idx` (`FK_DateReleased_SK`),
  KEY `fk_Fact_Body_Dim_SamplesOutstanding1_idx` (`FK_SamplesStatus_SK`),
  KEY `fk_Fact_Body_Dim_OutstandingStatus1_idx` (`FK_PostMortemStatus_SK`),
  CONSTRAINT `fk_Fact_Body_Dim_BodyStatus1` FOREIGN KEY (`Fk_BodyStatus_SK`) REFERENCES `dim_bodystatus` (`bodyStatus_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_Body_Dim_Date1` FOREIGN KEY (`FK_DateReceived_SK`) REFERENCES `dim_date` (`date_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_Body_Dim_Date2` FOREIGN KEY (`FK_DateReleased_SK`) REFERENCES `dim_date` (`date_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_Body_Dim_OutstandingStatus1` FOREIGN KEY (`FK_PostMortemStatus_SK`) REFERENCES `dim_status` (`Status_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_Body_Dim_SamplesOutstanding1` FOREIGN KEY (`FK_SamplesStatus_SK`) REFERENCES `dim_status` (`Status_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_SpecificBodyFileReport_Dim_Age1` FOREIGN KEY (`FK_Age_SK`) REFERENCES `dim_age` (`age_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_SpecificBodyFileReport_Dim_Body1` FOREIGN KEY (`FK_Body_SK`) REFERENCES `dim_body` (`body_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_SpecificBodyFileReport_Dim_Gender1` FOREIGN KEY (`FK_Gender_SK`) REFERENCES `dim_gender` (`gender_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_SpecificBodyFileReport_Dim_Incident1` FOREIGN KEY (`FK_Incident_SK`) REFERENCES `dim_incident` (`incident_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_SpecificBodyFileReport_Dim_Kin1` FOREIGN KEY (`FK_Kin_SK`) REFERENCES `dim_kin` (`kin_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_SpecificBodyFileReport_Dim_Location1` FOREIGN KEY (`FK_Location`) REFERENCES `dim_location` (`location_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_SpecificBodyFileReport_Dim_MannerOfDeath1` FOREIGN KEY (`FK_MannerOfDeath_SK`) REFERENCES `dim_mannerofdeath` (`mannerOfDeath_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_SpecificBodyFileReport_Dim_Organisation1` FOREIGN KEY (`FK_Organisation_SK`) REFERENCES `dim_organisation` (`organisation_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_SpecificBodyFileReport_Dim_PostMortem1` FOREIGN KEY (`FK_PostMortem_SK`) REFERENCES `dim_postmortem` (`postMortem_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_body`
--

LOCK TABLES `fact_body` WRITE;
/*!40000 ALTER TABLE `fact_body` DISABLE KEYS */;
INSERT INTO `fact_body` VALUES (1,0,1,1,-1,-1,1,21,-1,-1,1,-1,20130603,20130603,-1,-1,'2013-05-16 16:46:11');
/*!40000 ALTER TABLE `fact_body` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_incident`
--

DROP TABLE IF EXISTS `fact_incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_incident` (
  `countBody` int(11) NOT NULL DEFAULT '-1',
  `incidentDuration` double NOT NULL DEFAULT '999',
  `FK_Caller_SK` int(11) NOT NULL,
  `FK_Incident_SK` int(11) NOT NULL,
  `FK_MannerOfDeath_SK` int(11) NOT NULL,
  `FK_Location_SK` int(11) NOT NULL,
  `FK_Organisation_SK` int(11) NOT NULL,
  `FK_DateOfIncident_SK` int(11) NOT NULL,
  `FK_DateIncidentClosed_SK` int(11) NOT NULL,
  `FK_IncidentStatus_SK` int(11) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`FK_Caller_SK`,`FK_Incident_SK`,`FK_MannerOfDeath_SK`,`FK_Location_SK`,`FK_Organisation_SK`,`FK_DateOfIncident_SK`,`FK_DateIncidentClosed_SK`,`FK_IncidentStatus_SK`),
  KEY `fk_Fact_IncidentHousekeepingReport_Dim_Caller1_idx` (`FK_Caller_SK`),
  KEY `fk_Fact_IncidentHousekeepingReport_Dim_Incident1_idx` (`FK_Incident_SK`),
  KEY `fk_Fact_IncidentHousekeepingReport_Dim_Date1_idx` (`FK_DateOfIncident_SK`),
  KEY `fk_Fact_IncidentHousekeepingReport_Dim_MannerOfDeath1_idx` (`FK_MannerOfDeath_SK`),
  KEY `fk_Fact_IncidentHousekeepingReport_Dim_Location1_idx` (`FK_Location_SK`),
  KEY `fk_Fact_IncidentHousekeepingReport_Dim_Organisation1_idx` (`FK_Organisation_SK`),
  KEY `fk_Fact_IncidentHousekeepingReport_Dim_Date2_idx` (`FK_DateIncidentClosed_SK`),
  KEY `fk_Fact_Incident_Dim_OutstandingStatus1_idx` (`FK_IncidentStatus_SK`),
  CONSTRAINT `fk_Fact_IncidentHousekeepingReport_Dim_Caller1` FOREIGN KEY (`FK_Caller_SK`) REFERENCES `dim_caller` (`caller_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_IncidentHousekeepingReport_Dim_Date1` FOREIGN KEY (`FK_DateOfIncident_SK`) REFERENCES `dim_date` (`date_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_IncidentHousekeepingReport_Dim_Date2` FOREIGN KEY (`FK_DateIncidentClosed_SK`) REFERENCES `dim_date` (`date_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_IncidentHousekeepingReport_Dim_Incident1` FOREIGN KEY (`FK_Incident_SK`) REFERENCES `dim_incident` (`incident_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_IncidentHousekeepingReport_Dim_Location1` FOREIGN KEY (`FK_Location_SK`) REFERENCES `dim_location` (`location_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_IncidentHousekeepingReport_Dim_MannerOfDeath1` FOREIGN KEY (`FK_MannerOfDeath_SK`) REFERENCES `dim_mannerofdeath` (`mannerOfDeath_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_IncidentHousekeepingReport_Dim_Organisation1` FOREIGN KEY (`FK_Organisation_SK`) REFERENCES `dim_organisation` (`organisation_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_Incident_Dim_OutstandingStatus1` FOREIGN KEY (`FK_IncidentStatus_SK`) REFERENCES `dim_status` (`Status_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_incident`
--

LOCK TABLES `fact_incident` WRITE;
/*!40000 ALTER TABLE `fact_incident` DISABLE KEYS */;
INSERT INTO `fact_incident` VALUES (4,40,-1,1,-1,-1,-1,20130406,19000101,2,'2013-05-16 16:46:11');
/*!40000 ALTER TABLE `fact_incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_property`
--

DROP TABLE IF EXISTS `fact_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_property` (
  `countProperty` int(11) NOT NULL DEFAULT '-1',
  `FK_Body_SK` int(11) NOT NULL,
  `FK_Property_SK` int(11) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`FK_Property_SK`,`FK_Body_SK`),
  KEY `fk_Fact_Property_Dim_Body1_idx` (`FK_Body_SK`),
  KEY `fk_Fact_Property_Dim_Property1_idx` (`FK_Property_SK`),
  CONSTRAINT `fk_Fact_Property_Dim_Body1` FOREIGN KEY (`FK_Body_SK`) REFERENCES `dim_body` (`body_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_Property_Dim_Property1` FOREIGN KEY (`FK_Property_SK`) REFERENCES `dim_property` (`property_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_property`
--

LOCK TABLES `fact_property` WRITE;
/*!40000 ALTER TABLE `fact_property` DISABLE KEYS */;
INSERT INTO `fact_property` VALUES (1,1,-1,'2013-05-16 16:46:11');
/*!40000 ALTER TABLE `fact_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_sample`
--

DROP TABLE IF EXISTS `fact_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fact_sample` (
  `countSample` int(11) NOT NULL DEFAULT '-1',
  `countOutstanding` int(11) NOT NULL,
  `durationOutstanding` int(11) NOT NULL DEFAULT '-1',
  `FK_DateSent_SK` int(11) NOT NULL,
  `FK_DateReceived_SK` int(11) NOT NULL,
  `FK_Sample_SK` int(11) NOT NULL,
  `FK_Body_SK` int(11) NOT NULL,
  `FK_Organisation_SK` int(11) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`FK_DateSent_SK`,`FK_DateReceived_SK`,`FK_Sample_SK`,`FK_Body_SK`,`FK_Organisation_SK`),
  KEY `fk_DateReceived_DateID_idx` (`FK_DateReceived_SK`),
  KEY `fk_Sample_SampleID_idx` (`FK_Sample_SK`),
  KEY `fk_Body_BodyID_idx` (`FK_Body_SK`),
  KEY `fk_DateSent_DateID_idx` (`FK_DateSent_SK`),
  KEY `fk_Fact_OutstandingResultsReport_Dim_OutstandingStatus1_idx` (`countOutstanding`),
  KEY `fk_Fact_OutstandingResultsReport_Dim_Organisation1_idx` (`FK_Organisation_SK`),
  CONSTRAINT `fk_Fact_OutstandingResultsReport_Date1` FOREIGN KEY (`FK_DateSent_SK`) REFERENCES `dim_date` (`date_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fact_OutstandingResultsReport_Dim_Organisation1` FOREIGN KEY (`FK_Organisation_SK`) REFERENCES `dim_organisation` (`organisation_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_OutstandingResults_Days1` FOREIGN KEY (`FK_DateReceived_SK`) REFERENCES `dim_date` (`date_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_OutstandingResults_Death1` FOREIGN KEY (`FK_Body_SK`) REFERENCES `dim_body` (`body_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_OutstandingResults_Samples1` FOREIGN KEY (`FK_Sample_SK`) REFERENCES `dim_sample` (`sample_SK`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_sample`
--

LOCK TABLES `fact_sample` WRITE;
/*!40000 ALTER TABLE `fact_sample` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'reporting database'
--
/*!50003 DROP FUNCTION IF EXISTS `getDateKey` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getDateKey`(`date` DATE) RETURNS int(8)
BEGIN
	RETURN DATE_FORMAT(`date`, '%Y%m%d');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_CALL_Procedures` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_CALL_Procedures`()
BEGIN
	
	SET @ex = 0;

	CALL `mydb_DUMP_staging`.`call_procedures`(@ex);
	
	IF @ex = 0 THEN

		CALL `reporting database`.`Transform_TRUNCATE_Dims`;
		CALL `reporting database`.`Transform_LOAD_Dims`(@ex);
		
		IF @ex = 0 THEN
			
			CALL `reporting database`.`Transform_TRUNCATE_Facts`;
			CALL `reporting database`.`Transform_LOAD_Facts`(@ex);

		END IF;
	END IF;

	SELECT @ex;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_Age` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_Age`()
BEGIN
	
	REPLACE INTO `reporting database`.`dim_age` (`age_SK`, `actualAge`, `ageBand`, `dateInserted`)
	VALUES (-1, -1, 'unknown', NOW());

	SET @ageStart = 0;
	WHILE @ageStart <= 120 DO

		INSERT INTO `reporting database`.`dim_age` (`actualAge`, `ageBand`, `dateInserted`)
			(SELECT @ageStart, 
				CASE 
					WHEN @ageStart <= 10 THEN '0-10' 
					WHEN @ageStart <= 20 THEN '11-20'
					WHEN @ageStart <= 30 THEN '21-30'
					WHEN @ageStart <= 40 THEN '31-40' 
					WHEN @ageStart <= 50 THEN '41-50' 
					WHEN @ageStart <= 60 THEN '51-60'
					WHEN @ageStart <= 70 THEN '61-70'
					WHEN @ageStart <= 80 THEN '71-80'
					WHEN @ageStart <= 90 THEN '81-90'
					WHEN @ageStart <= 100 THEN '91-100'
					ELSE '100+'
				END AS `ageBand`, NOW())
			ORDER BY @ageStart;

		SET @ageStart = @ageStart + 1;

	END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_Body` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_Body`()
BEGIN

	SET SQL_SAFE_UPDATES = 0;
		REPLACE INTO `reporting database`.`dim_body` (`body_SK`, `deathRegisterNumber_BK`, `name`, `identificationNumber`, `releasedTo`, `dateInserted`)
		VALUES (-1, -1, 'unknown', -1, 'unknown', NOW());
	SET SQL_SAFE_UPDATES = 1;
		
	INSERT INTO `reporting database`.`dim_body` (`deathRegisterNumber_BK`, `name`, `identificationNumber`, `releasedTo`, `dateInserted`)
		SELECT DISTINCT `idDeathRegisterNumber`, IFNULL(`nameOfDeceased`, 'unknown'), IFNULL(IFNULL(`ID`,`passport`), 'unknown'), IFNULL(`bodyReleasedTo`, 'unknown'), NOW()		
			FROM `mydb_DUMP_Staging`.`body` AS `staging_Body`
				LEFT JOIN `reporting database`.`dim_body` AS `etl_Body` ON `etl_Body`.`deathRegisterNumber_BK` = `staging_Body`.`idDeathRegisterNumber`
					WHERE ISNULL(`etl_Body`.`body_SK`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_BodyStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_BodyStatus`()
BEGIN

	REPLACE INTO `reporting database`.`dim_bodystatus` (`bodyStatus_SK`,`bodyStatus_BK`, `bodyStatusDescription`, `dateInserted`)
		VALUES (2, 1, 'identified', NOW()), (1, 0, 'unidentified', NOW()), (-1, -1, 'unknown', NOW());

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_Caller` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_Caller`()
BEGIN

	REPLACE INTO `reporting database`.`dim_caller` (`caller_SK`, `callerName`, `callerContact`, `dateInserted`)
			VALUES (-1, 'unknown', 'unknown', NOW());

	INSERT INTO `reporting database`.`dim_caller` (`callerName`, `callerContact`, `dateInserted`)
		SELECT IFNULL(`nameOfCaller`, 'unknown'), IFNULL(`numberOfCaller`, 'unknown'), NOW()
			FROM `mydb_DUMP_Staging`.`deathcall` AS `staging_DeathCall`
				LEFT JOIN `reporting database`.`dim_caller` AS `etl_Caller` ON `etl_Caller`.`callerName` = `staging_DeathCall`.`nameOfCaller`
					WHERE ISNULL(`etl_Caller`.`caller_SK`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_Date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_Date`(`dateStart` DATE, `dateEnd` DATETIME)
BEGIN
	
	REPLACE INTO `reporting database`.`dim_date`(
		`date_SK`, 
		`dateStamp`, 
		`CalenderYearKey`, 
		`CalenderMonthKey`, 
		`CalenderDayKey`, 
		`CalenderMonthDescription`, 
		`CalenderDayDescription`)

	VALUES (
		'19000101', 
		'1900-01-01', 
		-1, 
		-1, 
		-1, 
		'unknown', 
		'unknown');
			
	WHILE `dateStart` <= `dateEnd` DO

		REPLACE INTO `reporting database`.`dim_date`(
			`date_SK`, 
			`dateStamp`, 
			`CalenderYearKey`, 
			`CalenderMonthKey`, 
			`CalenderDayKey`, 
			`CalenderMonthDescription`, 
			`CalenderDayDescription`)

		VALUES (
			`reporting database`.`getDateKey`(`dateStart`), 
			DATE(`dateStart`), 
			YEAR(`dateStart`), 
			MONTH(`dateStart`), 
			DAY(`dateStart`), 
			MONTHNAME(`dateStart`), 
			DAYNAME(`dateStart`));
	
		SET `dateStart` = ADDDATE(`dateStart`, INTERVAL 1 DAY);

	END WHILE;	
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_Employee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_Employee`()
BEGIN

	REPLACE INTO `reporting database`.`dim_employee` (`employee_SK`, `persalNumber`, `employeeName`, `dateInserted`)
			VALUES (-1, -1, 'unknown', NOW());
	
	INSERT INTO `reporting database`.`dim_employee` (`persalNumber`, `employeeName`, `dateInserted`)
		SELECT DISTINCT `personnelNumber`, IFNULL(`name`, 'unknown'), NOW()
			FROM `mydb_DUMP_Staging`.`employee` AS `staging_Employee`
				LEFT JOIN `reporting database`.`dim_employee` AS `etl_Employee` ON `etl_Employee`.`persalNumber` = `staging_Employee`.`personnelNumber`
					WHERE ISNULL(`etl_Employee`.`employee_SK`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_Event` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_Event`()
BEGIN

	REPLACE INTO `reporting database`.`dim_event` (`event_SK`, `eventID_BK`, `eventMessage`, `dateInserted`)
		VALUES (-1, -1, 'unknown', NOW());
	
	INSERT INTO `reporting database`.`dim_event` (`eventID_BK`, `eventMessage`, `dateInserted`)
		SELECT DISTINCT `idAuditTrail`, IFNULL(`staging_AuditTrail`.`eventMessage`, 'unknown'), NOW()
			FROM `mydb_DUMP_Staging`.`audittrail` AS `staging_AuditTrail`
				LEFT JOIN `reporting database`.`dim_event` AS `etl_Event` ON `etl_Event`.`eventID_BK` = `staging_AuditTrail`.`idAuditTrail`
					WHERE ISNULL(`etl_Event`.`event_SK`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_EventLocation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_EventLocation`()
BEGIN

	REPLACE INTO `reporting database`.`dim_eventlocation` (`location_SK`, `locationName`, `dateInserted`)
		VALUES (-1, 'unknown', NOW());
	
	INSERT INTO `reporting database`.`dim_eventlocation` (`locationName`, `dateInserted`)
		SELECT DISTINCT IFNULL(`eventLocation`, 'unknown'), NOW()
			FROM `mydb_DUMP_Staging`.`audittrail` AS `staging_AuditTrail`
				LEFT JOIN `reporting database`.`dim_eventlocation` AS `etl_EventLocation` ON `etl_EventLocation`.`locationName` = `staging_AuditTrail`.`eventLocation`
					WHERE ISNULL(`etl_EventLocation`.`location_SK`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_EventType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_EventType`()
BEGIN

	REPLACE INTO `reporting database`.`dim_eventtype` (`type_SK`, `typeDescription`, `dateInserted`)
		VALUES (-1, 'unknown', NOW());
	
	INSERT INTO `reporting database`.`dim_eventtype` (`typeDescription`, `dateInserted`)
		SELECT DISTINCT IFNULL(`eventType`, 'unknown'), NOW()
			FROM `mydb_DUMP_Staging`.`audittrail` AS `staging_AuditTrail`
				LEFT JOIN `reporting database`.`dim_eventtype` AS `etl_EventType` ON `etl_EventType`.`typeDescription` = `staging_AuditTrail`.`eventType`
					WHERE ISNULL(`etl_EventType`.`type_SK`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_Facility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_Facility`()
BEGIN

	REPLACE INTO `reporting database`.`dim_facility` (`facility_SK`, `facilityID_BK`, `facilityTotalStorageCapacity`, `facilityName`, `dateInserted`)
		VALUES (-1, -1, -1, 'unknown', NOW());
	
	INSERT INTO `reporting database`.`dim_facility` (`facilityID_BK`, `facilityTotalStorageCapacity`, `facilityName`, `dateInserted`)
		SELECT DISTINCT `idBodyStorage`, `numberOfBins` ,`nameOfMortuary`, NOW()
			FROM `mydb_DUMP_Staging`.`bodystorage` AS `staging_BodyStorage`
				LEFT JOIN `reporting database`.`dim_facility` AS `etl_Facility` ON `etl_Facility`.`facilityID_BK` = `staging_BodyStorage`.`idBodyStorage`
					WHERE ISNULL(`etl_Facility`.`facility_SK`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_Gender` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_Gender`()
BEGIN
	
	REPLACE INTO `reporting database`.`dim_gender` (`gender_SK`, `genderDescription`, `dateInserted`)
		VALUES (1, 'female', NOW()), (2, 'male', NOW()), (-1, 'unknown', NOW());

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_Incident` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_Incident`()
BEGIN

	REPLACE INTO `reporting database`.`dim_incident` (`incident_SK`, `incidentNumber_BK`, `SAPSReference`, `specialCircumstance`, `dateInserted`)
		VALUES (-1, 'unknown', 'unknown', 'unknown', NOW());
	
	INSERT INTO `reporting database`.`dim_incident` (`incidentNumber_BK`, `SAPSReference`, `specialCircumstance`, `dateInserted`)
		SELECT DISTINCT `incidentLogNumber`, IFNULL(`referenceNumber`, 'unknown'), IFNULL(`specialCircumstances`, 'none'), NOW()
		FROM `mydb_DUMP_Staging`.`incident` AS `staging_Incident`
				LEFT JOIN `reporting database`.`dim_incident` AS `etl_Incident` ON `etl_Incident`.`incidentNumber_BK` = `staging_Incident`.`incidentLogNumber`
					WHERE ISNULL(`etl_Incident`.`incident_SK`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_Kin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_Kin`()
BEGIN

	REPLACE INTO `reporting database`.`dim_kin` (`kin_SK`, `kinIdentificationNumber_BK`, `kinName`, `kinContact`, `dateInserted`)
		VALUES (-1, 'unknown', 'unknown', 'unknown', NOW());
	
	INSERT INTO `reporting database`.`dim_kin` (`kinIdentificationNumber_BK`, `kinName`, `kinContact`, `dateInserted`)
		SELECT DISTINCT IFNULL(IFNULL(`ID`,`passport`), 'unknown'), IFNULL(`name`,'unknown'), IFNULL(`contactNumber`,'unknown'), NOW()
		FROM `mydb_DUMP_Staging`.`kin` AS `staging_Kin`
				LEFT JOIN `reporting database`.`dim_kin` AS `etl_Kin` ON `etl_Kin`.`kinIdentificationNumber_BK` = IFNULL(`staging_Kin`.`ID`,`staging_Kin`.`passport`)
					WHERE ISNULL(`etl_Kin`.`kin_SK`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_Location` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_Location`()
BEGIN

	REPLACE INTO `reporting database`.`dim_location` (`location_SK`, `locationName`, `dateInserted`)
		VALUES (-1, 'unknown', NOW());
	
	INSERT INTO `reporting database`.`dim_location` (`locationName`, `dateInserted`)
		SELECT DISTINCT IFNULL(`placeOfDeath`, 'unknown'), NOW()
		FROM `mydb_DUMP_Staging`.`atscene` AS `staging_AtScene`
				LEFT JOIN `reporting database`.`dim_location` AS `etl_Location` ON `etl_Location`.`locationName` = `staging_AtScene`.`placeOfDeath`
					WHERE ISNULL(`etl_Location`.`location_SK`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_MannerOfDeath` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_MannerOfDeath`()
BEGIN

	REPLACE INTO `reporting database`.`dim_mannerofdeath` (`mannerOfDeath_SK`, `deathType`, `ICD10`, `dateInserted`)
		VALUES (-1, 'unknown', 'unknown', NOW());
	
	INSERT INTO `reporting database`.`dim_mannerofdeath` (`deathType`, `ICD10`, `dateInserted`)
		SELECT DISTINCT IFNULL(`staging_PostMortem`.`causeOfDeath`, 'unknown'), IFNULL(`staging_PostMortem`.`icd10`, -1), NOW()
		FROM `mydb_DUMP_Staging`.`postmortem` AS `staging_PostMortem`
				LEFT JOIN `reporting database`.`dim_mannerofdeath` AS `etl_MannerOfDeath` ON `etl_MannerOfDeath`.`deathType` = `staging_PostMortem`.`causeOfDeath`
					WHERE ISNULL(`etl_MannerOfDeath`.`mannerOfDeath_SK`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_Organisation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_Organisation`()
BEGIN

	REPLACE INTO `reporting database`.`dim_organisation` (`organisation_SK`, `organisationType`, `organisationName`, `dateInserted`)
		VALUES (-1, 'unknown', 'unknown', NOW());
	
	INSERT INTO `reporting database`.`dim_organisation` (`organisationType`, `organisationName`, `dateInserted`)
		SELECT DISTINCT `OrganizationType_type`, `name`, NOW()
			FROM `mydb_DUMP_Staging`.`organization` AS `staging_Organisation`
				LEFT JOIN `reporting database`.`dim_organisation` AS `etl_Organisation` ON `etl_Organisation`.`organisationName` = `staging_Organisation`.`name`
					WHERE ISNULL(`etl_Organisation`.`organisation_SK`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_PostMortem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_PostMortem`()
BEGIN

	REPLACE INTO `reporting database`.`dim_postmortem` (`postMortem_SK`, `postMortemID_BK`, `PostMortemDescription`, `dateInserted`)
		VALUES (-1, 'unknown', 'unknown', NOW());
	
	INSERT INTO `reporting database`.`dim_postmortem` (`postMortemID_BK`, `PostMortemDescription`, `dateInserted`)
		SELECT DISTINCT `labNumber`, IFNULL(`causeOfDeath`, 'unknown'), NOW()
			FROM `mydb_DUMP_Staging`.`postmortem` AS `staging_PostMortem`
				LEFT JOIN `reporting database`.`dim_postmortem` AS `etl_PostMortem` ON `etl_PostMortem`.`postMortemID_BK` = `staging_PostMortem`.`labNumber`
					WHERE ISNULL(`etl_PostMortem`.`postMortem_SK`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_Property` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_Property`()
BEGIN

	REPLACE INTO `reporting database`.`dim_property` (`property_SK`,`propertyID_BK`, `propertyType`, `propertyDescription`, `dateInserted`)
		VALUES (-1, -1, 'unknown', 'unknown', NOW());
	
	INSERT INTO `reporting database`.`dim_property` (`propertyID_BK`, `propertyType`, `propertyDescription`, `dateInserted`)
		SELECT DISTINCT `SealNumber`, IFNULL(`type`, 'unknown'), IFNULL(`description`, 'unknown'), NOW()
		FROM `mydb_DUMP_Staging`.`property` AS `staging_Property`
			LEFT JOIN `reporting database`.`dim_property` AS `etl_Property` ON `etl_Property`.`propertyID_BK` = `staging_Property`.`SealNumber`
					WHERE ISNULL(`etl_Property`.`property_SK`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_Sample` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_Sample`()
BEGIN

	REPLACE INTO `reporting database`.`dim_sample` (`sample_SK`, `sampleReference`, `sampleLabReference`, `analysisType`, `dateInserted`)
		VALUES (-1, -1, 'unknown', 'unknown', NOW());
	
	INSERT INTO `reporting database`.`dim_sample` (`sampleReference`, `sampleLabReference`, `analysisType`, `dateInserted`)
		SELECT DISTINCT `sealNumber`, IFNULL(`labNumber`, 'unknown'), IFNULL(`typeOfAnalysis`, 'unknown'), NOW()
			FROM `mydb_DUMP_Staging`.`forensicsample` AS `staging_ForensicSample`
			LEFT JOIN `reporting database`.`dim_sample` AS `etl_Sample` ON `etl_Sample`.`sampleReference` = `staging_ForensicSample`.`sealNumber`
				WHERE ISNULL(`etl_Sample`.`sample_SK`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_DIM_Status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_DIM_Status`()
BEGIN
	
	REPLACE INTO `reporting database`.`dim_status` (`status_SK`, `Status_BK`, `statusDescription`, `dateInserted`)
		VALUES (2, 1, 'true', NOW()), (1, 0, 'false', NOW()), (-1, -1, 'unknown', NOW());

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_FACT_AuditTrail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_FACT_AuditTrail`()
BEGIN

INSERT INTO `reporting database`.`fact_audittrail`(
	`countEvent`, 
	`countWarning`,
	`countError`,
	`FK_Employee_SK`, 
	`FK_EventLocation_SK`,   
	`FK_EventType_SK`,  
	`FK_Event_SK`, 
	`FK_DateOccured_SK`, 
	`dateInserted`)

	SELECT 
		IF(`etl_EventType`.`typeDescription` = 'event', 1, 0),
		IF(`etl_EventType`.`typeDescription` = 'warning', 1, 0),
		IF(`etl_EventType`.`typeDescription` = 'error', 1, 0),
		IFNULL(`etl_Employee`.`employee_SK`, -1),
		IFNULL(`etl_EventLocation`.`location_SK`, -1),
		IFNULL(`etl_EventType`.`type_SK`, -1),
		IFNULL(`etl_Event`.`event_SK`, -1),
		IFNULL(`etl_DateOccured`.`date_SK`, '19000101'), 
		NOW()

		FROM `mydb_dump_staging`.`audittrail` AS `staging_AuditTrail`
			LEFT JOIN `reporting database`.`dim_event` AS `etl_Event` ON (`etl_Event`.`eventID_BK` = `staging_AuditTrail`.`idAuditTrail`)
			LEFT JOIN `reporting database`.`dim_eventlocation` AS `etl_EventLocation` ON (`etl_EventLocation`.`locationName` = `staging_AuditTrail`.`eventLocation`)
			LEFT JOIN `reporting database`.`dim_eventtype` AS `etl_EventType` ON (`etl_EventType`.`typeDescription` = `staging_AuditTrail`.`eventType`)
			LEFT JOIN `reporting database`.`dim_date` AS `etl_DateOccured` ON (`etl_DateOccured`.`date_SK` = `reporting database`.`getDateKey`(`staging_AuditTrail`.`date`))
			LEFT JOIN `reporting database`.`dim_employee` AS `etl_Employee` ON (`etl_Employee`.`persalNumber` = `staging_AuditTrail`.`currentUser`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_FACT_Body` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_FACT_Body`()
BEGIN

INSERT INTO `reporting database`.`fact_body` (
	`countBody`, 
	`durationBodyStored`, 
	`FK_Incident_SK`, 
	`FK_Body_SK`, 
	`FK_Kin_SK`,
	`FK_Organisation_SK`,
	`FK_Gender_SK`, 
	`FK_Age_SK`, 
	`FK_MannerOfDeath_SK`, 
	`FK_Location`, 
	`FK_PostMortem_SK`, 
	`Fk_BodyStatus_SK`, 
	`FK_DateReceived_SK`, 
	`FK_DateReleased_SK`, 
	`FK_SamplesStatus_SK`, 
	`FK_PostMortemStatus_SK`,  
	`dateInserted`) 

	SELECT 1, 
		IFNULL(DATEDIFF(IFNULL(`etl_DateReleased`.`dateStamp`, NOW()), `etl_DateReceived`.`dateStamp`), -1) AS `DurationStored`,
		IFNULL(`etl_Incident`.`incident_SK`, -1),
		IFNULL(`etl_Body`.`body_SK`, -1),
		IFNULL(`etl_Kin`.`kin_SK`, -1),
		IFNULL(`etl_Organisation`.`organisation_SK`, -1),
		IFNULL(`etl_Gender`.`gender_SK`, -1),
		IFNULL(`etl_Age`.`age_SK`, -1),
		IFNULL(`etl_MannerOfDeath`.`mannerofdeath_SK`, -1),
		IFNULL(`etl_Location`.`location_SK`, -1),
		IFNULL(`etl_PostMortem`.`postMortem_SK`, -1),
		IFNULL(`etl_BodyStatus`.`bodyStatus_SK`, -1),
		IFNULL(`etl_DateReceived`.`date_SK`, '19000101'),
		IFNULL(`etl_DateReleased`.`date_SK`, '19000101'),
		IFNULL(`etl_SampleStatus`.`status_SK`, -1),
		IFNULL(`etl_PostMortemStatus`.`status_SK`, -1), 
		NOW()

		FROM `mydb_dump_staging`.`body` AS `staging_Body`

			LEFT JOIN `mydb_dump_staging`.`kin` AS `staging_Kin` ON (`staging_Kin`.`Body_idDeathRegisterNumber` = `staging_Body`.`idDeathRegisterNumber`)
			LEFT JOIN `mydb_dump_staging`.`postmortem` AS `staging_PostMortem` ON (`staging_PostMortem`.`Body_idDeathRegisterNumber` = `staging_Body`.`idDeathRegisterNumber`)
			LEFT JOIN `mydb_dump_staging`.`bodyfile` AS `staging_BodyFile` ON (`staging_BodyFile`.`Body_idDeathRegisterNumber` = `staging_Body`.`idDeathRegisterNumber`)
			LEFT JOIN `mydb_dump_staging`.`incident` AS `staging_Incident` ON (`staging_Incident`.`incidentLogNumber` = `staging_Body`.`Incident_incidentLogNumber`)

			LEFT JOIN `reporting database`.`dim_body` AS `etl_Body` ON (`etl_Body`.`deathRegisterNumber_BK` = `staging_Body`.`idDeathRegisterNumber`)
			LEFT JOIN `reporting database`.`dim_incident` AS `etl_Incident` ON (`etl_Incident`.`incidentNumber_BK` = `staging_Body`.`Incident_incidentLogNumber`)
			LEFT JOIN `reporting database`.`dim_kin` AS `etl_Kin` ON (`etl_Kin`.`kinIdentificationNumber_BK` = IFNULL(`staging_Kin`.`ID`, `staging_Kin`.`passport`))
			LEFT JOIN `reporting database`.`dim_organisation` AS `etl_Organisation` ON (`etl_Organisation`.`organisationName` = `staging_Body`.`bodyReleasedTo`)
			LEFT JOIN `reporting database`.`dim_gender` AS `etl_Gender` ON (`etl_Gender`.`genderDescription` = `staging_Body`.`gender`)
			LEFT JOIN `reporting database`.`dim_age` AS `etl_Age` ON (`etl_Age`.`actualAge` = `staging_Body`.`ageOnDateFound`)
			LEFT JOIN `reporting database`.`dim_mannerofdeath` AS `etl_MannerOfDeath` ON (`etl_MannerOfDeath`.`deathtype` = `staging_Incident`.`circumstanceOfDeath`)
			LEFT JOIN `reporting database`.`dim_location` AS `etl_Location` ON (`etl_Location`.`locationName` = `staging_Incident`.`PlaceBodyFound`)
			LEFT JOIN `reporting database`.`dim_postmortem` AS `etl_PostMortem` ON (`etl_PostMortem`.`postMortemID_BK` = `staging_PostMortem`.`labNumber`)
			LEFT JOIN `reporting database`.`dim_bodystatus` AS `etl_BodyStatus` ON (`etl_BodyStatus`.`bodystatus_BK` = `staging_BodyFile`.`bodyIdentified`)
			LEFT JOIN `reporting database`.`dim_date` AS `etl_DateReceived` ON (`etl_DateReceived`.`date_SK` = `reporting database`.`getDateKey`(`staging_Body`.`dateBodyReceived`))
			LEFT JOIN `reporting database`.`dim_date` AS `etl_DateReleased` ON (`etl_DateReleased`.`date_SK` = `reporting database`.`getDateKey`(`staging_Body`.`dateBodyReleased`))
			LEFT JOIN `reporting database`.`dim_status` AS `etl_SampleStatus` ON (`etl_SampleStatus`.`Status_BK` = `staging_BodyFile`.`allSamplesReceived`)
			LEFT JOIN `reporting database`.`dim_status` AS `etl_PostMortemStatus` ON (`etl_PostMortemStatus`.`Status_BK` = `staging_BodyFile`.`postmortemComplete`);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_FACT_Incident` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_FACT_Incident`()
BEGIN

INSERT INTO `reporting database`.`fact_incident`(
	`countBody`, 
	`incidentDuration`, 
	`FK_Caller_SK`, 
	`FK_Incident_SK`, 
	`FK_MannerOfDeath_SK`, 
	`FK_Location_SK`, 
	`FK_Organisation_SK`, 
	`FK_DateOfIncident_SK`, 
	`FK_DateIncidentClosed_SK`, 
	`FK_IncidentStatus_SK`, 
	`dateInserted`)

	SELECT `staging_Incident`.`numberOfBodies`, 
		IFNULL(DATEDIFF(IFNULL(`etl_DateIncidentClosed`.`dateStamp`, NOW()), `etl_DateOfIncident`.`dateStamp`), -1) AS `DurationStored`, 
		IFNULL(`etl_Caller`.`caller_SK`, -1),
		IFNULL(`etl_Incident`.`incident_SK`, -1), 
		IFNULL(`etl_MannerOfDeath`.`mannerofdeath_SK`, -1),
		IFNULL(`etl_Location`.`location_SK`, -1),
		IFNULL(`etl_Organisation`.`organisation_SK`, -1),
		IFNULL(`etl_DateOfIncident`.`date_SK` , '19000101') AS `DateOpened`,
		IFNULL(`etl_DateIncidentClosed`.`date_SK`, '19000101') AS `DateClosed`,
		IFNULL(`etl_Status`.`status_SK`, -1),
		NOW()
		
		FROM `mydb_dump_staging`.`incident` AS `staging_Incident`
			LEFT JOIN `mydb_dump_staging`.`deathcall` AS `staging_DeathCall` ON (`staging_DeathCall`.`Incident_incidentLogNumber` = `staging_Incident`.`incidentLogNumber`)
			LEFT JOIN `reporting database`.`dim_incident` AS `etl_Incident` ON (`etl_Incident`.`incidentNumber_BK` = `staging_Incident`.`incidentLogNumber`)
			LEFT JOIN `reporting database`.`dim_location` AS `etl_Location` ON (`etl_Location`.`locationName` = `staging_Incident`.`PlaceBodyFound`)
			LEFT JOIN `reporting database`.`dim_mannerofdeath` AS `etl_MannerOfDeath` ON (`etl_MannerOfDeath`.`deathtype` = `staging_Incident`.`circumstanceOfDeath`)
			LEFT JOIN `reporting database`.`dim_status` AS `etl_Status` ON (`etl_Status`.`Status_BK` = `staging_Incident`.`status`)
			LEFT JOIN `reporting database`.`dim_date` AS `etl_DateOfIncident` ON (`etl_DateOfIncident`.`date_SK` = `reporting database`.`getDateKey`(`staging_Incident`.`dateofincident`))
			LEFT JOIN `reporting database`.`dim_date` AS `etl_DateIncidentClosed` ON (`etl_DateIncidentClosed`.`date_SK` = `reporting database`.`getDateKey`(`staging_Incident`.`dateincidentclosed`))
			LEFT JOIN `reporting database`.`dim_caller` AS `etl_Caller` ON (`etl_Caller`.`callerName` = `staging_DeathCall`.`nameofcaller`)
			LEFT JOIN `reporting database`.`dim_organisation` AS `etl_Organisation` ON (`etl_Organisation`.`organisationName` = `staging_DeathCall`.`institution`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_FACT_Property` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_FACT_Property`()
BEGIN

INSERT INTO `reporting database`.`fact_property`(
	`countProperty`, 
	`FK_Body_SK`, 
	`FK_Property_SK`, 
	`dateInserted`)

	SELECT 1, 
		IFNULL(`etl_Body`.`body_SK`, -1),
		IFNULL(`etl_Property`.`property_SK`, -1),
		NOW()

		FROM `mydb_dump_staging`.`body`  AS `staging_Body` 
			LEFT JOIN `mydb_dump_staging`.`property` AS `staging_Property` ON (`staging_Property`.`Body_idDeathRegisterNumber` = `staging_Body`.`idDeathRegisterNumber`)
			LEFT JOIN `reporting database`.`dim_body` AS `etl_Body`	ON (`etl_Body`.`deathRegisterNumber_BK` = `staging_Body`.`idDeathRegisterNumber`)
			LEFT JOIN `reporting database`.`dim_property` AS `etl_Property` ON (`etl_Property`.`propertyID_BK` = `staging_Property`.`SealNumber`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_FACT_Sample` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_FACT_Sample`()
BEGIN

INSERT INTO `reporting database`.`fact_sample`(
	`countSample`, 
	`countOutstanding`,
	`durationOutstanding`, 
	`FK_DateSent_SK`, 
	`FK_DateReceived_SK`, 
	`FK_Sample_SK`,  
	`FK_Body_SK`, 
	`FK_Organisation_SK`,
	`dateInserted`)

	SELECT 1, 
		`staging_ForensicSample`.`received`,
		IFNULL(DATEDIFF(IFNULL(`etl_DateReceived`.`dateStamp`, NOW()), `etl_DateSent`.`dateStamp`), -1) AS `DaysResultsOutstanding`, 
		IFNULL(`etl_DateSent`.`date_SK`, '19000101') AS `DateSent`,
		IFNULL(`etl_DateReceived`.`date_SK`, '19000101') AS `DateReceived`,
		IFNULL(`etl_Sample`.`sample_SK`, -1),
		IFNULL(`etl_Body`.`body_SK`, -1),
		IFNULL(`etl_Organisation`.`organisation_SK`, -1),
		NOW()
		
		FROM `mydb_dump_staging`.`forensicsample` AS `staging_ForensicSample`
			LEFT JOIN `reporting database`.`dim_sample` AS `etl_Sample` ON (`etl_Sample`.`sampleReference` = `staging_ForensicSample`.`sealNumber`)
			LEFT JOIN `reporting database`.`dim_organisation` AS `etl_Organisation` ON (`etl_Organisation`.`organisationName` = `staging_ForensicSample`.`institution`)
			LEFT JOIN `reporting database`.`dim_body` AS `etl_Body` ON (`etl_Body`.`deathRegisterNumber_BK` = `staging_ForensicSample`.`deathRegisterNumber`)			
			LEFT JOIN `reporting database`.`dim_date` AS `etl_DateSent` ON (`etl_DateSent`.`date_SK` = `reporting database`.`getDateKey`(`staging_ForensicSample`.`dateSent`))
			LEFT JOIN `reporting database`.`dim_date` AS `etl_DateReceived` ON (`etl_DateReceived`.`date_SK` = `reporting database`.`getDateKey`(`staging_ForensicSample`.`dateReceived`));

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_LOAD_Dims` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_LOAD_Dims`(OUT ex INT)
BEGIN

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN SET ex = -2; END;
	SET ex = 0;

	CALL `reporting database`.`Transform_DIM_Age`;
	CALL `reporting database`.`Transform_DIM_Body`;
	CALL `reporting database`.`Transform_DIM_BodyStatus`;
	CALL `reporting database`.`Transform_DIM_Caller`;
	CALL `reporting database`.`Transform_DIM_Date`('2013-01-01', ADDDATE(NOW(), INTERVAL 1 YEAR));
	CALL `reporting database`.`Transform_DIM_Employee`;
	CALL `reporting database`.`Transform_DIM_Event`;
	CALL `reporting database`.`Transform_DIM_EventLocation`;
	CALL `reporting database`.`Transform_DIM_EventType`;
	CALL `reporting database`.`Transform_DIM_Facility`;
	CALL `reporting database`.`Transform_DIM_Gender`;
	CALL `reporting database`.`Transform_DIM_Incident`;
	CALL `reporting database`.`Transform_DIM_Kin`;
	CALL `reporting database`.`Transform_DIM_Location`;
	CALL `reporting database`.`Transform_DIM_MannerOfDeath`;
	CALL `reporting database`.`Transform_DIM_Organisation`;
	CALL `reporting database`.`Transform_DIM_PostMortem`;
	CALL `reporting database`.`Transform_DIM_Property`;
	CALL `reporting database`.`Transform_DIM_Sample`;
	CALL `reporting database`.`Transform_DIM_Status`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_LOAD_Facts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_LOAD_Facts`(OUT ex INT)
BEGIN

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN SET ex = -3; END;
	SET ex = 0;

	CALL `reporting database`.`Transform_FACT_AuditTrail`;
	CALL `reporting database`.`Transform_FACT_Body`;
	CALL `reporting database`.`Transform_FACT_Incident`;	
	CALL `reporting database`.`Transform_FACT_Property`;
	CALL `reporting database`.`Transform_FACT_Sample`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_TRUNCATE_Dims` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_TRUNCATE_Dims`()
BEGIN

	SET FOREIGN_KEY_CHECKS = 0;

		TRUNCATE `reporting database`.`dim_age`;
		TRUNCATE `reporting database`.`dim_bodystatus`;
		TRUNCATE `reporting database`.`dim_date`;
		TRUNCATE `reporting database`.`dim_gender`;
		TRUNCATE `reporting database`.`dim_status`;

		TRUNCATE `reporting database`.`dim_body`;
		TRUNCATE `reporting database`.`dim_caller`;
		TRUNCATE `reporting database`.`dim_employee`;
		TRUNCATE `reporting database`.`dim_event`;
		TRUNCATE `reporting database`.`dim_eventlocation`;
		TRUNCATE `reporting database`.`dim_eventtype`;
		TRUNCATE `reporting database`.`dim_facility`;
		TRUNCATE `reporting database`.`dim_incident`;
		TRUNCATE `reporting database`.`dim_kin`;
		TRUNCATE `reporting database`.`dim_location`;
		TRUNCATE `reporting database`.`dim_mannerofdeath`;
		TRUNCATE `reporting database`.`dim_organisation`;
		TRUNCATE `reporting database`.`dim_postmortem`;
		TRUNCATE `reporting database`.`dim_property`;
		TRUNCATE `reporting database`.`dim_sample`;
		
	SET FOREIGN_KEY_CHECKS = 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transform_TRUNCATE_Facts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transform_TRUNCATE_Facts`()
BEGIN

	SET FOREIGN_KEY_CHECKS = 0;

		TRUNCATE `reporting database`.`fact_audittrail`;
		TRUNCATE `reporting database`.`fact_body`;
		TRUNCATE `reporting database`.`fact_incident`;
		TRUNCATE `reporting database`.`fact_property`;
		TRUNCATE `reporting database`.`fact_sample`;

	SET FOREIGN_KEY_CHECKS = 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-16 16:50:33
