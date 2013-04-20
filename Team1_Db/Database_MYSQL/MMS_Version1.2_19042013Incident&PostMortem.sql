SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Incident`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Incident` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Incident` (
  `incidentLogNumber` VARCHAR(9) NOT NULL ,
  `referenceNumber` VARCHAR(9) NULL ,
  `numberOfBodies` INT NULL ,
  `dateOfIncident` DATE NULL ,
  `timeOfIncident` TIME NULL ,
  `circumstanceOfDeath` VARCHAR(45) NULL ,
  `specialCircumstances` BLOB NULL ,
  `status` BIT NULL ,
  `reason` BLOB NULL ,
  `bodyCount` INT NULL ,
  `placeBodyFound` VARCHAR(45) NULL ,
  PRIMARY KEY (`incidentLogNumber`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Body`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Body` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Body` (
  `idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  `gender` VARCHAR(45) NULL ,
  `race` VARCHAR(45) NULL ,
  `assignedTo` VARCHAR(45) NULL ,
  `nameOfDeceased` VARCHAR(45) NULL ,
  `surnameOfDeceased` VARCHAR(45) NULL ,
  `placeOfBirth` VARCHAR(45) NULL ,
  `dateOfBirth` DATE NULL ,
  `ageOnDateFound` INT NULL ,
  `maritalStatus` VARCHAR(45) NULL ,
  `occupation` VARCHAR(45) NULL ,
  `citizen` VARCHAR(45) NULL ,
  `maidenName` VARCHAR(45) NULL ,
  `identifiedDateTime` DATETIME NULL ,
  `estimatedAgeYear` INT NULL ,
  `estimatedAgeMonth` INT NULL ,
  `ID` VARCHAR(13) NULL ,
  `passport` VARCHAR(45) NULL ,
  `bodyStatus` BIT NULL ,
  `dateBodyReceieved` DATETIME NULL ,
  `bodyReleased` BIT NULL ,
  `bodyType` VARCHAR(45) NULL ,
  `dateBodyReleased` DATETIME NULL ,
  `Incident_incidentLogNumber` VARCHAR(9) NOT NULL ,
  PRIMARY KEY (`idDeathRegisterNumber`) ,
  INDEX `fk_Body_Incident1_idx` (`Incident_incidentLogNumber` ASC) ,
  CONSTRAINT `fk_Body_Incident1`
    FOREIGN KEY (`Incident_incidentLogNumber` )
    REFERENCES `mydb`.`Incident` (`incidentLogNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BodyAddress`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`BodyAddress` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`BodyAddress` (
  `idBodyAddress` INT NOT NULL ,
  `building` VARCHAR(45) NULL ,
  `street` VARCHAR(45) NULL ,
  `suburb` VARCHAR(45) NULL ,
  `city` VARCHAR(45) NULL ,
  `postalCode` VARCHAR(45) NULL ,
  `province` VARCHAR(45) NULL ,
  `region` VARCHAR(45) NULL ,
  `magisterialDistrict` VARCHAR(45) NULL ,
  `Body_idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idBodyAddress`) ,
  INDEX `fk_BodyAddress_Body1_idx` (`Body_idDeathRegisterNumber` ASC) ,
  CONSTRAINT `fk_BodyAddress_Body1`
    FOREIGN KEY (`Body_idDeathRegisterNumber` )
    REFERENCES `mydb`.`Body` (`idDeathRegisterNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Kin`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Kin` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Kin` (
  `idKin` INT NOT NULL AUTO_INCREMENT ,
  `passport` VARCHAR(45) NULL ,
  `name` VARCHAR(45) NULL ,
  `surname` VARCHAR(45) NULL ,
  `relationWithDeceased` VARCHAR(45) NULL ,
  `contactNumber` VARCHAR(10) NULL ,
  `address` VARCHAR(100) NULL ,
  `workAddress` VARCHAR(100) NULL ,
  `ID` VARCHAR(13) NULL ,
  `Body_idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idKin`) ,
  INDEX `fk_Kin_Body1_idx` (`Body_idDeathRegisterNumber` ASC) ,
  CONSTRAINT `fk_Kin_Body1`
    FOREIGN KEY (`Body_idDeathRegisterNumber` )
    REFERENCES `mydb`.`Body` (`idDeathRegisterNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Property`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Property` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Property` (
  `idProperty` INT NOT NULL AUTO_INCREMENT ,
  `sealNumber` VARCHAR(9) NULL ,
  `description` BLOB NULL ,
  `date` DATE NULL ,
  `type` VARCHAR(45) NULL ,
  `sealType` VARCHAR(45) NULL ,
  `takenBy` VARCHAR(10) NULL ,
  `witness1_name` VARCHAR(45) NULL ,
  `witness1_surname` VARCHAR(45) NULL ,
  `witness2_name` VARCHAR(45) NULL ,
  `witness2_surname` VARCHAR(45) NULL ,
  `SAPS_name` VARCHAR(45) NULL ,
  `SAPS_surname` VARCHAR(45) NULL ,
  `SAPS_taken` BIT NULL ,
  `Body_idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idProperty`) ,
  INDEX `fk_Property_Body1_idx` (`Body_idDeathRegisterNumber` ASC) ,
  CONSTRAINT `fk_Property_Body1`
    FOREIGN KEY (`Body_idDeathRegisterNumber` )
    REFERENCES `mydb`.`Body` (`idDeathRegisterNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`DeathCall`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`DeathCall` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`DeathCall` (
  `idDeathCall` INT NOT NULL AUTO_INCREMENT ,
  `timeOfCall` TIME NULL ,
  `dateOfCall` DATE NULL ,
  `numberOfCaller` VARCHAR(10) NULL ,
  `institution` VARCHAR(45) NULL ,
  `sceneAddress` VARCHAR(100) NULL ,
  `province` VARCHAR(45) NULL ,
  `region` VARCHAR(45) NULL ,
  `sceneConditions` VARCHAR(45) NULL ,
  `nameOfCaller` VARCHAR(45) NULL ,
  `Incident_incidentLogNumber` VARCHAR(9) NOT NULL ,
  PRIMARY KEY (`idDeathCall`) ,
  INDEX `fk_DeathCall_Incident1_idx` (`Incident_incidentLogNumber` ASC) ,
  CONSTRAINT `fk_DeathCall_Incident1`
    FOREIGN KEY (`Incident_incidentLogNumber` )
    REFERENCES `mydb`.`Incident` (`incidentLogNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Driver`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Driver` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Driver` (
  `idDriver` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL ,
  `surname` VARCHAR(45) NULL ,
  PRIMARY KEY (`idDriver`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vehicle`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Vehicle` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Vehicle` (
  `registrationNumber` VARCHAR(11) NOT NULL ,
  `crew` INT NULL ,
  `Driver_idDriver` INT NOT NULL ,
  PRIMARY KEY (`registrationNumber`) ,
  INDEX `fk_Vehicle_Driver1_idx` (`Driver_idDriver` ASC) ,
  CONSTRAINT `fk_Vehicle_Driver1`
    FOREIGN KEY (`Driver_idDriver` )
    REFERENCES `mydb`.`Driver` (`idDriver` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`VehicleDispatch`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`VehicleDispatch` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`VehicleDispatch` (
  `idVehicleDispatch` INT NOT NULL AUTO_INCREMENT ,
  `notificationDateTime` DATETIME NULL ,
  `departureDateTime` DATETIME NULL ,
  `dispatchMessage` BLOB NULL ,
  `Vehicle_registrationNumber` VARCHAR(11) NOT NULL ,
  `Incident_incidentLogNumber` VARCHAR(9) NOT NULL ,
  PRIMARY KEY (`idVehicleDispatch`) ,
  INDEX `fk_VehicleDispatch_Vehicle1_idx` (`Vehicle_registrationNumber` ASC) ,
  INDEX `fk_VehicleDispatch_Incident1_idx` (`Incident_incidentLogNumber` ASC) ,
  CONSTRAINT `fk_VehicleDispatch_Vehicle1`
    FOREIGN KEY (`Vehicle_registrationNumber` )
    REFERENCES `mydb`.`Vehicle` (`registrationNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_VehicleDispatch_Incident1`
    FOREIGN KEY (`Incident_incidentLogNumber` )
    REFERENCES `mydb`.`Incident` (`incidentLogNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`IncidentMessage`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`IncidentMessage` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`IncidentMessage` (
  `idIncidentMessage` INT NOT NULL AUTO_INCREMENT ,
  `date` VARCHAR(45) NULL ,
  `time` VARCHAR(45) NULL ,
  `mannerOfDeath` VARCHAR(45) NULL ,
  `nameOfDeceased` VARCHAR(45) NULL ,
  `vip` BIT NULL ,
  `caseStatus` BIT NULL ,
  `Incident_incidentLogNumber` VARCHAR(9) NOT NULL ,
  PRIMARY KEY (`idIncidentMessage`) ,
  INDEX `fk_IncidentMessage_Incident1_idx` (`Incident_incidentLogNumber` ASC) ,
  CONSTRAINT `fk_IncidentMessage_Incident1`
    FOREIGN KEY (`Incident_incidentLogNumber` )
    REFERENCES `mydb`.`Incident` (`incidentLogNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`AtScene`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`AtScene` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`AtScene` (
  `idAtScene` INT NOT NULL ,
  `sceneIncidentOccured` VARCHAR(45) NULL ,
  `sceneDateTime` DATETIME NULL ,
  `pathOnScene` BIT NULL ,
  `allegedInjuryDateTime` DATETIME NULL ,
  `allegedDeathDateTime` DATETIME NULL ,
  `externalCircumstanceOfInjury` BLOB NULL ,
  `placeOfDeath` VARCHAR(45) NULL ,
  `dateTimeBodyFound` DATETIME NULL ,
  `Body_idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idAtScene`) ,
  INDEX `fk_AtScene_Body1_idx` (`Body_idDeathRegisterNumber` ASC) ,
  CONSTRAINT `fk_AtScene_Body1`
    FOREIGN KEY (`Body_idDeathRegisterNumber` )
    REFERENCES `mydb`.`Body` (`idDeathRegisterNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`AtMortuary`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`AtMortuary` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`AtMortuary` (
  `idAtMortuary` INT NOT NULL ,
  `bodyReceievedFromPerNumber` VARCHAR(10) NULL ,
  `bodyHandOverFromPerNumber` VARCHAR(10) NULL ,
  `Body_idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idAtMortuary`) ,
  INDEX `fk_AtMortuary_Body1_idx` (`Body_idDeathRegisterNumber` ASC) ,
  CONSTRAINT `fk_AtMortuary_Body1`
    FOREIGN KEY (`Body_idDeathRegisterNumber` )
    REFERENCES `mydb`.`Body` (`idDeathRegisterNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BodyFile`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`BodyFile` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`BodyFile` (
  `dateCaseOpened` DATE NULL ,
  `caseStatus` BIT NULL ,
  `Body_idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  `allSamplesReceived` BIT NULL ,
  `bodyIdentified` BIT NULL ,
  `postMortemComplete` BIT NULL ,
  INDEX `fk_Case_Body1_idx` (`Body_idDeathRegisterNumber` ASC) ,
  PRIMARY KEY (`Body_idDeathRegisterNumber`) ,
  CONSTRAINT `fk_Case_Body1`
    FOREIGN KEY (`Body_idDeathRegisterNumber` )
    REFERENCES `mydb`.`Body` (`idDeathRegisterNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Member`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Member` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Member` (
  `idMember` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  `surname` VARCHAR(45) NULL ,
  `rank` VARCHAR(45) NULL ,
  `personnelNumber` VARCHAR(10) NULL ,
  `organization` VARCHAR(45) NULL ,
  `contactNumber` VARCHAR(10) NULL ,
  `AtScene_idAtScene` INT NOT NULL ,
  PRIMARY KEY (`idMember`) ,
  INDEX `fk_Member_AtScene1_idx` (`AtScene_idAtScene` ASC) ,
  CONSTRAINT `fk_Member_AtScene1`
    FOREIGN KEY (`AtScene_idAtScene` )
    REFERENCES `mydb`.`AtScene` (`idAtScene` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BodyLink`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`BodyLink` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`BodyLink` (
  `idBodyLink` INT NOT NULL ,
  `BodyFile_Body_idDeathRegisterNumber1` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idBodyLink`) ,
  INDEX `fk_BodyLink_BodyFile2_idx` (`BodyFile_Body_idDeathRegisterNumber1` ASC) ,
  CONSTRAINT `fk_BodyLink_BodyFile2`
    FOREIGN KEY (`BodyFile_Body_idDeathRegisterNumber1` )
    REFERENCES `mydb`.`BodyFile` (`Body_idDeathRegisterNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PostMortem`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`PostMortem` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`PostMortem` (
  `labNumber` VARCHAR(45) NOT NULL ,
  `icd10` VARCHAR(3) NOT NULL ,
  `chiefFind` BLOB NOT NULL ,
  `causeOfDeath` BLOB NOT NULL ,
  `status` BIT NOT NULL ,
  `approved` BIT NOT NULL ,
  `DHA1663number` VARCHAR(45) NOT NULL ,
  `Body_idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`labNumber`) ,
  INDEX `fk_PostMortem_Body1_idx` (`Body_idDeathRegisterNumber` ASC) ,
  CONSTRAINT `fk_PostMortem_Body1`
    FOREIGN KEY (`Body_idDeathRegisterNumber` )
    REFERENCES `mydb`.`Body` (`idDeathRegisterNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LabRecord`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`LabRecord` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`LabRecord` (
  `receivedAllSamples` BIT NOT NULL ,
  `labNumber` VARCHAR(45) NOT NULL ,
  INDEX `fk_LabRecord_PostMortem1_idx` (`labNumber` ASC) ,
  PRIMARY KEY (`labNumber`) ,
  CONSTRAINT `fk_LabRecord_PostMortem1`
    FOREIGN KEY (`labNumber` )
    REFERENCES `mydb`.`PostMortem` (`labNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ForensicSample`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ForensicSample` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`ForensicSample` (
  `sealNumber` VARCHAR(45) NOT NULL ,
  `deathRegisterNumber` VARCHAR(45) NOT NULL ,
  `reason` BLOB NOT NULL ,
  `sealType` VARCHAR(45) NOT NULL ,
  `brokenSealNumber` VARCHAR(45) NOT NULL ,
  `typeOfAnalysis` VARCHAR(45) NOT NULL ,
  `institution` VARCHAR(45) NOT NULL ,
  `specialInstructions` VARCHAR(45) NOT NULL ,
  `received` BIT NOT NULL ,
  `labNumber` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`sealNumber`) ,
  INDEX `fk_ForensicSample_LabRecord1_idx` (`labNumber` ASC) ,
  CONSTRAINT `fk_ForensicSample_LabRecord1`
    FOREIGN KEY (`labNumber` )
    REFERENCES `mydb`.`LabRecord` (`labNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
