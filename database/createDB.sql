SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `pizza` DEFAULT CHARACTER SET utf8 ;
USE `pizza` ;

-- -----------------------------------------------------
-- Table `pizza`.`component`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pizza`.`component` (
  `idcomponent` INT(11) NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(50) NOT NULL ,
  `stock` INT(11) NOT NULL DEFAULT '0' ,
  `price` DOUBLE NULL DEFAULT NULL ,
  `description` VARCHAR(200) NULL DEFAULT NULL ,
  PRIMARY KEY (`idcomponent`) ,
  UNIQUE INDEX `idcomponent_UNIQUE` (`idcomponent` ASC) )
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pizza`.`users`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pizza`.`users` (
  `user_name` VARCHAR(32) NOT NULL ,
  `user_pass` VARCHAR(32) NOT NULL ,
  `name` VARCHAR(100) NULL DEFAULT NULL ,
  `street_address` VARCHAR(100) NULL DEFAULT NULL ,
  `zip_code` VARCHAR(10) NULL DEFAULT NULL ,
  `city` VARCHAR(30) NULL DEFAULT NULL ,
  `country` VARCHAR(30) NULL DEFAULT NULL ,
  PRIMARY KEY (`user_name`) ,
  UNIQUE INDEX `username_UNIQUE` (`user_name` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pizza`.`order`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pizza`.`order` (
  `idorder` INT(11) NOT NULL AUTO_INCREMENT ,
  `user_name` VARCHAR(32) NOT NULL ,
  `name` VARCHAR(100) NOT NULL ,
  `street_address` VARCHAR(100) NOT NULL ,
  `zip_code` VARCHAR(10) NOT NULL ,
  `city` VARCHAR(30) NOT NULL ,
  `country` VARCHAR(30) NOT NULL ,
  `ordertime` VARCHAR(45) NULL DEFAULT NULL ,
  `total` VARCHAR(45) NOT NULL DEFAULT '0' ,
  PRIMARY KEY (`idorder`) ,
  UNIQUE INDEX `idorder_UNIQUE` (`idorder` ASC) ,
  INDEX `fk_order_username` (`user_name` ASC) ,
  CONSTRAINT `fk_order_username`
    FOREIGN KEY (`user_name` )
    REFERENCES `pizza`.`users` (`user_name` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 27
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pizza`.`product`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pizza`.`product` (
  `idproduct` INT(11) NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(50) NOT NULL ,
  `price` DOUBLE NOT NULL ,
  `description` VARCHAR(200) NULL DEFAULT NULL ,
  `pic_url` VARCHAR(200) NOT NULL DEFAULT 'http://generalstorecafenj.com/pizzaman.jpg' ,
  `sales` INT(11) NOT NULL DEFAULT '0' ,
  PRIMARY KEY (`idproduct`) ,
  UNIQUE INDEX `idproduct_UNIQUE` (`idproduct` ASC) )
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pizza`.`order_product`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pizza`.`order_product` (
  `idorder` INT(11) NOT NULL ,
  `idproduct` INT(11) NOT NULL ,
  `quantity` INT(11) NOT NULL DEFAULT '1' ,
  INDEX `order` (`idorder` ASC) ,
  INDEX `product` (`idproduct` ASC) ,
  CONSTRAINT `fk_order_product`
    FOREIGN KEY (`idproduct` )
    REFERENCES `pizza`.`product` (`idproduct` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_order`
    FOREIGN KEY (`idorder` )
    REFERENCES `pizza`.`order` (`idorder` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pizza`.`product_component`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pizza`.`product_component` (
  `idproduct` INT(11) NOT NULL ,
  `idcomponent` INT(11) NOT NULL ,
  `quantity` INT(11) NOT NULL DEFAULT '1' ,
  INDEX `product` (`idproduct` ASC) ,
  INDEX `component` (`idcomponent` ASC) ,
  CONSTRAINT `fk_component_product`
    FOREIGN KEY (`idproduct` )
    REFERENCES `pizza`.`product` (`idproduct` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_component`
    FOREIGN KEY (`idcomponent` )
    REFERENCES `pizza`.`component` (`idcomponent` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pizza`.`user_roles`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pizza`.`user_roles` (
  `USER_NAME` VARCHAR(15) NOT NULL ,
  `ROLE_NAME` VARCHAR(15) NOT NULL ,
  PRIMARY KEY (`USER_NAME`, `ROLE_NAME`) ,
  INDEX `fk_role_user` (`USER_NAME` ASC) ,
  CONSTRAINT `fk_role_user`
    FOREIGN KEY (`USER_NAME` )
    REFERENCES `pizza`.`users` (`user_name` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
