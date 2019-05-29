/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.24-log : Database - base
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`base` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `base`;

/*Table structure for table `bs_district` */

DROP TABLE IF EXISTS `bs_district`;

CREATE TABLE `bs_district` (
  `DISTRICT_ID` bigint(18) NOT NULL COMMENT '行政区域内部编码',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '行政区域内部编码',
  `DISTRICT_NAME` varchar(100) NOT NULL COMMENT '行政区域名称',
  `DISTRICT_ENGLISH_NAME` varchar(100) DEFAULT NULL,
  `DISTRICT_TYPE_ID` decimal(6,0) NOT NULL COMMENT '行政区域类型。\n\n1、省/自治区\n2、地市\n3、县区',
  `PARENT_DISTRICT_ID` decimal(8,0) DEFAULT NULL COMMENT '上级行政区域',
  `AREA_CODE` varchar(8) DEFAULT NULL COMMENT '区号',
  `POST_CODE` decimal(6,0) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `SORT_ID` decimal(8,0) DEFAULT NULL,
  `CENTER_INFO_CODE` varchar(6) DEFAULT NULL COMMENT '中心编码',
  `DISTRICT_TWO_NUMBER` decimal(2,0) DEFAULT NULL COMMENT '行政区域2位数字',
  `COURSE_FLAG` decimal(1,0) DEFAULT NULL COMMENT '值含义：0：未割接 1：已割接',
  PRIMARY KEY (`DISTRICT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行政区域定义表\n三户生成用户USERID从此表中查找配置';

/*Table structure for table `bs_ftp` */

DROP TABLE IF EXISTS `bs_ftp`;

CREATE TABLE `bs_ftp` (
  `FTP_CODE` varchar(255) NOT NULL,
  `HOST_IP` varchar(30) NOT NULL,
  `PORT` decimal(5,0) NOT NULL,
  `USERNAME` varchar(40) NOT NULL,
  `PASSWORD` varchar(80) NOT NULL COMMENT 'FTP登录密码，使用RC2方式加密',
  `REMARKS` varchar(100) DEFAULT NULL,
  `STATE` char(1) NOT NULL COMMENT '记录状态\nU:正常 E:删除',
  `STATE_DATE` datetime DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `SECURE` char(1) DEFAULT NULL COMMENT 'Y：SFTP；N：FTP',
  PRIMARY KEY (`FTP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='FTP基础配置信息，包括主机、端口、用户名、密码等';

/*Table structure for table `bs_ftp_path` */

DROP TABLE IF EXISTS `bs_ftp_path`;

CREATE TABLE `bs_ftp_path` (
  `FTP_PATH_CODE` varchar(255) NOT NULL,
  `FTP_CODE` varchar(255) NOT NULL,
  `REMOTE_PATH` varchar(200) DEFAULT NULL,
  `REMOTE_PATH_HIS` varchar(200) DEFAULT NULL,
  `REMOTE_PATH_TEMP` varchar(200) DEFAULT NULL,
  `LOCAL_PATH` varchar(200) DEFAULT NULL,
  `LOCAL_PATH_HIS` varchar(200) DEFAULT NULL,
  `LOCAL_PATH_TEMP` varchar(200) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `STATE` char(1) NOT NULL COMMENT '记录状态\nU:正常 E:删除',
  `STATE_DATE` datetime DEFAULT NULL COMMENT 'U-在用 E-作废',
  `CREATED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FTP_PATH_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='FTP文件路径信息，包括本地文件路径信息、远程文件路径信息等';

/*Table structure for table `bs_i18n_resource` */

DROP TABLE IF EXISTS `bs_i18n_resource`;

CREATE TABLE `bs_i18n_resource` (
  `RES_KEY` varchar(15) NOT NULL,
  `ZH_CN` varchar(1000) NOT NULL,
  `TARGET_LANGUAGE` varchar(2000) DEFAULT NULL,
  `STATE` char(1) NOT NULL COMMENT '记录状态 U:正常 E:删除',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT 'CRM编码',
  `LANGUAGES` varchar(200) NOT NULL,
  `ext2` varchar(2000) DEFAULT NULL,
  `ext3` varchar(2000) DEFAULT NULL,
  `ext4` varchar(2000) DEFAULT NULL,
  `ext5` varchar(2000) DEFAULT NULL,
  `ext6` varchar(2000) DEFAULT NULL,
  `ext7` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`RES_KEY`,`LANGUAGES`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `bs_para_detail` */

DROP TABLE IF EXISTS `bs_para_detail`;

CREATE TABLE `bs_para_detail` (
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区唯一标识，X表示全省',
  `PARA_TYPE` varchar(50) NOT NULL,
  `PARA_CODE` varchar(50) NOT NULL,
  `PARA_NAME` varchar(60) DEFAULT NULL,
  `PARA1` varchar(2048) DEFAULT NULL,
  `PARA2` varchar(2048) DEFAULT NULL,
  `PARA3` varchar(2048) DEFAULT NULL,
  `PARA4` varchar(2048) DEFAULT NULL,
  `PARA5` varchar(2048) DEFAULT NULL,
  `PARA_DESC` varchar(128) DEFAULT NULL,
  `STATE` char(1) NOT NULL COMMENT '记录状态\nU-正常 E-删除',
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `STATE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`REGION_ID`,`PARA_TYPE`,`PARA_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统参数的配置表';

/*Table structure for table `bs_static_data` */

DROP TABLE IF EXISTS `bs_static_data`;

CREATE TABLE `bs_static_data` (
  `CODE_TYPE` varchar(255) NOT NULL COMMENT '编码类型',
  `CODE_VALUE` varchar(255) NOT NULL COMMENT '编码值',
  `CODE_NAME` varchar(255) NOT NULL COMMENT '编码名称',
  `CODE_DESC` varchar(255) DEFAULT NULL COMMENT '编码描述',
  `CODE_TYPE_ALIAS` varchar(255) DEFAULT NULL COMMENT '编码别名,用作java的参数名称',
  `SORT_ID` decimal(3,0) DEFAULT NULL COMMENT '排序ID',
  `STATE` char(1) NOT NULL COMMENT '记录状态\nU-正常 E-删除',
  `EXTERN_CODE_TYPE` varchar(2000) DEFAULT NULL COMMENT '外部编码',
  `ALLOW_ADMIN` char(1) NOT NULL,
  `RES_KEY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CODE_TYPE`,`CODE_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='静态数据定义表';

/*Table structure for table `bs_tenant` */

DROP TABLE IF EXISTS `bs_tenant`;

CREATE TABLE `bs_tenant` (
  `T_ID` bigint(18) NOT NULL COMMENT '唯一标识',
  `TENANT_ID` varchar(10) DEFAULT NULL COMMENT '租户标识',
  `TENANT_CODE` varchar(50) DEFAULT NULL COMMENT '租户编码',
  `TENANT_NAME` varchar(255) DEFAULT NULL COMMENT '租户名称',
  `PRE_FLANGUAGE` varchar(20) DEFAULT NULL COMMENT '偏好语言',
  `CURRENCY_ID` bigint(12) DEFAULT NULL COMMENT '货币标识',
  `TIMEZONE` varchar(50) DEFAULT NULL COMMENT '时区',
  `REGION_ID` varchar(10) DEFAULT NULL COMMENT '地区',
  `DEFAULT_CENTER` varchar(10) DEFAULT NULL COMMENT '中心',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建人',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`T_ID`),
  KEY `IDX_TENANT_1` (`TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cfg_client_timeout` */

DROP TABLE IF EXISTS `cfg_client_timeout`;

CREATE TABLE `cfg_client_timeout` (
  `SERVER_NAME` varchar(100) NOT NULL,
  `INTERFACE_CLASSNAME` varchar(255) NOT NULL,
  `METHOD_NAME` varchar(75) NOT NULL,
  `PARAMETER_COUNT` decimal(6,0) NOT NULL,
  `TIMEOUT_SECOND` decimal(6,0) NOT NULL,
  `STATE` char(1) NOT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`INTERFACE_CLASSNAME`,`METHOD_NAME`,`PARAMETER_COUNT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cfg_http` */

DROP TABLE IF EXISTS `cfg_http`;

CREATE TABLE `cfg_http` (
  `CFG_HTTP_CODE` varchar(255) NOT NULL COMMENT '编码',
  `HTTP_GRP` varchar(255) NOT NULL COMMENT 'http组',
  `HTTP_DESC` varchar(1000) DEFAULT NULL COMMENT 'http_desc描述',
  `STATE` char(1) NOT NULL COMMENT '状态(U,为正常;E,为删除)',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`CFG_HTTP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cfg_http_client` */

DROP TABLE IF EXISTS `cfg_http_client`;

CREATE TABLE `cfg_http_client` (
  `CFG_HTTP_CLIENT_CODE` varchar(255) NOT NULL COMMENT '编码',
  `URL_ADDRESS` varchar(4000) NOT NULL COMMENT 'url地址',
  `REQUEST_HEADER` varchar(4000) DEFAULT NULL COMMENT '请求头',
  `RESPONSE_TYPE` varchar(255) NOT NULL COMMENT '返回类型(byte 代表返回二进制数组,string 代表返回字符串)',
  `TIMEOUT_SECONDS` decimal(12,0) NOT NULL COMMENT '超时(秒)',
  `STATE` char(1) NOT NULL COMMENT '状态(U,为正常;E,为删除)',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`CFG_HTTP_CLIENT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cfg_http_mapping` */

DROP TABLE IF EXISTS `cfg_http_mapping`;

CREATE TABLE `cfg_http_mapping` (
  `MAPPING_ID` bigint(18) NOT NULL COMMENT '主键',
  `CFG_HTTP_CODE` varchar(255) NOT NULL COMMENT 'http编码',
  `MAPPING_NAME` varchar(4000) NOT NULL COMMENT '映射名称',
  `MAPPING_VALUE` varchar(4000) NOT NULL COMMENT '映射值',
  `STATE` char(1) NOT NULL COMMENT '状态(U,为正常;E,为删除)',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`MAPPING_ID`),
  KEY `IDX_CFG_HTTP_MAPPING_1` (`CFG_HTTP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cfg_msg_client` */

DROP TABLE IF EXISTS `cfg_msg_client`;

CREATE TABLE `cfg_msg_client` (
  `CFG_MSG_CONTROL_CODE` varchar(50) NOT NULL,
  `URL_ADDRESS` varchar(255) DEFAULT NULL,
  `HTTP_CONNECTIONS` decimal(10,0) DEFAULT NULL,
  `HTTP_TIMEOUT` decimal(10,0) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL COMMENT 'U:有效\nE:无效',
  `REMARKS` varchar(255) DEFAULT NULL,
  `CHANNEL` varchar(100) DEFAULT NULL,
  `SERVER_TYPE` varchar(25) DEFAULT NULL,
  `SERVER_NAME` varchar(100) DEFAULT NULL,
  `RECORD_LOG` char(1) DEFAULT NULL,
  PRIMARY KEY (`CFG_MSG_CONTROL_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `exception_code` */

DROP TABLE IF EXISTS `exception_code`;

CREATE TABLE `exception_code` (
  `EXCEPTION_CODE_TYPE` varchar(12) NOT NULL,
  `EXCEPTION_PARENT_CODE` varchar(12) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `RES_KEY` varchar(25) DEFAULT NULL COMMENT 'bs_i18n_resource表主键',
  `STATE` char(1) NOT NULL DEFAULT 'U' COMMENT 'U:正常，E：删除',
  PRIMARY KEY (`EXCEPTION_CODE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
