/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.24-log : Database - eshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eshop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `eshop`;

/*Table structure for table `bank_debit_info` */

DROP TABLE IF EXISTS `bank_debit_info`;

CREATE TABLE `bank_debit_info` (
  `BANK_DEBIT_ID` decimal(12,0) NOT NULL COMMENT '银行卡id',
  `CARD_TYPE` decimal(4,0) DEFAULT NULL COMMENT '1：储蓄卡\r\n 2：信用卡',
  `CARD_ID` varchar(32) NOT NULL,
  `NAME` varchar(64) DEFAULT NULL,
  `AUTH_ID` varchar(64) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `CVR` varchar(50) DEFAULT NULL COMMENT 'CVR',
  `BANK_ID` varchar(50) DEFAULT NULL,
  `CARD_COUNTRY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`BANK_DEBIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cart_char` */

DROP TABLE IF EXISTS `cart_char`;

CREATE TABLE `cart_char` (
  `CART_CHAR_ID` decimal(12,0) NOT NULL,
  `CART_ID` decimal(12,0) NOT NULL,
  `CHAR_SPEC_ID` decimal(8,0) DEFAULT NULL,
  `CHAR_SPEC_CODE` varchar(32) DEFAULT NULL,
  `VALUE` varchar(256) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`CART_CHAR_ID`),
  KEY `CART_ID` (`CART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存放购物车级实例化属性，例如待分配的号码等';

/*Table structure for table `cart_item_char` */

DROP TABLE IF EXISTS `cart_item_char`;

CREATE TABLE `cart_item_char` (
  `CART_ITEM_CHAR_ID` decimal(12,0) NOT NULL,
  `CART_ITEM_ID` decimal(12,0) NOT NULL,
  `CHAR_SPEC_ID` decimal(8,0) DEFAULT NULL,
  `CHAR_SPEC_CODE` varchar(32) DEFAULT NULL,
  `value` varchar(4000) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`CART_ITEM_CHAR_ID`),
  KEY `CART_ITEM_ID` (`CART_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cart_item_char_his` */

DROP TABLE IF EXISTS `cart_item_char_his`;

CREATE TABLE `cart_item_char_his` (
  `CART_ITEM_CHAR_ID` decimal(12,0) NOT NULL,
  `CART_ITEM_ID` decimal(12,0) NOT NULL,
  `CHAR_SPEC_ID` decimal(8,0) DEFAULT NULL,
  `CHAR_SPEC_CODE` varchar(32) DEFAULT NULL,
  `value` varchar(4000) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`CART_ITEM_CHAR_ID`),
  KEY `CART_ITEM_ID` (`CART_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `common_param` */

DROP TABLE IF EXISTS `common_param`;

CREATE TABLE `common_param` (
  `PARAM_ID` decimal(12,0) NOT NULL,
  `PARAM_ATTR` varchar(50) NOT NULL,
  `PARAM_VALUE` varchar(100) NOT NULL,
  `PARAM_CODE` varchar(100) DEFAULT NULL,
  `PARAM_CODE1` varchar(100) DEFAULT NULL,
  `PARAM_CODE2` varchar(100) DEFAULT NULL,
  `PARAM_CODE4` varchar(100) DEFAULT NULL,
  `PARAM_CODE5` varchar(100) DEFAULT NULL,
  `PARAM_CODE6` varchar(2000) DEFAULT NULL,
  `PARAM_CODE3` varchar(100) DEFAULT NULL,
  `PARAM_CODE7` varchar(2000) DEFAULT NULL,
  `EFF_DATE` date DEFAULT NULL,
  `EXP_DATE` date DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL,
  `TENANT_ID` varchar(8) DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`PARAM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `order_info` */

DROP TABLE IF EXISTS `order_info`;

CREATE TABLE `order_info` (
  `ORDER_ID` decimal(12,0) NOT NULL,
  `ORDER_CODE` varchar(32) NOT NULL COMMENT '有规则生成，区分eshop、selfcare订单',
  `CREATED_CHANNEL_CODE` varchar(32) NOT NULL COMMENT '表示创建购物车所在渠道:如Call Center,E-Shop',
  `TOTAL_AMOUNT` decimal(12,0) NOT NULL,
  `DISCOUNT_AMOUNT` decimal(12,0) NOT NULL,
  `TAX_AMOUNT` decimal(12,0) NOT NULL,
  `TAX_DISCOUNT_AMOUNT` decimal(12,0) DEFAULT NULL,
  `ACCOUNT_CODE` varchar(32) DEFAULT NULL COMMENT '对应CRM账户标识',
  `CRM_CART_ID` varchar(32) DEFAULT NULL,
  `SAP_ORDER_ID` varchar(32) DEFAULT NULL,
  `PARENT_ORDER_ID` varchar(32) DEFAULT NULL COMMENT '对应CRM总体订单标识',
  `CRM_CART_DATE` datetime DEFAULT NULL,
  `RES1` varchar(64) DEFAULT NULL COMMENT '预留',
  `RES2` varchar(64) DEFAULT NULL COMMENT '预留',
  `state` varchar(20) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` char(10) DEFAULT NULL,
  `CUSTOMER_CODE` varchar(32) DEFAULT NULL,
  `MEASURE_ID` decimal(12,0) NOT NULL COMMENT '货币单位',
  `ORDER_TYPE` varchar(8) NOT NULL DEFAULT '0' COMMENT '0 Eshop  Purchase1 SelfCare Recharge',
  `PROCESSS` varchar(64) NOT NULL DEFAULT '0' COMMENT '环节',
  `REQUEST_INFO` varchar(500) DEFAULT '0',
  `ERROR_TIMES` decimal(12,0) DEFAULT '0' COMMENT '失败次数',
  `CART_ID` decimal(12,0) DEFAULT NULL COMMENT '购物车标识',
  PRIMARY KEY (`ORDER_ID`),
  KEY `CUSTOMER_CODE` (`CUSTOMER_CODE`),
  KEY `CART_ID` (`ORDER_ID`,`CART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `order_info_his` */

DROP TABLE IF EXISTS `order_info_his`;

CREATE TABLE `order_info_his` (
  `ORDER_ID` decimal(12,0) NOT NULL,
  `ORDER_CODE` varchar(32) NOT NULL,
  `ORDER_TYPE` varchar(8) DEFAULT NULL,
  `CART_ID` decimal(12,0) DEFAULT NULL,
  `CUSTOMER_CODE` varchar(32) DEFAULT NULL,
  `CREATED_CHANNEL_CODE` varchar(32) NOT NULL,
  `TOTAL_AMOUNT` decimal(12,0) NOT NULL,
  `DISCOUNT_AMOUNT` decimal(12,0) NOT NULL,
  `TAX_AMOUNT` decimal(12,0) NOT NULL,
  `TAX_DISCOUNT_AMOUNT` decimal(12,0) DEFAULT NULL,
  `MEASURE_ID` decimal(12,0) NOT NULL,
  `ACCOUNT_CODE` varchar(32) DEFAULT NULL,
  `CRM_CART_ID` varchar(32) DEFAULT NULL,
  `PARENT_ORDER_ID` varchar(32) DEFAULT NULL,
  `CRM_CART_DATE` datetime DEFAULT NULL,
  `SAP_ORDER_ID` varchar(32) DEFAULT NULL,
  `RES1` varchar(64) DEFAULT NULL,
  `RES2` varchar(64) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL,
  `PROCESSS` varchar(64) DEFAULT NULL,
  `ERROR_TIMES` decimal(12,0) DEFAULT NULL,
  `REQUEST_INFO` varchar(500) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` char(10) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `order_pay_info` */

DROP TABLE IF EXISTS `order_pay_info`;

CREATE TABLE `order_pay_info` (
  `ORDER_PAY_ID` decimal(12,0) NOT NULL,
  `ORDER_ID` decimal(12,0) DEFAULT NULL,
  `FEE_TYPE_CODE` varchar(32) DEFAULT NULL,
  `ACCOUNT_CODE` varchar(32) DEFAULT NULL COMMENT '接收者',
  `INSTALLMENT_FLAG` varchar(8) DEFAULT NULL,
  `PAYMENT_METHOD_CODE` varchar(32) DEFAULT NULL COMMENT '同外围系统映射',
  `STATE` varchar(8) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `TRANSACTION_ID` varchar(100) DEFAULT NULL COMMENT '交易流水',
  `BANK_DEBIT_ID` decimal(12,0) DEFAULT NULL COMMENT '银行卡标识',
  PRIMARY KEY (`ORDER_PAY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ose_customer_events` */

DROP TABLE IF EXISTS `ose_customer_events`;

CREATE TABLE `ose_customer_events` (
  `event_id` varchar(30) NOT NULL,
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `event_type` int(11) NOT NULL,
  `customer_id` varchar(32) NOT NULL,
  `agent_id` varchar(32) DEFAULT NULL,
  `event_description` varchar(1024) NOT NULL,
  `event_extension` varchar(4096) NOT NULL,
  `RES1` varchar(64) DEFAULT NULL,
  `RES2` varchar(64) DEFAULT NULL,
  `RES3` varchar(64) DEFAULT NULL,
  `RES4` varchar(64) DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `CUST_ID` (`customer_id`),
  KEY `EVENT_TYPE` (`event_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ose_profile` */

DROP TABLE IF EXISTS `ose_profile`;

CREATE TABLE `ose_profile` (
  `OSE_PROFILE_ID` decimal(12,0) NOT NULL,
  `CUSTOMER_CODE` varchar(32) DEFAULT NULL,
  `ose_user_name` varchar(128) DEFAULT NULL,
  `OSE_PASSWORD` varchar(64) DEFAULT NULL,
  `EMAIL` varchar(128) DEFAULT NULL,
  `CERTIFICATE_CODE` varchar(32) DEFAULT NULL,
  `FIRST_NAME` varchar(128) DEFAULT NULL,
  `MIDDLE_NAME` varchar(128) DEFAULT NULL,
  `LAST_NAME` varchar(128) DEFAULT NULL,
  `SHORT_NAME` varchar(128) DEFAULT NULL,
  `NICK_NAME` varchar(128) DEFAULT NULL,
  `SEX` decimal(2,0) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `DEFAULT_LANGUAGE` varchar(128) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `reg_type` varchar(2) NOT NULL DEFAULT '1' COMMENT '客户注册方式：1-手机注册，2-邮箱注册，3,FACEBOOK注册 ',
  `reg_channel` varchar(10) DEFAULT NULL COMMENT '1：CRM注册 2：OSE注册',
  `login_name` varchar(128) DEFAULT NULL,
  `partition_id` decimal(2,0) DEFAULT NULL,
  `last_logintime` datetime DEFAULT NULL,
  `time_out` decimal(12,0) DEFAULT NULL,
  `pid` varchar(128) DEFAULT NULL,
  `party` varchar(128) DEFAULT NULL,
  `salt` varchar(20) DEFAULT NULL COMMENT 'Hash256加密密钥',
  `password_Flag` varchar(8) DEFAULT '0' COMMENT '0:MD5Encrypt 1:Hash256Encrypt',
  PRIMARY KEY (`OSE_PROFILE_ID`),
  KEY `ose_user_name` (`ose_user_name`,`OSE_PASSWORD`),
  KEY `ose_customer_code` (`CUSTOMER_CODE`),
  KEY `ose_login_name` (`login_name`),
  KEY `ose_party` (`party`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `payment_method` */

DROP TABLE IF EXISTS `payment_method`;

CREATE TABLE `payment_method` (
  `PAYMENT_METHOD_ID` decimal(4,0) NOT NULL,
  `FEE_TYPE_ID` decimal(8,0) NOT NULL,
  `CUSTOMER_TYPE_ID` decimal(4,0) NOT NULL,
  `PAYMENT_METHOD_CODE` varchar(32) NOT NULL COMMENT '同外围系统映射',
  `PAYMENT_METHOD_NAME` varchar(128) NOT NULL,
  `PAYMENT_URL` varchar(256) DEFAULT NULL COMMENT '在线付款机构提供的付款地址，可以带参数占位符',
  `INSTALLMENT_CONFLICT_FLAG` varchar(8) DEFAULT NULL COMMENT '1 有冲突，有分期则不能选择此支付方式              0 无冲突，有无分期都可以选择此支付方式',
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `SUBSSYS_CODE` varchar(20) DEFAULT NULL COMMENT '子系统编码',
  PRIMARY KEY (`PAYMENT_METHOD_ID`),
  KEY `SUBSSYS_CODE` (`SUBSSYS_CODE`),
  KEY `FEE_TYPE_ID` (`FEE_TYPE_ID`),
  KEY `CUSTOMER_TYPE_ID` (`CUSTOMER_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `pre_qualification` */

DROP TABLE IF EXISTS `pre_qualification`;

CREATE TABLE `pre_qualification` (
  `PREQ_ID` decimal(12,0) NOT NULL,
  `CUST_ORDER_ID` varchar(32) DEFAULT NULL,
  `REQ_ORDER_ID` varchar(20) DEFAULT NULL COMMENT '请求标识',
  `ADDRESS` text,
  `RESULT` text,
  `REGION_ID` varchar(12) DEFAULT NULL,
  `HAS_TNDSL` char(1) DEFAULT NULL,
  `HAS_GOING_ORDER` char(1) DEFAULT NULL,
  `BILL_ID` varchar(12) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `MUNICIPAL_CODE` varchar(12) DEFAULT NULL COMMENT '保留',
  `ROUTE_NUMBER` decimal(4,0) DEFAULT NULL,
  `SEL_CO` text,
  `OPTION_SPEC` varchar(128) DEFAULT NULL,
  `LINE_OPTIONS` varchar(128) DEFAULT NULL,
  `SLE_OPTION` varchar(30) DEFAULT NULL,
  `VISIT_OPTION` varchar(8) DEFAULT NULL,
  `VISIT_TIME` varchar(20) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT 'S:success              I: inProgress              N:Test fail, means no co infos.              R:address is not correct,including has address list or not              ',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `HAS_CHECK_PSTN` char(1) DEFAULT NULL COMMENT '是否校验号码',
  `CONTACT_NUMBER` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `LOCKED_SPEED` varchar(4) DEFAULT NULL COMMENT '低速标记',
  `KVHX` varchar(30) DEFAULT NULL,
  `OFFLINE_RESULT` text,
  `OFF_STATE` varchar(8) DEFAULT NULL,
  `TECHNOLOGY` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`PREQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `shopping_cart` */

DROP TABLE IF EXISTS `shopping_cart`;

CREATE TABLE `shopping_cart` (
  `CART_ID` decimal(12,0) NOT NULL,
  `ANONY_CART_CODE` varchar(128) DEFAULT NULL,
  `CUSTOMER_CODE` varchar(32) DEFAULT NULL,
  `AUTHORIZE_CODE` varchar(128) DEFAULT NULL,
  `CREATED_CHANNEL_CODE` varchar(32) DEFAULT NULL,
  `QUANTITY` decimal(4,0) NOT NULL COMMENT '保留字段:都是1',
  `prifix_url` varchar(256) DEFAULT NULL,
  `RECEIVE_EMAIL` varchar(256) DEFAULT NULL COMMENT '用于提醒和授权',
  `RECEIVE_PHONE_NUMBER` varchar(32) DEFAULT NULL,
  `RECEIVE_NAME` varchar(128) DEFAULT NULL,
  `CRM_CART_ID` varchar(32) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(1000) DEFAULT NULL,
  `GREETING` varchar(128) DEFAULT NULL COMMENT '收件人称呼',
  `INITIAL` varchar(64) DEFAULT NULL COMMENT '代理商简称',
  PRIMARY KEY (`CART_ID`),
  KEY `CUSTOMER_CODE` (`CUSTOMER_CODE`),
  KEY `CREATE_OP_ID` (`CREATE_OP_ID`),
  KEY `AUTHORIZE_CODE` (`AUTHORIZE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `shopping_cart_delivery` */

DROP TABLE IF EXISTS `shopping_cart_delivery`;

CREATE TABLE `shopping_cart_delivery` (
  `DELIVERY_ID` decimal(12,0) NOT NULL,
  `DELIVERY_TYPE_ID` decimal(4,0) DEFAULT NULL COMMENT '1 邮寄方式\r\n 2 自提方式',
  `DELIVERY_OBJECT` varchar(8) DEFAULT NULL COMMENT '1 Product 2 Bill sheet',
  `CART_ID` decimal(12,0) DEFAULT NULL,
  `ADDRESS_ID` decimal(12,0) DEFAULT NULL COMMENT '自提地址或邮寄地址(标准地址标识,来源于CRM)',
  `COUNTY` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `CITY` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `STREET_NAME` varchar(128) DEFAULT NULL,
  `HOUSE_LETTER` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `HOUSE_NUMBER` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `APARTMENT` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `FLOOR` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `DOOR_NUMBER` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `MAIN_DOOR` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `EMAIL` varchar(256) DEFAULT NULL,
  `STORE_CODE` varchar(32) DEFAULT NULL,
  `ZIP_CODE` varchar(8) DEFAULT NULL,
  `FIRST_NAME` varchar(80) DEFAULT NULL,
  `LAST_NAME` varchar(64) DEFAULT NULL,
  `CONTACT_MAN` varchar(128) DEFAULT NULL COMMENT '自提或邮寄都为客户联系人',
  `CONTACT_PHONE` varchar(32) DEFAULT NULL COMMENT '自提或邮寄都为客户联系人电话',
  `UPDATE_ORDER_SMS` varchar(8) DEFAULT NULL COMMENT '0 Not Need remind by SMS when order have updated infomation\r\n 1 Need remind by SMS when order have updated infomation\r\n ',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` char(10) DEFAULT NULL,
  `ADDRESS_TYPE` varchar(20) DEFAULT NULL,
  `MUNICIPALITY` varchar(32) DEFAULT NULL,
  `ADDR_DESC` varchar(256) DEFAULT NULL,
  `DISTRICT_ID` varchar(32) DEFAULT NULL,
  `COUNTRY` varchar(32) DEFAULT NULL,
  `RSRV_STR1` varchar(64) DEFAULT NULL,
  `RSRV_STR2` varchar(64) DEFAULT NULL,
  `RSRV_STR3` varchar(64) DEFAULT NULL,
  `RSRV_STR4` varchar(64) DEFAULT NULL,
  `RSRV_STR5` varchar(64) DEFAULT NULL,
  `RSRV_STR6` varchar(256) DEFAULT NULL,
  `RSRV_STR7` varchar(256) DEFAULT NULL,
  `RSRV_STR8` varchar(256) DEFAULT NULL,
  `RSRV_STR9` varchar(512) DEFAULT NULL,
  `RSRV_STR10` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`DELIVERY_ID`),
  KEY `CART_ID` (`CART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `shopping_cart_delivery_his` */

DROP TABLE IF EXISTS `shopping_cart_delivery_his`;

CREATE TABLE `shopping_cart_delivery_his` (
  `DELIVERY_ID` decimal(12,0) NOT NULL,
  `DELIVERY_TYPE_ID` decimal(4,0) DEFAULT NULL COMMENT '1 邮寄方式\r\n 2 自提方式',
  `DELIVERY_OBJECT` varchar(8) DEFAULT NULL COMMENT '1 Product 2 Bill sheet',
  `CART_ID` decimal(12,0) DEFAULT NULL,
  `ADDRESS_ID` decimal(12,0) DEFAULT NULL COMMENT '自提地址或邮寄地址(标准地址标识,来源于CRM)',
  `COUNTY` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `CITY` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `STREET_NAME` varchar(128) DEFAULT NULL,
  `HOUSE_LETTER` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `HOUSE_NUMBER` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `APARTMENT` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `FLOOR` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `DOOR_NUMBER` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `MAIN_DOOR` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `EMAIL` varchar(256) DEFAULT NULL,
  `STORE_CODE` varchar(32) DEFAULT NULL,
  `ZIP_CODE` varchar(8) DEFAULT NULL,
  `FIRST_NAME` varchar(80) DEFAULT NULL,
  `LAST_NAME` varchar(64) DEFAULT NULL,
  `CONTACT_MAN` varchar(128) DEFAULT NULL COMMENT '自提或邮寄都为客户联系人',
  `CONTACT_PHONE` varchar(32) DEFAULT NULL COMMENT '自提或邮寄都为客户联系人电话',
  `UPDATE_ORDER_SMS` varchar(8) DEFAULT NULL COMMENT '0 Not Need remind by SMS when order have updated infomation\r\n 1 Need remind by SMS when order have updated infomation\r\n ',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` char(10) DEFAULT NULL,
  `ADDRESS_TYPE` varchar(20) DEFAULT NULL,
  `MUNICIPALITY` varchar(32) DEFAULT NULL,
  `ADDR_DESC` varchar(256) DEFAULT NULL,
  `DISTRICT_ID` varchar(32) DEFAULT NULL,
  `COUNTRY` varchar(32) DEFAULT NULL,
  `RSRV_STR1` varchar(64) DEFAULT NULL,
  `RSRV_STR2` varchar(64) DEFAULT NULL,
  `RSRV_STR3` varchar(64) DEFAULT NULL,
  `RSRV_STR4` varchar(64) DEFAULT NULL,
  `RSRV_STR5` varchar(64) DEFAULT NULL,
  `RSRV_STR6` varchar(256) DEFAULT NULL,
  `RSRV_STR7` varchar(256) DEFAULT NULL,
  `RSRV_STR8` varchar(256) DEFAULT NULL,
  `RSRV_STR9` varchar(512) DEFAULT NULL,
  `RSRV_STR10` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`DELIVERY_ID`),
  KEY `CART_ID` (`CART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `shopping_cart_his` */

DROP TABLE IF EXISTS `shopping_cart_his`;

CREATE TABLE `shopping_cart_his` (
  `CART_ID` decimal(12,0) NOT NULL,
  `ANONY_CART_CODE` varchar(128) DEFAULT NULL,
  `AUTHORIZE_CODE` varchar(128) DEFAULT NULL,
  `CREATED_CHANNEL_CODE` varchar(32) DEFAULT NULL,
  `QUANTITY` decimal(4,0) NOT NULL,
  `PRIFIX_URL` varchar(256) DEFAULT NULL,
  `RECEIVE_EMAIL` varchar(256) DEFAULT NULL,
  `RECEIVE_PHONE_NUMBER` varchar(32) DEFAULT NULL,
  `RECEIVE_NAME` varchar(128) DEFAULT NULL,
  `CRM_CART_ID` varchar(32) DEFAULT NULL,
  `GREETING` varchar(128) DEFAULT NULL,
  `INITIAL` varchar(64) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(1000) DEFAULT NULL,
  `CUSTOMER_CODE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`CART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `shopping_cart_item` */

DROP TABLE IF EXISTS `shopping_cart_item`;

CREATE TABLE `shopping_cart_item` (
  `CART_ITEM_ID` decimal(12,0) NOT NULL,
  `CART_ID` decimal(12,0) NOT NULL,
  `ORDER_ID` decimal(12,0) NOT NULL,
  `PROD_OFFERING_ID` decimal(8,0) NOT NULL,
  `CART_ITEM_NAME` varchar(128) DEFAULT NULL,
  `QUANTITY` decimal(4,0) NOT NULL COMMENT '保留字段:都是1',
  `SELECTED_FLAG` decimal(2,0) NOT NULL,
  `CAN_COMPOSITE` decimal(2,0) NOT NULL COMMENT '相同商品可以合并',
  `VALID_DURATION` decimal(12,0) DEFAULT NULL,
  `PARENT_ITEM_ID` decimal(12,0) DEFAULT NULL,
  `RELA_TYPE` varchar(8) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `SAP_ORDER_ID` varchar(32) DEFAULT NULL COMMENT 'SAP预占单号',
  `SAP_ID` varchar(32) DEFAULT NULL,
  `SEQ_NO` decimal(2,0) DEFAULT NULL COMMENT 'family offer 序号',
  `ALLOWANCE` decimal(12,0) DEFAULT '0' COMMENT '津贴',
  PRIMARY KEY (`CART_ITEM_ID`),
  KEY `CART_ID` (`CART_ID`),
  KEY `PARENT_ITEM_ID` (`PARENT_ITEM_ID`),
  KEY `prod_offering_id` (`PROD_OFFERING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `shopping_cart_item_his` */

DROP TABLE IF EXISTS `shopping_cart_item_his`;

CREATE TABLE `shopping_cart_item_his` (
  `CART_ITEM_ID` decimal(12,0) NOT NULL,
  `CART_ID` decimal(12,0) NOT NULL,
  `ORDER_ID` decimal(12,0) NOT NULL,
  `PROD_OFFERING_ID` decimal(8,0) NOT NULL,
  `CART_ITEM_NAME` varchar(128) DEFAULT NULL,
  `QUANTITY` decimal(4,0) NOT NULL COMMENT '保留字段:都是1',
  `SELECTED_FLAG` decimal(2,0) NOT NULL,
  `CAN_COMPOSITE` decimal(2,0) NOT NULL COMMENT '相同商品可以合并',
  `VALID_DURATION` decimal(12,0) DEFAULT NULL,
  `PARENT_ITEM_ID` decimal(12,0) DEFAULT NULL,
  `RELA_TYPE` varchar(8) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `SAP_ORDER_ID` varchar(32) DEFAULT NULL COMMENT 'SAP预占单号',
  `SAP_ID` varchar(32) DEFAULT NULL,
  `SEQ_NO` decimal(2,0) DEFAULT NULL COMMENT 'family offer 序号',
  `ALLOWANCE` decimal(12,0) DEFAULT '0' COMMENT '津贴',
  PRIMARY KEY (`CART_ITEM_ID`),
  KEY `CART_ID` (`CART_ID`),
  KEY `PARENT_ITEM_ID` (`PARENT_ITEM_ID`),
  KEY `prod_offering_id` (`PROD_OFFERING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `shopping_cart_pay_method` */

DROP TABLE IF EXISTS `shopping_cart_pay_method`;

CREATE TABLE `shopping_cart_pay_method` (
  `PAY_ID` decimal(12,0) NOT NULL,
  `CART_ID` decimal(12,0) NOT NULL,
  `ACCOUNT_CODE` varchar(32) DEFAULT NULL,
  `INSTALLMENT_FLAG` varchar(8) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `FEE_TYPE_CODE` varchar(32) DEFAULT NULL,
  `PAYMENT_METHOD_CODE` varchar(32) DEFAULT NULL COMMENT '支付方式',
  `BANK_DEBIT_ID` decimal(12,0) DEFAULT NULL COMMENT '银行卡标识',
  `TRANSACTION_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PAY_ID`),
  KEY `CART_ID` (`CART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车级支付渠道信息';

/*Table structure for table `shopping_cart_pay_method_his` */

DROP TABLE IF EXISTS `shopping_cart_pay_method_his`;

CREATE TABLE `shopping_cart_pay_method_his` (
  `PAY_ID` decimal(12,0) NOT NULL,
  `CART_ID` decimal(12,0) NOT NULL,
  `ACCOUNT_CODE` varchar(32) DEFAULT NULL,
  `INSTALLMENT_FLAG` varchar(8) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `FEE_TYPE_CODE` varchar(32) DEFAULT NULL,
  `PAYMENT_METHOD_CODE` varchar(32) DEFAULT NULL COMMENT '支付方式',
  `BANK_DEBIT_ID` decimal(12,0) DEFAULT NULL COMMENT '银行卡标识',
  `TRANSACTION_ID` varchar(100) DEFAULT NULL COMMENT '交易流水',
  PRIMARY KEY (`PAY_ID`),
  KEY `CART_ID` (`CART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `subscriber_order` */

DROP TABLE IF EXISTS `subscriber_order`;

CREATE TABLE `subscriber_order` (
  `SUBSCRIBER_ORDER_ID` decimal(12,0) NOT NULL,
  `SUBSCRIBER_ORDER_NAME` varchar(128) DEFAULT NULL,
  `ORDER_ID` decimal(12,0) NOT NULL,
  `TEMPLETE_SPEC_ID` decimal(12,0) DEFAULT NULL,
  `ORDER_CODE` varchar(32) DEFAULT NULL COMMENT '对应CRM订单编号',
  `ITEM_CODE` varchar(64) DEFAULT NULL,
  `ACCOUNT_CODE` varchar(32) DEFAULT NULL COMMENT '对应CRM账户标识',
  `MSG_TYPE` varchar(8) DEFAULT NULL COMMENT '1 GSM  2 GSM Bundle  3 GSM NP  4 GSM Bundle NP  5 DSL  6 DSL Bundle  7 DSL Bundle NP  8 Change Offer  9 Change Offer Bundle  10 Terminal  11 Third Service',
  `ORDER_MSG` text,
  `STATE` varchar(8) NOT NULL COMMENT '同ORDER状态',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` char(10) DEFAULT NULL,
  `SUBSCRIBER_TRADE_TYPE` varchar(4) DEFAULT NULL,
  `SERVICE_NUMBER` varchar(20) DEFAULT NULL,
  `SUBSCRIBER_CODE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`SUBSCRIBER_ORDER_ID`),
  KEY `ORDER_CODE` (`ORDER_CODE`),
  KEY `ORDER_ID` (`ORDER_ID`),
  KEY `ITEM_CODE` (`ITEM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
