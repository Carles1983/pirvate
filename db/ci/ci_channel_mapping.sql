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

/*Data for the table `ci_channel_mapping` */

insert  into `ci_channel_mapping`(`CHNL_MAPPING_ID`,`CHANNEL_ID`,`SRC_SYS_ID`,`SRC_SYS_CHNL_ID`,`STATE`,`OP_ID`,`ORG_ID`,`DONE_DATE`,`REMARK`) values (1,100,'CRM','1',1,NULL,NULL,'2017-06-28 15:36:36','ESHOP'),(2,101,'CRM','2',1,NULL,NULL,'2017-06-28 15:36:36','AgentView'),(3,102,'CBS','3',1,NULL,NULL,'2017-06-28 15:36:36','CBS'),(5,105,'CRM','5',1,NULL,NULL,'2018-12-27 11:21:04','Chatbot'),(6,106,'CRM','6',1,NULL,NULL,'2018-12-27 11:21:04','RTSS'),(7,107,'CRM','7',1,NULL,NULL,'2018-12-27 11:21:04','SCC'),(8,108,'CRM','8',1,NULL,NULL,'2018-12-27 11:21:04','Wechat'),(9,109,'CRM','9',1,NULL,NULL,'2018-12-27 11:21:04','Facebook');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
