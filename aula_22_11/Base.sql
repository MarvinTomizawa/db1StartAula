-- MySQL Script generated by MySQL Workbench
-- 11/22/18 18:54:53
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cidade` (
  `idCidade` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCidade`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Endereço`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Endereço` (
  `idEndereço` INT NOT NULL AUTO_INCREMENT,
  `logradouro` VARCHAR(45) NOT NULL,
  `tipoLogradouro` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `Cidade_idCidade` INT NOT NULL,
  PRIMARY KEY (`idEndereço`, `Cidade_idCidade`),
  INDEX `fk_Endereço_Cidade1_idx` (`Cidade_idCidade` ASC),
  CONSTRAINT `fk_Endereço_Cidade1`
    FOREIGN KEY (`Cidade_idCidade`)
    REFERENCES `mydb`.`Cidade` (`idCidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
