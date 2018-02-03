
CREATE DATABASE  IF NOT EXISTS 'currencydb';
USE 'currencydb';
 DROP TABLE IF EXISTS 'currencyuser_tb';
CREATE TABLE `currencyuser`.`currencyuser_tb` (
  `idcurrencyuser_tb` INT NOT NULL AUTO_INCREMENT,
  `fname` VARCHAR(45) NULL,
  `lname` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `passwd` VARCHAR(45) NULL,
  `currencytype` VARCHAR(45) NULL,
  `acccountbalance` DECIMAL(15,2) NULL,
  PRIMARY KEY (`idcurrencyuser_tb`));
