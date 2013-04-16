SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`BodyAddress`
-- -----------------------------------------------------
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
  PRIMARY KEY (`idBodyAddress`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Kin`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Kin` (
  `idKin` INT NOT NULL ,
  `passport` VARCHAR(45) NULL ,
  `name` VARCHAR(45) NULL ,
  `surname` VARCHAR(45) NULL ,
  `relationWithDeceased` VARCHAR(45) NULL ,
  `contactNumber` VARCHAR(10) NULL ,
  `address` VARCHAR(100) NULL ,
  `workAddress` VARCHAR(100) NULL ,
  `ID` VARCHAR(13) NULL ,
  PRIMARY KEY (`idKin`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`AtMortuary`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`AtMortuary` (
  `idAtMortuary` INT NOT NULL ,
  `bodyReceievedFromPerNumber` VARCHAR(10) NULL ,
  `bodyHandOverFromPerNumber` VARCHAR(10) NULL ,
  PRIMARY KEY (`idAtMortuary`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`AtScene`
-- -----------------------------------------------------
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
  PRIMARY KEY (`idAtScene`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`DeathCall`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`DeathCall` (
  `idDeathCall` INT NOT NULL ,
  `timeOfCall` TIME NULL ,
  `dateOfCall` DATE NULL ,
  `numberOfCaller` VARCHAR(10) NULL ,
  `institution` VARCHAR(45) NULL ,
  `sceneAddress` VARCHAR(100) NULL ,
  `province` VARCHAR(45) NULL ,
  `region` VARCHAR(45) NULL ,
  `sceneConditions` VARCHAR(45) NULL ,
  `nameOfCaller` VARCHAR(45) NULL ,
  PRIMARY KEY (`idDeathCall`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Driver`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Driver` (
  `idDriver` VARCHAR(45) NOT NULL ,
  `name` VARCHAR(45) NULL ,
  `surname` VARCHAR(45) NULL ,
  PRIMARY KEY (`idDriver`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vehicle`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Vehicle` (
  `registrationNumber` VARCHAR(45) NOT NULL ,
  `crew` INT NULL ,
  `Driver_idDriver` VARCHAR(45) NOT NULL ,
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
CREATE  TABLE IF NOT EXISTS `mydb`.`VehicleDispatch` (
  `idVehicleDispatch` INT NOT NULL ,
  `notificationDateTime` DATETIME NULL ,
  `departureDateTime` DATETIME NULL ,
  `dispatchMessage` BLOB NULL ,
  `Vehicle_registrationNumber` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idVehicleDispatch`) ,
  INDEX `fk_VehicleDispatch_Vehicle1_idx` (`Vehicle_registrationNumber` ASC) ,
  CONSTRAINT `fk_VehicleDispatch_Vehicle1`
    FOREIGN KEY (`Vehicle_registrationNumber` )
    REFERENCES `mydb`.`Vehicle` (`registrationNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`IncidentMessage`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`IncidentMessage` (
  `idIncidentMessage` INT NOT NULL ,
  `date` VARCHAR(45) NULL ,
  `time` VARCHAR(45) NULL ,
  `mannerOfDeath` VARCHAR(45) NULL ,
  `nameOfDeceased` VARCHAR(45) NULL ,
  `vip` BIT NULL ,
  `caseStatus` BIT NULL ,
  PRIMARY KEY (`idIncidentMessage`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Incident`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Incident` (
  `incidentLogNumber` VARCHAR(45) NOT NULL ,
  `referenceNumber` VARCHAR(9) NULL ,
  `numberOfBodies` INT NULL ,
  `dateOfIncident` DATE NULL ,
  `timeOfIncident` TIME NULL ,
  `circumstanceOfDeath` VARCHAR(45) NULL ,
  `specialCircumstances` BLOB NULL ,
  `DeathCall_idDeathCall` INT NOT NULL ,
  `VehicleDispatch_idVehicleDispatch` INT NOT NULL ,
  `IncidentMessage_idIncidentMessage` INT NOT NULL ,
  `status` BIT NULL ,
  `reason` BLOB NULL ,
  `bodyCount` INT NULL ,
  PRIMARY KEY (`incidentLogNumber`) ,
  INDEX `fk_Incident_DeathCall1_idx` (`DeathCall_idDeathCall` ASC) ,
  INDEX `fk_Incident_VehicleDispatch1_idx` (`VehicleDispatch_idVehicleDispatch` ASC) ,
  INDEX `fk_Incident_IncidentMessage1_idx` (`IncidentMessage_idIncidentMessage` ASC) ,
  CONSTRAINT `fk_Incident_DeathCall1`
    FOREIGN KEY (`DeathCall_idDeathCall` )
    REFERENCES `mydb`.`DeathCall` (`idDeathCall` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Incident_VehicleDispatch1`
    FOREIGN KEY (`VehicleDispatch_idVehicleDispatch` )
    REFERENCES `mydb`.`VehicleDispatch` (`idVehicleDispatch` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Incident_IncidentMessage1`
    FOREIGN KEY (`IncidentMessage_idIncidentMessage` )
    REFERENCES `mydb`.`IncidentMessage` (`idIncidentMessage` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PostMortem`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`PostMortem` (
  `labNumber` VARCHAR(45) NOT NULL ,
  `icd10` VARCHAR(3) NOT NULL ,
  `chiefFind` BLOB NOT NULL ,
  `causeOfDeath` BLOB NOT NULL ,
  `status` BIT NOT NULL ,
  `approved` BIT NOT NULL ,
  `DHA1663number` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`labNumber`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Body`
-- -----------------------------------------------------
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
  `addressOfDeceased` INT NULL ,
  `Kin_idKin` INT NULL ,
  `estimatedAgeYear` INT NULL ,
  `estimatedAgeMonth` INT NULL ,
  `ID` VARCHAR(13) NULL ,
  `passport` VARCHAR(45) NULL ,
  `AtMortuary_idAtMortuary` INT NULL ,
  `AtScene_idAtScene` INT NULL ,
  `bodyStatus` BIT NULL ,
  `dateBodyReceieved` DATETIME NULL ,
  `bodyReleased` BIT NULL ,
  `Incident_incidentLogNumber` VARCHAR(45) NOT NULL ,
  `bodyType` VARCHAR(45) NULL ,
  `dateBodyReleased` DATETIME NULL ,
  `PostMortem_labNumber` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idDeathRegisterNumber`) ,
  INDEX `fk_Body_BodyAddress_idx` (`addressOfDeceased` ASC) ,
  INDEX `fk_Body_Kin1_idx` (`Kin_idKin` ASC) ,
  INDEX `fk_Body_AtMortuary1_idx` (`AtMortuary_idAtMortuary` ASC) ,
  INDEX `fk_Body_AtScene1_idx` (`AtScene_idAtScene` ASC) ,
  INDEX `fk_Body_Incident1_idx` (`Incident_incidentLogNumber` ASC) ,
  INDEX `fk_Body_PostMortem1_idx` (`PostMortem_labNumber` ASC) ,
  CONSTRAINT `fk_Body_BodyAddress`
    FOREIGN KEY (`addressOfDeceased` )
    REFERENCES `mydb`.`BodyAddress` (`idBodyAddress` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Body_Kin1`
    FOREIGN KEY (`Kin_idKin` )
    REFERENCES `mydb`.`Kin` (`idKin` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Body_AtMortuary1`
    FOREIGN KEY (`AtMortuary_idAtMortuary` )
    REFERENCES `mydb`.`AtMortuary` (`idAtMortuary` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Body_AtScene1`
    FOREIGN KEY (`AtScene_idAtScene` )
    REFERENCES `mydb`.`AtScene` (`idAtScene` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Body_Incident1`
    FOREIGN KEY (`Incident_incidentLogNumber` )
    REFERENCES `mydb`.`Incident` (`incidentLogNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Body_PostMortem1`
    FOREIGN KEY (`PostMortem_labNumber` )
    REFERENCES `mydb`.`PostMortem` (`labNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Property`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Property` (
  `idProperty` INT NOT NULL ,
  `sealNumber` VARCHAR(45) NULL ,
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
  `Body_idDeathRegisterNumber` VARCHAR(45) NULL ,
  PRIMARY KEY (`idProperty`) ,
  INDEX `fk_Property_Body1_idx` (`Body_idDeathRegisterNumber` ASC) ,
  CONSTRAINT `fk_Property_Body1`
    FOREIGN KEY (`Body_idDeathRegisterNumber` )
    REFERENCES `mydb`.`Body` (`idDeathRegisterNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BodyFile`
-- -----------------------------------------------------
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
-- Table `mydb`.`LabRecord`
-- -----------------------------------------------------
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
  `labNumber` VARCHAR(45) NULL ,
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
