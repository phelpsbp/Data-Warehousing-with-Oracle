-- MySQL Workbench Synchronization
-- Generated: 2024-01-31 16:49
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Administrator

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `eurorbit`.`reservation` 
ADD COLUMN `warehoused` TINYINT(4) NULL DEFAULT NULL AFTER `price`,
CHANGE COLUMN `trip_id` `trip_id` VARCHAR(6) NOT NULL ,
CHANGE COLUMN `customer_id` `customer_id` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `origin` `origin` VARCHAR(3) NOT NULL ,
CHANGE COLUMN `destination` `destination` VARCHAR(3) NOT NULL ,
CHANGE COLUMN `price` `price` INT(11) NOT NULL ,
ADD PRIMARY KEY (`trip_id`, `customer_id`, `origin`, `destination`),
ADD INDEX `fk_reservation_customer_idx` (`customer_id` ASC) VISIBLE,
ADD INDEX `fk_reservation_location1_idx` (`origin` ASC) VISIBLE,
ADD INDEX `fk_reservation_location2_idx` (`destination` ASC) VISIBLE;
;

ALTER TABLE `eurorbit`.`reservation` 
ADD CONSTRAINT `fk_reservation_customer`
  FOREIGN KEY (`customer_id`)
  REFERENCES `eurorbit`.`customer` (`cust_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_reservation_location1`
  FOREIGN KEY (`origin`)
  REFERENCES `eurorbit`.`location` (`code`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_reservation_location2`
  FOREIGN KEY (`destination`)
  REFERENCES `eurorbit`.`location` (`code`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
