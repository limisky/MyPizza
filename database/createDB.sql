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
  `price` DOUBLE NOT NULL ,
  `description` VARCHAR(200) NULL DEFAULT NULL ,
  PRIMARY KEY (`idcomponent`) ,
  UNIQUE INDEX `idcomponent_UNIQUE` (`idcomponent` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pizza`.`customer`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pizza`.`customer` (
  `idcustomer` INT(11) NOT NULL AUTO_INCREMENT ,
  `username` VARCHAR(50) NOT NULL ,
  `password` VARCHAR(32) NOT NULL ,
  `email` VARCHAR(50) NOT NULL ,
  PRIMARY KEY (`idcustomer`) ,
  UNIQUE INDEX `idnew_table_UNIQUE` (`idcustomer` ASC) ,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pizza`.`order`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pizza`.`order` (
  `idorder` INT(11) NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(10) NOT NULL ,
  `name` VARCHAR(50) NOT NULL ,
  `surname` VARCHAR(50) NOT NULL ,
  `address` VARCHAR(100) NOT NULL ,
  `zipcode` VARCHAR(10) NOT NULL ,
  `city` VARCHAR(30) NOT NULL ,
  `tel` VARCHAR(30) NOT NULL ,
  `ordertime` VARCHAR(45) NULL DEFAULT NULL ,
  `delivertime` VARCHAR(45) NULL DEFAULT NULL ,
  `receivetime` VARCHAR(45) NULL DEFAULT NULL ,
  PRIMARY KEY (`idorder`) ,
  UNIQUE INDEX `idorder_UNIQUE` (`idorder` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pizza`.`customer_order`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pizza`.`customer_order` (
  `idcustomer` INT(11) NOT NULL ,
  `idorder` INT(11) NOT NULL ,
  INDEX `order` (`idorder` ASC) ,
  INDEX `customer` (`idcustomer` ASC) ,
  CONSTRAINT `fk_customer_order`
    FOREIGN KEY (`idorder` )
    REFERENCES `pizza`.`order` (`idorder` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_customer`
    FOREIGN KEY (`idcustomer` )
    REFERENCES `pizza`.`customer` (`idcustomer` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pizza`.`profile`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pizza`.`profile` (
  `idprofile` INT(11) NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(10) NULL DEFAULT NULL ,
  `name` VARCHAR(50) NULL DEFAULT NULL ,
  `surname` VARCHAR(50) NULL DEFAULT NULL ,
  `address` VARCHAR(100) NULL DEFAULT NULL ,
  `zipcode` VARCHAR(10) NULL DEFAULT NULL ,
  `city` VARCHAR(30) NULL DEFAULT NULL ,
  `tel` VARCHAR(30) NULL DEFAULT NULL ,
  PRIMARY KEY (`idprofile`) ,
  UNIQUE INDEX `idprofile_UNIQUE` (`idprofile` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `pizza`.`customer_profile`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `pizza`.`customer_profile` (
  `idcustomer` INT(11) NOT NULL ,
  `idprofile` INT(11) NOT NULL ,
  INDEX `customer` (`idcustomer` ASC) ,
  INDEX `profile` (`idprofile` ASC) ,
  CONSTRAINT `fk_profile_customer`
    FOREIGN KEY (`idcustomer` )
    REFERENCES `pizza`.`customer` (`idcustomer` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customer_profile`
    FOREIGN KEY (`idprofile` )
    REFERENCES `pizza`.`profile` (`idprofile` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
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
  PRIMARY KEY (`idproduct`) ,
  UNIQUE INDEX `idproduct_UNIQUE` (`idproduct` ASC) )
ENGINE = InnoDB
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
  CONSTRAINT `fk_product_component`
    FOREIGN KEY (`idcomponent` )
    REFERENCES `pizza`.`component` (`idcomponent` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_component_product`
    FOREIGN KEY (`idproduct` )
    REFERENCES `pizza`.`product` (`idproduct` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
