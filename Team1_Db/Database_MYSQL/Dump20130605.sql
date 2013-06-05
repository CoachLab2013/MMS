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
  `bodyReceivedFromPerNumber` varchar(10) DEFAULT NULL,
  `bodyHandOverFromPerNumber` varchar(10) NOT NULL,
  `Body_idDeathRegisterNumber` varchar(45) NOT NULL,
  `idAtMortuary` int(11) NOT NULL AUTO_INCREMENT,
  `bodyHandOverFromOrganization` varchar(45) DEFAULT NULL,
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
  `sceneDateTime` datetime DEFAULT NULL,
  `pathOnScene` bit(1) NOT NULL,
  `allegedInjuryDateTime` datetime NOT NULL,
  `allegedDeathDateTime` datetime NOT NULL,
  `externalCircumstanceOfInjury` varchar(45) NOT NULL,
  `placeOfDeath` varchar(45) NOT NULL,
  `dateTimeBodyFound` datetime NOT NULL,
  `Body_idDeathRegisterNumber` varchar(45) NOT NULL,
  `idAtScene` int(11) NOT NULL AUTO_INCREMENT,
  `facilityDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`idAtScene`),
  KEY `fk_AtScene_Body1_idx` (`Body_idDeathRegisterNumber`),
  CONSTRAINT `fk_AtScene_Body1` FOREIGN KEY (`Body_idDeathRegisterNumber`) REFERENCES `body` (`idDeathRegisterNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atscene`
--

LOCK TABLES `atscene` WRITE;
/*!40000 ALTER TABLE `atscene` DISABLE KEYS */;
INSERT INTO `atscene` VALUES ('Scene 1','2013-06-04 09:43:00','','2013-06-04 09:43:00','2013-06-04 09:43:00','external circumstance 1',' afasf\r\nasf\r\nasf','2013-06-04 09:43:00','GP/DK//00001/2013',7,'2013-06-04 09:43:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=569 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audittrail`
--

LOCK TABLES `audittrail` WRITE;
/*!40000 ALTER TABLE `audittrail` DISABLE KEYS */;
INSERT INTO `audittrail` VALUES (529,'2013-06-04','07:45:38','Warning','Unsuccessfull log in','12345678','Log In Screen'),(530,'2013-06-04','07:45:49','Log In','Successfull log in','12345678','Log In Screen'),(531,'2013-06-04','08:25:17','Warning','Unsuccessfull log in','12345678','Log In Screen'),(532,'2013-06-04','08:25:30','Log In','Successfull log in','12345678','Log In Screen'),(533,'2013-06-04','08:33:55','Reset Password','User reset password','11111111','Forgot password page'),(534,'2013-06-04','08:35:25','Warning','Unsuccessfull log in','11111111','Log In Screen'),(535,'2013-06-04','08:35:43','Log In','Successfull log in','11111111','Log In Screen'),(536,'2013-06-04','08:39:10','Warning','Unsuccessfull log in','12345678','Log In Screen'),(537,'2013-06-04','08:39:26','Warning','Unsuccessfull log in','12345678','Log In Screen'),(538,'2013-06-04','08:39:38','Warning','Unsuccessfull log in','12345678','Log In Screen'),(539,'2013-06-04','08:40:23','Warning','Unsuccessfull log in','12345678','Log In Screen'),(540,'2013-06-04','08:40:34','Log In','Successfull log in','12345678','Log In Screen'),(541,'2013-06-04','08:42:50','Log Incident','Created new incident 00120130604','12345678','Log Incident Tab'),(542,'2013-06-04','08:42:57','Dispatch Vehicle','Dispatched vehicle ABC123GP','12345678','Log Incident Tab'),(543,'2013-06-04','08:47:06','Log Incident','Created new incident 00220130604','12345678','Log Incident Tab'),(544,'2013-06-04','08:51:41','Log In','Successfull log in','11111111','Log In Screen'),(545,'2013-06-04','08:54:24','Log In','Successfull log in','12345678','Log In Screen'),(546,'2013-06-04','08:56:07','Log In','Successfull log in','33333333','Log In Screen'),(547,'2013-06-04','08:56:53','Log In','Successfull log in','12345678','Log In Screen'),(548,'2013-06-04','09:03:50','Log In','Successfull log in','12345678','Log In Screen'),(549,'2013-06-04','09:10:11','Log In','Successfull log in','11111111','Log In Screen'),(550,'2013-06-04','09:36:33','Log In','Successfull log in','11111111','Log In Screen'),(551,'2013-06-04','09:39:33','Log In','Successfull log in','12345678','Log In Screen'),(552,'2013-06-04','09:41:24','Log Incident','Created new incident 00320130604','12345678','Log Incident Tab'),(553,'2013-06-04','09:41:32','Dispatch Vehicle','Dispatched vehicle ABC123GP','12345678','Log Incident Tab'),(554,'2013-06-04','09:41:51','Incident has been edited','Incident details of incident 00320130604 has been edited','12345678','Edit Incident Details Tab'),(555,'2013-06-04','09:42:05','Incident has been edited','Call details of incident 00320130604 has been edited','12345678','Edit Call Details Tab'),(556,'2013-06-04','09:43:05','Closed Incident','Closed incident 00120130604','12345678','Open Incidents Tab'),(557,'2013-06-04','10:28:35','Incident has been edited','Incident details of incident 00320130604 has been edited','12345678','Edit Incident Details Tab'),(558,'2013-06-04','12:22:59','Warning','Unsuccessfull log in','12345678','Log In Screen'),(559,'2013-06-04','12:23:18','Log In','Successfull log in','12345678','Log In Screen'),(560,'2013-06-04','12:28:42','Incident has been edited','Incident details of incident 00320130604 has been edited','12345678','Edit Incident Details Tab'),(561,'2013-06-04','12:29:06','Incident has been edited','Incident details of incident 00320130604 has been edited','12345678','Edit Incident Details Tab'),(562,'2013-06-04','12:54:24','Log In','Successfull log in','12345678','Log In Screen'),(563,'2013-06-04','12:56:53','Incident has been edited','Incident details of incident 00320130604 has been edited','12345678','Edit Incident Details Tab'),(564,'2013-06-04','13:17:21','Log In','Successfull log in','12345678','Log In Screen'),(565,'2013-06-05','07:49:07','Log In','Successfull log in','12345678','Log In Screen'),(566,'2013-06-05','07:50:23','Log In','Successfull log in','12345678','Log In Screen'),(567,'2013-06-05','07:58:31','Incident has been edited','Incident details of incident 00320130604 has been edited','12345678','Edit Incident Details Tab'),(568,'2013-06-05','10:17:03','Log In','Successfull log in','12345678','Log In Screen');
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
  `gender` varchar(45) DEFAULT NULL,
  `race` varchar(45) DEFAULT NULL,
  `assignedTo` varchar(45) DEFAULT NULL,
  `nameOfDeceased` varchar(45) DEFAULT NULL,
  `surnameOfDeceased` varchar(45) DEFAULT NULL,
  `placeOfBirth` varchar(45) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `ageOnDateFound` int(11) DEFAULT NULL,
  `maritalStatus` varchar(45) DEFAULT NULL,
  `occupation` varchar(45) DEFAULT NULL,
  `citizen` varchar(45) DEFAULT NULL,
  `maidenName` varchar(45) DEFAULT NULL,
  `identifiedDateTime` datetime DEFAULT NULL,
  `estimatedAgeYear` int(11) DEFAULT NULL,
  `estimatedAgeMonth` int(11) DEFAULT NULL,
  `ID` varchar(13) DEFAULT NULL,
  `passport` varchar(45) DEFAULT NULL,
  `bodyStatus` bit(1) DEFAULT NULL,
  `dateBodyReceived` datetime DEFAULT NULL,
  `bodyReleased` bit(1) DEFAULT NULL,
  `Incident_incidentLogNumber` varchar(45) NOT NULL,
  `bodyType` varchar(45) DEFAULT NULL,
  `dateBodyReleased` datetime DEFAULT NULL,
  `bodyReleasedTo` varchar(45) DEFAULT NULL,
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
INSERT INTO `body` VALUES ('GP/DK//00001/2013','Female','Asian','null','asc','asc','null','0000-00-00',13,'null','null','null','null','0000-00-00 00:00:00',0,0,'1234567890123','null','\0','0000-00-00 00:00:00','\0','00320130604','Full Body','0000-00-00 00:00:00','null');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodypart`
--

LOCK TABLES `bodypart` WRITE;
/*!40000 ALTER TABLE `bodypart` DISABLE KEYS */;
INSERT INTO `bodypart` VALUES (1,'Full Body'),(2,'Head'),(3,'Unknown');
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
INSERT INTO `deathcall` VALUES ('00120130604','04:03:00','2013-06-04','0821231234','Wits','456 Road Street\r\nSuburb\r\nJohannesburg','Gauteng','Region 1','Scene condition- description','Steve'),('00220130604','01:01:00','2013-06-04','0821231234','UJ','78 Round Road\r\nTriangle Place\r\nJohannesburg','Gauteng','Region 1','Details details details','Thabo'),('00320130604','04:07:00','2013-06-04','0821231234','asf',' saf\r\ndfd\r\nfgj\r\n','Gauteng','Region 1',' asfd\r\n','awf');
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
INSERT INTO `employee` VALUES ('6a3fd8ba2284770a7d949d14e92eebc6976bebc125cbe8662dfc3f25314ae930d9684d518c00f4609966033a20a929b4745fa41fa244af0a85c459a2033a2ef3','44444444','Thabo','Mbehki','Gauteng MMS','sheensin@gmail.com',1,'\0'),('864db1f57e19ea9e84a841bdd22279d738e3f493f04fc8794855c8e4611d2fe6cc0deddb3705d3a2f46626e695fe80057b422a2104f36a710e774b6c974e830a','11111111','User','UserSurname','Gauteng MMS','sheensin@gmail.com',4,''),('864db1f57e19ea9e84a841bdd22279d738e3f493f04fc8794855c8e4611d2fe6cc0deddb3705d3a2f46626e695fe80057b422a2104f36a710e774b6c974e830a','12345678','User2','UserSurname2','Pathologist','lnkokela@gmail.com',3,''),('864db1f57e19ea9e84a841bdd22279d738e3f493f04fc8794855c8e4611d2fe6cc0deddb3705d3a2f46626e695fe80057b422a2104f36a710e774b6c974e830a','22222222','Nkululeko','Mindu','Gauteng MMS','nkululeko.mindu@gmail.com',3,''),('864db1f57e19ea9e84a841bdd22279d738e3f493f04fc8794855c8e4611d2fe6cc0deddb3705d3a2f46626e695fe80057b422a2104f36a710e774b6c974e830a','33333333','John','Doe','Gauteng MMS','amarnewick@mweb.co.za',3,''),('fa59a25588447e1bee7246b1dc9a90ed2c2233bf506953282641985c96f0f5165c5d6be8515050b4e4cc0d04f06ecc055a4392e41064229b3d0d05fbed5ddc0f','33333333','Thabo','Smith','Gauteng MMS','sheensin@gmail.com',2,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externalcircumstance`
--

LOCK TABLES `externalcircumstance` WRITE;
/*!40000 ALTER TABLE `externalcircumstance` DISABLE KEYS */;
INSERT INTO `externalcircumstance` VALUES (1,'external circumstance 1'),(2,'external circumstance 2');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Female'),(2,'Male');
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
-- Table structure for table `icdlevel1`
--

