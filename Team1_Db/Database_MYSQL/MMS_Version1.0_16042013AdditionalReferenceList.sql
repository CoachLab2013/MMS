SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`SceneType`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SceneType` (
  `idSceneType` INT NOT NULL ,
  `type` VARCHAR(100) NOT NULL ,
  PRIMARY KEY (`idSceneType`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ExternalCircumstance`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`ExternalCircumstance` (
  `idExternalCircumstance` INT NOT NULL ,
  `type` VARCHAR(100) NOT NULL ,
  PRIMARY KEY (`idExternalCircumstance`) )
ENGINE = InnoDB;

USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
