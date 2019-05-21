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

/*Data for the table `ci_interaction_type` */

insert  into `ci_interaction_type`(`INTERACTION_TYPE_ID`,`INTERACTION_CATEGORY_ID`,`INTERACTION_TYPE_NAME`,`INTERACTION_TYPE_NAME_I18N`,`UP_INTERACTION_TYPE_ID`,`SRC_SYS_ID`,`SRC_INTERACTION_TYPE_ID`,`SRC_INTERACTION_TYPE_NAME`,`SRC_INTERACTION_TYPE_DESC`,`DETAIL_PAGE_URL`,`DETAIL_PAGE_WIDTH`,`DETAIL_PAGE_HEIGHT`,`ENTITY_DATE_POS`,`QUERY_PRI`,`MACRO_PAGE_URL`,`OP_ID`,`ORG_ID`,`DONE_DATE`,`STATE`,`REMAKR`) values (0,0,'',NULL,NULL,'','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(1,5,'Mobile New Connection','',NULL,'CRM','193000000001','Mobile New Connection','Mobile New Connection','',900,560,0,1,'',0,0,'2017-06-28 15:40:21',1,NULL),(2,5,'Broadband New Connection','',NULL,'CRM','191000001004','Broadband New Connection','Broadband New Connection','',900,560,0,1,'',0,0,'2017-06-28 15:40:21',1,NULL),(3,5,'PSTN New Connection','',NULL,'CRM','191000001001','PSTN New Connection','PSTN New Connection','',900,560,0,1,'',0,0,'2017-06-28 15:40:22',1,NULL),(4,5,'Change Main Offer','',NULL,'CRM','191002011001','Change Main Offer','Change Main Offer','',900,560,0,1,'',0,0,'2017-06-28 15:40:22',1,NULL),(5,5,'Change Linespeed','',NULL,'CRM','191000001308','Change Linespeed','Change Linespeed','',900,560,0,1,'',0,0,'2017-06-28 15:40:23',1,NULL),(6,5,'Fixed-Line Relocation With Telephone Number Change','',NULL,'CRM','191000001017','Fixed-Line Relocation With Telephone Number Change','Fixed-Line Relocation With Telephone Number Change','',900,560,0,1,'',0,0,'2017-06-28 15:40:23',1,NULL),(7,5,'Broadband Relocation','',NULL,'CRM','191000001018','Broadband Relocation','Broadband Relocation','',900,560,0,1,'',0,0,'2017-06-28 15:40:24',1,NULL),(8,5,'Change Installation Address','',NULL,'CRM','191000001063','Change Installation Address','Change Installation Address','',900,560,0,1,'',0,0,'2017-06-28 15:40:24',1,NULL),(9,5,'Change Router','',NULL,'CRM','191000001309','Change Router','Change Router','',900,560,0,1,'',0,0,'2017-06-28 15:40:25',1,NULL),(10,5,'Transfer Ownership','',NULL,'CRM','191000002204','Transfer Ownership','Transfer Ownership','',900,560,0,1,'',0,0,'2017-06-28 15:40:25',1,NULL),(11,5,'Pre-termination Re-access Network','',NULL,'CRM','191001001002','Pre-termination Re-access Network','Pre-termination Re-access Network','',900,560,0,1,'',0,0,'2017-06-28 15:40:26',1,NULL),(12,5,'Change Broadband Password','',NULL,'CRM','191001001003','Change Broadband Password','Change Broadband Password','',900,560,0,1,'',0,0,'2017-06-28 15:40:26',1,NULL),(13,5,'Change Number','',NULL,'CRM','191001006010','Change Number','Change Number','',900,560,0,1,'',0,0,'2017-06-28 15:40:27',1,NULL),(14,5,'Subscribe AddOn','',NULL,'CRM','191002011003','Subscribe AddOn','Subscribe AddOn','',900,560,0,1,'',0,0,'2017-06-28 15:40:27',1,NULL),(15,5,'Addon Offer Pause','',NULL,'CRM','191002011004','Addon Offer Pause','Addon Offer Pause','',900,560,0,1,'',0,0,'2017-06-28 15:40:28',1,NULL),(16,5,'Addon Offer Resume','',NULL,'CRM','191002011005','Addon Offer Resume','Addon Offer Resume','',900,560,0,1,'',0,0,'2017-06-28 15:40:28',1,NULL),(17,5,'Unsubscribe AddOn','',NULL,'CRM','191002011006','Unsubscribe AddOn','Unsubscribe AddOn','',900,560,0,1,'',0,0,'2017-06-28 15:40:29',1,NULL),(18,5,'RenewOffer','',NULL,'CRM','191002011007','RenewOffer','RenewOffer','',900,560,0,1,'',0,0,'2017-06-28 15:40:29',1,NULL),(19,5,'GSM Pre-Termination','',NULL,'CRM','191002001001','GSM Pre-Termination','GSM Pre-Termination','',900,560,0,1,'',0,0,'2017-06-28 15:40:30',1,NULL),(20,5,'GSM Termination','',NULL,'CRM','191002001002','GSM Termination','GSM Termination','',900,560,0,1,'',0,0,'2017-06-28 15:40:30',1,NULL),(21,5,'PSTN Pre-Termination','',NULL,'CRM','191002001003','PSTN Pre-Termination','PSTN Pre-Termination','',900,560,0,1,'',0,0,'2017-06-28 15:40:31',1,NULL),(22,5,'PSTN Termination','',NULL,'CRM','191002001004','PSTN Termination','PSTN Termination','',900,560,0,1,'',0,0,'2017-06-28 15:40:31',1,NULL),(23,5,'Broadband Termination','',NULL,'CRM','191002001005','Broadband Termination','Broadband Termination','',900,560,0,1,'',0,0,'2017-06-28 15:40:32',1,NULL),(24,5,'Suspension','',NULL,'CRM','191001004201','Suspension','Suspension','',900,560,0,1,'',0,0,'2017-06-28 15:40:32',1,NULL),(25,5,'Resumption','',NULL,'CRM','191001004202','Resumption','Resumption','',900,560,0,1,'',0,0,'2017-06-28 15:40:33',1,NULL),(26,5,'Open Service','',NULL,'CRM','191001005001','Open Service','Open Service','',900,560,0,1,'',0,0,'2017-06-28 15:40:34',1,NULL),(27,5,'Close Service','',NULL,'CRM','191001005002','Close Service','Close Service','',900,560,0,1,'',0,0,'2017-06-28 15:40:34',1,NULL),(28,5,'Open Auto Renew','',NULL,'CRM','191001005003','Open Auto Renew','Open Auto Renew','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(29,5,'Close Auto Renew','',NULL,'CRM','191001005004','Close Auto Renew','Close Auto Renew','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(30,5,'Change SimCard','',NULL,'CRM','191001007010','Change SimCard','Change SimCard','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(31,5,'Mobile Transfer Ownership','',NULL,'CRM','191000001019','Mobile Transfer Ownership','Mobile Transfer Ownership','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(32,5,'PSTN Transfer Ownership','',NULL,'CRM','191000001020','PSTN Transfer Ownership','PSTN Transfer Ownership','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(33,5,'Broadband Transfer Ownership','',NULL,'CRM','191000001021','Broadband Transfer Ownership','Broadband Transfer Ownership','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(34,10,'Eshop register','',NULL,'CRM','111000001001','Eshop register','Eshop register','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(35,10,'Eshop active account','',NULL,'CRM','111000001002','Eshop active account','Eshop active account','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(36,10,'Eshop reset password','',NULL,'CRM','111000001003','Eshop reset password','Eshop reset password','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(37,10,'Eshop modify password','',NULL,'CRM','111000001004','Eshop modify password','Eshop modify password','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(38,10,'Eshop login','',NULL,'CRM','111000001005','Eshop login','Eshop login','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(39,10,'Eshop logout','',NULL,'CRM','111000001006','Eshop logout','Eshop logout','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(40,5,'Change Order','',NULL,'CRM','191002009001','Change Order','Change Order','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(41,5,'Subscribe Fnf','',NULL,'CRM','191000008001','Subscribe Fnf','Subscribe Fnf','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(42,5,'Unsubscribe Fnf','',NULL,'CRM','191000008004','Unsubscribe Fnf','Unsubscribe Fnf','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(43,5,'Fnf Add member','',NULL,'CRM','191000008002','Fnf Add member','Fnf Add member','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(44,5,'Fnf delete member','',NULL,'CRM','191000008003','Fnf delete member','Fnf delete member','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(45,10,'Add basket','',NULL,'CRM','111000001007','Add basket','Add basket','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(46,10,'Delete basket','',NULL,'CRM','111000001008','Delete basket','Delete basket','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(47,10,'Clear basket','',NULL,'CRM','111000001009','Clear basket','Clear basket','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(48,3,'Trouble Ticket',NULL,NULL,'CRM','112000001001','Service request','Service request','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(49,9,'Customer Info Update','',NULL,'CRM','113000001001','Customer Info Update','Customer Info Update','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL),(50,5,'Subscribe CUG','',NULL,'CRM','200000000001','Subscribe CUG','Subscribe CUG','',900,560,0,1,'',0,0,'2017-06-28 15:40:35',1,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
