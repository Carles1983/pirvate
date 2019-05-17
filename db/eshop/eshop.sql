/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log : Database - eshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eshop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `eshop`;

/*Table structure for table `agent_quote` */

DROP TABLE IF EXISTS `agent_quote`;

CREATE TABLE `agent_quote` (
  `AGENT_QUOTE_ID` decimal(12,0) NOT NULL,
  `CART_ID` decimal(12,0) DEFAULT NULL,
  `RECEIVE_EMAIL` varchar(256) DEFAULT NULL COMMENT '用于提醒和授权',
  `RECEIVE_PHONE_NUMBER` varchar(32) DEFAULT NULL,
  `RECEIVE_NAME` varchar(128) DEFAULT NULL,
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
  `ORDER_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_STAFF_ID` varchar(32) DEFAULT NULL COMMENT '创建员工编码',
  `CUSTOMER_CODE` varchar(32) DEFAULT NULL COMMENT '客户编码',
  `RSRV_STR1` varchar(200) DEFAULT NULL,
  `RSRV_STR2` varchar(200) DEFAULT NULL,
  `RSRV_STR3` varchar(500) DEFAULT NULL,
  `RSRV_STR4` varchar(500) DEFAULT NULL,
  `RSRV_STR5` varchar(2000) DEFAULT NULL,
  `CREATE_ORG` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`AGENT_QUOTE_ID`),
  KEY `CART_ID` (`CART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

/*Table structure for table `dsl_pre_validation` */

DROP TABLE IF EXISTS `dsl_pre_validation`;

CREATE TABLE `dsl_pre_validation` (
  `VALIDATION_ID` decimal(12,0) NOT NULL,
  `CART_ITEM_ID` decimal(12,0) DEFAULT NULL,
  `CRM_ORDER_CODE` varchar(32) DEFAULT NULL COMMENT 'CRM域校验订单号',
  `ORDER_CODE` varchar(32) DEFAULT NULL COMMENT '随机生成的OSE订单编码',
  `VALIDATION_MSG` text,
  `REQUEST_COUNT` decimal(4,0) DEFAULT NULL,
  `VALIDATION_RESULT` varchar(32) DEFAULT NULL,
  `VALIDATION_INFO` varchar(256) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`VALIDATION_ID`),
  KEY `CRM_ORDER_CODE` (`CRM_ORDER_CODE`),
  KEY `CART_ITEM_ID` (`CART_ITEM_ID`),
  KEY `ORDER_CODE` (`ORDER_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `fee_type` */

DROP TABLE IF EXISTS `fee_type`;

CREATE TABLE `fee_type` (
  `FEE_TYPE_ID` decimal(8,0) NOT NULL,
  `FEE_TYPE_CODE` varchar(32) NOT NULL COMMENT '同外围系统映射',
  `NAME` varchar(128) DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`FEE_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1 一次性费用\r\n2 周期费';

/*Table structure for table `intf_data` */

DROP TABLE IF EXISTS `intf_data`;

CREATE TABLE `intf_data` (
  `INTF_ORDER_ID` decimal(12,0) NOT NULL,
  `ORDER_CODE` varchar(20) DEFAULT NULL,
  `ORDER_TYPE` varchar(10) DEFAULT NULL COMMENT '1:SAP预占数据',
  `REQUEST_DATA` mediumtext,
  `RESPOND_DATA` mediumtext,
  `STATE` varchar(8) DEFAULT NULL COMMENT 'S:success              I: inProgress              N:Test fail, means no co infos.              R:address is not correct,including has address list or not              ',
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
  PRIMARY KEY (`INTF_ORDER_ID`),
  KEY `ORDER_CODE_ORDER_TYPE` (`ORDER_CODE`,`ORDER_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `order_char` */

DROP TABLE IF EXISTS `order_char`;

CREATE TABLE `order_char` (
  `ORDER_CHAR_ID` decimal(12,0) NOT NULL,
  `ORDER_ID` decimal(12,0) DEFAULT NULL,
  `CHAR_SPEC_ID` decimal(8,0) DEFAULT NULL,
  `CHAR_SPEC_CODE` varchar(32) NOT NULL,
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
  PRIMARY KEY (`ORDER_CHAR_ID`),
  KEY `ORDER_ID` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `order_delivery` */

DROP TABLE IF EXISTS `order_delivery`;

CREATE TABLE `order_delivery` (
  `DELIVERY_ID` decimal(12,0) NOT NULL,
  `DELIVERY_TYPE_ID` decimal(4,0) DEFAULT NULL COMMENT '1 邮寄方式\r\n 2 自提方式',
  `STORE_CODE` varchar(32) DEFAULT NULL,
  `ORDER_ID` decimal(12,0) DEFAULT NULL,
  `ADDRESS_ID` decimal(12,0) DEFAULT NULL COMMENT '自提地址或邮寄地址(标准地址标识,来源于CRM)',
  `COUNTY` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `CITY` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `STREET_NAME` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `HOUSE_LETTER` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `HOUSE_NUMBER` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `APARTMENT` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `FLOOR` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `DOOR_NUMBER` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `MAIN_DOOR` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `EMAIL` varchar(256) DEFAULT NULL,
  `ZIP_CODE` varchar(8) DEFAULT NULL,
  `FIRST_NAME` varchar(80) DEFAULT NULL,
  `LAST_NAME` varchar(64) DEFAULT NULL,
  `CONTACT_MAN` varchar(128) DEFAULT NULL COMMENT '自提或邮寄都为客户联系人',
  `CONTACT_PHONE` varchar(32) DEFAULT NULL COMMENT '自提或邮寄都为客户联系人电话',
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
  `DELIVERY_OBJECT` varchar(20) DEFAULT NULL,
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
  KEY `ORDER_ID` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `order_error` */

DROP TABLE IF EXISTS `order_error`;

CREATE TABLE `order_error` (
  `ERROR_ID` decimal(12,0) NOT NULL,
  `ORDER_ID` decimal(12,0) NOT NULL,
  `SUBSCRIBER_ORDER_ID` decimal(12,0) DEFAULT NULL,
  `ERROR_DATE` datetime NOT NULL,
  `ERROR` text NOT NULL,
  PRIMARY KEY (`ERROR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `order_fee_paymoney` */

DROP TABLE IF EXISTS `order_fee_paymoney`;

CREATE TABLE `order_fee_paymoney` (
  `ORDER_FEE_PAY_ID` decimal(12,0) NOT NULL,
  `ORDER_ID` decimal(12,0) NOT NULL,
  `AMOUNT` decimal(12,0) NOT NULL,
  `PAYMODE` varchar(8) DEFAULT NULL,
  `TRANS_ID` varchar(100) NOT NULL,
  `STATE` varchar(8) NOT NULL COMMENT '1 待付款\r  2 在线支付申请\r  3 预授权\r  4 已付款\r  9 取消',
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
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`ORDER_FEE_PAY_ID`),
  KEY `TRANS_ID` (`TRANS_ID`)
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

/*Table structure for table `order_payment_bill` */

DROP TABLE IF EXISTS `order_payment_bill`;

CREATE TABLE `order_payment_bill` (
  `PAYMENT_BILL_ID` decimal(12,0) NOT NULL,
  `BILL_CODE` varchar(32) NOT NULL,
  `ACCOUNT_ID` varchar(32) NOT NULL,
  `BILLING_CYCLE_ID` varchar(32) NOT NULL,
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
  `SUBSCRIBER_ORDER_ID` decimal(12,0) NOT NULL COMMENT '订户订单号',
  `INVOICE_NO` varchar(50) DEFAULT NULL COMMENT '发票号',
  PRIMARY KEY (`PAYMENT_BILL_ID`),
  KEY `SUBSCRIBER_ORDER_ID` (`SUBSCRIBER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `order_pos_offline` */

DROP TABLE IF EXISTS `order_pos_offline`;

CREATE TABLE `order_pos_offline` (
  `ORDER_POS_ID` decimal(12,0) NOT NULL,
  `ORDER_CODE` varchar(64) NOT NULL,
  `ORDER_ID` decimal(12,0) DEFAULT NULL,
  `REGISTER_ID` varchar(64) NOT NULL,
  `EMAIL` varchar(64) DEFAULT NULL,
  `CUSTOMER_ID` decimal(16,0) DEFAULT NULL,
  `MEASURE_ID` decimal(8,0) NOT NULL,
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
  PRIMARY KEY (`ORDER_POS_ID`),
  KEY `ORDER_CODE` (`ORDER_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `order_pos_sub_item` */

DROP TABLE IF EXISTS `order_pos_sub_item`;

CREATE TABLE `order_pos_sub_item` (
  `ORDER_POS_ITEM_ID` decimal(12,0) NOT NULL,
  `ORDER_POS_ID` decimal(12,0) NOT NULL,
  `OFFER_CODE` varchar(32) NOT NULL,
  `OFFER_ID` decimal(12,0) NOT NULL,
  `AMOUNT` decimal(12,0) NOT NULL,
  `DISCOUNT` decimal(12,0) NOT NULL,
  `TAX` decimal(12,0) NOT NULL,
  `STOCK_ID` varchar(20) NOT NULL,
  `IMEI` varchar(64) DEFAULT NULL,
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
  PRIMARY KEY (`ORDER_POS_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `order_sap_fail` */

DROP TABLE IF EXISTS `order_sap_fail`;

CREATE TABLE `order_sap_fail` (
  `ID` decimal(12,0) NOT NULL,
  `SAP_ID` varchar(32) NOT NULL,
  `OP_TYPE` varchar(20) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `CLASS_METHOD` varchar(100) DEFAULT NULL,
  `REQUEST` text,
  `RESPONSE` text,
  `RESP_CODE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='处理sap失败订单';

/*Table structure for table `order_state_flow` */

DROP TABLE IF EXISTS `order_state_flow`;

CREATE TABLE `order_state_flow` (
  `ORDER_TYPE` varchar(32) NOT NULL,
  `CHANNEL_ID` varchar(32) NOT NULL,
  `PROCESS` varchar(64) NOT NULL,
  `PRE_PROCESS` varchar(20) DEFAULT NULL,
  `NEXT_PROCESS` varchar(20) DEFAULT NULL,
  `DEAL_CLASS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ORDER_TYPE`,`CHANNEL_ID`,`PROCESS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ose_customer_events` */

DROP TABLE IF EXISTS `ose_customer_events`;

CREATE TABLE `ose_customer_events` (
  `event_id` varchar(30) NOT NULL,
  `event_time` timestamp NOT NULL,
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

/*Table structure for table `payment_method_bak` */

DROP TABLE IF EXISTS `payment_method_bak`;

CREATE TABLE `payment_method_bak` (
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
  `SUBSSYS_CODE` varchar(20) DEFAULT NULL COMMENT '子系统编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `poa` */

DROP TABLE IF EXISTS `poa`;

CREATE TABLE `poa` (
  `POA_ID` decimal(12,0) NOT NULL,
  `SUBS_ORDER_ITEM_ID` decimal(12,0) DEFAULT NULL,
  `CURRENT_OPERATOR` varchar(32) DEFAULT NULL COMMENT '号码携出方运营商名称',
  `CUSTOMER_NUmber` varchar(32) DEFAULT NULL COMMENT '携出方客户编码',
  `ACCOUNT_ID` varchar(32) DEFAULT NULL COMMENT '携出方账户编码',
  `PHONE_NUMBER` varchar(32) NOT NULL COMMENT '携出方手机号码',
  `ICC_ID` varchar(32) DEFAULT NULL COMMENT 'SIM卡号',
  `NAME` varchar(128) DEFAULT NULL,
  `CPR_NUMBER` varchar(32) DEFAULT NULL,
  `ADDRESS` varchar(512) DEFAULT NULL,
  `POST_CODE` varchar(8) DEFAULT NULL,
  `EMAIL` varchar(256) DEFAULT NULL,
  `PORTING_DATE` varchar(32) DEFAULT NULL COMMENT 'ASAP/contractEnds/20141121',
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) NOT NULL,
  `CREATE_ORG_ID` decimal(12,0) NOT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `CITY` varchar(64) DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`POA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户做NP业务时候，需要提供委托书信息';

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

/*Table structure for table `rb_district` */

DROP TABLE IF EXISTS `rb_district`;

CREATE TABLE `rb_district` (
  `DISTRICT_ID` decimal(12,0) NOT NULL,
  `DISTRICT_NAME` varchar(128) NOT NULL,
  `DISTRICT_TYPE` varchar(8) DEFAULT NULL,
  `PARENT_DISTRICT_ID` decimal(12,0) DEFAULT NULL,
  `POST_CODE` varchar(8) DEFAULT NULL,
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
  PRIMARY KEY (`DISTRICT_ID`),
  KEY `DIStrict_name` (`DISTRICT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `rb_entity_role` */

DROP TABLE IF EXISTS `rb_entity_role`;

CREATE TABLE `rb_entity_role` (
  `ENTITY_ROLE_ID` decimal(13,0) DEFAULT NULL,
  `ROLE_TYPE` varchar(30) DEFAULT NULL,
  `ROLE_NAME` varchar(384) DEFAULT NULL,
  `ROLE_ID` varchar(96) DEFAULT NULL,
  `ENTITY_TYPE` varchar(30) DEFAULT NULL,
  `SEGMENT` varchar(6) DEFAULT NULL,
  `LOGIN_TYPE` varchar(6) DEFAULT NULL,
  `CUST_STATUS` varchar(6) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `TENANT_ID` varchar(24) DEFAULT NULL,
  `STATE` varchar(24) DEFAULT NULL,
  `CREATE_OP_ID` decimal(13,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(13,0) DEFAULT NULL,
  `OP_ID` decimal(13,0) DEFAULT NULL,
  `ORG_ID` decimal(13,0) DEFAULT NULL,
  `DONE_CODE` decimal(13,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(1536) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `rb_exception_mapping` */

DROP TABLE IF EXISTS `rb_exception_mapping`;

CREATE TABLE `rb_exception_mapping` (
  `exception_id` decimal(12,0) NOT NULL,
  `uip_code` varchar(32) DEFAULT NULL COMMENT 'uip异常码',
  `ose_code` varchar(128) DEFAULT NULL COMMENT 'ose异常码',
  `message` varchar(64) DEFAULT NULL COMMENT '异常消息',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `rb_measure` */

DROP TABLE IF EXISTS `rb_measure`;

CREATE TABLE `rb_measure` (
  `MEASURE_ID` decimal(9,0) NOT NULL,
  `MEASURE_TYPE_ID` varchar(8) NOT NULL,
  `NAME` varchar(128) NOT NULL,
  `MEASURE_LEVEL` decimal(2,0) DEFAULT '0',
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `PRECISION_FLAG` decimal(1,0) NOT NULL DEFAULT '0',
  `IS_DISPLAY` decimal(1,0) NOT NULL DEFAULT '0',
  `TENANT_ID` varchar(8) DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`MEASURE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `rb_message_replace` */

DROP TABLE IF EXISTS `rb_message_replace`;

CREATE TABLE `rb_message_replace` (
  `REPLACE_ID` decimal(16,0) NOT NULL,
  `INTERFACE_ID` decimal(16,0) NOT NULL,
  `INTERFACE_NAME` varchar(100) NOT NULL,
  `INTERFACE_TYPE` varchar(16) NOT NULL DEFAULT 'SOA' COMMENT 'SOA接口的报文：SOA，OSE接口的报文：OSE',
  `MESSAGE_TYPE` varchar(16) NOT NULL DEFAULT 'REQ' COMMENT '请求报文：REQ，应答报文：RSP',
  `ELEMENT_NAME` varchar(32) NOT NULL,
  `REPLACE_RULE` varchar(32) NOT NULL DEFAULT '******',
  `RSRV_STR1` varchar(16) DEFAULT NULL,
  `RSRV_STR2` varchar(16) DEFAULT NULL,
  `REMARK` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`REPLACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报文敏感化处理配置表';

/*Table structure for table `rb_oper_cust_acc_rel` */

DROP TABLE IF EXISTS `rb_oper_cust_acc_rel`;

CREATE TABLE `rb_oper_cust_acc_rel` (
  `OPERATOR_ID` decimal(15,0) NOT NULL,
  `CUSTOMER_ID` decimal(15,0) NOT NULL,
  `ACCOUNT_ID` decimal(15,0) NOT NULL DEFAULT '-1',
  `RELATION_TYPE` int(2) NOT NULL,
  `ROLE_TYPE` varchar(128) DEFAULT NULL,
  `OPERATOR` varchar(128) DEFAULT NULL,
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`OPERATOR_ID`,`CUSTOMER_ID`,`ACCOUNT_ID`,`RELATION_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `rb_operator` */

DROP TABLE IF EXISTS `rb_operator`;

CREATE TABLE `rb_operator` (
  `OPERATOR_ID` char(10) NOT NULL,
  `OPERATOR_NAME` varchar(128) NOT NULL,
  `OPERATOR_CODE` varchar(32) NOT NULL,
  `SIGN_FLAG` varchar(8) DEFAULT NULL COMMENT '1 signed with Telenor for NP service   0 unsign with Telenor for NP service',
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
  `REMARKS` text,
  `CUST_ID_VALIDATION_REGEX` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`OPERATOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `rb_operator_product_rela` */

DROP TABLE IF EXISTS `rb_operator_product_rela`;

CREATE TABLE `rb_operator_product_rela` (
  `RELA_ID` char(10) NOT NULL,
  `OPERATOR_ID` char(10) NOT NULL,
  `PRODUCT_NAME` varchar(128) NOT NULL COMMENT '如DSL、VOIP',
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
  `REMARKS` text,
  PRIMARY KEY (`RELA_ID`),
  KEY `PRODUCT_NAME` (`PRODUCT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `rb_static_data` */

DROP TABLE IF EXISTS `rb_static_data`;

CREATE TABLE `rb_static_data` (
  `DATA_ID` decimal(12,0) NOT NULL,
  `DATA_TYPE` varchar(64) DEFAULT NULL,
  `DATA_VALUE` varchar(128) DEFAULT NULL,
  `DATA_NAME` varchar(128) DEFAULT NULL,
  `DATA_DESC` varchar(512) DEFAULT NULL,
  `PRIORITY` decimal(12,0) NOT NULL,
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
  `LANGUAGE_CODE` varchar(20) NOT NULL DEFAULT 'en_GB',
  PRIMARY KEY (`DATA_ID`),
  KEY `DATA_TYPE` (`DATA_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

/*Table structure for table `shopping_cart_delivery_bak` */

DROP TABLE IF EXISTS `shopping_cart_delivery_bak`;

CREATE TABLE `shopping_cart_delivery_bak` (
  `DELIVERY_ID` decimal(12,0) NOT NULL,
  `DELIVERY_TYPE_ID` decimal(4,0) DEFAULT NULL COMMENT '1 邮寄方式\r\n 2 自提方式',
  `DELIVERY_OBJECT` varchar(8) DEFAULT NULL COMMENT '1 Product 2 Bill sheet',
  `CART_ID` decimal(12,0) DEFAULT NULL,
  `ADDRESS_ID` decimal(12,0) DEFAULT NULL COMMENT '自提地址或邮寄地址(标准地址标识,来源于CRM)',
  `COUNTY` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `CITY` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
  `STREET_NAME` varchar(32) DEFAULT NULL COMMENT '标准地址标识的实例化信息',
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
  `RSRV_STR10` varchar(1024) DEFAULT NULL
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

/*Table structure for table `shopping_cart_discount` */

DROP TABLE IF EXISTS `shopping_cart_discount`;

CREATE TABLE `shopping_cart_discount` (
  `DISCOUNT_ID` decimal(12,0) NOT NULL,
  `CART_ID` decimal(12,0) NOT NULL,
  `DISCOUNT_TYPE` varchar(8) DEFAULT NULL COMMENT '1 按比率折扣，比如90则是9折扣\n            2 按固定金额折扣',
  `DISCOUNT_SIZE` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) NOT NULL,
  `CREATE_ORG_ID` decimal(12,0) NOT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `PRICE_ID` decimal(12,0) DEFAULT NULL,
  PRIMARY KEY (`DISCOUNT_ID`),
  KEY `CART_ID` (`CART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `shopping_cart_discount_rela` */

DROP TABLE IF EXISTS `shopping_cart_discount_rela`;

CREATE TABLE `shopping_cart_discount_rela` (
  `RELA_ID` decimal(12,0) NOT NULL,
  `CART_ITEM_ID` decimal(12,0) NOT NULL,
  `DISCOUNT_ID` decimal(12,0) NOT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) NOT NULL,
  `CREATE_ORG_ID` decimal(12,0) NOT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`,`DISCOUNT_ID`)
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

/*Table structure for table `soa_mock_config` */

DROP TABLE IF EXISTS `soa_mock_config`;

CREATE TABLE `soa_mock_config` (
  `ATOMIC_ID` decimal(11,0) NOT NULL COMMENT '能力编码',
  `MOCK_RSP` mediumtext,
  `PRIORITY` decimal(4,0) NOT NULL DEFAULT '0' COMMENT '优先级',
  `VERSION` decimal(4,0) NOT NULL DEFAULT '0' COMMENT '版本号',
  `AVAILABLE` char(1) DEFAULT NULL COMMENT '是否可用:Y-可用,N-不可用',
  `RESERVE1` varchar(300) NOT NULL COMMENT '备用字段1',
  `RESERVE2` varchar(30) DEFAULT NULL COMMENT '备用字段2',
  PRIMARY KEY (`ATOMIC_ID`,`RESERVE1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SoaMock配置表,对外输出配置的模拟数据';

/*Table structure for table `store` */

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `STORE_ID` decimal(12,0) NOT NULL,
  `CHANNEL_CODE` varchar(50) NOT NULL COMMENT '代理商编码',
  `CHANNEL_ID` bigint(20) NOT NULL COMMENT '代理商编号',
  `CHANNEL_NAME` varchar(128) NOT NULL COMMENT '代理商名称',
  `CHANNEL_SHORT_NAME` varchar(128) DEFAULT NULL COMMENT '代理商简称',
  `SFF_ADDRESS_ID` varchar(20) NOT NULL COMMENT 'SFF_ADDRESS_ID',
  `WEBSITE_ADDRESS` varchar(200) DEFAULT NULL COMMENT '网站地址',
  `OFFICIAL_EMAIL_ADDRESS` varchar(200) NOT NULL COMMENT '办公室邮件地址',
  `COMPANY_REGISTRATION_NUMBER` varchar(20) DEFAULT NULL COMMENT '公司注册号码',
  `FIX_PHONE_NUMBER` varchar(20) DEFAULT NULL COMMENT 'FIX_PHONE_NUMBER',
  `CELL_PHONE_NUMBER` varchar(20) DEFAULT NULL COMMENT 'CELL_PHONE_NUMBER',
  `FAX_NUMBER` varchar(20) DEFAULT NULL COMMENT 'FAX_NUMBER',
  `START_BUSINESS_TIME` varchar(20) DEFAULT NULL COMMENT 'START_BUSINESS_TIME',
  `DAY_OPEN_BUSINESS_TIME` varchar(200) DEFAULT NULL COMMENT 'DAY_OPEN_BUSINESS',
  `DAY_CLOSE_BUSINESS_TIME` varchar(200) DEFAULT NULL COMMENT 'DAY_CLOSE_BUSINESS_TIME',
  `AREA_MANAGER_PHONE_NUMBER` varchar(20) DEFAULT NULL COMMENT '区域经理电话',
  `AREA_MANAGER_EMAIL_ADDRESS` varchar(100) DEFAULT NULL COMMENT '区域经理邮箱',
  `LONGITUDE` varchar(50) DEFAULT NULL COMMENT '经度',
  `LATITUDE` varchar(50) DEFAULT NULL COMMENT '纬度',
  `STORE_AREA` varchar(20) DEFAULT NULL COMMENT '店面面积',
  `EXT_CODE` varchar(20) DEFAULT NULL COMMENT '存储SAP传递的ID',
  `COUNTRY` varchar(32) DEFAULT NULL COMMENT '标准地址信息',
  `COUNTY` varchar(32) DEFAULT NULL COMMENT '标准地址信息',
  `CITY` varchar(32) DEFAULT NULL COMMENT '标准地址信息',
  `STREET_NAME` varchar(32) DEFAULT NULL COMMENT '标准地址信息',
  `HOUSE_LETTER` varchar(32) DEFAULT NULL COMMENT '标准地址信息',
  `HOUSE_NUMBER` varchar(32) DEFAULT NULL COMMENT '标准地址信息',
  `APARTMENT` varchar(32) DEFAULT NULL COMMENT '标准地址信息',
  `FLOOR` varchar(32) DEFAULT NULL COMMENT '标准地址信息',
  `DOOR_NUMBER` varchar(32) DEFAULT NULL COMMENT '标准地址信息',
  `MAIN_DOOR` varchar(32) DEFAULT NULL COMMENT '标准地址信息',
  `EMAIL` varchar(256) DEFAULT NULL,
  `MUNICIPALITY` varchar(32) DEFAULT NULL,
  `ADDR_DESC` varchar(500) DEFAULT NULL,
  `DISTRICT_ID` varchar(32) DEFAULT NULL,
  `ZIP_CODE` varchar(8) DEFAULT NULL,
  `ADDRESS_TYPE` varchar(20) DEFAULT NULL,
  `DONE_CODE` varchar(50) DEFAULT NULL COMMENT '业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '业务受理时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `OP_ID` bigint(20) DEFAULT NULL COMMENT '操作员ID',
  `ORG_ID` bigint(20) DEFAULT NULL COMMENT '操作员组织ID',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `TENANT_ID` varchar(10) NOT NULL COMMENT '租户',
  `STATE` varchar(3) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '描述',
  `PARENT_CHANNEL_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`STORE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `subs_order_char` */

DROP TABLE IF EXISTS `subs_order_char`;

CREATE TABLE `subs_order_char` (
  `SUBS_ORDER_CHAR_ID` decimal(12,0) NOT NULL,
  `SUBSCRIBER_ORDER_ID` decimal(12,0) NOT NULL,
  `CHAR_SPEC_CODE` varchar(32) NOT NULL,
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
  PRIMARY KEY (`SUBS_ORDER_CHAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `subs_order_fee` */

DROP TABLE IF EXISTS `subs_order_fee`;

CREATE TABLE `subs_order_fee` (
  `SUBS_ORDER_FEE_ID` decimal(12,0) NOT NULL,
  `SUBS_ORDER_ID` decimal(12,0) DEFAULT NULL,
  `PRICE_NAME` varchar(256) DEFAULT NULL,
  `PRICE_CODE` varchar(32) DEFAULT NULL,
  `PRICE_ITEM_CODE` varchar(32) DEFAULT NULL,
  `PRICE_PLAN_ID` varchar(32) DEFAULT NULL,
  `TAX` decimal(12,0) DEFAULT NULL,
  `AMOUNT` decimal(12,0) DEFAULT NULL,
  `DISCOUNT_AMOUNT` decimal(12,0) DEFAULT NULL,
  `PUT_INVOICE` varchar(8) DEFAULT NULL COMMENT '1 是(下期账单收)              2 否(当时收)              3 现金缴费',
  `STATE` varchar(8) DEFAULT NULL COMMENT '订单处理过程中，记录订单状态              10 订单配货等待(PreOrder or BackOrder)              11 订单提交CRM              12 订单已支付              13 订单完成              99 订单取消              ',
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
  `ORDER_ID` decimal(12,0) DEFAULT NULL COMMENT '订单标识',
  `MEASURE_ID` decimal(12,0) DEFAULT NULL,
  `ALLOWANCE` decimal(12,0) DEFAULT NULL COMMENT '津贴',
  `PRICE_DETAIL_TYPE` varchar(256) DEFAULT NULL COMMENT '价格类型描述',
  `EDIT_TYPE` varchar(20) DEFAULT NULL COMMENT '是否可减免',
  `OFFER_CODE` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `FEE_TYPE` char(1) DEFAULT '0',
  PRIMARY KEY (`SUBS_ORDER_FEE_ID`),
  KEY `SUBS_ORDER_ID` (`SUBS_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `subs_order_instalment` */

DROP TABLE IF EXISTS `subs_order_instalment`;

CREATE TABLE `subs_order_instalment` (
  `SUBS_ORDER_INSTALMENT_ID` decimal(12,0) NOT NULL,
  `SUBS_ORDER_ID` decimal(12,0) DEFAULT NULL,
  `ORDER_ID` decimal(12,0) DEFAULT NULL,
  `OFFER_CODE` varchar(32) DEFAULT NULL,
  `INSTAL_TYPE` varchar(4) NOT NULL COMMENT '分期类型1、 订购分期 2、 账单分期 3、 第三方分期',
  `INSTAL_AMOUNT` decimal(12,0) DEFAULT NULL,
  `CYCLE_TYPE` decimal(4,0) DEFAULT NULL,
  `CYCLE_AMOUNT` decimal(12,0) DEFAULT NULL,
  `ROUNDING_TYPE` varchar(4) DEFAULT NULL COMMENT '分期后多余的费用放置的期数 1、首期 2、末期',
  `HANDLING_CHARGE` decimal(12,0) DEFAULT NULL,
  `CHARGE_TYPE` varchar(4) DEFAULT NULL COMMENT '手续费类型1、 固定金额首期 2、 固定金额每期 3、 百分比首期 4、 百分比每期',
  `IMEIS` varchar(50) DEFAULT NULL,
  `RESOURCE_ID` varchar(50) DEFAULT NULL,
  `NEED_LETTER` varchar(4) DEFAULT NULL COMMENT '0 普通一次费用,1 押金',
  `TAX` decimal(12,0) DEFAULT NULL,
  `MEASURE_ID` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL COMMENT '订单处理过程中，记录订单状态              10 订单配货等待(PreOrder or BackOrder)              11 订单提交CRM              12 订单已支付              13 订单完成              99 订单取消              ',
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
  PRIMARY KEY (`SUBS_ORDER_INSTALMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `subs_order_item` */

DROP TABLE IF EXISTS `subs_order_item`;

CREATE TABLE `subs_order_item` (
  `SUBS_ORDER_ITEM_ID` decimal(12,0) NOT NULL,
  `SUBSCRIBER_ORDER_ID` decimal(12,0) NOT NULL,
  `PROD_OFFERING_ID` decimal(20,0) NOT NULL,
  `TOTAL_AMOUNT` decimal(12,0) NOT NULL DEFAULT '0',
  `DISCOUNT_AMOUNT` decimal(12,0) NOT NULL DEFAULT '0',
  `QUANTITY` decimal(4,0) DEFAULT NULL COMMENT '保留',
  `STATE` varchar(8) DEFAULT NULL COMMENT '保留',
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
  `SAP_ORDER_ID` varchar(32) DEFAULT NULL,
  `OPER_TYPE` varchar(4) DEFAULT NULL,
  `EFFECTIVE_TYPE` varchar(4) DEFAULT NULL,
  `SAP_ID` varchar(32) DEFAULT NULL,
  `SEQ_NO` decimal(2,0) DEFAULT NULL COMMENT 'family offer 序号',
  `ALLOWANCE` decimal(12,0) DEFAULT NULL COMMENT '津贴',
  PRIMARY KEY (`SUBS_ORDER_ITEM_ID`),
  KEY `SUBSCRIBER_ORDER_ID` (`SUBSCRIBER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `subs_order_item_char` */

DROP TABLE IF EXISTS `subs_order_item_char`;

CREATE TABLE `subs_order_item_char` (
  `SUBS_ORDER_ITEM_CHAR_ID` decimal(12,0) NOT NULL,
  `SUBS_ORDER_ITEM_ID` decimal(12,0) NOT NULL,
  `CHAR_SPEC_ID` decimal(8,0) DEFAULT NULL,
  `CHAR_SPEC_CODE` varchar(32) NOT NULL,
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
  PRIMARY KEY (`SUBS_ORDER_ITEM_CHAR_ID`),
  KEY `SUBS_ORDER_ITEM_ID` (`SUBS_ORDER_ITEM_ID`),
  KEY `CHAR_SPEC_CODE` (`CHAR_SPEC_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `subs_order_repair` */

DROP TABLE IF EXISTS `subs_order_repair`;

CREATE TABLE `subs_order_repair` (
  `SUBS_ORDER_REPAIR_ID` decimal(12,0) NOT NULL,
  `SUBSCRIBER_ORDER_ID` decimal(12,0) DEFAULT NULL,
  `TICKET_NUMBER` varchar(30) DEFAULT NULL,
  `SAP_ORDER` varchar(30) DEFAULT NULL,
  `SERIAL_NO` varchar(30) DEFAULT NULL,
  `LOANPHONE_SERIAL_NO` varchar(30) DEFAULT NULL,
  `NOTIFY_TYPE` varchar(4) DEFAULT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `ZIP_CODE` varchar(20) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  `STREET_NAME` varchar(50) DEFAULT NULL,
  `HOUSE_NUMBER` varchar(32) DEFAULT NULL,
  `FLOOR` varchar(20) DEFAULT NULL,
  `DOOR` varchar(20) DEFAULT NULL,
  `MOBILE_PHONE` varchar(20) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '1:created              2:repairing              3:repaired              4:close              ',
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
  `LOAN_SAP_ORDER` varchar(30) DEFAULT NULL COMMENT 'loanphone  sap维修单号',
  `SERIAL_NO_NEW` varchar(30) DEFAULT NULL COMMENT '新设备串号',
  PRIMARY KEY (`SUBS_ORDER_REPAIR_ID`)
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

/*Table structure for table `td_m_ability_def` */

DROP TABLE IF EXISTS `td_m_ability_def`;

CREATE TABLE `td_m_ability_def` (
  `ABILITY_ID` decimal(16,0) NOT NULL,
  `ABILITY_TYPE` varchar(2) DEFAULT NULL,
  `ABILITY_NAME` varchar(100) NOT NULL,
  `COMP` char(1) NOT NULL COMMENT '是否包括多个原子服务',
  `DESCRIPTION` varchar(1000) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `SERVICE_URL` varchar(300) DEFAULT NULL,
  `PARENT_ABILITY_ID` varchar(20) DEFAULT NULL,
  `SERVICE_TYPE` varchar(10) DEFAULT NULL,
  `ABILITY_LEVEL` varchar(10) NOT NULL DEFAULT '' COMMENT '权限级别',
  `REMARK` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ABILITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `td_m_privilege` */

DROP TABLE IF EXISTS `td_m_privilege`;

CREATE TABLE `td_m_privilege` (
  `PRIVILEGE_ID` decimal(16,0) NOT NULL COMMENT '权限ID',
  `PRIVILEGE_NAME` varchar(255) NOT NULL COMMENT '权限名称',
  `PRIVILEGE_URL` varchar(300) NOT NULL COMMENT '权限被拦截的URL',
  `PRIVILEGE_TYPE` varchar(30) NOT NULL COMMENT '参考 TD_S_RESTYPE 定义',
  `REMARK` varchar(255) NOT NULL COMMENT '说明',
  `RES_ID` decimal(16,0) NOT NULL,
  PRIMARY KEY (`PRIVILEGE_ID`,`RES_ID`,`PRIVILEGE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限定义表';

/*Table structure for table `td_s_docking_system` */

DROP TABLE IF EXISTS `td_s_docking_system`;

CREATE TABLE `td_s_docking_system` (
  `ATOMIC_ID` decimal(16,0) NOT NULL,
  `ATOMIC_NAME` varchar(100) DEFAULT NULL,
  `DstOrgID` varchar(16) DEFAULT NULL,
  `DstOrgName` varchar(32) DEFAULT NULL,
  `SrcOrgName` varchar(32) DEFAULT NULL,
  `SrcOrgId` varchar(16) DEFAULT NULL,
  `app_key` varchar(256) DEFAULT NULL,
  `service_address` varchar(256) DEFAULT NULL,
  `name_space` varchar(128) DEFAULT NULL,
  `pre_fix` varchar(16) DEFAULT NULL,
  `method_name` varchar(64) DEFAULT NULL,
  `req_convert_id` int(11) DEFAULT NULL,
  `rsp_convert_id` int(11) DEFAULT NULL,
  `target_system` varchar(30) DEFAULT NULL,
  `target_system_operation` varchar(50) DEFAULT NULL COMMENT '目标系统方法名',
  `log_type` varchar(50) DEFAULT NULL COMMENT 'ability_log中是否记录反馈报文：NULL不记录正常报文；数字为记录正常报文的最大长度',
  PRIMARY KEY (`ATOMIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `temp_perf_1` */

DROP TABLE IF EXISTS `temp_perf_1`;

CREATE TABLE `temp_perf_1` (
  `cust_orderID` bigint(14) NOT NULL,
  `custId` bigint(14) DEFAULT NULL,
  `ossresultDate` datetime DEFAULT NULL,
  `flag` bigint(14) DEFAULT NULL,
  `state` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`cust_orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `temp_perf_2` */

DROP TABLE IF EXISTS `temp_perf_2`;

CREATE TABLE `temp_perf_2` (
  `cust_orderID` bigint(14) NOT NULL,
  `custId` bigint(14) DEFAULT NULL,
  `ossresultDate` datetime DEFAULT NULL,
  `flag` bigint(14) DEFAULT NULL,
  `state` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`cust_orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ti_o_sms` */

DROP TABLE IF EXISTS `ti_o_sms`;

CREATE TABLE `ti_o_sms` (
  `SMS_NOTICE_ID` char(16) DEFAULT NULL,
  `EPARCHY_CODE` char(4) DEFAULT NULL,
  `IN_MODE_CODE` char(1) DEFAULT NULL,
  `SMS_CHANNEL_CODE` char(2) DEFAULT NULL,
  `SEND_OBJECT_CODE` char(4) DEFAULT NULL,
  `SEND_TIME_CODE` char(4) DEFAULT NULL,
  `SEND_COUNT_CODE` char(4) DEFAULT NULL,
  `RECV_OBJECT_TYPE` char(2) DEFAULT NULL,
  `RECV_OBJECT` varchar(128) DEFAULT NULL,
  `ID` char(16) DEFAULT NULL,
  `SMS_TYPE_CODE` char(2) DEFAULT NULL,
  `SMS_KIND_CODE` char(2) DEFAULT NULL,
  `NOTICE_CONTENT_TYPE` char(1) DEFAULT NULL,
  `NOTICE_CONTENT` varchar(600) DEFAULT NULL,
  `REFERED_COUNT` char(8) DEFAULT NULL,
  `FORCE_REFER_COUNT` char(8) DEFAULT NULL,
  `FORCE_OBJECT` varchar(20) DEFAULT NULL,
  `FORCE_START_TIME` datetime DEFAULT NULL,
  `FORCE_END_TIME` datetime DEFAULT NULL,
  `SMS_PRIORITY` char(4) DEFAULT NULL,
  `REFER_TIME` datetime DEFAULT NULL,
  `REFER_STAFF_ID` char(8) DEFAULT NULL,
  `REFER_DEPART_ID` char(5) DEFAULT NULL,
  `DEAL_TIME` datetime DEFAULT NULL,
  `DEAL_STAFFID` char(8) DEFAULT NULL,
  `DEAL_DEPARTID` char(5) DEFAULT NULL,
  `DEAL_STATE` char(1) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `REVC1` varchar(20) DEFAULT NULL,
  `REVC2` varchar(20) DEFAULT NULL,
  `REVC3` varchar(20) DEFAULT NULL,
  `REVC4` varchar(20) DEFAULT NULL,
  `MONTH` char(2) DEFAULT NULL,
  `SMS_SEND_OBJECT` varchar(20) DEFAULT NULL,
  KEY `RECV_OBJECT` (`RECV_OBJECT`),
  KEY `DEAL_TIME` (`DEAL_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `tl_m_ability_log` */

DROP TABLE IF EXISTS `tl_m_ability_log`;

CREATE TABLE `tl_m_ability_log` (
  `LOG_ID` varchar(30) NOT NULL,
  `TRADE_ID` varchar(30) NOT NULL,
  `ATOMIC_ID` decimal(11,0) DEFAULT NULL,
  `ATOMIC_NAME` varchar(100) DEFAULT NULL,
  `RESULTCODE` varchar(20) DEFAULT NULL,
  `RESULTINFO` varchar(4000) DEFAULT NULL,
  `MONTH` int(11) NOT NULL DEFAULT '0',
  `REQTS` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `RSPTS` decimal(11,0) DEFAULT NULL,
  `RSPMSG` mediumtext,
  `REQMSG` mediumtext,
  `MACHINE` varchar(256) DEFAULT NULL,
  `RESERVE1` varchar(2048) DEFAULT NULL,
  `RESERVE2` varchar(2048) DEFAULT NULL,
  `RESERVE3` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`,`MONTH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (MONTH)
(PARTITION p1 VALUES LESS THAN (2) ENGINE = MyISAM,
 PARTITION p2 VALUES LESS THAN (3) ENGINE = MyISAM,
 PARTITION p3 VALUES LESS THAN (4) ENGINE = MyISAM,
 PARTITION p4 VALUES LESS THAN (5) ENGINE = MyISAM,
 PARTITION p5 VALUES LESS THAN (6) ENGINE = MyISAM,
 PARTITION p6 VALUES LESS THAN (7) ENGINE = MyISAM,
 PARTITION p7 VALUES LESS THAN (8) ENGINE = MyISAM,
 PARTITION p8 VALUES LESS THAN (9) ENGINE = MyISAM,
 PARTITION p9 VALUES LESS THAN (10) ENGINE = MyISAM,
 PARTITION p10 VALUES LESS THAN (11) ENGINE = MyISAM,
 PARTITION p11 VALUES LESS THAN (12) ENGINE = MyISAM,
 PARTITION p12 VALUES LESS THAN MAXVALUE ENGINE = MyISAM) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
