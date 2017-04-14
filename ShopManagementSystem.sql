/*
SQLyog - Free MySQL GUI v5.14
Host - 5.0.77-community-nt : Database - fastfood
*********************************************************************
Server version : 5.0.77-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `fastfood`;

USE `fastfood`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `ItemID` varchar(20) NOT NULL,
  `ItemName` varchar(100) default NULL,
  `ItemPrice` float default NULL,
  PRIMARY KEY  (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `item` */

insert into `item` (`ItemID`,`ItemName`,`ItemPrice`) values ('009','slice',35);
insert into `item` (`ItemID`,`ItemName`,`ItemPrice`) values ('0999','sandvich',20);
insert into `item` (`ItemID`,`ItemName`,`ItemPrice`) values ('3','noodals',12);

/*Table structure for table `purchase` */

DROP TABLE IF EXISTS `purchase`;

CREATE TABLE `purchase` (
  `ItemID` varchar(100) NOT NULL,
  `ItemName` varchar(200) default NULL,
  `ItemPrice` float default NULL,
  `CustName` varchar(300) default NULL,
  `Quantity` float default NULL,
  `amount` float default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchase` */

insert into `purchase` (`ItemID`,`ItemName`,`ItemPrice`,`CustName`,`Quantity`,`amount`) values ('1','PEPSI',12,'amit choudhary',2,24);
insert into `purchase` (`ItemID`,`ItemName`,`ItemPrice`,`CustName`,`Quantity`,`amount`) values ('3','noodals',12,'rajesh',5,60);
insert into `purchase` (`ItemID`,`ItemName`,`ItemPrice`,`CustName`,`Quantity`,`amount`) values ('3','noodals',12,'gvg',7,84);
insert into `purchase` (`ItemID`,`ItemName`,`ItemPrice`,`CustName`,`Quantity`,`amount`) values ('3','noodals',12,'amit',2,24);
insert into `purchase` (`ItemID`,`ItemName`,`ItemPrice`,`CustName`,`Quantity`,`amount`) values ('3','noodals',12,'amit',2,24);
insert into `purchase` (`ItemID`,`ItemName`,`ItemPrice`,`CustName`,`Quantity`,`amount`) values ('3','noodals',12,'cg',10,120);
insert into `purchase` (`ItemID`,`ItemName`,`ItemPrice`,`CustName`,`Quantity`,`amount`) values ('0999','sandvich',20,'zeenat',1,20);

SET SQL_MODE=@OLD_SQL_MODE;