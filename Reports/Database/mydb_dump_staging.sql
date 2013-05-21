-- MySQL dump 10.13  Distrib 5.6.10, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb_dump_staging
-- ------------------------------------------------------
-- Server version	5.6.10

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
  PRIMARY KEY (`idAnalysis`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
  KEY `fk_AtMortuary_Body1_idx` (`Body_idDeathRegisterNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atmortuary`
--

LOCK TABLES `atmortuary` WRITE;
/*!40000 ALTER TABLE `atmortuary` DISABLE KEYS */;
INSERT INTO `atmortuary` VALUES ('peter','john','099888592',1);
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
  KEY `fk_AtScene_Body1_idx` (`Body_idDeathRegisterNumber`)
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audittrail`
--

LOCK TABLES `audittrail` WRITE;
/*!40000 ALTER TABLE `audittrail` DISABLE KEYS */;
INSERT INTO `audittrail` VALUES (1,'2013-05-20','09:42:30','Log In','Successfull log in','12345678','Log In Screen'),(2,'2013-05-20','11:12:17','Log In','Successfull log in','12345678','Log In Screen'),(3,'2013-05-20','11:32:46','Log In','Successfull log in','12345678','Log In Screen'),(4,'2013-05-20','12:22:02','Log In','Successfull log in','12345678','Log In Screen'),(5,'2013-05-20','12:36:17','Log In','Successfull log in','12345678','Log In Screen'),(6,'2013-05-20','12:49:22','Log In','Successfull log in','12345678','Log In Screen');
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
  KEY `fk_Body_Incident1_idx` (`Incident_incidentLogNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `body`
--

LOCK TABLES `body` WRITE;
/*!40000 ALTER TABLE `body` DISABLE KEYS */;
INSERT INTO `body` VALUES ('099888592','female','0','3','00','00','3333','2013-04-23',20,'4444333222','4442000','44432ddd','22kfdkd','2013-04-23 00:00:00',20,6,'gg','ggrer','\0','2013-06-03 00:00:00','\0','002201301','44dddd33221','2013-06-03 00:00:00','2013-06-03');
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
  KEY `fk_BodyAddress_Body1_idx` (`Body_idDeathRegisterNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodyaddress`
--

LOCK TABLES `bodyaddress` WRITE;
/*!40000 ALTER TABLE `bodyaddress` DISABLE KEYS */;
INSERT INTO `bodyaddress` VALUES ('D','D','D','D','e','f','g','h','099888592',1);
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
  KEY `fk_Case_Body1_idx` (`Body_idDeathRegisterNumber`)
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
  KEY `fk_BodyLink_BodyFile2_idx` (`BodyFile_Body_idDeathRegisterNumber1`)
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
  PRIMARY KEY (`idBodyPart`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
  PRIMARY KEY (`idBodyReleasePlace`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
  PRIMARY KEY (`idBodyReleaseStatus`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
  PRIMARY KEY (`idBodyStatus`),
  UNIQUE KEY `state_UNIQUE` (`state`)
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
  PRIMARY KEY (`idBodyStorage`),
  UNIQUE KEY `nameOfMortuary_UNIQUE` (`nameOfMortuary`)
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
  `Incident_incidentLogNumber` varchar(9) NOT NULL,
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
  KEY `fk_DeathCall_Incident1_idx` (`Incident_incidentLogNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deathcall`
--

LOCK TABLES `deathcall` WRITE;
/*!40000 ALTER TABLE `deathcall` DISABLE KEYS */;
/*!40000 ALTER TABLE `deathcall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver` (
  `idDriver` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDriver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
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
  KEY `fk_DutyRoster_Employee_idx` (`Employee_password`,`Employee_personnelNumber`)
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
  PRIMARY KEY (`password`,`personnelNumber`),
  UNIQUE KEY `personnelNumber_UNIQUE` (`personnelNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86','11111111','User','UserSurname','Admin','user1@user.com',4,''),('ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413','12345678','User2','UserSurname2','Pathologist','user2@user.com',3,'');
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
  PRIMARY KEY (`idExternalCircumstance`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
  KEY `fk_ForensicSample_LabRecord1_idx` (`labNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forensicsample`
--

LOCK TABLES `forensicsample` WRITE;
/*!40000 ALTER TABLE `forensicsample` DISABLE KEYS */;
INSERT INTO `forensicsample` VALUES ('1234','099888592','reas','xxxx','brolN','tyAna','insti','speacialIn','','908','2010-10-07','0200-01-02');
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
  PRIMARY KEY (`idGender`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital` (
  `name` varchar(45) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `Organization_idOrganization` int(11) NOT NULL,
  PRIMARY KEY (`Organization_idOrganization`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_Hospital_Organization1_idx` (`Organization_idOrganization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
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
  PRIMARY KEY (`idICD10`),
  UNIQUE KEY `code_UNIQUE` (`code`)
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
INSERT INTO `incident` VALUES ('002201301','REF',4,'2013-04-06','11:50:30','rap stabbing','had beef with Rick Ross','','Burger King',1,'vegas','2013-04-06');
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
  KEY `fk_IncidentMessage_Incident1_idx` (`Incident_incidentLogNumber`)
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
  PRIMARY KEY (`idInstitution`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
  KEY `fk_Kin_Body1_idx` (`Body_idDeathRegisterNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kin`
--

LOCK TABLES `kin` WRITE;
/*!40000 ALTER TABLE `kin` DISABLE KEYS */;
INSERT INTO `kin` VALUES ('9005265229088','Chester','Cobus','Brother','0824400299',' 595 Gerald','  595 Gerald','','099888592',1);
/*!40000 ALTER TABLE `kin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labrecord`
--

DROP TABLE IF EXISTS `labrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labrecord` (
  `receivedAllSamples` bit(1) DEFAULT NULL,
  `labNumber` varchar(45) NOT NULL,
  `idLabRecord` int(11) NOT NULL AUTO_INCREMENT,
  `numberOfSamples` int(11) DEFAULT NULL,
  `sampleCounter` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLabRecord`),
  KEY `fk_LabRecord_PostMortem1_idx` (`labNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labrecord`
--

LOCK TABLES `labrecord` WRITE;
/*!40000 ALTER TABLE `labrecord` DISABLE KEYS */;
INSERT INTO `labrecord` VALUES ('\0','908',2,6,1);
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
  PRIMARY KEY (`idMannerOfDeath`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
  PRIMARY KEY (`idMartalStatus`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
  KEY `fk_Member_AtScene1` (`AtScene_Body_idDeathRegisterNumber`)
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
  PRIMARY KEY (`idOccupation`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_Organization_OrganizationType1_idx` (`OrganizationType_type`)
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
-- Table structure for table `pathologyunit`
--

DROP TABLE IF EXISTS `pathologyunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pathologyunit` (
  `name` varchar(45) NOT NULL,
  `contactNumber` varchar(45) NOT NULL,
  `Organization_idOrganization` int(11) NOT NULL,
  PRIMARY KEY (`Organization_idOrganization`),
  KEY `fk_PathologyUnit_Organization1_idx` (`Organization_idOrganization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pathologyunit`
--

LOCK TABLES `pathologyunit` WRITE;
/*!40000 ALTER TABLE `pathologyunit` DISABLE KEYS */;
/*!40000 ALTER TABLE `pathologyunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policestation`
--

DROP TABLE IF EXISTS `policestation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policestation` (
  `name` varchar(45) NOT NULL,
  `contactNumber` varchar(45) NOT NULL,
  `Organization_idOrganization` int(11) NOT NULL,
  PRIMARY KEY (`Organization_idOrganization`),
  KEY `fk_PoliceStation_Organization1_idx` (`Organization_idOrganization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policestation`
--

LOCK TABLES `policestation` WRITE;
/*!40000 ALTER TABLE `policestation` DISABLE KEYS */;
/*!40000 ALTER TABLE `policestation` ENABLE KEYS */;
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
  KEY `fk_PostMortem_Body1_idx` (`Body_idDeathRegisterNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postmortem`
--

LOCK TABLES `postmortem` WRITE;
/*!40000 ALTER TABLE `postmortem` DISABLE KEYS */;
INSERT INTO `postmortem` VALUES ('908','f','g','gy','','','ff','099888592');
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
  KEY `fk_Property_Body1_idx` (`Body_idDeathRegisterNumber`)
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
  PRIMARY KEY (`idPropertyType`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
  PRIMARY KEY (`idProvince`),
  UNIQUE KEY `type_UNIQUE` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (2,'Freestate'),(1,'Gauteng');
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
  PRIMARY KEY (`idRace`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
  PRIMARY KEY (`idRank`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
  PRIMARY KEY (`idRegion`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
  PRIMARY KEY (`idRelationship`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
-- Table structure for table `samlpelab`
--

DROP TABLE IF EXISTS `samlpelab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `samlpelab` (
  `name` varchar(45) NOT NULL,
  `contactNumber` varchar(45) NOT NULL,
  `Organization_idOrganization` int(11) NOT NULL,
  PRIMARY KEY (`Organization_idOrganization`),
  KEY `fk_SamlpeLab_Organization1_idx` (`Organization_idOrganization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `samlpelab`
--

LOCK TABLES `samlpelab` WRITE;
/*!40000 ALTER TABLE `samlpelab` DISABLE KEYS */;
/*!40000 ALTER TABLE `samlpelab` ENABLE KEYS */;
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
  PRIMARY KEY (`idSample`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
-- Table structure for table `samplelab`
--

DROP TABLE IF EXISTS `samplelab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `samplelab` (
  `name` varchar(45) NOT NULL,
  `contactNumber` varchar(45) NOT NULL,
  `Organization_idOrganization` int(11) NOT NULL,
  PRIMARY KEY (`Organization_idOrganization`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_SamlpeLab_Organization1_idx` (`Organization_idOrganization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `samplelab`
--

LOCK TABLES `samplelab` WRITE;
/*!40000 ALTER TABLE `samplelab` DISABLE KEYS */;
/*!40000 ALTER TABLE `samplelab` ENABLE KEYS */;
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
  PRIMARY KEY (`idSceneType`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
  PRIMARY KEY (`idSeal`),
  UNIQUE KEY `type_UNIQUE` (`type`)
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
  PRIMARY KEY (`idSpecialCircumstance`),
  UNIQUE KEY `type_UNIQUE` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialcircumstance`
--

LOCK TABLES `specialcircumstance` WRITE;
/*!40000 ALTER TABLE `specialcircumstance` DISABLE KEYS */;
INSERT INTO `specialcircumstance` VALUES (1,'Accident'),(2,'None');
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
  PRIMARY KEY (`registrationNumber`),
  UNIQUE KEY `registrationNumber_UNIQUE` (`registrationNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
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
  UNIQUE KEY `Vehicle_registrationNumber_UNIQUE` (`Vehicle_registrationNumber`),
  KEY `fk_VehicleDispatch_Incident1_idx` (`Incident_incidentLogNumber`),
  KEY `fk_VehicleDispatch_Vehicle1_idx` (`Vehicle_registrationNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicledispatch`
--

LOCK TABLES `vehicledispatch` WRITE;
/*!40000 ALTER TABLE `vehicledispatch` DISABLE KEYS */;
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
  PRIMARY KEY (`idVehicle`),
  UNIQUE KEY `type_UNIQUE` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiclerecord`
--

LOCK TABLES `vehiclerecord` WRITE;
/*!40000 ALTER TABLE `vehiclerecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehiclerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb_dump_staging'
--
/*!50003 DROP PROCEDURE IF EXISTS `CALL_Procedures` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CALL_Procedures`(OUT ex INT, OUT msg VARCHAR(45))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET ex = -2; END;
	SET ex = 0; SET msg = 'CAll procedures are successful';

	call mydb_dump_staging.Truncate_tables;

	call mydb_dump_staging.Extract_atscene(msg);
	call mydb_dump_staging.Extract_analysis(msg);
	call mydb_dump_staging.Extract_atmortuary(msg);
	call mydb_dump_staging.Extract_audittrail(msg);
	call mydb_dump_staging.Extract_body(msg);
	call mydb_dump_staging.Extract_bodyaddress(msg);
	call mydb_dump_staging.Extract_bodyfile(msg);
	call mydb_dump_staging.Extract_bodylink(msg);
	call mydb_dump_staging.Extract_bodypart(msg);
	call mydb_dump_staging.Extract_bodyreleaseplace(msg);
	call mydb_dump_staging.Extract_bodyreleasestatus(msg);
	call mydb_dump_staging.Extract_bodystatus(msg);
	#call mydb_dump_staging.Extract_bodystorage(msg);
	call mydb_dump_staging.Extract_deathcall(msg);
	call mydb_dump_staging.Extract_dutyroster(msg);
	#call mydb_dump_staging.Extract_driver(msg);
	call mydb_dump_staging.Extract_employee(msg);
	#call mydb_dump_staging.Extract_externalcircumstance(msg);
	call mydb_dump_staging.Extract_forensicsample(msg);
	call mydb_dump_staging.Extract_gender(msg);
	#call mydb_dump_staging.Extract_hospital(msg);
	call mydb_dump_staging.Extract_icd10(msg);
	call mydb_dump_staging.Extract_incident(msg);
	call mydb_dump_staging.Extract_incidentmessage(msg);
	call mydb_dump_staging.Extract_institution(msg);
	call mydb_dump_staging.Extract_kin(msg);
	call mydb_dump_staging.Extract_labrecord(msg);
	call mydb_dump_staging.Extract_mannerofdeath(msg);
	call mydb_dump_staging.Extract_maritalstatus(msg);
	call mydb_dump_staging.Extract_member(msg);
	call mydb_dump_staging.Extract_occupation(msg);
	call mydb_dump_staging.Extract_organization(msg);
	call mydb_dump_staging.Extract_organizationtype(msg);
	#call mydb_dump_staging.Extract_pathologyunit(msg);
	call mydb_dump_staging.Extract_postmortem(msg);
	#call mydb_dump_staging.Extract_policestation(msg);
	call mydb_dump_staging.Extract_property(msg);
	#call mydb_dump_staging.Extract_propertytype(msg);
	call mydb_dump_staging.Extract_province(msg);
	call mydb_dump_staging.Extract_race(msg);
	call mydb_dump_staging.Extract_rank(msg);
	call mydb_dump_staging.Extract_region(msg);
	call mydb_dump_staging.Extract_relationship(msg);
	#call mydb_dump_staging.Extract_samplelab(msg);
	call mydb_dump_staging.Extract_sample(msg);
	#call mydb_dump_staging.Extract_scenetype(msg);
	call mydb_dump_staging.Extract_seal(msg);
	call mydb_dump_staging.Extract_specialcircumstance(msg);
	call mydb_dump_staging.Extract_vehicle(msg);
	call mydb_dump_staging.Extract_vehicledispatch(msg);
	#call mydb_dump_staging.Extract_vehiclerecord(msg);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_analysis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_analysis`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_analysis'; END;
	SET  msg = '';



INSERT INTO `mydb_dump_staging`.`analysis`
(`idAnalysis`,
`type`)
SELECT *
		FROM mydb.analysis;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_atmortuary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_atmortuary`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_atmortuary'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`atmortuary`
(`bodyReceivedFromPerNumber`,
`bodyHandOverFromPerNumber`,
`Body_idDeathRegisterNumber`,
`idAtMortuary`)
SELECT *
		FROM mydb.atmortuary;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_atscene` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_atscene`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_atscene'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`atscene`
(`sceneIncidentOccured`,
`sceneDateTime`,
`pathOnScene`,
`allegedInjuryDateTime`,
`allegedDeathDateTime`,
`externalCircumstanceOfInjury`,
`placeOfDeath`,
`dateTimeBodyFound`,
`Body_idDeathRegisterNumber`,
`idAtScene`)
SELECT *
		FROM mydb.atscene;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_audittrail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_audittrail`(OUT msg VARCHAR(45))
BEGIN


DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_audittrail'; END;
	SET msg = '';


INSERT INTO `mydb_dump_staging`.`audittrail`
(`idAuditTrail`,
`date`,
`time`,
`eventType`,
`eventMessage`,
`currentUser`,
`eventLocation`)
SELECT *
		FROM mydb.audittrail;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_body` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_body`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_body'; END;
	SET  msg = '';

INSERT INTO `mydb_dump_staging`.`body`
(`idDeathRegisterNumber`,
`gender`,
`race`,
`assignedTo`,
`nameOfDeceased`,
`surnameOfDeceased`,
`placeOfBirth`,
`dateOfBirth`,
`ageOnDateFound`,
`maritalStatus`,
`occupation`,
`citizen`,
`maidenName`,
`identifiedDateTime`,
`estimatedAgeYear`,
`estimatedAgeMonth`,
`ID`,
`passport`,
`bodyStatus`,
`dateBodyReceived`,
`bodyReleased`,
`Incident_incidentLogNumber`,
`bodyType`,
`dateBodyReleased`,
`bodyReleasedTo`)

		SELECT *
		FROM mydb.body;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_bodyaddress` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_bodyaddress`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_bodyaddress'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`bodyaddress`
(`building`,
`street`,
`suburb`,
`city`,
`postalCode`,
`province`,
`region`,
`magisterialDistrict`,
`Body_idDeathRegisterNumber`,
`idBodyAddress`)
SELECT *
		FROM mydb.bodyaddress;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_bodyfile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_bodyfile`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_bodyfile'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`bodyfile`
(`dateFileOpened`,
`bodyFileStatus`,
`Body_idDeathRegisterNumber`,
`allSamplesReceived`,
`bodyIdentified`,
`postMortemComplete`,
`idBodyFile`,
`dateFileClosed`)
SELECT *
		FROM mydb.bodyfile;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_bodylink` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_bodylink`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_bodylink'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`bodylink`
(`idBodyLink`,
`BodyFile_Body_idDeathRegisterNumber1`)
SELECT *
		FROM mydb.bodylink;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_bodypart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_bodypart`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_bodypart'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`bodypart`
(`idBodyPart`,
`type`)
SELECT *
		FROM mydb.bodypart;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_bodyreleaseplace` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_bodyreleaseplace`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_bodyreleaseplace'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`bodyreleaseplace`
(`idBodyReleasePlace`,
`type`)
SELECT *
		FROM mydb.bodyreleaseplace;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_bodyreleasestatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_bodyreleasestatus`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_bodyreleasestatus'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`bodyreleasestatus`
(`idBodyReleaseStatus`,
`type`)
SELECT *
		FROM mydb.bodyreleasestatus;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_bodystatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_bodystatus`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_bodystatus'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`bodystatus`
(`idBodyStatus`, `state`)
SELECT *
		FROM `mydb`.`bodystatus`;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_bodystorage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_bodystorage`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_bodystorage'; END;
	SET msg = '';

INSERT INTO `mydb`.`bodystorage`
(`idBodyStorage`,
`numberOfBins`,
`nameOfMortuary`)
SELECT * FROM mydb.bodystorage;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_deathcall` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_deathcall`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_deathcall'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`deathcall`
(`Incident_incidentLogNumber`,
`timeOfCall`,
`dateOfCall`,
`numberOfCaller`,
`institution`,
`sceneAddress`,
`province`,
`region`,
`sceneConditions`,
`nameOfCaller`)
SELECT *
		FROM mydb.deathcall;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_driver` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_driver`(OUT msg VARCHAR(45))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_driver'; END;
	SET msg = '';

INSERT INTO `mydb`.`driver`
(`idDriver`,
`name`,
`surname`)
select * from mydb.driver;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_dutyroster` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_dutyroster`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_dutyroster'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`dutyroster`
(`idDutyRoster`,
`startTime`,
`endTime`,
`role`,
`Employee_password`,
`Employee_personnelNumber`)
SELECT *
		FROM mydb.dutyroster;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_employee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_employee`(OUT msg VARCHAR(45))
BEGIN


DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_employee'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`employee`
(`password`,
`personnelNumber`,
`name`,
`surname`,
`rank`,
`email`,
`access`,
`active`)

SELECT *
		FROM mydb.employee;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_externalcircumstance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_externalcircumstance`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_externalcircumstance'; END;
	SET msg = '';

INSERT INTO `mydb`.`externalcircumstance`
(`idExternalCircumstance`,
`type`)
select * from mydb.externalcircumstance;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_forensicsample` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_forensicsample`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_forensicsample'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`forensicsample`
(`sealNumber`,
`deathRegisterNumber`,
`reason`,
`sealType`,
`brokenSealNumber`,
`typeOfAnalysis`,
`institution`,
`specialInstructions`,
`received`,
`labNumber`,
`dateSent`,
`dateReceived`)

SELECT *
		FROM mydb.forensicsample;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_gender` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_gender`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_gender'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`gender`
(`idGender`,
`type`)
SELECT *
		FROM mydb.gender;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_hospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_hospital`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_hospital'; END;
	SET msg = '';
INSERT INTO `mydb`.`hospital`
(`name`,
`contactNumber`,
`Organization_idOrganization`)
select * from mydb.hospital;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_icd10` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_icd10`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_icd10'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`icd10`
(`idICD10`,
`code`)
SELECT `idICD10`,
`code`
		FROM mydb.icd10;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_incident` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_incident`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_incident'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`incident`
(`incidentLogNumber`,
`referenceNumber`,
`numberOfBodies`,
`dateOfIncident`,
`timeOfIncident`,
`circumstanceOfDeath`,
`specialCircumstances`,
`status`,
`reason`,
`bodyCount`,
`placeBodyFound`,
`dateIncidentClosed`)

SELECT *
		FROM mydb.incident;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_incidentmessage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_incidentmessage`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_incidentmessage'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`incidentmessage`
(`date`,
`time`,
`mannerOfDeath`,
`nameOfDeceased`,
`vip`,
`bodyFileStatus`,
`Incident_incidentLogNumber`,
`idIncidentMessage`)

SELECT *
		FROM mydb.incidentmessage;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_institution` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_institution`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_institution'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`institution`
(`idInstitution`,
`type`)

SELECT *
		FROM mydb.institution;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_kin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_kin`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_kin'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`kin`
(`passport`,
`name`,
`surname`,
`relationWithDeceased`,
`contactNumber`,
`address`,
`workAddress`,
`ID`,
`Body_idDeathRegisterNumber`,
`idKin`)

SELECT *
		FROM mydb.kin;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_labrecord` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_labrecord`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_labrecord'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`labrecord`
(`receivedAllSamples`,
`labNumber`,
`idLabRecord`,
`numberOfSamples`,
`sampleCounter`)

SELECT *
		FROM mydb.labrecord;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_mannerofdeath` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_mannerofdeath`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_mannerofdeath'; END;
	SET msg = '';


INSERT INTO `mydb_dump_staging`.`mannerofdeath`
(`idMannerOfDeath`,
`type`)
SELECT *
		FROM mydb.mannerofdeath;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_maritalstatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_maritalstatus`(OUT msg VARCHAR(45))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_maritalstatus'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`maritalstatus`
(`idMartalStatus`,
`type`)
SELECT *
		FROM mydb.maritalstatus;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_member` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_member`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_member'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`member`
(`name`,
`surname`,
`rank`,
`personnelNumber`,
`organization`,
`contactNumber`,
`AtScene_Body_idDeathRegisterNumber`,
`idMember`)
SELECT *
		FROM mydb.member;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_occupation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_occupation`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_occupation'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`occupation`
(`idOccupation`,
`type`)
SELECT *
		FROM mydb.occupation;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_organization` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_organization`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_organization'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`organization`
(`idOrganization`,
`name`,
`contactNumber`,
`OrganizationType_type`)
SELECT *
		FROM mydb.organization;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_organizationtype` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_organizationtype`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_organizationtype'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`organizationtype`
(`type`)
SELECT *
		FROM mydb.organizationtype;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_pathologyunit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_pathologyunit`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_pathologyunit'; END;
	SET msg = '';

INSERT INTO `mydb`.`pathologyunit`
(`name`,
`contactNumber`,
`Organization_idOrganization`)
Select * from mydb.pathologyunit;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_policestation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_policestation`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_policestation'; END;
	SET msg = '';

INSERT INTO `mydb`.`policestation`
(`name`,
`contactNumber`,
`Organization_idOrganization`)

Select * from mydb.policestation;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_postmortem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_postmortem`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_postmortem'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`postmortem`
(`labNumber`,
`icd10`,
`chiefFind`,
`causeOfDeath`,
`status`,
`approved`,
`DHA1663number`,
`Body_idDeathRegisterNumber`)
SELECT *
		FROM mydb.postmortem;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_property` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_property`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_property'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`property`
(`sealNumber`,
`description`,
`date`,
`type`,
`sealType`,
`takenBy`,
`witness1_name`,
`witness1_surname`,
`witness2_name`,
`witness2_surname`,
`SAPS_name`,
`SAPS_surname`,
`SAPS_taken`,
`Body_idDeathRegisterNumber`,
`released`)
SELECT *
		FROM `mydb`.`property`;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_propertytype` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_propertytype`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_scenetype'; END;
	SET msg = '';
INSERT INTO `mydb`.`propertytype`
(`idPropertyType`,
`type`)
SELECT * FROM mydb.propertytype;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_province` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_province`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_province'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`province`
(`idProvince`,
`type`)
SELECT *
		FROM mydb.province;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_race` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_race`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_race'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`race`
(`idRace`,
`type`)
SELECT *
		FROM mydb.race;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_rank` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_rank`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_rank'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`rank`
(`idRank`,
`type`)
SELECT *
		FROM mydb.rank;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_region` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_region`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_region'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`region`
(`idRegion`,
`type`)
SELECT *
		FROM mydb.region;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_relationship` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_relationship`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_relationship'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`relationship`
(`idRelationship`,
`type`)
SELECT *
		FROM mydb.relationship;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_sample` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_sample`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_sample'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`sample`
(`idSample`,
`type`)
SELECT *
		FROM mydb.sample;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_samplelab` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_samplelab`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_samplelab'; END;
	SET msg = '';

INSERT INTO `mydb`.`samlpelab`
(`name`,
`contactNumber`,
`Organization_idOrganization`)
SELECT * FROM mydb.samlpelab;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_scenetype` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_scenetype`(OUT msg VARCHAR(45))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_scenetype'; END;
	SET msg = '';

INSERT INTO `mydb`.`scenetype`
(`idSceneType`,
`type`)
SELECT * FROM mydb.scenetype;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_seal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_seal`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_seal'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`seal`
(`idSeal`,
`type`)
SELECT *
		FROM mydb.seal;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_specialcircumstance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_specialcircumstance`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_specialcircumstance'; END;
	SET msg = '';


INSERT INTO `mydb_dump_staging`.`specialcircumstance`
(`idSpecialCircumstance`,
`type`)
SELECT *
		FROM mydb.specialcircumstance;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_vehicle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_vehicle`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_vehicle'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`vehicle`
(`registrationNumber`)
SELECT *
		FROM mydb.vehicle;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_vehicledispatch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_vehicledispatch`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_vehicledispatch'; END;
	SET msg = '';

INSERT INTO `mydb_dump_staging`.`vehicledispatch`
(`Incident_incidentLogNumber`,
`notificationDateTime`,
`Vehicle_registrationNumber`,
`idVehicleDispatch`)
SELECT *
		FROM mydb.vehicledispatch;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Extract_vehiclerecord` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Extract_vehiclerecord`(OUT msg VARCHAR(45))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN SET  msg = 'Error in Extract_vehiclerecord'; END;
	SET msg = '';

INSERT INTO `mydb`.`vehiclerecord`
(`idVehicle`,
`type`)
SELECT * FROM mydb.vehiclerecord;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Truncate_tables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Truncate_tables`()
BEGIN
SET FOREIGN_KEY_CHECKS = 0;
truncate `mydb_dump_staging`.`atscene`;
truncate `mydb_dump_staging`.`analysis`;
truncate `mydb_dump_staging`.`atmortuary`;
truncate `mydb_dump_staging`.`audittrail`;
truncate `mydb_dump_staging`.`body`;
truncate `mydb_dump_staging`.`bodyaddress`;
truncate `mydb_dump_staging`.`bodyfile`;
truncate `mydb_dump_staging`.`bodylink`;
truncate `mydb_dump_staging`.`bodypart`;
truncate `mydb_dump_staging`.`bodyreleaseplace`;
truncate `mydb_dump_staging`.`bodyreleasestatus`;
truncate `mydb_dump_staging`.`bodystatus`;
truncate `mydb_dump_staging`.`deathcall`;
truncate `mydb_dump_staging`.`dutyroster`;
truncate `mydb_dump_staging`.`employee`;
truncate `mydb_dump_staging`.`forensicsample`;
truncate `mydb_dump_staging`.`gender`;
truncate `mydb_dump_staging`.`icd10`;
truncate `mydb_dump_staging`.`incident`;
truncate `mydb_dump_staging`.`incidentmessage`;
truncate `mydb_dump_staging`.`institution`;
truncate `mydb_dump_staging`.`kin`;
truncate `mydb_dump_staging`.`labrecord`;
truncate `mydb_dump_staging`.`mannerofdeath`;
truncate `mydb_dump_staging`.`maritalstatus`;
truncate `mydb_dump_staging`.`member`;
truncate `mydb_dump_staging`.`occupation`;
truncate `mydb_dump_staging`.`organization`;
truncate `mydb_dump_staging`.`organizationtype`;
truncate `mydb_dump_staging`.`postmortem`;
truncate `mydb_dump_staging`.`property`;
truncate `mydb_dump_staging`.`province`;
truncate `mydb_dump_staging`.`race`;
truncate `mydb_dump_staging`.`rank`;
truncate `mydb_dump_staging`.`region`;
truncate `mydb_dump_staging`.`relationship`;
truncate `mydb_dump_staging`.`sample`;
truncate `mydb_dump_staging`.`seal`;
truncate `mydb_dump_staging`.`specialcircumstance`;
truncate `mydb_dump_staging`.`vehicle`;
truncate `mydb_dump_staging`.`vehicledispatch`;


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

-- Dump completed on 2013-05-21 10:47:06
