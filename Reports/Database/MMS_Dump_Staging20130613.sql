-- MySQL dump 10.13  Distrib 5.6.11, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atmortuary`
--

DROP TABLE IF EXISTS `atmortuary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atmortuary` (
  `bodyReceivedFromPerNumber` varchar(10) DEFAULT NULL,
  `bodyHandedOverToPerNumber` varchar(10) NOT NULL,
  `Body_idDeathRegisterNumber` varchar(45) NOT NULL,
  `idAtMortuary` int(11) NOT NULL AUTO_INCREMENT,
  `bodyHandOverFromOrganization` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAtMortuary`),
  KEY `fk_AtMortuary_Body1_idx` (`Body_idDeathRegisterNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  KEY `fk_AtScene_Body1_idx` (`Body_idDeathRegisterNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `bodyReleaseType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDeathRegisterNumber`),
  KEY `fk_Body_Incident1_idx` (`Incident_incidentLogNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bodylink`
--

DROP TABLE IF EXISTS `bodylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodylink` (
  `idBodyLink` int(11) NOT NULL AUTO_INCREMENT,
  `BodyFile_Body_idDeathRegisterNumber1` varchar(45) NOT NULL,
  `linkDeathRegisterNumber` varchar(45) NOT NULL,
  PRIMARY KEY (`idBodyLink`),
  KEY `fk_BodyLink_BodyFile2_idx` (`BodyFile_Body_idDeathRegisterNumber1`),
  KEY `fk_BodyLink_link_idx` (`linkDeathRegisterNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  KEY `fk_DeathCall_Incident1_idx` (`Incident_incidentLogNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `icdlevel1`
--

DROP TABLE IF EXISTS `icdlevel1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icdlevel1` (
  `chapter` int(3) NOT NULL AUTO_INCREMENT,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`chapter`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `icdlevel2`
--

DROP TABLE IF EXISTS `icdlevel2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icdlevel2` (
  `level2_id` int(10) NOT NULL AUTO_INCREMENT,
  `diag1_Id` varchar(10) NOT NULL,
  `description` varchar(500) NOT NULL,
  `ICDLevel1_chapter` int(11) NOT NULL,
  PRIMARY KEY (`level2_id`,`diag1_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1824 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`icd_level3_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9287 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `icdlevel4`
--

DROP TABLE IF EXISTS `icdlevel4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icdlevel4` (
  `icdlevel4_Id` int(11) NOT NULL AUTO_INCREMENT,
  `diag3_Id` char(10) NOT NULL,
  `description` varchar(500) NOT NULL,
  `ICDLevel3_dia2Id` char(10) NOT NULL,
  PRIMARY KEY (`icdlevel4_Id`,`diag3_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `informantproperty`
--

DROP TABLE IF EXISTS `informantproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informantproperty` (
  `idInformant` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `propertyDescription` longtext,
  `cash` longtext,
  `otherGoods` longtext,
  `witness1_name` varchar(45) DEFAULT NULL,
  `witness1_surname` varchar(45) DEFAULT NULL,
  `witness2_name` varchar(45) DEFAULT NULL,
  `witness2_surname` varchar(45) DEFAULT NULL,
  `Body_idDeathRegisterNumber` varchar(45) NOT NULL,
  PRIMARY KEY (`idInformant`),
  KEY `fk_InformantProperty_Body1_idx` (`Body_idDeathRegisterNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
  `sealNumber` varchar(45) DEFAULT NULL,
  `description` longtext,
  `date` date DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `sealType` varchar(45) DEFAULT NULL,
  `takenBy` varchar(10) DEFAULT NULL,
  `witness1_name` varchar(45) DEFAULT NULL,
  `witness1_surname` varchar(45) DEFAULT NULL,
  `witness2_name` varchar(45) DEFAULT NULL,
  `witness2_surname` varchar(45) DEFAULT NULL,
  `SAPS_name` varchar(45) DEFAULT NULL,
  `SAPS_surname` varchar(45) DEFAULT NULL,
  `SAPS_taken` bit(1) NOT NULL,
  `Body_idDeathRegisterNumber` varchar(45) NOT NULL,
  `released` bit(1) NOT NULL,
  `idProperty` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idProperty`),
  KEY `fk_Property_Body1_idx` (`Body_idDeathRegisterNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recipient`
--

DROP TABLE IF EXISTS `recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipient` (
  `idRecipient` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `ID` varchar(45) DEFAULT NULL,
  `idType` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `contactNumber` varchar(45) DEFAULT NULL,
  `Body_idDeathRegisterNumber` varchar(45) NOT NULL,
  PRIMARY KEY (`idRecipient`),
  KEY `fk_table1_Body1_idx` (`Body_idDeathRegisterNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `idRegion` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `province` varchar(45) NOT NULL,
  PRIMARY KEY (`idRegion`),
  UNIQUE KEY `province_UNIQUE` (`province`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-13 10:12:42
