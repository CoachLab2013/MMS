SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Employee` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Employee` (
  `password` VARCHAR(128) NOT NULL ,
  `personnelNumber` VARCHAR(8) NOT NULL ,
  `name` VARCHAR(45) NOT NULL ,
  `surname` VARCHAR(45) NOT NULL ,
  `rank` VARCHAR(45) NOT NULL ,
  `email` VARCHAR(80) NOT NULL ,
  `access` INT NOT NULL ,
  `active` BIT NOT NULL ,
  PRIMARY KEY (`password`, `personnelNumber`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`DutyRoster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`DutyRoster` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`DutyRoster` (
  `idDutyRoster` INT NOT NULL ,
  `startTime` DATETIME NOT NULL ,
  `endTime` DATETIME NOT NULL ,
  `role` VARCHAR(45) NOT NULL ,
  `Employee_password` VARCHAR(128) NOT NULL ,
  `Employee_personnelNumber` VARCHAR(10) NOT NULL ,
  PRIMARY KEY (`idDutyRoster`) ,
  INDEX `fk_DutyRoster_Employee_idx` (`Employee_password` ASC, `Employee_personnelNumber` ASC) ,
  CONSTRAINT `fk_DutyRoster_Employee`
    FOREIGN KEY (`Employee_password` , `Employee_personnelNumber` )
    REFERENCES `mydb`.`Employee` (`password` , `personnelNumber` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`AuditTrail`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`AuditTrail` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`AuditTrail` (
  `idAuditTrail` INT NOT NULL ,
  `date` DATE NOT NULL ,
  `time` TIME NOT NULL ,
  `eventType` VARCHAR(45) NOT NULL ,
  `eventMessge` VARCHAR(80) NOT NULL ,
  `currentUser` VARCHAR(10) NOT NULL ,
  `eventLocation` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idAuditTrail`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`OrganizationType`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`OrganizationType` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`OrganizationType` (
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`type`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Organization`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Organization` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Organization` (
  `idOrganization` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  `contactNumber` VARCHAR(45) NULL ,
  `OrganizationType_type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idOrganization`) ,
  INDEX `fk_Organization_OrganizationType1_idx` (`OrganizationType_type` ASC) ,
  CONSTRAINT `fk_Organization_OrganizationType1`
    FOREIGN KEY (`OrganizationType_type` )
    REFERENCES `mydb`.`OrganizationType` (`type` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BodyStatus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`BodyStatus` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`BodyStatus` (
  `idBodyStatus` INT NOT NULL AUTO_INCREMENT ,
  `state` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idBodyStatus`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SpecialCircumstance`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`SpecialCircumstance` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`SpecialCircumstance` (
  `idSpecialCircumstance` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idSpecialCircumstance`) )
ENGINE = InnoDB;

USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Gender`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Gender` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Gender` (
  `idGender` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idGender`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Race`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Race` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Race` (
  `idRace` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idRace`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`MaritalStatus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`MaritalStatus` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`MaritalStatus` (
  `idMartalStatus` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idMartalStatus`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Province`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Province` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Province` (
  `idProvince` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idProvince`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Occupation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Occupation` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Occupation` (
  `idOccupation` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idOccupation`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Region`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Region` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Region` (
  `idRegion` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idRegion`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ICD10`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ICD10` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`ICD10` (
  `idICD10` INT NOT NULL AUTO_INCREMENT ,
  `code` VARCHAR(5) NOT NULL ,
  PRIMARY KEY (`idICD10`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Institution`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Institution` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Institution` (
  `idInstitution` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idInstitution`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Analysis`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Analysis` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Analysis` (
  `idAnalysis` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idAnalysis`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Seal`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Seal` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Seal` (
  `idSeal` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idSeal`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`MannerOfDeath`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`MannerOfDeath` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`MannerOfDeath` (
  `idMannerOfDeath` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(90) NOT NULL ,
  PRIMARY KEY (`idMannerOfDeath`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Rank`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Rank` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Rank` (
  `idRank` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idRank`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BodyPart`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`BodyPart` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`BodyPart` (
  `idBodyPart` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idBodyPart`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sample`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Sample` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Sample` (
  `idSample` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idSample`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BodyReleaseStatus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`BodyReleaseStatus` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`BodyReleaseStatus` (
  `idBodyReleaseStatus` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idBodyReleaseStatus`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Relationship`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Relationship` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Relationship` (
  `idRelationship` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idRelationship`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BodyReleasePlace`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`BodyReleasePlace` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`BodyReleasePlace` (
  `idBodyReleasePlace` INT NOT NULL AUTO_INCREMENT ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idBodyReleasePlace`) )
ENGINE = InnoDB;

USE `mydb` ;
USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
