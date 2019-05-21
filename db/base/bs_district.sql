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

/*Data for the table `bs_district` */

insert  into `bs_district`(`DISTRICT_ID`,`REGION_ID`,`DISTRICT_NAME`,`DISTRICT_ENGLISH_NAME`,`DISTRICT_TYPE_ID`,`PARENT_DISTRICT_ID`,`AREA_CODE`,`POST_CODE`,`NOTES`,`SORT_ID`,`CENTER_INFO_CODE`,`DISTRICT_TWO_NUMBER`,`COURSE_FLAG`) values ('1','0','Nepal','Nepal','0','0','0',NULL,'null',NULL,'1','10','1'),('3','11','Biratnagar','Biratnagar(Eastern Region)','1','1',NULL,NULL,NULL,NULL,'1','11','1'),('4','1101','Mechi','Mechi','2','3',NULL,NULL,NULL,NULL,'1','11',NULL),('5','110101','Ilam','Ilam','3','4','27',NULL,NULL,NULL,'1','11',NULL),('6','110102','Jhapa','Jhapa','3','4','23',NULL,NULL,NULL,'1','11',NULL),('7','110103','Panchthar','Panchthar','3','4','24',NULL,NULL,NULL,'1','11',NULL),('8','110104','Taplejung','Taplejung','3','4','24',NULL,NULL,NULL,'1','11',NULL),('9','1102','Koshi','Koshi','2','3',NULL,NULL,NULL,NULL,'1','11',NULL),('10','110201','Bhojpur','Bhojpur','3','9','29',NULL,NULL,NULL,'1','11',NULL),('11','110202','Dhankuta','Dhankuta','3','9','26',NULL,NULL,NULL,'1','11',NULL),('12','110203','Morang','Morang','3','9','21',NULL,NULL,NULL,'1','11',NULL),('13','110204','Sunsari','Sunsari','3','9','25',NULL,NULL,NULL,'1','11',NULL),('14','110205','Sankhuwasabha','Sankhuwasabha','3','9','29',NULL,NULL,NULL,'1','11',NULL),('15','110206','Terhathum','Terhathum','3','9','26',NULL,NULL,NULL,'1','11',NULL),('16','1103','Sagarmatha','Sagarmatha','2','3',NULL,NULL,NULL,NULL,'1','11',NULL),('17','110301','Khotang','Khotang','3','16','36',NULL,NULL,NULL,'1','11',NULL),('18','110302','Okhaldhunga','Okhaldhunga','3','16','37',NULL,NULL,NULL,'1','11',NULL),('19','110303','Saptari','Saptari','3','16','31',NULL,NULL,NULL,'1','11',NULL),('20','110304','Siraha','Siraha','3','16','33',NULL,NULL,NULL,'1','11',NULL),('21','110305','Solukhumbu','Solukhumbu','3','16','38',NULL,NULL,NULL,'1','11',NULL),('22','110306','Udayapur','Udayapur','3','16','35',NULL,NULL,NULL,'1','11',NULL),('23','12','Kathmandu','Kathmandu(Central Region)','1','1',NULL,NULL,NULL,NULL,'1','12',NULL),('24','1201','Bagmati','Bagmati','2','23',NULL,NULL,NULL,NULL,'1','12',NULL),('25','120101','Dhading','Dhading','3','24','10',NULL,NULL,NULL,'1','12',NULL),('26','120102','Bhaktapur','Bhaktapur','3','24','1',NULL,NULL,NULL,'1','12',NULL),('27','120103','Kathmandu','Kathmandu','3','24','1',NULL,NULL,NULL,'1','12',NULL),('28','120104','Kavrepalanchowk','Kavrepalanchowk','3','24','11',NULL,NULL,NULL,'1','12',NULL),('29','120105','Lalitpur','Lalitpur','3','24','1',NULL,NULL,NULL,'1','12',NULL),('30','120106','Nuwakot','Nuwakot','3','24','10',NULL,NULL,NULL,'1','12',NULL),('31','120107','Rasuwa','Rasuwa','3','24','10',NULL,NULL,NULL,'1','12',NULL),('32','120108','Sindhulpalchok','Sindhulpalchok','3','24','11',NULL,NULL,NULL,'1','12',NULL),('33','13','Birgunj','Birgunj(Central Region)','1','1',NULL,NULL,NULL,NULL,'1','13',NULL),('34','1301','Narayani','Narayani','2','33',NULL,NULL,NULL,NULL,'1','13',NULL),('35','130101','Bara','Bara','3','34','53',NULL,NULL,NULL,'1','13',NULL),('36','130102','Chitwan','Chitwan','3','34','56',NULL,NULL,NULL,'1','13',NULL),('37','130103','Makwanpur','Makwanpur','3','34','57',NULL,NULL,NULL,'1','13',NULL),('38','130104','Parsa','Parsa','3','34','51',NULL,NULL,NULL,'1','13',NULL),('39','130105','Rautahat','Rautahat','3','34','55',NULL,NULL,NULL,'1','13',NULL),('40','1302','Janakpur','Janakpur','2','33',NULL,NULL,NULL,NULL,'1','13',NULL),('41','130201','Dhanusa','Dhanusa','3','40','41',NULL,NULL,NULL,'1','13',NULL),('42','130202','Dolakha','Dolakha','3','40','49',NULL,NULL,NULL,'1','13',NULL),('43','130203','Mohottari','Mohottari','3','40','44',NULL,NULL,NULL,'1','13',NULL),('44','130204','Ramechhap','Ramechhap','3','40','48',NULL,NULL,NULL,'1','13',NULL),('45','130205','Sarlahi','Sarlahi','3','40','46',NULL,NULL,NULL,'1','13',NULL),('46','130206','Sindhuli','Sindhuli','3','40','47',NULL,NULL,NULL,'1','13',NULL),('47','14','Bhairahawa','Bhairahawa(Western Region)','1','1',NULL,NULL,NULL,NULL,'1','14',NULL),('48','1401','Gandaki','Gandaki','2','47',NULL,NULL,NULL,NULL,'1','14',NULL),('49','140101','Gorkha','Gorkha','3','48','64',NULL,NULL,NULL,'1','14',NULL),('50','140102','Kaski','Kaski','3','48','61',NULL,NULL,NULL,'1','14',NULL),('51','140103','Lamjung','Lamjung','3','48','66',NULL,NULL,NULL,'1','14',NULL),('52','140104','Manang','Manang','3','48','66',NULL,NULL,NULL,'1','14',NULL),('53','140105','Syangja','Syangja','3','48','63',NULL,NULL,NULL,'1','14',NULL),('54','140106','Tanahun','Tanahun','3','48','65',NULL,NULL,NULL,'1','14',NULL),('55','1402','Dhawalagiri','Dhawalagiri','2','47',NULL,NULL,NULL,NULL,'1','14',NULL),('56','140201','Baglung','Baglung','3','55','68',NULL,NULL,NULL,'1','14',NULL),('57','140202','Parbat','Parbat','3','55','67',NULL,NULL,NULL,'1','14',NULL),('58','140203','Mustang','Mustang','3','55','69',NULL,NULL,NULL,'1','14',NULL),('59','140204','Myagdi','Myagdi','3','55','69',NULL,NULL,NULL,'1','14',NULL),('60','1403','Lumbini','Lumbini','2','47',NULL,NULL,NULL,NULL,'1','14',NULL),('61','140301','Arghakhanchi','Arghakhanchi','3','60','77',NULL,NULL,NULL,'1','14',NULL),('62','140302','GulmiI','GulmiI','3','60','79',NULL,NULL,NULL,'1','14',NULL),('63','140303','Kapilbastu','Kapilbastu','3','60','76',NULL,NULL,NULL,'1','14',NULL),('64','140304','Nawalparasi','Nawalparasi','3','60','78',NULL,NULL,NULL,'1','14',NULL),('65','140305','Palpa','Palpa','3','60','75',NULL,NULL,NULL,'1','14',NULL),('66','140306','Rupandehi','Rupandehi','3','60','71',NULL,NULL,NULL,'1','14',NULL),('67','15','Nepalgunj','Nepalgunj(Mid-Western Region)','1','1',NULL,NULL,NULL,NULL,'1','15',NULL),('68','1501','Rapti','Rapti','2','67',NULL,NULL,NULL,NULL,'1','15',NULL),('69','150101','Dang','Dang','3','68','82',NULL,NULL,NULL,'1','15',NULL),('70','150102','Pyuthan','Pyuthan','3','68','86',NULL,NULL,NULL,'1','15',NULL),('71','150103','Rolpa','Rolpa','3','68','86',NULL,NULL,NULL,'1','15',NULL),('72','150104','Rukum','Rukum','3','68','88',NULL,NULL,NULL,'1','15',NULL),('73','150105','Salyan','Salyan','3','68','88',NULL,NULL,NULL,'1','15',NULL),('74','1502','Bheri','Bheri','2','67',NULL,NULL,NULL,NULL,'1','15',NULL),('75','150201','Banke','Banke','3','74','81',NULL,NULL,NULL,'1','15',NULL),('76','150202','Bardiya','Bardiya','3','74','84',NULL,NULL,NULL,'1','15',NULL),('77','150203','Dailekh','Dailekh','3','74','89',NULL,NULL,NULL,'1','15',NULL),('78','150204','Jajarkot','Jajarkot','3','74','89',NULL,NULL,NULL,'1','15',NULL),('79','150205','Surkhet','Surkhet','3','74','83',NULL,NULL,NULL,'1','15',NULL),('80','1503','Karnali','Karnali','2','67',NULL,NULL,NULL,NULL,'1','15',NULL),('81','150301','Dolpa','Dolpa','3','80','87',NULL,NULL,NULL,'1','15',NULL),('82','150302','Humla','Humla','3','80','87',NULL,NULL,NULL,'1','15',NULL),('83','150303','Jumla','Jumla','3','80','87',NULL,NULL,NULL,'1','15',NULL),('84','150304','Kalikot','Kalikot','3','80','87',NULL,NULL,NULL,'1','15',NULL),('85','150305','Mugu','Mugu','3','80','87',NULL,NULL,NULL,'1','15',NULL),('86','16','Dhangadhi','Dhangadhi(Far-Western Region)','1','1',NULL,NULL,NULL,NULL,'1','16',NULL),('87','1601','Seti','Seti','2','86',NULL,NULL,NULL,NULL,'1','16',NULL),('88','160101','Achham','Achham','3','87','97',NULL,NULL,NULL,'1','16',NULL),('89','160102','Bajhang','Bajhang','3','87','92',NULL,NULL,NULL,'1','16',NULL),('90','160103','Bajura','Bajura','3','87','97',NULL,NULL,NULL,'1','16',NULL),('91','160104','Doti','Doti','3','87','94',NULL,NULL,NULL,'1','16',NULL),('92','160105','Kailali','Kailali','3','87','91',NULL,NULL,NULL,'1','16',NULL),('93','1602','Mahakali','Mahakali','2','86',NULL,NULL,NULL,NULL,'1','16',NULL),('94','160201','Baitadi','Baitadi','3','93','95',NULL,NULL,NULL,'1','16',NULL),('95','160202','Dadeldhura','Dadeldhura','3','93','96',NULL,NULL,NULL,'1','16',NULL),('96','160203','Darchula','Darchula','3','93','93',NULL,NULL,NULL,'1','16',NULL),('97','160204','Kanchanpur','Kanchanpur','3','93','99',NULL,NULL,NULL,'1','16',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
