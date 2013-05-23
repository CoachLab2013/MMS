CREATE DATABASE  IF NOT EXISTS `mydb_dump_staging` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mydb_dump_staging`;
-- MySQL dump 10.13  Distrib 5.6.11, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb_dump_staging
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

-- Dump completed on 2013-05-21 12:28:19
