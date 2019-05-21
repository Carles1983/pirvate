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

/*Data for the table `cfg_http` */

insert  into `cfg_http`(`CFG_HTTP_CODE`,`HTTP_GRP`,`HTTP_DESC`,`STATE`,`REMARKS`) values ('CRM_CI_FORUCPEVENTSWITCH_HTTP','CI_GRP','UCP原子事件开关控制','U','UCP原子事件开关控制'),('UCP_CC_DISTRIBUTEEVENT_HTTP','UCP_GRP','UCP事件采集以及分发','U','UCP事件采集以及分发'),('UCP_CC_HUMANTASKDRIVER_HTTP','UCP_GRP','UCP人工回单接口','U','UCP人工回单接口');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
