/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log : Database - cms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cms` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cms`;

/*Table structure for table `cms_image` */

DROP TABLE IF EXISTS `cms_image`;

CREATE TABLE `cms_image` (
  `IMAGE_ID` decimal(12,0) NOT NULL,
  `IMAGE_NAME` varchar(512) NOT NULL,
  `IMAGE_URL` varchar(512) NOT NULL,
  `IMAGE_THUMB_URL` varchar(512) DEFAULT NULL,
  `IMAGE_DOMAIN` varchar(12) NOT NULL,
  `IMAGE_DESC` varchar(512) NOT NULL,
  `STATE` decimal(1,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_OP_ID` varchar(12) DEFAULT NULL,
  `CREATE_ORG_ID` varchar(12) DEFAULT NULL,
  `OP_ID` varchar(12) DEFAULT NULL,
  `ORG_ID` varchar(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`IMAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS图片表';

/*Table structure for table `sys_sequences` */

DROP TABLE IF EXISTS `sys_sequences`;

CREATE TABLE `sys_sequences` (
  `SEQUENCE_NAME` varchar(60) NOT NULL,
  `START_BY` bigint(20) NOT NULL COMMENT 'SEQUENCE的最开始值',
  `INCREMENT_BY` bigint(10) NOT NULL COMMENT 'SEQUENCE的自增长度',
  `LAST_NUMBER` bigint(20) NOT NULL COMMENT 'SEQUENCE的当前值初始化为开始值',
  `JVM_STEP_BY` bigint(10) NOT NULL DEFAULT '200' COMMENT '缓存到JVM中的值，上线时默认为200,产品特有的自定义20',
  PRIMARY KEY (`SEQUENCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