DROP TABLE IF EXISTS `icdlevel1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icdlevel1` (
  `chapter` int(3) NOT NULL AUTO_INCREMENT,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`chapter`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icdlevel1`
--

LOCK TABLES `icdlevel1` WRITE;
/*!40000 ALTER TABLE `icdlevel1` DISABLE KEYS */;
INSERT INTO `icdlevel1` VALUES (1,'Certain infectious and parasitic diseases (A00-B99)'),(2,'Neoplasms (C00-D49)'),(3,'Diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism (D50-D89)'),(4,'Endocrine, nutritional and metabolic diseases (E00-E89)'),(5,'Mental and behavioral disorders (F01-F99)'),(6,'Diseases of the nervous system (G00-G99)'),(7,'Diseases of the eye and adnexa (H00-H59)'),(8,'Diseases of the ear and mastoid process (H60-H95)'),(9,'Diseases of the circulatory system (I00-I99)'),(10,'Diseases of the respiratory system (J00-J99)'),(11,'Diseases of the digestive system (K00-K94)'),(12,'Diseases of the skin and subcutaneous tissue (L00-L99)'),(13,'Diseases of the musculoskeletal system and connective tissue (M00-M99)'),(14,'Diseases of the genitourinary system (N00-N99)'),(15,'Pregnancy, childbirth and the puerperium (O00-O99)'),(16,'Certain conditions originating in the perinatal period (P00-P96)'),(17,'Congenital malformations, deformations and chromosomal abnormalities (Q00-Q99)'),(18,'Symptoms, signs and abnormal clinical and laboratory findings, not elsewhere classified (R00-R99)'),(19,'Injury, poisoning and certain other consequences of external causes (S00-T88)'),(20,'External causes of morbidity (V00-Y99)');
/*!40000 ALTER TABLE `icdlevel1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icdlevel2`
--

DROP TABLE IF EXISTS `icdlevel2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icdlevel2` (
  `idicdlevel2` int(10) NOT NULL AUTO_INCREMENT,
  `diag1_Id` varchar(10) NOT NULL,
  `description` varchar(200) NOT NULL,
  `ICDLevel1_chapter` int(11) NOT NULL,
  PRIMARY KEY (`idicdlevel2`,`diag1_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icdlevel2`
--

LOCK TABLES `icdlevel2` WRITE;
/*!40000 ALTER TABLE `icdlevel2` DISABLE KEYS */;
INSERT INTO `icdlevel2` VALUES (1,'A00','Cholera',1),(2,'A01','Typhoid and paratyphoid fevers',1),(3,'A02','Other salmonella infections',1),(4,'A03','Shigellosis',1),(5,'A04','Other bacterial intestinal infections',1),(6,'A05','Other bacterial foodborne intoxications, not elsewhere classified',1),(7,'A06','Amebiasis',1),(8,'A07','Other protozoal intestinal diseases',1),(9,'A08','Viral and other specified intestinal infections',1),(10,'A09','Infectious gastroenteritis and colitis, unspecified',1),(11,'A15','Respiratory tuberculosis',1),(12,'A17','Tuberculosis of nervous system',1),(13,'A18','Tuberculosis of other organs',1),(14,'A19','Miliary tuberculosis',1),(15,'A20','Plague',1),(16,'A21','Tularemia',1),(17,'A22','Anthrax',1),(18,'A23','Brucellosis',1),(19,'A24','Glanders and melioidosis',1),(20,'A25','Rat-bite fevers',1),(21,'A26','Erysipeloid',1),(22,'A27','Leptospirosis',1),(23,'A28','Other zoonotic bacterial diseases, not elsewhere classified',1),(24,'A30','Leprosy [Hansen\'s disease]',1),(25,'A31','Infection due to other mycobacteria',1),(26,'A32','Listeriosis',1),(27,'A33','Tetanus neonatorum',1),(28,'A34','Obstetrical tetanus',1),(29,'A35','Other tetanus',1),(30,'A36','Diphtheria',1),(31,'A37','Whooping cough',1),(32,'A38','Scarlet fever',1),(33,'A39','Meningococcal infection',1),(34,'A40','Streptococcal sepsis',1),(35,'A41','Other sepsis',1),(36,'A42','Actinomycosis',1),(37,'A43','Nocardiosis',1),(38,'A44','Bartonellosis',1),(39,'A46','Erysipelas',1),(40,'A48','Other bacterial diseases, not elsewhere classified',1),(41,'A49','Bacterial infection of unspecified site',1),(42,'A50','Congenital syphilis',1),(43,'A51','Early syphilis',1),(44,'A52','Late syphilis',1),(45,'A53','Other and unspecified syphilis',1),(46,'A54','Gonococcal infection',1),(47,'A55','Chlamydial lymphogranuloma (venereum)',1),(48,'A56','Other sexually transmitted chlamydial diseases',1),(49,'A57','Chancroid',1),(50,'A58','Granuloma inguinale',1),(51,'A59','Trichomoniasis',1),(52,'A60','Anogenital herpesviral [herpes simplex] infections',1),(53,'A63','Other predominantly sexually transmitted diseases, not elsewhere classified',1),(54,'A64','Unspecified sexually transmitted disease',1),(55,'A65','Nonvenereal syphilis',1),(56,'A66','Yaws',1),(57,'A67','Pinta [carate]',1),(58,'A68','Relapsing fevers',1),(59,'A69','Other spirochetal infections',1),(60,'A70','Chlamydia psittaci infections',1),(61,'A71','Trachoma',1),(62,'A74','Other diseases caused by chlamydiae',1),(63,'A75','Typhus fever',1),(64,'A77','Spotted fever [tick-borne rickettsioses]',1),(65,'A78','Q fever',1),(66,'A79','Other rickettsioses',1),(67,'A80','Acute poliomyelitis',1),(68,'A81','Atypical virus infections of central nervous system',1),(69,'A82','Rabies',1),(70,'A83','Mosquito-borne viral encephalitis',1),(71,'A84','Tick-borne viral encephalitis',1),(72,'A85','Other viral encephalitis, not elsewhere classified',1),(73,'A86','Unspecified viral encephalitis',1),(74,'A87','Viral meningitis',1),(75,'A88','Other viral infections of central nervous system, not elsewhere classified',1),(76,'A89','Unspecified viral infection of central nervous system',1),(77,'A90','Dengue fever [classical dengue]',1),(78,'A91','Dengue hemorrhagic fever',1),(79,'A92','Other mosquito-borne viral fevers',1),(80,'A93','Other arthropod-borne viral fevers, not elsewhere classified',1),(81,'A94','Unspecified arthropod-borne viral fever',1),(82,'A95','Yellow fever',1),(83,'A96','Arenaviral hemorrhagic fever',1),(84,'A98','Other viral hemorrhagic fevers, not elsewhere classified',1),(85,'A99','Unspecified viral hemorrhagic fever',1),(86,'B00','Herpesviral [herpes simplex] infections',1),(87,'B01','Varicella [chickenpox]',1),(88,'B02','Zoster [herpes zoster]',1),(89,'B03','Smallpox',1),(90,'B04','Monkeypox',1),(91,'B05','Measles',1),(92,'B06','Rubella [German measles]',1),(93,'B07','Viral warts',1),(94,'B08','Other viral infections characterized by skin and mucous membrane lesions, not elsewhere classified',1),(95,'B09','Unspecified viral infection characterized by skin and mucous membrane lesions',1),(96,'B10','Other human herpesviruses',1),(97,'B15','Acute hepatitis A',1),(98,'B16','Acute hepatitis B',1),(99,'B17','Other acute viral hepatitis',1),(100,'B18','Chronic viral hepatitis',1),(101,'B19','Unspecified viral hepatitis',1),(102,'B20','Human immunodeficiency virus [HIV] disease',1),(103,'B25','Cytomegaloviral disease',1),(104,'B26','Mumps',1),(105,'B27','Infectious mononucleosis',1),(106,'B30','Viral conjunctivitis',1),(107,'B33','Other viral diseases, not elsewhere classified',1),(108,'B34','Viral infection of unspecified site',1),(109,'B35','Dermatophytosis',1),(110,'B36','Other superficial mycoses',1),(111,'B37','Candidiasis',1),(112,'B38','Coccidioidomycosis',1),(113,'B39','Histoplasmosis',1),(114,'B40','Blastomycosis',1),(115,'B41','Paracoccidioidomycosis',1),(116,'B42','Sporotrichosis',1),(117,'B43','Chromomycosis and pheomycotic abscess',1),(118,'B44','Aspergillosis',1),(119,'B45','Cryptococcosis',1),(120,'B46','Zygomycosis',1),(121,'B47','Mycetoma',1),(122,'B48','Other mycoses, not elsewhere classified',1),(123,'B49','Unspecified mycosis',1),(124,'B50','Plasmodium falciparum malaria',1),(125,'B51','Plasmodium vivax malaria',1),(126,'B52','Plasmodium malariae malaria',1),(127,'B53','Other specified malaria',1),(128,'B54','Unspecified malaria',1),(129,'B55','Leishmaniasis',1),(130,'B56','African trypanosomiasis',1),(131,'B57','Chagas\' disease',1),(132,'B58','Toxoplasmosis',1),(133,'B59','Pneumocystosis',1),(134,'B60','Other protozoal diseases, not elsewhere classified',1),(135,'B64','Unspecified protozoal disease',1),(136,'B65','Schistosomiasis [bilharziasis]',1),(137,'B66','Other fluke infections',1),(138,'B67','Echinococcosis',1),(139,'B68','Taeniasis',1),(140,'B69','Cysticercosis',1),(141,'B70','Diphyllobothriasis and sparganosis',1),(142,'B71','Other cestode infections',1),(143,'B72','Dracunculiasis',1),(144,'B73','Onchocerciasis',1),(145,'B74','Filariasis',1),(146,'B75','Trichinellosis',1),(147,'B76','Hookworm diseases',1),(148,'B77','Ascariasis',1),(149,'B78','Strongyloidiasis',1),(150,'B79','Trichuriasis',1),(151,'B80','Enterobiasis',1),(152,'B81','Other intestinal helminthiases, not elsewhere classified',1),(153,'B82','Unspecified intestinal parasitism',1),(154,'B83','Other helminthiases',1),(155,'B85','Pediculosis and phthiriasis',1),(156,'B86','Scabies',1),(157,'B87','Myiasis',1),(158,'B88','Other infestations',1),(159,'B89','Unspecified parasitic disease',1),(160,'B90','Sequelae of tuberculosis',1),(161,'B91','Sequelae of poliomyelitis',1),(162,'B92','Sequelae of leprosy',1),(163,'B94','Sequelae of other and unspecified infectious and parasitic diseases',1),(164,'B95','Streptococcus, Staphylococcus, and Enterococcus as the cause of diseases classified elsewhere',1),(165,'B96','Other bacterial agents as the cause of diseases classified elsewhere',1),(166,'B97','Viral agents as the cause of diseases classified elsewhere',1),(167,'B99','Other and unspecified infectious diseases',1),(168,'C00','Malignant neoplasm of lip',2),(169,'C01','Malignant neoplasm of base of tongue',2),(170,'C02','Malignant neoplasm of other and unspecified parts of tongue',2),(171,'C03','Malignant neoplasm of gum',2),(172,'C04','Malignant neoplasm of floor of mouth',2),(173,'C05','Malignant neoplasm of palate',2),(174,'C06','Malignant neoplasm of other and unspecified parts of mouth',2),(175,'C07','Malignant neoplasm of parotid gland',2),(176,'C08','Malignant neoplasm of other and unspecified major salivary glands',2),(177,'C09','Malignant neoplasm of tonsil',2),(178,'C10','Malignant neoplasm of oropharynx',2),(179,'C11','Malignant neoplasm of nasopharynx',2),(180,'C12','Malignant neoplasm of pyriform sinus',2),(181,'C13','Malignant neoplasm of hypopharynx',2),(182,'C14','Malignant neoplasm of other and ill-defined sites in the lip, oral cavity and pharynx',2),(183,'C15','Malignant neoplasm of esophagus',2),(184,'C16','Malignant neoplasm of stomach',2),(185,'C17','Malignant neoplasm of small intestine',2),(186,'C18','Malignant neoplasm of colon',2),(187,'C19','Malignant neoplasm of rectosigmoid junction',2),(188,'C20','Malignant neoplasm of rectum',2),(189,'C21','Malignant neoplasm of anus and anal canal',2),(190,'C22','Malignant neoplasm of liver and intrahepatic bile ducts',2),(191,'C23','Malignant neoplasm of gallbladder',2),(192,'C24','Malignant neoplasm of other and unspecified parts of biliary tract',2),(193,'C25','Malignant neoplasm of pancreas',2),(194,'C26','Malignant neoplasm of other and ill-defined digestive organs',2),(195,'C30','Malignant neoplasm of nasal cavity and middle ear',2),(196,'C31','Malignant neoplasm of accessory sinuses',2),(197,'C32','Malignant neoplasm of larynx',2),(198,'C33','Malignant neoplasm of trachea',2),(199,'C34','Malignant neoplasm of bronchus and lung',2),(200,'C37','Malignant neoplasm of thymus',2),(201,'C38','Malignant neoplasm of heart, mediastinum and pleura',2),(202,'C39','Malignant neoplasm of other and ill-defined sites in the respiratory system and intrathoracic organs',2),(203,'C40','Malignant neoplasm of bone and articular cartilage of limbs',2),(204,'C41','Malignant neoplasm of bone and articular cartilage of other and unspecified sites',2),(205,'C43','Malignant melanoma of skin',2),(206,'C4A','Merkel cell carcinoma',2),(207,'C44','Other malignant neoplasm of skin',2),(208,'C45','Mesothelioma',2),(209,'C46','Kaposi\'s sarcoma',2),(210,'C47','Malignant neoplasm of peripheral nerves and autonomic nervous system',2),(211,'C48','Malignant neoplasm of retroperitoneum and peritoneum',2),(212,'C49','Malignant neoplasm of other connective and soft tissue',2),(213,'C50','Malignant neoplasm of breast',2),(214,'C51','Malignant neoplasm of vulva',2),(215,'C52','Malignant neoplasm of vagina',2),(216,'C53','Malignant neoplasm of cervix uteri',2),(217,'C54','Malignant neoplasm of corpus uteri',2),(218,'C55','Malignant neoplasm of uterus, part unspecified',2),(219,'C56','Malignant neoplasm of ovary',2),(220,'C57','Malignant neoplasm of other and unspecified female genital organs',2),(221,'C58','Malignant neoplasm of placenta',2),(222,'C60','Malignant neoplasm of penis',2),(223,'C61','Malignant neoplasm of prostate',2),(224,'C62','Malignant neoplasm of testis',2),(225,'C63','Malignant neoplasm of other and unspecified male genital organs',2),(226,'C64','Malignant neoplasm of kidney, except renal pelvis',2),(227,'C65','Malignant neoplasm of renal pelvis',2),(228,'C66','Malignant neoplasm of ureter',2),(229,'C67','Malignant neoplasm of bladder',2),(230,'C68','Malignant neoplasm of other and unspecified urinary organs',2),(231,'C69','Malignant neoplasm of eye and adnexa',2),(232,'C70','Malignant neoplasm of meninges',2),(233,'C71','Malignant neoplasm of brain',2),(234,'C72','Malignant neoplasm of spinal cord, cranial nerves and other parts of central nervous system',2),(235,'C73','Malignant neoplasm of thyroid gland',2),(236,'C74','Malignant neoplasm of adrenal gland',2),(237,'C75','Malignant neoplasm of other endocrine glands and related structures',2),(238,'C7A','Malignant neuroendocrine tumors',2),(239,'C7B','Secondary neuroendocrine tumors',2),(240,'C76','Malignant neoplasm of other and ill-defined sites',2),(241,'C77','Secondary and unspecified malignant neoplasm of lymph nodes',2),(242,'C78','Secondary malignant neoplasm of respiratory and digestive organs',2),(243,'C79','Secondary malignant neoplasm of other and unspecified sites',2),(244,'C80','Malignant neoplasm without specification of site',2),(245,'C81','Hodgkin lymphoma',2),(246,'C82','Follicular lymphoma',2),(247,'C83','Non-follicular lymphoma',2),(248,'C84','Mature T/NK-cell lymphomas',2),(249,'C85','Other specified and unspecified types of non-Hodgkin lymphoma',2),(250,'C86','Other specified types of T/NK-cell lymphoma',2),(251,'C88','Malignant immunoproliferative diseases and certain other B-cell lymphomas',2),(252,'C90','Multiple myeloma and malignant plasma cell neoplasms',2),(253,'C91','Lymphoid leukemia',2),(254,'C92','Myeloid leukemia',2),(255,'C93','Monocytic leukemia',2),(256,'C94','Other leukemias of specified cell type',2),(257,'C95','Leukemia of unspecified cell type',2),(258,'C96','Other and unspecified malignant neoplasms of lymphoid, hematopoietic and related tissue',2),(259,'D00','Carcinoma in situ of oral cavity, esophagus and stomach',2),(260,'D01','Carcinoma in situ of other and unspecified digestive organs',2),(261,'D02','Carcinoma in situ of middle ear and respiratory system',2),(262,'D03','Melanoma in situ',2),(263,'D04','Carcinoma in situ of skin',2),(264,'D05','Carcinoma in situ of breast',2),(265,'D06','Carcinoma in situ of cervix uteri',2),(266,'D07','Carcinoma in situ of other and unspecified genital organs',2),(267,'D09','Carcinoma in situ of other and unspecified sites',2),(268,'D10','Benign neoplasm of mouth and pharynx',2),(269,'D11','Benign neoplasm of major salivary glands',2),(270,'D12','Benign neoplasm of colon, rectum, anus and anal canal',2),(271,'D13','Benign neoplasm of other and ill-defined parts of digestive system',2),(272,'D14','Benign neoplasm of middle ear and respiratory system',2),(273,'D15','Benign neoplasm of other and unspecified intrathoracic organs',2),(274,'D16','Benign neoplasm of bone and articular cartilage',2),(275,'D17','Benign lipomatous neoplasm',2),(276,'D18','Hemangioma and lymphangioma, any site',2),(277,'D19','Benign neoplasm of mesothelial tissue',2),(278,'D20','Benign neoplasm of soft tissue of retroperitoneum and peritoneum',2),(279,'D21','Other benign neoplasms of connective and other soft tissue',2),(280,'D22','Melanocytic nevi',2),(281,'D23','Other benign neoplasms of skin',2),(282,'D24','Benign neoplasm of breast',2),(283,'D25','Leiomyoma of uterus',2),(284,'D26','Other benign neoplasms of uterus',2),(285,'D27','Benign neoplasm of ovary',2),(286,'D28','Benign neoplasm of other and unspecified female genital organs',2),(287,'D29','Benign neoplasm of male genital organs',2),(288,'D30','Benign neoplasm of urinary organs',2),(289,'D31','Benign neoplasm of eye and adnexa',2),(290,'D32','Benign neoplasm of meninges',2),(291,'D33','Benign neoplasm of brain and other parts of central nervous system',2),(292,'D34','Benign neoplasm of thyroid gland',2),(293,'D35','Benign neoplasm of other and unspecified endocrine glands',2),(294,'D36','Benign neoplasm of other and unspecified sites',2),(295,'D3A','Benign neuroendocrine tumors',2),(296,'D37','Neoplasm of uncertain behavior of oral cavity and digestive organs',2),(297,'D38','Neoplasm of uncertain behavior of middle ear and respiratory and intrathoracic organs',2),(298,'D39','Neoplasm of uncertain behavior of female genital organs',2),(299,'D40','Neoplasm of uncertain behavior of male genital organs',2),(300,'D41','Neoplasm of uncertain behavior of urinary organs',2),(301,'D42','Neoplasm of uncertain behavior of meninges',2),(302,'D43','Neoplasm of uncertain behavior of brain and central nervous system',2),(303,'D44','Neoplasm of uncertain behavior of endocrine glands',2),(304,'D45','Polycythemia vera',2),(305,'D46','Myelodysplastic syndromes',2),(306,'D47','Other neoplasms of uncertain behavior of lymphoid, hematopoietic and related tissue',2),(307,'D48','Neoplasm of uncertain behavior of other and unspecified sites',2),(308,'D49','Neoplasms of unspecified behavior',2),(309,'D50','Iron deficiency anemia',3),(310,'D51','Vitamin B12 deficiency anemia',3),(311,'D52','Folate deficiency anemia',3),(312,'D53','Other nutritional anemias',3),(313,'D55','Anemia due to enzyme disorders',3),(314,'D56','Thalassemia',3),(315,'D57','Sickle-cell disorders',3),(316,'D58','Other hereditary hemolytic anemias',3),(317,'D59','Acquired hemolytic anemia',3),(318,'D60','Acquired pure red cell aplasia [erythroblastopenia]',3),(319,'D61','Other aplastic anemias and other bone marrow failure syndromes',3),(320,'D62','Acute posthemorrhagic anemia',3),(321,'D63','Anemia in chronic diseases classified elsewhere',3),(322,'D64','Other anemias',3),(323,'D65','Disseminated intravascular coagulation [defibrination syndrome]',3),(324,'D66','Hereditary factor VIII deficiency',3),(325,'D67','Hereditary factor IX deficiency',3),(326,'D68','Other coagulation defects',3),(327,'D69','Purpura and other hemorrhagic conditions',3),(328,'D70','Neutropenia',3),(329,'D71','Functional disorders of polymorphonuclear neutrophils',3),(330,'D72','Other disorders of white blood cells',3),(331,'D73','Diseases of spleen',3),(332,'D74','Methemoglobinemia',3),(333,'D75','Other and unspecified diseases of blood and blood-forming organs',3),(334,'D76','Other specified diseases with participation of lymphoreticular and reticulohistiocytic tissue',3),(335,'D77','Other disorders of blood and blood-forming organs in diseases classified elsewhere',3),(336,'D78','Intraoperative and postprocedural complications of the spleen',3),(337,'D80','Immunodeficiency with predominantly antibody defects',3),(338,'D81','Combined immunodeficiencies',3),(339,'D82','Immunodeficiency associated with other major defects',3),(340,'D83','Common variable immunodeficiency',3),(341,'D84','Other immunodeficiencies',3),(342,'D86','Sarcoidosis',3),(343,'D89','Other disorders involving the immune mechanism, not elsewhere classified',3),(344,'E00','Congenital iodine-deficiency syndrome',4),(345,'E01','Iodine-deficiency related thyroid disorders and allied conditions',4),(346,'E02','Subclinical iodine-deficiency hypothyroidism',4),(347,'E03','Other hypothyroidism',4),(348,'E04','Other nontoxic goiter',4),(349,'E05','Thyrotoxicosis [hyperthyroidism]',4),(350,'E06','Thyroiditis',4),(351,'E07','Other disorders of thyroid',4),(352,'E08','Diabetes mellitus due to underlying condition',4),(353,'E09','Drug or chemical induced diabetes mellitus',4),(354,'E10','Type 1 diabetes mellitus',4),(355,'E11','Type 2 diabetes mellitus',4),(356,'E13','Other specified diabetes mellitus',4),(357,'E15','Nondiabetic hypoglycemic coma',4),(358,'E16','Other disorders of pancreatic internal secretion',4),(359,'E20','Hypoparathyroidism',4),(360,'E21','Hyperparathyroidism and other disorders of parathyroid gland',4),(361,'E22','Hyperfunction of pituitary gland',4),(362,'E23','Hypofunction and other disorders of the pituitary gland',4),(363,'E24','Cushing\'s syndrome',4),(364,'E25','Adrenogenital disorders',4),(365,'E26','Hyperaldosteronism',4),(366,'E27','Other disorders of adrenal gland',4),(367,'E28','Ovarian dysfunction',4),(368,'E29','Testicular dysfunction',4),(369,'E30','Disorders of puberty, not elsewhere classified',4),(370,'E31','Polyglandular dysfunction',4),(371,'E32','Diseases of thymus',4),(372,'E34','Other endocrine disorders',4),(373,'E35','Disorders of endocrine glands in diseases classified elsewhere',4),(374,'E36','Intraoperative complications of endocrine system',4),(375,'E40','Kwashiorkor',4),(376,'E41','Nutritional marasmus',4),(377,'E42','Marasmic kwashiorkor',4),(378,'E43','Unspecified severe protein-calorie malnutrition',4),(379,'E44','Protein-calorie malnutrition of moderate and mild degree',4),(380,'E45','Retarded development following protein-calorie malnutrition',4),(381,'E46','Unspecified protein-calorie malnutrition',4),(382,'E50','Vitamin A deficiency',4),(383,'E51','Thiamine deficiency',4),(384,'E52','Niacin deficiency [pellagra]',4),(385,'E53','Deficiency of other B group vitamins',4),(386,'E54','Ascorbic acid deficiency',4),(387,'E55','Vitamin D deficiency',4),(388,'E56','Other vitamin deficiencies',4),(389,'E58','Dietary calcium deficiency',4),(390,'E59','Dietary selenium deficiency',4),(391,'E60','Dietary zinc deficiency',4),(392,'E61','Deficiency of other nutrient elements',4),(393,'E63','Other nutritional deficiencies',4),(394,'E64','Sequelae of malnutrition and other nutritional deficiencies',4),(395,'E65','Localized adiposity',4),(396,'E66','Overweight and obesity',4),(397,'E67','Other hyperalimentation',4),(398,'E68','Sequelae of hyperalimentation',4),(399,'E70','Disorders of aromatic amino-acid metabolism',4),(400,'E71','Disorders of branched-chain amino-acid metabolism and fatty-acid metabolism',4),(401,'E72','Other disorders of amino-acid metabolism',4),(402,'E73','Lactose intolerance',4),(403,'E74','Other disorders of carbohydrate metabolism',4),(404,'E75','Disorders of sphingolipid metabolism and other lipid storage disorders',4),(405,'E76','Disorders of glycosaminoglycan metabolism',4),(406,'E77','Disorders of glycoprotein metabolism',4),(407,'E78','Disorders of lipoprotein metabolism and other lipidemias',4),(408,'E79','Disorders of purine and pyrimidine metabolism',4),(409,'E80','Disorders of porphyrin and bilirubin metabolism',4),(410,'E83','Disorders of mineral metabolism',4),(411,'E84','Cystic fibrosis',4),(412,'E85','Amyloidosis',4),(413,'E86','Volume depletion',4),(414,'E87','Other disorders of fluid, electrolyte and acid-base balance',4),(415,'E88','Other and unspecified metabolic disorders',4),(416,'E89','Postprocedural endocrine and metabolic complications and disorders, not elsewhere classified',4),(417,'F01','Vascular dementia',5),(418,'F02','Dementia in other diseases classified elsewhere',5),(419,'F03','Unspecified dementia',5),(420,'F04','Amnestic disorder due to known physiological condition',5),(421,'F05','Delirium due to known physiological condition',5),(422,'F06','Other mental disorders due to known physiological condition',5),(423,'F07','Personality and behavioral disorders due to known physiological condition',5),(424,'F09','Unspecified mental disorder due to known physiological condition',5),(425,'F10','Alcohol related disorders',5),(426,'F11','Opioid related disorders',5),(427,'F12','Cannabis related disorders',5),(428,'F13','Sedative, hypnotic, or anxiolytic related disorders',5),(429,'F14','Cocaine related disorders',5),(430,'F15','Other stimulant related disorders',5),(431,'F16','Hallucinogen related disorders',5),(432,'F17','Nicotine dependence',5),(433,'F18','Inhalant related disorders',5),(434,'F19','Other psychoactive substance related disorders',5),(435,'F20','Schizophrenia',5),(436,'F21','Schizotypal disorder',5),(437,'F22','Delusional disorders',5),(438,'F23','Brief psychotic disorder',5),(439,'F24','Shared psychotic disorder',5),(440,'F25','Schizoaffective disorders',5),(441,'F28','Other psychotic disorder not due to a substance or known physiological condition',5),(442,'F29','Unspecified psychosis not due to a substance or known physiological condition',5),(443,'F30','Manic episode',5),(444,'F31','Bipolar disorder',5),(445,'F32','Major depressive disorder, single episode',5),(446,'F33','Major depressive disorder, recurrent',5),(447,'F34','Persistent mood [affective] disorders',5),(448,'F39','Unspecified mood [affective] disorder',5),(449,'F40','Phobic anxiety disorders',5),(450,'F41','Other anxiety disorders',5),(451,'F42','Obsessive-compulsive disorder',5),(452,'F43','Reaction to severe stress, and adjustment disorders',5),(453,'F44','Dissociative and conversion disorders',5),(454,'F45','Somatoform disorders',5),(455,'F48','Other nonpsychotic mental disorders',5),(456,'F50','Eating disorders',5),(457,'F51','Sleep disorders not due to a substance or known physiological condition',5),(458,'F52','Sexual dysfunction not due to a substance or known physiological condition',5),(459,'F53','Puerperal psychosis',5),(460,'F54','Psychological and behavioral factors associated with disorders or diseases classified elsewhere',5),(461,'F55','Abuse of non-psychoactive substances',5),(462,'F59','Unspecified behavioral syndromes associated with physiological disturbances and physical factors',5),(463,'F60','Specific personality disorders',5),(464,'F63','Impulse disorders',5),(465,'F64','Gender identity disorders',5),(466,'F65','Paraphilias',5),(467,'F66','Other sexual disorders',5),(468,'F68','Other disorders of adult personality and behavior',5),(469,'F69','Unspecified disorder of adult personality and behavior',5),(470,'F70','Mild mental retardation',5),(471,'F71','Moderate mental retardation',5),(472,'F72','Severe mental retardation',5),(473,'F73','Profound mental retardation',5),(474,'F78','Other mental retardation',5),(475,'F79','Unspecified mental retardation',5),(476,'F80','Specific developmental disorders of speech and language',5),(477,'F81','Specific developmental disorders of scholastic skills',5),(478,'F82','Specific developmental disorder of motor function',5),(479,'F84','Pervasive developmental disorders',5),(480,'F88','Other disorders of psychological development',5),(481,'F89','Unspecified disorder of psychological development',5),(482,'F90','Attention-deficit hyperactivity disorders',5),(483,'F91','Conduct disorders',5),(484,'F93','Emotional disorders with onset specific to childhood',5),(485,'F94','Disorders of social functioning with onset specific to childhood and adolescence',5),(486,'F95','Tic disorder',5),(487,'F98','Other behavioral and emotional disorders with onset usually occurring in childhood and adolescence',5),(488,'F99','Mental disorder, not otherwise specified',5),(489,'G00','Bacterial meningitis, not elsewhere classified',6),(490,'G01','Meningitis in bacterial diseases classified elsewhere',6),(491,'G02','Meningitis in other infectious and parasitic diseases classified elsewhere',6),(492,'G03','Meningitis due to other and unspecified causes',6),(493,'G04','Encephalitis, myelitis and encephalomyelitis',6),(494,'G05','Encephalitis, myelitis and encephalomyelitis in diseases classified elsewhere',6),(495,'G06','Intracranial and intraspinal abscess and granuloma',6),(496,'G07','Intracranial and intraspinal abscess and granuloma in diseases classified elsewhere',6),(497,'G08','Intracranial and intraspinal phlebitis and thrombophlebitis',6),(498,'G09','Sequelae of inflammatory diseases of central nervous system',6),(499,'G10','Huntington\'s disease',6),(500,'G11','Hereditary ataxia',6),(501,'G12','Spinal muscular atrophy and related syndromes',6),(502,'G13','Systemic atrophies primarily affecting central nervous system in diseases classified elsewhere',6),(503,'G14','Postpolio syndrome',6),(504,'G20','Parkinson\'s disease',6),(505,'G21','Secondary parkinsonism',6),(506,'G23','Other degenerative diseases of basal ganglia',6),(507,'G24','Dystonia',6),(508,'G25','Other extrapyramidal and movement disorders',6),(509,'G26','Extrapyramidal and movement disorders in diseases classified elsewhere',6),(510,'G30','Alzheimer\'s disease',6),(511,'G31','Other degenerative diseases of nervous system, not elsewhere classified',6),(512,'G32','Other degenerative disorders of nervous system in diseases classified elsewhere',6),(513,'G35','Multiple sclerosis',6),(514,'G36','Other acute disseminated demyelination',6),(515,'G37','Other demyelinating diseases of central nervous system',6),(516,'G40','Epilepsy and recurrent seizures',6),(517,'G43','Migraine',6),(518,'G44','Other headache syndromes',6),(519,'G45','Transient cerebral ischemic attacks and related syndromes',6),(520,'G46','Vascular syndromes of brain in cerebrovascular diseases',6),(521,'G47','Sleep disorders',6),(522,'G50','Disorders of trigeminal nerve',6),(523,'G51','Facial nerve disorders',6),(524,'G52','Disorders of other cranial nerves',6),(525,'G53','Cranial nerve disorders in diseases classified elsewhere',6),(526,'G54','Nerve root and plexus disorders',6),(527,'G55','Nerve root and plexus compressions in diseases classified elsewhere',6),(528,'G56','Mononeuropathies of upper limb',6),(529,'G57','Mononeuropathies of lower limb',6),(530,'G58','Other mononeuropathies',6),(531,'G59','Mononeuropathy in diseases classified elsewhere',6),(532,'G60','Hereditary and idiopathic neuropathy',6),(533,'G61','Inflammatory polyneuropathy',6),(534,'G62','Other and unspecified polyneuropathies',6),(535,'G63','Polyneuropathy in diseases classified elsewhere',6),(536,'G64','Other disorders of peripheral nervous system',6),(537,'G65','Sequelae of inflammatory and toxic polyneuropathies',6),(538,'G70','Myasthenia gravis and other myoneural disorders',6),(539,'G71','Primary disorders of muscles',6),(540,'G72','Other and unspecified myopathies',6),(541,'G73','Disorders of myoneural junction and muscle in diseases classified elsewhere',6),(542,'G80','Cerebral palsy',6),(543,'G81','Hemiplegia and hemiparesis',6),(544,'G82','Paraplegia (paraparesis) and quadriplegia (quadriparesis)',6),(545,'G83','Other paralytic syndromes',6),(546,'G89','Pain, not elsewhere classified',6),(547,'G90','Disorders of autonomic nervous system',6),(548,'G91','Hydrocephalus',6),(549,'G92','Toxic encephalopathy',6),(550,'G93','Other disorders of brain',6),(551,'G94','Other disorders of brain in diseases classified elsewhere',6),(552,'G95','Other and unspecified diseases of spinal cord',6),(553,'G96','Other disorders of central nervous system',6),(554,'G97','Intraoperative and postprocedural complications and disorders of nervous system, not elsewhere classified',6),(555,'G98','Other disorders of nervous system not elsewhere classified',6),(556,'G99','Other disorders of nervous system in diseases classified elsewhere',6),(557,'H00','Hordeolum and chalazion',7),(558,'H01','Other inflammation of eyelid',7),(559,'H02','Other disorders of eyelid',7),(560,'H04','Disorders of lacrimal system',7),(561,'H05','Disorders of orbit',7),(562,'H10','Conjunctivitis',7),(563,'H11','Other disorders of conjunctiva',7),(564,'H15','Disorders of sclera',7),(565,'H16','Keratitis',7),(566,'H17','Corneal scars and opacities',7),(567,'H18','Other disorders of cornea',7),(568,'H20','Iridocyclitis',7),(569,'H21','Other disorders of iris and ciliary body',7),(570,'H22','Disorders of iris and ciliary body in diseases classified elsewhere',7),(571,'H25','Age-related cataract',7),(572,'H26','Other cataract',7),(573,'H27','Other disorders of lens',7),(574,'H28','Cataract in diseases classified elsewhere',7),(575,'H30','Chorioretinal inflammation',7),(576,'H31','Other disorders of choroid',7),(577,'H32','Chorioretinal disorders in diseases classified elsewhere',7),(578,'H33','Retinal detachments and breaks',7),(579,'H34','Retinal vascular occlusions',7),(580,'H35','Other retinal disorders',7),(581,'H36','Retinal disorders in diseases classified elsewhere',7),(582,'H40','Glaucoma',7),(583,'H42','Glaucoma in diseases classified elsewhere',7),(584,'H43','Disorders of vitreous body',7),(585,'H44','Disorders of globe',7),(586,'H46','Optic neuritis',7),(587,'H47','Other disorders of optic [2nd] nerve and visual pathways',7),(588,'H49','Paralytic strabismus',7),(589,'H50','Other strabismus',7),(590,'H51','Other disorders of binocular movement',7),(591,'H52','Disorders of refraction and accommodation',7),(592,'H53','Visual disturbances',7),(593,'H54','Blindness and low vision',7),(594,'H55','Nystagmus and other irregular eye movements',7),(595,'H57','Other disorders of eye and adnexa',7),(596,'H59','Intraoperative and postprocedural complications and disorders of eye and adnexa, not elsewhere classified',7),(597,'H60','Otitis externa',8),(598,'H61','Other disorders of external ear',8),(599,'H62','Disorders of external ear in diseases classified elsewhere',8),(600,'H65','Nonsuppurative otitis media',8),(601,'H66','Suppurative and unspecified otitis media',8),(602,'H67','Otitis media in diseases classified elsewhere',8),(603,'H68','Eustachian salpingitis and obstruction',8),(604,'H69','Other and unspecified disorders of Eustachian tube',8),(605,'H70','Mastoiditis and related conditions',8),(606,'H71','Cholesteatoma of middle ear',8),(607,'H72','Perforation of tympanic membrane',8),(608,'H73','Other disorders of tympanic membrane',8),(609,'H74','Other disorders of middle ear mastoid',8),(610,'H75','Other disorders of middle ear and mastoid in diseases classified elsewhere',8),(611,'H80','Otosclerosis',8),(612,'H81','Disorders of vestibular function',8),(613,'H82','Vertiginous syndromes in diseases classified elsewhere',8),(614,'H83','Other diseases of inner ear',8),(615,'H90','Conductive and sensorineural hearing loss',8),(616,'H91','Other and unspecified hearing loss',8),(617,'H92','Otalgia and effusion of ear',8),(618,'H93','Other disorders of ear, not elsewhere classified',8),(619,'H94','Other disorders of ear in diseases classified elsewhere',8),(620,'H95','Intraoperative and postprocedural complications and disorders of ear and mastoid process, not elsewhere classified',8),(621,'I00','Rheumatic fever without heart involvement',9),(622,'I01','Rheumatic fever with heart involvement',9),(623,'I02','Rheumatic chorea',9),(624,'I05','Rheumatic mitral valve diseases',9),(625,'I06','Rheumatic aortic valve diseases',9),(626,'I07','Rheumatic tricuspid valve diseases',9),(627,'I08','Multiple valve diseases',9),(628,'I09','Other rheumatic heart diseases',9),(629,'I10','Essential (primary) hypertension',9),(630,'I11','Hypertensive heart disease',9),(631,'I12','Hypertensive chronic kidney disease',9),(632,'I13','Hypertensive heart and chronic kidney disease',9),(633,'I15','Secondary hypertension',9),(634,'I20','Angina pectoris',9),(635,'I21','ST elevation (STEMI) and non-ST elevation (NSTEMI) myocardial infarction',9),(636,'I22','Subsequent ST elevation (STEMI) and non-ST elevation (NSTEMI) myocardial infarction',9),(637,'I23','Certain current complications following ST elevation (STEMI) and non-ST elevation (NSTEMI) myocardial infarction (within the 28 day period)',9),(638,'I24','Other acute ischemic heart diseases',9),(639,'I25','Chronic ischemic heart disease',9),(640,'I26','Pulmonary embolism',9),(641,'I27','Other pulmonary heart diseases',9),(642,'I28','Other diseases of pulmonary vessels',9),(643,'I30','Acute pericarditis',9),(644,'I31','Other diseases of pericardium',9),(645,'I32','Pericarditis in diseases classified elsewhere',9),(646,'I33','Acute and subacute endocarditis',9),(647,'I34','Nonrheumatic mitral valve disorders',9),(648,'I35','Nonrheumatic aortic valve disorders',9),(649,'I36','Nonrheumatic tricuspid valve disorders',9),(650,'I37','Nonrheumatic pulmonary valve disorders',9),(651,'I38','Endocarditis, valve unspecified',9),(652,'I39','Endocarditis and heart valve disorders in diseases classified elsewhere',9),(653,'I40','Acute myocarditis',9),(654,'I41','Myocarditis in diseases classified elsewhere',9),(655,'I42','Cardiomyopathy',9),(656,'I43','Cardiomyopathy in diseases classified elsewhere',9),(657,'I44','Atrioventricular and left bundle-branch block',9),(658,'I45','Other conduction disorders',9),(659,'I46','Cardiac arrest',9),(660,'I47','Paroxysmal tachycardia',9),(661,'I48','Atrial fibrillation and flutter',9),(662,'I49','Other cardiac arrhythmias',9),(663,'I50','Heart failure',9),(664,'I51','Complications and ill-defined descriptions of heart disease',9),(665,'I52','Other heart disorders in diseases classified elsewhere',9),(666,'I60','Nontraumatic subarachnoid hemorrhage',9),(667,'I61','Nontraumatic intracerebral hemorrhage',9),(668,'I62','Other and unspecified nontraumatic intracranial hemorrhage',9),(669,'I63','Cerebral infarction',9),(670,'I65','Occlusion and stenosis of precerebral arteries, not resulting in cerebral infarction',9),(671,'I66','Occlusion and stenosis of cerebral arteries, not resulting in cerebral infarction',9),(672,'I67','Other cerebrovascular diseases',9),(673,'I68','Cerebrovascular disorders in diseases classified elsewhere',9),(674,'I69','Sequelae of cerebrovascular disease',9),(675,'I70','Atherosclerosis',9),(676,'I71','Aortic aneurysm and dissection',9),(677,'I72','Other aneurysm',9),(678,'I73','Other peripheral vascular diseases',9),(679,'I74','Arterial embolism and thrombosis',9),(680,'I75','Atheroembolism',9),(681,'I76','Septic arterial embolism',9),(682,'I77','Other disorders of arteries and arterioles',9),(683,'I78','Diseases of capillaries',9),(684,'I79','Disorders of arteries, arterioles and capillaries in diseases classified elsewhere',9),(685,'I80','Phlebitis and thrombophlebitis',9),(686,'I81','Portal vein thrombosis',9),(687,'I82','Other venous embolism and thrombosis',9),(688,'I83','Varicose veins of lower extremities',9),(689,'I84','Hemorrhoids',9),(690,'I85','Esophageal varices',9),(691,'I86','Varicose veins of other sites',9),(692,'I87','Other disorders of veins',9),(693,'I88','Nonspecific lymphadenitis',9),(694,'I89','Other noninfective disorders of lymphatic vessels and lymph nodes',9),(695,'I95','Hypotension',9),(696,'I96','Gangrene, not elsewhere classified',9),(697,'I97','Intraoperative and postprocedural complications and disorders of circulatory system, not elsewhere classified',9),(698,'I99','Other and unspecified disorders of circulatory system',9),(699,'J00','Acute nasopharyngitis [common cold]',10),(700,'J01','Acute sinusitis',10),(701,'J02','Acute pharyngitis',10),(702,'J03','Acute tonsillitis',10),(703,'J04','Acute laryngitis and tracheitis',10),(704,'J05','Acute obstructive laryngitis [croup] and epiglottitis',10),(705,'J06','Acute upper respiratory infections of multiple and unspecified sites',10),(706,'J09','Influenza due to certain identified influenza viruses',10),(707,'J10','Influenza due to other identified influenza virus',10),(708,'J11','Influenza due to unidentified influenza virus',10),(709,'J12','Viral pneumonia, not elsewhere classified',10),(710,'J13','Pneumonia due to Streptococcus pneumoniae',10),(711,'J14','Pneumonia due to Hemophilus influenzae',10),(712,'J15','Bacterial pneumonia, not elsewhere classified',10),(713,'J16','Pneumonia due to other infectious organisms, not elsewhere classified',10),(714,'J17','Pneumonia in diseases classified elsewhere',10),(715,'J18','Pneumonia, unspecified organism',10),(716,'J20','Acute bronchitis',10),(717,'J21','Acute bronchiolitis',10),(718,'J22','Unspecified acute lower respiratory infection',10),(719,'J30','Vasomotor and allergic rhinitis',10),(720,'J31','Chronic rhinitis, nasopharyngitis and pharyngitis',10),(721,'J32','Chronic sinusitis',10),(722,'J33','Nasal polyp',10),(723,'J34','Other and unspecified disorders of nose and nasal sinuses',10),(724,'J35','Chronic diseases of tonsils and adenoids',10),(725,'J36','Peritonsillar abscess',10),(726,'J37','Chronic laryngitis and laryngotracheitis',10),(727,'J38','Diseases of vocal cords and larynx, not elsewhere classified',10),(728,'J39','Other diseases of upper respiratory tract',10),(729,'J40','Bronchitis, not specified as acute or chronic',10),(730,'J41','Simple and mucopurulent chronic bronchitis',10),(731,'J42','Unspecified chronic bronchitis',10),(732,'J43','Emphysema',10),(733,'J44','Other chronic obstructive pulmonary disease',10),(734,'J45','Asthma',10),(735,'J47','Bronchiectasis',10),(736,'J60','Coalworker\'s pneumoconiosis',10),(737,'J61','Pneumoconiosis due to asbestos and other mineral fibers',10),(738,'J62','Pneumoconiosis due to dust containing silica',10),(739,'J63','Pneumoconiosis due to other inorganic dusts',10),(740,'J64','Unspecified pneumoconiosis',10),(741,'J65','Pneumoconiosis associated with tuberculosis',10),(742,'J66','Airway disease due to specific organic dust',10),(743,'J67','Hypersensitivity pneumonitis due to organic dust',10),(744,'J68','Respiratory conditions due to inhalation of chemicals, gases, fumes and vapors',10),(745,'J69','Pneumonitis due to solids and liquids',10),(746,'J70','Respiratory conditions due to other external agents',10),(747,'J80','Acute respiratory distress syndrome',10),(748,'J81','Pulmonary edema',10),(749,'J82','Pulmonary eosinophilia, not elsewhere classified',10),(750,'J84','Other interstitial pulmonary diseases',10),(751,'J85','Abscess of lung and mediastinum',10),(752,'J86','Pyothorax',10),(753,'J90','Pleural effusion, not elsewhere classified',10),(754,'J91','Pleural effusion in conditions classified elsewhere',10),(755,'J92','Pleural plaque',10),(756,'J93','Pneumothorax',10),(757,'J94','Other pleural conditions',10),(758,'J95','Intraoperative and postprocedural complications and disorders of respiratory system, not elsewhere classified',10),(759,'J96','Respiratory failure, not elsewhere classified',10),(760,'J98','Other respiratory disorders',10),(761,'J99','Respiratory disorders in diseases classified elsewhere',10),(762,'K00','Disorders of tooth development and eruption',11),(763,'K01','Embedded and impacted teeth',11),(764,'K02','Dental caries',11),(765,'K03','Other diseases of hard tissues of teeth',11),(766,'K04','Diseases of pulp and periapical tissues',11),(767,'K05','Gingivitis and periodontal diseases',11),(768,'K06','Other disorders of gingiva and edentulous alveolar ridge',11),(769,'K08','Other disorders of teeth and supporting structures',11),(770,'K09','Cysts of oral region, not elsewhere classified',11),(771,'K11','Diseases of salivary glands',11),(772,'K12','Stomatitis and related lesions',11),(773,'K13','Other diseases of lip and oral mucosa',11),(774,'K14','Diseases of tongue',11),(775,'K20','Esophagitis',11),(776,'K21','Gastro-esophageal reflux disease',11),(777,'K22','Other diseases of esophagus',11),(778,'K23','Disorders of esophagus in diseases classified elsewhere',11),(779,'K25','Gastric ulcer',11),(780,'K26','Duodenal ulcer',11),(781,'K27','Peptic ulcer, site unspecified',11),(782,'K28','Gastrojejunal ulcer',11),(783,'K29','Gastritis and duodenitis',11),(784,'K30','Functional dyspepsia',11),(785,'K31','Other diseases of stomach and duodenum',11),(786,'K35','Acute appendicitis',11),(787,'K36','Other appendicitis',11),(788,'K37','Unspecified appendicitis',11),(789,'K38','Other diseases of appendix',11),(790,'K40','Inguinal hernia',11),(791,'K41','Femoral hernia',11),(792,'K42','Umbilical hernia',11),(793,'K43','Ventral hernia',11),(794,'K44','Diaphragmatic hernia',11),(795,'K45','Other abdominal hernia',11),(796,'K46','Unspecified abdominal hernia',11),(797,'K50','Crohn\'s disease [regional enteritis]',11),(798,'K51','Ulcerative colitis',11),(799,'K52','Other and unspecified noninfective gastroenteritis and colitis',11),(800,'K55','Vascular disorders of intestine',11),(801,'K56','Paralytic ileus and intestinal obstruction without hernia',11),(802,'K57','Diverticular disease of intestine',11),(803,'K58','Irritable bowel syndrome',11),(804,'K59','Other functional intestinal disorders',11),(805,'K60','Fissure and fistula of anal and rectal regions',11),(806,'K61','Abscess of anal and rectal regions',11),(807,'K62','Other diseases of anus and rectum',11),(808,'K63','Other diseases of intestine',11),(809,'K65','Peritonitis',11),(810,'K66','Other disorders of peritoneum',11),(811,'K67','Disorders of peritoneum in infectious diseases classified elsewhere',11),(812,'K68','Disorders of retroperitoneum',11),(813,'K70','Alcoholic liver disease',11),(814,'K71','Toxic liver disease',11),(815,'K72','Hepatic failure, not elsewhere classified',11),(816,'K73','Chronic hepatitis, not elsewhere classified',11),(817,'K74','Fibrosis and cirrhosis of liver',11),(818,'K75','Other inflammatory liver diseases',11),(819,'K76','Other diseases of liver',11),(820,'K77','Liver disorders in diseases classified elsewhere',11),(821,'K80','Cholelithiasis',11),(822,'K81','Cholecystitis',11),(823,'K82','Other diseases of gallbladder',11),(824,'K83','Other diseases of biliary tract',11),(825,'K85','Acute pancreatitis',11),(826,'K86','Other diseases of pancreas',11),(827,'K87','Disorders of gallbladder, biliary tract and pancreas in diseases classified elsewhere',11),(828,'K90','Intestinal malabsorption',11),(829,'K91','Intraoperative and postprocedural complications and disorders of digestive system, not elsewhere classified',11),(830,'K92','Other diseases of digestive system',11),(831,'K94','Complications of artificial openings of the digestive system',11),(832,'L00','Staphylococcal scalded skin syndrome',12),(833,'L01','Impetigo',12),(834,'L02','Cutaneous abscess, furuncle and carbuncle',12),(835,'L03','Cellulitis and acute lymphangitis',12),(836,'L04','Acute lymphadenitis',12),(837,'L05','Pilonidal cyst and sinus',12),(838,'L08','Other local infections of skin and subcutaneous tissue',12),(839,'L10','Pemphigus',12),(840,'L11','Other acantholytic disorders',12),(841,'L12','Pemphigoid',12),(842,'L13','Other bullous disorders',12),(843,'L14','Bullous disorders in diseases classified elsewhere',12),(844,'L20','Atopic dermatitis',12),(845,'L21','Seborrheic dermatitis',12),(846,'L22','Diaper dermatitis',12),(847,'L23','Allergic contact dermatitis',12),(848,'L24','Irritant contact dermatitis',12),(849,'L25','Unspecified contact dermatitis',12),(850,'L26','Exfoliative dermatitis',12),(851,'L27','Dermatitis due to substances taken internally',12),(852,'L28','Lichen simplex chronicus and prurigo',12),(853,'L29','Pruritus',12),(854,'L30','Other and unspecified dermatitis',12),(855,'L40','Psoriasis',12),(856,'L41','Parapsoriasis',12),(857,'L42','Pityriasis rosea',12),(858,'L43','Lichen planus',12),(859,'L44','Other papulosquamous disorders',12),(860,'L45','Papulosquamous disorders in diseases classified elsewhere',12),(861,'L49','Exfoliation due to erythematous conditions according to extent of body surface involved',12),(862,'L50','Urticaria',12),(863,'L51','Erythema multiforme',12),(864,'L52','Erythema nodosum',12),(865,'L53','Other erythematous conditions',12),(866,'L54','Erythema in diseases classified elsewhere',12),(867,'L55','Sunburn',12),(868,'L56','Other acute skin changes due to ultraviolet radiation',12),(869,'L57','Skin changes due to chronic exposure to nonionizing radiation',12),(870,'L58','Radiodermatitis',12),(871,'L59','Other disorders of skin and subcutaneous tissue related to radiation',12),(872,'L60','Nail disorders',12),(873,'L62','Nail disorders in diseases classified elsewhere',12),(874,'L63','Alopecia areata',12),(875,'L64','Androgenic alopecia',12),(876,'L65','Other nonscarring hair loss',12),(877,'L66','Cicatricial alopecia [scarring hair loss]',12),(878,'L67','Hair color and hair shaft abnormalities',12),(879,'L68','Hypertrichosis',12),(880,'L70','Acne',12),(881,'L71','Rosacea',12),(882,'L72','Follicular cysts of skin and subcutaneous tissue',12),(883,'L73','Other follicular disorders',12),(884,'L74','Eccrine sweat disorders',12),(885,'L75','Apocrine sweat disorders',12),(886,'L76','Intraoperative and postprocedural complications of skin and subcutaneous tissue',12),(887,'L80','Vitiligo',12),(888,'L81','Other disorders of pigmentation',12),(889,'L82','Seborrheic keratosis',12),(890,'L83','Acanthosis nigricans',12),(891,'L84','Corns and callosities',12),(892,'L85','Other epidermal thickening',12),(893,'L86','Keratoderma in diseases classified elsewhere',12),(894,'L87','Transepidermal elimination disorders',12),(895,'L88','Pyoderma gangrenosum',12),(896,'L89','Pressure ulcer',12),(897,'L90','Atrophic disorders of skin',12),(898,'L91','Hypertrophic disorders of skin',12),(899,'L92','Granulomatous disorders of skin and subcutaneous tissue',12),(900,'L93','Lupus erythematosus',12),(901,'L94','Other localized connective tissue disorders',12),(902,'L95','Vasculitis limited to skin, not elsewhere classified',12),(903,'L97','Non-pressure chronic ulcer of lower limb, not elsewhere classified',12),(904,'L98','Other disorders of skin and subcutaneous tissue, not elsewhere classified',12),(905,'L99','Other disorders of skin and subcutaneous tissue in diseases classified elsewhere',12),(906,'M00','Pyogenic arthritis',13),(907,'M01','Direct infections of joint in infectious and parasitic diseases classified elsewhere',13),(908,'M02','Postinfective and reactive arthropathies',13),(909,'M05','Rheumatoid arthritis with rheumatoid factor',13),(910,'M06','Other rheumatoid arthritis',13),(911,'M07','Enteropathic arthropathies',13),(912,'M08','Juvenile arthritis',13),(913,'M1A','Chronic gout',13),(914,'M10','Gout',13),(915,'M11','Other crystal arthropathies',13),(916,'M12','Other and unspecified arthropathy',13),(917,'M13','Other arthritis',13),(918,'M14','Arthropathies in other diseases classified elsewhere',13),(919,'M15','Polyosteoarthritis',13),(920,'M16','Osteoarthritis of hip',13),(921,'M17','Osteoarthritis of knee',13),(922,'M18','Osteoarthritis of first carpometacarpal joint',13),(923,'M19','Other and unspecified osteoarthritis',13),(924,'M20','Acquired deformities of fingers and toes',13),(925,'M21','Other acquired deformities of limbs',13),(926,'M22','Disorder of patella',13),(927,'M23','Internal derangement of knee',13),(928,'M24','Other specific joint derangements',13),(929,'M25','Other joint disorder, not elsewhere classified',13),(930,'M26','Dentofacial anomalies [including malocclusion]',13),(931,'M27','Other diseases of jaws',13),(932,'M30','Polyarteritis nodosa and related conditions',13),(933,'M31','Other necrotizing vasculopathies',13),(934,'M32','Systemic lupus erythematosus (SLE)',13),(935,'M33','Dermatopolymyositis',13),(936,'M34','Systemic sclerosis [scleroderma]',13),(937,'M35','Other systemic involvement of connective tissue',13),(938,'M36','Systemic disorders of connective tissue in diseases classified elsewhere',13),(939,'M40','Kyphosis and lordosis',13),(940,'M41','Scoliosis',13),(941,'M42','Spinal osteochondrosis',13),(942,'M43','Other deforming dorsopathies',13),(943,'M45','Ankylosing spondylitis',13),(944,'M46','Other inflammatory spondylopathies',13),(945,'M47','Spondylosis',13),(946,'M48','Other spondylopathies',13),(947,'M49','Spondylopathies in diseases classified elsewhere',13),(948,'M50','Cervical disc disorders',13),(949,'M51','Thoracic, thoracolumbar, and lumbosacral intervertebral disc disorders',13),(950,'M53','Other and unspecified dorsopathies, not elsewhere classified',13),(951,'M54','Dorsalgia',13),(952,'M60','Myositis',13),(953,'M61','Calcification and ossification of muscle',13),(954,'M62','Other disorders of muscle',13),(955,'M63','Disorders of muscle in diseases classified elsewhere',13),(956,'M65','Synovitis and tenosynovitis',13),(957,'M66','Spontaneous rupture of synovium and tendon',13),(958,'M67','Other disorders of synovium and tendon',13),(959,'M70','Soft tissue disorders related to use, overuse and pressure',13),(960,'M71','Other bursopathies',13),(961,'M72','Fibroblastic disorders',13),(962,'M75','Shoulder lesions',13),(963,'M76','Enthesopathies, lower limb, excluding foot',13),(964,'M77','Other enthesopathies',13),(965,'M79','Other and unspecified soft tissue disorders, not elsewhere classified',13),(966,'M80','Osteoporosis with current pathological fracture',13),(967,'M81','Osteoporosis without current pathological fracture',13),(968,'M83','Adult osteomalacia',13),(969,'M84','Disorder of continuity of bone',13),(970,'M85','Other disorders of bone density and structure',13),(971,'M86','Osteomyelitis',13),(972,'M87','Osteonecrosis',13),(973,'M88','Osteitis deformans [Paget\'s disease of bone]',13),(974,'M89','Other disorders of bone',13),(975,'M90','Osteopathies in diseases classified elsewhere',13),(976,'M91','Juvenile osteochondrosis of hip and pelvis',13),(977,'M92','Other juvenile osteochondrosis',13),(978,'M93','Other osteochondropathies',13),(979,'M94','Other disorders of cartilage',13),(980,'M95','Other acquired deformities of musculoskeletal system and connective tissue',13),(981,'M96','Intraoperative and postprocedural complications and disorders of musculoskeletal system, not elsewhere classified',13),(982,'M99','Biomechanical lesions, not elsewhere classified',13),(983,'N00','Acute nephritic syndrome',14),(984,'N01','Rapidly progressive nephritic syndrome',14),(985,'N02','Recurrent and persistent hematuria',14),(986,'N03','Chronic nephritic syndrome',14),(987,'N04','Nephrotic syndrome',14),(988,'N05','Unspecified nephritic syndrome',14),(989,'N06','Isolated proteinuria with specified morphological lesion',14),(990,'N07','Hereditary nephropathy, not elsewhere classified',14),(991,'N08','Glomerular disorders in diseases classified elsewhere',14),(992,'N10','Acute tubulo-interstitial nephritis',14),(993,'N11','Chronic tubulo-interstitial nephritis',14),(994,'N12','Tubulo-interstitial nephritis, not specified as acute or chronic',14),(995,'N13','Obstructive and reflux uropathy',14),(996,'N14','Drug- and heavy-metal-induced tubulo-interstitial and tubular conditions',14),(997,'N15','Other renal tubulo-interstitial diseases',14),(998,'N16','Renal tubulo-interstitial disorders in diseases classified elsewhere',14),(999,'N17','Acute kidney failure',14),(1000,'N18','Chronic kidney disease (CKD)',14);
/*!40000 ALTER TABLE `icdlevel2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icdlevel3`
--

DROP TABLE IF EXISTS `icdlevel3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icdlevel3` (
  `icd_level3_id` int(11) NOT NULL AUTO_INCREMENT,
  `diag1_Id` char(10) NOT NULL,
  `diag2_Id` char(10) NOT NULL,
  `description` varbinary(300) NOT NULL,
  PRIMARY KEY (`icd_level3_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icdlevel3`
--

LOCK TABLES `icdlevel3` WRITE;
/*!40000 ALTER TABLE `icdlevel3` DISABLE KEYS */;
INSERT INTO `icdlevel3` VALUES (1,'A00','A00.0','...'),(2,'A00','A00.1','...'),(3,'A00','A00.9','...'),(4,'A01','A01.0','...'),(5,'A01','A01.1','...'),(6,'A01','A01.2','...'),(7,'A01','A01.3','...'),(8,'A01','A01.4','...'),(9,'A02','A02.0','...'),(10,'A02','A02.1','...'),(11,'A02','A02.2','...'),(12,'A02','A02.8','...'),(13,'A02','A02.9','...'),(14,'A03','A03.0','...'),(15,'A03','A03.1','...'),(16,'A03','A03.2','...'),(17,'A03','A03.3','...'),(18,'A03','A03.8','...'),(19,'A03','A03.9','...'),(20,'A04','A04.0','...'),(21,'A04','A04.1','...'),(22,'A04','A04.2','...'),(23,'A04','A04.3','...'),(24,'A04','A04.4','...'),(25,'A04','A04.5','...'),(26,'A04','A04.6','...'),(27,'A04','A04.7','...'),(28,'A04','A04.8','...'),(29,'A04','A04.9','...'),(30,'A05','A05.0','...'),(31,'A05','A05.1','...'),(32,'A05','A05.2','...'),(33,'A05','A05.3','...'),(34,'A05','A05.4','...'),(35,'A05','A05.5','...'),(36,'A05','A05.8','...'),(37,'A05','A05.9','...'),(38,'A06','A06.0','...'),(39,'A06','A06.1','...'),(40,'A06','A06.2','...'),(41,'A06','A06.3','...'),(42,'A06','A06.4','...'),(43,'A06','A06.5','...'),(44,'A06','A06.6','...'),(45,'A06','A06.7','...'),(46,'A06','A06.8','...'),(47,'A06','A06.9','...'),(48,'A07','A07.0','...'),(49,'A07','A07.1','...'),(50,'A07','A07.2','...'),(51,'A07','A07.3','...'),(52,'A07','A07.4','...'),(53,'A07','A07.8','...'),(54,'A07','A07.9','...'),(55,'A08','A08.0','...'),(56,'A08','A08.1','...'),(57,'A08','A08.2','...'),(58,'A08','A08.3','...'),(59,'A08','A08.4','...'),(60,'A08','A08.8','...'),(61,'A15','A15.0','...'),(62,'A15','A15.4','...'),(63,'A15','A15.5','...'),(64,'A15','A15.6','...'),(65,'A15','A15.7','...'),(66,'A15','A15.8','...'),(67,'A15','A15.9','...'),(68,'A17','A17.0','...'),(69,'A17','A17.1','...'),(70,'A17','A17.8','...'),(71,'A17','A17.9','...'),(72,'A18','A18.0','...'),(73,'A18','A18.1','...'),(74,'A18','A18.2','...'),(75,'A18','A18.3','...'),(76,'A18','A18.4','...'),(77,'A18','A18.5','...'),(78,'A18','A18.6','...'),(79,'A18','A18.7','...'),(80,'A18','A18.8','...'),(81,'A19','A19.0','...'),(82,'A19','A19.1','...'),(83,'A19','A19.2','...'),(84,'A19','A19.8','...'),(85,'A19','A19.9','...'),(86,'A20','A20.0','...'),(87,'A20','A20.1','...'),(88,'A20','A20.2','...'),(89,'A20','A20.3','...'),(90,'A20','A20.7','...'),(91,'A20','A20.8','...'),(92,'A20','A20.9','...'),(93,'A21','A21.0','...'),(94,'A21','A21.1','...'),(95,'A21','A21.2','...'),(96,'A21','A21.3','...'),(97,'A21','A21.7','...'),(98,'A21','A21.8','...'),(99,'A21','A21.9','...'),(100,'A22','A22.0','...'),(101,'A22','A22.1','...'),(102,'A22','A22.2','...'),(103,'A22','A22.7','...'),(104,'A22','A22.8','...'),(105,'A22','A22.9','...'),(106,'A23','A23.0','...'),(107,'A23','A23.1','...'),(108,'A23','A23.2','...'),(109,'A23','A23.3','...'),(110,'A23','A23.8','...'),(111,'A23','A23.9','...'),(112,'A24','A24.0','...'),(113,'A24','A24.1','...'),(114,'A24','A24.2','...'),(115,'A24','A24.3','...'),(116,'A24','A24.9','...'),(117,'A25','A25.0','...'),(118,'A25','A25.1','...'),(119,'A25','A25.9','...'),(120,'A26','A26.0','...'),(121,'A26','A26.7','...'),(122,'A26','A26.8','...'),(123,'A26','A26.9','...'),(124,'A27','A27.0','...'),(125,'A27','A27.8','...'),(126,'A27','A27.9','...'),(127,'A28','A28.0','...'),(128,'A28','A28.1','...'),(129,'A28','A28.2','...'),(130,'A28','A28.8','...'),(131,'A28','A28.9','...'),(132,'A30','A30.0','...'),(133,'A30','A30.1','...'),(134,'A30','A30.2','...'),(135,'A30','A30.3','...'),(136,'A30','A30.4','...'),(137,'A30','A30.5','...'),(138,'A30','A30.8','...'),(139,'A30','A30.9','...'),(140,'A31','A31.0','...'),(141,'A31','A31.1','...'),(142,'A31','A31.2','...'),(143,'A31','A31.8','...'),(144,'A31','A31.9','...'),(145,'A32','A32.0','...'),(146,'A32','A32.1','...'),(147,'A32','A32.7','...'),(148,'A32','A32.8','...'),(149,'A32','A32.9','...'),(150,'A36','A36.0','...'),(151,'A36','A36.1','...'),(152,'A36','A36.2','...'),(153,'A36','A36.3','...'),(154,'A36','A36.8','...'),(155,'A36','A36.9','...'),(156,'A37','A37.0','...'),(157,'A37','A37.1','...'),(158,'A37','A37.8','...'),(159,'A37','A37.9','...'),(160,'A38','A38.0','...'),(161,'A38','A38.1','...'),(162,'A38','A38.8','...'),(163,'A38','A38.9','...'),(164,'A39','A39.0','...'),(165,'A39','A39.1','...'),(166,'A39','A39.2','...'),(167,'A39','A39.3','...'),(168,'A39','A39.4','...'),(169,'A39','A39.5','...'),(170,'A39','A39.8','...'),(171,'A39','A39.9','...'),(172,'A40','A40.0','...'),(173,'A40','A40.1','...'),(174,'A40','A40.3','...'),(175,'A40','A40.8','...'),(176,'A40','A40.9','...'),(177,'A41','A41.0','...'),(178,'A41','A41.1','...'),(179,'A41','A41.2','...'),(180,'A41','A41.3','...'),(181,'A41','A41.4','...'),(182,'A41','A41.5','...'),(183,'A41','A41.8','...'),(184,'A41','A41.9','...'),(185,'A42','A42.0','...'),(186,'A42','A42.1','...'),(187,'A42','A42.2','...'),(188,'A42','A42.7','...'),(189,'A42','A42.8','...'),(190,'A42','A42.9','...'),(191,'A43','A43.0','...'),(192,'A43','A43.1','...'),(193,'A43','A43.8','...'),(194,'A43','A43.9','...'),(195,'A44','A44.0','...'),(196,'A44','A44.1','...'),(197,'A44','A44.8','...'),(198,'A44','A44.9','...'),(199,'A48','A48.0','...'),(200,'A48','A48.1','...'),(201,'A48','A48.2','...'),(202,'A48','A48.3','...'),(203,'A48','A48.4','...'),(204,'A48','A48.5','...'),(205,'A48','A48.8','...'),(206,'A49','A49.0','...'),(207,'A49','A49.1','...'),(208,'A49','A49.2','...'),(209,'A49','A49.3','...'),(210,'A49','A49.8','...'),(211,'A49','A49.9','...'),(212,'A50','A50.0','...'),(213,'A50','A50.1','...'),(214,'A50','A50.2','...'),(215,'A50','A50.3','...'),(216,'A50','A50.4','...'),(217,'A50','A50.5','...'),(218,'A50','A50.6','...'),(219,'A50','A50.7','...'),(220,'A50','A50.9','...'),(221,'A51','A51.0','...'),(222,'A51','A51.1','...'),(223,'A51','A51.2','...'),(224,'A51','A51.3','...'),(225,'A51','A51.4','...'),(226,'A51','A51.5','...'),(227,'A51','A51.9','...'),(228,'A52','A52.0','...'),(229,'A52','A52.1','...'),(230,'A52','A52.2','...'),(231,'A52','A52.3','...'),(232,'A52','A52.7','...'),(233,'A52','A52.8','...'),(234,'A52','A52.9','...'),(235,'A53','A53.0','...'),(236,'A53','A53.9','...'),(237,'A54','A54.0','...'),(238,'A54','A54.1','...'),(239,'A54','A54.2','...'),(240,'A54','A54.3','...'),(241,'A54','A54.4','...'),(242,'A54','A54.5','...'),(243,'A54','A54.6','...'),(244,'A54','A54.8','...'),(245,'A54','A54.9','...'),(246,'A56','A56.0','...'),(247,'A56','A56.1','...'),(248,'A56','A56.2','...'),(249,'A56','A56.3','...'),(250,'A56','A56.4','...'),(251,'A56','A56.8','...'),(252,'A59','A59.0','...'),(253,'A59','A59.8','...'),(254,'A59','A59.9','...'),(255,'A60','A60.0','...'),(256,'A60','A60.1','...'),(257,'A60','A60.9','...'),(258,'A63','A63.0','...'),(259,'A63','A63.8','...'),(260,'A66','A66.0','...'),(261,'A66','A66.1','...'),(262,'A66','A66.2','...'),(263,'A66','A66.3','...'),(264,'A66','A66.4','...'),(265,'A66','A66.5','...'),(266,'A66','A66.6','...'),(267,'A66','A66.7','...'),(268,'A66','A66.8','...'),(269,'A66','A66.9','...'),(270,'A67','A67.0','...'),(271,'A67','A67.1','...'),(272,'A67','A67.2','...'),(273,'A67','A67.3','...'),(274,'A67','A67.9','...'),(275,'A68','A68.0','...'),(276,'A68','A68.1','...'),(277,'A68','A68.9','...'),(278,'A69','A69.0','...'),(279,'A69','A69.1','...'),(280,'A69','A69.2','...'),(281,'A69','A69.8','...'),(282,'A69','A69.9','...'),(283,'A71','A71.0','...'),(284,'A71','A71.1','...'),(285,'A71','A71.9','...'),(286,'A74','A74.0','...'),(287,'A74','A74.8','...'),(288,'A74','A74.9','...'),(289,'A75','A75.0','...'),(290,'A75','A75.1','...'),(291,'A75','A75.2','...'),(292,'A75','A75.3','...'),(293,'A75','A75.9','...'),(294,'A77','A77.0','...'),(295,'A77','A77.1','...'),(296,'A77','A77.2','...'),(297,'A77','A77.3','...'),(298,'A77','A77.4','...'),(299,'A77','A77.8','...'),(300,'A77','A77.9','...'),(301,'A79','A79.0','...'),(302,'A79','A79.1','...'),(303,'A79','A79.8','...'),(304,'A79','A79.9','...'),(305,'A80','A80.0','...'),(306,'A80','A80.1','...'),(307,'A80','A80.2','...'),(308,'A80','A80.3','...'),(309,'A80','A80.4','...'),(310,'A80','A80.9','...'),(311,'A81','A81.0','...'),(312,'A81','A81.1','...'),(313,'A81','A81.2','...'),(314,'A81','A81.8','...'),(315,'A81','A81.9','...'),(316,'A82','A82.0','...'),(317,'A82','A82.1','...'),(318,'A82','A82.9','...'),(319,'A83','A83.0','...'),(320,'A83','A83.1','...'),(321,'A83','A83.2','...'),(322,'A83','A83.3','...'),(323,'A83','A83.4','...'),(324,'A83','A83.5','...'),(325,'A83','A83.6','...'),(326,'A83','A83.8','...'),(327,'A83','A83.9','...'),(328,'A84','A84.0','...'),(329,'A84','A84.1','...'),(330,'A84','A84.8','...'),(331,'A84','A84.9','...'),(332,'A85','A85.0','...'),(333,'A85','A85.1','...'),(334,'A85','A85.2','...'),(335,'A85','A85.8','...'),(336,'A87','A87.0','...'),(337,'A87','A87.1','...'),(338,'A87','A87.2','...'),(339,'A87','A87.8','...'),(340,'A87','A87.9','...'),(341,'A88','A88.0','...'),(342,'A88','A88.1','...'),(343,'A88','A88.8','...'),(344,'A92','A92.0','...'),(345,'A92','A92.1','...'),(346,'A92','A92.2','...'),(347,'A92','A92.3','...'),(348,'A92','A92.4','...'),(349,'A92','A92.8','...'),(350,'A92','A92.9','...'),(351,'A93','A93.0','...'),(352,'A93','A93.1','...'),(353,'A93','A93.2','...'),(354,'A93','A93.8','...'),(355,'A95','A95.0','...'),(356,'A95','A95.1','...'),(357,'A95','A95.9','...'),(358,'A96','A96.0','...'),(359,'A96','A96.1','...'),(360,'A96','A96.2','...'),(361,'A96','A96.8','...'),(362,'A96','A96.9','...'),(363,'A98','A98.0','...'),(364,'A98','A98.1','...'),(365,'A98','A98.2','...'),(366,'A98','A98.3','...'),(367,'A98','A98.4','...'),(368,'A98','A98.5','...'),(369,'A98','A98.8','...'),(370,'B00','B00.0','...'),(371,'B00','B00.1','...'),(372,'B00','B00.2','...'),(373,'B00','B00.3','...'),(374,'B00','B00.4','...'),(375,'B00','B00.5','...'),(376,'B00','B00.7','...'),(377,'B00','B00.8','...'),(378,'B00','B00.9','...'),(379,'B01','B01.0','...'),(380,'B01','B01.1','...'),(381,'B01','B01.2','...'),(382,'B01','B01.8','...'),(383,'B01','B01.9','...'),(384,'B02','B02.0','...'),(385,'B02','B02.1','...'),(386,'B02','B02.2','...'),(387,'B02','B02.3','...'),(388,'B02','B02.7','...'),(389,'B02','B02.8','...'),(390,'B02','B02.9','...'),(391,'B05','B05.0','...'),(392,'B05','B05.1','...'),(393,'B05','B05.2','...'),(394,'B05','B05.3','...'),(395,'B05','B05.4','...'),(396,'B05','B05.8','...'),(397,'B05','B05.9','...'),(398,'B06','B06.0','...'),(399,'B06','B06.8','...'),(400,'B06','B06.9','...'),(401,'B07','B07.0','...'),(402,'B07','B07.8','...'),(403,'B07','B07.9','...'),(404,'B08','B08.0','...'),(405,'B08','B08.1','...'),(406,'B08','B08.2','...'),(407,'B08','B08.3','...'),(408,'B08','B08.4','...'),(409,'B08','B08.5','...'),(410,'B08','B08.6','...'),(411,'B08','B08.7','...'),(412,'B08','B08.8','...'),(413,'B10','B10.0','...'),(414,'B10','B10.8','...'),(415,'B15','B15.0','...'),(416,'B15','B15.9','...'),(417,'B16','B16.0','...'),(418,'B16','B16.1','...'),(419,'B16','B16.2','...'),(420,'B16','B16.9','...'),(421,'B17','B17.0','...'),(422,'B17','B17.1','...'),(423,'B17','B17.2','...'),(424,'B17','B17.8','...'),(425,'B17','B17.9','...'),(426,'B18','B18.0','...'),(427,'B18','B18.1','...'),(428,'B18','B18.2','...'),(429,'B18','B18.8','...'),(430,'B18','B18.9','...'),(431,'B19','B19.0','...'),(432,'B19','B19.1','...'),(433,'B19','B19.2','...'),(434,'B19','B19.9','...'),(435,'B25','B25.0','...'),(436,'B25','B25.1','...'),(437,'B25','B25.2','...'),(438,'B25','B25.8','...'),(439,'B25','B25.9','...'),(440,'B26','B26.0','...'),(441,'B26','B26.1','...'),(442,'B26','B26.2','...'),(443,'B26','B26.3','...'),(444,'B26','B26.8','...'),(445,'B26','B26.9','...'),(446,'B27','B27.0','...'),(447,'B27','B27.1','...'),(448,'B27','B27.8','...'),(449,'B27','B27.9','...'),(450,'B30','B30.0','...'),(451,'B30','B30.1','...'),(452,'B30','B30.2','...'),(453,'B30','B30.3','...'),(454,'B30','B30.8','...'),(455,'B30','B30.9','...'),(456,'B33','B33.0','...'),(457,'B33','B33.1','...'),(458,'B33','B33.2','...'),(459,'B33','B33.3','...'),(460,'B33','B33.4','...'),(461,'B33','B33.8','...'),(462,'B34','B34.0','...'),(463,'B34','B34.1','...'),(464,'B34','B34.2','...'),(465,'B34','B34.3','...'),(466,'B34','B34.4','...'),(467,'B34','B34.8','...'),(468,'B34','B34.9','...'),(469,'B35','B35.0','...'),(470,'B35','B35.1','...'),(471,'B35','B35.2','...'),(472,'B35','B35.3','...'),(473,'B35','B35.4','...'),(474,'B35','B35.5','...'),(475,'B35','B35.6','...'),(476,'B35','B35.8','...'),(477,'B35','B35.9','...'),(478,'B36','B36.0','...'),(479,'B36','B36.1','...'),(480,'B36','B36.2','...'),(481,'B36','B36.3','...'),(482,'B36','B36.8','...'),(483,'B36','B36.9','...'),(484,'B37','B37.0','...'),(485,'B37','B37.1','...'),(486,'B37','B37.2','...'),(487,'B37','B37.3','...'),(488,'B37','B37.4','...'),(489,'B37','B37.5','...'),(490,'B37','B37.6','...'),(491,'B37','B37.7','...'),(492,'B37','B37.8','...'),(493,'B37','B37.9','...'),(494,'B38','B38.0','...'),(495,'B38','B38.1','...'),(496,'B38','B38.2','...'),(497,'B38','B38.3','...'),(498,'B38','B38.4','...'),(499,'B38','B38.7','...'),(500,'B38','B38.8','...'),(501,'B38','B38.9','...'),(502,'B39','B39.0','...'),(503,'B39','B39.1','...'),(504,'B39','B39.2','...'),(505,'B39','B39.3','...'),(506,'B39','B39.4','...'),(507,'B39','B39.5','...'),(508,'B39','B39.9','...'),(509,'B40','B40.0','...'),(510,'B40','B40.1','...'),(511,'B40','B40.2','...'),(512,'B40','B40.3','...'),(513,'B40','B40.7','...'),(514,'B40','B40.8','...'),(515,'B40','B40.9','...'),(516,'B41','B41.0','...'),(517,'B41','B41.7','...'),(518,'B41','B41.8','...'),(519,'B41','B41.9','...'),(520,'B42','B42.0','...'),(521,'B42','B42.1','...'),(522,'B42','B42.7','...'),(523,'B42','B42.8','...'),(524,'B42','B42.9','...'),(525,'B43','B43.0','...'),(526,'B43','B43.1','...'),(527,'B43','B43.2','...'),(528,'B43','B43.8','...'),(529,'B43','B43.9','...'),(530,'B44','B44.0','...'),(531,'B44','B44.1','...'),(532,'B44','B44.2','...'),(533,'B44','B44.7','...'),(534,'B44','B44.8','...'),(535,'B44','B44.9','...'),(536,'B45','B45.0','...'),(537,'B45','B45.1','...'),(538,'B45','B45.2','...'),(539,'B45','B45.3','...'),(540,'B45','B45.7','...'),(541,'B45','B45.8','...'),(542,'B45','B45.9','...'),(543,'B46','B46.0','...'),(544,'B46','B46.1','...'),(545,'B46','B46.2','...'),(546,'B46','B46.3','...'),(547,'B46','B46.4','...'),(548,'B46','B46.5','...'),(549,'B46','B46.8','...'),(550,'B46','B46.9','...'),(551,'B47','B47.0','...'),(552,'B47','B47.1','...'),(553,'B47','B47.9','...'),(554,'B48','B48.0','...'),(555,'B48','B48.1','...'),(556,'B48','B48.2','...'),(557,'B48','B48.3','...'),(558,'B48','B48.4','...'),(559,'B48','B48.8','...'),(560,'B50','B50.0','...'),(561,'B50','B50.8','...'),(562,'B50','B50.9','...'),(563,'B51','B51.0','...'),(564,'B51','B51.8','...'),(565,'B51','B51.9','...'),(566,'B52','B52.0','...'),(567,'B52','B52.8','...'),(568,'B52','B52.9','...'),(569,'B53','B53.0','...'),(570,'B53','B53.1','...'),(571,'B53','B53.8','...'),(572,'B55','B55.0','...'),(573,'B55','B55.1','...'),(574,'B55','B55.2','...'),(575,'B55','B55.9','...'),(576,'B56','B56.0','...'),(577,'B56','B56.1','...'),(578,'B56','B56.9','...'),(579,'B57','B57.0','...'),(580,'B57','B57.1','...'),(581,'B57','B57.2','...'),(582,'B57','B57.3','...'),(583,'B57','B57.4','...'),(584,'B57','B57.5','...'),(585,'B58','B58.0','...'),(586,'B58','B58.1','...'),(587,'B58','B58.2','...'),(588,'B58','B58.3','...'),(589,'B58','B58.8','...'),(590,'B58','B58.9','...'),(591,'B60','B60.0','...'),(592,'B60','B60.1','...'),(593,'B60','B60.2','...'),(594,'B60','B60.8','...'),(595,'B65','B65.0','...'),(596,'B65','B65.1','...'),(597,'B65','B65.2','...'),(598,'B65','B65.3','...'),(599,'B65','B65.8','...'),(600,'B65','B65.9','...'),(601,'B66','B66.0','...'),(602,'B66','B66.1','...'),(603,'B66','B66.2','...'),(604,'B66','B66.3','...'),(605,'B66','B66.4','...'),(606,'B66','B66.5','...'),(607,'B66','B66.8','...'),(608,'B66','B66.9','...'),(609,'B67','B67.0','...'),(610,'B67','B67.1','...'),(611,'B67','B67.2','...'),(612,'B67','B67.3','...'),(613,'B67','B67.4','...'),(614,'B67','B67.5','...'),(615,'B67','B67.6','...'),(616,'B67','B67.7','...'),(617,'B67','B67.8','...'),(618,'B67','B67.9','...'),(619,'B68','B68.0','...'),(620,'B68','B68.1','...'),(621,'B68','B68.9','...'),(622,'B69','B69.0','...'),(623,'B69','B69.1','...'),(624,'B69','B69.8','...'),(625,'B69','B69.9','...'),(626,'B70','B70.0','...'),(627,'B70','B70.1','...'),(628,'B71','B71.0','...'),(629,'B71','B71.1','...'),(630,'B71','B71.8','...'),(631,'B71','B71.9','...'),(632,'B73','B73.0','...'),(633,'B73','B73.1','...'),(634,'B74','B74.0','...'),(635,'B74','B74.1','...'),(636,'B74','B74.2','...'),(637,'B74','B74.3','...'),(638,'B74','B74.4','...'),(639,'B74','B74.8','...'),(640,'B74','B74.9','...'),(641,'B76','B76.0','...'),(642,'B76','B76.1','...'),(643,'B76','B76.8','...'),(644,'B76','B76.9','...'),(645,'B77','B77.0','...'),(646,'B77','B77.8','...'),(647,'B77','B77.9','...'),(648,'B78','B78.0','...'),(649,'B78','B78.1','...'),(650,'B78','B78.7','...'),(651,'B78','B78.9','...'),(652,'B81','B81.0','...'),(653,'B81','B81.1','...'),(654,'B81','B81.2','...'),(655,'B81','B81.3','...'),(656,'B81','B81.4','...'),(657,'B81','B81.8','...'),(658,'B82','B82.0','...'),(659,'B82','B82.9','...'),(660,'B83','B83.0','...'),(661,'B83','B83.1','...'),(662,'B83','B83.2','...'),(663,'B83','B83.3','...'),(664,'B83','B83.4','...'),(665,'B83','B83.8','...'),(666,'B83','B83.9','...'),(667,'B85','B85.0','...'),(668,'B85','B85.1','...'),(669,'B85','B85.2','...'),(670,'B85','B85.3','...'),(671,'B85','B85.4','...'),(672,'B87','B87.0','...'),(673,'B87','B87.1','...'),(674,'B87','B87.2','...'),(675,'B87','B87.3','...'),(676,'B87','B87.4','...'),(677,'B87','B87.8','...'),(678,'B87','B87.9','...'),(679,'B88','B88.0','...'),(680,'B88','B88.1','...'),(681,'B88','B88.2','...'),(682,'B88','B88.3','...'),(683,'B88','B88.8','...'),(684,'B88','B88.9','...'),(685,'B90','B90.0','...'),(686,'B90','B90.1','...'),(687,'B90','B90.2','...'),(688,'B90','B90.8','...'),(689,'B90','B90.9','...'),(690,'B94','B94.0','...'),(691,'B94','B94.1','...'),(692,'B94','B94.2','...'),(693,'B94','B94.8','...'),(694,'B94','B94.9','...'),(695,'B95','B95.0','...'),(696,'B95','B95.1','...'),(697,'B95','B95.2','...'),(698,'B95','B95.3','...'),(699,'B95','B95.4','...'),(700,'B95','B95.5','...'),(701,'B95','B95.6','...'),(702,'B95','B95.7','...'),(703,'B95','B95.8','...'),(704,'B96','B96.0','...'),(705,'B96','B96.1','...'),(706,'B96','B96.2','...'),(707,'B96','B96.3','...'),(708,'B96','B96.4','...'),(709,'B96','B96.5','...'),(710,'B96','B96.6','...'),(711,'B96','B96.7','...'),(712,'B96','B96.8','...'),(713,'B97','B97.0','...'),(714,'B97','B97.1','...'),(715,'B97','B97.2','...'),(716,'B97','B97.3','...'),(717,'B97','B97.4','...'),(718,'B97','B97.5','...'),(719,'B97','B97.6','...'),(720,'B97','B97.7','...'),(721,'B97','B97.8','...'),(722,'B99','B99.8','...'),(723,'B99','B99.9','...'),(724,'C00','C00.0','...'),(725,'C00','C00.1','...'),(726,'C00','C00.2','...'),(727,'C00','C00.3','...'),(728,'C00','C00.4','...'),(729,'C00','C00.5','...'),(730,'C00','C00.6','...'),(731,'C00','C00.8','...'),(732,'C00','C00.9','...'),(733,'C02','C02.0','...'),(734,'C02','C02.1','...'),(735,'C02','C02.2','...'),(736,'C02','C02.3','...'),(737,'C02','C02.4','...'),(738,'C02','C02.8','...'),(739,'C02','C02.9','...'),(740,'C03','C03.0','...'),(741,'C03','C03.1','...'),(742,'C03','C03.9','...'),(743,'C04','C04.0','...'),(744,'C04','C04.1','...'),(745,'C04','C04.8','...'),(746,'C04','C04.9','...'),(747,'C05','C05.0','...'),(748,'C05','C05.1','...'),(749,'C05','C05.2','...'),(750,'C05','C05.8','...'),(751,'C05','C05.9','...'),(752,'C06','C06.0','...'),(753,'C06','C06.1','...'),(754,'C06','C06.2','...'),(755,'C06','C06.8','...'),(756,'C06','C06.9','...'),(757,'C08','C08.0','...'),(758,'C08','C08.1','...'),(759,'C08','C08.9','...'),(760,'C09','C09.0','...'),(761,'C09','C09.1','...'),(762,'C09','C09.8','...'),(763,'C09','C09.9','...'),(764,'C10','C10.0','...'),(765,'C10','C10.1','...'),(766,'C10','C10.2','...'),(767,'C10','C10.3','...'),(768,'C10','C10.4','...'),(769,'C10','C10.8','...'),(770,'C10','C10.9','...'),(771,'C11','C11.0','...'),(772,'C11','C11.1','...'),(773,'C11','C11.2','...'),(774,'C11','C11.3','...'),(775,'C11','C11.8','...'),(776,'C11','C11.9','...'),(777,'C13','C13.0','...'),(778,'C13','C13.1','...'),(779,'C13','C13.2','...'),(780,'C13','C13.8','...'),(781,'C13','C13.9','...'),(782,'C14','C14.0','...'),(783,'C14','C14.2','...'),(784,'C14','C14.8','...'),(785,'C15','C15.3','...'),(786,'C15','C15.4','...'),(787,'C15','C15.5','...'),(788,'C15','C15.8','...'),(789,'C15','C15.9','...'),(790,'C16','C16.0','...'),(791,'C16','C16.1','...'),(792,'C16','C16.2','...'),(793,'C16','C16.3','...'),(794,'C16','C16.4','...'),(795,'C16','C16.5','...'),(796,'C16','C16.6','...'),(797,'C16','C16.8','...'),(798,'C16','C16.9','...'),(799,'C17','C17.0','...'),(800,'C17','C17.1','...'),(801,'C17','C17.2','...'),(802,'C17','C17.3','...'),(803,'C17','C17.8','...'),(804,'C17','C17.9','...'),(805,'C18','C18.0','...'),(806,'C18','C18.1','...'),(807,'C18','C18.2','...'),(808,'C18','C18.3','...'),(809,'C18','C18.4','...'),(810,'C18','C18.5','...'),(811,'C18','C18.6','...'),(812,'C18','C18.7','...'),(813,'C18','C18.8','...'),(814,'C18','C18.9','...'),(815,'C21','C21.0','...'),(816,'C21','C21.1','...'),(817,'C21','C21.2','...'),(818,'C21','C21.8','...'),(819,'C22','C22.0','...'),(820,'C22','C22.1','...'),(821,'C22','C22.2','...'),(822,'C22','C22.3','...'),(823,'C22','C22.4','...'),(824,'C22','C22.7','...'),(825,'C22','C22.8','...'),(826,'C22','C22.9','...'),(827,'C24','C24.0','...'),(828,'C24','C24.1','...'),(829,'C24','C24.8','...'),(830,'C24','C24.9','...'),(831,'C25','C25.0','...'),(832,'C25','C25.1','...'),(833,'C25','C25.2','...'),(834,'C25','C25.3','...'),(835,'C25','C25.4','...'),(836,'C25','C25.7','...'),(837,'C25','C25.8','...'),(838,'C25','C25.9','...'),(839,'C26','C26.0','...'),(840,'C26','C26.1','...'),(841,'C26','C26.9','...'),(842,'C30','C30.0','...'),(843,'C30','C30.1','...'),(844,'C31','C31.0','...'),(845,'C31','C31.1','...'),(846,'C31','C31.2','...'),(847,'C31','C31.3','...'),(848,'C31','C31.8','...'),(849,'C31','C31.9','...'),(850,'C32','C32.0','...'),(851,'C32','C32.1','...'),(852,'C32','C32.2','...'),(853,'C32','C32.3','...'),(854,'C32','C32.8','...'),(855,'C32','C32.9','...'),(856,'C34','C34.0','...'),(857,'C34','C34.1','...'),(858,'C34','C34.2','...'),(859,'C34','C34.3','...'),(860,'C34','C34.8','...'),(861,'C34','C34.9','...'),(862,'C38','C38.0','...'),(863,'C38','C38.1','...'),(864,'C38','C38.2','...'),(865,'C38','C38.3','...'),(866,'C38','C38.4','...'),(867,'C38','C38.8','...'),(868,'C39','C39.0','...'),(869,'C39','C39.9','...'),(870,'C40','C40.0','...'),(871,'C40','C40.1','...'),(872,'C40','C40.2','...'),(873,'C40','C40.3','...'),(874,'C40','C40.8','...'),(875,'C40','C40.9','...'),(876,'C41','C41.0','...'),(877,'C41','C41.1','...'),(878,'C41','C41.2','...'),(879,'C41','C41.3','...'),(880,'C41','C41.4','...'),(881,'C41','C41.9','...'),(882,'C43','C43.0','...'),(883,'C43','C43.1','...'),(884,'C43','C43.2','...'),(885,'C43','C43.3','...'),(886,'C43','C43.4','...'),(887,'C43','C43.5','...'),(888,'C43','C43.6','...'),(889,'C43','C43.7','...'),(890,'C43','C43.8','...'),(891,'C43','C43.9','...'),(892,'C4A','C4A.0','...'),(893,'C4A','C4A.1','...'),(894,'C4A','C4A.2','...'),(895,'C4A','C4A.3','...'),(896,'C4A','C4A.4','...'),(897,'C4A','C4A.5','...'),(898,'C4A','C4A.6','...'),(899,'C4A','C4A.7','...'),(900,'C4A','C4A.8','...'),(901,'C4A','C4A.9','...'),(902,'C44','C44.0','...'),(903,'C44','C44.1','...'),(904,'C44','C44.2','...'),(905,'C44','C44.3','...'),(906,'C44','C44.4','...'),(907,'C44','C44.5','...'),(908,'C44','C44.6','...'),(909,'C44','C44.7','...'),(910,'C44','C44.8','...'),(911,'C44','C44.9','...'),(912,'C45','C45.0','...'),(913,'C45','C45.1','...'),(914,'C45','C45.2','...'),(915,'C45','C45.7','...'),(916,'C45','C45.9','...'),(917,'C46','C46.0','...'),(918,'C46','C46.1','...'),(919,'C46','C46.2','...'),(920,'C46','C46.3','...'),(921,'C46','C46.4','...'),(922,'C46','C46.5','...'),(923,'C46','C46.7','...'),(924,'C46','C46.9','...'),(925,'C47','C47.0','...'),(926,'C47','C47.1','...'),(927,'C47','C47.2','...'),(928,'C47','C47.3','...'),(929,'C47','C47.4','...'),(930,'C47','C47.5','...'),(931,'C47','C47.6','...'),(932,'C47','C47.8','...'),(933,'C47','C47.9','...'),(934,'C48','C48.0','...'),(935,'C48','C48.1','...'),(936,'C48','C48.2','...'),(937,'C48','C48.8','...'),(938,'C49','C49.0','...'),(939,'C49','C49.1','...'),(940,'C49','C49.2','...'),(941,'C49','C49.3','...'),(942,'C49','C49.4','...'),(943,'C49','C49.5','...'),(944,'C49','C49.6','...'),(945,'C49','C49.8','...'),(946,'C49','C49.9','...'),(947,'C50','C50.0','...'),(948,'C50','C50.1','...'),(949,'C50','C50.2','...'),(950,'C50','C50.3','...'),(951,'C50','C50.4','...'),(952,'C50','C50.5','...'),(953,'C50','C50.6','...'),(954,'C50','C50.8','...'),(955,'C50','C50.9','...'),(956,'C51','C51.0','...'),(957,'C51','C51.1','...'),(958,'C51','C51.2','...'),(959,'C51','C51.8','...'),(960,'C51','C51.9','...'),(961,'C53','C53.0','...'),(962,'C53','C53.1','...'),(963,'C53','C53.8','...'),(964,'C53','C53.9','...'),(965,'C54','C54.0','...'),(966,'C54','C54.1','...'),(967,'C54','C54.2','...'),(968,'C54','C54.3','...'),(969,'C54','C54.8','...'),(970,'C54','C54.9','...'),(971,'C56','C56.1','...'),(972,'C56','C56.2','...'),(973,'C56','C56.9','...'),(974,'C57','C57.0','...'),(975,'C57','C57.1','...'),(976,'C57','C57.2','...'),(977,'C57','C57.3','...'),(978,'C57','C57.4','...'),(979,'C57','C57.7','...'),(980,'C57','C57.8','...'),(981,'C57','C57.9','...'),(982,'C60','C60.0','...'),(983,'C60','C60.1','...'),(984,'C60','C60.2','...'),(985,'C60','C60.8','...'),(986,'C60','C60.9','...'),(987,'C62','C62.0','...'),(988,'C62','C62.1','...'),(989,'C62','C62.9','...'),(990,'C63','C63.0','...'),(991,'C63','C63.1','...'),(992,'C63','C63.2','...'),(993,'C63','C63.7','...'),(994,'C63','C63.8','...'),(995,'C63','C63.9','...'),(996,'C64','C64.1','...'),(997,'C64','C64.2','...'),(998,'C64','C64.9','...'),(999,'C65','C65.1','...'),(1000,'C65','C65.2','...');
/*!40000 ALTER TABLE `icdlevel3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icdlevel4`
--

DROP TABLE IF EXISTS `icdlevel4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icdlevel4` (
  `icdlevel4_Id` int(11) NOT NULL AUTO_INCREMENT,
  `diag3_Id` char(10) NOT NULL,
  `description` varbinary(200) NOT NULL,
  `ICDLevel3_dia2Id` char(10) NOT NULL,
  PRIMARY KEY (`icdlevel4_Id`,`diag3_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icdlevel4`
--

LOCK TABLES `icdlevel4` WRITE;
/*!40000 ALTER TABLE `icdlevel4` DISABLE KEYS */;
INSERT INTO `icdlevel4` VALUES (1,'A01.00','...','A01.0'),(2,'A01.01','...','A01.0'),(3,'A01.02','...','A01.0'),(4,'A01.03','...','A01.0'),(5,'A01.04','...','A01.0'),(6,'A01.05','...','A01.0'),(7,'A01.09','...','A01.0'),(8,'A02.20','...','A02.2'),(9,'A02.21','...','A02.2'),(10,'A02.22','...','A02.2'),(11,'A02.23','...','A02.2'),(12,'A02.24','...','A02.2'),(13,'A02.25','...','A02.2'),(14,'A02.29','...','A02.2'),(15,'A06.81','...','A06.8'),(16,'A06.82','...','A06.8'),(17,'A06.89','...','A06.8'),(18,'A08.11','...','A08.1'),(19,'A08.19','...','A08.1'),(20,'A08.31','...','A08.3'),(21,'A08.32','...','A08.3'),(22,'A08.39','...','A08.3'),(23,'A17.81','...','A17.8'),(24,'A17.82','...','A17.8'),(25,'A17.83','...','A17.8'),(26,'A17.89','...','A17.8'),(27,'A18.01','...','A18.0'),(28,'A18.02','...','A18.0'),(29,'A18.03','...','A18.0'),(30,'A18.09','...','A18.0'),(31,'A18.10','...','A18.1'),(32,'A18.11','...','A18.1'),(33,'A18.12','...','A18.1'),(34,'A18.13','...','A18.1'),(35,'A18.14','...','A18.1'),(36,'A18.15','...','A18.1'),(37,'A18.16','...','A18.1'),(38,'A18.17','...','A18.1'),(39,'A18.18','...','A18.1'),(40,'A18.31','...','A18.3'),(41,'A18.32','...','A18.3'),(42,'A18.39','...','A18.3'),(43,'A18.50','...','A18.5'),(44,'A18.51','...','A18.5'),(45,'A18.52','...','A18.5'),(46,'A18.53','...','A18.5'),(47,'A18.54','...','A18.5'),(48,'A18.59','...','A18.5'),(49,'A18.81','...','A18.8'),(50,'A18.82','...','A18.8'),(51,'A18.83','...','A18.8'),(52,'A18.84','...','A18.8'),(53,'A18.85','...','A18.8'),(54,'A18.89','...','A18.8'),(55,'A27.81','...','A27.8'),(56,'A27.89','...','A27.8'),(57,'A32.11','...','A32.1'),(58,'A32.12','...','A32.1'),(59,'A32.81','...','A32.8'),(60,'A32.82','...','A32.8'),(61,'A32.89','...','A32.8'),(62,'A36.81','...','A36.8'),(63,'A36.82','...','A36.8'),(64,'A36.83','...','A36.8'),(65,'A36.84','...','A36.8'),(66,'A36.85','...','A36.8'),(67,'A36.86','...','A36.8'),(68,'A36.89','...','A36.8'),(69,'A37.00','...','A37.0'),(70,'A37.01','...','A37.0'),(71,'A37.10','...','A37.1'),(72,'A37.11','...','A37.1'),(73,'A37.80','...','A37.8'),(74,'A37.81','...','A37.8'),(75,'A37.90','...','A37.9'),(76,'A37.91','...','A37.9'),(77,'A39.50','...','A39.5'),(78,'A39.51','...','A39.5'),(79,'A39.52','...','A39.5'),(80,'A39.53','...','A39.5'),(81,'A39.81','...','A39.8'),(82,'A39.82','...','A39.8'),(83,'A39.83','...','A39.8'),(84,'A39.84','...','A39.8'),(85,'A39.89','...','A39.8'),(86,'A41.50','...','A41.5'),(87,'A41.51','...','A41.5'),(88,'A41.52','...','A41.5'),(89,'A41.53','...','A41.5'),(90,'A41.59','...','A41.5'),(91,'A41.81','...','A41.8'),(92,'A41.89','...','A41.8'),(93,'A42.81','...','A42.8'),(94,'A42.82','...','A42.8'),(95,'A42.89','...','A42.8'),(96,'A48.51','...','A48.5'),(97,'A48.52','...','A48.5'),(98,'A50.01','...','A50.0'),(99,'A50.02','...','A50.0'),(100,'A50.03','...','A50.0'),(101,'A50.04','...','A50.0'),(102,'A50.05','...','A50.0'),(103,'A50.06','...','A50.0'),(104,'A50.07','...','A50.0'),(105,'A50.08','...','A50.0'),(106,'A50.09','...','A50.0'),(107,'A50.30','...','A50.3'),(108,'A50.31','...','A50.3'),(109,'A50.32','...','A50.3'),(110,'A50.39','...','A50.3'),(111,'A50.40','...','A50.4'),(112,'A50.41','...','A50.4'),(113,'A50.42','...','A50.4'),(114,'A50.43','...','A50.4'),(115,'A50.44','...','A50.4'),(116,'A50.45','...','A50.4'),(117,'A50.49','...','A50.4'),(118,'A50.51','...','A50.5'),(119,'A50.52','...','A50.5'),(120,'A50.53','...','A50.5'),(121,'A50.54','...','A50.5'),(122,'A50.55','...','A50.5'),(123,'A50.56','...','A50.5'),(124,'A50.57','...','A50.5'),(125,'A50.59','...','A50.5'),(126,'A51.31','...','A51.3'),(127,'A51.32','...','A51.3'),(128,'A51.39','...','A51.3'),(129,'A51.41','...','A51.4'),(130,'A51.42','...','A51.4'),(131,'A51.43','...','A51.4'),(132,'A51.44','...','A51.4'),(133,'A51.45','...','A51.4'),(134,'A51.46','...','A51.4'),(135,'A51.49','...','A51.4'),(136,'A52.00','...','A52.0'),(137,'A52.01','...','A52.0'),(138,'A52.02','...','A52.0'),(139,'A52.03','...','A52.0'),(140,'A52.04','...','A52.0'),(141,'A52.05','...','A52.0'),(142,'A52.06','...','A52.0'),(143,'A52.09','...','A52.0'),(144,'A52.10','...','A52.1'),(145,'A52.11','...','A52.1'),(146,'A52.12','...','A52.1'),(147,'A52.13','...','A52.1'),(148,'A52.14','...','A52.1'),(149,'A52.15','...','A52.1'),(150,'A52.16','...','A52.1'),(151,'A52.17','...','A52.1'),(152,'A52.19','...','A52.1'),(153,'A52.71','...','A52.7'),(154,'A52.72','...','A52.7'),(155,'A52.73','...','A52.7'),(156,'A52.74','...','A52.7'),(157,'A52.75','...','A52.7'),(158,'A52.76','...','A52.7'),(159,'A52.77','...','A52.7'),(160,'A52.78','...','A52.7'),(161,'A52.79','...','A52.7'),(162,'A54.00','...','A54.0'),(163,'A54.01','...','A54.0'),(164,'A54.02','...','A54.0'),(165,'A54.03','...','A54.0'),(166,'A54.09','...','A54.0'),(167,'A54.21','...','A54.2'),(168,'A54.22','...','A54.2'),(169,'A54.23','...','A54.2'),(170,'A54.24','...','A54.2'),(171,'A54.29','...','A54.2'),(172,'A54.30','...','A54.3'),(173,'A54.31','...','A54.3'),(174,'A54.32','...','A54.3'),(175,'A54.33','...','A54.3'),(176,'A54.39','...','A54.3'),(177,'A54.40','...','A54.4'),(178,'A54.41','...','A54.4'),(179,'A54.42','...','A54.4'),(180,'A54.43','...','A54.4'),(181,'A54.49','...','A54.4'),(182,'A54.81','...','A54.8'),(183,'A54.82','...','A54.8'),(184,'A54.83','...','A54.8'),(185,'A54.84','...','A54.8'),(186,'A54.85','...','A54.8'),(187,'A54.86','...','A54.8'),(188,'A54.89','...','A54.8'),(189,'A56.00','...','A56.0'),(190,'A56.01','...','A56.0'),(191,'A56.02','...','A56.0'),(192,'A56.09','...','A56.0'),(193,'A56.11','...','A56.1'),(194,'A56.19','...','A56.1'),(195,'A59.00','...','A59.0'),(196,'A59.01','...','A59.0'),(197,'A59.02','...','A59.0'),(198,'A59.03','...','A59.0'),(199,'A59.09','...','A59.0'),(200,'A60.00','...','A60.0'),(201,'A60.01','...','A60.0'),(202,'A60.02','...','A60.0'),(203,'A60.03','...','A60.0'),(204,'A60.04','...','A60.0'),(205,'A60.09','...','A60.0'),(206,'A69.20','...','A69.2'),(207,'A69.21','...','A69.2'),(208,'A69.22','...','A69.2'),(209,'A69.23','...','A69.2'),(210,'A69.29','...','A69.2'),(211,'A74.81','...','A74.8'),(212,'A74.89','...','A74.8'),(213,'A77.40','...','A77.4'),(214,'A77.41','...','A77.4'),(215,'A77.49','...','A77.4'),(216,'A79.81','...','A79.8'),(217,'A79.89','...','A79.8'),(218,'A80.30','...','A80.3'),(219,'A80.39','...','A80.3'),(220,'A81.00','...','A81.0'),(221,'A81.01','...','A81.0'),(222,'A81.09','...','A81.0'),(223,'A81.81','...','A81.8'),(224,'A81.82','...','A81.8'),(225,'A81.83','...','A81.8'),(226,'A81.89','...','A81.8'),(227,'A92.30','...','A92.3'),(228,'A92.31','...','A92.3'),(229,'A92.32','...','A92.3'),(230,'A92.39','...','A92.3'),(231,'B00.50','...','B00.5'),(232,'B00.51','...','B00.5'),(233,'B00.52','...','B00.5'),(234,'B00.53','...','B00.5'),(235,'B00.59','...','B00.5'),(236,'B00.81','...','B00.8'),(237,'B00.82','...','B00.8'),(238,'B00.89','...','B00.8'),(239,'B01.11','...','B01.1'),(240,'B01.12','...','B01.1'),(241,'B01.81','...','B01.8'),(242,'B01.89','...','B01.8'),(243,'B02.21','...','B02.2'),(244,'B02.22','...','B02.2'),(245,'B02.23','...','B02.2'),(246,'B02.24','...','B02.2'),(247,'B02.29','...','B02.2'),(248,'B02.30','...','B02.3'),(249,'B02.31','...','B02.3'),(250,'B02.32','...','B02.3'),(251,'B02.33','...','B02.3'),(252,'B02.34','...','B02.3'),(253,'B02.39','...','B02.3'),(254,'B05.81','...','B05.8'),(255,'B05.89','...','B05.8'),(256,'B06.00','...','B06.0'),(257,'B06.01','...','B06.0'),(258,'B06.02','...','B06.0'),(259,'B06.09','...','B06.0'),(260,'B06.81','...','B06.8'),(261,'B06.82','...','B06.8'),(262,'B06.89','...','B06.8'),(263,'B08.01','...','B08.0'),(264,'B08.02','...','B08.0'),(265,'B08.03','...','B08.0'),(266,'B08.04','...','B08.0'),(267,'B08.09','...','B08.0'),(268,'B08.20','...','B08.2'),(269,'B08.21','...','B08.2'),(270,'B08.22','...','B08.2'),(271,'B08.60','...','B08.6'),(272,'B08.61','...','B08.6'),(273,'B08.62','...','B08.6'),(274,'B08.69','...','B08.6'),(275,'B08.70','...','B08.7'),(276,'B08.71','...','B08.7'),(277,'B08.72','...','B08.7'),(278,'B08.79','...','B08.7'),(279,'B10.01','...','B10.0'),(280,'B10.09','...','B10.0'),(281,'B10.81','...','B10.8'),(282,'B10.82','...','B10.8'),(283,'B10.89','...','B10.8'),(284,'B17.10','...','B17.1'),(285,'B17.11','...','B17.1'),(286,'B19.10','...','B19.1'),(287,'B19.11','...','B19.1'),(288,'B19.20','...','B19.2'),(289,'B19.21','...','B19.2'),(290,'B26.81','...','B26.8'),(291,'B26.82','...','B26.8'),(292,'B26.83','...','B26.8'),(293,'B26.84','...','B26.8'),(294,'B26.85','...','B26.8'),(295,'B26.89','...','B26.8'),(296,'B27.00','...','B27.0'),(297,'B27.01','...','B27.0'),(298,'B27.02','...','B27.0'),(299,'B27.09','...','B27.0'),(300,'B27.10','...','B27.1'),(301,'B27.11','...','B27.1'),(302,'B27.12','...','B27.1'),(303,'B27.19','...','B27.1'),(304,'B27.80','...','B27.8'),(305,'B27.81','...','B27.8'),(306,'B27.82','...','B27.8'),(307,'B27.89','...','B27.8'),(308,'B27.90','...','B27.9'),(309,'B27.91','...','B27.9'),(310,'B27.92','...','B27.9'),(311,'B27.99','...','B27.9'),(312,'B33.20','...','B33.2'),(313,'B33.21','...','B33.2'),(314,'B33.22','...','B33.2'),(315,'B33.23','...','B33.2'),(316,'B33.24','...','B33.2'),(317,'B37.41','...','B37.4'),(318,'B37.42','...','B37.4'),(319,'B37.49','...','B37.4'),(320,'B37.81','...','B37.8'),(321,'B37.82','...','B37.8'),(322,'B37.83','...','B37.8'),(323,'B37.84','...','B37.8'),(324,'B37.89','...','B37.8'),(325,'B38.81','...','B38.8'),(326,'B38.89','...','B38.8'),(327,'B40.81','...','B40.8'),(328,'B40.89','...','B40.8'),(329,'B42.81','...','B42.8'),(330,'B42.82','...','B42.8'),(331,'B42.89','...','B42.8'),(332,'B44.81','...','B44.8'),(333,'B44.89','...','B44.8'),(334,'B57.30','...','B57.3'),(335,'B57.31','...','B57.3'),(336,'B57.32','...','B57.3'),(337,'B57.39','...','B57.3'),(338,'B57.40','...','B57.4'),(339,'B57.41','...','B57.4'),(340,'B57.42','...','B57.4'),(341,'B57.49','...','B57.4'),(342,'B58.00','...','B58.0'),(343,'B58.01','...','B58.0'),(344,'B58.09','...','B58.0'),(345,'B58.81','...','B58.8'),(346,'B58.82','...','B58.8'),(347,'B58.83','...','B58.8'),(348,'B58.89','...','B58.8'),(349,'B60.10','...','B60.1'),(350,'B60.11','...','B60.1'),(351,'B60.12','...','B60.1'),(352,'B60.13','...','B60.1'),(353,'B60.19','...','B60.1'),(354,'B67.31','...','B67.3'),(355,'B67.32','...','B67.3'),(356,'B67.39','...','B67.3'),(357,'B67.61','...','B67.6'),(358,'B67.69','...','B67.6'),(359,'B67.90','...','B67.9'),(360,'B67.99','...','B67.9'),(361,'B69.81','...','B69.8'),(362,'B69.89','...','B69.8'),(363,'B73.00','...','B73.0'),(364,'B73.01','...','B73.0'),(365,'B73.02','...','B73.0'),(366,'B73.09','...','B73.0'),(367,'B77.81','...','B77.8'),(368,'B77.89','...','B77.8'),(369,'B87.81','...','B87.8'),(370,'B87.82','...','B87.8'),(371,'B87.89','...','B87.8'),(372,'B96.81','...','B96.8'),(373,'B96.82','...','B96.8'),(374,'B96.89','...','B96.8'),(375,'B97.10','...','B97.1'),(376,'B97.11','...','B97.1'),(377,'B97.12','...','B97.1'),(378,'B97.19','...','B97.1'),(379,'B97.21','...','B97.2'),(380,'B97.29','...','B97.2'),(381,'B97.30','...','B97.3'),(382,'B97.31','...','B97.3'),(383,'B97.32','...','B97.3'),(384,'B97.33','...','B97.3'),(385,'B97.34','...','B97.3'),(386,'B97.35','...','B97.3'),(387,'B97.39','...','B97.3'),(388,'B97.81','...','B97.8'),(389,'B97.89','...','B97.8'),(390,'C06.80','...','C06.8'),(391,'C06.89','...','C06.8'),(392,'C34.00','...','C34.0'),(393,'C34.01','...','C34.0'),(394,'C34.02','...','C34.0'),(395,'C34.10','...','C34.1'),(396,'C34.11','...','C34.1'),(397,'C34.12','...','C34.1'),(398,'C34.30','...','C34.3'),(399,'C34.31','...','C34.3'),(400,'C34.32','...','C34.3'),(401,'C34.80','...','C34.8'),(402,'C34.81','...','C34.8'),(403,'C34.82','...','C34.8'),(404,'C34.90','...','C34.9'),(405,'C34.91','...','C34.9'),(406,'C34.92','...','C34.9'),(407,'C40.00','...','C40.0'),(408,'C40.01','...','C40.0'),(409,'C40.02','...','C40.0'),(410,'C40.10','...','C40.1'),(411,'C40.11','...','C40.1'),(412,'C40.12','...','C40.1'),(413,'C40.20','...','C40.2'),(414,'C40.21','...','C40.2'),(415,'C40.22','...','C40.2'),(416,'C40.30','...','C40.3'),(417,'C40.31','...','C40.3'),(418,'C40.32','...','C40.3'),(419,'C40.80','...','C40.8'),(420,'C40.81','...','C40.8'),(421,'C40.82','...','C40.8'),(422,'C40.90','...','C40.9'),(423,'C40.91','...','C40.9'),(424,'C40.92','...','C40.9'),(425,'C43.10','...','C43.1'),(426,'C43.11','...','C43.1'),(427,'C43.12','...','C43.1'),(428,'C43.20','...','C43.2'),(429,'C43.21','...','C43.2'),(430,'C43.22','...','C43.2'),(431,'C43.30','...','C43.3'),(432,'C43.31','...','C43.3'),(433,'C43.39','...','C43.3'),(434,'C43.51','...','C43.5'),(435,'C43.52','...','C43.5'),(436,'C43.59','...','C43.5'),(437,'C43.60','...','C43.6'),(438,'C43.61','...','C43.6'),(439,'C43.62','...','C43.6'),(440,'C43.70','...','C43.7'),(441,'C43.71','...','C43.7'),(442,'C43.72','...','C43.7'),(443,'C4A.10','...','C4A.1'),(444,'C4A.11','...','C4A.1'),(445,'C4A.12','...','C4A.1'),(446,'C4A.20','...','C4A.2'),(447,'C4A.21','...','C4A.2'),(448,'C4A.22','...','C4A.2'),(449,'C4A.30','...','C4A.3'),(450,'C4A.31','...','C4A.3'),(451,'C4A.39','...','C4A.3'),(452,'C4A.51','...','C4A.5'),(453,'C4A.52','...','C4A.5'),(454,'C4A.59','...','C4A.5'),(455,'C4A.60','...','C4A.6'),(456,'C4A.61','...','C4A.6'),(457,'C4A.62','...','C4A.6'),(458,'C4A.70','...','C4A.7'),(459,'C4A.71','...','C4A.7'),(460,'C4A.72','...','C4A.7'),(461,'C44.10','...','C44.1'),(462,'C44.11','...','C44.1'),(463,'C44.12','...','C44.1'),(464,'C44.20','...','C44.2'),(465,'C44.21','...','C44.2'),(466,'C44.22','...','C44.2'),(467,'C44.30','...','C44.3'),(468,'C44.31','...','C44.3'),(469,'C44.39','...','C44.3'),(470,'C44.51','...','C44.5'),(471,'C44.52','...','C44.5'),(472,'C44.59','...','C44.5'),(473,'C44.60','...','C44.6'),(474,'C44.61','...','C44.6'),(475,'C44.62','...','C44.6'),(476,'C44.70','...','C44.7'),(477,'C44.71','...','C44.7'),(478,'C44.72','...','C44.7'),(479,'C46.50','...','C46.5'),(480,'C46.51','...','C46.5'),(481,'C46.52','...','C46.5'),(482,'C47.10','...','C47.1'),(483,'C47.11','...','C47.1'),(484,'C47.12','...','C47.1'),(485,'C47.20','...','C47.2'),(486,'C47.21','...','C47.2'),(487,'C47.22','...','C47.2'),(488,'C49.10','...','C49.1'),(489,'C49.11','...','C49.1'),(490,'C49.12','...','C49.1'),(491,'C49.20','...','C49.2'),(492,'C49.21','...','C49.2'),(493,'C49.22','...','C49.2'),(494,'C50.01','...','C50.0'),(495,'C50.02','...','C50.0'),(496,'C50.11','...','C50.1'),(497,'C50.12','...','C50.1'),(498,'C50.21','...','C50.2'),(499,'C50.22','...','C50.2'),(500,'C50.31','...','C50.3'),(501,'C50.32','...','C50.3'),(502,'C50.41','...','C50.4'),(503,'C50.42','...','C50.4'),(504,'C50.51','...','C50.5'),(505,'C50.52','...','C50.5'),(506,'C50.61','...','C50.6'),(507,'C50.62','...','C50.6'),(508,'C50.81','...','C50.8'),(509,'C50.82','...','C50.8'),(510,'C50.91','...','C50.9'),(511,'C50.92','...','C50.9'),(512,'C57.00','...','C57.0'),(513,'C57.01','...','C57.0'),(514,'C57.02','...','C57.0'),(515,'C57.10','...','C57.1'),(516,'C57.11','...','C57.1'),(517,'C57.12','...','C57.1'),(518,'C57.20','...','C57.2'),(519,'C57.21','...','C57.2'),(520,'C57.22','...','C57.2'),(521,'C62.00','...','C62.0'),(522,'C62.01','...','C62.0'),(523,'C62.02','...','C62.0'),(524,'C62.10','...','C62.1'),(525,'C62.11','...','C62.1'),(526,'C62.12','...','C62.1'),(527,'C62.90','...','C62.9'),(528,'C62.91','...','C62.9'),(529,'C62.92','...','C62.9'),(530,'C63.00','...','C63.0'),(531,'C63.01','...','C63.0'),(532,'C63.02','...','C63.0'),(533,'C63.10','...','C63.1'),(534,'C63.11','...','C63.1'),(535,'C63.12','...','C63.1'),(536,'C69.00','...','C69.0'),(537,'C69.01','...','C69.0'),(538,'C69.02','...','C69.0'),(539,'C69.10','...','C69.1'),(540,'C69.11','...','C69.1'),(541,'C69.12','...','C69.1'),(542,'C69.20','...','C69.2'),(543,'C69.21','...','C69.2'),(544,'C69.22','...','C69.2'),(545,'C69.30','...','C69.3'),(546,'C69.31','...','C69.3'),(547,'C69.32','...','C69.3'),(548,'C69.40','...','C69.4'),(549,'C69.41','...','C69.4'),(550,'C69.42','...','C69.4'),(551,'C69.50','...','C69.5'),(552,'C69.51','...','C69.5'),(553,'C69.52','...','C69.5'),(554,'C69.60','...','C69.6'),(555,'C69.61','...','C69.6'),(556,'C69.62','...','C69.6'),(557,'C69.80','...','C69.8'),(558,'C69.81','...','C69.8'),(559,'C69.82','...','C69.8'),(560,'C69.90','...','C69.9'),(561,'C69.91','...','C69.9'),(562,'C69.92','...','C69.9'),(563,'C72.20','...','C72.2'),(564,'C72.21','...','C72.2'),(565,'C72.22','...','C72.2'),(566,'C72.30','...','C72.3'),(567,'C72.31','...','C72.3'),(568,'C72.32','...','C72.3'),(569,'C72.40','...','C72.4'),(570,'C72.41','...','C72.4'),(571,'C72.42','...','C72.4'),(572,'C72.50','...','C72.5'),(573,'C72.59','...','C72.5'),(574,'C74.00','...','C74.0'),(575,'C74.01','...','C74.0'),(576,'C74.02','...','C74.0'),(577,'C74.10','...','C74.1'),(578,'C74.11','...','C74.1'),(579,'C74.12','...','C74.1'),(580,'C74.90','...','C74.9'),(581,'C74.91','...','C74.9'),(582,'C74.92','...','C74.9'),(583,'C7A.00','...','C7A.0'),(584,'C7A.01','...','C7A.0'),(585,'C7A.02','...','C7A.0'),(586,'C7A.09','...','C7A.0'),(587,'C7B.00','...','C7B.0'),(588,'C7B.01','...','C7B.0'),(589,'C7B.02','...','C7B.0'),(590,'C7B.03','...','C7B.0'),(591,'C7B.04','...','C7B.0'),(592,'C7B.09','...','C7B.0'),(593,'C76.40','...','C76.4'),(594,'C76.41','...','C76.4'),(595,'C76.42','...','C76.4'),(596,'C76.50','...','C76.5'),(597,'C76.51','...','C76.5'),(598,'C76.52','...','C76.5'),(599,'C78.00','...','C78.0'),(600,'C78.01','...','C78.0'),(601,'C78.02','...','C78.0'),(602,'C78.30','...','C78.3'),(603,'C78.39','...','C78.3'),(604,'C78.80','...','C78.8'),(605,'C78.89','...','C78.8'),(606,'C79.00','...','C79.0'),(607,'C79.01','...','C79.0'),(608,'C79.02','...','C79.0'),(609,'C79.10','...','C79.1'),(610,'C79.11','...','C79.1'),(611,'C79.19','...','C79.1'),(612,'C79.31','...','C79.3'),(613,'C79.32','...','C79.3'),(614,'C79.40','...','C79.4'),(615,'C79.49','...','C79.4'),(616,'C79.51','...','C79.5'),(617,'C79.52','...','C79.5'),(618,'C79.60','...','C79.6'),(619,'C79.61','...','C79.6'),(620,'C79.62','...','C79.6'),(621,'C79.70','...','C79.7'),(622,'C79.71','...','C79.7'),(623,'C79.72','...','C79.7'),(624,'C79.81','...','C79.8'),(625,'C79.82','...','C79.8'),(626,'C79.89','...','C79.8'),(627,'C81.00','...','C81.0'),(628,'C81.01','...','C81.0'),(629,'C81.02','...','C81.0'),(630,'C81.03','...','C81.0'),(631,'C81.04','...','C81.0'),(632,'C81.05','...','C81.0'),(633,'C81.06','...','C81.0'),(634,'C81.07','...','C81.0'),(635,'C81.08','...','C81.0'),(636,'C81.09','...','C81.0'),(637,'C81.10','...','C81.1'),(638,'C81.11','...','C81.1'),(639,'C81.12','...','C81.1'),(640,'C81.13','...','C81.1'),(641,'C81.14','...','C81.1'),(642,'C81.15','...','C81.1'),(643,'C81.16','...','C81.1'),(644,'C81.17','...','C81.1'),(645,'C81.18','...','C81.1'),(646,'C81.19','...','C81.1'),(647,'C81.20','...','C81.2'),(648,'C81.21','...','C81.2'),(649,'C81.22','...','C81.2'),(650,'C81.23','...','C81.2'),(651,'C81.24','...','C81.2'),(652,'C81.25','...','C81.2'),(653,'C81.26','...','C81.2'),(654,'C81.27','...','C81.2'),(655,'C81.28','...','C81.2'),(656,'C81.29','...','C81.2'),(657,'C81.30','...','C81.3'),(658,'C81.31','...','C81.3'),(659,'C81.32','...','C81.3'),(660,'C81.33','...','C81.3'),(661,'C81.34','...','C81.3'),(662,'C81.35','...','C81.3'),(663,'C81.36','...','C81.3'),(664,'C81.37','...','C81.3'),(665,'C81.38','...','C81.3'),(666,'C81.39','...','C81.3'),(667,'C81.40','...','C81.4'),(668,'C81.41','...','C81.4'),(669,'C81.42','...','C81.4'),(670,'C81.43','...','C81.4'),(671,'C81.44','...','C81.4'),(672,'C81.45','...','C81.4'),(673,'C81.46','...','C81.4'),(674,'C81.47','...','C81.4'),(675,'C81.48','...','C81.4'),(676,'C81.49','...','C81.4'),(677,'C81.70','...','C81.7'),(678,'C81.71','...','C81.7'),(679,'C81.72','...','C81.7'),(680,'C81.73','...','C81.7'),(681,'C81.74','...','C81.7'),(682,'C81.75','...','C81.7'),(683,'C81.76','...','C81.7'),(684,'C81.77','...','C81.7'),(685,'C81.78','...','C81.7'),(686,'C81.79','...','C81.7'),(687,'C81.90','...','C81.9'),(688,'C81.91','...','C81.9'),(689,'C81.92','...','C81.9'),(690,'C81.93','...','C81.9'),(691,'C81.94','...','C81.9'),(692,'C81.95','...','C81.9'),(693,'C81.96','...','C81.9'),(694,'C81.97','...','C81.9'),(695,'C81.98','...','C81.9'),(696,'C81.99','...','C81.9'),(697,'C82.00','...','C82.0'),(698,'C82.01','...','C82.0'),(699,'C82.02','...','C82.0'),(700,'C82.03','...','C82.0'),(701,'C82.04','...','C82.0'),(702,'C82.05','...','C82.0'),(703,'C82.06','...','C82.0'),(704,'C82.07','...','C82.0'),(705,'C82.08','...','C82.0'),(706,'C82.09','...','C82.0'),(707,'C82.10','...','C82.1'),(708,'C82.11','...','C82.1'),(709,'C82.12','...','C82.1'),(710,'C82.13','...','C82.1'),(711,'C82.14','...','C82.1'),(712,'C82.15','...','C82.1'),(713,'C82.16','...','C82.1'),(714,'C82.17','...','C82.1'),(715,'C82.18','...','C82.1'),(716,'C82.19','...','C82.1'),(717,'C82.20','...','C82.2'),(718,'C82.21','...','C82.2'),(719,'C82.22','...','C82.2'),(720,'C82.23','...','C82.2'),(721,'C82.24','...','C82.2'),(722,'C82.25','...','C82.2'),(723,'C82.26','...','C82.2'),(724,'C82.27','...','C82.2'),(725,'C82.28','...','C82.2'),(726,'C82.29','...','C82.2'),(727,'C82.30','...','C82.3'),(728,'C82.31','...','C82.3'),(729,'C82.32','...','C82.3'),(730,'C82.33','...','C82.3'),(731,'C82.34','...','C82.3'),(732,'C82.35','...','C82.3'),(733,'C82.36','...','C82.3'),(734,'C82.37','...','C82.3'),(735,'C82.38','...','C82.3'),(736,'C82.39','...','C82.3'),(737,'C82.40','...','C82.4'),(738,'C82.41','...','C82.4'),(739,'C82.42','...','C82.4'),(740,'C82.43','...','C82.4'),(741,'C82.44','...','C82.4'),(742,'C82.45','...','C82.4'),(743,'C82.46','...','C82.4'),(744,'C82.47','...','C82.4'),(745,'C82.48','...','C82.4'),(746,'C82.49','...','C82.4'),(747,'C82.50','...','C82.5'),(748,'C82.51','...','C82.5'),(749,'C82.52','...','C82.5'),(750,'C82.53','...','C82.5'),(751,'C82.54','...','C82.5'),(752,'C82.55','...','C82.5'),(753,'C82.56','...','C82.5'),(754,'C82.57','...','C82.5'),(755,'C82.58','...','C82.5'),(756,'C82.59','...','C82.5'),(757,'C82.60','...','C82.6'),(758,'C82.61','...','C82.6'),(759,'C82.62','...','C82.6'),(760,'C82.63','...','C82.6'),(761,'C82.64','...','C82.6'),(762,'C82.65','...','C82.6'),(763,'C82.66','...','C82.6'),(764,'C82.67','...','C82.6'),(765,'C82.68','...','C82.6'),(766,'C82.69','...','C82.6'),(767,'C82.80','...','C82.8'),(768,'C82.81','...','C82.8'),(769,'C82.82','...','C82.8'),(770,'C82.83','...','C82.8'),(771,'C82.84','...','C82.8'),(772,'C82.85','...','C82.8'),(773,'C82.86','...','C82.8'),(774,'C82.87','...','C82.8'),(775,'C82.88','...','C82.8'),(776,'C82.89','...','C82.8'),(777,'C82.90','...','C82.9'),(778,'C82.91','...','C82.9'),(779,'C82.92','...','C82.9'),(780,'C82.93','...','C82.9'),(781,'C82.94','...','C82.9'),(782,'C82.95','...','C82.9'),(783,'C82.96','...','C82.9'),(784,'C82.97','...','C82.9'),(785,'C82.98','...','C82.9'),(786,'C82.99','...','C82.9'),(787,'C83.00','...','C83.0'),(788,'C83.01','...','C83.0'),(789,'C83.02','...','C83.0'),(790,'C83.03','...','C83.0'),(791,'C83.04','...','C83.0'),(792,'C83.05','...','C83.0'),(793,'C83.06','...','C83.0'),(794,'C83.07','...','C83.0'),(795,'C83.08','...','C83.0'),(796,'C83.09','...','C83.0'),(797,'C83.10','...','C83.1'),(798,'C83.11','...','C83.1'),(799,'C83.12','...','C83.1'),(800,'C83.13','...','C83.1'),(801,'C83.14','...','C83.1'),(802,'C83.15','...','C83.1'),(803,'C83.16','...','C83.1'),(804,'C83.17','...','C83.1'),(805,'C83.18','...','C83.1'),(806,'C83.19','...','C83.1'),(807,'C83.30','...','C83.3'),(808,'C83.31','...','C83.3'),(809,'C83.32','...','C83.3'),(810,'C83.33','...','C83.3'),(811,'C83.34','...','C83.3'),(812,'C83.35','...','C83.3'),(813,'C83.36','...','C83.3'),(814,'C83.37','...','C83.3'),(815,'C83.38','...','C83.3'),(816,'C83.39','...','C83.3'),(817,'C83.50','...','C83.5'),(818,'C83.51','...','C83.5'),(819,'C83.52','...','C83.5'),(820,'C83.53','...','C83.5'),(821,'C83.54','...','C83.5'),(822,'C83.55','...','C83.5'),(823,'C83.56','...','C83.5'),(824,'C83.57','...','C83.5'),(825,'C83.58','...','C83.5'),(826,'C83.59','...','C83.5'),(827,'C83.70','...','C83.7'),(828,'C83.71','...','C83.7'),(829,'C83.72','...','C83.7'),(830,'C83.73','...','C83.7'),(831,'C83.74','...','C83.7'),(832,'C83.75','...','C83.7'),(833,'C83.76','...','C83.7'),(834,'C83.77','...','C83.7'),(835,'C83.78','...','C83.7'),(836,'C83.79','...','C83.7'),(837,'C83.80','...','C83.8'),(838,'C83.81','...','C83.8'),(839,'C83.82','...','C83.8'),(840,'C83.83','...','C83.8'),(841,'C83.84','...','C83.8'),(842,'C83.85','...','C83.8'),(843,'C83.86','...','C83.8'),(844,'C83.87','...','C83.8'),(845,'C83.88','...','C83.8'),(846,'C83.89','...','C83.8'),(847,'C83.90','...','C83.9'),(848,'C83.91','...','C83.9'),(849,'C83.92','...','C83.9'),(850,'C83.93','...','C83.9'),(851,'C83.94','...','C83.9'),(852,'C83.95','...','C83.9'),(853,'C83.96','...','C83.9'),(854,'C83.97','...','C83.9'),(855,'C83.98','...','C83.9'),(856,'C83.99','...','C83.9'),(857,'C84.00','...','C84.0'),(858,'C84.01','...','C84.0'),(859,'C84.02','...','C84.0'),(860,'C84.03','...','C84.0'),(861,'C84.04','...','C84.0'),(862,'C84.05','...','C84.0'),(863,'C84.06','...','C84.0'),(864,'C84.07','...','C84.0'),(865,'C84.08','...','C84.0'),(866,'C84.09','...','C84.0'),(867,'C84.10','...','C84.1'),(868,'C84.11','...','C84.1'),(869,'C84.12','...','C84.1'),(870,'C84.13','...','C84.1'),(871,'C84.14','...','C84.1'),(872,'C84.15','...','C84.1'),(873,'C84.16','...','C84.1'),(874,'C84.17','...','C84.1'),(875,'C84.18','...','C84.1'),(876,'C84.19','...','C84.1'),(877,'C84.40','...','C84.4'),(878,'C84.41','...','C84.4'),(879,'C84.42','...','C84.4'),(880,'C84.43','...','C84.4'),(881,'C84.44','...','C84.4'),(882,'C84.45','...','C84.4'),(883,'C84.46','...','C84.4'),(884,'C84.47','...','C84.4'),(885,'C84.48','...','C84.4'),(886,'C84.49','...','C84.4'),(887,'C84.60','...','C84.6'),(888,'C84.61','...','C84.6'),(889,'C84.62','...','C84.6'),(890,'C84.63','...','C84.6'),(891,'C84.64','...','C84.6'),(892,'C84.65','...','C84.6'),(893,'C84.66','...','C84.6'),(894,'C84.67','...','C84.6'),(895,'C84.68','...','C84.6'),(896,'C84.69','...','C84.6'),(897,'C84.70','...','C84.7'),(898,'C84.71','...','C84.7'),(899,'C84.72','...','C84.7'),(900,'C84.73','...','C84.7'),(901,'C84.74','...','C84.7'),(902,'C84.75','...','C84.7'),(903,'C84.76','...','C84.7'),(904,'C84.77','...','C84.7'),(905,'C84.78','...','C84.7'),(906,'C84.79','...','C84.7'),(907,'C84.A0','...','C84.A'),(908,'C84.A1','...','C84.A'),(909,'C84.A2','...','C84.A'),(910,'C84.A3','...','C84.A'),(911,'C84.A4','...','C84.A'),(912,'C84.A5','...','C84.A'),(913,'C84.A6','...','C84.A'),(914,'C84.A7','...','C84.A'),(915,'C84.A8','...','C84.A'),(916,'C84.A9','...','C84.A'),(917,'C84.Z0','...','C84.Z'),(918,'C84.Z1','...','C84.Z'),(919,'C84.Z2','...','C84.Z'),(920,'C84.Z3','...','C84.Z'),(921,'C84.Z4','...','C84.Z'),(922,'C84.Z5','...','C84.Z'),(923,'C84.Z6','...','C84.Z'),(924,'C84.Z7','...','C84.Z'),(925,'C84.Z8','...','C84.Z'),(926,'C84.Z9','...','C84.Z'),(927,'C84.90','...','C84.9'),(928,'C84.91','...','C84.9'),(929,'C84.92','...','C84.9'),(930,'C84.93','...','C84.9'),(931,'C84.94','...','C84.9'),(932,'C84.95','...','C84.9'),(933,'C84.96','...','C84.9'),(934,'C84.97','...','C84.9'),(935,'C84.98','...','C84.9'),(936,'C84.99','...','C84.9'),(937,'C85.10','...','C85.1'),(938,'C85.11','...','C85.1'),(939,'C85.12','...','C85.1'),(940,'C85.13','...','C85.1'),(941,'C85.14','...','C85.1'),(942,'C85.15','...','C85.1'),(943,'C85.16','...','C85.1'),(944,'C85.17','...','C85.1'),(945,'C85.18','...','C85.1'),(946,'C85.19','...','C85.1'),(947,'C85.20','...','C85.2'),(948,'C85.21','...','C85.2'),(949,'C85.22','...','C85.2'),(950,'C85.23','...','C85.2'),(951,'C85.24','...','C85.2'),(952,'C85.25','...','C85.2'),(953,'C85.26','...','C85.2'),(954,'C85.27','...','C85.2'),(955,'C85.28','...','C85.2'),(956,'C85.29','...','C85.2'),(957,'C85.80','...','C85.8'),(958,'C85.81','...','C85.8'),(959,'C85.82','...','C85.8'),(960,'C85.83','...','C85.8'),(961,'C85.84','...','C85.8'),(962,'C85.85','...','C85.8'),(963,'C85.86','...','C85.8'),(964,'C85.87','...','C85.8'),(965,'C85.88','...','C85.8'),(966,'C85.89','...','C85.8'),(967,'C85.90','...','C85.9'),(968,'C85.91','...','C85.9'),(969,'C85.92','...','C85.9'),(970,'C85.93','...','C85.9'),(971,'C85.94','...','C85.9'),(972,'C85.95','...','C85.9'),(973,'C85.96','...','C85.9'),(974,'C85.97','...','C85.9'),(975,'C85.98','...','C85.9'),(976,'C85.99','...','C85.9'),(977,'C90.00','...','C90.0'),(978,'C90.01','...','C90.0'),(979,'C90.02','...','C90.0'),(980,'C90.10','...','C90.1'),(981,'C90.11','...','C90.1'),(982,'C90.12','...','C90.1'),(983,'C90.20','...','C90.2'),(984,'C90.21','...','C90.2'),(985,'C90.22','...','C90.2'),(986,'C90.30','...','C90.3'),(987,'C90.31','...','C90.3'),(988,'C90.32','...','C90.3'),(989,'C91.00','...','C91.0'),(990,'C91.01','...','C91.0'),(991,'C91.02','...','C91.0'),(992,'C91.10','...','C91.1'),(993,'C91.11','...','C91.1'),(994,'C91.12','...','C91.1'),(995,'C91.30','...','C91.3'),(996,'C91.31','...','C91.3'),(997,'C91.32','...','C91.3'),(998,'C91.40','...','C91.4'),(999,'C91.41','...','C91.4'),(1000,'C91.42','...','C91.4');
/*!40000 ALTER TABLE `icdlevel4` ENABLE KEYS */;
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
INSERT INTO `incident` VALUES ('00120130604','1234saps',11,'2013-01-06','09:12:00',' Details are not clear.','Aviation Accident','\0',' asfsaf',0,'123 Street Road','2013-06-04'),('00220130604','1235saps',1,'2012-04-03','04:04:00','Details details details','None','','',0,'355 Way Street\r\nSuburban Bliss\r\nJohannesburg',NULL),('00320130604','1234saps',5,'2013-01-10','14:11:00',' wefwefw\r\n\r\n\r\n\r\n\r\n\r\n','None','','',3,' gfd\r\nefwef\r\nwef\r\n\r\n\r\n\r\n\r\n\r\n',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution`
--

LOCK TABLES `institution` WRITE;
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
INSERT INTO `institution` VALUES (1,'Institution 1'),(2,'Institution 2');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('as','asc','rank 1','null','SAPS','1234567890','GP/DK//00001/2013',19),('ascas','av','rank 1','12345678','null','12345678','GP/DK//00001/2013',20),('asc','asc','asc','null','null','null','GP/DK//00001/2013',21);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (7,'Health Care Hospital','0114567890','Hospital'),(8,'GS Funerals','0824400217','Funeral Parlour');
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
INSERT INTO `organizationtype` VALUES ('Funeral Parlour'),('Hospital');
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
INSERT INTO `property` VALUES ('null','watch','2013-06-04','null','null','null','null','null','null','null','john','doe','','GP/DK//00001/2013','\0');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertytype`
--

LOCK TABLES `propertytype` WRITE;
/*!40000 ALTER TABLE `propertytype` DISABLE KEYS */;
INSERT INTO `propertytype` VALUES (1,'h'),(2,'Phone');
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
INSERT INTO `province` VALUES (1,'Gauteng'),(2,'Free State');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race`
--

LOCK TABLES `race` WRITE;
/*!40000 ALTER TABLE `race` DISABLE KEYS */;
INSERT INTO `race` VALUES (1,'Asian'),(2,'Black'),(3,'Coloured'),(4,'Indian'),(5,'White');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank`
--

LOCK TABLES `rank` WRITE;
/*!40000 ALTER TABLE `rank` DISABLE KEYS */;
INSERT INTO `rank` VALUES (1,'Rank 1'),(2,'Rank 2'),(3,'Rank 3');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scenetype`
--

LOCK TABLES `scenetype` WRITE;
/*!40000 ALTER TABLE `scenetype` DISABLE KEYS */;
INSERT INTO `scenetype` VALUES (1,'Scene 1'),(2,'Scene 2');
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
INSERT INTO `vehicle` VALUES ('ABC123GP'),('DEF567GP'),('PKG297GP');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicledispatch`
--

LOCK TABLES `vehicledispatch` WRITE;
/*!40000 ALTER TABLE `vehicledispatch` DISABLE KEYS */;
INSERT INTO `vehicledispatch` VALUES ('00120130604','2013-06-04 08:42:57','ABC123GP',28),('00320130604','2013-06-04 09:41:32','ABC123GP',29);
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

-- Dump completed on 2013-06-05 10:19:45
