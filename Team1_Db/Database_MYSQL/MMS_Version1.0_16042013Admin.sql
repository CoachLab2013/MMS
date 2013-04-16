SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Employee`
-- -----------------------------------------------------
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
CREATE  TABLE IF NOT EXISTS `mydb`.`AuditTrail` (
  `idAuditTrail` INT NOT NULL ,
  `date` DATE NOT NULL ,
  `time` TIME NOT NULL ,
  `eventType` VARCHAR(45) NOT NULL ,
  `eventMessge` VARCHAR(80) NOT NULL ,
  `currentUser` VARCHAR(10) NOT NULL ,
  PRIMARY KEY (`idAuditTrail`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Organization`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Organization` (
  `idOrganization` INT NOT NULL ,
  PRIMARY KEY (`idOrganization`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PoliceStation`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`PoliceStation` (
  `name` VARCHAR(45) NOT NULL ,
  `contactNumber` VARCHAR(45) NOT NULL ,
  `Organization_idOrganization` INT NOT NULL ,
  INDEX `fk_PoliceStation_Organization1_idx` (`Organization_idOrganization` ASC) ,
  PRIMARY KEY (`Organization_idOrganization`) ,
  CONSTRAINT `fk_PoliceStation_Organization1`
    FOREIGN KEY (`Organization_idOrganization` )
    REFERENCES `mydb`.`Organization` (`idOrganization` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PathologyUnit`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`PathologyUnit` (
  `name` VARCHAR(45) NOT NULL ,
  `contactNumber` VARCHAR(45) NOT NULL ,
  `Organization_idOrganization` INT NOT NULL ,
  INDEX `fk_PathologyUnit_Organization1_idx` (`Organization_idOrganization` ASC) ,
  PRIMARY KEY (`Organization_idOrganization`) ,
  CONSTRAINT `fk_PathologyUnit_Organization1`
    FOREIGN KEY (`Organization_idOrganization` )
    REFERENCES `mydb`.`Organization` (`idOrganization` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SamlpeLab`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SamlpeLab` (
  `name` VARCHAR(45) NOT NULL ,
  `contactNumber` VARCHAR(45) NOT NULL ,
  `Organization_idOrganization` INT NOT NULL ,
  PRIMARY KEY (`Organization_idOrganization`) ,
  INDEX `fk_SamlpeLab_Organization1_idx` (`Organization_idOrganization` ASC) ,
  CONSTRAINT `fk_SamlpeLab_Organization1`
    FOREIGN KEY (`Organization_idOrganization` )
    REFERENCES `mydb`.`Organization` (`idOrganization` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Hospital`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Hospital` (
  `name` VARCHAR(45) NOT NULL ,
  `contactNumber` VARCHAR(10) NOT NULL ,
  `Organization_idOrganization` INT NOT NULL ,
  INDEX `fk_Hospital_Organization1_idx` (`Organization_idOrganization` ASC) ,
  PRIMARY KEY (`Organization_idOrganization`) ,
  CONSTRAINT `fk_Hospital_Organization1`
    FOREIGN KEY (`Organization_idOrganization` )
    REFERENCES `mydb`.`Organization` (`idOrganization` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BodyStatus`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`BodyStatus` (
  `idBodyStatus` INT NOT NULL ,
  `state` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idBodyStatus`) )
ENGINE = InnoDB;

USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Gender`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Gender` (
  `idGender` INT NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idGender`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Race`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Race` (
  `idRace` INT NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idRace`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`MaritalStatus`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`MaritalStatus` (
  `idMartalStatus` INT NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idMartalStatus`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Province`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Province` (
  `idProvince` INT NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idProvince`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Occupation`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Occupation` (
  `idOccupation` INT NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idOccupation`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Region`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Region` (
  `idRegion` INT NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idRegion`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ICD10`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`ICD10` (
  `idICD10` INT NOT NULL ,
  `code` VARCHAR(5) NOT NULL ,
  PRIMARY KEY (`idICD10`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Institution`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Institution` (
  `idInstitution` INT NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idInstitution`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Analysis`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Analysis` (
  `idAnalysis` INT NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idAnalysis`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Seal`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Seal` (
  `idSeal` INT NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idSeal`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`MannerOfDeath`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`MannerOfDeath` (
  `idMannerOfDeath` INT NOT NULL ,
  `type` VARCHAR(90) NOT NULL ,
  PRIMARY KEY (`idMannerOfDeath`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Rank`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Rank` (
  `idRank` INT NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idRank`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BodyPart`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`BodyPart` (
  `idBodyPart` INT NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idBodyPart`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sample`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Sample` (
  `idSample` INT NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idSample`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BodyReleaseStatus`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`BodyReleaseStatus` (
  `idBodyReleaseStatus` INT NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idBodyReleaseStatus`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Relationship`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Relationship` (
  `idRelationship` INT NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idRelationship`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BodyReleasePlace`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`BodyReleasePlace` (
  `idBodyReleasePlace` INT NOT NULL ,
  `type` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idBodyReleasePlace`) )
ENGINE = InnoDB;

USE `mydb` ;
USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
