/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log : Database - base
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`base` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `base`;

/*Data for the table `bs_tenant` */

insert  into `bs_tenant`(`T_ID`,`TENANT_ID`,`TENANT_CODE`,`TENANT_NAME`,`PRE_FLANGUAGE`,`CURRENCY_ID`,`TIMEZONE`,`REGION_ID`,`DEFAULT_CENTER`,`CREATE_OP_ID`,`CREATE_ORG_ID`,`OP_ID`,`ORG_ID`,`DONE_CODE`,`STATE`,`REMARK`) values (21,'21','21','运营商-丹麦','en_US',21,'Asia/Shanghai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'U',NULL),(91,'91','91','运营商-WHOLESALE','en_US',91,'Asia/Shanghai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'U',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
