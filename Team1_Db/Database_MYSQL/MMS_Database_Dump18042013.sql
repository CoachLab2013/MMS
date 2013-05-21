-- MySQL dump 10.13  Distrib 5.5.30, for Win64 (x86)
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
  `idAnalysis` int(11) NOT NULL,
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
  `idAtMortuary` int(11) NOT NULL,
  `bodyReceievedFromPerNumber` varchar(10) DEFAULT NULL,
  `bodyHandOverFromPerNumber` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idAtMortuary`)
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
  `idAtScene` int(11) NOT NULL,
  `sceneIncidentOccured` varchar(45) DEFAULT NULL,
  `sceneDateTime` datetime DEFAULT NULL,
  `pathOnScene` bit(1) DEFAULT NULL,
  `allegedInjuryDateTime` datetime DEFAULT NULL,
  `allegedDeathDateTime` datetime DEFAULT NULL,
  `externalCircumstanceOfInjury` blob,
  `placeOfDeath` varchar(45) DEFAULT NULL,
  `dateTimeBodyFound` datetime DEFAULT NULL,
  PRIMARY KEY (`idAtScene`)
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
  `eventMessge` varchar(80) NOT NULL,
  `currentUser` varchar(10) NOT NULL,
  PRIMARY KEY (`idAuditTrail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audittrail`
--

LOCK TABLES `audittrail` WRITE;
/*!40000 ALTER TABLE `audittrail` DISABLE KEYS */;
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
  `addressOfDeceased` int(11) DEFAULT NULL,
  `Kin_idKin` int(11) DEFAULT NULL,
  `estimatedAgeYear` int(11) DEFAULT NULL,
  `estimatedAgeMonth` int(11) DEFAULT NULL,
  `ID` varchar(13) DEFAULT NULL,
  `passport` varchar(45) DEFAULT NULL,
  `AtMortuary_idAtMortuary` int(11) DEFAULT NULL,
  `AtScene_idAtScene` int(11) DEFAULT NULL,
  `bodyStatus` bit(1) DEFAULT NULL,
  `dateBodyReceieved` datetime DEFAULT NULL,
  `bodyReleased` bit(1) DEFAULT NULL,
  `Incident_incidentLogNumber` varchar(45) NOT NULL,
  `bodyType` varchar(45) DEFAULT NULL,
  `dateBodyReleased` datetime DEFAULT NULL,
  `PostMortem_labNumber` varchar(45) NOT NULL,
  PRIMARY KEY (`idDeathRegisterNumber`),
  KEY `fk_Body_BodyAddress_idx` (`addressOfDeceased`),
  KEY `fk_Body_Kin1_idx` (`Kin_idKin`),
  KEY `fk_Body_AtMortuary1_idx` (`AtMortuary_idAtMortuary`),
  KEY `fk_Body_AtScene1_idx` (`AtScene_idAtScene`),
  KEY `fk_Body_Incident1_idx` (`Incident_incidentLogNumber`),
  KEY `fk_Body_PostMortem1_idx` (`PostMortem_labNumber`),
  CONSTRAINT `fk_Body_AtMortuary1` FOREIGN KEY (`AtMortuary_idAtMortuary`) REFERENCES `atmortuary` (`idAtMortuary`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Body_AtScene1` FOREIGN KEY (`AtScene_idAtScene`) REFERENCES `atscene` (`idAtScene`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Body_BodyAddress` FOREIGN KEY (`addressOfDeceased`) REFERENCES `bodyaddress` (`idBodyAddress`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Body_Incident1` FOREIGN KEY (`Incident_incidentLogNumber`) REFERENCES `incident` (`incidentLogNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Body_Kin1` FOREIGN KEY (`Kin_idKin`) REFERENCES `kin` (`idKin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Body_PostMortem1` FOREIGN KEY (`PostMortem_labNumber`) REFERENCES `postmortem` (`labNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `idBodyAddress` int(11) NOT NULL,
  `building` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `suburb` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `postalCode` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `magisterialDistrict` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idBodyAddress`)
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
  `dateCaseOpened` date DEFAULT NULL,
  `caseStatus` bit(1) DEFAULT NULL,
  `Body_idDeathRegisterNumber` varchar(45) NOT NULL,
  `allSamplesReceived` bit(1) DEFAULT NULL,
  `bodyIdentified` bit(1) DEFAULT NULL,
  `postMortemComplete` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Body_idDeathRegisterNumber`),
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
  `idBodyLink` int(11) NOT NULL,
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
  `idBodyPart` int(11) NOT NULL,
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
  `idBodyReleasePlace` int(11) NOT NULL,
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
  `idBodyReleaseStatus` int(11) NOT NULL,
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
  `idBodyStatus` int(11) NOT NULL,
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
-- Table structure for table `deathcall`
--

DROP TABLE IF EXISTS `deathcall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deathcall` (
  `idDeathCall` int(11) NOT NULL,
  `timeOfCall` time DEFAULT NULL,
  `dateOfCall` date DEFAULT NULL,
  `numberOfCaller` varchar(10) DEFAULT NULL,
  `institution` varchar(45) DEFAULT NULL,
  `sceneAddress` varchar(100) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `sceneConditions` varchar(45) DEFAULT NULL,
  `nameOfCaller` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDeathCall`)
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
  `idDriver` int(11) NOT NULL,
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
INSERT INTO `driver` VALUES (2,'Chester','Cobus');
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
  `personnelNumber` char(8) NOT NULL,
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
INSERT INTO `employee` VALUES ('d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','12345678','john','smith','manager','200935415@student.uj.ac.za',1,'');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `externalcircumstance`
--

DROP TABLE IF EXISTS `externalcircumstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `externalcircumstance` (
  `idExternalCircumstance` int(11) NOT NULL,
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
  `sealNumber` char(9) NOT NULL,
  `deathRegisterNumber` varchar(45) NOT NULL,
  `reason` blob NOT NULL,
  `sealType` varchar(45) NOT NULL,
  `brokenSealNumber` varchar(45) NOT NULL,
  `typeOfAnalysis` varchar(45) NOT NULL,
  `institution` varchar(45) NOT NULL,
  `specialInstructions` varchar(45) NOT NULL,
  `received` bit(1) NOT NULL,
  `labNumber` varchar(45) DEFAULT NULL,
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
  `idGender` int(11) NOT NULL,
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
  KEY `fk_Hospital_Organization1_idx` (`Organization_idOrganization`),
  CONSTRAINT `fk_Hospital_Organization1` FOREIGN KEY (`Organization_idOrganization`) REFERENCES `organization` (`idOrganization`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `idICD10` int(11) NOT NULL,
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
  `incidentLogNumber` char(9) NOT NULL,
  `referenceNumber` varchar(9) DEFAULT NULL,
  `numberOfBodies` int(11) DEFAULT NULL,
  `dateOfIncident` date DEFAULT NULL,
  `timeOfIncident` time DEFAULT NULL,
  `circumstanceOfDeath` varchar(45) DEFAULT NULL,
  `specialCircumstances` blob,
  `DeathCall_idDeathCall` int(11) NOT NULL,
  `VehicleDispatch_idVehicleDispatch` int(11) NOT NULL,
  `IncidentMessage_idIncidentMessage` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `reason` blob,
  `bodyCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`incidentLogNumber`),
  KEY `fk_Incident_DeathCall1_idx` (`DeathCall_idDeathCall`),
  KEY `fk_Incident_VehicleDispatch1_idx` (`VehicleDispatch_idVehicleDispatch`),
  KEY `fk_Incident_IncidentMessage1_idx` (`IncidentMessage_idIncidentMessage`),
  CONSTRAINT `fk_Incident_DeathCall1` FOREIGN KEY (`DeathCall_idDeathCall`) REFERENCES `deathcall` (`idDeathCall`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Incident_IncidentMessage1` FOREIGN KEY (`IncidentMessage_idIncidentMessage`) REFERENCES `incidentmessage` (`idIncidentMessage`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Incident_VehicleDispatch1` FOREIGN KEY (`VehicleDispatch_idVehicleDispatch`) REFERENCES `vehicledispatch` (`idVehicleDispatch`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident`
--

LOCK TABLES `incident` WRITE;
/*!40000 ALTER TABLE `incident` DISABLE KEYS */;
/*!40000 ALTER TABLE `incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidentmessage`
--

DROP TABLE IF EXISTS `incidentmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incidentmessage` (
  `idIncidentMessage` int(11) NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `mannerOfDeath` varchar(45) DEFAULT NULL,
  `nameOfDeceased` varchar(45) DEFAULT NULL,
  `vip` bit(1) DEFAULT NULL,
  `caseStatus` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idIncidentMessage`)
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
  `idInstitution` int(11) NOT NULL,
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
  `idKin` int(11) NOT NULL,
  `passport` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `relationWithDeceased` varchar(45) DEFAULT NULL,
  `contactNumber` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `workAddress` varchar(100) DEFAULT NULL,
  `ID` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`idKin`)
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
  PRIMARY KEY (`labNumber`),
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
  `idMannerOfDeath` int(11) NOT NULL,
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
  `idMartalStatus` int(11) NOT NULL,
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
  `idMember` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `rank` varchar(45) DEFAULT NULL,
  `personnelNumber` varchar(10) DEFAULT NULL,
  `organization` varchar(45) DEFAULT NULL,
  `contactNumber` varchar(10) DEFAULT NULL,
  `AtScene_idAtScene` int(11) NOT NULL,
  PRIMARY KEY (`idMember`),
  KEY `fk_Member_AtScene1_idx` (`AtScene_idAtScene`),
  CONSTRAINT `fk_Member_AtScene1` FOREIGN KEY (`AtScene_idAtScene`) REFERENCES `atscene` (`idAtScene`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `idOccupation` int(11) NOT NULL,
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
  `idOrganization` int(11) NOT NULL,
  PRIMARY KEY (`idOrganization`)
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
  KEY `fk_PathologyUnit_Organization1_idx` (`Organization_idOrganization`),
  CONSTRAINT `fk_PathologyUnit_Organization1` FOREIGN KEY (`Organization_idOrganization`) REFERENCES `organization` (`idOrganization`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  KEY `fk_PoliceStation_Organization1_idx` (`Organization_idOrganization`),
  CONSTRAINT `fk_PoliceStation_Organization1` FOREIGN KEY (`Organization_idOrganization`) REFERENCES `organization` (`idOrganization`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `chiefFind` blob NOT NULL,
  `causeOfDeath` blob NOT NULL,
  `status` bit(1) NOT NULL,
  `approved` bit(1) NOT NULL,
  `DHA1663number` varchar(45) NOT NULL,
  PRIMARY KEY (`labNumber`)
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
  `idProperty` int(11) NOT NULL,
  `sealNumber` varchar(45) DEFAULT NULL,
  `description` blob,
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
  `SAPS_taken` bit(1) DEFAULT NULL,
  `Body_idDeathRegisterNumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProperty`),
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
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `idProvince` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idProvince`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `race`
--

DROP TABLE IF EXISTS `race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `race` (
  `idRace` int(11) NOT NULL,
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
  `idRank` int(11) NOT NULL,
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
  `idRegion` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idRegion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationship`
--

DROP TABLE IF EXISTS `relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationship` (
  `idRelationship` int(11) NOT NULL,
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
  KEY `fk_SamlpeLab_Organization1_idx` (`Organization_idOrganization`),
  CONSTRAINT `fk_SamlpeLab_Organization1` FOREIGN KEY (`Organization_idOrganization`) REFERENCES `organization` (`idOrganization`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `idSample` int(11) NOT NULL,
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
  `idSceneType` int(11) NOT NULL,
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
  `idSeal` int(11) NOT NULL,
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
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `registrationNumber` varchar(45) NOT NULL,
  `crew` int(11) DEFAULT NULL,
  `Driver_idDriver` int(11) DEFAULT NULL,
  PRIMARY KEY (`registrationNumber`),
  KEY `fk_Vehicle_Driver1_idx` (`Driver_idDriver`),
  CONSTRAINT `idDriver` FOREIGN KEY (`Driver_idDriver`) REFERENCES `driver` (`idDriver`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('BHSN54',6,2),('TVD702',10,NULL);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicledispatch`
--

DROP TABLE IF EXISTS `vehicledispatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicledispatch` (
  `idVehicleDispatch` int(11) NOT NULL,
  `notificationDateTime` datetime DEFAULT NULL,
  `departureDateTime` datetime DEFAULT NULL,
  `dispatchMessage` blob,
  `Vehicle_registrationNumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idVehicleDispatch`),
  KEY `fk_VehicleDispatch_Vehicle1_idx` (`Vehicle_registrationNumber`),
  CONSTRAINT `fk_VehicleDispatch_Vehicle1` FOREIGN KEY (`Vehicle_registrationNumber`) REFERENCES `vehicle` (`registrationNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicledispatch`
--

LOCK TABLES `vehicledispatch` WRITE;
/*!40000 ALTER TABLE `vehicledispatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicledispatch` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-18 10:02:44