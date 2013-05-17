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
-- Dumping events for database 'reporting database'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `RUN_ETL` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `RUN_ETL` ON SCHEDULE EVERY 1 DAY STARTS '2013-06-01 03:00:00' ON COMPLETION NOT PRESERVE ENABLE DO CALL	`reporting database`.`Transform_CALL_Procedures` */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

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

-- Dump completed on 2013-05-16 16:52:06
