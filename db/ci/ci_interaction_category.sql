/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log : Database - ci
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ci` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ci`;

/*Data for the table `ci_interaction_category` */

insert  into `ci_interaction_category`(`INTERACTION_CATEGORY_ID`,`PARENT_CATEGORY_ID`,`INTERACTION_CATEGORY_NAME`,`INTERACTION_CATEGORY_NAME_I18N`,`OP_ID`,`ORG_ID`,`DONE_DATE`,`REMAKR`) values (1,0,'Sales','',0,0,'2017-06-28 15:38:58',NULL),(2,0,'Marketing Campaign','',0,0,'2017-06-28 15:38:59',NULL),(3,0,'Trouble Ticket','',0,0,'2017-06-28 15:38:59',NULL),(4,0,'Knowledge Base','',0,0,'2017-06-28 15:39:00',NULL),(5,0,'Order Management','',0,0,'2017-06-28 15:39:00',NULL),(6,0,'Push Communication','',0,0,'2017-06-28 15:39:01',NULL),(7,0,'Call Center','',0,0,'2017-06-28 15:39:01',NULL),(8,0,'Billing','',0,0,'2017-06-28 15:39:02',NULL),(9,0,'Customer Management','',0,0,'2017-06-28 15:39:02',NULL),(10,0,'EShop','',0,0,'2017-06-28 15:39:02',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
