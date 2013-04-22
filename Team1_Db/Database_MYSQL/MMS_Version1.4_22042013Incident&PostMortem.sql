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
  `incidentLogNumber` VARCHAR(45) NOT NULL ,
  `referenceNumber` VARCHAR(9) NOT NULL ,
  `numberOfBodies` INT NOT NULL ,
  `dateOfIncident` DATE NOT NULL ,
  `timeOfIncident` TIME NOT NULL ,
  `circumstanceOfDeath` VARCHAR(45) NOT NULL ,
  `specialCircumstances` VARCHAR(50) NOT NULL ,
  `status` BIT NOT NULL ,
  `reason` LONGTEXT NOT NULL ,
  `bodyCount` INT NOT NULL ,
  `placeBodyFound` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`incidentLogNumber`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Body`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Body` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Body` (
  `idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  `gender` VARCHAR(45) NOT NULL ,
  `race` VARCHAR(45) NOT NULL ,
  `assignedTo` VARCHAR(45) NOT NULL ,
  `nameOfDeceased` VARCHAR(45) NOT NULL ,
  `surnameOfDeceased` VARCHAR(45) NOT NULL ,
  `placeOfBirth` VARCHAR(45) NOT NULL ,
  `dateOfBirth` DATE NOT NULL ,
  `ageOnDateFound` INT NOT NULL ,
  `maritalStatus` VARCHAR(45) NOT NULL ,
  `occupation` VARCHAR(45) NOT NULL ,
  `citizen` VARCHAR(45) NOT NULL ,
  `maidenName` VARCHAR(45) NOT NULL ,
  `identifiedDateTime` DATETIME NOT NULL ,
  `estimatedAgeYear` INT NOT NULL ,
  `estimatedAgeMonth` INT NOT NULL ,
  `ID` VARCHAR(13) NOT NULL ,
  `passport` VARCHAR(45) NOT NULL ,
  `bodyStatus` BIT NOT NULL ,
  `dateBodyReceieved` DATETIME NOT NULL ,
  `bodyReleased` BIT NOT NULL ,
  `Incident_incidentLogNumber` VARCHAR(45) NOT NULL ,
  `bodyType` VARCHAR(45) NOT NULL ,
  `dateBodyReleased` DATETIME NOT NULL ,
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
  `building` VARCHAR(45) NOT NULL ,
  `street` VARCHAR(45) NOT NULL ,
  `suburb` VARCHAR(45) NOT NULL ,
  `city` VARCHAR(45) NOT NULL ,
  `postalCode` VARCHAR(45) NOT NULL ,
  `province` VARCHAR(45) NOT NULL ,
  `region` VARCHAR(45) NOT NULL ,
  `magisterialDistrict` VARCHAR(45) NOT NULL ,
  `Body_idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`Body_idDeathRegisterNumber`) ,
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
  `passport` VARCHAR(45) NOT NULL ,
  `name` VARCHAR(45) NOT NULL ,
  `surname` VARCHAR(45) NOT NULL ,
  `relationWithDeceased` VARCHAR(45) NOT NULL ,
  `contactNumber` VARCHAR(10) NOT NULL ,
  `address` VARCHAR(100) NOT NULL ,
  `workAddress` VARCHAR(100) NOT NULL ,
  `ID` VARCHAR(13) NOT NULL ,
  `Body_idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  INDEX `fk_Kin_Body1_idx` (`Body_idDeathRegisterNumber` ASC) ,
  PRIMARY KEY (`Body_idDeathRegisterNumber`) ,
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
  `sealNumber` VARCHAR(45) NOT NULL ,
  `description` BLOB NOT NULL ,
  `date` DATE NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  `sealType` VARCHAR(45) NOT NULL ,
  `takenBy` VARCHAR(10) NOT NULL ,
  `witness1_name` VARCHAR(45) NOT NULL ,
  `witness1_surname` VARCHAR(45) NOT NULL ,
  `witness2_name` VARCHAR(45) NOT NULL ,
  `witness2_surname` VARCHAR(45) NOT NULL ,
  `SAPS_name` VARCHAR(45) NOT NULL ,
  `SAPS_surname` VARCHAR(45) NOT NULL ,
  `SAPS_taken` BIT NOT NULL ,
  `Body_idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  INDEX `fk_Property_Body1_idx` (`Body_idDeathRegisterNumber` ASC) ,
  PRIMARY KEY (`Body_idDeathRegisterNumber`) ,
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
  `timeOfCall` TIME NOT NULL ,
  `dateOfCall` DATE NOT NULL ,
  `numberOfCaller` VARCHAR(10) NOT NULL ,
  `institution` VARCHAR(45) NOT NULL ,
  `sceneAddress` VARCHAR(100) NOT NULL ,
  `province` VARCHAR(45) NOT NULL ,
  `region` VARCHAR(45) NOT NULL ,
  `sceneConditions` VARCHAR(45) NOT NULL ,
  `nameOfCaller` VARCHAR(45) NOT NULL ,
  `Incident_incidentLogNumber` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idDeathCall`) ,
  INDEX `fk_DeathCall_Incident1_idx` (`Incident_incidentLogNumber` ASC) ,
  CONSTRAINT `fk_DeathCall_Incident1`
    FOREIGN KEY (`Incident_incidentLogNumber` )
    REFERENCES `mydb`.`Incident` (`incidentLogNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vehicle`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Vehicle` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Vehicle` (
  `registrationNumber` VARCHAR(11) NOT NULL ,
  PRIMARY KEY (`registrationNumber`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`VehicleDispatch`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`VehicleDispatch` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`VehicleDispatch` (
  `Incident_incidentLogNumber` VARCHAR(45) NOT NULL ,
  `notificationDateTime` DATETIME NOT NULL ,
  `departureDateTime` DATETIME NOT NULL ,
  `Vehicle_registrationNumber` VARCHAR(11) NOT NULL ,
  INDEX `fk_VehicleDispatch_Incident1_idx` (`Incident_incidentLogNumber` ASC) ,
  INDEX `fk_VehicleDispatch_Vehicle1_idx` (`Vehicle_registrationNumber` ASC) ,
  PRIMARY KEY (`Incident_incidentLogNumber`) ,
  CONSTRAINT `fk_VehicleDispatch_Incident1`
    FOREIGN KEY (`Incident_incidentLogNumber` )
    REFERENCES `mydb`.`Incident` (`incidentLogNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_VehicleDispatch_Vehicle1`
    FOREIGN KEY (`Vehicle_registrationNumber` )
    REFERENCES `mydb`.`Vehicle` (`registrationNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`IncidentMessage`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`IncidentMessage` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`IncidentMessage` (
  `date` VARCHAR(45) NOT NULL ,
  `time` VARCHAR(45) NOT NULL ,
  `mannerOfDeath` VARCHAR(45) NOT NULL ,
  `nameOfDeceased` VARCHAR(45) NOT NULL ,
  `vip` BIT NOT NULL ,
  `bodyFileStatus` BIT NOT NULL ,
  `Incident_incidentLogNumber` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`Incident_incidentLogNumber`) ,
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
  `sceneIncidentOccured` VARCHAR(45) NOT NULL ,
  `sceneDateTime` DATETIME NOT NULL ,
  `pathOnScene` BIT NOT NULL ,
  `allegedInjuryDateTime` DATETIME NOT NULL ,
  `allegedDeathDateTime` DATETIME NOT NULL ,
  `externalCircumstanceOfInjury` VARCHAR(45) NOT NULL ,
  `placeOfDeath` VARCHAR(45) NOT NULL ,
  `dateTimeBodyFound` DATETIME NOT NULL ,
  `Body_idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  INDEX `fk_AtScene_Body1_idx` (`Body_idDeathRegisterNumber` ASC) ,
  PRIMARY KEY (`Body_idDeathRegisterNumber`) ,
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
  `bodyReceievedFromPerNumber` VARCHAR(10) NOT NULL ,
  `bodyHandOverFromPerNumber` VARCHAR(10) NOT NULL ,
  `Body_idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`Body_idDeathRegisterNumber`) ,
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
  `dateFileOpened` DATE NOT NULL ,
  `bodyFileStatus` BIT NOT NULL ,
  `Body_idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  `allSamplesReceived` BIT NOT NULL ,
  `bodyIdentified` BIT NOT NULL ,
  `postMortemComplete` BIT NOT NULL ,
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
  `name` VARCHAR(45) NOT NULL ,
  `surname` VARCHAR(45) NOT NULL ,
  `rank` VARCHAR(45) NOT NULL ,
  `personnelNumber` VARCHAR(10) NOT NULL ,
  `organization` VARCHAR(45) NOT NULL ,
  `contactNumber` VARCHAR(10) NOT NULL ,
  `AtScene_Body_idDeathRegisterNumber` VARCHAR(45) NOT NULL ,
  INDEX `fk_Member_AtScene1_idx` (`AtScene_Body_idDeathRegisterNumber` ASC) ,
  PRIMARY KEY (`AtScene_Body_idDeathRegisterNumber`) ,
  CONSTRAINT `fk_Member_AtScene1`
    FOREIGN KEY (`AtScene_Body_idDeathRegisterNumber` )
    REFERENCES `mydb`.`AtScene` (`Body_idDeathRegisterNumber` )
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
  `chiefFind` LONGTEXT NOT NULL ,
  `causeOfDeath` LONGTEXT NOT NULL ,
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
  `reason` LONGTEXT NOT NULL ,
  `sealType` VARCHAR(45) NOT NULL ,
  `brokenSealNumber` VARCHAR(45) NOT NULL ,
  `typeOfAnalysis` VARCHAR(45) NOT NULL ,
  `institution` VARCHAR(45) NOT NULL ,
  `specialInstructions` VARCHAR(45) NOT NULL ,
  `received` BIT NOT NULL ,
  `labNumber` VARCHAR(45) NOT NULL ,
  `dateSent` DATE NOT NULL ,
  `dateRecieved` DATE NOT NULL ,
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
