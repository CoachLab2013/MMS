SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`LabRecord`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`LabRecord` (
  `idLabRecord` INT NOT NULL ,
  `receivedAllSamples` BIT NOT NULL ,
  PRIMARY KEY (`idLabRecord`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PostMortem`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`PostMortem` (
  `idPostMortem` INT NOT NULL ,
  `icd10Code` VARCHAR(3) NOT NULL ,
  `chiefFind` BLOB NOT NULL ,
  `causeOfDeath` BLOB NOT NULL ,
  `status` BIT NOT NULL ,
  `approved` BIT NOT NULL ,
  `LabRecord_idLabRecord` INT NOT NULL ,
  `dha1663Number` VARCHAR(45) NULL ,
  PRIMARY KEY (`idPostMortem`) ,
  INDEX `fk_PostMortem_LabRecord1_idx` (`LabRecord_idLabRecord` ASC) ,
  CONSTRAINT `fk_PostMortem_LabRecord1`
    FOREIGN KEY (`LabRecord_idLabRecord` )
    REFERENCES `mydb`.`LabRecord` (`idLabRecord` )
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
  `LabRecord_idLabRecord` INT NOT NULL ,
  `brokenSealNumber` VARCHAR(45) NULL ,
  `typeOfAnalysis` VARCHAR(45) NULL ,
  `institution` VARCHAR(45) NULL ,
  `specialInstructions` BLOB NULL ,
  `recieved` BIT NULL ,
  `labRegisterNumber` VARCHAR(45) NULL ,
  INDEX `fk_RegisterSample_LabRecord1_idx` (`LabRecord_idLabRecord` ASC) ,
  PRIMARY KEY (`sealNumber`) ,
  CONSTRAINT `fk_RegisterSample_LabRecord1`
    FOREIGN KEY (`LabRecord_idLabRecord` )
    REFERENCES `mydb`.`LabRecord` (`idLabRecord` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
