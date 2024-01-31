-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema eurorbit
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema eurorbit
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `eurorbit` DEFAULT CHARACTER SET utf8 ;
USE `eurorbit` ;

-- -----------------------------------------------------
-- Table `eurorbit`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eurorbit`.`customer` (
  `cust_id` VARCHAR(10) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cust_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eurorbit`.`reservation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eurorbit`.`reservation` (
  `trip_id` VARCHAR(6) NOT NULL,
  `customer_id` VARCHAR(45) NOT NULL,
  `origin` VARCHAR(3) NOT NULL,
  `destination` VARCHAR(3) NOT NULL,
  `price` INT NOT NULL,
  `warehoused` TINYINT NULL,
  PRIMARY KEY (`trip_id`, `customer_id`),
  INDEX `fk_reservation_customer_idx` (`customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_reservation_customer`
    FOREIGN KEY (`customer_id`)
    REFERENCES `eurorbit`.`customer` (`cust_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
