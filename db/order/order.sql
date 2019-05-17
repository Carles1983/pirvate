/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log : Database - ord
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`order` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `order`;

/*Table structure for table `acct_user_agr_move` */

DROP TABLE IF EXISTS `acct_user_agr_move`;

CREATE TABLE `acct_user_agr_move` (
  `USERMOVEID` bigint(12) NOT NULL COMMENT '唯一记录ID',
  `CUST_ID` bigint(14) NOT NULL COMMENT '客户ID',
  `ACCT_ID` bigint(14) NOT NULL COMMENT '账户ID',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户ID',
  `NEWARG_ID` bigint(14) DEFAULT NULL COMMENT '新合同ID',
  `OLDARG_ID` bigint(14) DEFAULT NULL COMMENT '旧合同ID',
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMARK` varchar(2000) DEFAULT NULL COMMENT '描述',
  `STATE` int(3) DEFAULT NULL COMMENT '状态',
  `ISSAMEBATCH` varchar(100) DEFAULT NULL COMMENT '是否是同一批',
  `OWNERID` bigint(14) NOT NULL COMMENT '所属ID',
  `CIACCREL_OFFERINSTID` bigint(14) DEFAULT NULL COMMENT '账务关系用户OFFER实例ID',
  `CIACCREL_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '账务关系用户生效时间',
  `CIACCREL_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '账务关系用户失效时间',
  `EXT1` varchar(200) DEFAULT NULL COMMENT '备用字段1',
  `EXT2` varchar(200) DEFAULT NULL COMMENT '备用字段2',
  `EXT3` varchar(200) DEFAULT NULL COMMENT '备用字段3',
  `EXT4` varchar(200) DEFAULT NULL COMMENT '备用字段4',
  `INOUTAGRFLAG` int(3) DEFAULT NULL COMMENT '合同出入标识',
  PRIMARY KEY (`USERMOVEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `acct_user_agr_move_h` */

DROP TABLE IF EXISTS `acct_user_agr_move_h`;

CREATE TABLE `acct_user_agr_move_h` (
  `usermoveId` bigint(12) NOT NULL COMMENT '唯一记录id',
  `CUST_ID` bigint(14) NOT NULL COMMENT '客户ID',
  `ACCT_ID` bigint(14) NOT NULL COMMENT '账户ID',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户id',
  `NEWARG_ID` bigint(14) DEFAULT NULL COMMENT '新合同id',
  `OLDARG_ID` bigint(14) DEFAULT NULL COMMENT '旧合同id',
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMARK` varchar(2000) DEFAULT NULL COMMENT '描述',
  `STATE` int(3) DEFAULT NULL COMMENT '状态',
  `ISSAMEBATCH` varchar(100) DEFAULT NULL COMMENT '是否是同一批',
  `OWNERID` bigint(14) NOT NULL COMMENT '所属ID',
  `CIACCREL_OFFERINSTID` bigint(14) DEFAULT NULL COMMENT '账务关系用户offer实例ID',
  `CIACCREL_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '账务关系用户生效时间',
  `CIACCREL_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '账务关系用户失效时间',
  `EXT1` varchar(200) DEFAULT NULL COMMENT '备用字段1',
  `EXT2` varchar(200) DEFAULT NULL COMMENT '备用字段2',
  `EXT3` varchar(200) DEFAULT NULL COMMENT '备用字段3',
  `EXT4` varchar(200) DEFAULT NULL COMMENT '备用字段4',
  `INOUTAGRFLAG` int(3) DEFAULT NULL COMMENT '合同出入标识'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `appoint_order` */

DROP TABLE IF EXISTS `appoint_order`;

CREATE TABLE `appoint_order` (
  `APPOINT_ID` bigint(14) NOT NULL,
  `ORDER_TYPE` varchar(50) DEFAULT NULL,
  `BUSINESS_ID` bigint(14) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL,
  `PROD_INST_ID` bigint(14) DEFAULT NULL,
  `PRODUCT_ID` bigint(14) DEFAULT NULL,
  `SERVE_ID` bigint(14) DEFAULT NULL,
  `APPOINT_TIME` datetime DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(2000) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(14) DEFAULT NULL,
  `EXT_OFFER` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`APPOINT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市分表';

/*Table structure for table `appoint_order_err` */

DROP TABLE IF EXISTS `appoint_order_err`;

CREATE TABLE `appoint_order_err` (
  `APPOINT_ID` bigint(14) DEFAULT NULL,
  `ORDER_TYPE` varchar(50) DEFAULT NULL,
  `BUSINESS_ID` bigint(14) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL,
  `PROD_INST_ID` bigint(14) DEFAULT NULL,
  `PRODUCT_ID` bigint(14) DEFAULT NULL,
  `SERVE_ID` bigint(14) DEFAULT NULL,
  `APPOINT_TIME` datetime DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(2000) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(14) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  `EXT_OFFER` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市分表';

/*Table structure for table `appoint_order_h` */

DROP TABLE IF EXISTS `appoint_order_h`;

CREATE TABLE `appoint_order_h` (
  `APPOINT_ID` bigint(14) DEFAULT NULL,
  `ORDER_TYPE` varchar(50) DEFAULT NULL,
  `BUSINESS_ID` bigint(14) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL,
  `PROD_INST_ID` bigint(14) DEFAULT NULL,
  `PRODUCT_ID` bigint(14) DEFAULT NULL,
  `SERVE_ID` bigint(14) DEFAULT NULL,
  `APPOINT_TIME` datetime DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(2000) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(14) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL,
  `EXT_OFFER` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市年月分表';

/*Table structure for table `arp_parameter_store` */

DROP TABLE IF EXISTS `arp_parameter_store`;

CREATE TABLE `arp_parameter_store` (
  `ID` bigint(14) NOT NULL,
  `SENDER` varchar(30) NOT NULL,
  `RECEIVER` varchar(30) NOT NULL,
  `ARP` varchar(30) NOT NULL,
  `ARP_USER` varchar(100) DEFAULT NULL,
  `AUTH_INFO` varchar(30) DEFAULT NULL,
  `TRANSACT_ID` varchar(30) DEFAULT NULL,
  `BILATERAL_INFO` varchar(80) DEFAULT NULL,
  `SUBSCRIB_ID` varchar(30) DEFAULT NULL,
  `OLDARP_STATUS` varchar(7) DEFAULT NULL,
  `NEWARP_STATUS` varchar(7) DEFAULT NULL,
  `OTHER` varchar(30) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `EXT_1` varchar(25) DEFAULT NULL,
  `EXT_2` varchar(25) DEFAULT NULL,
  `EXT_3` varchar(25) DEFAULT NULL,
  `EXT_4` varchar(25) DEFAULT NULL,
  `REMARK` varchar(25) DEFAULT NULL,
  `STATE` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `arp_parameter_store_h` */

DROP TABLE IF EXISTS `arp_parameter_store_h`;

CREATE TABLE `arp_parameter_store_h` (
  `ID` bigint(14) NOT NULL,
  `SENDER` varchar(30) NOT NULL,
  `RECEIVER` varchar(30) NOT NULL,
  `ARP` varchar(30) NOT NULL,
  `ARP_USER` varchar(100) DEFAULT NULL,
  `AUTH_INFO` varchar(30) DEFAULT NULL,
  `TRANSACT_ID` varchar(30) DEFAULT NULL,
  `BILATERAL_INFO` varchar(80) DEFAULT NULL,
  `SUBSCRIB_ID` varchar(30) DEFAULT NULL,
  `OLDARP_STATUS` varchar(7) DEFAULT NULL,
  `NEWARP_STATUS` varchar(7) DEFAULT NULL,
  `OTHER` varchar(30) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `EXT_1` varchar(25) DEFAULT NULL,
  `EXT_2` varchar(25) DEFAULT NULL,
  `EXT_3` varchar(25) DEFAULT NULL,
  `EXT_4` varchar(25) DEFAULT NULL,
  `REMARK` varchar(25) DEFAULT NULL,
  `STATE` varchar(20) NOT NULL,
  `TF_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `batch_user` */

DROP TABLE IF EXISTS `batch_user`;

CREATE TABLE `batch_user` (
  `BATCH_USER_ID` bigint(14) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `LINE_PRODUCT_INFO` varchar(1000) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `BATCH_ID` bigint(14) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(1000) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `STATE` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `ORDER_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `NP_CREATE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`BATCH_USER_ID`),
  KEY `INDEX_BATCH_USER` (`BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户分表';

/*Table structure for table `batch_user_dtl` */

DROP TABLE IF EXISTS `batch_user_dtl`;

CREATE TABLE `batch_user_dtl` (
  `DTL_ID` bigint(14) NOT NULL,
  `BATCH_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `DATA_XML_1` text,
  `DATA_XML_2` text,
  `DATA_XML_3` text,
  `DATA_XML_4` text,
  `DATA_XML_5` text,
  `DATA_XML_6` text,
  `DATA_XML_7` text,
  `DATA_XML_8` text,
  `DATA_XML_9` text,
  `DATA_XML_10` text,
  `DATA_XML_11` text,
  `DATA_XML_12` text,
  `DATA_XML_13` text,
  `DATA_XML_14` text,
  `DATA_XML_15` text,
  `DATA_XML_16` text,
  `STATE` bigint(2) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DTL_ID`),
  KEY `INDEX_BATCH_USER_DTL` (`BATCH_ID`,`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户分表';

/*Table structure for table `bill_sus_res` */

DROP TABLE IF EXISTS `bill_sus_res`;

CREATE TABLE `bill_sus_res` (
  `CRM_ID` bigint(14) NOT NULL COMMENT 'CRM生成，唯一标识一笔业务',
  `KIND` varchar(30) DEFAULT NULL COMMENT '按用户 U',
  `TYPE` varchar(30) DEFAULT NULL COMMENT '复机、单停、双停',
  `REASON` varchar(200) DEFAULT NULL COMMENT '枚举值\r\n            停机原因\r\n            编码\r\n            101,102,103,104,105,106\r\n            200,201,202,203,204,205,206,207,301,302\r\n            ',
  `INS_ID` bigint(14) DEFAULT NULL COMMENT '用户号码,类似billId,dslId',
  `FLAG` varchar(30) DEFAULT NULL COMMENT 'I(init)未处理  S(success)成功   F(failure)失败 O(ongoing)正在处理',
  `MESSAGE` varchar(2000) DEFAULT NULL COMMENT '如标志位为F，则需要记录失败原因',
  `TRYCOUNT` bigint(14) DEFAULT NULL COMMENT '数据被执行一次+1\r\n            \r\n            ',
  `BILLING_ID` varchar(30) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `RETURN_TIME` datetime DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(15) DEFAULT NULL,
  `ACCT_ID` bigint(15) DEFAULT NULL,
  `PSTS` bigint(4) DEFAULT NULL COMMENT '变更前用户状态',
  `NSTS` bigint(4) DEFAULT NULL COMMENT '变更后用户状态',
  `OS_STS` bigint(4) DEFAULT NULL COMMENT '变更后单双停标志',
  `PSUB_TYPE` bigint(2) DEFAULT NULL COMMENT '变更前单双停标志',
  `PBALANCE` bigint(15) DEFAULT NULL COMMENT '变更前余额',
  `NBALANCE` bigint(15) DEFAULT NULL COMMENT '变更后余额',
  `SO_NBR` bigint(15) DEFAULT NULL,
  PRIMARY KEY (`CRM_ID`),
  KEY `BILL_SUS_RES_FLAG` (`FLAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Process Billing Suspension And Resumption Requests,从billing接';

/*Table structure for table `bill_sus_res_h` */

DROP TABLE IF EXISTS `bill_sus_res_h`;

CREATE TABLE `bill_sus_res_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `CRM_ID` bigint(14) DEFAULT NULL COMMENT 'CRM生成，唯一标识一笔业务',
  `KIND` varchar(30) DEFAULT NULL COMMENT '按用户 U',
  `TYPE` varchar(30) DEFAULT NULL COMMENT '复机、单停、双停',
  `REASON` varchar(30) DEFAULT NULL COMMENT '枚举值            停机原因            编码            101,102,103,104,105,106            200,201,202,203,204,205,206,207,301,302            ',
  `INS_ID` bigint(14) DEFAULT NULL COMMENT '用户号码,类似billId,dslId',
  `FLAG` varchar(30) DEFAULT NULL COMMENT 'I(init)未处理  S(success)成功   F(failure)失败 O(ongoing)正在处理',
  `MESSAGE` varchar(30) DEFAULT NULL COMMENT '如标志位为F，则需要记录失败原因',
  `TRYCOUNT` bigint(14) DEFAULT NULL COMMENT '数据被执行一次+1                        ',
  `BILLING_ID` varchar(30) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `RETURN_TIME` datetime DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(15) NOT NULL,
  `ACCT_ID` bigint(15) DEFAULT NULL,
  `PSTS` bigint(4) DEFAULT NULL COMMENT '变更前用户状态',
  `NSTS` bigint(4) DEFAULT NULL COMMENT '变更后用户状态',
  `OS_STS` bigint(4) DEFAULT NULL COMMENT '变更后单双停标志',
  `PSUB_TYPE` bigint(2) DEFAULT NULL COMMENT '变更前单双停标志',
  `PBALANCE` bigint(15) DEFAULT NULL COMMENT '变更前余额',
  `NBALANCE` bigint(15) DEFAULT NULL COMMENT '变更后余额',
  `SO_NBR` bigint(15) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Table structure for table `bs_operation` */

DROP TABLE IF EXISTS `bs_operation`;

CREATE TABLE `bs_operation` (
  `BUSINESS_ID` decimal(12,0) NOT NULL COMMENT '业务唯一编码。\n\n12位开始的为产品管理使用。其他模块定为10位，第一位是模块编号。\n \n1 营业受理\n2 客户管理\n3 资源管理\n4 账务管理\n5 渠道管理\n6 产品管理\n7 客服\n\n如客户管理从2000000001开始。',
  `NAME` varchar(200) DEFAULT NULL COMMENT '业务名称',
  `NOTES` varchar(500) DEFAULT NULL COMMENT '业务描述',
  `MODULE_CODE` varchar(20) DEFAULT NULL COMMENT '业务所属的模块名称。\n\n‘SO’表示营业\n‘AMS’表示帐管\n‘RES’表示资源\n‘PRODUCT’表示产品 \n‘CHANNEL’表示渠道\n‘CUST’ 表示客户\n‘CBOSS’表示CBOSS（异地）',
  `INCOME_TYPE` decimal(1,0) DEFAULT NULL COMMENT '本次操作操作员收费类型\n主要是用于统计报表用\n\n0：无费用产生，\n1：收入，如缴费，缴专项月租，押金\n-1：支出，如退费、返销，退押金',
  `LOG_FLAG` char(1) DEFAULT NULL COMMENT '是否记录日志标识。\n\n1：记录\n0：不记',
  `STATE` char(1) NOT NULL COMMENT '记录状态\nU-正常 E-删除',
  `STATE_DATE` datetime DEFAULT NULL COMMENT '状态变更时间',
  `REPORT_FLAG` char(1) DEFAULT NULL COMMENT '是否入日报标识。\n\n1、入日报\n2、不入日报',
  `SPAN_FLAG` char(1) DEFAULT NULL COMMENT '是否跨区业务标识。\n\n1、跨区\n2、不跨区',
  `CON_MSG_FLAG` char(1) DEFAULT NULL COMMENT '是否发送接触短信标识。\n\n1、发送\n0、不发送',
  `FEE_MSG_FLAG` char(1) DEFAULT NULL COMMENT '是否发送费用短信标识。\n\n1、发送\n2、不发送',
  `REVERSE_BUSINESS_ID` decimal(12,0) DEFAULT NULL COMMENT '对应返销业务编码。\n\n12位开始的为产品管理使用。其他模块定为10位，第一位是模块编号。\n \n1 营业受理\n2 客户管理\n3 资源管理\n4 账务管理\n5 渠道管理\n6 产品管理\n7 客服\n\n如客户管理从2000000001开始。',
  `SPAN_BUSINESS_ID` decimal(12,0) DEFAULT NULL COMMENT '对应异地业务编码。\n\n12位开始的为产品管理使用。其他模块定为10位，第一位是模块编号。\n \n1 营业受理\n2 客户管理\n3 资源管理\n4 账务管理\n5 渠道管理\n6 产品管理\n7 客服\n\n如客户管理从2000000001开始。',
  `PRI_LEVEL` decimal(4,0) DEFAULT NULL,
  `CHANNEL_TYPE` decimal(2,0) DEFAULT NULL,
  `TEMPLATE_ID` varchar(20) DEFAULT NULL,
  `BILL_FLAG` char(1) DEFAULT NULL,
  PRIMARY KEY (`BUSINESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务编码定义表，对各种业务的编码信息';

/*Table structure for table `chl_busi_fee` */

DROP TABLE IF EXISTS `chl_busi_fee`;

CREATE TABLE `chl_busi_fee` (
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '营业客户订单编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '受理号码',
  `DONE_CODE` varchar(30) NOT NULL COMMENT '送给华为的工单编号',
  `CHANNEL_ID` varchar(32) DEFAULT NULL COMMENT '扣款代销商编号',
  `BUSINESS_ID` varchar(12) DEFAULT NULL COMMENT '营业业务businessId',
  `BUSI_TYPE` varchar(8) DEFAULT NULL COMMENT '和华为一起定义的业务大类',
  `FEE_MODE` varchar(2) DEFAULT NULL COMMENT '扣款模式 :1：押金、2：预付款、9：不控制',
  `BALANCE_TYPE` varchar(32) DEFAULT NULL COMMENT '扣款账本',
  `AMOUNT` bigint(14) DEFAULT NULL COMMENT '分期扣款的总金额，单位分',
  `PRINT_INVOICE` char(1) DEFAULT NULL COMMENT '记录代销商是否打印发票',
  `PAY_TYPE` bigint(1) DEFAULT NULL COMMENT '付款方式（bs_static_code :code_type=SO_PAY_TYPE）',
  `IS_BUDGET` varchar(2) DEFAULT NULL COMMENT '是否分期（0,：不分期：1：分期）',
  `STATE` varchar(2) NOT NULL COMMENT '1 扣款  2 扣款取消,3 扣款撤销',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '受理工号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '受理组织',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '受理县市',
  `DONE_DATE` datetime NOT NULL COMMENT '受理日期',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地市',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT_1` varchar(50) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(50) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(255) DEFAULT NULL COMMENT '扩展字段3',
  PRIMARY KEY (`DONE_CODE`,`STATE`),
  KEY `IDX_CHL_BUSI_FEE_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_CHL_BUSI_FEE_2` (`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代销商业务受理费用表\n按地市、年月分表\n如CHL_BUSI_FEE_240_201211';

/*Table structure for table `chl_fee_instalment` */

DROP TABLE IF EXISTS `chl_fee_instalment`;

CREATE TABLE `chl_fee_instalment` (
  `DONE_CODE` varchar(30) NOT NULL COMMENT '送给华为的工单编号',
  `AMOUNT` bigint(14) DEFAULT NULL COMMENT '分期扣款的总金额，单位分',
  `START_DATE` datetime DEFAULT NULL COMMENT '分期付款开始时间',
  `PRE_TYPE` varchar(2) DEFAULT NULL COMMENT '分期类型  0：按月，1：按天，默认按月',
  `PRE_UNIT` varchar(8) DEFAULT NULL COMMENT '分期付款的天数或月份数',
  `IS_AVG` varchar(2) DEFAULT NULL COMMENT '是否等额 1=等额 、2=非等额',
  `PRE_AMOUNT` varchar(255) DEFAULT NULL COMMENT '每次分期扣款的金额，单位分',
  `DONE_DATE` datetime NOT NULL COMMENT '受理日期',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地市',
  `STATE` varchar(2) DEFAULT NULL COMMENT '1 扣款  2 扣款取消,3 扣款撤销',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  KEY `IDX_CHL_FEE_INST_1` (`DONE_CODE`),
  KEY `IDX_CHL_FEE_INST_2` (`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代销商分期付款明细表\n按地市、年月分表\n如CHL_FEE_INSTALMENT_240_201211';

/*Table structure for table `crm_inout_log` */

DROP TABLE IF EXISTS `crm_inout_log`;

CREATE TABLE `crm_inout_log` (
  `ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(15) DEFAULT NULL,
  `BUSINESS_ID` bigint(15) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(15) DEFAULT NULL,
  `BILL_ID` varchar(20) DEFAULT NULL,
  `USER_ID` bigint(15) DEFAULT NULL,
  `INTERFACE_NAME` varchar(50) DEFAULT NULL,
  `INFO_1` varchar(4000) DEFAULT NULL,
  `INFO_2` varchar(4000) DEFAULT NULL,
  `INFO_3` varchar(4000) DEFAULT NULL,
  `INFO_4` varchar(4000) DEFAULT NULL,
  `IN_OUT` int(1) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '��ǰҵ����������',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '��ǰҵ��������',
  KEY `IDX_BAT_SAP_REL_INDX1` (`CUST_ID`),
  KEY `IDX_BAT_SAP_REL_INDX2` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `crm_so_ott_viaplay_active_deactive` */

DROP TABLE IF EXISTS `crm_so_ott_viaplay_active_deactive`;

CREATE TABLE `crm_so_ott_viaplay_active_deactive` (
  `VOUCHER_CODE` varchar(100) NOT NULL DEFAULT '',
  `ACTIVE_DATE` datetime DEFAULT NULL,
  `DEACTIVE_DATE` datetime DEFAULT NULL,
  `PARTNER_PROMOTION` varchar(200) DEFAULT NULL,
  `PACKAGE` varchar(200) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '0:文件录入表状态,1:待激活,2:已激活,3:待去激活,4:已去激活',
  `DEAL_STATE` varchar(3) DEFAULT NULL COMMENT '1:失败',
  `REMARK` varchar(4000) DEFAULT NULL COMMENT '失败的报错信息',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(200) DEFAULT NULL,
  `EXT2` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`VOUCHER_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `deal_lbo_result` */

DROP TABLE IF EXISTS `deal_lbo_result`;

CREATE TABLE `deal_lbo_result` (
  `DEAL_RESULT_ID` bigint(20) NOT NULL COMMENT '主键ID',
  `FILE_NAME` varchar(20) DEFAULT NULL COMMENT '文件名称',
  `START_CODE` varchar(6) DEFAULT NULL COMMENT '开始CODE,S表示订购，U表示适用',
  `VALIDITY_PERIOD_DAYS` varchar(10) DEFAULT NULL COMMENT '过期时间',
  `START_DATE` varchar(20) DEFAULT NULL COMMENT '开始时间',
  `LBO_CUSTOMER_MSISDN` varchar(50) DEFAULT NULL COMMENT 'MSISDN',
  `LBO_CUSTOMER_IMSI` varchar(50) DEFAULT NULL COMMENT 'IMSI',
  `VPMN_ID` varchar(255) DEFAULT NULL COMMENT 'VPMN ID',
  `DSP_ID` varchar(255) DEFAULT NULL COMMENT 'DSP ID',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FAIL_CODE` bigint(10) DEFAULT NULL COMMENT '失败原因',
  `FAIL_REASON` varchar(255) DEFAULT NULL COMMENT 'DSP ID',
  PRIMARY KEY (`DEAL_RESULT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='LBO同步订购信息失败表';

/*Table structure for table `dsp_restrict_user_h` */

DROP TABLE IF EXISTS `dsp_restrict_user_h`;

CREATE TABLE `dsp_restrict_user_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `BILL_ID` varchar(30) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `DPLAT_ID` bigint(10) DEFAULT NULL,
  `PROD_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_ATTRIB` bigint(4) DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区进行分表(DSP_RESTRICT_USER_H_571，加上H_ID字段)';

/*Table structure for table `first_active_prod_sync` */

DROP TABLE IF EXISTS `first_active_prod_sync`;

CREATE TABLE `first_active_prod_sync` (
  `ID` bigint(15) NOT NULL,
  `CUST_ID` bigint(15) DEFAULT NULL,
  `ACCT_ID` bigint(15) DEFAULT NULL,
  `USER_ID` bigint(15) NOT NULL,
  `PHONE_ID` varchar(30) NOT NULL,
  `ACTIVATION_TIME` datetime NOT NULL,
  `SMS_LANGUAGE` bigint(2) DEFAULT NULL,
  `USSD_LANGUAGE` bigint(2) DEFAULT NULL,
  `IVR_LANGUAGE` bigint(2) DEFAULT NULL,
  `ACT_CHANNEL` bigint(2) DEFAULT NULL,
  `ACTIVE_CAC` varchar(255) DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `BOS_SO_DATE` datetime DEFAULT NULL,
  `BOS_SO_NBR` bigint(15) DEFAULT NULL,
  `REMARK` varchar(256) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `STS` bigint(2) NOT NULL,
  `SO_NBR` bigint(9) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_account` */

DROP TABLE IF EXISTS `i_account`;

CREATE TABLE `i_account` (
  `CUST_ID` bigint(15) NOT NULL,
  `ACCT_ID` bigint(15) NOT NULL,
  `ACCT_TYPE` bigint(4) NOT NULL COMMENT '101：个人帐户\n103：集团帐户\n104: NT员工工作账户\n105：代理商账户',
  `ACCT_CLASS` bigint(4) NOT NULL COMMENT '1：客户账户（默认）',
  `ACCT_SEGMENT` bigint(4) DEFAULT NULL,
  `ACCT_NAME` varchar(256) DEFAULT NULL,
  `STATUS` bigint(4) NOT NULL COMMENT '0：失效\n1：正常\n2：挂起',
  `MEASURE_ID` bigint(9) NOT NULL COMMENT '1：分（默认）',
  `DUE_DAY` bigint(4) DEFAULT NULL,
  `BILL_DISPATCHING` varchar(32) NOT NULL COMMENT '邮寄方式SUMMARY_DELIVER，默认是32位全部为0的字符串，枚举值如下\n位数（从左至右） 说明\n1 电子邮件\n2 彩信\n3 短信（收费短信-通过产品订购）\n4 短信（免费短信-非订购）\n5 纸质帐单-平信\n6 纸质帐单和帐单明细套封-平信\n7 纸质帐单和帐单明细不套封-平信\n8 家庭类专用帐单-平信',
  `BILL_LANGUAGE_ID` bigint(4) NOT NULL COMMENT '1：英文\n2：中文（默认）',
  `PROV_CODE` bigint(4) NOT NULL,
  `COUNTY_CODE` bigint(4) NOT NULL,
  `REGION_CODE` bigint(4) NOT NULL,
  `CREDIT_SIGN_CONTROL` bigint(8) DEFAULT NULL COMMENT '0：预付费1：后付费',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `BILL_STS` bigint(2) DEFAULT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  `BALANCE_TYPE` bigint(4) DEFAULT NULL COMMENT '0:用户级账本\n1：账户级账本',
  `TAX_FLAG` bigint(1) DEFAULT NULL COMMENT '0：扣税\n1：免税',
  `ATT_INVOICE` varchar(256) DEFAULT NULL,
  `IS_CHARGE` bigint(1) NOT NULL,
  `VAT_NUMBER` varchar(256) DEFAULT NULL,
  KEY `IDX_I_ACCOUNT_SONBR` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_acct_agr_rel` */

DROP TABLE IF EXISTS `i_acct_agr_rel`;

CREATE TABLE `i_acct_agr_rel` (
  `ACCT_ID` bigint(15) NOT NULL COMMENT '账户ID',
  `AGREEMENT_ID` bigint(12) NOT NULL COMMENT '合同ID',
  `OPERATOR_ID` bigint(15) DEFAULT NULL COMMENT '操作员ID',
  `OPERATOR_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `VALID_DATE` datetime NOT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '失效时间',
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '操作类型',
  `COMMIT_DATE` datetime NOT NULL COMMENT '提交时间',
  `SO_NBR` bigint(15) NOT NULL COMMENT '工单号',
  `TENANT_ID` bigint(12) NOT NULL COMMENT 'TENANT_ID',
  `SPLIT_REGION_CODE` varchar(6) NOT NULL COMMENT 'SPLIT_REGION_CODE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_acct_bill_cycle` */

DROP TABLE IF EXISTS `i_acct_bill_cycle`;

CREATE TABLE `i_acct_bill_cycle` (
  `ACCT_ID` bigint(15) NOT NULL,
  `CYCLE_TYPE` bigint(8) NOT NULL COMMENT '0-默认帐期\n1-天\n2-周\n4-年\n5-月\n9-季度',
  `CYCLE_UNIT` bigint(8) NOT NULL COMMENT '默认1',
  `FIRST_BILL_DAY` bigint(8) NOT NULL,
  `FIRST_BILL_TYPE` bigint(4) NOT NULL COMMENT '1：短(小)账期（默认）\n2：长账期',
  `EFFECTIVE_TYPE` bigint(4) NOT NULL COMMENT '0：当前账期生效\n1：下账期生效（默认）',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  KEY `IDX_I_ACCT_BILL_CYCLE_1` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_acct_pay_channel` */

DROP TABLE IF EXISTS `i_acct_pay_channel`;

CREATE TABLE `i_acct_pay_channel` (
  `ACCT_ID` bigint(15) NOT NULL,
  `PAYMENT_TYPE` bigint(4) NOT NULL COMMENT '1：现金\n2：信用卡代扣\n3：银行托收\n5：银行卡绑定充值\n6：手机支付自动交话费\n7：银联代缴\n8: 支票',
  `BANK_ID` varchar(10) DEFAULT NULL,
  `BANK_ACCT_NBR` varchar(64) DEFAULT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `PHONE_ID` varchar(28) DEFAULT NULL,
  `USER_ID` bigint(15) DEFAULT NULL,
  `DAY_FIX_MONEY` bigint(12) DEFAULT NULL,
  `TIME_FIX_MONEY` bigint(12) DEFAULT NULL,
  `BIND_TYPE` bigint(2) DEFAULT NULL COMMENT '1：预付费的充值绑定 2：后付费的付账单绑定',
  `PLAT_FORM` bigint(6) DEFAULT NULL,
  `FUND_TYPE` bigint(4) DEFAULT NULL COMMENT '0：未知卡类型\n1：借记卡\n2：信用卡\n3：付费宝',
  `TENANT_ID` bigint(12) NOT NULL,
  KEY `IDX_I_ACCT_PAY_CHANNEL_1` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_acct_pay_relation` */

DROP TABLE IF EXISTS `i_acct_pay_relation`;

CREATE TABLE `i_acct_pay_relation` (
  `SPLIT_ID` bigint(15) DEFAULT NULL,
  `PAY_ACCT_ID` bigint(15) NOT NULL,
  `USER_ID` bigint(15) DEFAULT NULL,
  `ACCT_ID` bigint(15) DEFAULT NULL,
  `REGION_CODE` bigint(4) DEFAULT NULL,
  `PAY_RULE_ID` bigint(8) DEFAULT NULL,
  `PRODUCT_ID` bigint(15) DEFAULT NULL,
  `PAY_TYPE` bigint(8) NOT NULL COMMENT '0：按规则分账\n1：按产品分账\n2：集团代付',
  `PAY_NUMERATOR` bigint(4) DEFAULT NULL,
  `PAY_DENOMINATOR` bigint(4) DEFAULT NULL,
  `PAY_THRESHOLD` bigint(8) NOT NULL,
  `MEASURE_ID` bigint(9) DEFAULT NULL,
  `PAY_METHOD` bigint(4) NOT NULL COMMENT '0：一般代付\n1：家庭统付\n2：集团统付',
  `PRIORITY` bigint(8) NOT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  `IS_VALID` tinyint(2) DEFAULT '0' COMMENT '0:valid, 1 not valid',
  KEY `IDX_I_ACCT_PAY_SONBR` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_acct_rel` */

DROP TABLE IF EXISTS `i_acct_rel`;

CREATE TABLE `i_acct_rel` (
  `ACCT_ID` bigint(15) NOT NULL,
  `PARENT_ACCT_ID` bigint(15) NOT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `TENANT_ID` bigint(4) DEFAULT NULL,
  KEY `IDX_I_ACCT_PAY_CHANNEL_2` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_agreement` */

DROP TABLE IF EXISTS `i_agreement`;

CREATE TABLE `i_agreement` (
  `AGREEMENT_ID` bigint(12) NOT NULL COMMENT '合同ID',
  `AGREEMENT_NAME` varchar(128) DEFAULT NULL COMMENT '合同名称',
  `CUST_ID` bigint(15) NOT NULL COMMENT '客户ID',
  `AGREEMENT_CODE` varchar(128) DEFAULT NULL COMMENT '合同编号',
  `AGR_BAR_CODE` varchar(128) DEFAULT NULL COMMENT '合同条码',
  `AGR_LEVEL_ID` bigint(12) DEFAULT NULL COMMENT '合同层级, 100158:frame, 100159:product, 100161:DISCOUNT, 100164:TAXFREE',
  `SIGN_TIME` datetime DEFAULT NULL COMMENT '签字时间',
  `OPERATOR_ID` bigint(15) DEFAULT NULL COMMENT '操作员ID',
  `OPERATOR_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `VALID_DATE` datetime NOT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `OPER_TYPE` smallint(4) DEFAULT NULL COMMENT '操作类型',
  `COMMIT_DATE` datetime DEFAULT NULL COMMENT '提交时间',
  `SO_NBR` bigint(15) DEFAULT NULL COMMENT '工单号',
  `SPLIT_REGION_CODE` varchar(6) DEFAULT NULL COMMENT 'SPLIT_REGION_CODE',
  `TENANT_ID` bigint(12) DEFAULT NULL COMMENT 'TENANT_ID',
  `AGR_TYPE` bigint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_budget` */

DROP TABLE IF EXISTS `i_budget`;

CREATE TABLE `i_budget` (
  `BUDGET_ID` bigint(15) NOT NULL,
  `BUDGET_LEVEL` bigint(4) NOT NULL COMMENT '1 账户级别\n2用户级别\n3 服务级别',
  `ACCT_ID` bigint(15) DEFAULT NULL,
  `USER_ID` bigint(15) DEFAULT NULL,
  `BUSI_SERVICE_ID` bigint(15) DEFAULT NULL,
  `BUDGET_PAYMODE` bigint(4) DEFAULT NULL,
  `BUDGET_AMOUNT` bigint(8) DEFAULT NULL,
  `MEASURE_ID` bigint(9) NOT NULL,
  `BUDGET_ACTION` bigint(4) DEFAULT NULL COMMENT '1-CONTINUE;\n2-BAR SERVICE(DEFAULT)\n3-NOTIFICATION',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  KEY `IDX_I_BUDGET_SONBR` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_buget_threshold` */

DROP TABLE IF EXISTS `i_buget_threshold`;

CREATE TABLE `i_buget_threshold` (
  `BUDGET_ID` bigint(15) NOT NULL COMMENT '预算产品编号',
  `THRESHOLD_AMOUNT` bigint(8) NOT NULL,
  `NOTIFY_TYPE` bigint(4) DEFAULT NULL COMMENT '1-SMS(default);\n2-Email;\n3-SMS&Email',
  `NOTIFY_ADDR` varchar(256) DEFAULT NULL,
  `NOTIFY_PHONE_ID` varchar(64) DEFAULT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  KEY `IDX_I_BUGET_THRESHOLD_1` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_cdr_rerating` */

DROP TABLE IF EXISTS `i_cdr_rerating`;

CREATE TABLE `i_cdr_rerating` (
  `ACCT_ID` bigint(15) DEFAULT NULL COMMENT '集群类业务的群产品订购，填的是虚用户；\n其它订购该值为空',
  `USER_ID` bigint(15) DEFAULT NULL,
  `PHONE_ID` varchar(28) DEFAULT NULL,
  `OFFER_ID` bigint(15) NOT NULL,
  `PRODUCT_ID` bigint(15) NOT NULL COMMENT 'CRM侧有实例编号,策划实例ID，产品实例ID',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TENANT_ID` bigint(12) DEFAULT NULL,
  KEY `IDX_I_CDR_RERATING` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_contact` */

DROP TABLE IF EXISTS `i_contact`;

CREATE TABLE `i_contact` (
  `CONTACT_ID` bigint(15) NOT NULL,
  `CONTACT_TYPE` bigint(2) NOT NULL COMMENT '1：客户联系人\n4：账户联系人\n10：legal owner 联系人',
  `CUST_ID` bigint(15) DEFAULT NULL COMMENT '客户联系信息必填',
  `ACCT_ID` bigint(15) DEFAULT NULL COMMENT '账户联系信息必填',
  `CONTACT_NAME` varchar(256) DEFAULT NULL,
  `MOBILE_PHONE` varchar(64) DEFAULT NULL,
  `HOME_PHONE` varchar(20) DEFAULT NULL,
  `COUNTRY_ID` bigint(4) DEFAULT NULL,
  `PROV_CODE` bigint(4) DEFAULT NULL,
  `OFFICE_PHONE` varchar(20) DEFAULT NULL,
  `FAX` varchar(64) DEFAULT NULL,
  `EMAIL` varchar(256) DEFAULT NULL,
  `POST_CODE` varchar(512) DEFAULT NULL,
  `ADDRESS` varchar(512) DEFAULT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  `ADDRESS_ID` bigint(12) DEFAULT NULL,
  KEY `IDX_I_CONTACT_1` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_credit` */

DROP TABLE IF EXISTS `i_credit`;

CREATE TABLE `i_credit` (
  `USER_ID` bigint(15) DEFAULT NULL,
  `ACCT_ID` bigint(15) NOT NULL,
  `CREDIT_TYPE` bigint(4) NOT NULL COMMENT '1：账户级别\n2：用户级别（默认）\n3：服务级别\nCRM侧传过来的都是用户级信用度，到BOSS转成账户级信用度',
  `CREDIT_ITEM_ID` bigint(15) DEFAULT NULL COMMENT '可空\n包括专用科目和通用科目，不传则取配置',
  `CREDIT_FLAG` bigint(4) NOT NULL COMMENT '0：普通信用度',
  `CREDIT` bigint(15) NOT NULL COMMENT '值必须大于等于0',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `CREDIT_LEVEL` bigint(4) NOT NULL COMMENT '100：未评级\n0～5：个人用户0～5星\n20～25：集团用户0～5星',
  `TENANT_ID` bigint(4) DEFAULT NULL,
  KEY `IDX_I_CREDIT_1` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_cust_rel` */

DROP TABLE IF EXISTS `i_cust_rel`;

CREATE TABLE `i_cust_rel` (
  `CUST_ID` bigint(15) NOT NULL,
  `PARENT_CUST_ID` bigint(15) NOT NULL,
  `RELATIONSHIP_TYPE` bigint(4) NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1:增加\n2：修改\n3：删除',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SO_NBR` bigint(15) NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TOP_CUST_ID` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_cust_user` */

DROP TABLE IF EXISTS `i_cust_user`;

CREATE TABLE `i_cust_user` (
  `USER_ID` bigint(15) DEFAULT NULL,
  `CUST_ID` bigint(15) NOT NULL,
  `RELATIONSHIP_TYPE` bigint(4) NOT NULL COMMENT '0:归属，默认',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  KEY `IDX_I_CUST_USER_SONBR` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_customer` */

DROP TABLE IF EXISTS `i_customer`;

CREATE TABLE `i_customer` (
  `CUST_ID` bigint(15) NOT NULL,
  `GROUP_ID` bigint(15) DEFAULT NULL,
  `CUST_TYPE` bigint(4) NOT NULL COMMENT '1：个人客户\n2：集团客户',
  `SUB_CUST_TYPE` bigint(4) NOT NULL COMMENT '0：个人（旧)\n1：单位（旧）\n2：免费公务（旧）\n3：纳费公务（旧）\n4：重点通信（旧）\n9：其他（旧）\n10：个人\n11：单位\n12：公务\n13：测试',
  `CUST_SEGMENT` bigint(4) NOT NULL COMMENT '0:no level\n1~11 Level 1-11',
  `CUST_NAME` varchar(256) NOT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `GENDER` bigint(4) NOT NULL COMMENT '1：男\n2：女\n9：其它',
  `LANGUAGE` bigint(4) NOT NULL COMMENT '1 ENG English \n2 CHI Chinese \n3 THA Thai \n4 NEP Nepalese',
  `PROV_CODE` bigint(4) NOT NULL,
  `REGION_CODE` bigint(4) NOT NULL,
  `COUNTY_ID` bigint(4) NOT NULL,
  `FIRST_ADDRESS` bigint(15) DEFAULT NULL,
  `SECOND_ADDRESS` bigint(15) DEFAULT NULL,
  `REG_TYPE` bigint(4) NOT NULL COMMENT '1	IMM_CARD	\n2	MONK_CERT	\n3	PASSPORT	\n4	TAX_ID	\n5	CERT_FOUND	\n6	EMB_LET	\n7	GOV_LET	\n8	HILL_CARD	\n9	ID_CARD	\n10	ROY_LET	\n11	STA_LET',
  `REG_NBR` varchar(256) DEFAULT NULL,
  `ISSUE_DATE` datetime DEFAULT NULL,
  `REAL_NAME_DATE` datetime DEFAULT NULL,
  `REAL_NAME_STS` bigint(8) DEFAULT NULL COMMENT '0：未登记\n1：已登记',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TAX_NO` varchar(128) DEFAULT NULL,
  `CUST_ADDRESS` varchar(512) DEFAULT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  `TAX_FLAG` bigint(1) DEFAULT NULL COMMENT '0：扣税\n1：免税',
  `CUST_PHY_FLAG` bigint(2) DEFAULT NULL COMMENT '0:代表正常人\n1:代表眼盲人士\n2:代表耳聋人士,\n3:代表眼盲、耳聋',
  `COUNTRY_ID` bigint(4) DEFAULT NULL,
  `CREDIT` bigint(15) DEFAULT NULL,
  `CREDIT_LEVEL` bigint(4) DEFAULT NULL,
  `MEASURE_ID` bigint(9) DEFAULT NULL,
  `STATUS` bigint(2) NOT NULL,
  `BROKE_STS` bigint(2) NOT NULL,
  `OPERATOR_CODE` varchar(32) DEFAULT NULL,
  KEY `IDX_I_CUSTOMER_SONBR` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_data_index` */

DROP TABLE IF EXISTS `i_data_index`;

CREATE TABLE `i_data_index` (
  `CUST_ID` bigint(15) DEFAULT NULL,
  `ACCT_ID` bigint(15) DEFAULT NULL,
  `USER_ID` bigint(15) DEFAULT NULL,
  `UP_FIELD` varchar(64) NOT NULL,
  `REGION_CODE` varchar(6) NOT NULL,
  `COUNTY_CODE` varchar(6) DEFAULT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SO_NBR` bigint(15) NOT NULL,
  `DEAL_STS` bigint(1) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `SPLIT_REGION_CODE` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(15) NOT NULL,
  `BUSI_CODE` bigint(15) NOT NULL,
  `TENANT_ID` bigint(4) DEFAULT NULL,
  `ORG_ID` bigint(9) DEFAULT NULL,
  `OP_ID` bigint(15) DEFAULT NULL,
  `BOD_FLAG` bigint(15) DEFAULT NULL,
  PRIMARY KEY (`SO_NBR`),
  KEY `IDX_I_DATA_INDEX_DONECODE` (`DONE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_data_index_err` */

DROP TABLE IF EXISTS `i_data_index_err`;

CREATE TABLE `i_data_index_err` (
  `CUST_ID` bigint(15) DEFAULT NULL,
  `ACCT_ID` bigint(15) DEFAULT NULL,
  `USER_ID` bigint(15) DEFAULT NULL,
  `UP_FIELD` varchar(64) DEFAULT NULL,
  `REGION_CODE` bigint(6) DEFAULT NULL,
  `COUNTY_CODE` bigint(4) DEFAULT NULL,
  `COMMIT_DATE` datetime DEFAULT NULL,
  `SO_NBR` bigint(15) NOT NULL,
  `DEAL_STS` bigint(1) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `SPLIT_REGION_CODE` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(15) DEFAULT NULL,
  `BUSI_CODE` bigint(15) DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_SQL` varchar(2000) DEFAULT NULL,
  `TENANT_ID` bigint(4) DEFAULT NULL,
  `ORG_ID` bigint(9) DEFAULT NULL,
  `OP_ID` bigint(15) DEFAULT NULL,
  `BOD_FLAG` bigint(15) DEFAULT NULL,
  KEY `IDX_I_DATA_INDEX_ERR_1` (`CUST_ID`),
  KEY `IDX_I_DATA_INDEX_ERR_2` (`ACCT_ID`),
  KEY `IDX_I_DATA_INDEX_ERR_3` (`USER_ID`),
  KEY `IDX_I_DATA_INDEX_ERR_4` (`DONE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_data_index_h` */

DROP TABLE IF EXISTS `i_data_index_h`;

CREATE TABLE `i_data_index_h` (
  `CUST_ID` bigint(15) DEFAULT NULL,
  `ACCT_ID` bigint(15) DEFAULT NULL,
  `USER_ID` bigint(15) DEFAULT NULL,
  `UP_FIELD` varchar(64) DEFAULT NULL,
  `REGION_CODE` bigint(4) DEFAULT NULL,
  `COUNTY_CODE` bigint(4) DEFAULT NULL,
  `COMMIT_DATE` datetime DEFAULT NULL,
  `SO_NBR` bigint(15) NOT NULL,
  `DEAL_STS` bigint(1) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `SPLIT_REGION_CODE` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(15) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `TENANT_ID` bigint(4) DEFAULT NULL,
  `BUSI_CODE` bigint(15) DEFAULT NULL,
  `BOD_FLAG` bigint(15) DEFAULT NULL,
  KEY `IDX_I_DATA_INDEX_H_1` (`DONE_CODE`),
  KEY `IDX_I_DATA_INDEX_H_2` (`CUST_ID`),
  KEY `IDX_I_DATA_INDEX_H_3` (`ACCT_ID`),
  KEY `IDX_I_DATA_INDEX_H_4` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_depart` */

DROP TABLE IF EXISTS `i_depart`;

CREATE TABLE `i_depart` (
  `DEPART_ID` bigint(15) NOT NULL,
  `DEPART_CODE` varchar(15) DEFAULT NULL,
  `DEPART_NAME` varchar(256) NOT NULL,
  `DEPART_CUST_ID` bigint(15) NOT NULL COMMENT '1:增加\n2：修改\n3：删除',
  `OPER_TYPE` smallint(4) NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SO_NBR` bigint(20) NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `VALID_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_depart_rel` */

DROP TABLE IF EXISTS `i_depart_rel`;

CREATE TABLE `i_depart_rel` (
  `DEPART_ID` bigint(15) NOT NULL,
  `PARENT_DEPART_ID` bigint(15) NOT NULL,
  `TOP_DEPART_ID` bigint(15) NOT NULL,
  `RELATIONSHIP_TYPE` smallint(4) NOT NULL COMMENT '1:增加\n2：修改\n3：删除',
  `OPER_TYPE` smallint(4) NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SO_NBR` bigint(20) NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `VALID_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_depart_res` */

DROP TABLE IF EXISTS `i_depart_res`;

CREATE TABLE `i_depart_res` (
  `DEPART_ID` bigint(15) NOT NULL,
  `USER_ID` bigint(15) NOT NULL,
  `RELATIONSHIP_TYPE` smallint(4) NOT NULL COMMENT '1:增加\n2：修改\n3：删除',
  `OPER_TYPE` smallint(4) NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SO_NBR` bigint(20) NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `VALID_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_err_data_sync` */

DROP TABLE IF EXISTS `i_err_data_sync`;

CREATE TABLE `i_err_data_sync` (
  `SEQ_ID` bigint(15) NOT NULL,
  `CUST_ID` bigint(15) DEFAULT NULL,
  `ACCT_ID` bigint(15) DEFAULT NULL,
  `USER_ID` bigint(15) DEFAULT NULL,
  `UP_FIELD` varchar(64) NOT NULL,
  `REGION_CODE` int(11) NOT NULL,
  `COUNTY_CODE` int(11) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SO_NBR` bigint(15) NOT NULL,
  `DEAL_DATE` datetime DEFAULT NULL,
  `ERROR_CODE` bigint(15) DEFAULT NULL,
  `ERROR_MSG` varchar(255) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `DONE_CODE` bigint(15) NOT NULL,
  `BUSI_CODE` bigint(15) NOT NULL,
  `TENANT_ID` bigint(15) NOT NULL DEFAULT '0',
  `ORG_ID` int(11) DEFAULT NULL,
  `OP_ID` bigint(15) DEFAULT NULL,
  `BOD_FLAG` smallint(6) DEFAULT '-1',
  `STATE` smallint(1) DEFAULT NULL,
  KEY `SEQ_ID` (`SEQ_ID`,`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_err_data_sync_h` */

DROP TABLE IF EXISTS `i_err_data_sync_h`;

CREATE TABLE `i_err_data_sync_h` (
  `SEQ_ID` bigint(15) NOT NULL,
  `CUST_ID` bigint(15) DEFAULT NULL,
  `ACCT_ID` bigint(15) DEFAULT NULL,
  `USER_ID` bigint(15) DEFAULT NULL,
  `UP_FIELD` varchar(64) NOT NULL,
  `REGION_CODE` int(11) NOT NULL,
  `COUNTY_CODE` int(11) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SO_NBR` bigint(15) NOT NULL,
  `DEAL_DATE` datetime DEFAULT NULL,
  `ERROR_CODE` bigint(15) DEFAULT NULL,
  `ERROR_MSG` varchar(255) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `DONE_CODE` bigint(15) NOT NULL,
  `BUSI_CODE` bigint(15) NOT NULL,
  `TENANT_ID` bigint(15) NOT NULL DEFAULT '0',
  `ORG_ID` int(11) DEFAULT NULL,
  `OP_ID` bigint(15) DEFAULT NULL,
  `BOD_FLAG` smallint(6) DEFAULT '-1',
  `TF_DATE` datetime DEFAULT NULL,
  KEY `SEQ_ID` (`SEQ_ID`,`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_fee` */

DROP TABLE IF EXISTS `i_fee`;

CREATE TABLE `i_fee` (
  `USER_ID` bigint(15) NOT NULL,
  `ACCT_ID` bigint(15) NOT NULL,
  `FEE_TYPE` smallint(2) NOT NULL COMMENT '1：一次性费用\n2：押金\n3：预存款\n4：一次性免费资源\n5: 预缴转普通预存\n6：积分',
  `FEE_ITEM_ID` bigint(9) NOT NULL COMMENT '一次性费用时，填账单科目\n预存款时，填账本科目\n一次性免费资源时，填免费资源科目\n押金时，填押金科目',
  `AMOUNT` bigint(12) NOT NULL,
  `MEASURE_ID` bigint(9) NOT NULL COMMENT '1：分（默认）\n非资金类的单位不参考该字段',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` smallint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `BILLING_TYPE` smallint(4) DEFAULT NULL COMMENT '0：预付费\n1：后付费',
  `TAX_FLAG` smallint(2) DEFAULT NULL COMMENT '0:unrelated to tax;\n1:tax not included;\n2:tax included',
  `IS_REAL` smallint(2) DEFAULT NULL COMMENT '1表示实时扣，\n2表示账期末扣费',
  `SRC_FEE_ITEM_ID` bigint(9) DEFAULT NULL COMMENT '1：分（默认）\n免费资源的单位按照约定的最基本单位来处理，\n不参考这个段（1、流量：单位 byte\n2、时长：单位秒\n3、短彩信：单位条）',
  `BUSI_SPEC_ID` bigint(15) DEFAULT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  `SRC_AMOUNT` bigint(12) DEFAULT NULL,
  `SRC_MEASURE_ID` bigint(9) DEFAULT NULL,
  `TAR_ACCT_ID` bigint(15) DEFAULT NULL,
  `OUT_SO_NBR` bigint(15) DEFAULT NULL,
  `TAX_AMOUNT` bigint(12) DEFAULT NULL,
  `TAX_CODE` bigint(12) DEFAULT NULL,
  `ORDER_ID` varchar(128) NOT NULL,
  `ORDER_DATE` datetime NOT NULL,
  `PAY_ACCT_ID` bigint(12) NOT NULL,
  `RETAIL_INVOICE_TYPE` bigint(4) DEFAULT NULL,
  `TEMP_IMEI` varchar(64) DEFAULT NULL,
  `IMEI` varchar(64) DEFAULT NULL,
  `TRANSACTION_ID` varchar(128) DEFAULT NULL,
  `ALLOWANCE` bigint(15) DEFAULT NULL,
  `ALLOWANCE_CUST_ID` bigint(15) DEFAULT NULL,
  `QUANTITY` bigint(9) DEFAULT NULL,
  `HARDWARE_ACCT_ID` bigint(15) DEFAULT NULL,
  `SRC_USER_ID` bigint(15) DEFAULT NULL,
  `UPC_OFFER_ID` bigint(12) DEFAULT NULL,
  `BILLING_OFFER_ID` bigint(12) DEFAULT NULL,
  `REAL_DEDCUT_TYPE` smallint(4) DEFAULT NULL,
  `PO_NUMBER` varchar(20) DEFAULT NULL,
  `ALLOWANCE_ACCT_ID` bigint(15) DEFAULT NULL,
  `AGREEMENT_ID` bigint(15) DEFAULT NULL,
  KEY `IDX_I_FEE_SONBR` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_group` */

DROP TABLE IF EXISTS `i_group`;

CREATE TABLE `i_group` (
  `GROUP_ID` bigint(15) NOT NULL,
  `GROUP_TYPE` bigint(4) NOT NULL COMMENT '201：VPN\n204：家庭群\n205：CUG群\n208：冲浪e家亲活动\n209：66家庭包活动\n210：共享池\n211：集团短信\n212：随心聊',
  `BILLABLE_ACCT_ID` bigint(15) NOT NULL COMMENT 'CRM虚用户对应的账户编号\n并非代付关系的账户编号',
  `MAX_MEMBER_NUMBER` bigint(8) DEFAULT NULL,
  `CONTACT_PHONE` varchar(28) DEFAULT NULL,
  `GROUP_NAME` varchar(64) DEFAULT NULL,
  `STATUS` bigint(8) NOT NULL COMMENT '0：失效\n1：正常\n2：挂起',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `FREERES_SHARE_FLAG` bigint(1) NOT NULL COMMENT '0：不共享\n1：共享',
  `TENANT_ID` bigint(12) NOT NULL,
  `PARENT_GROUP_ID` bigint(15) DEFAULT NULL,
  KEY `IDX_I_GROUP_SONBR` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_group_member` */

DROP TABLE IF EXISTS `i_group_member`;

CREATE TABLE `i_group_member` (
  `GROUP_ID` bigint(15) NOT NULL,
  `USER_ID` bigint(15) DEFAULT NULL,
  `PHONE_ID` varchar(64) DEFAULT NULL,
  `SHORT_PHONE_ID` varchar(64) DEFAULT NULL COMMENT '群内用来互打的短号',
  `ROLE_ID` bigint(8) NOT NULL COMMENT '41：主号码\n42：普通成员（默认）',
  `NUMBER_TYPE` bigint(8) NOT NULL COMMENT '1：网内号码\n2：网外号码',
  `STATUS` bigint(8) NOT NULL COMMENT '1：正常(默认)\n2：挂起',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  KEY `IDX_I_GROUP_MEMBER_1` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_ismp_alarm_err` */

DROP TABLE IF EXISTS `i_ismp_alarm_err`;

CREATE TABLE `i_ismp_alarm_err` (
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `SERV_ID` bigint(14) DEFAULT NULL,
  `USER_NUMBER` varchar(15) DEFAULT NULL,
  `SP_CODE` varchar(32) DEFAULT NULL,
  `OPERATOR_CODE` varchar(32) DEFAULT NULL,
  `BILL_FLAG` bigint(4) DEFAULT NULL,
  `THIRD_MSISDN` varchar(15) DEFAULT NULL,
  `BILL_PROP` bigint(3) DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `SEQUENCE_NO` varchar(25) DEFAULT NULL,
  `ALARM_TYPE` bigint(6) DEFAULT NULL,
  `ALARM_PARA` varchar(64) DEFAULT NULL,
  `ALARM_SOURCE` bigint(2) DEFAULT NULL,
  `REGION_CODE` bigint(4) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `TOTAL_FEE` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) NOT NULL,
  `PRIORITY` bigint(4) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `NOTES` varchar(256) DEFAULT NULL,
  `SERVICE_CODE` varchar(32) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表说明：计费下发扣费提醒接口表错误表\n分表说明：按地市分表，地市前面加0，如I_ISMP_ALARM_0240。\n错误表：按地市分表，地市前面加0，如I_ISMP_ALARM_0240_ERR，新增字段TF_DATE、ERR_MSG。\n历史表：按地市和年月分表，地市前面加0，如I_ISMP_ALARM_H_0240_201210，新增TF_DATE用于分表。';

/*Table structure for table `i_ismp_alarm_h` */

DROP TABLE IF EXISTS `i_ismp_alarm_h`;

CREATE TABLE `i_ismp_alarm_h` (
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `SERV_ID` bigint(14) DEFAULT NULL,
  `USER_NUMBER` varchar(15) DEFAULT NULL,
  `SP_CODE` varchar(32) DEFAULT NULL,
  `OPERATOR_CODE` varchar(32) DEFAULT NULL,
  `BILL_FLAG` bigint(4) DEFAULT NULL,
  `THIRD_MSISDN` varchar(15) DEFAULT NULL,
  `BILL_PROP` bigint(3) DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `SEQUENCE_NO` varchar(25) DEFAULT NULL,
  `ALARM_TYPE` bigint(6) DEFAULT NULL,
  `ALARM_PARA` varchar(64) DEFAULT NULL,
  `ALARM_SOURCE` bigint(2) DEFAULT NULL,
  `REGION_CODE` bigint(4) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `TOTAL_FEE` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) NOT NULL,
  `PRIORITY` bigint(4) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `NOTES` varchar(256) DEFAULT NULL,
  `SERVICE_CODE` varchar(32) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表说明：计费下发扣费提醒接口表历史表\n分表说明：按地市分表，地市前面加0，如I_ISMP_ALARM_0240。\n错误表：按地市分表，地市前面加0，如I_ISMP_ALARM_0240_ERR，新增TF_DATE用于分表。\n历史表：按地市和年月分表，地市前面加0，如I_ISMP_ALARM_H_0240_201210，新增TF_DATE用于分表。';

/*Table structure for table `i_ismp_oper` */

DROP TABLE IF EXISTS `i_ismp_oper`;

CREATE TABLE `i_ismp_oper` (
  `SO_NBR` bigint(15) NOT NULL,
  `SID` bigint(9) NOT NULL,
  `BUSI_CODE` bigint(6) NOT NULL,
  `REGION_CODE` varchar(6) NOT NULL,
  `COUNTY_CODE` varchar(6) NOT NULL,
  `ORG_ID` bigint(12) NOT NULL,
  `SERV_ID` bigint(14) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `GROUP_ID` bigint(12) DEFAULT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `UP_FIELD` varchar(64) NOT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `UP_DATE` datetime NOT NULL,
  PRIMARY KEY (`SID`,`SO_NBR`,`UP_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表说明：用户上发工单表\n分表说明：根据地市分表，如I_ISMP_OPER_240\n历史表：根据地市和年月分表，如I_ISMP_OPER_H_240_201211\n错误表：根据地市分表，如I_ISMP_OPER_240_ERR';

/*Table structure for table `i_ismp_oper_err` */

DROP TABLE IF EXISTS `i_ismp_oper_err`;

CREATE TABLE `i_ismp_oper_err` (
  `SO_NBR` bigint(15) NOT NULL,
  `SID` bigint(9) NOT NULL,
  `BUSI_CODE` bigint(6) NOT NULL,
  `REGION_CODE` varchar(6) NOT NULL,
  `COUNTY_CODE` varchar(6) NOT NULL,
  `ORG_ID` bigint(12) NOT NULL,
  `SERV_ID` bigint(14) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `GROUP_ID` bigint(12) DEFAULT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `UP_FIELD` varchar(64) NOT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `UP_DATE` datetime NOT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`SID`,`SO_NBR`,`UP_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表说明：I_ISMP_OPER_ERR_240';

/*Table structure for table `i_ismp_oper_h` */

DROP TABLE IF EXISTS `i_ismp_oper_h`;

CREATE TABLE `i_ismp_oper_h` (
  `SO_NBR` bigint(15) NOT NULL,
  `SID` bigint(9) NOT NULL,
  `BUSI_CODE` bigint(6) NOT NULL,
  `REGION_CODE` varchar(6) NOT NULL,
  `COUNTY_CODE` varchar(6) NOT NULL,
  `ORG_ID` bigint(12) NOT NULL,
  `SERV_ID` bigint(14) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `GROUP_ID` bigint(12) DEFAULT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `UP_FIELD` varchar(64) NOT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `UP_DATE` datetime NOT NULL,
  `TF_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`SID`,`SO_NBR`,`UP_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表说明：用户上发工单表历史表\n分表说明：根据地市分表，如I_ISMP_OPER_H_240_201211';

/*Table structure for table `i_max_free_res` */

DROP TABLE IF EXISTS `i_max_free_res`;

CREATE TABLE `i_max_free_res` (
  `ACCT_ID` bigint(15) NOT NULL,
  `REMARK` varchar(256) DEFAULT NULL,
  `GROUP_USER_ID` bigint(15) NOT NULL,
  `GROUP_PHONE_ID` varchar(30) NOT NULL,
  `FLAG` bigint(2) NOT NULL COMMENT '1：抢占模式\n2：共享模式',
  `PRODUCT_ID` bigint(15) NOT NULL,
  `FREE_RES_ID` bigint(15) NOT NULL,
  `FREE_RES_VALUE` bigint(15) DEFAULT NULL,
  `FREE_RES_UNIT` varchar(30) NOT NULL,
  `OPER_TYPE` bigint(2) NOT NULL COMMENT '1:增加\n2：修改\n3：删除',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  `COMMIT_DATE` datetime DEFAULT NULL,
  `SO_NBR` bigint(15) DEFAULT NULL,
  `SPLIT_REGION_CODE` varchar(6) DEFAULT NULL,
  KEY `IDX_I_USER_RELATION_1` (`FREE_RES_UNIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_offer` */

DROP TABLE IF EXISTS `i_offer`;

CREATE TABLE `i_offer` (
  `OFFER_INST_ID` bigint(15) NOT NULL,
  `OFFER_ID` bigint(15) NOT NULL,
  `USER_ID` bigint(15) DEFAULT NULL,
  `ACCT_ID` bigint(15) DEFAULT NULL COMMENT '集群类业务的群产品订购，填的是虚用户；\n其它订购该值为空',
  `CUST_ID` bigint(15) DEFAULT NULL,
  `PAY_ACCT_ID` bigint(15) DEFAULT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  KEY `IDX_I_OFFER_SONBR` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_offer_rel` */

DROP TABLE IF EXISTS `i_offer_rel`;

CREATE TABLE `i_offer_rel` (
  `OFFER_INST_ID` bigint(15) NOT NULL,
  `REL_INST_ID` bigint(15) NOT NULL,
  `REL_TYPE` bigint(4) NOT NULL,
  `USER_ID` bigint(15) DEFAULT NULL,
  `ACCT_ID` bigint(15) DEFAULT NULL COMMENT '集群类业务的群产品订购，填的是虚用户；\n其它订购该值为空',
  `CUST_ID` bigint(15) DEFAULT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  KEY `IDX_I_OFFER_REL_SONBR` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_offerinst_os_process` */

DROP TABLE IF EXISTS `i_offerinst_os_process`;

CREATE TABLE `i_offerinst_os_process` (
  `ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) NOT NULL COMMENT '用户编号',
  `CUST_ID` bigint(14) NOT NULL COMMENT '客户编号',
  `OFFER_INST_ID` bigint(14) NOT NULL COMMENT '策划实例编号',
  `PROD_INST_ID` bigint(14) NOT NULL COMMENT '产品实例编号',
  `OS_STATE` varchar(64) NOT NULL COMMENT '停开机状态',
  `CREATE_DATE` datetime NOT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '完成日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '业务受理编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='  分表方式：根据租户分表（如I_OFFERINST_OS_PROCESS_21）';

/*Table structure for table `i_offerinst_os_process_h` */

DROP TABLE IF EXISTS `i_offerinst_os_process_h`;

CREATE TABLE `i_offerinst_os_process_h` (
  `ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) NOT NULL COMMENT '用户编号',
  `CUST_ID` bigint(14) NOT NULL COMMENT '客户编号',
  `OFFER_INST_ID` bigint(14) NOT NULL COMMENT '策划实例编号',
  `PROD_INST_ID` bigint(14) NOT NULL COMMENT '产品实例编号',
  `OS_STATE` varchar(64) NOT NULL COMMENT '停开机状态',
  `CREATE_DATE` datetime NOT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '完成日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '业务受理编码',
  `TF_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='  分表方式：根据租户和时间分表（如I_OFFERINST_OS_PROCESS_H_21_201512';

/*Table structure for table `i_open_pl_fnc_h` */

DROP TABLE IF EXISTS `i_open_pl_fnc_h`;

CREATE TABLE `i_open_pl_fnc_h` (
  `ID` bigint(15) NOT NULL COMMENT '编号',
  `PLAN_ID` bigint(15) DEFAULT NULL COMMENT '下周期计划编号',
  `USER_ID` bigint(15) NOT NULL COMMENT '用户编号',
  `PROD_SRV_ID` varchar(32) NOT NULL COMMENT '产品服务编号',
  `PRODUCT_ID` bigint(15) NOT NULL COMMENT '产品编号',
  `SERVICE_ID` bigint(15) NOT NULL COMMENT '服务编号',
  `INS_OFFER_ID` bigint(15) DEFAULT NULL COMMENT '策划实例编号',
  `OFFER_REGION_ID` varchar(6) DEFAULT NULL COMMENT '策划实例所在地市',
  `ROLE_ID` bigint(15) DEFAULT NULL COMMENT '用户角色编号',
  `STATUS` varchar(6) DEFAULT NULL COMMENT '服务状态',
  `EXTEND_ATTR_A` text,
  `EXTEND_ATTR_B` text,
  `EXTEND_ATTR_C` text,
  `EXTEND_ATTR_D` text,
  `EXTEND_ATTR_E` text,
  `EXTEND_ATTR_F` text,
  `EXTEND_ATTR_G` text,
  `EXTEND_ATTR_H` text,
  `EXTEND_ATTR_I` text,
  `EXTEND_ATTR_J` text,
  `EXTEND_ATTR_K` text,
  `EXTEND_ATTR_L` text,
  `EXTEND_ATTR_M` text,
  `EXTEND_ATTR_N` text,
  `EXTEND_ATTR_O` text,
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `CREATE_DATE` datetime NOT NULL COMMENT '建立时间',
  `COMPLETE_DATE` datetime DEFAULT NULL COMMENT '完成时间',
  `STATE` varchar(2) NOT NULL COMMENT '状态(C创建R处理中O结束)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开通接口用户功能历史表';

/*Table structure for table `i_open_plan` */

DROP TABLE IF EXISTS `i_open_plan`;

CREATE TABLE `i_open_plan` (
  `ID` bigint(15) NOT NULL COMMENT '编号',
  `USER_ID` bigint(15) NOT NULL COMMENT '用户编号',
  `BRAND_ID` bigint(15) DEFAULT NULL COMMENT '用户品牌',
  `TEMPLATE` varchar(32) NOT NULL COMMENT '产品模板编号',
  `PLAN_TYPE` varchar(32) DEFAULT NULL COMMENT '计划类型 \nCYCLE下周期计划\nMIDDLE月中期计划',
  `RESULT` varchar(2000) DEFAULT NULL COMMENT '流程处理结果',
  `BESPOK_TIME` bigint(15) NOT NULL COMMENT '预约时间，格式为YYYYMMDD',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `CREATE_DATE` datetime NOT NULL COMMENT '建立时间',
  `COMPLETE_DATE` datetime DEFAULT NULL COMMENT '完成时间',
  `STATE` varchar(2) NOT NULL COMMENT '状态(C创建R处理中O结束)',
  PRIMARY KEY (`ID`),
  KEY `IDX_OPEN_PLAN_USER` (`USER_ID`),
  KEY `IDX_OPEN_PLAN_BETIME` (`BESPOK_TIME`,`STATE`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开通接口下周期表';

/*Table structure for table `i_open_plan_err` */

DROP TABLE IF EXISTS `i_open_plan_err`;

CREATE TABLE `i_open_plan_err` (
  `ID` bigint(15) NOT NULL COMMENT '编号',
  `USER_ID` bigint(15) NOT NULL COMMENT '用户编号',
  `BRAND_ID` bigint(15) DEFAULT NULL COMMENT '用户品牌',
  `TEMPLATE` varchar(32) NOT NULL COMMENT '产品模板编号',
  `PLAN_TYPE` varchar(32) DEFAULT NULL COMMENT '计划类型 \nCYCLE下周期计划\nMIDDLE月中期计划',
  `RESULT` varchar(2000) DEFAULT NULL COMMENT '流程处理结果',
  `BESPOK_TIME` bigint(15) NOT NULL COMMENT '预约时间，格式为YYYYMMDD',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `CREATE_DATE` datetime NOT NULL COMMENT '建立时间',
  `COMPLETE_DATE` datetime DEFAULT NULL COMMENT '完成时间',
  `STATE` varchar(2) NOT NULL COMMENT '状态(C创建R处理中O结束)',
  `ERR_DATE` datetime DEFAULT NULL COMMENT '出错日期',
  `ERR_MSG` varchar(4000) DEFAULT NULL COMMENT '错误信息',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开通接口下周期错误表';

/*Table structure for table `i_open_plan_func` */

DROP TABLE IF EXISTS `i_open_plan_func`;

CREATE TABLE `i_open_plan_func` (
  `ID` bigint(15) NOT NULL COMMENT '编号',
  `PLAN_ID` bigint(15) DEFAULT NULL COMMENT '下周期计划编号',
  `USER_ID` bigint(15) NOT NULL COMMENT '用户编号',
  `PROD_SRV_ID` varchar(32) NOT NULL COMMENT '产品服务编号',
  `PRODUCT_ID` bigint(15) NOT NULL COMMENT '产品编号',
  `SERVICE_ID` bigint(15) NOT NULL COMMENT '服务编号',
  `INS_OFFER_ID` bigint(15) DEFAULT NULL COMMENT '策划实例编号',
  `OFFER_REGION_ID` varchar(6) DEFAULT NULL COMMENT '策划实例所在地市',
  `ROLE_ID` bigint(15) DEFAULT NULL COMMENT '用户角色编号',
  `STATUS` varchar(6) DEFAULT NULL COMMENT '服务状态',
  `EXTEND_ATTR_A` text,
  `EXTEND_ATTR_B` text,
  `EXTEND_ATTR_C` text,
  `EXTEND_ATTR_D` text,
  `EXTEND_ATTR_E` text,
  `EXTEND_ATTR_F` text,
  `EXTEND_ATTR_G` text,
  `EXTEND_ATTR_H` text,
  `EXTEND_ATTR_I` text,
  `EXTEND_ATTR_J` text,
  `EXTEND_ATTR_K` text,
  `EXTEND_ATTR_L` text,
  `EXTEND_ATTR_M` text,
  `EXTEND_ATTR_N` text,
  `EXTEND_ATTR_O` text,
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `CREATE_DATE` datetime NOT NULL COMMENT '建立时间',
  `COMPLETE_DATE` datetime DEFAULT NULL COMMENT '完成时间',
  `STATE` varchar(2) NOT NULL COMMENT '状态(C创建R处理中O结束)',
  PRIMARY KEY (`ID`),
  KEY `IDX_OPEN_PLAN_FUNC_USER` (`USER_ID`),
  KEY `IDX_OPEN_PLAN_FUNC_PLAN` (`PLAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开通接口下周期用户功能表';

/*Table structure for table `i_open_plan_h` */

DROP TABLE IF EXISTS `i_open_plan_h`;

CREATE TABLE `i_open_plan_h` (
  `ID` bigint(15) NOT NULL COMMENT '编号',
  `USER_ID` bigint(15) NOT NULL COMMENT '用户编号',
  `BRAND_ID` bigint(15) DEFAULT NULL COMMENT '用户品牌',
  `TEMPLATE` varchar(32) NOT NULL COMMENT '产品模板编号',
  `PLAN_TYPE` varchar(32) DEFAULT NULL COMMENT '计划类型 \nCYCLE下周期计划\nMIDDLE月中期计划',
  `RESULT` varchar(2000) DEFAULT NULL COMMENT '流程处理结果',
  `BESPOK_TIME` bigint(15) NOT NULL COMMENT '预约时间，格式为YYYYMMDD',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `CREATE_DATE` datetime NOT NULL COMMENT '建立时间',
  `COMPLETE_DATE` datetime DEFAULT NULL COMMENT '完成时间',
  `STATE` varchar(2) NOT NULL COMMENT '状态(C创建R处理中O结束)',
  `TF_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开通接口下周期历史表';

/*Table structure for table `i_open_prov_h` */

DROP TABLE IF EXISTS `i_open_prov_h`;

CREATE TABLE `i_open_prov_h` (
  `PS_ID` bigint(15) NOT NULL COMMENT '开通编号，自动生成的流水号。',
  `BUSI_CODE` bigint(7) NOT NULL COMMENT '同业务记录中的业务代码，区分具体业务类型，如开户、功能变更等。',
  `DONE_CODE` bigint(15) NOT NULL COMMENT '同业务记录中的受理编号。\n同时作为批操作的标志，在批开通时，done_code值相同的表示为一批。后台开通程序将根据don_code生成文件来批量处理。',
  `PS_TYPE` bigint(2) NOT NULL COMMENT '工单类别：\n1：自动电子工单。\n2：人工工单。\n3：自动转人工工单。\n4：人工转自动工单。',
  `PRIO_LEVEL` bigint(3) NOT NULL COMMENT '开通优先级，数值越大，优先级越高',
  `DEAD_LINE` bigint(10) DEFAULT NULL COMMENT '取系统的秒数+PS_DEAD_LINE的配制数',
  `SORT_ID` bigint(15) DEFAULT NULL COMMENT '根据PS_SPLIT_RULE表中生成',
  `PS_SERVICE_TYPE` varchar(30) NOT NULL COMMENT '1．对停复机指令：0表示开机、1表示管理停机、2表示营业停机、3表示帐务停机\n2．对程控功能修改、换号、换卡、换号换卡指令，存放用户当前停开状态：0表示开机、1表示停机。\n3．HLR查询指令，存放从HLR获取的用户停开机状态：0表示开机、1表示停机。\n4．对SMP开通无意义',
  `BILL_ID` varchar(64) DEFAULT NULL COMMENT '手机号，主计费号',
  `SUB_BILL_ID` varchar(64) DEFAULT NULL COMMENT 'IMSI号 次计费号',
  `PLAN_ID` bigint(8) DEFAULT NULL COMMENT '产品标识',
  `SUB_VALID_DATE` datetime NOT NULL COMMENT '定购生效时间，用于预约受理情况,开通程序应只处理当时时间迟于此字段标明时间之后的开通记录。',
  `UPP_CREATE_DATE` datetime DEFAULT NULL COMMENT '开通工单创建时间',
  `CREATE_DATE` datetime NOT NULL COMMENT '营业工单创建时间',
  `START_DATE` datetime DEFAULT NULL COMMENT '工单开始处理时间(SPLIT表表示网元开始处理时间,PROV表表示工单开始时间)',
  `END_DATE` datetime DEFAULT NULL COMMENT '工单结束处理时间(SPLIT表表示网元结束处理时间,PROV表表示工单结束时间)',
  `RET_DATE` datetime DEFAULT NULL COMMENT '工单回执时间',
  `STATUS_UPD_DATE` datetime NOT NULL COMMENT '最后开通状态修改时间',
  `MON_FLAG` bigint(3) DEFAULT '0' COMMENT '工单回执是否成功标识,1，失败，0，初始',
  `ACTION_ID` bigint(4) NOT NULL COMMENT '(根据情况来定，详见文档《BOSS的开通属性定义.xls》)',
  `OLD_PS_PARAM` varchar(2000) DEFAULT NULL COMMENT '开通参数，服务的基本属性service_id、bill_id、sub_passwd不在此字段中说明，而直接取自当前记录对应字段的值。格式为：‘feature_name1=value1; feature_name2=value2;…’例如：‘ai-Access-Type=3;ai-Max-Sessioai-Access-Type=3;ai-Max-Session =1;ai-Service-State=1;ai-SvcAuthen=1000;ai-SvcAcct=11000;PCNL 3;Framed-IP-Address=0.0.0.0;ai-RoamingLevel=1;AI-Credit-Level =2;',
  `PS_PARAM` varchar(4000) DEFAULT NULL COMMENT '开通参数，服务的基本属性service_id、bill_id、sub_passwd不在此字段中说明，而直接取自当前记录对应字段的值。格式为：‘feature_name1=value1; feature_name2=value2;…’例如：‘ai-Access-Type=3;ai-Max-Sessioai-Access-Type=3;ai-Max-Session =1;ai-Service-State=1;ai-SvcAuthen=1000;ai-SvcAcct=11000;PCNL 3;Framed-IP-Address=0.0.0.0;ai-RoamingLevel=1;AI-Credit-Level =2;',
  `TARGET_PARAM` varchar(2000) DEFAULT NULL COMMENT '从HLR读取信息存放点',
  `PS_STATUS` bigint(2) NOT NULL COMMENT '#define PROV_PS_STATUS_FAIL               -1 //失败\n\n#define PROV_PS_STATUS_ORG               0 //初始\n\n#define PROV_PS_STATUS_MID               1 //正在做\n\n#define PROV_PS_STATUS_ROLLBACK_CREATE      2 //失败工单执行了回退(回退工单已生成)\n\n#define  PROV_PS_STATUS_ROLLBACK_WAITING    3//回退中\n\n#define PROV_PS_STATUS_SPLITED           4 //拆分了\n\n#define PROV_PS_STATUS_SUSPEND           5 //工单挂起\n\n#define  PROV_PS_STATUS_MANUAL_INTF         6 //工单手工报俊\n\n#define  PROV_PS_STATUS_ORDER            7 //预约工单状态\n\n#define PROV_PS_STATUS_ROLLBACK             8 //回退成功\n\n#define PROV_PS_STATUS_SUCC                 9 //成功',
  `FAIL_NUM` bigint(3) DEFAULT '0' COMMENT '失败次数',
  `FAIL_REASON` varchar(2000) DEFAULT NULL COMMENT '失败原因',
  `FAIL_CODE` bigint(8) DEFAULT NULL COMMENT '失败代码',
  `HAND_ID` bigint(8) DEFAULT NULL COMMENT '手工工单编号,工单手工处理时的流水号。',
  `HAND_OP_ID` bigint(9) DEFAULT NULL COMMENT '手工工单派单人工号',
  `HAND_NOTES` varchar(255) DEFAULT NULL COMMENT '手工工单回单备注',
  `RET_OP_ID` bigint(9) DEFAULT NULL COMMENT '手工工单回单人工号',
  `RET_NOTES` varchar(255) DEFAULT NULL,
  `OP_ID` bigint(9) NOT NULL COMMENT '业务操作员工号',
  `SP_ID` bigint(6) DEFAULT NULL COMMENT '订购用户归属运营商',
  `SYS_CODE` varchar(32) DEFAULT NULL COMMENT '用来区别数据分往开通V3版本系统还是V2.5版本系统',
  `PDC_ROUTE_CODE` varchar(32) DEFAULT NULL COMMENT '分表路由',
  `REGION_CODE` varchar(6) DEFAULT NULL COMMENT '订购用户归属行政域',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '营业地区',
  `ORG_ID` bigint(9) DEFAULT NULL COMMENT '订购用户归属营业厅',
  `STOP_TYPE` bigint(2) DEFAULT NULL COMMENT '停机类型，（OPENBOSS版本备用）',
  `OLD_PS_ID` bigint(15) DEFAULT NULL,
  `ROLLBACK_FLAG` bigint(2) DEFAULT '0' COMMENT '1:可忽略失败，做成功处理\n2:不回退\n3:失败回退',
  `ASYNC_FLAG` bigint(1) DEFAULT '0' COMMENT '0:同步，1:异步\n异步工单的涵义为，当为异步工单时，主工单拆分后，\n就不管子工单什么时候运行结束，主工单会提前返回',
  `ACT_FLAG` bigint(1) DEFAULT '0' COMMENT '0:串行\n1:同物理设备串行\n2:所有并行',
  `PS_NET_CODE` varchar(10) DEFAULT NULL COMMENT 'RES_NUMHLR_MGR中的hlr_name， 对应于交换机名',
  `PS_DEVICE_CODE` varchar(30) DEFAULT NULL COMMENT '工单对应的物理设备，默认与PS_NET_CODE一样',
  `ACC_ID` bigint(11) DEFAULT NULL COMMENT '帐户编号',
  `SUB_ID` bigint(15) DEFAULT NULL COMMENT '定购序号，来源于定购表中对应字段。',
  `SUB_PASSWD` varchar(20) DEFAULT NULL COMMENT '定购密码（DES加密后的密码）',
  `HAND_DATE` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '手工工单派单日期',
  `SERVICE_ID` bigint(5) NOT NULL COMMENT 'CBS服务ID',
  `SUB_PLAN_NO` bigint(10) NOT NULL COMMENT '定购计划批号，此字段相同的开通记录要么都成功，要么都失败。来源于定购表中的sub_plan_no字段。',
  `NOTES` varchar(2000) DEFAULT NULL,
  `RETRY_TIMES` bigint(3) NOT NULL COMMENT '通允许重试次数',
  `FAIL_LOG` varchar(2000) DEFAULT NULL COMMENT '错误日志',
  `ORG_PS_ID` bigint(15) DEFAULT '0' COMMENT '如果这条是错误重试工单，那么ORG_PS_ID添对应的原始工单，否则默认为0',
  `ORDER_DATE` datetime DEFAULT NULL COMMENT '预约工单时间',
  `SUSPEND_PS_ID` bigint(15) DEFAULT '0' COMMENT '如果这条为串行工单，那么他有可能因为前面的工单没有完成所以被挂起，这里记录前面那个工单的PS_ID值，\n当前面那个工单完成后，去把这个工单放入SPLIT表',
  `TF_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`PS_ID`),
  KEY `IDX_OPEN_PROVS_H_1` (`BILL_ID`),
  KEY `IDX_OPEN_PROVS_H_2` (`CREATE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开通接口表';

/*Table structure for table `i_open_provision` */

DROP TABLE IF EXISTS `i_open_provision`;

CREATE TABLE `i_open_provision` (
  `PS_ID` bigint(15) NOT NULL COMMENT '开通编号，自动生成的流水号。',
  `BUSI_CODE` bigint(7) NOT NULL COMMENT '同业务记录中的业务代码，区分具体业务类型，如开户、功能变更等。',
  `DONE_CODE` bigint(15) NOT NULL COMMENT '同业务记录中的受理编号。\n同时作为批操作的标志，在批开通时，done_code值相同的表示为一批。后台开通程序将根据don_code生成文件来批量处理。',
  `PS_TYPE` bigint(2) NOT NULL COMMENT '工单类别：\n1：自动电子工单。\n2：人工工单。\n3：自动转人工工单。\n4：人工转自动工单。',
  `PRIO_LEVEL` bigint(3) NOT NULL COMMENT '开通优先级，数值越大，优先级越高',
  `DEAD_LINE` bigint(10) DEFAULT NULL COMMENT '取系统的秒数+PS_DEAD_LINE的配制数',
  `SORT_ID` bigint(15) DEFAULT NULL COMMENT '根据PS_SPLIT_RULE表中生成',
  `PS_SERVICE_TYPE` varchar(30) NOT NULL COMMENT '1．对停复机指令：0表示开机、1表示管理停机、2表示营业停机、3表示帐务停机\n2．对程控功能修改、换号、换卡、换号换卡指令，存放用户当前停开状态：0表示开机、1表示停机。\n3．HLR查询指令，存放从HLR获取的用户停开机状态：0表示开机、1表示停机。\n4．对SMP开通无意义',
  `BILL_ID` varchar(64) DEFAULT NULL COMMENT '手机号，主计费号',
  `SUB_BILL_ID` varchar(64) DEFAULT NULL COMMENT 'IMSI号 次计费号',
  `PLAN_ID` bigint(8) DEFAULT NULL COMMENT '产品标识',
  `SUB_VALID_DATE` datetime NOT NULL COMMENT '定购生效时间，用于预约受理情况,开通程序应只处理当时时间迟于此字段标明时间之后的开通记录。',
  `UPP_CREATE_DATE` datetime DEFAULT NULL COMMENT '开通工单创建时间',
  `CREATE_DATE` datetime NOT NULL COMMENT '营业工单创建时间',
  `START_DATE` datetime DEFAULT NULL COMMENT '工单开始处理时间(SPLIT表表示网元开始处理时间,PROV表表示工单开始时间)',
  `END_DATE` datetime DEFAULT NULL COMMENT '工单结束处理时间(SPLIT表表示网元结束处理时间,PROV表表示工单结束时间)',
  `RET_DATE` datetime DEFAULT NULL COMMENT '工单回执时间',
  `STATUS_UPD_DATE` datetime NOT NULL COMMENT '最后开通状态修改时间',
  `MON_FLAG` bigint(3) DEFAULT '0' COMMENT '工单回执是否成功标识,1，失败，0，初始',
  `ACTION_ID` bigint(4) NOT NULL COMMENT '(根据情况来定，详见文档《BOSS的开通属性定义.xls》)',
  `OLD_PS_PARAM` varchar(2000) DEFAULT NULL COMMENT '开通参数，服务的基本属性service_id、bill_id、sub_passwd不在此字段中说明，而直接取自当前记录对应字段的值。格式为：‘feature_name1=value1; feature_name2=value2;…’例如：‘ai-Access-Type=3;ai-Max-Sessioai-Access-Type=3;ai-Max-Session =1;ai-Service-State=1;ai-SvcAuthen=1000;ai-SvcAcct=11000;PCNL 3;Framed-IP-Address=0.0.0.0;ai-RoamingLevel=1;AI-Credit-Level =2;',
  `PS_PARAM` varchar(4000) DEFAULT NULL COMMENT '开通参数，服务的基本属性service_id、bill_id、sub_passwd不在此字段中说明，而直接取自当前记录对应字段的值。格式为：‘feature_name1=value1; feature_name2=value2;…’例如：‘ai-Access-Type=3;ai-Max-Sessioai-Access-Type=3;ai-Max-Session =1;ai-Service-State=1;ai-SvcAuthen=1000;ai-SvcAcct=11000;PCNL 3;Framed-IP-Address=0.0.0.0;ai-RoamingLevel=1;AI-Credit-Level =2;',
  `TARGET_PARAM` varchar(2000) DEFAULT NULL COMMENT '从HLR读取信息存放点',
  `PS_STATUS` bigint(2) NOT NULL COMMENT '#define PROV_PS_STATUS_FAIL               -1 //失败\n\n#define PROV_PS_STATUS_ORG               0 //初始\n\n#define PROV_PS_STATUS_MID               1 //正在做\n\n#define PROV_PS_STATUS_ROLLBACK_CREATE      2 //失败工单执行了回退(回退工单已生成)\n\n#define  PROV_PS_STATUS_ROLLBACK_WAITING    3//回退中\n\n#define PROV_PS_STATUS_SPLITED           4 //拆分了\n\n#define PROV_PS_STATUS_SUSPEND           5 //工单挂起\n\n#define  PROV_PS_STATUS_MANUAL_INTF         6 //工单手工报俊\n\n#define  PROV_PS_STATUS_ORDER            7 //预约工单状态\n\n#define PROV_PS_STATUS_ROLLBACK             8 //回退成功\n\n#define PROV_PS_STATUS_SUCC                 9 //成功',
  `FAIL_NUM` bigint(3) DEFAULT '0' COMMENT '失败次数',
  `FAIL_REASON` varchar(2000) DEFAULT NULL COMMENT '失败原因',
  `FAIL_CODE` bigint(8) DEFAULT NULL COMMENT '失败代码',
  `HAND_ID` bigint(8) DEFAULT NULL COMMENT '手工工单编号,工单手工处理时的流水号。',
  `HAND_OP_ID` bigint(9) DEFAULT NULL COMMENT '手工工单派单人工号',
  `HAND_NOTES` varchar(255) DEFAULT NULL COMMENT '手工工单回单备注',
  `RET_OP_ID` bigint(9) DEFAULT NULL COMMENT '手工工单回单人工号',
  `RET_NOTES` varchar(255) DEFAULT NULL,
  `OP_ID` bigint(9) NOT NULL COMMENT '业务操作员工号',
  `SP_ID` bigint(6) DEFAULT NULL COMMENT '订购用户归属运营商',
  `SYS_CODE` varchar(32) DEFAULT NULL COMMENT '区分记录发往开通V3版本还是V2.5版本',
  `PDC_ROUTE_CODE` varchar(32) DEFAULT NULL COMMENT '分表路由',
  `REGION_CODE` varchar(6) DEFAULT NULL COMMENT '订购用户归属行政域',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '营业地区',
  `ORG_ID` bigint(9) DEFAULT NULL COMMENT '订购用户归属营业厅',
  `STOP_TYPE` bigint(2) DEFAULT NULL COMMENT '停机类型，（OPENBOSS版本备用）',
  `OLD_PS_ID` bigint(15) DEFAULT NULL,
  `ROLLBACK_FLAG` bigint(2) DEFAULT '0' COMMENT '1:可忽略失败，做成功处理\n2:不回退\n3:失败回退',
  `ASYNC_FLAG` bigint(1) DEFAULT '0' COMMENT '0:同步，1:异步\n异步工单的涵义为，当为异步工单时，主工单拆分后，\n就不管子工单什么时候运行结束，主工单会提前返回',
  `ACT_FLAG` bigint(1) DEFAULT '0' COMMENT '0:串行\n1:同物理设备串行\n2:所有并行',
  `PS_NET_CODE` varchar(10) DEFAULT NULL COMMENT 'RES_NUMHLR_MGR中的hlr_name， 对应于交换机名',
  `PS_DEVICE_CODE` varchar(30) DEFAULT NULL COMMENT '工单对应的物理设备，默认与PS_NET_CODE一样',
  `ACC_ID` bigint(11) DEFAULT NULL COMMENT '帐户编号',
  `SUB_ID` bigint(15) DEFAULT NULL COMMENT '定购序号，来源于定购表中对应字段。',
  `SUB_PASSWD` varchar(20) DEFAULT NULL COMMENT '定购密码（DES加密后的密码）',
  `HAND_DATE` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '手工工单派单日期',
  `SERVICE_ID` bigint(5) NOT NULL COMMENT 'CBS服务ID',
  `SUB_PLAN_NO` bigint(10) NOT NULL COMMENT '定购计划批号，此字段相同的开通记录要么都成功，要么都失败。来源于定购表中的sub_plan_no字段。',
  `NOTES` varchar(2000) DEFAULT NULL,
  `RETRY_TIMES` bigint(3) NOT NULL COMMENT '通允许重试次数',
  `FAIL_LOG` varchar(2000) DEFAULT NULL COMMENT '错误日志',
  `ORG_PS_ID` bigint(15) DEFAULT '0' COMMENT '如果这条是错误重试工单，那么ORG_PS_ID添对应的原始工单，否则默认为0',
  `ORDER_DATE` datetime DEFAULT NULL COMMENT '预约工单时间',
  `SUSPEND_PS_ID` bigint(15) DEFAULT '0' COMMENT '如果这条为串行工单，那么他有可能因为前面的工单没有完成所以被挂起，这里记录前面那个工单的PS_ID值，\n当前面那个工单完成后，去把这个工单放入SPLIT表',
  PRIMARY KEY (`PS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开通接口表';

/*Table structure for table `i_open_provision_reset` */

DROP TABLE IF EXISTS `i_open_provision_reset`;

CREATE TABLE `i_open_provision_reset` (
  `PS_ID` bigint(15) NOT NULL COMMENT '开通编号，自动生成的流水号。',
  `BUSI_CODE` bigint(7) NOT NULL,
  `DONE_CODE` bigint(15) NOT NULL COMMENT '受理编号，调用者操作业务的受理编号。同时作为批操作的标志，在批开通时，done_code值相同的表示为一批。后台开通程序将根据don_code生成文件来批量处理。',
  `PS_TYPE` bigint(2) NOT NULL COMMENT '#define PS_AUTO_SINGLE              1	//自动单条工单\n#define PS_MANUAL_SINGLE            2	//人工单条工单\n#define PS_AUTO_BAT                 3	//自动批处理工单\n#define PS_MANUAL_BAT               4	//人工批处理工单\n#define PS_AUTO_MANUAL              5	//自动转人工工单\n#define PS_MANUAL_AUTO              6	//人工转自动工单\n#define	PS_ROLLBACK		    7	//回退工单\n//拆分后的原始工单为原值＋10，拆分工单为原值＋20，拆分工单为要回置参数的查询工单为＋30',
  `PRIO_LEVEL` bigint(3) NOT NULL COMMENT '开通优先级，来源于业务代码表(SYS_BUSINESS_CODE)中的开通优先级。',
  `DEAD_LINE` bigint(10) DEFAULT NULL COMMENT '取系统的秒数+PS_DEAD_LINE的配制数',
  `SORT_ID` bigint(15) DEFAULT NULL,
  `PS_SERVICE_TYPE` varchar(30) NOT NULL COMMENT 'PS开通类型\n1HLR工单\n2智能网工单\n14AUC工单',
  `BILL_ID` varchar(64) DEFAULT NULL COMMENT '主计费号',
  `SUB_BILL_ID` varchar(64) DEFAULT NULL COMMENT '次计费号',
  `PLAN_ID` bigint(8) DEFAULT NULL COMMENT '产品标识',
  `SUB_VALID_DATE` datetime NOT NULL COMMENT '定购生效时间，用于预约受理情况,开通程序应只处理当时时间迟于此字段标明时间之后的开通记录。',
  `UPP_CREATE_DATE` datetime DEFAULT NULL COMMENT '开通工单创建时间',
  `CREATE_DATE` datetime NOT NULL COMMENT '营业工单创建时间',
  `START_DATE` datetime DEFAULT NULL COMMENT '工单开始处理时间(SPLIT表表示网元开始处理时间,PROV表表示工单开始时间)',
  `END_DATE` datetime DEFAULT NULL COMMENT '工单结束处理时间(SPLIT表表示网元结束处理时间,PROV表表示工单结束时间)',
  `RET_DATE` datetime DEFAULT NULL COMMENT '工单回执时间',
  `STATUS_UPD_DATE` datetime NOT NULL COMMENT '最后开通状态修改时间',
  `MON_FLAG` bigint(3) DEFAULT '0' COMMENT '工单回执是否成功标识,1，失败，0，初始',
  `ACTION_ID` bigint(4) NOT NULL COMMENT '(根据情况来定，详见文档《BOSS的开通属性定义.xls》)',
  `OLD_PS_PARAM` text COMMENT '开通参数，服务的基本属性service_id、bill_id、sub_passwd不在此字段中说明，而直接取自当前记录对应字段的值。格式为：‘feature_name1=value1; feature_name2=value2;…’例如：‘ai-Access-Type=3;ai-Max-Sessioai-Access-Type=3;ai-Max-Session =1;ai-Service-State=1;ai-SvcAuthen=1000;ai-SvcAcct=11000;PCNL 3;Framed-IP-Address=0.0.0.0;ai-RoamingLevel=1;AI-Credit-Level =2;’',
  `PS_PARAM` text COMMENT '开通参数，服务的基本属性service_id、bill_id、sub_passwd不在此字段中说明，而直接取自当前记录对应字段的值。格式为：‘feature_name1=value1; feature_name2=value2;…’例如：‘ai-Access-Type=3;ai-Max-Sessioai-Access-Type=3;ai-Max-Session =1;ai-Service-State=1;ai-SvcAuthen=1000;ai-SvcAcct=11000;PCNL 3;Framed-IP-Address=0.0.0.0;ai-RoamingLevel=1;AI-Credit-Level =2;’',
  `TARGET_PARAM` text COMMENT '做从HLR读取信息存放点',
  `PS_STATUS` bigint(2) NOT NULL COMMENT 'PS_ROLLBACK_FAILED			= -99,	//回退失败\n		PS_FAILED					= -1,	//开通失败	<0\n		PS_DEFAULT					= 0,	//初始状态\n		PS_PROCCESSING				= 1,	//工单处理中\n		PS_ROLLBACK					= 2,	//失败工单执行了回退(回退工单已生成)\n		PS_ROLLBACK_WAITING			= 3,	//回退中\n		PS_SPLIT					= 4,	//工单已拆分处理\n		PS_IGNORE					= 5,	//工单挂起 \n		PS_ROLLBACK_SUCCESS			= 8,	//回退成功\n		PS_SUCCESS					= 9,	//开通成功',
  `FAIL_NUM` bigint(3) DEFAULT '0' COMMENT '失败次数',
  `FAIL_REASON` text COMMENT '失败原因',
  `FAIL_CODE` bigint(8) DEFAULT NULL COMMENT '失败代码',
  `HAND_ID` bigint(8) DEFAULT NULL COMMENT '手工工单编号,工单手工处理时的流水号。',
  `HAND_OP_ID` bigint(9) DEFAULT NULL COMMENT '手工工单派单人工号',
  `HAND_NOTES` varchar(255) DEFAULT NULL COMMENT '手工工单派单备注',
  `RET_OP_ID` bigint(9) DEFAULT NULL COMMENT '手工工单回单人工号',
  `RET_NOTES` varchar(255) DEFAULT NULL COMMENT '手工工单回单备注',
  `OP_ID` bigint(9) NOT NULL COMMENT '业务操作员工号',
  `SP_ID` bigint(6) DEFAULT NULL COMMENT '订购用户归属运营商',
  `REGION_CODE` varchar(6) DEFAULT NULL COMMENT '订购用户归属行政域',
  `REGION_ID` varchar(6) NOT NULL COMMENT '营业用户归属行政域',
  `ORG_ID` bigint(9) DEFAULT NULL COMMENT '订购用户归属营业厅',
  `STOP_TYPE` bigint(2) DEFAULT NULL COMMENT '停机类型，（OPENBOSS版本备用）',
  `OLD_PS_ID` bigint(15) DEFAULT NULL,
  `ROLLBACK_FLAG` bigint(2) DEFAULT '0' COMMENT '1:可忽略失败，做成功处理\n2:不回退\n3:失败回退',
  `ASYNC_FLAG` bigint(1) DEFAULT '0' COMMENT '0:同步，1:异步\n异步工单的涵义为，当为异步工单时，主工单拆分后，\n就不管子工单什么时候运行结束，主工单会提前返回',
  `ACT_FLAG` bigint(1) DEFAULT '0' COMMENT '0:串行\n1:同物理设备串行\n2:所有并行',
  `PS_NET_CODE` varchar(10) DEFAULT NULL COMMENT '指RES_NUMHLR_MGR中的hlr_name， 对应于交换机名',
  `PS_DEVICE_CODE` varchar(30) DEFAULT NULL COMMENT '工单对应的物理设备，默认与PS_NET_CODE一样',
  `ACC_ID` bigint(11) DEFAULT NULL COMMENT '帐户编号',
  `SUB_ID` bigint(15) DEFAULT NULL COMMENT '定购序号，来源于定购表中对应字段。',
  `SUB_PASSWD` varchar(20) DEFAULT NULL COMMENT '定购密码（DES加密后的密码）',
  `HAND_DATE` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '手工工单派单日期',
  `SERVICE_ID` bigint(5) NOT NULL COMMENT 'CBS服务ID',
  `SUB_PLAN_NO` bigint(10) NOT NULL COMMENT '定购计划批号，此字段相同的开通记录要么都成功，要么都失败。来源于定购表中的sub_plan_no字段。',
  `NOTES` varchar(2000) DEFAULT NULL,
  `RETRY_TIMES` bigint(3) NOT NULL COMMENT '开通允许重试次数',
  `FAIL_LOG` varchar(4000) DEFAULT NULL COMMENT '错误日志',
  `ORG_PS_ID` bigint(15) DEFAULT '0' COMMENT '如果这条是错误重试工单，那么ORG_PS_ID添对应的原始工单，否则默认为0',
  `ORDER_DATE` datetime DEFAULT NULL COMMENT '预约工单时间',
  `SUSPEND_PS_ID` bigint(15) DEFAULT '0' COMMENT '如果这条为串行工单，那么他有可能因为前面的工单没有完成所以被挂起，\n这里记录前面那个工单的PS_ID值，\n当前面那个工单完成后，去把这个工单放入SPLIT表',
  PRIMARY KEY (`PS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='统一开通接口回执表\n分表方式：按地市进行分表，I_OPEN_PROVISION_RESET_XXX';

/*Table structure for table `i_open_provision_wait` */

DROP TABLE IF EXISTS `i_open_provision_wait`;

CREATE TABLE `i_open_provision_wait` (
  `ID` bigint(15) NOT NULL COMMENT '接口工单编号',
  `CUST_ORDER_ID` bigint(15) DEFAULT NULL COMMENT '客户订单编号',
  `OFFER_ORDER_ID` bigint(15) NOT NULL COMMENT '策划订单编号',
  `VM_TASK_ID` bigint(15) DEFAULT NULL COMMENT '流程任务编号',
  `USER_ID` bigint(15) NOT NULL COMMENT '用户编号',
  `BILL_ID` varchar(32) NOT NULL COMMENT '用户号码',
  `PLATFORM` varchar(32) NOT NULL COMMENT '网元编码',
  `UPI_BWO_ID` varchar(64) DEFAULT NULL COMMENT '外围接口表编号',
  `PS_SERVICE` varchar(32) DEFAULT NULL COMMENT '服务类型',
  `OPERATE_CODE` varchar(32) NOT NULL COMMENT '网元操作',
  `TARGET` varchar(4000) DEFAULT NULL COMMENT '网元应答结果',
  `SRC_SYSTEM` varchar(64) NOT NULL COMMENT '系统来源',
  `SRC_SYSTEM_CODE` varchar(64) NOT NULL COMMENT '操作类型',
  `RESULT` varchar(2000) DEFAULT NULL COMMENT '流程处理结果',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `CREATE_DATE` datetime NOT NULL COMMENT '建立时间',
  `COMPLETE_DATE` datetime DEFAULT NULL COMMENT '完成时间',
  `STATE` varchar(2) NOT NULL COMMENT '状态(C创建R处理中O结束,E异常)',
  PRIMARY KEY (`ID`),
  KEY `IDX_I_OPEN_PROVISION_WAIT_1` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开通接口网元在途表';

/*Table structure for table `i_open_psrese_h` */

DROP TABLE IF EXISTS `i_open_psrese_h`;

CREATE TABLE `i_open_psrese_h` (
  `PS_ID` bigint(15) NOT NULL COMMENT '开通编号，自动生成的流水号。',
  `BUSI_CODE` bigint(7) NOT NULL COMMENT '同业务记录中的业务代码，区分具体业务类型，如开户、功能变更等。',
  `DONE_CODE` bigint(15) NOT NULL COMMENT '同业务记录中的受理编号。\n同时作为批操作的标志，在批开通时，done_code值相同的表示为一批。后台开通程序将根据don_code生成文件来批量处理。',
  `PS_TYPE` bigint(2) NOT NULL COMMENT '工单类别：\n1：自动电子工单。\n2：人工工单。\n3：自动转人工工单。\n4：人工转自动工单。',
  `PRIO_LEVEL` bigint(3) NOT NULL COMMENT '开通优先级，数值越大，优先级越高',
  `DEAD_LINE` bigint(10) DEFAULT NULL COMMENT '取系统的秒数+PS_DEAD_LINE的配制数',
  `SORT_ID` bigint(15) DEFAULT NULL COMMENT '根据PS_SPLIT_RULE表中生成',
  `PS_SERVICE_TYPE` varchar(30) NOT NULL COMMENT '1．对停复机指令：0表示开机、1表示管理停机、2表示营业停机、3表示帐务停机\n2．对程控功能修改、换号、换卡、换号换卡指令，存放用户当前停开状态：0表示开机、1表示停机。\n3．HLR查询指令，存放从HLR获取的用户停开机状态：0表示开机、1表示停机。\n4．对SMP开通无意义',
  `BILL_ID` varchar(64) DEFAULT NULL COMMENT '手机号，主计费号',
  `SUB_BILL_ID` varchar(64) DEFAULT NULL COMMENT 'IMSI号 次计费号',
  `PLAN_ID` bigint(8) DEFAULT NULL COMMENT '产品标识',
  `SUB_VALID_DATE` datetime NOT NULL COMMENT '定购生效时间，用于预约受理情况,开通程序应只处理当时时间迟于此字段标明时间之后的开通记录。',
  `UPP_CREATE_DATE` datetime DEFAULT NULL COMMENT '开通工单创建时间',
  `CREATE_DATE` datetime NOT NULL COMMENT '营业工单创建时间',
  `START_DATE` datetime DEFAULT NULL COMMENT '工单开始处理时间(SPLIT表表示网元开始处理时间,PROV表表示工单开始时间)',
  `END_DATE` datetime DEFAULT NULL COMMENT '工单结束处理时间(SPLIT表表示网元结束处理时间,PROV表表示工单结束时间)',
  `RET_DATE` datetime DEFAULT NULL COMMENT '工单回执时间',
  `STATUS_UPD_DATE` datetime NOT NULL COMMENT '最后开通状态修改时间',
  `MON_FLAG` bigint(3) DEFAULT '0' COMMENT '工单回执是否成功标识,1，失败，0，初始',
  `ACTION_ID` bigint(4) NOT NULL COMMENT '(根据情况来定，详见文档《BOSS的开通属性定义.xls》)',
  `OLD_PS_PARAM` text COMMENT '开通参数，服务的基本属性service_id、bill_id、sub_passwd不在此字段中说明，而直接取自当前记录对应字段的值。格式为：‘feature_name1=value1; feature_name2=value2;…’例如：‘ai-Access-Type=3;ai-Max-Sessioai-Access-Type=3;ai-Max-Session =1;ai-Service-State=1;ai-SvcAuthen=1000;ai-SvcAcct=11000;PCNL 3;Framed-IP-Address=0.0.0.0;ai-RoamingLevel=1;AI-Credit-Level =2;',
  `PS_PARAM` text COMMENT '开通参数，服务的基本属性service_id、bill_id、sub_passwd不在此字段中说明，而直接取自当前记录对应字段的值。格式为：‘feature_name1=value1; feature_name2=value2;…’例如：‘ai-Access-Type=3;ai-Max-Sessioai-Access-Type=3;ai-Max-Session =1;ai-Service-State=1;ai-SvcAuthen=1000;ai-SvcAcct=11000;PCNL 3;Framed-IP-Address=0.0.0.0;ai-RoamingLevel=1;AI-Credit-Level =2;',
  `TARGET_PARAM` text COMMENT '从HLR读取信息存放点',
  `PS_STATUS` bigint(2) NOT NULL COMMENT '#define PROV_PS_STATUS_FAIL               -1 //失败\n\n#define PROV_PS_STATUS_ORG               0 //初始\n\n#define PROV_PS_STATUS_MID               1 //正在做\n\n#define PROV_PS_STATUS_ROLLBACK_CREATE      2 //失败工单执行了回退(回退工单已生成)\n\n#define  PROV_PS_STATUS_ROLLBACK_WAITING    3//回退中\n\n#define PROV_PS_STATUS_SPLITED           4 //拆分了\n\n#define PROV_PS_STATUS_SUSPEND           5 //工单挂起\n\n#define  PROV_PS_STATUS_MANUAL_INTF         6 //工单手工报俊\n\n#define  PROV_PS_STATUS_ORDER            7 //预约工单状态\n\n#define PROV_PS_STATUS_ROLLBACK             8 //回退成功\n\n#define PROV_PS_STATUS_SUCC                 9 //成功',
  `FAIL_NUM` bigint(3) DEFAULT '0' COMMENT '失败次数',
  `FAIL_REASON` text COMMENT '失败原因',
  `FAIL_CODE` bigint(8) DEFAULT NULL COMMENT '失败代码',
  `HAND_ID` bigint(8) DEFAULT NULL COMMENT '手工工单编号,工单手工处理时的流水号。',
  `HAND_OP_ID` bigint(9) DEFAULT NULL COMMENT '手工工单派单人工号',
  `HAND_NOTES` varchar(255) DEFAULT NULL COMMENT '手工工单回单备注',
  `RET_OP_ID` bigint(9) DEFAULT NULL COMMENT '手工工单回单人工号',
  `RET_NOTES` varchar(255) DEFAULT NULL,
  `OP_ID` bigint(9) NOT NULL COMMENT '业务操作员工号',
  `SP_ID` bigint(6) DEFAULT NULL COMMENT '订购用户归属运营商',
  `REGION_CODE` varchar(6) DEFAULT NULL COMMENT '订购用户归属行政域',
  `ORG_ID` bigint(9) DEFAULT NULL COMMENT '订购用户归属营业厅',
  `STOP_TYPE` bigint(2) DEFAULT NULL COMMENT '停机类型，（OPENBOSS版本备用）',
  `OLD_PS_ID` bigint(15) DEFAULT NULL,
  `ROLLBACK_FLAG` bigint(2) DEFAULT '0' COMMENT '1:可忽略失败，做成功处理\n2:不回退\n3:失败回退',
  `ASYNC_FLAG` bigint(1) DEFAULT '0' COMMENT '0:同步，1:异步\n异步工单的涵义为，当为异步工单时，主工单拆分后，\n就不管子工单什么时候运行结束，主工单会提前返回',
  `ACT_FLAG` bigint(1) DEFAULT '0' COMMENT '0:串行\n1:同物理设备串行\n2:所有并行',
  `PS_NET_CODE` varchar(10) DEFAULT NULL COMMENT 'RES_NUMHLR_MGR中的hlr_name， 对应于交换机名',
  `PS_DEVICE_CODE` varchar(30) DEFAULT NULL COMMENT '工单对应的物理设备，默认与PS_NET_CODE一样',
  `ACC_ID` bigint(11) DEFAULT NULL COMMENT '帐户编号',
  `SUB_ID` bigint(15) DEFAULT NULL COMMENT '定购序号，来源于定购表中对应字段。',
  `SUB_PASSWD` varchar(20) DEFAULT NULL COMMENT '定购密码（DES加密后的密码）',
  `HAND_DATE` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '手工工单派单日期',
  `SERVICE_ID` bigint(5) NOT NULL COMMENT 'CBS服务ID',
  `SUB_PLAN_NO` bigint(10) NOT NULL COMMENT '定购计划批号，此字段相同的开通记录要么都成功，要么都失败。来源于定购表中的sub_plan_no字段。',
  `NOTES` varchar(2000) DEFAULT NULL,
  `RETRY_TIMES` bigint(3) NOT NULL COMMENT '通允许重试次数',
  `FAIL_LOG` varchar(4000) DEFAULT NULL COMMENT '错误日志',
  `ORG_PS_ID` bigint(15) DEFAULT '0' COMMENT '如果这条是错误重试工单，那么ORG_PS_ID添对应的原始工单，否则默认为0',
  `ORDER_DATE` datetime DEFAULT NULL COMMENT '预约工单时间',
  `SUSPEND_PS_ID` bigint(15) DEFAULT '0' COMMENT '如果这条为串行工单，那么他有可能因为前面的工单没有完成所以被挂起，这里记录前面那个工单的PS_ID值，\n当前面那个工单完成后，去把这个工单放入SPLIT表',
  `TF_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='统一开通接口回执历史表';

/*Table structure for table `i_open_queue` */

DROP TABLE IF EXISTS `i_open_queue`;

CREATE TABLE `i_open_queue` (
  `ID` bigint(15) NOT NULL COMMENT '队列编号',
  `INSTANCE_ID` bigint(15) NOT NULL COMMENT '任务编号',
  `TYPE` varchar(64) NOT NULL COMMENT '队列类型(IUcm2WrkflwL流程回复调度IUsm2RollbWL回滚流程作业IUsm2WscketL网元流程作业)',
  `USER_ID` bigint(15) NOT NULL COMMENT '用户编号',
  `BILL_ID` varchar(32) NOT NULL COMMENT '用户号码',
  `PLATFORM_` varchar(32) NOT NULL COMMENT '网元编码',
  `PRIORITY` bigint(3) DEFAULT NULL COMMENT '优先级',
  `REDO_TIMES` bigint(4) DEFAULT NULL COMMENT '重做次数',
  `DONE_TIMES` bigint(4) DEFAULT NULL COMMENT '实际重做次数',
  `SRC` varchar(64) DEFAULT NULL COMMENT '数据来源(NORMAL正常流程HUMAN落地流程)',
  `EXTEND_ATTR_A` text,
  `EXTEND_ATTR_B` text,
  `EXTEND_ATTR_C` text,
  `EXTEND_ATTR_D` text,
  `EXTEND_ATTR_E` text,
  `EXTEND_ATTR_F` text,
  `EXTEND_ATTR_G` text,
  `EXTEND_ATTR_H` text,
  `EXTEND_ATTR_I` text,
  `EXTEND_ATTR_J` text,
  `EXTEND_ATTR_K` text,
  `EXTEND_ATTR_L` text,
  `EXTEND_ATTR_M` text,
  `EXTEND_ATTR_N` text,
  `EXTEND_ATTR_O` text,
  `RESULT` text COMMENT '流程处理结果',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `CREATE_DATE` datetime NOT NULL COMMENT '建立时间',
  `COMPLETE_DATE` datetime DEFAULT NULL COMMENT '完成时间',
  `STATE` varchar(2) NOT NULL COMMENT '状态(C创建R处理中O结束,E异常)',
  PRIMARY KEY (`ID`),
  KEY `IDX_OPEN_QUEUE_TYPPF` (`TYPE`,`PLATFORM_`),
  KEY `IDX_OPEN_QUEUE_TYPIID` (`TYPE`,`INSTANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开通接口调度队列消息';

/*Table structure for table `i_open_queue_h` */

DROP TABLE IF EXISTS `i_open_queue_h`;

CREATE TABLE `i_open_queue_h` (
  `ID` bigint(15) NOT NULL COMMENT '队列编号',
  `INSTANCE_ID` bigint(15) NOT NULL COMMENT '任务编号',
  `TYPE` varchar(64) NOT NULL COMMENT '队列类型(IUcm2WrkflwL流程回复调度IUsm2RollbWL回滚流程作业IUsm2WscketL网元流程作业)',
  `USER_ID` bigint(15) NOT NULL COMMENT '用户编号',
  `BILL_ID` varchar(32) NOT NULL COMMENT '用户号码',
  `PLATFORM_` varchar(32) NOT NULL COMMENT '网元编码',
  `PRIORITY` bigint(3) DEFAULT NULL COMMENT '优先级',
  `REDO_TIMES` bigint(4) DEFAULT NULL COMMENT '重做次数',
  `DONE_TIMES` bigint(4) DEFAULT NULL COMMENT '实际重做次数',
  `SRC` varchar(64) DEFAULT NULL COMMENT '数据来源(NORMAL正常流程HUMAN落地流程)',
  `EXTEND_ATTR_A` text,
  `EXTEND_ATTR_B` text,
  `EXTEND_ATTR_C` text,
  `EXTEND_ATTR_D` text,
  `EXTEND_ATTR_E` text,
  `EXTEND_ATTR_F` text,
  `EXTEND_ATTR_G` text,
  `EXTEND_ATTR_H` text,
  `EXTEND_ATTR_I` text,
  `EXTEND_ATTR_J` text,
  `EXTEND_ATTR_K` text,
  `EXTEND_ATTR_L` text,
  `EXTEND_ATTR_M` text,
  `EXTEND_ATTR_N` text,
  `EXTEND_ATTR_O` text,
  `RESULT` text COMMENT '流程处理结果',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `CREATE_DATE` datetime NOT NULL COMMENT '建立时间',
  `COMPLETE_DATE` datetime DEFAULT NULL COMMENT '完成时间',
  `STATE` varchar(2) NOT NULL COMMENT '状态(C创建R处理中O结束,E异常)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开通接口调度队列历史消息';

/*Table structure for table `i_open_radius` */

DROP TABLE IF EXISTS `i_open_radius`;

CREATE TABLE `i_open_radius` (
  `SO_NBR` bigint(15) NOT NULL,
  `SEQ` bigint(4) NOT NULL,
  `PROPERTY_ID` bigint(8) NOT NULL,
  `TRANSACT_ID` bigint(15) NOT NULL,
  `PDC_ROUTE_CODE` varchar(32) DEFAULT NULL COMMENT '分表路由',
  `PROPERTY_VALUE` varchar(256) DEFAULT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `BUSI_TYPE` bigint(6) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  PRIMARY KEY (`SO_NBR`,`SEQ`,`PROPERTY_ID`),
  KEY `IDX_OPEN_RADIUS_TRANSC` (`TRANSACT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采用纵表结构，方便扩展。\n按地市分表 I_OPEN_RADIUS_XXX';

/*Table structure for table `i_open_radius_h` */

DROP TABLE IF EXISTS `i_open_radius_h`;

CREATE TABLE `i_open_radius_h` (
  `SO_NBR` bigint(15) NOT NULL,
  `SEQ` bigint(4) NOT NULL,
  `PROPERTY_ID` bigint(8) NOT NULL,
  `TRANSACT_ID` bigint(15) NOT NULL,
  `PDC_ROUTE_CODE` varchar(32) DEFAULT NULL COMMENT '分表路由',
  `PROPERTY_VALUE` varchar(256) DEFAULT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `BUSI_TYPE` bigint(6) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  PRIMARY KEY (`SO_NBR`,`SEQ`,`PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采用纵表结构，方便扩展。\n按地市分表 I_OPEN_RADIUS_XXX';

/*Table structure for table `i_open_radius_index` */

DROP TABLE IF EXISTS `i_open_radius_index`;

CREATE TABLE `i_open_radius_index` (
  `SO_NBR` bigint(15) NOT NULL,
  `MSO_NBR` bigint(15) NOT NULL COMMENT 'MSO_NBR和SO_NBR不同时MSO_NBR是主工单(批量交易工单号)',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REGION_CODE` bigint(4) NOT NULL,
  `USER_ID` bigint(15) NOT NULL COMMENT '为非签约移动号码时,填0',
  `BUSI_TYPE` bigint(6) NOT NULL COMMENT 'CBOSS与营业之间虚拟的业务类型编码',
  `ACT_TYPE` varchar(2) NOT NULL,
  `BRAND` bigint(6) NOT NULL DEFAULT '0' COMMENT '当无品牌信息时,为0',
  `USER_STS` varchar(2) NOT NULL COMMENT '记录用户的在网状态',
  `BILL_ID` varchar(50) NOT NULL COMMENT 'msisdn',
  `OLD_BILL_ID` varchar(50) DEFAULT NULL,
  `TRANSACT_ID` bigint(15) NOT NULL,
  `PDC_ROUTE_CODE` varchar(32) DEFAULT NULL COMMENT '分表路由',
  `COMMIT_DATE` datetime NOT NULL COMMENT '数据入表时间',
  `PROCESS_DATE` datetime DEFAULT NULL COMMENT 'CBOSS填写',
  `STS` bigint(2) NOT NULL COMMENT '1:初始（BOSS插入数据时的状态）\n0:失败（CBOSS失败时状态）\n2:处理中（CBOSS将数据取走时的状态）\n3:成功（CBOSS失败时状态）\n4:部分成功（CBOSS部分成功时态，暂时没有用）\n5:超时(CBOSS超时)',
  `PKG_SEQ` varchar(64) DEFAULT NULL COMMENT '平台下发批量交易的流水号',
  `SINGLE_SEQ` varchar(64) DEFAULT NULL COMMENT '平台下发批量交易中每个单条交易信息的流水号，或单个业务中的流水号',
  `SRC` bigint(4) NOT NULL,
  `RECONFIRM_FLAG` bigint(2) DEFAULT NULL COMMENT '0-不需要二次确认\n1-需要二次确认',
  `RECONFIRM_CODE` varchar(64) DEFAULT NULL COMMENT '1-用户回复“是”；\n2-用户回复“否”；\n3-用户超时没有回复',
  `ORDER_FLAG` bigint(2) NOT NULL COMMENT '0-订购关系变化引起的订购关系；\n1-用户状态变化引起的订购关系；',
  `RESULT` varchar(16) DEFAULT NULL COMMENT 'BOSS发起业务不填，平台发起填写交易处理结果返回码',
  `RESULT_DESC` varchar(255) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `EXT1` varchar(32) DEFAULT NULL,
  `EXT2` varchar(32) DEFAULT NULL,
  `EXT3` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`SO_NBR`),
  KEY `IDX_OPEN_RADIIDX_TRANSC` (`TRANSACT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='平台业务接口索引表，用于平台业务定购同步\n按地市分表 I_OPEN_RADIUS_INDEX_XXX\n历史表分表 I_OPEN_RADIUS_IDX_H_XXX_YYYYMM';

/*Table structure for table `i_open_sff_wait` */

DROP TABLE IF EXISTS `i_open_sff_wait`;

CREATE TABLE `i_open_sff_wait` (
  `DONE_CODE` bigint(20) NOT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  `USER_ID` bigint(20) DEFAULT NULL,
  `TOTAL_COUNT` int(11) DEFAULT NULL,
  `REMAIN_COUNT` int(11) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL,
  `REAMARK` varchar(2000) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(2000) DEFAULT NULL,
  `EXT2` varchar(2000) DEFAULT NULL,
  `EXT3` varchar(2000) DEFAULT NULL,
  `EXT4` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_open_sff_wait_err` */

DROP TABLE IF EXISTS `i_open_sff_wait_err`;

CREATE TABLE `i_open_sff_wait_err` (
  `DONE_CODE` bigint(20) NOT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  `USER_ID` bigint(20) DEFAULT NULL,
  `TOTAL_COUNT` int(11) DEFAULT NULL,
  `REMAIN_COUNT` int(11) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL,
  `REAMARK` varchar(2000) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `ERROR_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(2000) DEFAULT NULL,
  `EXT2` varchar(2000) DEFAULT NULL,
  `EXT3` varchar(2000) DEFAULT NULL,
  `EXT4` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_open_sff_wait_his` */

DROP TABLE IF EXISTS `i_open_sff_wait_his`;

CREATE TABLE `i_open_sff_wait_his` (
  `DONE_CODE` bigint(20) NOT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  `USER_ID` bigint(20) DEFAULT NULL,
  `TOTAL_COUNT` int(11) DEFAULT NULL,
  `REMAIN_COUNT` int(11) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL,
  `REAMARK` varchar(2000) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `COMPLETE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(2000) DEFAULT NULL,
  `EXT2` varchar(2000) DEFAULT NULL,
  `EXT3` varchar(2000) DEFAULT NULL,
  `EXT4` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_open_target` */

DROP TABLE IF EXISTS `i_open_target`;

CREATE TABLE `i_open_target` (
  `INSTANCE_ID` bigint(15) NOT NULL COMMENT '工单实例编号',
  `VM_CUST_OID` varchar(64) DEFAULT NULL COMMENT '客户订单号',
  `VM_ORDER_ID` varchar(32) NOT NULL COMMENT '营业流水号',
  `VM_TASK_ID` varchar(32) DEFAULT NULL COMMENT '流程任务编号',
  `KIND` varchar(64) NOT NULL COMMENT '异步类型[I_OPEN_PRODUCT_TEMPLATE.KIND值]，主要区分应用系统来源类型',
  `USER_ID` bigint(15) NOT NULL COMMENT '用户编号',
  `BILL_ID` varchar(32) NOT NULL COMMENT '业务号码',
  `SUB_BILL_ID` varchar(64) DEFAULT NULL COMMENT '用户次计费号码',
  `FEATURES` varchar(4000) DEFAULT NULL COMMENT '回执信息参数',
  `BACKUP_FEATURES` varchar(4000) DEFAULT NULL COMMENT '回执信息参数2',
  `PRODUCT_TEMPLATE` varchar(100) NOT NULL COMMENT '开通模板编号',
  `UPI_BWO_ID` varchar(32) DEFAULT NULL COMMENT '外围接口表编号',
  `VM_ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织编号',
  `VM_STAFF_ID` varchar(32) NOT NULL COMMENT '操作员工号',
  `VM_SOURCE` varchar(32) NOT NULL COMMENT '系统来源',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `RESULT` varchar(2000) DEFAULT NULL COMMENT '流程处理日志',
  `PS_STATUS` char(1) DEFAULT NULL COMMENT '网元反馈状态(O网元指令正常完成E网元指令异常完成)',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `COMPLETE_DATE` datetime DEFAULT NULL COMMENT '完成时间',
  `STATE` char(1) NOT NULL COMMENT '状态(C初始F完成)',
  PRIMARY KEY (`INSTANCE_ID`),
  KEY `IDX_OPEN_TARGET_PIBWO` (`UPI_BWO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接口框架异步回复表';

/*Table structure for table `i_open_target_h` */

DROP TABLE IF EXISTS `i_open_target_h`;

CREATE TABLE `i_open_target_h` (
  `INSTANCE_ID` bigint(15) NOT NULL COMMENT '工单实例编号',
  `VM_CUST_OID` varchar(64) DEFAULT NULL COMMENT '客户订单号',
  `VM_ORDER_ID` varchar(32) NOT NULL COMMENT '营业流水号',
  `VM_TASK_ID` varchar(32) DEFAULT NULL COMMENT '流程任务编号',
  `KIND` varchar(64) NOT NULL COMMENT '异步类型[I_OPEN_PRODUCT_TEMPLATE.KIND值]，主要区分应用系统来源类型',
  `USER_ID` bigint(15) NOT NULL COMMENT '用户编号',
  `BILL_ID` varchar(32) NOT NULL COMMENT '业务号码',
  `SUB_BILL_ID` varchar(64) DEFAULT NULL COMMENT '用户次计费号码',
  `FEATURES` varchar(4000) DEFAULT NULL COMMENT '回执信息参数',
  `BACKUP_FEATURES` varchar(4000) DEFAULT NULL COMMENT '回执信息参数2',
  `PRODUCT_TEMPLATE` varchar(100) NOT NULL COMMENT '开通模板编号',
  `UPI_BWO_ID` varchar(32) DEFAULT NULL COMMENT '外围接口表编号',
  `VM_ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织编号',
  `VM_STAFF_ID` varchar(32) NOT NULL COMMENT '操作员工号',
  `VM_SOURCE` varchar(32) NOT NULL COMMENT '系统来源',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `RESULT` varchar(2000) DEFAULT NULL COMMENT '流程处理日志',
  `PS_STATUS` char(1) DEFAULT NULL COMMENT '网元反馈状态(O网元指令正常完成E网元指令异常完成)',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `COMPLETE_DATE` datetime DEFAULT NULL COMMENT '完成时间',
  `STATE` char(1) NOT NULL COMMENT '状态(C初始F完成)',
  `TF_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接口框架异步回复历史表';

/*Table structure for table `i_open_task` */

DROP TABLE IF EXISTS `i_open_task`;

CREATE TABLE `i_open_task` (
  `TASK_ID` bigint(15) NOT NULL COMMENT '拆分工单编号',
  `INSTANCE_ID` bigint(15) NOT NULL,
  `BILL_ID` varchar(32) NOT NULL COMMENT '业务号码',
  `SUB_BILL_ID` varchar(32) DEFAULT NULL COMMENT 'IMSI',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `WORKFLOW` varchar(64) NOT NULL COMMENT '流程任务编号',
  `PLATFORM_CODE` varchar(32) NOT NULL COMMENT '接口平台编号',
  `DIRECTIVE_CODE` varchar(32) NOT NULL COMMENT '指令编号',
  `DEPEND_TASK_ID` bigint(15) DEFAULT NULL COMMENT '依赖的开通工单',
  `PRIORITY` bigint(3) DEFAULT NULL COMMENT '优先级',
  `CREATE_TASK_ID` bigint(15) DEFAULT NULL COMMENT '回滚流程任务节点编号',
  `VM_TASK_SERIAL` bigint(4) DEFAULT NULL COMMENT '任务序号',
  `I_JEVAL_L` varchar(1000) DEFAULT NULL COMMENT '与拆分规则中FEATURES',
  `REDO_TIMES` bigint(4) DEFAULT NULL COMMENT '重做次数',
  `DONE_TIMES` bigint(4) DEFAULT NULL COMMENT '实际重做次数',
  `DONE_ERROR` varchar(4000) DEFAULT NULL COMMENT '错误信息',
  `DONE_RESULT` varchar(4000) DEFAULT NULL COMMENT '回执信息',
  `BESPOK_TIME` datetime DEFAULT NULL COMMENT '开始执行时间',
  `RESULT` varchar(4000) DEFAULT NULL COMMENT '流程处理结果',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '建立时间',
  `COMPLETE_DATE` datetime DEFAULT NULL COMMENT '完成时间',
  `STATE` varchar(2) DEFAULT NULL COMMENT '状态\nT 准备状态（对于无需拆分直接操作的工单）\nP 准备状态（对于开通依赖另外工单开通为前提）\nC 当生成工单任务,待处理\nR 当接口已把指令送到网元,正在处理\nW 接口内部异常\nE 网元或接口平台处理异常,已异常\nO 接口正常处理完成\nQ 撤销',
  `STATE_DATE` datetime DEFAULT NULL COMMENT '状态时间',
  PRIMARY KEY (`TASK_ID`),
  KEY `IDX_OPEN_TASK_INST_ID` (`INSTANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流程实例任务表';

/*Table structure for table `i_open_task_fail` */

DROP TABLE IF EXISTS `i_open_task_fail`;

CREATE TABLE `i_open_task_fail` (
  `TASK_ID` bigint(15) NOT NULL COMMENT '拆分工单编号',
  `INSTANCE_ID` bigint(15) NOT NULL,
  `BILL_ID` varchar(32) NOT NULL COMMENT '业务号码',
  `SUB_BILL_ID` varchar(32) DEFAULT NULL COMMENT 'IMSI',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `WORKFLOW` varchar(64) NOT NULL COMMENT '流程任务编号',
  `PLATFORM_CODE` varchar(32) NOT NULL COMMENT '接口平台编号',
  `DIRECTIVE_CODE` varchar(32) NOT NULL COMMENT '指令编号',
  `DEPEND_TASK_ID` bigint(15) DEFAULT NULL COMMENT '依赖的开通工单',
  `PRIORITY` bigint(3) DEFAULT NULL COMMENT '优先级',
  `CREATE_TASK_ID` bigint(15) DEFAULT NULL COMMENT '回滚流程任务节点编号',
  `VM_TASK_SERIAL` bigint(4) DEFAULT NULL COMMENT '任务序号',
  `I_JEVAL_L` varchar(1000) DEFAULT NULL COMMENT '与拆分规则中FEATURES',
  `REDO_TIMES` bigint(4) DEFAULT NULL COMMENT '重做次数',
  `DONE_TIMES` bigint(4) DEFAULT NULL COMMENT '实际重做次数',
  `DONE_ERROR` varchar(4000) DEFAULT NULL COMMENT '错误信息',
  `DONE_RESULT` varchar(4000) DEFAULT NULL COMMENT '回执信息',
  `BESPOK_TIME` datetime DEFAULT NULL COMMENT '开始执行时间',
  `RESULT` varchar(4000) DEFAULT NULL COMMENT '流程处理结果',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '建立时间',
  `COMPLETE_DATE` datetime DEFAULT NULL COMMENT '完成时间',
  `STATE` varchar(2) DEFAULT NULL COMMENT '状态\nT 准备状态（对于无需拆分直接操作的工单）\nP 准备状态（对于开通依赖另外工单开通为前提）\nC 当生成工单任务,待处理\nR 当接口已把指令送到网元,正在处理\nW 接口内部异常\nE 网元或接口平台处理异常,已异常\nO 接口正常处理完成\nQ 撤销',
  `STATE_DATE` datetime DEFAULT NULL COMMENT '状态时间',
  PRIMARY KEY (`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流程实例任务失败表';

/*Table structure for table `i_open_task_h` */

DROP TABLE IF EXISTS `i_open_task_h`;

CREATE TABLE `i_open_task_h` (
  `TASK_ID` bigint(15) NOT NULL COMMENT '拆分工单编号',
  `INSTANCE_ID` bigint(15) NOT NULL,
  `BILL_ID` varchar(32) NOT NULL COMMENT '业务号码',
  `SUB_BILL_ID` varchar(32) DEFAULT NULL COMMENT 'IMSI',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `WORKFLOW` varchar(64) NOT NULL COMMENT '流程任务编号',
  `PLATFORM_CODE` varchar(32) NOT NULL COMMENT '接口平台编号',
  `DIRECTIVE_CODE` varchar(32) NOT NULL COMMENT '指令编号',
  `DEPEND_TASK_ID` bigint(15) DEFAULT NULL COMMENT '依赖的开通工单',
  `PRIORITY` bigint(3) DEFAULT NULL COMMENT '优先级',
  `CREATE_TASK_ID` bigint(15) DEFAULT NULL COMMENT '回滚流程任务节点编号',
  `VM_TASK_SERIAL` bigint(4) DEFAULT NULL COMMENT '任务序号',
  `I_JEVAL_L` varchar(1000) DEFAULT NULL COMMENT '与拆分规则中FEATURES',
  `REDO_TIMES` bigint(4) DEFAULT NULL COMMENT '重做次数',
  `DONE_TIMES` bigint(4) DEFAULT NULL COMMENT '实际重做次数',
  `DONE_ERROR` varchar(4000) DEFAULT NULL COMMENT '错误信息',
  `DONE_RESULT` varchar(4000) DEFAULT NULL COMMENT '回执信息',
  `BESPOK_TIME` datetime DEFAULT NULL COMMENT '开始执行时间',
  `RESULT` varchar(4000) DEFAULT NULL COMMENT '流程处理结果',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '建立时间',
  `COMPLETE_DATE` datetime DEFAULT NULL COMMENT '完成时间',
  `STATE` varchar(2) DEFAULT NULL COMMENT '状态\nT 准备状态（对于无需拆分直接操作的工单）\nP 准备状态（对于开通依赖另外工单开通为前提）\nC 当生成工单任务,待处理\nR 当接口已把指令送到网元,正在处理\nW 接口内部异常\nE 网元或接口平台处理异常,已异常\nO 接口正常处理完成\nQ 撤销',
  `STATE_DATE` datetime DEFAULT NULL COMMENT '状态时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流程实例任务历史表';

/*Table structure for table `i_open_uatmix` */

DROP TABLE IF EXISTS `i_open_uatmix`;

CREATE TABLE `i_open_uatmix` (
  `ID` bigint(15) NOT NULL COMMENT '消息编号',
  `VM_ORDER_ID` varchar(32) DEFAULT NULL COMMENT '营业流水号',
  `USER_ID` bigint(15) DEFAULT NULL COMMENT '用户编号',
  `BILL_ID` varchar(32) DEFAULT NULL COMMENT '用户号码',
  `OPERATE_TYPE` varchar(32) DEFAULT NULL COMMENT '消息操作类型\nUATMIX 统一异步传输消息',
  `OPERATE_OBJECT` varchar(32) DEFAULT NULL COMMENT '消息操作编号',
  `IMPLCLASS_NAME` varchar(200) NOT NULL COMMENT '消息处理全路径类',
  `I_UATMIX_01` text COMMENT '消息内容01',
  `I_UATMIX_02` text COMMENT '消息内容02',
  `I_UATMIX_03` text COMMENT '消息内容03',
  `I_UATMIX_04` text COMMENT '消息内容04',
  `I_UATMIX_05` text COMMENT '消息内容05',
  `I_UATMIX_06` text COMMENT '消息内容06',
  `I_UATMIX_07` text COMMENT '消息内容07',
  `I_UATMIX_08` text COMMENT '消息内容08',
  `I_UATMIX_09` text COMMENT '消息内容09',
  `I_UATMIX_10` text COMMENT '消息内容10',
  `I_UATMIX_11` text COMMENT '消息内容11',
  `I_UATMIX_12` text COMMENT '消息内容12',
  `I_UATMIX_13` text COMMENT '消息内容13',
  `I_UATMIX_14` text COMMENT '消息内容14',
  `I_UATMIX_15` text COMMENT '消息内容15',
  `I_UATMIX_16` text COMMENT '消息内容16',
  `I_UATMIX_17` text COMMENT '消息内容17',
  `I_UATMIX_18` text COMMENT '消息内容18',
  `I_UATMIX_19` text COMMENT '消息内容19',
  `I_UATMIX_20` text COMMENT '消息内容20',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织单元',
  `STAFF_ID` varchar(32) DEFAULT NULL COMMENT '操作员',
  `RESULT` varchar(2000) DEFAULT NULL COMMENT '流程处理结果',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `CREATE_DATE` datetime NOT NULL COMMENT '建立时间',
  `COMPLETE_DATE` datetime DEFAULT NULL COMMENT '完成时间',
  `STATE` varchar(2) NOT NULL COMMENT '状态(C创建R处理中O结束)',
  PRIMARY KEY (`ID`),
  KEY `IDX_OPEN_UATMIX_OPERATE` (`OPERATE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开通接口异步操作消息';

/*Table structure for table `i_open_uatmix_h` */

DROP TABLE IF EXISTS `i_open_uatmix_h`;

CREATE TABLE `i_open_uatmix_h` (
  `ID` bigint(15) NOT NULL COMMENT '消息编号',
  `VM_ORDER_ID` varchar(32) DEFAULT NULL COMMENT '营业流水号',
  `USER_ID` bigint(15) DEFAULT NULL COMMENT '用户编号',
  `BILL_ID` varchar(32) DEFAULT NULL COMMENT '用户号码',
  `OPERATE_TYPE` varchar(32) DEFAULT NULL COMMENT '消息操作类型\nUATMIX 统一异步传输消息',
  `OPERATE_OBJECT` varchar(32) DEFAULT NULL COMMENT '消息操作编号',
  `IMPLCLASS_NAME` varchar(200) NOT NULL COMMENT '消息处理全路径类',
  `I_UATMIX_01` text COMMENT '消息内容01',
  `I_UATMIX_02` text COMMENT '消息内容02',
  `I_UATMIX_03` text COMMENT '消息内容03',
  `I_UATMIX_04` text COMMENT '消息内容04',
  `I_UATMIX_05` text COMMENT '消息内容05',
  `I_UATMIX_06` text COMMENT '消息内容06',
  `I_UATMIX_07` text COMMENT '消息内容07',
  `I_UATMIX_08` text COMMENT '消息内容08',
  `I_UATMIX_09` text COMMENT '消息内容09',
  `I_UATMIX_10` text COMMENT '消息内容10',
  `I_UATMIX_11` text COMMENT '消息内容11',
  `I_UATMIX_12` text COMMENT '消息内容12',
  `I_UATMIX_13` text COMMENT '消息内容13',
  `I_UATMIX_14` text COMMENT '消息内容14',
  `I_UATMIX_15` text COMMENT '消息内容15',
  `I_UATMIX_16` text COMMENT '消息内容16',
  `I_UATMIX_17` text COMMENT '消息内容17',
  `I_UATMIX_18` text COMMENT '消息内容18',
  `I_UATMIX_19` text COMMENT '消息内容19',
  `I_UATMIX_20` text COMMENT '消息内容20',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织单元',
  `STAFF_ID` varchar(32) DEFAULT NULL COMMENT '操作员',
  `RESULT` varchar(2000) DEFAULT NULL COMMENT '流程处理结果',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `CREATE_DATE` datetime NOT NULL COMMENT '建立时间',
  `COMPLETE_DATE` datetime DEFAULT NULL COMMENT '完成时间',
  `STATE` varchar(2) NOT NULL COMMENT '状态(C创建R处理中O结束)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开通接口异步操作历史消息';

/*Table structure for table `i_order_confirm_h` */

DROP TABLE IF EXISTS `i_order_confirm_h`;

CREATE TABLE `i_order_confirm_h` (
  `SERV_ID` bigint(14) NOT NULL,
  `BUSI_TYPE` bigint(6) NOT NULL,
  `MSISDN` varchar(50) NOT NULL,
  `SERV_TYPE` bigint(8) NOT NULL DEFAULT '0',
  `SID` bigint(9) NOT NULL,
  `SERVICE_CODE` varchar(32) DEFAULT NULL,
  `BILL_FLAG` bigint(4) NOT NULL,
  `BILL_PROP` bigint(3) NOT NULL DEFAULT '0',
  `CONFIRM_RESULT` bigint(2) DEFAULT NULL,
  `CONFIRM_TIME` datetime DEFAULT NULL,
  `ALARM_TIME` datetime DEFAULT NULL,
  `SEQUENCE_NO` varchar(25) DEFAULT NULL,
  `SRC_TYPE` varchar(64) DEFAULT NULL,
  `ALARM_DONE_CODE` bigint(12) DEFAULT NULL,
  `EXTEND_FLAG` bigint(8) DEFAULT NULL,
  `SP_CODE` varchar(32) NOT NULL,
  `OPERATOR_CODE` varchar(32) NOT NULL,
  `THIRD_MSISDN` varchar(50) NOT NULL,
  `REGION_CODE` varchar(6) NOT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `SO_NBR` bigint(15) NOT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`SID`,`SO_NBR`,`VALID_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市分表(如I_ORDER_CONFIRM_H_240_201211)';

/*Table structure for table `i_payer` */

DROP TABLE IF EXISTS `i_payer`;

CREATE TABLE `i_payer` (
  `PAYER_ID` bigint(15) NOT NULL,
  `PAYER_TYPE` bigint(4) NOT NULL,
  `FAMILY_NAMES` varchar(256) DEFAULT NULL,
  `TAX_NO` varchar(128) DEFAULT NULL,
  `MIDDLE_NAMES` varchar(256) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `ADDRESS_ID` bigint(12) DEFAULT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SO_NBR` bigint(15) NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  `MOBILE` varchar(40) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_payer_acct_rel` */

DROP TABLE IF EXISTS `i_payer_acct_rel`;

CREATE TABLE `i_payer_acct_rel` (
  `PAYER_ID` bigint(15) NOT NULL,
  `ACCT_ID` bigint(15) NOT NULL,
  `RELATIONSHIP_TYPE` bigint(4) NOT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SO_NBR` bigint(15) NOT NULL,
  `SPLIT_REGION_CODE` varchar(18) NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_process_down` */

DROP TABLE IF EXISTS `i_process_down`;

CREATE TABLE `i_process_down` (
  `ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `DONE_CODE` bigint(12) NOT NULL,
  `REGION_CODE` varchar(6) NOT NULL,
  `SERVICE_TYPE` bigint(4) NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_STATUS` bigint(1) NOT NULL,
  `UPDATE_DATE` datetime NOT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `THRESHOLD` bigint(10) DEFAULT NULL,
  `SOURCE_TYPE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表说明：计费与营业的接口表\n\n分表说明：根据地市分表，如I_PROCESS_DOWN_0240\n错误表：根据地市分表，如I_PROCESS_DOWN_0240_ERR，错误表新增TF_DATE字段，根据这个字段分表';

/*Table structure for table `i_process_down_err` */

DROP TABLE IF EXISTS `i_process_down_err`;

CREATE TABLE `i_process_down_err` (
  `ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `DONE_CODE` bigint(12) NOT NULL,
  `REGION_CODE` varchar(6) NOT NULL,
  `SERVICE_TYPE` bigint(4) NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_STATUS` bigint(1) NOT NULL,
  `UPDATE_DATE` datetime NOT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `THRESHOLD` bigint(10) DEFAULT NULL,
  `SOURCE_TYPE` bigint(1) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表说明：计费与营业的接口表\n\n分表说明：根据地市分表，如I_PROCESS_DOWN_0240\n错误表：根据地市分表，如I_PROCESS_DOWN_0240_ERR，错误表新增TF_DATE字段，根据这个字段分表';

/*Table structure for table `i_process_down_h` */

DROP TABLE IF EXISTS `i_process_down_h`;

CREATE TABLE `i_process_down_h` (
  `ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `DONE_CODE` bigint(12) NOT NULL,
  `REGION_CODE` varchar(6) NOT NULL,
  `SERVICE_TYPE` bigint(4) NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_STATUS` bigint(1) NOT NULL,
  `UPDATE_DATE` datetime NOT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `THRESHOLD` bigint(10) DEFAULT NULL,
  `SOURCE_TYPE` bigint(1) DEFAULT NULL,
  `TF_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表说明：计费与营业的接口表\n\n分表说明：根据地市分表，如I_PROCESS_DOWN_0240\n错误表：根据地市分表，如I_PROCESS_DOWN_0240_ERR，错误表新增TF_DATE字段，根据这个字段分表';

/*Table structure for table `i_prod_char_value` */

DROP TABLE IF EXISTS `i_prod_char_value`;

CREATE TABLE `i_prod_char_value` (
  `PRODUCT_ID` bigint(15) NOT NULL,
  `PARAM_ID` bigint(8) NOT NULL COMMENT '11202：指定的小区标识\n11202：指定的小区标识\n13001：群组标识 （集团成员群产品_群内互打规格类型130）\n26001: VOIP号码\n12901 :MULTI-SIM号码\n12902：MULTI-SIM卡序列号',
  `PARAM_VALUE` varchar(1000) NOT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  `GROUP_ID` bigint(4) DEFAULT NULL,
  KEY `IDX_I_PROD_CHAR_VALUE_1` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_prod_price_param` */

DROP TABLE IF EXISTS `i_prod_price_param`;

CREATE TABLE `i_prod_price_param` (
  `PRODUCT_ID` bigint(15) NOT NULL,
  `PARAM_ID` bigint(8) NOT NULL COMMENT '810301 免费资源赠送量\n810321 免费资源赠送的乘法因子\n810001 基本资费的乘法因子\n800332 群组的成员个数\n820001 二次议价\n820002 二次议价的度量\n（10403：分,取自SYS_MEASURE）\n820101 跨年优惠的历史费用\n820102 跨年优惠的历史费用的度量\n820501 用户退订是否做PRORATE标志(0:不是主动退订 1：主动退订)\n820024产品的份数\n820050 v_promotion_style(优惠类型:3,4   打折类（百分比）\n1,2,5  优惠或减免类 (金额)\n6     万分比\n9：个性化补足)\n820051 v_promotion_rate(优惠值)\n820202: 产品收费周期数,以月为单位\n820203：产品竣工时间，格式 YYYYMMDD\n820204：产品收费开始时间，格式 YYYYMMDD\n820205：按月收还是按周收的标识\n830001: 产品月租是否由集团支付',
  `PARAM_VALUE` varchar(64) NOT NULL COMMENT '如果PARAM_ID为830001，字段PARAM_VALUE为0代表个人支付，1代表集团支付',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  KEY `IDX_I_PROD_PRICE_PARAM_1` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_product` */

DROP TABLE IF EXISTS `i_product`;

CREATE TABLE `i_product` (
  `PRODUCT_ID` bigint(15) NOT NULL COMMENT 'CRM侧有实例编号,策划实例ID，产品实例ID',
  `USER_ID` bigint(15) DEFAULT NULL,
  `ACCT_ID` bigint(15) DEFAULT NULL COMMENT '集群类业务的群产品订购，填的是虚用户；\n其它订购该值为空',
  `OFFER_ID` bigint(15) NOT NULL,
  `OFFER_INST_ID` bigint(15) NOT NULL,
  `PRODUCT_TYPE` bigint(8) NOT NULL COMMENT '0：原子产品\n1：组合产品\n2：主产品',
  `PRODUCT_STATUS` bigint(4) NOT NULL COMMENT '1：正常\n2: 机卡分离暂停\n4:暂停',
  `PARENT_PRODUCT_ID` bigint(15) DEFAULT NULL COMMENT '组合产品时，需要该字段',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `PAYMENT_MODE` bigint(4) DEFAULT NULL COMMENT '0：预付费\n1：后付费',
  `VALID_TYPE` bigint(2) DEFAULT NULL COMMENT '默认4.\n0：立即生效\n1：下周期生效\n2：下一天生效\n3：下个月生效\n4：指定时间生效',
  `TENANT_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(15) DEFAULT NULL,
  `PAY_ACCT_ID` bigint(15) DEFAULT NULL,
  `ORDER_DATE` datetime DEFAULT NULL,
  KEY `IDX_I_PRODUCT_2` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_reguide` */

DROP TABLE IF EXISTS `i_reguide`;

CREATE TABLE `i_reguide` (
  `REGUIDE_ID` bigint(15) NOT NULL,
  `USER_ID` bigint(15) DEFAULT NULL,
  `ACCT_ID` bigint(15) DEFAULT NULL,
  `REGUIDE_TYPE` bigint(4) DEFAULT NULL COMMENT '0:reguide_charge(默认)\n1:reguide_usage',
  `BUSI_SERVICE_ID` bigint(15) DEFAULT NULL,
  `PAY_ACCT_ID` bigint(15) DEFAULT NULL,
  `PAY_PHONE_ID` bigint(15) DEFAULT NULL,
  `PAY_NUMERATOR` bigint(4) DEFAULT NULL,
  `PAY_DENOMINATOR` bigint(4) DEFAULT NULL,
  `PAY_THRESHOLD` bigint(8) DEFAULT NULL,
  `MEASURE_ID` bigint(9) NOT NULL,
  `PRIORITY` bigint(8) DEFAULT NULL,
  `B_NUMBERS` varchar(256) DEFAULT NULL,
  `TIME_SEGMENT` bigint(6) DEFAULT NULL,
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `VALID_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `EXPIRE_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) DEFAULT NULL,
  `TENANT_ID` bigint(12) DEFAULT NULL,
  KEY `IDX_I_REGUIDE_SONBR` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_user` */

DROP TABLE IF EXISTS `i_user`;

CREATE TABLE `i_user` (
  `USER_ID` bigint(15) NOT NULL,
  `USER_TYPE` bigint(4) NOT NULL COMMENT '默认为0，不区分\n默认为0，0: Default\n10：GSM \n20：CDMA\n30：PSTN\n40：ADSL',
  `PAYMENT_MODE` bigint(4) NOT NULL COMMENT '0：预付费\n1：后附费（默认）\n10:预付为主的hybrid\n11:后付为主的hybrid',
  `PHONE_ID` varchar(28) NOT NULL,
  `IS_TEST_NUMBER` bigint(4) NOT NULL COMMENT '0：不是\n1：是',
  `BRAND` bigint(4) NOT NULL COMMENT '1000 C-PHONE\n1001 SKY_PHONE\n1002 EVDO\n1003 GSM Mobile\n1004 3G Mobile',
  `USER_SEGMENT` bigint(4) NOT NULL COMMENT '1.Classic\n2.Gold\n3.Platinum\n4.Platinum Plus\n5.Serenade CEO\n6.Serenade Prestige\n7.Standard',
  `IMSI` varchar(64) DEFAULT NULL,
  `REGION_CODE` bigint(4) NOT NULL,
  `COUNTY_CODE` bigint(4) NOT NULL,
  `SMS_LANGUAGE` bigint(4) NOT NULL COMMENT '1 ENG English \n2 CHI Chinese \n3 THA Thai \n4 NEP Nepalese',
  `IVR_LANGUAGE` bigint(4) NOT NULL,
  `USSD_LANGUAGE` bigint(4) NOT NULL,
  `ACTIVE_DATE` datetime NOT NULL,
  `ACCESS_WAY` bigint(4) DEFAULT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EMAIL_LANGUAGE` bigint(4) DEFAULT NULL COMMENT '1 ENG English \n2 CHI Chinese \n3 THA Thai \n4 NEP Nepalese',
  `CONTACT_NUMBER` varchar(28) DEFAULT NULL,
  `LONG_TERM_LIST` bigint(2) DEFAULT NULL,
  `IS_SEND_CARD` bigint(2) DEFAULT NULL,
  `RES_CLASS` bigint(4) DEFAULT NULL COMMENT '0：普通客户\n1：大客户',
  `IS_ECARD` bigint(2) DEFAULT NULL,
  `GROUP_MEM_LEVEL` varchar(6) DEFAULT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  `OPERATOR_CODE` varchar(32) DEFAULT NULL,
  `MNP_FLAG` bigint(8) DEFAULT NULL,
  `DEVICE_TYPE` bigint(8) DEFAULT NULL,
  `USER_NAME` varchar(256) DEFAULT NULL,
  KEY `IDX_I_USER_SONBR` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市_年月(RYM)分表';

/*Table structure for table `i_user_acct_rel` */

DROP TABLE IF EXISTS `i_user_acct_rel`;

CREATE TABLE `i_user_acct_rel` (
  `USER_ID` bigint(15) NOT NULL,
  `ACCT_ID` bigint(15) NOT NULL,
  `OLD_ACCT_ID` bigint(15) NOT NULL,
  `RELATIONSHIP_TYPE` bigint(4) NOT NULL COMMENT '0:归属，默认',
  `TITLE_ROLE_ID` bigint(4) NOT NULL COMMENT '集团客户角色：\n1000：普通集团（默认）\n1001：总公司\n1002：分公司\n1003：部门\n个人客户角色：\n3000：普通个人（默认）\n3001：总经理\n3002：总监\n3003：父亲\n3004：母亲\n3005：孩子\n3006: 家庭成员\n对虚角色定义\n8000：家庭户主(single Balance账户下主用户)\n8001：父母角色（包括：父亲、母亲）\nVPN/community成员角色定义\n41：MAINPHONE\n42：NORMAL',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  `POINT_FLAG` bigint(2) DEFAULT NULL COMMENT '0：积分清零\n1：积分保留',
  KEY `IDX_I_USER_ACCT_REL_1` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_user_order_confirm` */

DROP TABLE IF EXISTS `i_user_order_confirm`;

CREATE TABLE `i_user_order_confirm` (
  `SERV_ID` bigint(14) NOT NULL,
  `BUSI_TYPE` bigint(6) NOT NULL,
  `MSISDN` varchar(50) NOT NULL,
  `SERV_TYPE` bigint(8) NOT NULL DEFAULT '0',
  `SID` bigint(9) NOT NULL,
  `SERVICE_CODE` varchar(32) DEFAULT NULL,
  `BILL_FLAG` bigint(4) NOT NULL,
  `BILL_PROP` bigint(3) NOT NULL DEFAULT '0',
  `CONFIRM_RESULT` bigint(2) DEFAULT NULL,
  `CONFIRM_TIME` datetime DEFAULT NULL,
  `ALARM_TIME` datetime DEFAULT NULL,
  `SEQUENCE_NO` varchar(25) DEFAULT NULL,
  `SRC_TYPE` varchar(64) DEFAULT NULL,
  `ALARM_DONE_CODE` bigint(12) DEFAULT NULL,
  `EXTEND_FLAG` bigint(8) DEFAULT NULL,
  `SP_CODE` varchar(32) NOT NULL,
  `OPERATOR_CODE` varchar(32) NOT NULL,
  `THIRD_MSISDN` varchar(50) NOT NULL,
  `REGION_CODE` varchar(6) NOT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `SO_NBR` bigint(15) NOT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SID`,`SO_NBR`,`VALID_DATE`),
  KEY `IDX_USER_ORDER_CONFIRM_1` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市分表(如I_USER_ORDER_CONFIRM_240)\n错误表：I_USER_ORDER_CONFIRM_240_ERR，新增字段ERR_DATE,ERR_MSG\n历史表：I_ORDER_CONFIRM_H_240_201211，新增字段TF_DATE';

/*Table structure for table `i_user_order_confirm_err` */

DROP TABLE IF EXISTS `i_user_order_confirm_err`;

CREATE TABLE `i_user_order_confirm_err` (
  `SERV_ID` bigint(14) NOT NULL,
  `BUSI_TYPE` bigint(6) NOT NULL,
  `MSISDN` varchar(50) NOT NULL,
  `SERV_TYPE` bigint(8) NOT NULL DEFAULT '0',
  `SID` bigint(9) NOT NULL,
  `SERVICE_CODE` varchar(32) DEFAULT NULL,
  `BILL_FLAG` bigint(4) NOT NULL,
  `BILL_PROP` bigint(3) NOT NULL DEFAULT '0',
  `CONFIRM_RESULT` bigint(2) DEFAULT NULL,
  `CONFIRM_TIME` datetime DEFAULT NULL,
  `ALARM_TIME` datetime DEFAULT NULL,
  `SEQUENCE_NO` varchar(25) DEFAULT NULL,
  `SRC_TYPE` varchar(64) DEFAULT NULL,
  `ALARM_DONE_CODE` bigint(12) DEFAULT NULL,
  `EXTEND_FLAG` bigint(8) DEFAULT NULL,
  `SP_CODE` varchar(32) NOT NULL,
  `OPERATOR_CODE` varchar(32) NOT NULL,
  `THIRD_MSISDN` varchar(50) NOT NULL,
  `REGION_CODE` varchar(6) NOT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `SO_NBR` bigint(15) NOT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`SID`,`SO_NBR`,`VALID_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市分表(如I_USER_ORDER_CONFIRM_240_ERR)';

/*Table structure for table `i_user_os_ps` */

DROP TABLE IF EXISTS `i_user_os_ps`;

CREATE TABLE `i_user_os_ps` (
  `ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) NOT NULL COMMENT '用户编号',
  `OLD_OS_STATUS` varchar(64) NOT NULL COMMENT '用户当前的停开机状态',
  `BOSS_DONE_CODE` varchar(30) NOT NULL COMMENT 'BOSS侧业务受理编码',
  `BUSINESS_ID` bigint(12) NOT NULL COMMENT '业务编码',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地市代码',
  `CREATE_DATE` datetime NOT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '完成日期',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员ID',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织ID',
  `PS_TYPE` bigint(6) NOT NULL COMMENT '操作类型',
  `NSTS` bigint(6) DEFAULT NULL COMMENT '用户状态操作类型',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '业务受理编码',
  `REMARKS` varchar(256) DEFAULT NULL COMMENT '备注',
  `TASK_SEQUENCE` bigint(12) DEFAULT NULL,
  `FIRST_CDR_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(256) DEFAULT NULL,
  `EXT2` varchar(256) DEFAULT NULL,
  `EXT3` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：记录需要停开机的用户\n\n涉及功能：欠费停机进程会通过crm接口插入到该表，营业进程会按用户分模扫描该表从而实现停机\n\n分表方式：根据地市分表（如I_USER_OS_PS_571）';

/*Table structure for table `i_user_os_ps_err` */

DROP TABLE IF EXISTS `i_user_os_ps_err`;

CREATE TABLE `i_user_os_ps_err` (
  `ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `OLD_OS_STATUS` varchar(64) NOT NULL,
  `BOSS_DONE_CODE` varchar(30) NOT NULL,
  `BUSINESS_ID` bigint(12) NOT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(3) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `PS_TYPE` bigint(6) NOT NULL,
  `NSTS` bigint(6) DEFAULT NULL COMMENT '用户状态操作类型',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  `TASK_SEQUENCE` bigint(12) DEFAULT NULL,
  `FIRST_CDR_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(256) DEFAULT NULL,
  `EXT2` varchar(256) DEFAULT NULL,
  `EXT3` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市分表，例如I_USER_OS_PS_240_ERR';

/*Table structure for table `i_user_os_ps_h` */

DROP TABLE IF EXISTS `i_user_os_ps_h`;

CREATE TABLE `i_user_os_ps_h` (
  `ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `OLD_OS_STATUS` varchar(64) DEFAULT NULL,
  `BOSS_DONE_CODE` varchar(30) DEFAULT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(3) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `PS_TYPE` bigint(6) DEFAULT NULL,
  `NSTS` bigint(6) DEFAULT NULL COMMENT '用户状态操作类型',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL,
  `TASK_SEQUENCE` bigint(12) DEFAULT NULL,
  `FIRST_CDR_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(256) DEFAULT NULL,
  `EXT2` varchar(256) DEFAULT NULL,
  `EXT3` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按地市和创建日期分表，例如I_USER_OS_PS_H_240_201210';

/*Table structure for table `i_user_relation` */

DROP TABLE IF EXISTS `i_user_relation`;

CREATE TABLE `i_user_relation` (
  `PRODUCT_ID` bigint(15) NOT NULL,
  `USER_ID` bigint(15) NOT NULL,
  `RELATION_TYPE` bigint(8) NOT NULL COMMENT '1：亲情号码\n2：铁通上网账号\n3：铁通固话号码\n4：上网伴侣副号码\n5：副号随意换副号码',
  `OPP_NUMBER` varchar(128) NOT NULL,
  `OPP_REGION_CODE` bigint(4) DEFAULT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `OPP_ATTR` varchar(128) DEFAULT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  KEY `IDX_I_USER_RELATION_1` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_user_status` */

DROP TABLE IF EXISTS `i_user_status`;

CREATE TABLE `i_user_status` (
  `USER_ID` bigint(15) NOT NULL,
  `STS` bigint(8) NOT NULL COMMENT '1000：预开户\n1001： 正常\n1008：销户\n1010：预销户',
  `OS_STS` bigint(8) NOT NULL COMMENT '10：正常\n11：单停\n12：双停\n13：强制开机',
  `OS_STS_DTL` varchar(64) NOT NULL COMMENT '停机位的头两位最重要：0 用户主动停\n1: 账务停机（欺诈停）\n该字段不做转换，直接传值给BILLING，在BILLING侧做具体转换。BILLING侧的停机位包括：\n2：欠费停\n3：呼出限制停\n4：新入网额度停\n5：欠费预销户停\n6：有效期\n7：保留期停\n8：同证件停\n9：其他停(CRM的其他停机位)',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '1：新增\n2：修改\n3：删除',
  `SO_NBR` bigint(15) NOT NULL,
  `COMMIT_DATE` datetime NOT NULL,
  `SPLIT_REGION_CODE` varchar(6) NOT NULL,
  `TENANT_ID` bigint(12) NOT NULL,
  KEY `IDX_I_USER_STATUS_1` (`SO_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_user_validity_date` */

DROP TABLE IF EXISTS `i_user_validity_date`;

CREATE TABLE `i_user_validity_date` (
  `ID` bigint(15) NOT NULL,
  `USER_ID` bigint(15) NOT NULL,
  `CUST_ID` bigint(15) NOT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `CONTINUE_DATES` bigint(15) DEFAULT NULL,
  `DONE_DATE` datetime NOT NULL,
  `TENANT_ID` int(11) NOT NULL,
  `REGION_ID` int(11) NOT NULL,
  `EXT_1` varchar(255) DEFAULT NULL,
  `EXT_2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_user_validity_date_err` */

DROP TABLE IF EXISTS `i_user_validity_date_err`;

CREATE TABLE `i_user_validity_date_err` (
  `ID` bigint(15) NOT NULL,
  `USER_ID` bigint(15) NOT NULL,
  `CUST_ID` bigint(15) NOT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `CONTINUE_DATES` bigint(15) DEFAULT NULL,
  `DONE_DATE` datetime NOT NULL,
  `TENANT_ID` int(11) NOT NULL,
  `REGION_ID` int(11) NOT NULL,
  `EXT_1` varchar(255) DEFAULT NULL,
  `EXT_2` varchar(255) DEFAULT NULL,
  `ERR_INFO` varchar(255) DEFAULT NULL,
  `TF_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `i_user_validity_date_h` */

DROP TABLE IF EXISTS `i_user_validity_date_h`;

CREATE TABLE `i_user_validity_date_h` (
  `ID` bigint(15) NOT NULL,
  `USER_ID` bigint(15) NOT NULL,
  `CUST_ID` bigint(15) NOT NULL,
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `CONTINUE_DATES` bigint(15) DEFAULT NULL,
  `DONE_DATE` datetime NOT NULL,
  `TENANT_ID` int(11) NOT NULL,
  `REGION_ID` int(11) NOT NULL,
  `EXT_1` varchar(255) DEFAULT NULL,
  `EXT_2` varchar(255) DEFAULT NULL,
  `TF_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ims_cust_prod_sync` */

DROP TABLE IF EXISTS `ims_cust_prod_sync`;

CREATE TABLE `ims_cust_prod_sync` (
  `ID` bigint(15) NOT NULL,
  `CUST_ID` bigint(15) DEFAULT NULL,
  `ACCT_ID` bigint(15) DEFAULT NULL,
  `USER_ID` bigint(15) NOT NULL,
  `PHONE_ID` varchar(30) NOT NULL,
  `ACTIVATION_TIME` datetime NOT NULL,
  `SMS_LANGUAGE` bigint(2) DEFAULT NULL,
  `USSD_LANGUAGE` bigint(2) DEFAULT NULL,
  `IVR_LANGUAGE` bigint(2) DEFAULT NULL,
  `ACT_CHANNEL` bigint(2) DEFAULT NULL,
  `ACTIVE_CAC` varchar(255) DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `BOS_SO_DATE` datetime DEFAULT NULL,
  `BOS_SO_NBR` bigint(15) DEFAULT NULL,
  `REMARK` varchar(256) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `STS` bigint(2) NOT NULL,
  `SO_NBR` bigint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ims_cust_prod_sync_his` */

DROP TABLE IF EXISTS `ims_cust_prod_sync_his`;

CREATE TABLE `ims_cust_prod_sync_his` (
  `ID` bigint(15) NOT NULL,
  `CUST_ID` bigint(15) DEFAULT NULL,
  `ACCT_ID` bigint(15) DEFAULT NULL,
  `USER_ID` bigint(15) NOT NULL,
  `PHONE_ID` varchar(30) NOT NULL,
  `ACTIVATION_TIME` datetime NOT NULL,
  `SMS_LANGUAGE` bigint(2) DEFAULT NULL,
  `USSD_LANGUAGE` bigint(2) DEFAULT NULL,
  `IVR_LANGUAGE` bigint(2) DEFAULT NULL,
  `ACT_CHANNEL` bigint(2) DEFAULT NULL,
  `ACTIVE_CAC` varchar(255) DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `BOS_SO_DATE` datetime DEFAULT NULL,
  `BOS_SO_NBR` bigint(15) DEFAULT NULL,
  `REMARK` varchar(256) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `STS` bigint(2) NOT NULL,
  `SO_NBR` bigint(9) NOT NULL,
  `TF_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ims_res_sts_sync` */

DROP TABLE IF EXISTS `ims_res_sts_sync`;

CREATE TABLE `ims_res_sts_sync` (
  `ID` bigint(15) NOT NULL,
  `RESOURCE_ID` bigint(15) NOT NULL,
  `ACCT_ID` bigint(15) NOT NULL,
  `PHONE_ID` varchar(30) NOT NULL,
  `OS_STS` bigint(2) NOT NULL,
  `STS` bigint(4) NOT NULL,
  `OP_ID` bigint(15) NOT NULL,
  `ORG_ID` bigint(9) NOT NULL,
  `PEXPIRE_DATE` datetime DEFAULT NULL,
  `NEXPIRE_DATE` datetime DEFAULT NULL,
  `PSTS` bigint(4) DEFAULT NULL,
  `NSTS` bigint(4) DEFAULT NULL,
  `PSUB_TYPE` bigint(2) DEFAULT NULL,
  `NSUB_TYPE` bigint(2) DEFAULT NULL,
  `PFRAULD_FLAG` bigint(1) DEFAULT NULL,
  `NFRAULD_FLAG` bigint(1) DEFAULT NULL,
  `PUSERREQUEST_FLAG` bigint(1) DEFAULT NULL,
  `NUSERREQUEST_FLAG` bigint(1) DEFAULT NULL,
  `REASON_CODE` bigint(2) DEFAULT NULL,
  `PBALANCE` bigint(15) DEFAULT NULL,
  `NBALANCE` bigint(15) DEFAULT NULL,
  `CHANGE_TIME` datetime DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `SO_NBR` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ims_res_sts_sync_his` */

DROP TABLE IF EXISTS `ims_res_sts_sync_his`;

CREATE TABLE `ims_res_sts_sync_his` (
  `ID` bigint(15) NOT NULL,
  `RESOURCE_ID` bigint(15) NOT NULL,
  `ACCT_ID` bigint(15) NOT NULL,
  `PHONE_ID` varchar(30) NOT NULL,
  `OS_STS` bigint(2) NOT NULL,
  `STS` bigint(4) NOT NULL,
  `OP_ID` bigint(15) NOT NULL,
  `ORG_ID` bigint(9) NOT NULL,
  `PEXPIRE_DATE` datetime DEFAULT NULL,
  `NEXPIRE_DATE` datetime DEFAULT NULL,
  `PSTS` bigint(4) DEFAULT NULL,
  `NSTS` bigint(4) DEFAULT NULL,
  `PSUB_TYPE` bigint(2) DEFAULT NULL,
  `NSUB_TYPE` bigint(2) DEFAULT NULL,
  `PFRAULD_FLAG` bigint(1) DEFAULT NULL,
  `NFRAULD_FLAG` bigint(1) DEFAULT NULL,
  `PUSERREQUEST_FLAG` bigint(1) DEFAULT NULL,
  `NUSERREQUEST_FLAG` bigint(1) DEFAULT NULL,
  `REASON_CODE` bigint(2) DEFAULT NULL,
  `PBALANCE` bigint(15) DEFAULT NULL,
  `NBALANCE` bigint(15) DEFAULT NULL,
  `CHANGE_TIME` datetime DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `SO_NBR` bigint(15) NOT NULL,
  `TF_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_acc_agr_move` */

DROP TABLE IF EXISTS `ord_acc_agr_move`;

CREATE TABLE `ord_acc_agr_move` (
  `MOVEID` bigint(12) NOT NULL COMMENT '唯一记录ID',
  `CUST_ID` bigint(14) NOT NULL COMMENT '客户ID',
  `ACCT_ID` bigint(14) NOT NULL COMMENT '账户ID',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户ID',
  `NEWARG_ID` bigint(14) DEFAULT NULL COMMENT '新合同ID',
  `OLDARG_ID` bigint(14) DEFAULT NULL COMMENT '旧合同ID',
  `OPTION_FLAG` int(2) DEFAULT NULL COMMENT '操作类型：1：入合同  2:出合同 3：',
  `DEALFLAG` int(2) DEFAULT NULL COMMENT '处理标识  1：成功 2：失败',
  `CREATE_TIME` datetime DEFAULT NULL,
  `REMARK` varchar(2000) DEFAULT NULL COMMENT '描述',
  `EXT1` varchar(200) DEFAULT NULL COMMENT '备用字段1',
  `EXT2` varchar(200) DEFAULT NULL COMMENT '备用字段2',
  `EXT3` varchar(200) DEFAULT NULL COMMENT '备用字段3',
  `EXT4` varchar(200) DEFAULT NULL COMMENT '备用字段4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_accrel` */

DROP TABLE IF EXISTS `ord_accrel`;

CREATE TABLE `ord_accrel` (
  `ACCT_REL_ORDER_ID` bigint(12) NOT NULL,
  `ACCT_RELA_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `ACCT_ID` bigint(14) NOT NULL,
  `OLD_ACCT_ID` bigint(14) DEFAULT NULL COMMENT '异地支付前的帐户编号',
  `PAY_TYPE` bigint(2) NOT NULL COMMENT '付费关系类型(code_type=SO_ACCTREL_TYPE)\n1：默认帐户\n2：代付关系',
  `TOGETHER_FLAG` bigint(2) DEFAULT NULL COMMENT '是否统一支付(code_type=SO_YES_NO)\n0:否1:是',
  `PAY_USER_ID` bigint(12) DEFAULT NULL COMMENT '统付用户编号',
  `ITEM_TYPE` bigint(2) NOT NULL COMMENT '付费项目类型(code_type=SO_ACCTREL_ITEM_TYPE)\n1:普通科目\n2:科目集合\n3:产品',
  `ITEM_ID` bigint(14) NOT NULL COMMENT '科目或科目集编号，或者产品编号',
  `PAY_MODE` bigint(2) NOT NULL COMMENT '代付付费的方式(code_type=SO_ACCTREL_PAY_MODE)\n1. 全额\n2. 限额\n3. 比例',
  `MAX_PAY` bigint(12) DEFAULT NULL,
  `PAY_VALUE` bigint(12) NOT NULL,
  `OUT_ACCT_PRI` bigint(6) DEFAULT NULL COMMENT '用户多个账户付费时，指定这些账户代付的优先级。在代付关系设定时指定。',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `ACCT_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `REMARKS` varchar(255) DEFAULT NULL,
  `GRP_SPLIT_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`ACCT_REL_ORDER_ID`),
  KEY `IDX_ORD_ACCREL_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_ACCREL_2` (`OFFER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：记录用户选择账户为其默认付费账户、或为其科目或产品代付的请求信息。包括新建、变更、删除默认账户关系或账务关系信息。\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按地市分表\n\n历史表：地市年月进行分表(如ORD_DTL_INFO_H_011_201110，增加H_ID字段)\n\n竣工表：按地市年月进行分表(如ORD_DTL_INFO_F_011_201110)';

/*Table structure for table `ord_accrel_f` */

DROP TABLE IF EXISTS `ord_accrel_f`;

CREATE TABLE `ord_accrel_f` (
  `ACCT_REL_ORDER_ID` bigint(12) NOT NULL,
  `ACCT_RELA_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `ACCT_ID` bigint(14) NOT NULL,
  `OLD_ACCT_ID` bigint(14) DEFAULT NULL COMMENT '异地支付前的帐户编号',
  `PAY_TYPE` bigint(2) NOT NULL COMMENT '付费关系类型(code_type=SO_ACCTREL_TYPE)\n1：默认帐户\n2：代付关系',
  `TOGETHER_FLAG` bigint(2) DEFAULT NULL COMMENT '是否统一支付(code_type=SO_YES_NO)\n0:否1:是',
  `PAY_USER_ID` bigint(12) DEFAULT NULL COMMENT '统付用户编号',
  `ITEM_TYPE` bigint(2) NOT NULL COMMENT '付费项目类型(code_type=SO_ACCTREL_ITEM_TYPE)\n1:普通科目\n2:科目集合\n3:产品',
  `ITEM_ID` bigint(12) NOT NULL COMMENT '科目或科目集编号，或者产品编号',
  `PAY_MODE` bigint(2) NOT NULL COMMENT '代付付费的方式(code_type=SO_ACCTREL_PAY_MODE)\n1. 全额\n2. 限额\n3. 比例',
  `MAX_PAY` bigint(12) DEFAULT NULL,
  `PAY_VALUE` bigint(12) NOT NULL,
  `OUT_ACCT_PRI` bigint(6) DEFAULT NULL COMMENT '用户多个账户付费时，指定这些账户代付的优先级。在代付关系设定时指定。',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `ACCT_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `REMARKS` varchar(255) DEFAULT NULL,
  `GRP_SPLIT_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`ACCT_REL_ORDER_ID`),
  KEY `IDX_ORD_ACCREL_3` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_ACCREL_4` (`OFFER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_accrel_h` */

DROP TABLE IF EXISTS `ord_accrel_h`;

CREATE TABLE `ord_accrel_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `ACCT_REL_ORDER_ID` bigint(12) DEFAULT NULL,
  `ACCT_RELA_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `OLD_ACCT_ID` bigint(14) DEFAULT NULL COMMENT '异地支付前的帐户编号',
  `PAY_TYPE` bigint(2) DEFAULT NULL COMMENT '付费关系类型(code_type=SO_ACCTREL_TYPE)\n1：默认帐户\n2：代付关系',
  `TOGETHER_FLAG` bigint(2) DEFAULT NULL COMMENT '是否统一支付(code_type=SO_YES_NO)\n0:否1:是',
  `PAY_USER_ID` bigint(12) DEFAULT NULL COMMENT '统付用户编号',
  `ITEM_TYPE` bigint(2) DEFAULT NULL COMMENT '付费项目类型(code_type=SO_ACCTREL_ITEM_TYPE)\n1:普通科目\n2:科目集合\n3:产品',
  `ITEM_ID` bigint(12) DEFAULT NULL COMMENT '科目或科目集编号，或者产品编号',
  `PAY_MODE` bigint(2) DEFAULT NULL COMMENT '代付付费的方式(code_type=SO_ACCTREL_PAY_MODE)\n1. 全额\n2. 限额\n3. 比例',
  `PAY_VALUE` bigint(12) DEFAULT NULL,
  `MAX_PAY` bigint(12) DEFAULT NULL,
  `OUT_ACCT_PRI` bigint(6) DEFAULT NULL COMMENT '用户多个账户付费时，指定这些账户代付的优先级。在代付关系设定时指定。',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `ACCT_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `REMARKS` varchar(255) DEFAULT NULL,
  `GRP_SPLIT_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7915 DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110，增加H_ID字段)';

/*Table structure for table `ord_batch` */

DROP TABLE IF EXISTS `ord_batch`;

CREATE TABLE `ord_batch` (
  `BATCH_ID` bigint(14) NOT NULL COMMENT '批次ID',
  `BATCH_TASK_ID` bigint(14) NOT NULL COMMENT '批量任务ID',
  `BATCH_TASK_TYPE` varchar(4) NOT NULL COMMENT '批量任务类型 1：套卡批开，2：普通批开，3：批量变更主Offer……',
  `BATCH_TASK_NAME` varchar(64) NOT NULL,
  `IMP_SUCC_QTY` bigint(8) DEFAULT NULL COMMENT '导入数量',
  `IMP_FAIL_QTY` bigint(8) DEFAULT NULL COMMENT '导入失败数量',
  `IMP_FILE` varchar(255) DEFAULT NULL COMMENT '导入文件名 路径',
  `IMP_FAIL_FILE` varchar(255) DEFAULT NULL COMMENT '导入失败数据生成文件名 路径',
  `EXE_SUCC_QTY` bigint(8) DEFAULT NULL COMMENT '执行成功数量',
  `EXE_FAIL_QTY` bigint(8) DEFAULT NULL COMMENT '执行失败数量',
  `LAST_EXE_TIME` datetime DEFAULT NULL COMMENT '线程活动时间戳',
  `STATUS` varchar(1) DEFAULT NULL COMMENT '状态 1：导入中，2：导入完成-未执行，3：正在执行，4：执行结束',
  `IMP_DESC` varchar(255) DEFAULT NULL COMMENT '导入结果描述',
  `EXE_DESC` varchar(255) DEFAULT NULL COMMENT '执行结果描述',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `OP_ID` varchar(32) NOT NULL COMMENT '创建员工',
  `ORG_ID` varchar(32) NOT NULL,
  `STATE` varchar(1) NOT NULL COMMENT '状态，0：无效，1：有效',
  PRIMARY KEY (`BATCH_ID`),
  KEY `IDX_B_TASK_ID` (`BATCH_TASK_ID`),
  KEY `IDX_B_STATUS` (`STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_batch_connon_info` */

DROP TABLE IF EXISTS `ord_batch_connon_info`;

CREATE TABLE `ord_batch_connon_info` (
  `BATCH_INFO_ID` bigint(12) NOT NULL COMMENT '批量业务产品信息编号',
  `BATCH_DATA_ID` bigint(12) NOT NULL COMMENT '批量订单编号',
  `XML1` varchar(4000) DEFAULT NULL COMMENT '报文内容',
  `XML2` varchar(4000) DEFAULT NULL COMMENT '报文内容2',
  `XML3` varchar(4000) DEFAULT NULL COMMENT '报文内容3',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作编码',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员ID',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织ID',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  PRIMARY KEY (`BATCH_INFO_ID`),
  KEY `IDX_ORD_BATCH_CONNON_INFO` (`BATCH_DATA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：批量业务所选产品信息\n\n分表方式：按地市进行分表(如ORD_BATCH_COMMON_INFO_571)\n\n历史表：无';

/*Table structure for table `ord_batch_data` */

DROP TABLE IF EXISTS `ord_batch_data`;

CREATE TABLE `ord_batch_data` (
  `BATCH_DATA_ID` bigint(12) NOT NULL COMMENT '批量订单编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号，具体可以参加公共库的bs_operation表.',
  `CONFIG_ID` bigint(12) DEFAULT NULL COMMENT '配置模板编号',
  `ORDER_CODE` varchar(40) DEFAULT NULL COMMENT '订单编码',
  `IS_IN_FILE` char(1) DEFAULT NULL COMMENT '数制是否存放于文件中（code_type=SO_YES_NO）',
  `FILE_PATH` varchar(100) DEFAULT NULL COMMENT '文件路径',
  `TOTAL_COUNT` bigint(6) DEFAULT NULL COMMENT '记录总数',
  `ERROR_COUNT` bigint(6) DEFAULT NULL COMMENT '失败数量',
  `SUCCESS_COUNT` bigint(6) DEFAULT NULL COMMENT '成功数量',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `PROCESS_STATE` char(1) DEFAULT NULL COMMENT '处理标识(code_type=SO_BATCH_PROCESS_STATE)\n0：任务生成(已生成任务明细)\n4：初始状态(未生成任务明细，只上传了文件)\n1全部成功\n2部分成功\n3全部失败',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`BATCH_DATA_ID`),
  KEY `IDX_ORD_BATCH_DATA_1` (`ORDER_CODE`),
  KEY `IDX_ORD_BATCH_DATA_2` (`OP_ID`),
  KEY `IDX_ORD_BATCH_DATA_3` (`CREATE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用于记录批量业务订单表的主要信息\n\n分表方式：按地市进行分表(如ORD_BATCH_DATA_571)\n\n历史表：无';

/*Table structure for table `ord_batch_data_dtl` */

DROP TABLE IF EXISTS `ord_batch_data_dtl`;

CREATE TABLE `ord_batch_data_dtl` (
  `BATCH_DATA_DETAIL_ID` bigint(12) NOT NULL COMMENT '明细编号',
  `BATCH_DATA_ID` bigint(12) NOT NULL COMMENT '批量订单编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号，具体可以参加公共库的bs_operation表.',
  `CONFIG_ID` bigint(12) DEFAULT NULL COMMENT '配置ID',
  `ORDER_CUSTOMER_ID` bigint(12) DEFAULT NULL COMMENT '客户订单编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号码',
  `FILE_CONTENT` varchar(1000) DEFAULT NULL COMMENT '文件行内容',
  `SUCC_FLAG` char(1) DEFAULT '0' COMMENT '任务清单处理标识(code_type=SO_BATCH_PROCESS_STATE_DETAIL)\n0--初始状态，1-成功，2-失败',
  `ERROR_MSG` varchar(1000) DEFAULT NULL COMMENT '错误信息',
  `ERROR_STACK` varchar(4000) DEFAULT NULL COMMENT '错误栈信息',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作编码',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员ID',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织ID',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  PRIMARY KEY (`BATCH_DATA_DETAIL_ID`),
  KEY `IDX_ORD_BATCH_DATA_DTL_1` (`BATCH_DATA_ID`),
  KEY `IDX_ORD_BATCH_DATA_DTL_2` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用于批量业务的具体记录信息\n\n分表:按地市进行分表(如ORD_BATCH_DATA_DTL_571)\n\n历史表：按地市和年月进行分表(ORD_BATCH_DATA_DTL_H_571_201110)';

/*Table structure for table `ord_batch_dtl` */

DROP TABLE IF EXISTS `ord_batch_dtl`;

CREATE TABLE `ord_batch_dtl` (
  `BATCH_DTL_ID` bigint(14) NOT NULL COMMENT '业务流水ID',
  `BATCH_ID` bigint(14) NOT NULL COMMENT '业务流水ID',
  `BATCH_TASK_ID` bigint(14) NOT NULL COMMENT '批量任务ID',
  `BATCH_TASK_TYPE` varchar(4) NOT NULL COMMENT '批量任务类型 1：套卡批开，2：普通批开，3：批量变更主Offer……',
  `BILL_ID` varchar(32) DEFAULT NULL COMMENT '用户计费号码',
  `OFFER_INS_ID` bigint(14) DEFAULT NULL COMMENT 'OFFER实例ID',
  `NEW_OFFER_ID` bigint(14) DEFAULT NULL COMMENT '新OFFER_ID',
  `CUST_ORDER_ID` bigint(14) DEFAULT NULL COMMENT '关联订单ID',
  `IMSI` varchar(64) DEFAULT NULL COMMENT 'IMSI',
  `ICCID` varchar(64) DEFAULT NULL COMMENT 'ICCID',
  `STATUS` varchar(1) NOT NULL COMMENT '处理状态 1：初始，2-处理中，3-处理成功（提交订单），4-处理失败',
  `DEAL_TIME` datetime DEFAULT NULL COMMENT '处理时间',
  `DEAL_DESC` varchar(4000) DEFAULT NULL COMMENT '处理描述',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `CREATE_STAFF` varchar(32) NOT NULL COMMENT '创建员工',
  PRIMARY KEY (`BATCH_DTL_ID`),
  KEY `IDX_B_DTL_TASK_ID` (`BATCH_TASK_ID`),
  KEY `IDX_B_DTL_TASK_TYPE` (`BATCH_TASK_TYPE`),
  KEY `IDX_B_DTL_STATUS` (`STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_batch_dtl_sub` */

DROP TABLE IF EXISTS `ord_batch_dtl_sub`;

CREATE TABLE `ord_batch_dtl_sub` (
  `BATCH_DTL_SUB_ID` bigint(14) NOT NULL COMMENT '业务流水子ID',
  `BATCH_DTL_ID` bigint(14) NOT NULL COMMENT '业务流水ID',
  `PARENT_DTL_SUB_ID` bigint(14) DEFAULT NULL COMMENT '上级业务子流水ID',
  `PM_CODE` varchar(32) NOT NULL COMMENT '参数编码',
  `PM_NAME` varchar(64) DEFAULT NULL COMMENT '参数名称',
  `PM_VALUE` varchar(255) DEFAULT NULL COMMENT '参数值',
  `PM_INDEX` varchar(4) DEFAULT NULL COMMENT '参数值顺序',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `CREATE_STAFF` varchar(32) NOT NULL COMMENT '创建员工',
  PRIMARY KEY (`BATCH_DTL_SUB_ID`),
  KEY `IDX_B_DTL_SUB_1` (`BATCH_DTL_ID`),
  KEY `IDX_B_DTL_SUB_2` (`PM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_batch_group` */

DROP TABLE IF EXISTS `ord_batch_group`;

CREATE TABLE `ord_batch_group` (
  `ORD_BATCH_GROUP_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `SAP_ORDER_ID` varchar(10) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `BATCH_ORDER_ID` varchar(50) DEFAULT NULL,
  `GROUP_ID` bigint(14) DEFAULT NULL,
  `DELIVERY_ADDRESS` varchar(250) DEFAULT NULL,
  `DELIVERY_DATE` datetime DEFAULT NULL,
  `DELIVERY_STATE` bigint(2) DEFAULT NULL COMMENT '1：预占\n2：实占\n3：预占失败',
  `TASK_ID` varchar(25) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1：处理失败\n2：不需要物流\n3：需要物流',
  `CREATE_DATE` datetime DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`ORD_BATCH_GROUP_ID`),
  KEY `IDX_ORD_BATCH_GROUP_01` (`DELIVERY_ADDRESS`,`DELIVERY_DATE`,`STATE`,`BATCH_ORDER_ID`),
  KEY `IDX_ORD_BATCH_GROUP_02` (`BATCH_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='批量业务发送SAP分组表\n按租户分表';

/*Table structure for table `ord_batch_group_detail` */

DROP TABLE IF EXISTS `ord_batch_group_detail`;

CREATE TABLE `ord_batch_group_detail` (
  `ORD_BATCH_GROUP_DETAIL_ID` bigint(14) NOT NULL,
  `ORD_BATCH_GROUP_ID` bigint(14) DEFAULT NULL,
  `DOC_TYPE` varchar(4) DEFAULT NULL,
  `OUTLET_CODE` varchar(10) DEFAULT NULL,
  `ITEM_NUMBER` varchar(10) DEFAULT NULL,
  `MATERIAL_ID` varchar(18) DEFAULT NULL,
  `SALES_UNIT` varchar(3) DEFAULT NULL,
  `NET_PRICE` varchar(25) DEFAULT NULL,
  `VAT_AMOUNT` varchar(25) DEFAULT NULL,
  `TRANSACTION_ID` varchar(40) DEFAULT NULL,
  `TRANSACTION_LINE_ID` varchar(40) DEFAULT NULL,
  `EQUIP_NUMBER` varchar(30) DEFAULT NULL,
  `TRACE_NUMBER` varchar(30) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `ITEM_COLECTION` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`ORD_BATCH_GROUP_DETAIL_ID`),
  KEY `IDX_ORD_BATCH_GROUP_DETAIL_01` (`ITEM_NUMBER`),
  KEY `IDX_ORD_BATCH_GROUP_DETAIL_02` (`ORD_BATCH_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='批量业务发送SAP分组明细表\n按租户分表';

/*Table structure for table `ord_batch_group_detail_h` */

DROP TABLE IF EXISTS `ord_batch_group_detail_h`;

CREATE TABLE `ord_batch_group_detail_h` (
  `ORD_BATCH_GROUP_DETAIL_ID` bigint(14) NOT NULL,
  `ORD_BATCH_GROUP_ID` bigint(14) DEFAULT NULL,
  `DOC_TYPE` varchar(4) DEFAULT NULL,
  `OUTLET_CODE` varchar(10) DEFAULT NULL,
  `ITEM_NUMBER` varchar(10) DEFAULT NULL,
  `MATERIAL_ID` varchar(18) DEFAULT NULL,
  `SALES_UNIT` varchar(3) DEFAULT NULL,
  `NET_PRICE` varchar(25) DEFAULT NULL,
  `VAT_AMOUNT` varchar(25) DEFAULT NULL,
  `TRANSACTION_ID` varchar(40) DEFAULT NULL,
  `TRANSACTION_LINE_ID` varchar(40) DEFAULT NULL,
  `EQUIP_NUMBER` varchar(30) DEFAULT NULL,
  `TRACE_NUMBER` varchar(30) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `ITEM_COLECTION` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`ORD_BATCH_GROUP_DETAIL_ID`),
  KEY `IDX_ORD_BATCH_GROUP_DETAIL_01` (`ITEM_NUMBER`),
  KEY `IDX_ORD_BATCH_GROUP_DETAIL_02` (`ORD_BATCH_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='批量业务发送SAP分组明细历史表\n按租户,年月分表';

/*Table structure for table `ord_batch_group_h` */

DROP TABLE IF EXISTS `ord_batch_group_h`;

CREATE TABLE `ord_batch_group_h` (
  `ORD_BATCH_GROUP_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `SAP_ORDER_ID` varchar(10) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `BATCH_ORDER_ID` varchar(50) DEFAULT NULL,
  `GROUP_ID` bigint(14) DEFAULT NULL,
  `DELIVERY_ADDRESS` varchar(250) DEFAULT NULL,
  `DELIVERY_DATE` datetime DEFAULT NULL,
  `DELIVERY_STATE` bigint(2) DEFAULT NULL COMMENT '1：预占\n2：实占\n3：预占失败',
  `TASK_ID` varchar(25) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1：处理失败\n2：不需要物流\n3：需要物流',
  `CREATE_DATE` datetime DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`ORD_BATCH_GROUP_ID`),
  KEY `IDX_ORD_BATCH_GROUP_01` (`DELIVERY_ADDRESS`,`DELIVERY_DATE`,`STATE`,`BATCH_ORDER_ID`),
  KEY `IDX_ORD_BATCH_GROUP_02` (`BATCH_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='批量业务发送SAP分组历史表\n按租户,年月分表';

/*Table structure for table `ord_batch_task` */

DROP TABLE IF EXISTS `ord_batch_task`;

CREATE TABLE `ord_batch_task` (
  `BATCH_TASK_ID` bigint(14) NOT NULL COMMENT '批量任务ID',
  `BATCH_TASK_TYPE` varchar(4) NOT NULL COMMENT '批量任务类型 1：套卡批开，2：普通批开，3：批量变更主Offer……',
  `BATCH_TASK_NAME` varchar(64) NOT NULL COMMENT '批量任务名称',
  `TASK_START_TIME` datetime DEFAULT NULL COMMENT '任务生效时间',
  `TASK_END_TIME` datetime DEFAULT NULL COMMENT '任务失效时间',
  `AUDIT_FILE_NO` varchar(64) DEFAULT NULL COMMENT '核批文号',
  `FILE_PATH` varchar(512) DEFAULT NULL COMMENT '文件存放路径',
  `REMARK` varchar(4096) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '创建员工',
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(20) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(3) DEFAULT NULL COMMENT '0、新创建;1,待执行，2，进行中；3、已完成4、失败',
  `AMOUNT` int(11) DEFAULT '0' COMMENT '处理总数量',
  `SUCCESS` int(11) DEFAULT '0' COMMENT '成功数量',
  `FAILD` int(11) DEFAULT '0' COMMENT '失败数量',
  PRIMARY KEY (`BATCH_TASK_ID`),
  KEY `IDX_TASK_TYPE` (`BATCH_TASK_TYPE`),
  KEY `IDX_TASK_NAME` (`BATCH_TASK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_batch_task_param` */

DROP TABLE IF EXISTS `ord_batch_task_param`;

CREATE TABLE `ord_batch_task_param` (
  `BATCH_TASK_PM_ID` bigint(14) NOT NULL COMMENT '批量任务参数ID',
  `BATCH_TASK_ID` bigint(14) NOT NULL COMMENT '批量任务ID',
  `PARENT_TASK_PM_ID` bigint(20) DEFAULT NULL COMMENT '上级批量任务参数ID',
  `PM_CODE` varchar(32) NOT NULL COMMENT '参数编码',
  `PM_NAME` varchar(64) DEFAULT NULL COMMENT '参数名称',
  `PM_VALUE` varchar(255) DEFAULT NULL COMMENT '参数值',
  `PM_INDEX` varchar(255) DEFAULT NULL COMMENT '参数值顺序',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `CREATE_STAFF` varchar(32) NOT NULL COMMENT '创建员工',
  PRIMARY KEY (`BATCH_TASK_PM_ID`),
  KEY `IDX_TASK_PM_1` (`BATCH_TASK_ID`),
  KEY `IDX_TASK_PM_2` (`PM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_batfile_dtl_info` */

DROP TABLE IF EXISTS `ord_batfile_dtl_info`;

CREATE TABLE `ord_batfile_dtl_info` (
  `DTL_ID` bigint(14) NOT NULL,
  `BATCH_ID` bigint(12) DEFAULT NULL COMMENT '批次号',
  `RES_ID` varchar(32) DEFAULT NULL COMMENT '号码',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `FEE` varchar(12) DEFAULT NULL COMMENT '费用',
  `FILE_LINE_ID` varchar(14) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `ORD_CUST_ID` bigint(12) DEFAULT NULL COMMENT '处理订单号',
  `CUST_ID` bigint(12) DEFAULT NULL COMMENT '客户ID',
  `ICCID` varchar(32) DEFAULT NULL COMMENT 'sim卡号',
  `STATE` varchar(2) DEFAULT NULL COMMENT '1、待执行；2、执行中；3、执行成功；4、执行失败',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `REMARK` varchar(256) DEFAULT NULL,
  `EXT_1` varchar(400) DEFAULT NULL,
  `EXT_2` varchar(400) DEFAULT NULL,
  `EXT_3` varchar(400) DEFAULT NULL,
  `EXT_4` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`DTL_ID`),
  KEY `KEY_1` (`BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_batfile_model` */

DROP TABLE IF EXISTS `ord_batfile_model`;

CREATE TABLE `ord_batfile_model` (
  `FORMAT_ID` bigint(14) NOT NULL,
  `FILE_TYPE` bigint(2) NOT NULL,
  `COL_SPLIT` varchar(25) NOT NULL,
  `COL_COUNT` bigint(3) NOT NULL,
  `EXT_1` varchar(255) DEFAULT NULL,
  `EXT_2` varchar(255) DEFAULT NULL,
  `EXT_3` varchar(255) DEFAULT NULL,
  `EXT_4` varchar(255) DEFAULT NULL,
  `STATE` varchar(2) NOT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FORMAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_batfile_model_col` */

DROP TABLE IF EXISTS `ord_batfile_model_col`;

CREATE TABLE `ord_batfile_model_col` (
  `COL_ID` bigint(14) NOT NULL,
  `FORMAT_ID` bigint(14) NOT NULL,
  `COL_NAME` varchar(30) NOT NULL,
  `COL_POSITION` bigint(3) NOT NULL,
  `IS_MUST` bigint(2) NOT NULL,
  `IS_KEY` bigint(2) NOT NULL,
  `STATE` varchar(2) NOT NULL,
  `EXT_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EXT_2` varchar(255) DEFAULT NULL,
  `EXT_3` varchar(255) DEFAULT NULL,
  `EXT_4` varchar(255) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`COL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_batfile_store` */

DROP TABLE IF EXISTS `ord_batfile_store`;

CREATE TABLE `ord_batfile_store` (
  `ID` bigint(14) NOT NULL,
  `LINE_ID` bigint(14) NOT NULL,
  `FILE_ID` bigint(14) NOT NULL,
  `DTL_ID` char(10) DEFAULT NULL,
  `COL_ID` bigint(14) NOT NULL,
  `COL_NAME` varchar(255) NOT NULL,
  `COL_VALUE` varchar(255) DEFAULT NULL,
  `BATCH_ORDER_ID` varchar(255) DEFAULT NULL,
  `SINGLE_ORDER_ID` varchar(255) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `EXT_1` varchar(255) DEFAULT NULL,
  `EXT_2` varchar(255) DEFAULT NULL,
  `EXT_3` varchar(255) DEFAULT NULL,
  `EXT_4` varchar(255) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `STATE` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_batprocess_fileinfo` */

DROP TABLE IF EXISTS `ord_batprocess_fileinfo`;

CREATE TABLE `ord_batprocess_fileinfo` (
  `FILE_ID` bigint(14) NOT NULL,
  `FILE_NAME` varchar(255) NOT NULL,
  `BATCH_TYPE` bigint(2) NOT NULL,
  `BATCH_CUSTOMER_ORDER_ID` bigint(16) DEFAULT NULL,
  `TEMPLATE_CODE` varchar(155) NOT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `BOOKING_DATE` datetime DEFAULT NULL,
  `ORGINAL_FILE_NAME` varchar(255) NOT NULL,
  `FILE_INIT_SUM` bigint(6) DEFAULT NULL,
  `FILE_SUCCESS_SUM` bigint(6) DEFAULT NULL,
  `FILE_ERROR_SUM` bigint(6) DEFAULT NULL,
  `OP_ID` bigint(14) NOT NULL,
  `ORG_ID` bigint(14) NOT NULL,
  `STATE` varchar(2) NOT NULL,
  `EXT_1` varchar(255) DEFAULT NULL,
  `EXT_2` varchar(255) DEFAULT NULL,
  `EXT_3` varchar(255) DEFAULT NULL,
  `EXT_4` varchar(255) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_batprocess_model` */

DROP TABLE IF EXISTS `ord_batprocess_model`;

CREATE TABLE `ord_batprocess_model` (
  `MOD_ID` bigint(14) NOT NULL,
  `MOD_NAME` varchar(255) NOT NULL,
  `FTP_PATH_CODE` varchar(255) NOT NULL,
  `MOD_FILE_FORMAT_ID` bigint(14) NOT NULL,
  `STATE` varchar(2) NOT NULL,
  `EXT_1` varchar(4000) DEFAULT NULL,
  `EXT_2` varchar(255) DEFAULT NULL,
  `EXT_3` varchar(255) DEFAULT NULL,
  `EXT_4` varchar(255) DEFAULT NULL,
  `REMARK` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`MOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_batprocess_model_rule` */

DROP TABLE IF EXISTS `ord_batprocess_model_rule`;

CREATE TABLE `ord_batprocess_model_rule` (
  `MOD_RULE_ID` bigint(14) DEFAULT NULL,
  `MOD_ID` bigint(14) DEFAULT NULL,
  `RULE_NAME` varchar(1000) DEFAULT NULL,
  `RULE_FILE_NAME` varchar(1000) DEFAULT NULL,
  `FUNC_NAME` varchar(768) DEFAULT NULL,
  `PARAM` varchar(18) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EXT_1` varchar(200) DEFAULT NULL,
  `EXT_2` varchar(200) DEFAULT NULL,
  `EXT_3` varchar(200) DEFAULT NULL,
  `REMARK` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_batsingle_order` */

DROP TABLE IF EXISTS `ord_batsingle_order`;

CREATE TABLE `ord_batsingle_order` (
  `ID` bigint(14) NOT NULL,
  `FILE_ID` bigint(14) NOT NULL,
  `BATCH_ORDER_ID` bigint(16) DEFAULT NULL,
  `MOD_ID` bigint(12) NOT NULL,
  `SINGLE_ORDER_ID` bigint(16) DEFAULT NULL,
  `DELIVERY_ORDER_ID` bigint(16) DEFAULT NULL,
  `WF_TASK_ID` varchar(50) DEFAULT NULL,
  `KEY_COL_ID` bigint(14) DEFAULT NULL,
  `KEY_COL_NAME` varchar(50) DEFAULT NULL,
  `KEY_COL_VALUE` varchar(255) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `EXT_1` varchar(255) DEFAULT NULL,
  `EXT_2` varchar(255) DEFAULT NULL,
  `EXT_3` varchar(255) DEFAULT NULL,
  `EXT_4` varchar(255) DEFAULT NULL,
  `REMARK` varchar(8000) DEFAULT NULL,
  `STATE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ORD_BATSINGLE_ORDER_1` (`FILE_ID`),
  KEY `IDX_ORD_BATSINGLE_ORDER_2` (`STATE`,`MOD_ID`,`CREATE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_batsingle_order_h` */

DROP TABLE IF EXISTS `ord_batsingle_order_h`;

CREATE TABLE `ord_batsingle_order_h` (
  `ID` bigint(14) NOT NULL,
  `FILE_ID` bigint(14) NOT NULL,
  `BATCH_ORDER_ID` bigint(16) DEFAULT NULL,
  `MOD_ID` bigint(12) NOT NULL,
  `SINGLE_ORDER_ID` bigint(16) DEFAULT NULL,
  `DELIVERY_ORDER_ID` bigint(16) DEFAULT NULL,
  `WF_TASK_ID` varchar(50) DEFAULT NULL,
  `KEY_COL_ID` bigint(14) DEFAULT NULL,
  `KEY_COL_NAME` varchar(50) DEFAULT NULL,
  `KEY_COL_VALUE` varchar(255) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `EXT_1` varchar(255) DEFAULT NULL,
  `EXT_2` varchar(255) DEFAULT NULL,
  `EXT_3` varchar(255) DEFAULT NULL,
  `EXT_4` varchar(255) DEFAULT NULL,
  `REMARK` varchar(8000) DEFAULT NULL,
  `STATE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_bundle_user_rel` */

DROP TABLE IF EXISTS `ord_bundle_user_rel`;

CREATE TABLE `ord_bundle_user_rel` (
  `SEQ_ID` bigint(14) NOT NULL COMMENT '序列',
  `PRE_CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '订单ID',
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '操作类型',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户ID',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '号码',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT 'OFFER的操作类型',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '营销案OFFER',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '客户ID',
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '订BUNDLE OFFER订单ID',
  `BUNDLE_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '主BOUNDLE的营销案OFFERORDID 只此BOUNDLE的批次号',
  `BUNDLE_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '主BOUNDLE的营销案OFFER',
  `DISCOUNT_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '实现优惠的ADD ON',
  `DISCOUNT_OFFER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT 'BUNDLE ADD ON生成订单ID',
  `DISCOUNT_OFFER_INST_ID` bigint(12) DEFAULT NULL COMMENT 'BUNDLE ADD ON生成的OFFER_INST_ID',
  `RC_FEE` varchar(30) DEFAULT NULL COMMENT '月费',
  `DISCOUNT_TYPE` varchar(30) DEFAULT NULL COMMENT '折扣类型',
  `DISCOUNT_RC_FEE` varchar(30) DEFAULT NULL COMMENT '折扣后月费',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `EXT1` varchar(200) DEFAULT NULL COMMENT '备用字段1',
  `EXT2` varchar(200) DEFAULT NULL COMMENT '备用字段2',
  `EXT3` varchar(200) DEFAULT NULL COMMENT '备用字段3',
  `EXT4` varchar(200) DEFAULT NULL COMMENT '备用字段4',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_ORD_BUNDLE_REL_1` (`USER_ID`),
  KEY `IDX_ORD_BUNDLE_REL_2` (`OFFER_INST_ID`),
  KEY `IDX_ORD_BUNDLE_REL_3` (`BUNDLE_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_bundle_user_rel_h` */

DROP TABLE IF EXISTS `ord_bundle_user_rel_h`;

CREATE TABLE `ord_bundle_user_rel_h` (
  `SEQ_ID` bigint(14) NOT NULL COMMENT '序列',
  `PRE_CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '订单ID',
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '操作类型',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户ID',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '号码',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT 'OFFER的操作类型',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '营销案OFFER',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '客户ID',
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '订BUNDLE OFFER订单ID',
  `BUNDLE_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '主BOUNDLE的营销案OFFERORDID 只此BOUNDLE的批次号',
  `BUNDLE_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '主BOUNDLE的营销案OFFER',
  `DISCOUNT_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '实现优惠的ADD ON',
  `DISCOUNT_OFFER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT 'BUNDLE ADD ON生成订单ID',
  `DISCOUNT_OFFER_INST_ID` bigint(12) DEFAULT NULL COMMENT 'BUNDLE ADD ON生成的OFFER_INST_ID',
  `RC_FEE` varchar(30) DEFAULT NULL COMMENT '月费',
  `DISCOUNT_TYPE` varchar(30) DEFAULT NULL COMMENT '折扣类型',
  `DISCOUNT_RC_FEE` varchar(30) DEFAULT NULL COMMENT '折扣后月费',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `EXT1` varchar(200) DEFAULT NULL COMMENT '备用字段1',
  `EXT2` varchar(200) DEFAULT NULL COMMENT '备用字段2',
  `EXT3` varchar(200) DEFAULT NULL COMMENT '备用字段3',
  `EXT4` varchar(200) DEFAULT NULL COMMENT '备用字段4',
  PRIMARY KEY (`SEQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_busi_limit` */

DROP TABLE IF EXISTS `ord_busi_limit`;

CREATE TABLE `ord_busi_limit` (
  `BUSI_LIMIT_ORD_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '客户订单编号',
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '策划订单编号',
  `BUSI_LIMIT_INST_ID` bigint(14) DEFAULT NULL COMMENT '用户业务受限编号',
  `USER_ID` bigint(14) NOT NULL COMMENT '用户编号',
  `LIMIT_TYPE` char(1) DEFAULT NULL COMMENT '后向限制类型\n1操作进入时检查\n2选择产品时检查',
  `LIMIT_RULE_ID` bigint(12) DEFAULT NULL COMMENT '后台规则编号',
  `LIMIT_RULE_PARAM_LIST` varchar(200) DEFAULT NULL COMMENT '后台规则参数',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号。\n-1：该限制针对所有策划。\n0：该限制与策划无关。\n其他：该限制针对具体的该策划编号。',
  `LIMIT_BUSI_TYPE` char(1) NOT NULL DEFAULT '1' COMMENT '0：全部；1：订购；2：退订；3：修改',
  `LIMIT_BUSI_ID` bigint(12) NOT NULL COMMENT '限制的业务操作编号。-1所有的业务操作。',
  `BEGIN_TIME` datetime NOT NULL COMMENT '开始时间',
  `END_TIME` datetime NOT NULL COMMENT '结束时间',
  `LIMIT_FLAG` bigint(1) NOT NULL DEFAULT '1' COMMENT '限制标识\n1：允许；\n2：允许，但有警告\n3：不允许',
  `LIMLT_INPUT_TYPE` bigint(1) DEFAULT NULL COMMENT '限制入口类型\n1：用户申请；前台界面可查，用户可以取消\n2：产品订购；前台界面可查，用户不能取消\n3：后台设置；前台界面不可查，用户不能取消',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `BATCH_FLAG` bigint(1) DEFAULT NULL COMMENT '1 批量\n0 非批量',
  `CHANNEL_ID` varchar(255) DEFAULT NULL COMMENT '渠道ID (CODE_TYPE=SO_CHANNEL_TYPE)\n0	联网银行\n1	营业厅\n10	BBOSS系统\n11	业务平台WEB\n12	业务平台IVR\n13	业务平台SMS\n14	业务平台接口机\n15	业务平台批量\n16	业务平台功能复制开通\n17	业务平台文件开通\n18	业务平台WAP\n19	业务平台MMS\n2	10086客服\n20	业务平台JAVA\n23	短信营业厅\n25	营业批量受理\n26	自助终端\n27	银行前置机\n28	知识库\n29	4A\n3	代理商\n30	集团网厅\n31	ESOP\n32	坐席框架\n33	电话经理\n34	CMOP\n35	排队机\n36	联动优势个人代收\n37	联动优势小额支付\n38	联动优势集团缴费\n39	泛伟统一充值平台\n4	网上营业厅\n40	银行邮政代扣\n41	华为二卡合一平台\n42	大唐空中写卡\n43	鉴权中心\n44	aicas平台\n45	在线客服\n46	电子商务\n47	自动拨测\n5	合作营业厅\n6	内部管理\n7	后台自动处理\n8	小额支付\n9	外部接口\n99	CBOSS',
  `MSG` varchar(4000) DEFAULT NULL,
  `LMT_MODE` char(1) DEFAULT NULL COMMENT '0：指定月数受限\n1:指定时间受限\n2：永久受限',
  `LMT_MONTHS` bigint(3) DEFAULT NULL,
  `LMT_END_TIME` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  PRIMARY KEY (`BUSI_LIMIT_ORD_ID`),
  KEY `IDX_ORD_BULIM_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_BULIM_2` (`OFFER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：记录产品中配置的后向限制在用户订购是需要实例化的限制信息。\n后向限制主要用于定义在用户订购产品后不允许进行的操作。\n具体定义参见产品管理的定义。\n用户业务受限订单表.用于用户对产品或者单纯业务操作时检查该产品或操作是否有权进行。使用时如果传入产品编号和操作编号，则查询该用户的该策划（含-1所有策划）、该操作（含-1所有操作）的限制数据。查询到的数据按照-1数量的从高到底的优先级执行。\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按用户编号随机分10张表(北京:ORD_BUSI_LIMIT_100开始,上海:ORD_BUSI_LIMIT_210开始)\n\n历史表：按用户编号分片和年月进行分表(如ORD_BUSI_LIMIT_H_100_201110，增加H_ID字段)\n\n竣工表：按用户编号分片和年月进行分表(如ORD_BUSI_LIMIT_F_100_201110)';

/*Table structure for table `ord_busi_limit_f` */

DROP TABLE IF EXISTS `ord_busi_limit_f`;

CREATE TABLE `ord_busi_limit_f` (
  `BUSI_LIMIT_ORD_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '客户订单编号',
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '策划订单编号',
  `BUSI_LIMIT_INST_ID` bigint(14) DEFAULT NULL COMMENT '用户业务受限编号',
  `USER_ID` bigint(14) NOT NULL COMMENT '用户编号',
  `LIMIT_TYPE` char(1) DEFAULT NULL COMMENT '后向限制类型\n1操作进入时检查\n2选择产品时检查',
  `LIMIT_RULE_ID` bigint(12) DEFAULT NULL COMMENT '后台规则编号',
  `LIMIT_RULE_PARAM_LIST` varchar(200) DEFAULT NULL COMMENT '后台规则参数',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号。\n-1：该限制针对所有策划。\n0：该限制与策划无关。\n其他：该限制针对具体的该策划编号。',
  `LIMIT_BUSI_TYPE` char(1) NOT NULL DEFAULT '1' COMMENT '0：全部；1：订购；2：退订；3：修改',
  `LIMIT_BUSI_ID` bigint(12) NOT NULL COMMENT '限制的业务操作编号。-1所有的业务操作。',
  `BEGIN_TIME` datetime NOT NULL COMMENT '开始时间',
  `END_TIME` datetime NOT NULL COMMENT '结束时间',
  `LIMIT_FLAG` bigint(1) NOT NULL DEFAULT '1' COMMENT '限制标识\n1：允许；\n2：允许，但有警告\n3：不允许',
  `LIMLT_INPUT_TYPE` bigint(1) DEFAULT NULL COMMENT '限制入口类型\n1：用户申请；前台界面可查，用户可以取消\n2：产品订购；前台界面可查，用户不能取消\n3：后台设置；前台界面不可查，用户不能取消',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理时间',
  `BATCH_FLAG` bigint(1) DEFAULT NULL,
  `CHANNEL_ID` varchar(255) DEFAULT NULL,
  `MSG` varchar(4000) DEFAULT NULL,
  `LMT_MODE` char(1) DEFAULT NULL,
  `LMT_MONTHS` bigint(3) DEFAULT NULL,
  `LMT_END_TIME` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  PRIMARY KEY (`BUSI_LIMIT_ORD_ID`),
  KEY `IDX_ORD_BULIM_3` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_BULIM_4` (`OFFER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_busi_oth` */

DROP TABLE IF EXISTS `ord_busi_oth`;

CREATE TABLE `ord_busi_oth` (
  `ORDER_BUSI_INFO_ID` bigint(12) NOT NULL COMMENT '业务信息订单编号',
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `INFO_ID` varchar(100) DEFAULT NULL,
  `INFO_NAME` varchar(200) DEFAULT NULL COMMENT '信息名称',
  `EXT_1` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `EXT_2` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `EXT_3` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `EXT_4` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `EXT_5` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `EXT_6` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ORDER_BUSI_INFO_ID`),
  KEY `IDX_ORD_BUOTH` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：记录主业务操作订单的其他业务信息，如SP下线的SP编号、SP名称，资费变更、SP产品下线的SP产品编号、名称等。\n\n分表方式：按用户编号随机分10张表(北京:ORD_BUSI_OTH_100开始,上海:ORD_BUSI_OTH_210开始)\n\n历史表：按用户编号分片和年月进行分表(如ORD_BUSI_OTH_H_100_201110，增加H_ID字段)\n\n竣工表：按用户编号分片和年月进行分表(如ORD_BUSI_OTH_F_100_201110)';

/*Table structure for table `ord_busi_oth_f` */

DROP TABLE IF EXISTS `ord_busi_oth_f`;

CREATE TABLE `ord_busi_oth_f` (
  `ORDER_BUSI_INFO_ID` bigint(12) NOT NULL COMMENT '业务信息订单编号',
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `INFO_ID` varchar(100) DEFAULT NULL,
  `INFO_NAME` varchar(200) DEFAULT NULL COMMENT '信息名称',
  `EXT_1` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `EXT_2` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `EXT_3` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `EXT_4` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `EXT_5` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `EXT_6` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ORDER_BUSI_INFO_ID`),
  KEY `IDX_ORD_BUOTH2` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_busi_oth_h` */

DROP TABLE IF EXISTS `ord_busi_oth_h`;

CREATE TABLE `ord_busi_oth_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `ORDER_BUSI_INFO_ID` bigint(12) DEFAULT NULL COMMENT '业务信息订单编号',
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `INFO_ID` varchar(100) DEFAULT NULL,
  `INFO_NAME` varchar(200) DEFAULT NULL COMMENT '信息名称',
  `EXT_1` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `EXT_2` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `EXT_3` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `EXT_4` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `EXT_5` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `EXT_6` varchar(2000) DEFAULT NULL COMMENT '增加扩展字段',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110)';

/*Table structure for table `ord_busi_price` */

DROP TABLE IF EXISTS `ord_busi_price`;

CREATE TABLE `ord_busi_price` (
  `BUSI_PRICE_ORDER_ID` bigint(12) NOT NULL,
  `BUSI_PRICE_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFF_USER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '如果是挂在客户订单上的营业费用，则此字段不填写。',
  `PRICE_ID` bigint(12) DEFAULT NULL,
  `PRICE_DETAIL_TYPE` varchar(100) DEFAULT NULL COMMENT 'BUSI_DEPOSIT     营业押金资费包        \nBUSI_PREPAY      普通预存              \nBUSI_PREPAY      分摊预存              \nBUSI_RES         资源                  \nBUSI_SCORE       积分                  \nBUSI_FEE         手续费                \nBUSI_PAY         营业缴纳',
  `PRICEITEM_ID` bigint(12) DEFAULT NULL,
  `FACT_PRICEITEM_VALUE` bigint(12) DEFAULT NULL COMMENT '受理时填写的科目实际单价，存储到表中的时候，数据的单位为分；界面展示该值的单位为元\n是否允许修改单价根据权限控制。缺省值等于科目定价',
  `ORDER_NUM` bigint(6) DEFAULT NULL,
  `SHOULD_MONEY` bigint(12) DEFAULT NULL,
  `DISTCOUNT_MONEY` bigint(12) DEFAULT NULL COMMENT '折扣优惠金额',
  `DISCOUNT_TYPE` bigint(6) DEFAULT NULL COMMENT '折扣原因类型',
  `FACT_MONEY` bigint(12) DEFAULT NULL,
  `TOTAL_SCORE` bigint(8) DEFAULT NULL COMMENT '积分总数',
  `PAY_TYPE` bigint(1) DEFAULT NULL COMMENT '付费方式(1扣本金帐本，2先扣本金帐本，3现金缴款)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(200) DEFAULT NULL,
  `EXT2` varchar(200) DEFAULT NULL,
  `EXT3` bigint(14) DEFAULT NULL,
  `EXT4` bigint(14) DEFAULT NULL,
  `EXT5` varchar(200) DEFAULT NULL,
  `IS_SEND_REPORT` bigint(6) DEFAULT NULL,
  `TARGET_ACCT_ID` bigint(14) DEFAULT NULL,
  `PRE_TAX_MONEY` bigint(12) DEFAULT NULL,
  `TAX_KIND` varchar(255) DEFAULT NULL,
  `TAX_MONEY` bigint(12) DEFAULT NULL,
  `CHARGE_MODE` varchar(2) DEFAULT NULL COMMENT '1:前台立即收费\n2:指定日期转账单，后台进程处理\n3:转账单',
  PRIMARY KEY (`BUSI_PRICE_ORDER_ID`),
  KEY `IDX_ORD_BUPRI_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_BUPRI_2` (`OFF_USER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：优惠相关信息表，记录优惠类型，优惠科目，优惠值等。同一个价格计划下可以有多个科目，可以对多个科目进行优惠设置。价格计划与科目或者科目集合的对应关系在产品模型中配置。\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按用户编号随机分10张表(北京:ORD_BUSI_PRICE_100开始,上海:ORD_BUSI_PRICE_210开始)\n\n历史表：按用户编号分片和年月进行分表(如ORD_BUSI_PRICE_H_100_201110，增加H_ID字段)\n\n竣工表：按用户编号分片和年月进行分表(如ORD_BUSI_PRICE_F_100_201110)';

/*Table structure for table `ord_busi_price_ext` */

DROP TABLE IF EXISTS `ord_busi_price_ext`;

CREATE TABLE `ord_busi_price_ext` (
  `OFFER_ORD_EXT_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) NOT NULL,
  `BUSI_PRICE_ORDER_ID` bigint(14) NOT NULL,
  `ATTR_CODE` varchar(255) DEFAULT NULL,
  `ATTR_NAME` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` varchar(500) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n            1 新建\n            2 修改\n            3 删除\n            4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '7 强制删除\n            9 失败\n            10 撤单\n            11 竣工',
  `DONE_CODE` bigint(2) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `ORD_BUSI_PRICE_EXT_ID` bigint(14) NOT NULL,
  PRIMARY KEY (`ORD_BUSI_PRICE_EXT_ID`),
  KEY `INDEX_ORD_BUSI_PRICE_EXT_1` (`CUSTOMER_ORDER_ID`),
  KEY `INDEX_ORD_BUSI_PRICE_EXT_2` (`OFFER_ORD_EXT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竣工表：按用户编号分片和年月进行分表(如ORD_BUSI_PRICE_EXT_100_201110)';

/*Table structure for table `ord_busi_price_ext_f` */

DROP TABLE IF EXISTS `ord_busi_price_ext_f`;

CREATE TABLE `ord_busi_price_ext_f` (
  `OFFER_ORD_EXT_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) NOT NULL,
  `BUSI_PRICE_ORDER_ID` bigint(14) NOT NULL,
  `ATTR_CODE` varchar(255) DEFAULT NULL,
  `ATTR_NAME` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` varchar(500) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(CODE_TYPE=SO_ORDER_DATA_STATE)   1 新建   2 修改   3 删除   4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '7 强制删除   9 失败   10 撤单   11 竣工',
  `DONE_CODE` bigint(2) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `ORD_BUSI_PRICE_EXT_ID` bigint(14) NOT NULL,
  PRIMARY KEY (`ORD_BUSI_PRICE_EXT_ID`),
  KEY `INDEX_ORD_BUSI_PRICE_EXT_1` (`CUSTOMER_ORDER_ID`),
  KEY `INDEX_ORD_BUSI_PRICE_EXT_2` (`OFFER_ORD_EXT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竣工表：按用户编号分片和年月进行分表(如ORD_BUSI_PRICE_EXT_21_201110)';

/*Table structure for table `ord_busi_price_f` */

DROP TABLE IF EXISTS `ord_busi_price_f`;

CREATE TABLE `ord_busi_price_f` (
  `BUSI_PRICE_ORDER_ID` bigint(12) NOT NULL,
  `BUSI_PRICE_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFF_USER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '如果是挂在客户订单上的营业费用，则此字段不填写。',
  `PRICE_ID` bigint(12) DEFAULT NULL,
  `PRICE_DETAIL_TYPE` varchar(100) DEFAULT NULL COMMENT 'BUSI_DEPOSIT     营业押金资费包        \nBUSI_PREPAY      普通预存              \nBUSI_PREPAY      分摊预存              \nBUSI_RES         资源                  \nBUSI_SCORE       积分                  \nBUSI_FEE         手续费                \nBUSI_PAY         营业缴纳',
  `PRICEITEM_ID` bigint(12) DEFAULT NULL,
  `FACT_PRICEITEM_VALUE` bigint(12) DEFAULT NULL COMMENT '受理时填写的科目实际单价，存储到表中的时候，数据的单位为分；界面展示该值的单位为元\n是否允许修改单价根据权限控制。缺省值等于科目定价',
  `ORDER_NUM` bigint(6) DEFAULT NULL,
  `SHOULD_MONEY` bigint(12) DEFAULT NULL,
  `DISTCOUNT_MONEY` bigint(12) DEFAULT NULL COMMENT '折扣优惠金额',
  `DISCOUNT_TYPE` bigint(6) DEFAULT NULL COMMENT '折扣原因类型',
  `FACT_MONEY` bigint(12) DEFAULT NULL,
  `TOTAL_SCORE` bigint(8) DEFAULT NULL COMMENT '积分总数',
  `PAY_TYPE` bigint(1) DEFAULT NULL COMMENT '付费方式(1扣本金帐本，2先扣本金帐本，3现金缴款)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(200) DEFAULT NULL,
  `EXT2` varchar(200) DEFAULT NULL,
  `EXT3` bigint(14) DEFAULT NULL,
  `EXT4` bigint(14) DEFAULT NULL,
  `EXT5` varchar(200) DEFAULT NULL,
  `IS_SEND_REPORT` bigint(6) DEFAULT NULL,
  `TARGET_ACCT_ID` bigint(14) DEFAULT NULL,
  `PRE_TAX_MONEY` bigint(12) DEFAULT NULL,
  `TAX_KIND` varchar(255) DEFAULT NULL,
  `TAX_MONEY` bigint(12) DEFAULT NULL,
  `CHARGE_MODE` varchar(2) DEFAULT NULL COMMENT '1:前台立即收费\n2:指定日期转账单，后台进程处理\n3:转账单',
  PRIMARY KEY (`BUSI_PRICE_ORDER_ID`),
  KEY `IDX_ORD_BUPRI_3` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_BUPRI_4` (`OFF_USER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：优惠相关信息表，记录优惠类型，优惠科目，优惠值等。同一个价格计划下可以有多个科目，可以对多个科目进行优惠设置。价格计划与科目或者科目集合的对应关系在产品模型中配置。\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按地区进行分表(如ORD_DTL_INFO_571)\n\n历史表：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110，增加H_ID字段)\n\n竣工表：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_busi_price_h` */

DROP TABLE IF EXISTS `ord_busi_price_h`;

CREATE TABLE `ord_busi_price_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `BUSI_PRICE_ORDER_ID` bigint(12) DEFAULT NULL,
  `BUSI_PRICE_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFF_USER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '如果是挂在客户订单上的营业费用，则此字段不填写。',
  `PRICE_ID` bigint(12) DEFAULT NULL,
  `PRICE_DETAIL_TYPE` varchar(100) DEFAULT NULL COMMENT 'BUSI_DEPOSIT     营业押金资费包        \nBUSI_PREPAY      普通预存              \nBUSI_PREPAY      分摊预存              \nBUSI_RES         资源                  \nBUSI_SCORE       积分                  \nBUSI_FEE         手续费                \nBUSI_PAY         营业缴纳',
  `PRICEITEM_ID` bigint(12) DEFAULT NULL,
  `FACT_PRICEITEM_VALUE` bigint(12) DEFAULT NULL COMMENT '受理时填写的科目实际单价，存储到表中的时候，数据的单位为分；界面展示该值的单位为元\n是否允许修改单价根据权限控制。缺省值等于科目定价',
  `ORDER_NUM` bigint(6) DEFAULT NULL,
  `SHOULD_MONEY` bigint(12) DEFAULT NULL,
  `DISTCOUNT_MONEY` bigint(12) DEFAULT NULL COMMENT '折扣优惠金额',
  `DISCOUNT_TYPE` bigint(6) DEFAULT NULL COMMENT '折扣原因类型',
  `FACT_MONEY` bigint(12) DEFAULT NULL,
  `TOTAL_SCORE` bigint(8) DEFAULT NULL COMMENT '积分总数',
  `PAY_TYPE` bigint(1) DEFAULT NULL COMMENT '付费方式(1扣本金帐本，2先扣本金帐本，3现金缴款)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(200) DEFAULT NULL,
  `EXT2` varchar(200) DEFAULT NULL,
  `EXT3` bigint(14) DEFAULT NULL,
  `EXT4` bigint(14) DEFAULT NULL,
  `EXT5` varchar(200) DEFAULT NULL,
  `IS_SEND_REPORT` bigint(6) DEFAULT NULL,
  `TARGET_ACCT_ID` bigint(14) DEFAULT NULL,
  `PRE_TAX_MONEY` bigint(12) DEFAULT NULL,
  `TAX_KIND` varchar(255) DEFAULT NULL,
  `TAX_MONEY` bigint(12) DEFAULT NULL,
  `CHARGE_MODE` varchar(2) DEFAULT NULL COMMENT '1:前台立即收费\n2:指定日期转账单，后台进程处理\n3:转账单',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16243 DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110)';

/*Table structure for table `ord_cancel_check` */

DROP TABLE IF EXISTS `ord_cancel_check`;

CREATE TABLE `ord_cancel_check` (
  `CHECK_ID` bigint(12) NOT NULL DEFAULT '0',
  `CHECK_TYPE` varchar(10) DEFAULT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `PARAM` varchar(400) DEFAULT NULL,
  `STATE` varchar(10) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(10) DEFAULT NULL,
  `REMARK` varchar(400) DEFAULT NULL,
  `EXT_1` varchar(400) DEFAULT NULL,
  `EXT_2` varchar(400) DEFAULT NULL,
  `EXT_3` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`CHECK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_cancel_check_func_rel` */

DROP TABLE IF EXISTS `ord_cancel_check_func_rel`;

CREATE TABLE `ord_cancel_check_func_rel` (
  `REL_ID` bigint(12) NOT NULL DEFAULT '0',
  `CHECK_ID` bigint(12) DEFAULT NULL,
  `FUNC_ID` bigint(12) DEFAULT NULL,
  `STATE` varchar(10) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(10) DEFAULT NULL,
  `REMARK` varchar(400) DEFAULT NULL,
  `EXT_1` varchar(400) DEFAULT NULL,
  `EXT_2` varchar(400) DEFAULT NULL,
  `EXT_3` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_cancel_execute` */

DROP TABLE IF EXISTS `ord_cancel_execute`;

CREATE TABLE `ord_cancel_execute` (
  `EXECUTE_ID` bigint(12) NOT NULL DEFAULT '0',
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `CHECK_ID` bigint(12) DEFAULT NULL,
  `DEAL_TYPE` varchar(10) DEFAULT NULL,
  `DEAL_FUNC` varchar(4000) DEFAULT NULL,
  `DEAL_SEQ` bigint(10) DEFAULT NULL,
  `STATE` varchar(10) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(10) DEFAULT NULL,
  `REMARK` varchar(400) DEFAULT NULL,
  `EXT_1` varchar(400) DEFAULT NULL,
  `EXT_2` varchar(400) DEFAULT NULL,
  `EXT_3` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`EXECUTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_cancel_func` */

DROP TABLE IF EXISTS `ord_cancel_func`;

CREATE TABLE `ord_cancel_func` (
  `FUNC_ID` bigint(12) NOT NULL DEFAULT '0',
  `RULE_FILE_NAME` varchar(6000) DEFAULT NULL,
  `FUNC_NAME` varchar(768) DEFAULT NULL,
  `STATE` varchar(10) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(10) DEFAULT NULL,
  `REMARK` varchar(400) DEFAULT NULL,
  `EXT_1` varchar(400) DEFAULT NULL,
  `EXT_2` varchar(400) DEFAULT NULL,
  `EXT_3` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`FUNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_cancel_rule` */

DROP TABLE IF EXISTS `ord_cancel_rule`;

CREATE TABLE `ord_cancel_rule` (
  `RULE_ID` bigint(12) NOT NULL DEFAULT '0',
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `TASK_TAG` varchar(6000) DEFAULT NULL,
  `SUB_TYPE` varchar(400) DEFAULT NULL,
  `STATE` varchar(10) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(10) DEFAULT NULL,
  `REMARK` varchar(400) DEFAULT NULL,
  `EXT_1` varchar(400) DEFAULT NULL,
  `EXT_2` varchar(400) DEFAULT NULL,
  `EXT_3` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_commitment` */

DROP TABLE IF EXISTS `ord_commitment`;

CREATE TABLE `ord_commitment` (
  `ORD_COMMITMENT_ID` bigint(14) NOT NULL COMMENT '协议期订单编号',
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '用户订单编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `OFFER_ORDER_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `SRC_OFFER_ID` bigint(14) DEFAULT NULL,
  `SRC_OFFER_INS_ID` bigint(14) DEFAULT NULL,
  `INST_COMMITMENT_ID` bigint(14) DEFAULT NULL,
  `COMM_TYPE` bigint(6) DEFAULT NULL COMMENT '协议期类型,目前主要有以下几种：\n1--new phone commitment:限定在该协议期内不允许再次办理优惠购机业务\n2--subscription commitment:签订的基本套餐协议期\n3--service commitment:增值策划的协议期',
  `COMM_VALUE` bigint(6) DEFAULT NULL COMMENT '协议期期数：用于记录UPC配置的协议期期数，数据类型为整型',
  `COMM_START_DATE` datetime DEFAULT NULL,
  `COMM_END_DATE` datetime DEFAULT NULL COMMENT '用户扩展属性值',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '目标生效时间',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '目标失效时间',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '原实例流水号',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '实例流水号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` varchar(20) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) NOT NULL COMMENT '0系统计算\n1用户指定',
  `REMARK` varchar(255) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`ORD_COMMITMENT_ID`),
  KEY `IDX_ORD_USEXT_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_USEXT_2` (`USER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户记录用户的协议期信息，如new phone commitment，subscription commitment,service commitment等；\n分表方式：按用户编号随机分10张表(北京:ORD_COMMITMENT_100开始,上海:ORD_COMMITMENT_210开始)\n历史表：按用户编号分片和年月进行分表(如ORD_COMMITMENT_F_100_201110)';

/*Table structure for table `ord_commitment_f` */

DROP TABLE IF EXISTS `ord_commitment_f`;

CREATE TABLE `ord_commitment_f` (
  `ORD_COMMITMENT_ID` bigint(14) NOT NULL COMMENT '协议期订单编号',
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '用户订单编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `OFFER_ORDER_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `SRC_OFFER_ID` bigint(14) DEFAULT NULL,
  `SRC_OFFER_INS_ID` bigint(14) DEFAULT NULL,
  `INST_COMMITMENT_ID` bigint(14) DEFAULT NULL,
  `COMM_TYPE` bigint(6) DEFAULT NULL COMMENT '协议期类型,目前主要有以下几种：\n1--new phone commitment:限定在该协议期内不允许再次办理优惠购机业务\n2--subscription commitment:签订的基本套餐协议期\n3--service commitment:增值策划的协议期',
  `COMM_VALUE` bigint(6) DEFAULT NULL COMMENT '协议期期数：用于记录UPC配置的协议期期数，数据类型为整型',
  `COMM_START_DATE` datetime DEFAULT NULL,
  `COMM_END_DATE` datetime DEFAULT NULL COMMENT '用户扩展属性值',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '目标生效时间',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '目标失效时间',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '原实例流水号',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '实例流水号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` varchar(20) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) NOT NULL COMMENT '0系统计算\n1用户指定',
  `REMARK` varchar(255) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`ORD_COMMITMENT_ID`),
  KEY `IDX_ORD_USEXT_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_USEXT_2` (`USER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户记录用户的协议期信息，如new phone commitment，subscription commitment,service commitment等；\n分表方式：按用户编号随机分10张表(北京:ORD_COMMITMENT_100开始,上海:ORD_COMMITMENT_210开始)\n历史表：按用户编号分片和年月进行分表(如ORD_COMMITMENT_F_100_201110)';

/*Table structure for table `ord_commitment_h` */

DROP TABLE IF EXISTS `ord_commitment_h`;

CREATE TABLE `ord_commitment_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `ORD_COMMITMENT_ID` bigint(14) NOT NULL COMMENT '协议期订单编号',
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '用户订单编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `OFFER_ORDER_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `SRC_OFFER_ID` bigint(14) DEFAULT NULL,
  `SRC_OFFER_INS_ID` bigint(14) DEFAULT NULL,
  `INST_COMMITMENT_ID` bigint(14) DEFAULT NULL,
  `COMM_TYPE` bigint(6) DEFAULT NULL COMMENT '协议期类型,目前主要有以下几种：\n1--new phone commitment:限定在该协议期内不允许再次办理优惠购机业务\n2--subscription commitment:签订的基本套餐协议期\n3--service commitment:增值策划的协议期',
  `COMM_VALUE` bigint(6) DEFAULT NULL COMMENT '协议期期数：用于记录UPC配置的协议期期数，数据类型为整型',
  `COMM_START_DATE` datetime DEFAULT NULL,
  `COMM_END_DATE` datetime DEFAULT NULL COMMENT '用户扩展属性值',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '目标生效时间',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '目标失效时间',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '原实例流水号',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '实例流水号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` varchar(20) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) NOT NULL COMMENT '0系统计算\n1用户指定',
  `REMARK` varchar(255) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `IDX_ORD_USEXT_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_USEXT_2` (`USER_ORDER_ID`),
  KEY `IDX_ORD_USEXT_3` (`ORD_COMMITMENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

/*Table structure for table `ord_cpa_offers` */

DROP TABLE IF EXISTS `ord_cpa_offers`;

CREATE TABLE `ord_cpa_offers` (
  `ORD_CPA_OFFERS_ID` bigint(14) NOT NULL COMMENT '主键',
  `OFFER_ID` bigint(14) DEFAULT NULL COMMENT '策划编号',
  `OFFER_NAME` varchar(255) DEFAULT NULL COMMENT '策划名称',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ORD_CPA_OFFERS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_cust` */

DROP TABLE IF EXISTS `ord_cust`;

CREATE TABLE `ord_cust` (
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `ORDER_CODE` varchar(40) NOT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '本次业务的主业务操作编号',
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '业务操作类型。产品管理中业务操作产品定义的业务类型，包括新装、变更、增加成员、删除成员等。为报表统计效率而冗余。',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_STATE` char(1) DEFAULT NULL COMMENT '客户状态(code_type=SO_CUST_STATE)\n1新建客户4老客户',
  `ACCT_STATE` char(1) DEFAULT NULL COMMENT '帐户状态(code_type=SO_ACCT_STATE)\n1新建帐户4老帐户',
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型(code_type=SO_CUST_TYPE)\n1个人用户2家庭客户3政企客户4VPMN客户',
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `OLD_ORDER_CODE` varchar(40) DEFAULT NULL COMMENT '撤单、改单、回滚使用',
  `CEASE_REASON` varchar(200) DEFAULT NULL,
  `AGENCY_PERSON` varchar(255) DEFAULT NULL,
  `CERTIFI_CODE` varchar(50) DEFAULT NULL,
  `CERTIFI_TYPE_ID` bigint(2) DEFAULT NULL COMMENT '1身份证\n2工作证\n3驾驶证\n4护照\n5营业执照\n6其它证件',
  `TEL` varchar(120) DEFAULT NULL,
  `PARTNER_ID` bigint(12) DEFAULT NULL,
  `BOOKING_HOME_DT` datetime DEFAULT NULL,
  `BOOKING_OPEN_DT` datetime DEFAULT NULL,
  `PRE_SO_ID` varchar(200) DEFAULT NULL COMMENT '预受理工单编号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `SOURCE_SYSTEM_ID` bigint(2) DEFAULT NULL COMMENT '行纪录的来源系统(code_type=SO_SOURCE_SYSTEM)。\n如客户订单是来源于BBoss系统，还是DSMP系统\n1RBOSS\n2BBOSS\n3DSMP',
  `VERIFY_TYPE` varchar(200) DEFAULT NULL COMMENT '记录该订单的校验方式文本(code_type=SO_VERIFY_TYPE)\n0无需认识\n1密码认证\n2本机认证\n3模糊认证\n4证件认证\n5密码+证件认证\n6密码或证件认证',
  `PAY_TYPE` bigint(2) DEFAULT NULL COMMENT '缴费方式(code_type=SO_PAY_TYPE)\n1现金缴费\n2刷卡缴费',
  `FACT_MONEY` bigint(12) DEFAULT NULL COMMENT '实收金额',
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL COMMENT '具体类型由接口组去定义(code_type=SO_CHANNEL_TYPE)，大致定义如下： 0:联网银行 1:营业厅 2:1860客服 3:代理商 4:网上营业厅 5:合作营业厅 6:内部管理 7:后台自动处理 8:小额支付 9:外部接口 10:BBOSS系统 11:业务平台WEB 12:业务平台IVR 13:业务平台SMS 14:业务平台接口机 15:业务平台批量 16:业务平台功能复制开通 17:业务平台文件开通 18:业务平台WAP 19:业务平台MMS 20:业务平台JAVA 23:短信营业厅 25:营业批量受理 99:CBOSS',
  `REP_FEE_PHONE_NO` varchar(80) DEFAULT NULL,
  `WRRANT_NO` varchar(80) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(120) DEFAULT NULL,
  `EXT_DONE_TYPE` varchar(200) DEFAULT NULL COMMENT '1商机\n2预受理\n3CBOSS业务受理\n4亲情网关联订单\n5批量任务\n6空选空写',
  `EXT_DONE_CODE` varchar(1000) DEFAULT NULL,
  `WORKFLOW_TASK_ID` varchar(100) DEFAULT NULL COMMENT '用于回复外部流程任务',
  `IS_BATCH_ORDER` bigint(1) DEFAULT NULL COMMENT '是否指业务(CODE_TYPE=SO_YES_NO)',
  `COUNTY_CODE` varchar(8) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `CLERK_NO` varchar(50) DEFAULT NULL,
  `INVOICE_TITLE` varchar(200) DEFAULT NULL COMMENT '发票抬头',
  `PRE_CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '增加父订单ID',
  `OP_BILL_ID` varchar(30) DEFAULT NULL COMMENT '实际办理业务号码',
  `OP_CUST_ID` bigint(14) DEFAULT NULL COMMENT '实际办理业务客户ID',
  `AGENCY_MAIL` varchar(100) DEFAULT NULL COMMENT '经办人电子邮箱',
  `AGENCY_ADDRESS` varchar(200) DEFAULT NULL,
  `ORDER_PARENT_ID` bigint(12) NOT NULL COMMENT '主订单ID',
  `ORDER_REL_TYPE` varchar(10) DEFAULT NULL COMMENT '订单相关类型',
  `LAST_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_CUST_1` (`CUST_ID`),
  KEY `IDX_ORD_CUST_2` (`PRE_SO_ID`),
  KEY `IDX_ORD_CUST_3` (`BILL_ID`),
  KEY `IDX_ORD_CUST_4` (`OP_ID`),
  KEY `IDX_ORD_CUST_9` (`PRE_CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_CUST_11` (`ORDER_STATE`,`USER_ID`),
  KEY `IDX_ORD_CUST_12` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：一个客户一次提交的多个业务的申请信息。如客户可以一次同时办理订购增值业务、退订增值业务、改套餐等多个产品操作申请，这些操作申请就是一个客户订单。\r\n\r\n索引：CUSTOMER_ORDER_ID\r\n\r\n分表方式：按地区进行分表(如ORD_DTL_INFO_571)\r\n\r\n历史表：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110，增加H_ID字段)\r\n\r\n竣工表：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_cust_bak` */

DROP TABLE IF EXISTS `ord_cust_bak`;

CREATE TABLE `ord_cust_bak` (
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `ORDER_CODE` varchar(40) NOT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '本次业务的主业务操作编号',
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '业务操作类型。产品管理中业务操作产品定义的业务类型，包括新装、变更、增加成员、删除成员等。为报表统计效率而冗余。',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_STATE` char(1) DEFAULT NULL COMMENT '客户状态(code_type=SO_CUST_STATE)\n1新建客户4老客户',
  `ACCT_STATE` char(1) DEFAULT NULL COMMENT '帐户状态(code_type=SO_ACCT_STATE)\n1新建帐户4老帐户',
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型(code_type=SO_CUST_TYPE)\n1个人用户2家庭客户3政企客户4VPMN客户',
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `OLD_ORDER_CODE` varchar(40) DEFAULT NULL COMMENT '撤单、改单、回滚使用',
  `CEASE_REASON` varchar(200) DEFAULT NULL,
  `AGENCY_PERSON` varchar(255) DEFAULT NULL,
  `CERTIFI_CODE` varchar(50) DEFAULT NULL,
  `CERTIFI_TYPE_ID` bigint(2) DEFAULT NULL COMMENT '1身份证\n2工作证\n3驾驶证\n4护照\n5营业执照\n6其它证件',
  `TEL` varchar(120) DEFAULT NULL,
  `PARTNER_ID` bigint(12) DEFAULT NULL,
  `BOOKING_HOME_DT` datetime DEFAULT NULL,
  `BOOKING_OPEN_DT` datetime DEFAULT NULL,
  `PRE_SO_ID` varchar(200) DEFAULT NULL COMMENT '预受理工单编号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `SOURCE_SYSTEM_ID` bigint(2) DEFAULT NULL COMMENT '行纪录的来源系统(code_type=SO_SOURCE_SYSTEM)。\n如客户订单是来源于BBoss系统，还是DSMP系统\n1RBOSS\n2BBOSS\n3DSMP',
  `VERIFY_TYPE` varchar(200) DEFAULT NULL COMMENT '记录该订单的校验方式文本(code_type=SO_VERIFY_TYPE)\n0无需认识\n1密码认证\n2本机认证\n3模糊认证\n4证件认证\n5密码+证件认证\n6密码或证件认证',
  `PAY_TYPE` bigint(2) DEFAULT NULL COMMENT '缴费方式(code_type=SO_PAY_TYPE)\n1现金缴费\n2刷卡缴费',
  `FACT_MONEY` bigint(12) DEFAULT NULL COMMENT '实收金额',
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL COMMENT '具体类型由接口组去定义(code_type=SO_CHANNEL_TYPE)，大致定义如下： 0:联网银行 1:营业厅 2:1860客服 3:代理商 4:网上营业厅 5:合作营业厅 6:内部管理 7:后台自动处理 8:小额支付 9:外部接口 10:BBOSS系统 11:业务平台WEB 12:业务平台IVR 13:业务平台SMS 14:业务平台接口机 15:业务平台批量 16:业务平台功能复制开通 17:业务平台文件开通 18:业务平台WAP 19:业务平台MMS 20:业务平台JAVA 23:短信营业厅 25:营业批量受理 99:CBOSS',
  `REP_FEE_PHONE_NO` varchar(80) DEFAULT NULL,
  `WRRANT_NO` varchar(80) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(120) DEFAULT NULL,
  `EXT_DONE_TYPE` varchar(200) DEFAULT NULL COMMENT '1商机\n2预受理\n3CBOSS业务受理\n4亲情网关联订单\n5批量任务\n6空选空写',
  `EXT_DONE_CODE` varchar(1000) DEFAULT NULL,
  `WORKFLOW_TASK_ID` varchar(100) DEFAULT NULL COMMENT '用于回复外部流程任务',
  `IS_BATCH_ORDER` bigint(1) DEFAULT NULL COMMENT '是否指业务(CODE_TYPE=SO_YES_NO)',
  `COUNTY_CODE` varchar(8) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `CLERK_NO` varchar(50) DEFAULT NULL,
  `INVOICE_TITLE` varchar(200) DEFAULT NULL COMMENT '发票抬头',
  `PRE_CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '增加父订单ID',
  `OP_BILL_ID` varchar(30) DEFAULT NULL COMMENT '实际办理业务号码',
  `OP_CUST_ID` bigint(14) DEFAULT NULL COMMENT '实际办理业务客户ID',
  `AGENCY_MAIL` varchar(100) DEFAULT NULL COMMENT '经办人电子邮箱',
  `AGENCY_ADDRESS` varchar(200) DEFAULT NULL,
  `ORDER_PARENT_ID` bigint(12) DEFAULT NULL COMMENT '主订单ID',
  `ORDER_REL_TYPE` varchar(10) DEFAULT NULL COMMENT '订单相关类型',
  `LAST_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_cust_bundle` */

DROP TABLE IF EXISTS `ord_cust_bundle`;

CREATE TABLE `ord_cust_bundle` (
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `ORDER_CODE` varchar(40) NOT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '本次业务的主业务操作编号',
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_STATE` char(1) DEFAULT NULL,
  `ACCT_STATE` char(1) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL,
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `OLD_ORDER_CODE` varchar(40) DEFAULT NULL COMMENT '撤单、改单、回滚使用',
  `CEASE_REASON` varchar(200) DEFAULT NULL,
  `AGENCY_PERSON` varchar(255) DEFAULT NULL,
  `CERTIFI_CODE` varchar(50) DEFAULT NULL,
  `CERTIFI_TYPE_ID` bigint(2) DEFAULT NULL COMMENT '1身份证 2工作证3驾驶证  4护照 5营业执照6其它证件',
  `TEL` varchar(120) DEFAULT NULL,
  `PARTNER_ID` bigint(12) DEFAULT NULL,
  `BOOKING_HOME_DT` datetime DEFAULT NULL,
  `BOOKING_OPEN_DT` datetime DEFAULT NULL,
  `PRE_SO_ID` varchar(200) DEFAULT NULL COMMENT '预受理工单编号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(CODE_TYPE=SO_ORDER_DATA_STATE)1 新建  2 修改 3 删除  4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL,
  `SOURCE_SYSTEM_ID` bigint(2) DEFAULT NULL,
  `VERIFY_TYPE` varchar(200) DEFAULT NULL,
  `PAY_TYPE` bigint(2) DEFAULT NULL COMMENT '缴费方式(CODE_TYPE=SO_PAY_TYPE)1现金缴费 2刷卡缴费',
  `FACT_MONEY` bigint(12) DEFAULT NULL COMMENT '实收金额',
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL,
  `REP_FEE_PHONE_NO` varchar(80) DEFAULT NULL,
  `WRRANT_NO` varchar(80) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(120) DEFAULT NULL,
  `EXT_DONE_TYPE` varchar(200) DEFAULT NULL,
  `EXT_DONE_CODE` varchar(1000) DEFAULT NULL,
  `WORKFLOW_TASK_ID` varchar(25) DEFAULT NULL COMMENT '用于回复外部流程任务',
  `IS_BATCH_ORDER` bigint(1) DEFAULT NULL COMMENT '是否指业务(CODE_TYPE=SO_YES_NO)',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '用户归属的县市',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `CLERK_NO` varchar(50) DEFAULT NULL,
  `INVOICE_TITLE` varchar(200) DEFAULT NULL COMMENT '发票抬头',
  `PRE_CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '增加父订单ID',
  `OP_BILL_ID` varchar(30) DEFAULT NULL COMMENT '实际办理业务号码',
  `OP_CUST_ID` bigint(14) DEFAULT NULL COMMENT '实际办理业务客户ID',
  `AGENCY_MAIL` varchar(100) DEFAULT NULL COMMENT '经办人电子邮箱',
  `AGENCY_ADDRESS` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_cust_bundle_h` */

DROP TABLE IF EXISTS `ord_cust_bundle_h`;

CREATE TABLE `ord_cust_bundle_h` (
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `ORDER_CODE` varchar(40) NOT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '本次业务的主业务操作编号',
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '业务操作类型。',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_STATE` char(1) DEFAULT NULL COMMENT '客户状态(CODE_TYPE=SO_CUST_STATE)',
  `ACCT_STATE` char(1) DEFAULT NULL COMMENT '帐户状态(CODE_TYPE=SO_ACCT_STATE)',
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型(CODE_TYPE=SO_CUST_TYPE)',
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `OLD_ORDER_CODE` varchar(40) DEFAULT NULL COMMENT '撤单、改单、回滚使用',
  `CEASE_REASON` varchar(200) DEFAULT NULL,
  `AGENCY_PERSON` varchar(255) DEFAULT NULL,
  `CERTIFI_CODE` varchar(50) DEFAULT NULL,
  `CERTIFI_TYPE_ID` bigint(2) DEFAULT NULL COMMENT '1身份证',
  `TEL` varchar(120) DEFAULT NULL,
  `PARTNER_ID` bigint(12) DEFAULT NULL,
  `BOOKING_HOME_DT` datetime DEFAULT NULL,
  `BOOKING_OPEN_DT` datetime DEFAULT NULL,
  `PRE_SO_ID` varchar(200) DEFAULT NULL COMMENT '预受理工单编号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(CODE_TYPE=SO_ORDER_DATA_STATE)',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(CODE_TYPE=SO_ORDER_STATE)',
  `SOURCE_SYSTEM_ID` bigint(2) DEFAULT NULL COMMENT '行纪录的来源系统(CODE_TYPE=SO_SOURCE_SYSTEM)',
  `VERIFY_TYPE` varchar(200) DEFAULT NULL COMMENT '记录该订单的校验方式文本(CODE_TYPE=SO_VERIFY_TYPE) ',
  `PAY_TYPE` bigint(2) DEFAULT NULL COMMENT '缴费方式(CODE_TYPE=SO_PAY_TYPE)',
  `FACT_MONEY` bigint(12) DEFAULT NULL COMMENT '实收金额',
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL COMMENT '具体类型由接口组去定义(CODE_TYPE=SO_CHANNEL_TYPE)',
  `REP_FEE_PHONE_NO` varchar(80) DEFAULT NULL,
  `WRRANT_NO` varchar(80) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(120) DEFAULT NULL,
  `EXT_DONE_TYPE` varchar(200) DEFAULT NULL COMMENT '1商机',
  `EXT_DONE_CODE` varchar(1000) DEFAULT NULL,
  `WORKFLOW_TASK_ID` varchar(25) DEFAULT NULL COMMENT '用于回复外部流程任务',
  `IS_BATCH_ORDER` bigint(1) DEFAULT NULL COMMENT '是否指业务(CODE_TYPE=SO_YES_NO)',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '用户归属的县市',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `CLERK_NO` varchar(50) DEFAULT NULL,
  `INVOICE_TITLE` varchar(200) DEFAULT NULL COMMENT '发票抬头',
  `PRE_CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '增加父订单ID',
  `OP_BILL_ID` varchar(30) DEFAULT NULL COMMENT '实际办理业务号码',
  `OP_CUST_ID` bigint(14) DEFAULT NULL COMMENT '实际办理业务客户ID',
  `AGENCY_MAIL` varchar(100) DEFAULT NULL COMMENT '经办人电子邮箱',
  `AGENCY_ADDRESS` varchar(200) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL COMMENT '生效日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_cust_ext` */

DROP TABLE IF EXISTS `ord_cust_ext`;

CREATE TABLE `ord_cust_ext` (
  `CUST_ORDER_EXT_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `ATTR_CODE` varchar(255) DEFAULT NULL,
  `ATTR_NAME` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CUST_ORDER_EXT_ID`),
  KEY `IDX_ORD_CUST_EXT_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_CUST_EXT_2` (`CUSTOMER_ORDER_ID`,`ATTR_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户订单扩展信息表，用作客户订单表的扩展属性的记录。\n分表规则：ORD_CUST_EXT_{RRR}\n如：ORD_CUST_EXT_101';

/*Table structure for table `ord_cust_ext_f` */

DROP TABLE IF EXISTS `ord_cust_ext_f`;

CREATE TABLE `ord_cust_ext_f` (
  `CUST_ORDER_EXT_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `ATTR_CODE` varchar(255) DEFAULT NULL,
  `ATTR_NAME` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `ORDER_STATE` bigint(2) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CUST_ORDER_EXT_ID`),
  KEY `IDX_ORD_CUST_EXT_3` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_CUST_EXT_4` (`CUSTOMER_ORDER_ID`,`ATTR_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户订单扩展信息表，用作客户订单表的扩展属性的记录。客户订单扩展信息竣工表\n分表规则：ORD_CUST_EXT_F_RRR_YYYYMM\n例如：ORD_CUST_EXT_F_101_201205';

/*Table structure for table `ord_cust_ext_h` */

DROP TABLE IF EXISTS `ord_cust_ext_h`;

CREATE TABLE `ord_cust_ext_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `CUST_ORDER_EXT_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `ATTR_CODE` varchar(255) DEFAULT NULL,
  `ATTR_NAME` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` varchar(255) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `ORDER_STATE` bigint(2) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=203019 DEFAULT CHARSET=utf8 COMMENT='客户订单扩展信息表，用作客户订单表的扩展属性的记录。客户订单扩展信息历史表\n分表方式：ORD_CUST_EXT_H_RRR_YYYYMM\n例如：ORD_CUST_EXT_H_100_201205';

/*Table structure for table `ord_cust_f` */

DROP TABLE IF EXISTS `ord_cust_f`;

CREATE TABLE `ord_cust_f` (
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `ORDER_CODE` varchar(40) NOT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '本次业务的主业务操作编号',
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '业务操作类型。产品管理中业务操作产品定义的业务类型，包括新装、变更、增加成员、删除成员等。为报表统计效率而冗余。',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_STATE` char(1) DEFAULT NULL COMMENT '客户状态(code_type=SO_CUST_STATE)\n1新建客户4老客户',
  `ACCT_STATE` char(1) DEFAULT NULL COMMENT '帐户状态(code_type=SO_ACCT_STATE)\n1新建帐户4老帐户',
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型(code_type=SO_CUST_TYPE)\n1个人用户2家庭客户3政企客户4VPMN客户',
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `OLD_ORDER_CODE` varchar(40) DEFAULT NULL COMMENT '撤单、改单、回滚使用',
  `CEASE_REASON` varchar(200) DEFAULT NULL,
  `AGENCY_PERSON` varchar(255) DEFAULT NULL,
  `CERTIFI_CODE` varchar(50) DEFAULT NULL,
  `CERTIFI_TYPE_ID` bigint(2) DEFAULT NULL COMMENT '1身份证\n2工作证\n3驾驶证\n4护照\n5营业执照\n6其它证件',
  `TEL` varchar(120) DEFAULT NULL,
  `PARTNER_ID` bigint(12) DEFAULT NULL,
  `BOOKING_HOME_DT` datetime DEFAULT NULL,
  `BOOKING_OPEN_DT` datetime DEFAULT NULL,
  `PRE_SO_ID` varchar(200) DEFAULT NULL COMMENT '预受理工单编号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `SOURCE_SYSTEM_ID` bigint(2) DEFAULT NULL COMMENT '行纪录的来源系统(code_type=SO_SOURCE_SYSTEM)。\n如客户订单是来源于BBoss系统，还是DSMP系统\n1RBOSS\n2BBOSS\n3DSMP',
  `VERIFY_TYPE` varchar(200) DEFAULT NULL COMMENT '记录该订单的校验方式文本(code_type=SO_VERIFY_TYPE)\n0无需认识\n1密码认证\n2本机认证\n3模糊认证\n4证件认证\n5密码+证件认证\n6密码或证件认证',
  `PAY_TYPE` bigint(2) DEFAULT NULL COMMENT '缴费方式(code_type=SO_PAY_TYPE)\n1现金缴费\n2刷卡缴费',
  `FACT_MONEY` bigint(12) DEFAULT NULL COMMENT '实收金额',
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL COMMENT '具体类型由接口组去定义(code_type=SO_CHANNEL_TYPE)，大致定义如下：\n0-所有；\n1-营业厅；\n2-银行；\n3-代理商；\n4-自助终端\n5-客服；\n6-短厅；\n7-网厅；\n8-VC平台；\n9WAP\n10USSD\n11CBOSS',
  `REP_FEE_PHONE_NO` varchar(80) DEFAULT NULL,
  `WRRANT_NO` varchar(80) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(120) DEFAULT NULL,
  `EXT_DONE_TYPE` varchar(200) DEFAULT NULL COMMENT '1商机\n2预受理\n3CBOSS业务受理',
  `EXT_DONE_CODE` varchar(1000) DEFAULT NULL,
  `WORKFLOW_TASK_ID` varchar(100) DEFAULT NULL COMMENT '用于回复外部流程任务',
  `IS_BATCH_ORDER` bigint(1) DEFAULT NULL COMMENT '是否指业务(CODE_TYPE=SO_YES_NO)',
  `COUNTY_CODE` varchar(8) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `CLERK_NO` varchar(50) DEFAULT NULL,
  `INVOICE_TITLE` varchar(200) DEFAULT NULL COMMENT '发票抬头',
  `PRE_CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '增加父订单ID',
  `OP_BILL_ID` varchar(30) DEFAULT NULL COMMENT '实际办理业务号码',
  `OP_CUST_ID` bigint(14) DEFAULT NULL COMMENT '实际办理业务客户ID',
  `AGENCY_MAIL` varchar(100) DEFAULT NULL COMMENT '经办人电子邮箱',
  `AGENCY_ADDRESS` varchar(200) DEFAULT NULL,
  `ORDER_PARENT_ID` bigint(12) DEFAULT NULL COMMENT '主订单ID',
  `ORDER_REL_TYPE` varchar(10) DEFAULT NULL COMMENT '订单相关类型',
  `last_date` datetime DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_CUST_5` (`CUST_ID`),
  KEY `IDX_ORD_CUST_6` (`PRE_SO_ID`),
  KEY `IDX_ORD_CUST_7` (`BILL_ID`),
  KEY `IDX_ORD_CUST_8` (`OP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_cust_f_bak` */

DROP TABLE IF EXISTS `ord_cust_f_bak`;

CREATE TABLE `ord_cust_f_bak` (
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `ORDER_CODE` varchar(40) NOT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '本次业务的主业务操作编号',
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '业务操作类型。产品管理中业务操作产品定义的业务类型，包括新装、变更、增加成员、删除成员等。为报表统计效率而冗余。',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_STATE` char(1) DEFAULT NULL COMMENT '客户状态(code_type=SO_CUST_STATE)\n1新建客户4老客户',
  `ACCT_STATE` char(1) DEFAULT NULL COMMENT '帐户状态(code_type=SO_ACCT_STATE)\n1新建帐户4老帐户',
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型(code_type=SO_CUST_TYPE)\n1个人用户2家庭客户3政企客户4VPMN客户',
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `OLD_ORDER_CODE` varchar(40) DEFAULT NULL COMMENT '撤单、改单、回滚使用',
  `CEASE_REASON` varchar(200) DEFAULT NULL,
  `AGENCY_PERSON` varchar(255) DEFAULT NULL,
  `CERTIFI_CODE` varchar(50) DEFAULT NULL,
  `CERTIFI_TYPE_ID` bigint(2) DEFAULT NULL COMMENT '1身份证\n2工作证\n3驾驶证\n4护照\n5营业执照\n6其它证件',
  `TEL` varchar(120) DEFAULT NULL,
  `PARTNER_ID` bigint(12) DEFAULT NULL,
  `BOOKING_HOME_DT` datetime DEFAULT NULL,
  `BOOKING_OPEN_DT` datetime DEFAULT NULL,
  `PRE_SO_ID` varchar(200) DEFAULT NULL COMMENT '预受理工单编号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `SOURCE_SYSTEM_ID` bigint(2) DEFAULT NULL COMMENT '行纪录的来源系统(code_type=SO_SOURCE_SYSTEM)。\n如客户订单是来源于BBoss系统，还是DSMP系统\n1RBOSS\n2BBOSS\n3DSMP',
  `VERIFY_TYPE` varchar(200) DEFAULT NULL COMMENT '记录该订单的校验方式文本(code_type=SO_VERIFY_TYPE)\n0无需认识\n1密码认证\n2本机认证\n3模糊认证\n4证件认证\n5密码+证件认证\n6密码或证件认证',
  `PAY_TYPE` bigint(2) DEFAULT NULL COMMENT '缴费方式(code_type=SO_PAY_TYPE)\n1现金缴费\n2刷卡缴费',
  `FACT_MONEY` bigint(12) DEFAULT NULL COMMENT '实收金额',
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL COMMENT '具体类型由接口组去定义(code_type=SO_CHANNEL_TYPE)，大致定义如下：\n0-所有；\n1-营业厅；\n2-银行；\n3-代理商；\n4-自助终端\n5-客服；\n6-短厅；\n7-网厅；\n8-VC平台；\n9WAP\n10USSD\n11CBOSS',
  `REP_FEE_PHONE_NO` varchar(80) DEFAULT NULL,
  `WRRANT_NO` varchar(80) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(120) DEFAULT NULL,
  `EXT_DONE_TYPE` varchar(200) DEFAULT NULL COMMENT '1商机\n2预受理\n3CBOSS业务受理',
  `EXT_DONE_CODE` varchar(1000) DEFAULT NULL,
  `WORKFLOW_TASK_ID` varchar(100) DEFAULT NULL COMMENT '用于回复外部流程任务',
  `IS_BATCH_ORDER` bigint(1) DEFAULT NULL COMMENT '是否指业务(CODE_TYPE=SO_YES_NO)',
  `COUNTY_CODE` varchar(8) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `CLERK_NO` varchar(50) DEFAULT NULL,
  `INVOICE_TITLE` varchar(200) DEFAULT NULL COMMENT '发票抬头',
  `PRE_CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '增加父订单ID',
  `OP_BILL_ID` varchar(30) DEFAULT NULL COMMENT '实际办理业务号码',
  `OP_CUST_ID` bigint(14) DEFAULT NULL COMMENT '实际办理业务客户ID',
  `AGENCY_MAIL` varchar(100) DEFAULT NULL COMMENT '经办人电子邮箱',
  `AGENCY_ADDRESS` varchar(200) DEFAULT NULL,
  `ORDER_PARENT_ID` bigint(12) DEFAULT NULL COMMENT '主订单ID',
  `ORDER_REL_TYPE` varchar(10) DEFAULT NULL COMMENT '订单相关类型',
  `LAST_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_cust_h` */

DROP TABLE IF EXISTS `ord_cust_h`;

CREATE TABLE `ord_cust_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `ORDER_CODE` varchar(40) DEFAULT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '本次业务的主业务操作编号',
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '业务操作类型。产品管理中业务操作产品定义的业务类型，包括新装、变更、增加成员、删除成员等。为报表统计效率而冗余。',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_STATE` char(1) DEFAULT NULL COMMENT '客户状态(code_type=SO_CUST_STATE)\n1新建客户4老客户',
  `ACCT_STATE` char(1) DEFAULT NULL COMMENT '帐户状态(code_type=SO_ACCT_STATE)\n1新建帐户4老帐户',
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型(code_type=SO_CUST_TYPE)\n1个人用户2家庭客户3政企客户4VPMN客户',
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `OLD_ORDER_CODE` varchar(40) DEFAULT NULL COMMENT '撤单、改单、回滚使用',
  `CEASE_REASON` varchar(200) DEFAULT NULL,
  `AGENCY_PERSON` varchar(255) DEFAULT NULL,
  `CERTIFI_CODE` varchar(50) DEFAULT NULL,
  `CERTIFI_TYPE_ID` bigint(2) DEFAULT NULL COMMENT '1身份证\n2工作证\n3驾驶证\n4护照\n5营业执照\n6其它证件',
  `TEL` varchar(120) DEFAULT NULL,
  `PARTNER_ID` bigint(12) DEFAULT NULL,
  `BOOKING_HOME_DT` datetime DEFAULT NULL,
  `BOOKING_OPEN_DT` datetime DEFAULT NULL,
  `PRE_SO_ID` varchar(200) DEFAULT NULL COMMENT '预受理工单编号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `SOURCE_SYSTEM_ID` bigint(2) DEFAULT NULL COMMENT '行纪录的来源系统(code_type=SO_SOURCE_SYSTEM)。\n如客户订单是来源于BBoss系统，还是DSMP系统\n1RBOSS\n2BBOSS\n3DSMP',
  `VERIFY_TYPE` varchar(200) DEFAULT NULL COMMENT '记录该订单的校验方式文本(code_type=SO_VERIFY_TYPE)\n0无需认识\n1密码认证\n2本机认证\n3模糊认证\n4证件认证\n5密码+证件认证\n6密码或证件认证',
  `PAY_TYPE` bigint(2) DEFAULT NULL COMMENT '缴费方式(code_type=SO_PAY_TYPE)\n1现金缴费\n2刷卡缴费',
  `FACT_MONEY` bigint(12) DEFAULT NULL COMMENT '实收金额',
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL COMMENT '具体类型由接口组去定义(code_type=SO_CHANNEL_TYPE)，大致定义如下：\n0-所有；\n1-营业厅；\n2-银行；\n3-代理商；\n4-自助终端\n5-客服；\n6-短厅；\n7-网厅；\n8-VC平台；\n9WAP\n10USSD\n11CBOSS',
  `REP_FEE_PHONE_NO` varchar(80) DEFAULT NULL,
  `WRRANT_NO` varchar(80) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(120) DEFAULT NULL,
  `EXT_DONE_TYPE` varchar(200) DEFAULT NULL COMMENT '1商机\n2预受理\n3CBOSS业务受理',
  `EXT_DONE_CODE` varchar(1000) DEFAULT NULL,
  `WORKFLOW_TASK_ID` varchar(100) DEFAULT NULL COMMENT '用于回复外部流程任务',
  `IS_BATCH_ORDER` bigint(1) DEFAULT NULL COMMENT '是否指业务(CODE_TYPE=SO_YES_NO)',
  `COUNTY_CODE` varchar(8) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `CLERK_NO` varchar(50) DEFAULT NULL,
  `INVOICE_TITLE` varchar(200) DEFAULT NULL COMMENT '发票抬头',
  `PRE_CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '增加父订单ID',
  `OP_BILL_ID` varchar(30) DEFAULT NULL COMMENT '实际办理业务号码',
  `OP_CUST_ID` bigint(14) DEFAULT NULL COMMENT '实际办理业务客户ID',
  `AGENCY_MAIL` varchar(100) DEFAULT NULL COMMENT '经办人电子邮箱',
  `AGENCY_ADDRESS` varchar(200) DEFAULT NULL,
  `ORDER_PARENT_ID` bigint(12) DEFAULT NULL COMMENT '主订单ID',
  `ORDER_REL_TYPE` varchar(10) DEFAULT NULL COMMENT '订单相关类型',
  `last_date` datetime DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `I_ORD_CUST_H_CUSTID` (`CUST_ID`),
  KEY `I_ORD_CUST_H_BUSIID` (`BUSINESS_ID`),
  KEY `I_ORD_CUST_H_CREATEDATE` (`CREATE_DATE`),
  KEY `I_ORD_CUST_H_DD` (`DONE_DATE`)
) ENGINE=InnoDB AUTO_INCREMENT=100000335 DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110)';

/*Table structure for table `ord_cust_h_bak` */

DROP TABLE IF EXISTS `ord_cust_h_bak`;

CREATE TABLE `ord_cust_h_bak` (
  `H_ID` bigint(14) NOT NULL DEFAULT '0',
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `ORDER_CODE` varchar(40) DEFAULT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '本次业务的主业务操作编号',
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '业务操作类型。产品管理中业务操作产品定义的业务类型，包括新装、变更、增加成员、删除成员等。为报表统计效率而冗余。',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_STATE` char(1) DEFAULT NULL COMMENT '客户状态(code_type=SO_CUST_STATE)\n1新建客户4老客户',
  `ACCT_STATE` char(1) DEFAULT NULL COMMENT '帐户状态(code_type=SO_ACCT_STATE)\n1新建帐户4老帐户',
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型(code_type=SO_CUST_TYPE)\n1个人用户2家庭客户3政企客户4VPMN客户',
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `OLD_ORDER_CODE` varchar(40) DEFAULT NULL COMMENT '撤单、改单、回滚使用',
  `CEASE_REASON` varchar(200) DEFAULT NULL,
  `AGENCY_PERSON` varchar(255) DEFAULT NULL,
  `CERTIFI_CODE` varchar(50) DEFAULT NULL,
  `CERTIFI_TYPE_ID` bigint(2) DEFAULT NULL COMMENT '1身份证\n2工作证\n3驾驶证\n4护照\n5营业执照\n6其它证件',
  `TEL` varchar(120) DEFAULT NULL,
  `PARTNER_ID` bigint(12) DEFAULT NULL,
  `BOOKING_HOME_DT` datetime DEFAULT NULL,
  `BOOKING_OPEN_DT` datetime DEFAULT NULL,
  `PRE_SO_ID` varchar(200) DEFAULT NULL COMMENT '预受理工单编号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `SOURCE_SYSTEM_ID` bigint(2) DEFAULT NULL COMMENT '行纪录的来源系统(code_type=SO_SOURCE_SYSTEM)。\n如客户订单是来源于BBoss系统，还是DSMP系统\n1RBOSS\n2BBOSS\n3DSMP',
  `VERIFY_TYPE` varchar(200) DEFAULT NULL COMMENT '记录该订单的校验方式文本(code_type=SO_VERIFY_TYPE)\n0无需认识\n1密码认证\n2本机认证\n3模糊认证\n4证件认证\n5密码+证件认证\n6密码或证件认证',
  `PAY_TYPE` bigint(2) DEFAULT NULL COMMENT '缴费方式(code_type=SO_PAY_TYPE)\n1现金缴费\n2刷卡缴费',
  `FACT_MONEY` bigint(12) DEFAULT NULL COMMENT '实收金额',
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL COMMENT '具体类型由接口组去定义(code_type=SO_CHANNEL_TYPE)，大致定义如下：\n0-所有；\n1-营业厅；\n2-银行；\n3-代理商；\n4-自助终端\n5-客服；\n6-短厅；\n7-网厅；\n8-VC平台；\n9WAP\n10USSD\n11CBOSS',
  `REP_FEE_PHONE_NO` varchar(80) DEFAULT NULL,
  `WRRANT_NO` varchar(80) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(120) DEFAULT NULL,
  `EXT_DONE_TYPE` varchar(200) DEFAULT NULL COMMENT '1商机\n2预受理\n3CBOSS业务受理',
  `EXT_DONE_CODE` varchar(1000) DEFAULT NULL,
  `WORKFLOW_TASK_ID` varchar(100) DEFAULT NULL COMMENT '用于回复外部流程任务',
  `IS_BATCH_ORDER` bigint(1) DEFAULT NULL COMMENT '是否指业务(CODE_TYPE=SO_YES_NO)',
  `COUNTY_CODE` varchar(8) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `CLERK_NO` varchar(50) DEFAULT NULL,
  `INVOICE_TITLE` varchar(200) DEFAULT NULL COMMENT '发票抬头',
  `PRE_CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '增加父订单ID',
  `OP_BILL_ID` varchar(30) DEFAULT NULL COMMENT '实际办理业务号码',
  `OP_CUST_ID` bigint(14) DEFAULT NULL COMMENT '实际办理业务客户ID',
  `AGENCY_MAIL` varchar(100) DEFAULT NULL COMMENT '经办人电子邮箱',
  `AGENCY_ADDRESS` varchar(200) DEFAULT NULL,
  `ORDER_PARENT_ID` bigint(12) DEFAULT NULL COMMENT '主订单ID',
  `ORDER_REL_TYPE` varchar(10) DEFAULT NULL COMMENT '订单相关类型',
  `LAST_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (Month(done_date))
(PARTITION p_1 VALUES LESS THAN (2) ENGINE = InnoDB,
 PARTITION p_2 VALUES LESS THAN (3) ENGINE = InnoDB,
 PARTITION p_3 VALUES LESS THAN (4) ENGINE = InnoDB,
 PARTITION p_4 VALUES LESS THAN (5) ENGINE = InnoDB,
 PARTITION p_5 VALUES LESS THAN (6) ENGINE = InnoDB,
 PARTITION p_6 VALUES LESS THAN (7) ENGINE = InnoDB,
 PARTITION p_7 VALUES LESS THAN (8) ENGINE = InnoDB,
 PARTITION p_8 VALUES LESS THAN (9) ENGINE = InnoDB,
 PARTITION p_9 VALUES LESS THAN (10) ENGINE = InnoDB,
 PARTITION p_10 VALUES LESS THAN (11) ENGINE = InnoDB,
 PARTITION p_11 VALUES LESS THAN (12) ENGINE = InnoDB,
 PARTITION p_12 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;

/*Table structure for table `ord_cust_viaplay` */

DROP TABLE IF EXISTS `ord_cust_viaplay`;

CREATE TABLE `ord_cust_viaplay` (
  `CUST_ID` bigint(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_cust_viaplay_err` */

DROP TABLE IF EXISTS `ord_cust_viaplay_err`;

CREATE TABLE `ord_cust_viaplay_err` (
  `CUST_ID` bigint(14) DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_cust_viaplay_h` */

DROP TABLE IF EXISTS `ord_cust_viaplay_h`;

CREATE TABLE `ord_cust_viaplay_h` (
  `CUST_ID` bigint(14) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_cust_waiting` */

DROP TABLE IF EXISTS `ord_cust_waiting`;

CREATE TABLE `ord_cust_waiting` (
  `W_ID` bigint(14) NOT NULL,
  `ORD_CUSTOMER_ID` bigint(12) DEFAULT NULL,
  `ORD_CODE` varchar(40) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `BCE_FRAME_ID` bigint(12) DEFAULT NULL,
  `BOOKING_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(14) DEFAULT NULL,
  `STATE` varchar(2) DEFAULT NULL COMMENT '21 未支付\n22 预约\n23 支付完成\n25 预约订单前台提前处理\n26 支付中',
  `REMARKS` varchar(300) DEFAULT NULL,
  `EXT1` varchar(300) DEFAULT NULL,
  `EXT2` varchar(300) DEFAULT NULL,
  `EXT3` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`W_ID`),
  KEY `IDX_ORD_CUST_WAITING_1` (`ORD_CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录待处理的客户订单，包括预约订单，一次性费用送billing等待billing反馈的订单';

/*Table structure for table `ord_cust_waiting_err` */

DROP TABLE IF EXISTS `ord_cust_waiting_err`;

CREATE TABLE `ord_cust_waiting_err` (
  `W_ID` bigint(14) NOT NULL,
  `ORD_CUSTOMER_ID` bigint(12) DEFAULT NULL,
  `ORD_CODE` varchar(40) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `BCE_FRAME_ID` bigint(12) DEFAULT NULL,
  `BOOKING_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(14) DEFAULT NULL,
  `STATE` varchar(2) DEFAULT NULL COMMENT '21 未支付\n22 预约\n23 支付完成\n25 预约订单前台提前处理\n26 支付中',
  `REMARKS` varchar(300) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  `EXT1` varchar(300) DEFAULT NULL,
  `EXT2` varchar(300) DEFAULT NULL,
  `EXT3` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`W_ID`),
  KEY `IDX_ORD_CUST_WAITING_1` (`ORD_CUSTOMER_ID`),
  KEY `IDX_ORD_CUST_WAITING_2` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录待处理的客户订单，包括预约订单，一次性费用送billing等待billing反馈的订单';

/*Table structure for table `ord_cust_waiting_h` */

DROP TABLE IF EXISTS `ord_cust_waiting_h`;

CREATE TABLE `ord_cust_waiting_h` (
  `W_ID` bigint(14) NOT NULL,
  `ORD_CUSTOMER_ID` bigint(12) DEFAULT NULL,
  `ORD_CODE` varchar(40) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `BCE_FRAME_ID` bigint(12) DEFAULT NULL,
  `BOOKING_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(14) DEFAULT NULL,
  `STATE` varchar(2) DEFAULT NULL COMMENT '21有费用订单\n22预约订单\n23billing反馈成功订单\n25预约订单前台提前处理\n26费用订单送billing，等待billing反馈',
  `REMARKS` varchar(300) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(300) DEFAULT NULL,
  `EXT2` varchar(300) DEFAULT NULL,
  `EXT3` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`W_ID`),
  KEY `IDX_ORD_CUST_WAITING_1` (`ORD_CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录待处理的客户订单，包括预约订单，一次性费用送billing等待billing反馈的订单';

/*Table structure for table `ord_deal_event` */

DROP TABLE IF EXISTS `ord_deal_event`;

CREATE TABLE `ord_deal_event` (
  `SEQ_ID` bigint(14) NOT NULL COMMENT '主键',
  `EVENT_CODE` bigint(14) DEFAULT NULL COMMENT '事件类型',
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(120) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `EVENT_DTL_INFO` text,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_ORD_DEAL_EVENT_1_21` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_deal_event_err` */

DROP TABLE IF EXISTS `ord_deal_event_err`;

CREATE TABLE `ord_deal_event_err` (
  `SEQ_ID` bigint(14) NOT NULL COMMENT '主键',
  `EVENT_CODE` bigint(14) DEFAULT NULL COMMENT '事件类型',
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(120) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `EVENT_DTL_INFO` text,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(12000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_deal_event_h` */

DROP TABLE IF EXISTS `ord_deal_event_h`;

CREATE TABLE `ord_deal_event_h` (
  `SEQ_ID` bigint(14) NOT NULL COMMENT '主键',
  `EVENT_CODE` bigint(14) DEFAULT NULL COMMENT '事件类型',
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(120) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `EVENT_DTL_INFO` text,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_dsmp_switch` */

DROP TABLE IF EXISTS `ord_dsmp_switch`;

CREATE TABLE `ord_dsmp_switch` (
  `ORDER_SWITCH_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `SWITCH_CODE` varchar(20) DEFAULT NULL COMMENT '(code_type=SO_DSMP_SWITCH_OFFER_MAPPING)\n103 WAP服务开关\n104 梦网短信服务开关\n105 梦网彩信服务开关\n113 手机动画服务开关\n156 Widget服务开关\n157 MM服务开关\n199 移动信息服务总开关',
  `SWITCH_VALUE` varchar(8) DEFAULT NULL COMMENT '开关值\n0000 关闭\n1111 打开',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1正常',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  PRIMARY KEY (`ORDER_SWITCH_ID`),
  KEY `IDX_ORD_DSSW` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：DSMP业务开关订单\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按用户编号随机分10张表(北京:ORD_DSMP_SWITCH_100开始,上海:ORD_DSMP_SWITCH_210开始)\n\n历史表：按用户编号分片和年月进行分表(如ORD_DSMP_SWITCH_H_100_201110，增加H_ID字段)\n\n竣工表：按用户编号分片和年月进行分表(如ORD_DTL_INFO_F_100_201110)';

/*Table structure for table `ord_dsmp_switch_f` */

DROP TABLE IF EXISTS `ord_dsmp_switch_f`;

CREATE TABLE `ord_dsmp_switch_f` (
  `ORDER_SWITCH_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `SWITCH_CODE` varchar(20) DEFAULT NULL,
  `SWITCH_VALUE` varchar(8) DEFAULT NULL COMMENT '开关值',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1正常',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  PRIMARY KEY (`ORDER_SWITCH_ID`),
  KEY `IDX_ORD_DSSW2` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_dsmp_switch_h` */

DROP TABLE IF EXISTS `ord_dsmp_switch_h`;

CREATE TABLE `ord_dsmp_switch_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `ORDER_SWITCH_ID` bigint(12) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `SWITCH_CODE` varchar(20) DEFAULT NULL,
  `SWITCH_VALUE` varchar(8) DEFAULT NULL COMMENT '开关值',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1正常',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110)';

/*Table structure for table `ord_dtl_info` */

DROP TABLE IF EXISTS `ord_dtl_info`;

CREATE TABLE `ord_dtl_info` (
  `DTL_INFO_ORDER_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `DATA_XML_1` text NOT NULL,
  `DATA_XML_2` text,
  `DATA_XML_3` text,
  `DATA_XML_4` text,
  `DATA_XML_5` text,
  `DATA_XML_6` text,
  `DATA_XML_7` text,
  `DATA_XML_8` text,
  `DATA_XML_9` text,
  `DATA_XML_10` text,
  `DATA_XML_11` text,
  `DATA_XML_12` text,
  `DATA_XML_13` text,
  `DATA_XML_14` text,
  `DATA_XML_15` text,
  `DATA_XML_16` text,
  `ORDER_STATE` bigint(2) NOT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建 7 强制删除 9 失败 10 撤单 11 竣工',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DTL_INFO_ORDER_ID`),
  KEY `IDX_ORD_DTLINFO` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED COMMENT='说明：用于记录客户办理业务时的详细信息，以XML报文的方式进行存储。\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按用户编号随机分10张表(北京:ORD_DTL_INFO_100开始,上海:ORD_BUSI_LIMIT_210开始)\n\n历史表：按用户编号分片和年月进行分表(如ORD_DTL_INFO_H_100_201110，增加H_ID字段)\n\n竣工表：按用户编号分片和年月进行分表(如ORD_DTL_INFO_F_100_201110)';

/*Table structure for table `ord_dtl_info_f` */

DROP TABLE IF EXISTS `ord_dtl_info_f`;

CREATE TABLE `ord_dtl_info_f` (
  `DTL_INFO_ORDER_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `DATA_XML_1` text NOT NULL,
  `DATA_XML_2` text,
  `DATA_XML_3` text,
  `DATA_XML_4` text,
  `DATA_XML_5` text,
  `DATA_XML_6` text,
  `DATA_XML_7` text,
  `DATA_XML_8` text,
  `DATA_XML_9` text,
  `DATA_XML_10` text,
  `DATA_XML_11` text,
  `DATA_XML_12` text,
  `DATA_XML_13` text,
  `DATA_XML_14` text,
  `DATA_XML_15` text,
  `DATA_XML_16` text,
  `ORDER_STATE` bigint(2) NOT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建 7 强制删除 9 失败 10 撤单 11 竣工',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DTL_INFO_ORDER_ID`),
  KEY `IDX_ORD_DTLINFO2` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_dtl_info_h` */

DROP TABLE IF EXISTS `ord_dtl_info_h`;

CREATE TABLE `ord_dtl_info_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `DTL_INFO_ORDER_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `DATA_XML_1` text NOT NULL,
  `DATA_XML_2` text,
  `DATA_XML_3` text,
  `DATA_XML_4` text,
  `DATA_XML_5` text,
  `DATA_XML_6` text,
  `DATA_XML_7` text,
  `DATA_XML_8` text,
  `DATA_XML_9` text,
  `DATA_XML_10` text,
  `DATA_XML_11` text,
  `DATA_XML_12` text,
  `DATA_XML_13` text,
  `DATA_XML_14` text,
  `DATA_XML_15` text,
  `DATA_XML_16` text,
  `ORDER_STATE` bigint(2) NOT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建 7 强制删除 9 失败 10 撤单 11 竣工',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `H_ID` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18049 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

/*Table structure for table `ord_event` */

DROP TABLE IF EXISTS `ord_event`;

CREATE TABLE `ord_event` (
  `EVENT_ID` bigint(14) NOT NULL COMMENT '主键',
  `EVENT_CODE` bigint(14) DEFAULT NULL COMMENT '事件类型',
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(120) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `EVENT_SRC_SYSTEM` bigint(2) DEFAULT NULL,
  `EVENT_DES_SYSTEM` bigint(2) DEFAULT NULL,
  `EVENT_DTL_INFO` text,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_event_err` */

DROP TABLE IF EXISTS `ord_event_err`;

CREATE TABLE `ord_event_err` (
  `EVENT_ID` bigint(14) NOT NULL COMMENT '主键',
  `EVENT_CODE` bigint(14) DEFAULT NULL COMMENT '事件类型',
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(120) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `EVENT_SRC_SYSTEM` bigint(2) DEFAULT NULL,
  `EVENT_DES_SYSTEM` bigint(2) DEFAULT NULL,
  `EVENT_DTL_INFO` text,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_event_h` */

DROP TABLE IF EXISTS `ord_event_h`;

CREATE TABLE `ord_event_h` (
  `EVENT_ID` bigint(14) NOT NULL COMMENT '主键',
  `EVENT_CODE` bigint(14) DEFAULT NULL COMMENT '事件类型',
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(120) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `EVENT_SRC_SYSTEM` bigint(2) DEFAULT NULL,
  `EVENT_DES_SYSTEM` bigint(2) DEFAULT NULL,
  `EVENT_DTL_INFO` text,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_expire_deal` */

DROP TABLE IF EXISTS `ord_expire_deal`;

CREATE TABLE `ord_expire_deal` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201801` */

DROP TABLE IF EXISTS `ord_expire_deal_201801`;

CREATE TABLE `ord_expire_deal_201801` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201802` */

DROP TABLE IF EXISTS `ord_expire_deal_201802`;

CREATE TABLE `ord_expire_deal_201802` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201803` */

DROP TABLE IF EXISTS `ord_expire_deal_201803`;

CREATE TABLE `ord_expire_deal_201803` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201804` */

DROP TABLE IF EXISTS `ord_expire_deal_201804`;

CREATE TABLE `ord_expire_deal_201804` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201805` */

DROP TABLE IF EXISTS `ord_expire_deal_201805`;

CREATE TABLE `ord_expire_deal_201805` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201806` */

DROP TABLE IF EXISTS `ord_expire_deal_201806`;

CREATE TABLE `ord_expire_deal_201806` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201807` */

DROP TABLE IF EXISTS `ord_expire_deal_201807`;

CREATE TABLE `ord_expire_deal_201807` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201808` */

DROP TABLE IF EXISTS `ord_expire_deal_201808`;

CREATE TABLE `ord_expire_deal_201808` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201809` */

DROP TABLE IF EXISTS `ord_expire_deal_201809`;

CREATE TABLE `ord_expire_deal_201809` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201810` */

DROP TABLE IF EXISTS `ord_expire_deal_201810`;

CREATE TABLE `ord_expire_deal_201810` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201811` */

DROP TABLE IF EXISTS `ord_expire_deal_201811`;

CREATE TABLE `ord_expire_deal_201811` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201812` */

DROP TABLE IF EXISTS `ord_expire_deal_201812`;

CREATE TABLE `ord_expire_deal_201812` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201901` */

DROP TABLE IF EXISTS `ord_expire_deal_201901`;

CREATE TABLE `ord_expire_deal_201901` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201902` */

DROP TABLE IF EXISTS `ord_expire_deal_201902`;

CREATE TABLE `ord_expire_deal_201902` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201903` */

DROP TABLE IF EXISTS `ord_expire_deal_201903`;

CREATE TABLE `ord_expire_deal_201903` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201904` */

DROP TABLE IF EXISTS `ord_expire_deal_201904`;

CREATE TABLE `ord_expire_deal_201904` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201905` */

DROP TABLE IF EXISTS `ord_expire_deal_201905`;

CREATE TABLE `ord_expire_deal_201905` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201906` */

DROP TABLE IF EXISTS `ord_expire_deal_201906`;

CREATE TABLE `ord_expire_deal_201906` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201907` */

DROP TABLE IF EXISTS `ord_expire_deal_201907`;

CREATE TABLE `ord_expire_deal_201907` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201908` */

DROP TABLE IF EXISTS `ord_expire_deal_201908`;

CREATE TABLE `ord_expire_deal_201908` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201909` */

DROP TABLE IF EXISTS `ord_expire_deal_201909`;

CREATE TABLE `ord_expire_deal_201909` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201910` */

DROP TABLE IF EXISTS `ord_expire_deal_201910`;

CREATE TABLE `ord_expire_deal_201910` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201911` */

DROP TABLE IF EXISTS `ord_expire_deal_201911`;

CREATE TABLE `ord_expire_deal_201911` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_201912` */

DROP TABLE IF EXISTS `ord_expire_deal_201912`;

CREATE TABLE `ord_expire_deal_201912` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202001` */

DROP TABLE IF EXISTS `ord_expire_deal_202001`;

CREATE TABLE `ord_expire_deal_202001` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202002` */

DROP TABLE IF EXISTS `ord_expire_deal_202002`;

CREATE TABLE `ord_expire_deal_202002` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202003` */

DROP TABLE IF EXISTS `ord_expire_deal_202003`;

CREATE TABLE `ord_expire_deal_202003` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202004` */

DROP TABLE IF EXISTS `ord_expire_deal_202004`;

CREATE TABLE `ord_expire_deal_202004` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202005` */

DROP TABLE IF EXISTS `ord_expire_deal_202005`;

CREATE TABLE `ord_expire_deal_202005` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202006` */

DROP TABLE IF EXISTS `ord_expire_deal_202006`;

CREATE TABLE `ord_expire_deal_202006` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202007` */

DROP TABLE IF EXISTS `ord_expire_deal_202007`;

CREATE TABLE `ord_expire_deal_202007` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202008` */

DROP TABLE IF EXISTS `ord_expire_deal_202008`;

CREATE TABLE `ord_expire_deal_202008` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202009` */

DROP TABLE IF EXISTS `ord_expire_deal_202009`;

CREATE TABLE `ord_expire_deal_202009` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202010` */

DROP TABLE IF EXISTS `ord_expire_deal_202010`;

CREATE TABLE `ord_expire_deal_202010` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202011` */

DROP TABLE IF EXISTS `ord_expire_deal_202011`;

CREATE TABLE `ord_expire_deal_202011` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202012` */

DROP TABLE IF EXISTS `ord_expire_deal_202012`;

CREATE TABLE `ord_expire_deal_202012` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202101` */

DROP TABLE IF EXISTS `ord_expire_deal_202101`;

CREATE TABLE `ord_expire_deal_202101` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202102` */

DROP TABLE IF EXISTS `ord_expire_deal_202102`;

CREATE TABLE `ord_expire_deal_202102` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202103` */

DROP TABLE IF EXISTS `ord_expire_deal_202103`;

CREATE TABLE `ord_expire_deal_202103` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202104` */

DROP TABLE IF EXISTS `ord_expire_deal_202104`;

CREATE TABLE `ord_expire_deal_202104` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202105` */

DROP TABLE IF EXISTS `ord_expire_deal_202105`;

CREATE TABLE `ord_expire_deal_202105` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202106` */

DROP TABLE IF EXISTS `ord_expire_deal_202106`;

CREATE TABLE `ord_expire_deal_202106` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202107` */

DROP TABLE IF EXISTS `ord_expire_deal_202107`;

CREATE TABLE `ord_expire_deal_202107` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202108` */

DROP TABLE IF EXISTS `ord_expire_deal_202108`;

CREATE TABLE `ord_expire_deal_202108` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202109` */

DROP TABLE IF EXISTS `ord_expire_deal_202109`;

CREATE TABLE `ord_expire_deal_202109` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202110` */

DROP TABLE IF EXISTS `ord_expire_deal_202110`;

CREATE TABLE `ord_expire_deal_202110` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202111` */

DROP TABLE IF EXISTS `ord_expire_deal_202111`;

CREATE TABLE `ord_expire_deal_202111` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_202112` */

DROP TABLE IF EXISTS `ord_expire_deal_202112`;

CREATE TABLE `ord_expire_deal_202112` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_209912` */

DROP TABLE IF EXISTS `ord_expire_deal_209912`;

CREATE TABLE `ord_expire_deal_209912` (
  `DEAL_ORDER_ID` bigint(12) NOT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) NOT NULL DEFAULT '0' COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`DEAL_ORDER_ID`,`OFFER_INST_ID`),
  KEY `IDX_ORDX_EXPIRE_DEAL` (`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_err` */

DROP TABLE IF EXISTS `ord_expire_deal_err`;

CREATE TABLE `ord_expire_deal_err` (
  `DEAL_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL COMMENT '错误消息',
  `DEAL_ORDER_ERROR_ID` bigint(12) NOT NULL COMMENT '处理订单错误编号',
  PRIMARY KEY (`DEAL_ORDER_ERROR_ID`),
  KEY `NewIndex1` (`DEAL_ORDER_ID`,`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_expire_deal_h` */

DROP TABLE IF EXISTS `ord_expire_deal_h`;

CREATE TABLE `ord_expire_deal_h` (
  `DEAL_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '处理订单编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务操作编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '策划实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '到期处理时间',
  `DEAL_TYPE` bigint(2) DEFAULT NULL COMMENT '处理类型(code_type=SO_EXPIRE_DEAL_TYPE):\n0：策划到期短信提醒\n1：宽带到期停\n2：宽带到期提醒\n3：特权报开到期帐务停机\n4：到期仅清理数据\n7：到期开GPRS\n8：到期开短信\n9：到期开彩信\n10：到期取消呼叫受限\n11：特权报开到期呼出限制\n12：免催免停到期处理\n16：预注销-注销（套餐）\n17：15 随e行15G封顶用户解除\n18：67 天语终端封顶后重置\n19：开Wlan \n20：策划生效短信提醒\n21：下周期套餐生效提醒\n22：积分兑换到期提醒\n23：开户次次日发送的提醒短信；\n24：开户7日后发送的提醒短信；\n25：换套餐次次日发送的提醒短信；\n26：产品到期短信提醒\n27：产品生效短信提醒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识',
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_4` varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  `TF_DATE` datetime DEFAULT NULL,
  KEY `NewIndex1` (`DEAL_ORDER_ID`,`DEAL_DATE`,`DEAL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务到期处理工单记录表，对于当时记录的数据，用户后来做了变更，找不到相应的实例数据的，直接把本表的数据删除掉，对于处理成功的需要转到历史表中去，供用户失效数据清理使用。插入时要注意，如果这条记录的到期时间是201205，应该要插入到201205所对应的分表，而不应该插入到当前表中。\n\n分区：根据DEAL_TYPE进行分区\n\n分表：按用户编号分片和年月进行分表((如ORD_EXPIRE_DEAL_100_201110)\n\n历史表：按用户编号分片和年月进行分表(如ORD_EXPIRE_DEAL_H_100_201110)，在源的基础上加上一个date类型的tf_date字段\n\n错误表：按用户编号分片和年月分表(如ORD_EXPIRE_DEAL_100_201110_ERR)';

/*Table structure for table `ord_ext` */

DROP TABLE IF EXISTS `ord_ext`;

CREATE TABLE `ord_ext` (
  `extId` bigint(14) NOT NULL,
  `extType` bigint(3) DEFAULT NULL,
  `customerOrderId` bigint(12) NOT NULL,
  `attr1` varchar(50) DEFAULT NULL,
  `attr2` varchar(50) DEFAULT NULL,
  `attr3` varchar(50) DEFAULT NULL,
  `attr4` varchar(50) DEFAULT NULL,
  `attr5` varchar(50) DEFAULT NULL,
  `attr6` varchar(50) DEFAULT NULL,
  `attr7` varchar(50) DEFAULT NULL,
  `attr8` varchar(50) DEFAULT NULL,
  `attr9` varchar(50) DEFAULT NULL,
  `attr10` varchar(50) DEFAULT NULL,
  `attr11` varchar(50) DEFAULT NULL,
  `attr12` varchar(50) DEFAULT NULL,
  `attr13` varchar(50) DEFAULT NULL,
  `attr14` varchar(50) DEFAULT NULL,
  `attr15` varchar(50) DEFAULT NULL,
  `attr16` varchar(50) DEFAULT NULL,
  `attr17` varchar(50) DEFAULT NULL,
  `attr18` varchar(50) DEFAULT NULL,
  `attr19` varchar(50) DEFAULT NULL,
  `attr20` varchar(50) DEFAULT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` date DEFAULT NULL,
  `REGION_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`extId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_ext_f` */

DROP TABLE IF EXISTS `ord_ext_f`;

CREATE TABLE `ord_ext_f` (
  `extId` bigint(14) NOT NULL,
  `extType` bigint(3) DEFAULT NULL,
  `customerOrderId` bigint(12) NOT NULL,
  `attr1` varchar(50) DEFAULT NULL,
  `attr2` varchar(50) DEFAULT NULL,
  `attr3` varchar(50) DEFAULT NULL,
  `attr4` varchar(50) DEFAULT NULL,
  `attr5` varchar(50) DEFAULT NULL,
  `attr6` varchar(50) DEFAULT NULL,
  `attr7` varchar(50) DEFAULT NULL,
  `attr8` varchar(50) DEFAULT NULL,
  `attr9` varchar(50) DEFAULT NULL,
  `attr10` varchar(50) DEFAULT NULL,
  `attr11` varchar(50) DEFAULT NULL,
  `attr12` varchar(50) DEFAULT NULL,
  `attr13` varchar(50) DEFAULT NULL,
  `attr14` varchar(50) DEFAULT NULL,
  `attr15` varchar(50) DEFAULT NULL,
  `attr16` varchar(50) DEFAULT NULL,
  `attr17` varchar(50) DEFAULT NULL,
  `attr18` varchar(50) DEFAULT NULL,
  `attr19` varchar(50) DEFAULT NULL,
  `attr20` varchar(50) DEFAULT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` date DEFAULT NULL,
  `REGION_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`extId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_ext_h` */

DROP TABLE IF EXISTS `ord_ext_h`;

CREATE TABLE `ord_ext_h` (
  `h_Id` bigint(14) NOT NULL,
  `extId` bigint(14) NOT NULL,
  `extType` bigint(3) DEFAULT NULL,
  `customerOrderId` bigint(12) NOT NULL,
  `attr1` varchar(50) DEFAULT NULL,
  `attr2` varchar(50) DEFAULT NULL,
  `attr3` varchar(50) DEFAULT NULL,
  `attr4` varchar(50) DEFAULT NULL,
  `attr5` varchar(50) DEFAULT NULL,
  `attr6` varchar(50) DEFAULT NULL,
  `attr7` varchar(50) DEFAULT NULL,
  `attr8` varchar(50) DEFAULT NULL,
  `attr9` varchar(50) DEFAULT NULL,
  `attr10` varchar(50) DEFAULT NULL,
  `attr11` varchar(50) DEFAULT NULL,
  `attr12` varchar(50) DEFAULT NULL,
  `attr13` varchar(50) DEFAULT NULL,
  `attr14` varchar(50) DEFAULT NULL,
  `attr15` varchar(50) DEFAULT NULL,
  `attr16` varchar(50) DEFAULT NULL,
  `attr17` varchar(50) DEFAULT NULL,
  `attr18` varchar(50) DEFAULT NULL,
  `attr19` varchar(50) DEFAULT NULL,
  `attr20` varchar(50) DEFAULT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` date DEFAULT NULL,
  `REGION_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`h_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_fixdline_survey` */

DROP TABLE IF EXISTS `ord_fixdline_survey`;

CREATE TABLE `ord_fixdline_survey` (
  `out_survey_order_id` bigint(14) NOT NULL,
  `customer_id` bigint(14) NOT NULL,
  `customer_order_id` bigint(14) NOT NULL,
  `near_fixedline_no` varchar(255) DEFAULT NULL,
  `near_adsl_no` varchar(255) DEFAULT NULL,
  `near_cabinet_id` bigint(10) DEFAULT NULL,
  `contact_date` date DEFAULT NULL,
  `out_survey_times` bigint(2) DEFAULT NULL,
  `state` bigint(2) DEFAULT NULL,
  `bill_id` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `address_id` bigint(14) NOT NULL,
  `install_address_desc` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  `out_survey_result_flag` bigint(2) DEFAULT NULL,
  `out_survey_result_desc` varchar(4000) DEFAULT NULL,
  `dropwire_length` bigint(6) DEFAULT NULL,
  `exchange_list` varchar(255) DEFAULT NULL,
  `ext1` bigint(12) DEFAULT NULL,
  `ext2` bigint(12) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` varchar(255) DEFAULT NULL,
  `notify_email` varchar(255) DEFAULT NULL,
  `notify_mobile` varchar(20) DEFAULT NULL,
  `cont_phone` varchar(40) DEFAULT NULL,
  `cont_person` varchar(255) DEFAULT NULL,
  `service_operation` bigint(12) DEFAULT NULL,
  `op_id` bigint(14) DEFAULT NULL,
  `survey_id` bigint(14) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `order_id` bigint(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_future_offer` */

DROP TABLE IF EXISTS `ord_future_offer`;

CREATE TABLE `ord_future_offer` (
  `OFF_USER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_USER_RELAT_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_NAME` varchar(200) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OFFER_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL,
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`OFF_USER_ORDER_ID`),
  KEY `IDX_ORD_FUTUREOFF_1` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：丹麦要求对于未来生效的offer，如果有费用，需要把一次性费用计入策划生效之后的下个账期。由于offer的一次操作可能会有多笔费用。所以创建策划操作表关联对应的future price。\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按租户随意分表(如：ORD_FUTURE_OFFER_100)\n竣工表：按租户和年月进行分表(如：ORD_FUTURE_OFFER_F_100_201110)\n错误表：按租户分表(如：ORD_FUTURE_OFFER_100_ERR)';

/*Table structure for table `ord_future_offer_err` */

DROP TABLE IF EXISTS `ord_future_offer_err`;

CREATE TABLE `ord_future_offer_err` (
  `OFF_USER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_USER_RELAT_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_NAME` varchar(200) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OFFER_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL,
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL COMMENT '错误消息',
  PRIMARY KEY (`OFF_USER_ORDER_ID`),
  KEY `IDX_ORD_FUTUREOFF_1` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：丹麦要求对于未来生效的offer，如果有费用，需要把一次性费用计入策划生效之后的下个账期。由于offer的一次操作可能会有多笔费用。所以创建策划操作表关联对应的future price。\n\n分表规则：ORD_FUTURE_OFFER_RRR_ERR\n例如：ORD_FUTURE_OFFER_100_ERR';

/*Table structure for table `ord_future_offer_f` */

DROP TABLE IF EXISTS `ord_future_offer_f`;

CREATE TABLE `ord_future_offer_f` (
  `OFF_USER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_USER_RELAT_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_NAME` varchar(200) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OFFER_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL,
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`OFF_USER_ORDER_ID`),
  KEY `IDX_ORD_FUTUREOFF_1` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：丹麦要求对于未来生效的offer，如果有费用，需要把一次性费用计入策划生效之后的下个账期。由于offer的一次操作可能会有多笔费用。所以创建策划操作表关联对应的future price。\n\n索引：CUSTOMER_ORDER_ID\n\n分表规则：ORD_FUTURE_OFFER_F_RRR_YYYYMM\n例如：ORD_FUTURE_OFFER_F_101_201205';

/*Table structure for table `ord_future_price` */

DROP TABLE IF EXISTS `ord_future_price`;

CREATE TABLE `ord_future_price` (
  `BUSI_PRICE_ORDER_ID` bigint(12) NOT NULL,
  `BUSI_PRICE_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFF_USER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '如果是挂在客户订单上的营业费用，则此字段不填写。',
  `PRICE_ID` bigint(12) DEFAULT NULL,
  `PRICE_DETAIL_TYPE` varchar(100) DEFAULT NULL COMMENT 'BUSI_DEPOSIT     营业押金资费包        \nBUSI_PREPAY      普通预存              \nBUSI_PREPAY      分摊预存              \nBUSI_RES         资源                  \nBUSI_SCORE       积分                  \nBUSI_FEE         手续费                \nBUSI_PAY         营业缴纳',
  `PRICEITEM_ID` bigint(12) DEFAULT NULL,
  `FACT_PRICEITEM_VALUE` bigint(12) DEFAULT NULL COMMENT '受理时填写的科目实际单价，存储到表中的时候，数据的单位为分；界面展示该值的单位为元\n是否允许修改单价根据权限控制。缺省值等于科目定价',
  `ORDER_NUM` bigint(6) DEFAULT NULL,
  `SHOULD_MONEY` bigint(12) DEFAULT NULL,
  `DISTCOUNT_MONEY` bigint(12) DEFAULT NULL COMMENT '折扣优惠金额',
  `DISCOUNT_TYPE` bigint(6) DEFAULT NULL COMMENT '折扣原因类型',
  `FACT_MONEY` bigint(12) DEFAULT NULL,
  `TOTAL_SCORE` bigint(8) DEFAULT NULL COMMENT '积分总数',
  `PAY_TYPE` bigint(1) DEFAULT NULL COMMENT '付费方式(1扣本金帐本，2先扣本金帐本，3现金缴款)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(200) DEFAULT NULL,
  `EXT2` varchar(200) DEFAULT NULL,
  `EXT3` bigint(14) DEFAULT NULL,
  `EXT4` bigint(14) DEFAULT NULL,
  `EXT5` varchar(200) DEFAULT NULL,
  `IS_SEND_REPORT` bigint(6) DEFAULT NULL,
  `TARGET_ACCT_ID` bigint(14) DEFAULT NULL,
  `PRE_TAX_MONEY` bigint(12) DEFAULT NULL,
  `TAX_KIND` varchar(255) DEFAULT NULL,
  `TAX_MONEY` bigint(12) DEFAULT NULL,
  `CHARGE_MODE` varchar(2) DEFAULT NULL COMMENT '1:前台立即收费\n2:指定日期转账单，后台进程处理\n3:转账单',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`BUSI_PRICE_ORDER_ID`),
  KEY `IDX_ORD_BUPRI_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_BUPRI_2` (`OFF_USER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：结构同ORD_BUSI_PRICE，主要处理丹麦对于未来生效策划对应的费用：\nFor Future Dated “Change Offer”, if there is any penalty or one-time-fee, the fee will be billed to customer at the billing date after the effective date.\n\n索引：CUSTOMER_ORDER_ID\n\n\n分表方式：按租户随意分表(如：ORD_FUTURE_PRICE_100)\n竣工表：按租户和年月进行分表(如：ORD_FUTURE_PRICE_F_100_201110）\n错误表：按租户分表(如：ORD_FUTURE_PRICE_100_ERR)';

/*Table structure for table `ord_future_price_err` */

DROP TABLE IF EXISTS `ord_future_price_err`;

CREATE TABLE `ord_future_price_err` (
  `BUSI_PRICE_ORDER_ID` bigint(12) NOT NULL,
  `BUSI_PRICE_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFF_USER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '如果是挂在客户订单上的营业费用，则此字段不填写。',
  `PRICE_ID` bigint(12) DEFAULT NULL,
  `PRICE_DETAIL_TYPE` varchar(100) DEFAULT NULL COMMENT 'BUSI_DEPOSIT     营业押金资费包        \nBUSI_PREPAY      普通预存              \nBUSI_PREPAY      分摊预存              \nBUSI_RES         资源                  \nBUSI_SCORE       积分                  \nBUSI_FEE         手续费                \nBUSI_PAY         营业缴纳',
  `PRICEITEM_ID` bigint(12) DEFAULT NULL,
  `FACT_PRICEITEM_VALUE` bigint(12) DEFAULT NULL COMMENT '受理时填写的科目实际单价，存储到表中的时候，数据的单位为分；界面展示该值的单位为元\n是否允许修改单价根据权限控制。缺省值等于科目定价',
  `ORDER_NUM` bigint(6) DEFAULT NULL,
  `SHOULD_MONEY` bigint(12) DEFAULT NULL,
  `DISTCOUNT_MONEY` bigint(12) DEFAULT NULL COMMENT '折扣优惠金额',
  `DISCOUNT_TYPE` bigint(6) DEFAULT NULL COMMENT '折扣原因类型',
  `FACT_MONEY` bigint(12) DEFAULT NULL,
  `TOTAL_SCORE` bigint(8) DEFAULT NULL COMMENT '积分总数',
  `PAY_TYPE` bigint(1) DEFAULT NULL COMMENT '付费方式(1扣本金帐本，2先扣本金帐本，3现金缴款)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(200) DEFAULT NULL,
  `EXT2` varchar(200) DEFAULT NULL,
  `EXT3` bigint(14) DEFAULT NULL,
  `EXT4` bigint(14) DEFAULT NULL,
  `EXT5` varchar(200) DEFAULT NULL,
  `IS_SEND_REPORT` bigint(6) DEFAULT NULL,
  `TARGET_ACCT_ID` bigint(14) DEFAULT NULL,
  `PRE_TAX_MONEY` bigint(12) DEFAULT NULL,
  `TAX_KIND` varchar(255) DEFAULT NULL,
  `TAX_MONEY` bigint(12) DEFAULT NULL,
  `CHARGE_MODE` varchar(2) DEFAULT NULL COMMENT '1:前台立即收费\n2:指定日期转账单，后台进程处理\n3:转账单',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`BUSI_PRICE_ORDER_ID`),
  KEY `IDX_ORD_BUPRI_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_BUPRI_2` (`OFF_USER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：结构同ORD_BUSI_PRICE，主要处理丹麦对于未来生效策划对应的费用：\nFor Future Dated “Change Offer”, if there is any penalty or one-time-fee, the fee will be billed to customer at the billing date after the effective date.\n\n分表方式：按租户随意分表(如：ORD_FUTURE_PRICE_100)\n竣工表：按租户和年月进行分表(如：ORD_FUTURE_PRICE_F_100_201110）\n错误表：按租户分表(如：ORD_FUTURE_PRICE_100_ERR)';

/*Table structure for table `ord_future_price_f` */

DROP TABLE IF EXISTS `ord_future_price_f`;

CREATE TABLE `ord_future_price_f` (
  `BUSI_PRICE_ORDER_ID` bigint(12) NOT NULL,
  `BUSI_PRICE_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFF_USER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '如果是挂在客户订单上的营业费用，则此字段不填写。',
  `PRICE_ID` bigint(12) DEFAULT NULL,
  `PRICE_DETAIL_TYPE` varchar(100) DEFAULT NULL COMMENT 'BUSI_DEPOSIT     营业押金资费包        \nBUSI_PREPAY      普通预存              \nBUSI_PREPAY      分摊预存              \nBUSI_RES         资源                  \nBUSI_SCORE       积分                  \nBUSI_FEE         手续费                \nBUSI_PAY         营业缴纳',
  `PRICEITEM_ID` bigint(12) DEFAULT NULL,
  `FACT_PRICEITEM_VALUE` bigint(12) DEFAULT NULL COMMENT '受理时填写的科目实际单价，存储到表中的时候，数据的单位为分；界面展示该值的单位为元\n是否允许修改单价根据权限控制。缺省值等于科目定价',
  `ORDER_NUM` bigint(6) DEFAULT NULL,
  `SHOULD_MONEY` bigint(12) DEFAULT NULL,
  `DISTCOUNT_MONEY` bigint(12) DEFAULT NULL COMMENT '折扣优惠金额',
  `DISCOUNT_TYPE` bigint(6) DEFAULT NULL COMMENT '折扣原因类型',
  `FACT_MONEY` bigint(12) DEFAULT NULL,
  `TOTAL_SCORE` bigint(8) DEFAULT NULL COMMENT '积分总数',
  `PAY_TYPE` bigint(1) DEFAULT NULL COMMENT '付费方式(1扣本金帐本，2先扣本金帐本，3现金缴款)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(200) DEFAULT NULL,
  `EXT2` varchar(200) DEFAULT NULL,
  `EXT3` bigint(14) DEFAULT NULL,
  `EXT4` bigint(14) DEFAULT NULL,
  `EXT5` varchar(200) DEFAULT NULL,
  `IS_SEND_REPORT` bigint(6) DEFAULT NULL,
  `TARGET_ACCT_ID` bigint(14) DEFAULT NULL,
  `PRE_TAX_MONEY` bigint(12) DEFAULT NULL,
  `TAX_KIND` varchar(255) DEFAULT NULL,
  `TAX_MONEY` bigint(12) DEFAULT NULL,
  `CHARGE_MODE` varchar(2) DEFAULT NULL COMMENT '1:前台立即收费\n2:指定日期转账单，后台进程处理\n3:转账单',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`BUSI_PRICE_ORDER_ID`),
  KEY `IDX_ORD_BUPRI_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_BUPRI_2` (`OFF_USER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：结构同ORD_BUSI_PRICE，主要处理丹麦对于未来生效策划对应的费用：\nFor Future Dated “Change Offer”, if there is any penalty or one-time-fee, the fee will be billed to customer at the billing date after the effective date.\n\n分表规则：ORD_FUTURE_PRICE_F_RRR_YYYYMM\n例如：ORD_FUTURE_PRICE_F_101_201205';

/*Table structure for table `ord_grp_info` */

DROP TABLE IF EXISTS `ord_grp_info`;

CREATE TABLE `ord_grp_info` (
  `GROUP_ORDER_ID` bigint(16) NOT NULL,
  `CUST_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_INS_ID` bigint(14) DEFAULT NULL,
  `GROUP_INS_ID` bigint(16) DEFAULT NULL,
  `GROUP_CODE` varchar(16) DEFAULT NULL,
  `GROUP_TYPE` varchar(8) DEFAULT NULL,
  `GROUP_NAME` varchar(128) DEFAULT NULL,
  `ADMIN_BILL_ID` varchar(32) DEFAULT NULL,
  `GROUP_SIZE` int(8) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL COMMENT '0，已失效\n            1，正常',
  `STATE` bigint(2) DEFAULT NULL COMMENT '1 新建\n            2 修改\n            3 删除\n            4 不变',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(32) DEFAULT NULL COMMENT '扩展属性1',
  `EXT2` varchar(32) DEFAULT NULL COMMENT '扩展属性2',
  `EXT3` varchar(25) DEFAULT NULL COMMENT '扩展属性3',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TENANT_ID` bigint(16) DEFAULT NULL,
  PRIMARY KEY (`GROUP_ORDER_ID`),
  KEY `INDEX_ORD_GRP_INFO_1` (`GROUP_TYPE`,`STATUS`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_grp_info_h` */

DROP TABLE IF EXISTS `ord_grp_info_h`;

CREATE TABLE `ord_grp_info_h` (
  `GROUP_ORDER_H_ID` bigint(16) NOT NULL AUTO_INCREMENT,
  `GROUP_ORDER_ID` bigint(16) DEFAULT NULL,
  `CUST_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_INS_ID` bigint(14) DEFAULT NULL,
  `GROUP_INS_ID` bigint(16) DEFAULT NULL,
  `GROUP_CODE` varchar(16) DEFAULT NULL,
  `GROUP_TYPE` varchar(8) DEFAULT NULL,
  `GROUP_NAME` varchar(128) DEFAULT NULL,
  `ADMIN_BILL_ID` varchar(32) DEFAULT NULL,
  `GROUP_SIZE` int(8) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL COMMENT '0，已失效\n            1，正常',
  `STATE` bigint(2) DEFAULT NULL COMMENT '1 新建\n            2 修改\n            3 删除\n            4 不变',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(32) DEFAULT NULL COMMENT '扩展属性1',
  `EXT2` varchar(32) DEFAULT NULL COMMENT '扩展属性2',
  `EXT3` varchar(25) DEFAULT NULL COMMENT '扩展属性3',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TENANT_ID` bigint(16) DEFAULT NULL,
  PRIMARY KEY (`GROUP_ORDER_H_ID`),
  KEY `INDEX_ORD_GRP_INFO_H_1` (`GROUP_TYPE`,`STATUS`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

/*Table structure for table `ord_grp_memb` */

DROP TABLE IF EXISTS `ord_grp_memb`;

CREATE TABLE `ord_grp_memb` (
  `GRP_MEB_ORDER_ID` bigint(16) NOT NULL,
  `CUST_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `GROUP_INS_ID` bigint(16) DEFAULT NULL,
  `GROUP_MEM_INS_ID` bigint(16) DEFAULT NULL,
  `OFFER_INS_ID` bigint(14) DEFAULT NULL,
  `GROUP_CODE` varchar(16) NOT NULL,
  `BILL_ID` varchar(32) NOT NULL,
  `STATUS` char(1) NOT NULL COMMENT '0，已退出\n            1，正常\n            2，暂停',
  `STATE` bigint(2) DEFAULT NULL COMMENT '1 新建\n            2 修改\n            3 删除\n            4 不变',
  `ROLE_ID` bigint(12) NOT NULL COMMENT '18001移动角色，18002固话角色，18003网外号码',
  `SHORT_NUM` varchar(8) DEFAULT NULL,
  `ADMIN_TAG` char(1) NOT NULL COMMENT '0，否\n            1，是',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(25) DEFAULT NULL COMMENT '扩展属性1',
  `EXT2` varchar(25) DEFAULT NULL COMMENT '扩展属性2',
  `EXT3` varchar(25) DEFAULT NULL COMMENT '扩展属性3',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TENANT_ID` bigint(16) DEFAULT NULL,
  PRIMARY KEY (`GRP_MEB_ORDER_ID`),
  KEY `INDEX_ORD_GRP_MEMB_1` (`GROUP_CODE`,`BILL_ID`,`STATUS`,`ROLE_ID`,`SHORT_NUM`,`ADMIN_TAG`,`CUST_ID`,`USER_ID`,`USER_REGION_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_grp_memb_h` */

DROP TABLE IF EXISTS `ord_grp_memb_h`;

CREATE TABLE `ord_grp_memb_h` (
  `GRP_MEB_ORDER_H_ID` bigint(16) NOT NULL AUTO_INCREMENT,
  `GRP_MEB_ORDER_ID` bigint(16) DEFAULT NULL,
  `CUST_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `GROUP_INS_ID` bigint(16) DEFAULT NULL,
  `GROUP_MEM_INS_ID` bigint(16) DEFAULT NULL,
  `OFFER_INS_ID` bigint(14) DEFAULT NULL,
  `GROUP_CODE` varchar(16) DEFAULT NULL,
  `BILL_ID` varchar(32) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL COMMENT '0，已退出\n            1，正常\n            2，暂停',
  `STATE` bigint(2) DEFAULT NULL COMMENT '1 新建\n            2 修改\n            3 删除\n            4 不变',
  `ROLE_ID` bigint(12) DEFAULT NULL COMMENT '18001移动角色，18002固话角色，18003网外号码',
  `SHORT_NUM` varchar(8) DEFAULT NULL,
  `ADMIN_TAG` char(1) DEFAULT NULL COMMENT '0，否\n            1，是',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(25) DEFAULT NULL COMMENT '扩展属性1',
  `EXT2` varchar(25) DEFAULT NULL COMMENT '扩展属性2',
  `EXT3` varchar(25) DEFAULT NULL COMMENT '扩展属性3',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TENANT_ID` bigint(16) DEFAULT NULL,
  PRIMARY KEY (`GRP_MEB_ORDER_H_ID`),
  KEY `INDEX_ORD_GRP_MEMB_H_1` (`GROUP_CODE`,`BILL_ID`,`STATUS`,`ROLE_ID`,`SHORT_NUM`,`ADMIN_TAG`,`CUST_ID`,`USER_ID`,`USER_REGION_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

/*Table structure for table `ord_key_milestone` */

DROP TABLE IF EXISTS `ord_key_milestone`;

CREATE TABLE `ord_key_milestone` (
  `KMS_ID` bigint(12) NOT NULL,
  `SORT_ID` bigint(12) DEFAULT NULL,
  `BUSI_TYPE` varchar(8) DEFAULT NULL COMMENT '0-业务ms\n            1-系统ms\n            目前默认为0\n            ',
  `ORD_ID` bigint(12) DEFAULT NULL,
  `ORD_ITEM_ID` bigint(12) DEFAULT NULL,
  `MS_TYPE` varchar(32) DEFAULT NULL COMMENT '创建-1\n            合同-2\n            支付-3\n            物流-4\n            开通-5\n            完成-6\n            撤单-7\n            ',
  `MS_CODE` varchar(32) DEFAULT NULL COMMENT 'MS编号\n            默认0000\n            ',
  `STATUS` varchar(32) DEFAULT NULL COMMENT '-1-无状态（default）\n            0-    处理中\n            1-    处理失败\n            2-    处理成功\n            ',
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `VISIBLE` varchar(8) DEFAULT NULL COMMENT '1-    展示\n            0-    不展示\n            ',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`KMS_ID`),
  KEY `INDEX1_ORD_KMS` (`ORD_ID`),
  KEY `INDEX2_ORD_KMS` (`MS_TYPE`,`STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于前端显示';

/*Table structure for table `ord_key_milestone_bak` */

DROP TABLE IF EXISTS `ord_key_milestone_bak`;

CREATE TABLE `ord_key_milestone_bak` (
  `KMS_ID` bigint(12) NOT NULL,
  `SORT_ID` bigint(12) DEFAULT NULL,
  `BUSI_TYPE` varchar(8) DEFAULT NULL COMMENT '0-业务ms\n            1-系统ms\n            目前默认为0\n            ',
  `ORD_ID` bigint(12) DEFAULT NULL,
  `ORD_ITEM_ID` bigint(12) DEFAULT NULL,
  `MS_TYPE` varchar(32) DEFAULT NULL COMMENT '创建-1\n            合同-2\n            支付-3\n            物流-4\n            开通-5\n            完成-6\n            撤单-7\n            ',
  `MS_CODE` varchar(32) DEFAULT NULL COMMENT 'MS编号\n            默认0000\n            ',
  `STATUS` varchar(32) DEFAULT NULL COMMENT '-1-无状态（default）\n            0-    处理中\n            1-    处理失败\n            2-    处理成功\n            ',
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `VISIBLE` varchar(8) DEFAULT NULL COMMENT '1-    展示\n            0-    不展示\n            ',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_key_milestone_h` */

DROP TABLE IF EXISTS `ord_key_milestone_h`;

CREATE TABLE `ord_key_milestone_h` (
  `H_ID` bigint(14) DEFAULT NULL,
  `KMS_ID` bigint(12) NOT NULL,
  `SORT_ID` bigint(12) DEFAULT NULL,
  `BUSI_TYPE` varchar(8) DEFAULT NULL COMMENT '0-业务ms\n            1-系统ms\n            目前默认为0\n            ',
  `ORD_ID` bigint(12) DEFAULT NULL,
  `ORD_ITEM_ID` bigint(12) DEFAULT NULL,
  `MS_TYPE` varchar(32) DEFAULT NULL COMMENT '创建-1\n            合同-2\n            支付-3\n            物流-4\n            开通-5\n            完成-6\n            撤单-7\n            ',
  `MS_CODE` varchar(32) DEFAULT NULL COMMENT 'MS编号\n            默认0000\n            ',
  `STATUS` varchar(32) DEFAULT NULL COMMENT '-1-无状态（default）\n            0-    处理中\n            1-    处理失败\n            2-    处理成功\n            ',
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `VISIBLE` varchar(8) DEFAULT NULL COMMENT '0-    展示\n            1-    不展示\n            ',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_key_milestone_h_bak` */

DROP TABLE IF EXISTS `ord_key_milestone_h_bak`;

CREATE TABLE `ord_key_milestone_h_bak` (
  `KMS_ID` bigint(12) NOT NULL,
  `SORT_ID` bigint(12) DEFAULT NULL,
  `BUSI_TYPE` varchar(8) DEFAULT NULL COMMENT '0-业务ms\n            1-系统ms\n            目前默认为0\n            ',
  `ORD_ID` bigint(12) DEFAULT NULL,
  `ORD_ITEM_ID` bigint(12) DEFAULT NULL,
  `MS_TYPE` varchar(32) DEFAULT NULL COMMENT '创建-1\n            合同-2\n            支付-3\n            物流-4\n            开通-5\n            完成-6\n            撤单-7\n            ',
  `MS_CODE` varchar(32) DEFAULT NULL COMMENT 'MS编号\n            默认0000\n            ',
  `STATUS` varchar(32) DEFAULT NULL COMMENT '-1-无状态（default）\n            0-    处理中\n            1-    处理失败\n            2-    处理成功\n            ',
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `VISIBLE` varchar(8) DEFAULT NULL COMMENT '1-    展示\n            0-    不展示\n            ',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_milestone` */

DROP TABLE IF EXISTS `ord_milestone`;

CREATE TABLE `ord_milestone` (
  `MS_ID` bigint(12) NOT NULL,
  `BUSI_TYPE` varchar(8) DEFAULT NULL COMMENT '0-业务ms\n            1-系统ms\n            目前默认为0\n            ',
  `ORD_ID` bigint(12) DEFAULT NULL,
  `ORD_ITEM_ID` bigint(12) DEFAULT NULL,
  `MS_TYPE` varchar(32) DEFAULT NULL,
  `MS_CODE` varchar(32) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`MS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_milestone_bak` */

DROP TABLE IF EXISTS `ord_milestone_bak`;

CREATE TABLE `ord_milestone_bak` (
  `MS_ID` bigint(12) NOT NULL,
  `BUSI_TYPE` varchar(8) DEFAULT NULL COMMENT '0-业务ms\n            1-系统ms\n            目前默认为0\n            ',
  `ORD_ID` bigint(12) DEFAULT NULL,
  `ORD_ITEM_ID` bigint(12) DEFAULT NULL,
  `MS_TYPE` varchar(32) DEFAULT NULL,
  `MS_CODE` varchar(32) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_milestone_h` */

DROP TABLE IF EXISTS `ord_milestone_h`;

CREATE TABLE `ord_milestone_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `MS_ID` bigint(12) DEFAULT NULL,
  `BUSI_TYPE` varchar(8) DEFAULT NULL COMMENT '0-业务ms\n            1-系统ms\n            目前默认为0\n            ',
  `ORD_ID` bigint(12) DEFAULT NULL,
  `ORD_ITEM_ID` bigint(12) DEFAULT NULL,
  `MS_TYPE` varchar(32) DEFAULT NULL,
  `MS_CODE` varchar(32) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_milestone_h_bak` */

DROP TABLE IF EXISTS `ord_milestone_h_bak`;

CREATE TABLE `ord_milestone_h_bak` (
  `MS_ID` bigint(12) NOT NULL,
  `BUSI_TYPE` varchar(8) DEFAULT NULL COMMENT '0-业务ms\n            1-系统ms\n            目前默认为0\n            ',
  `ORD_ID` bigint(12) DEFAULT NULL,
  `ORD_ITEM_ID` bigint(12) DEFAULT NULL,
  `MS_TYPE` varchar(32) DEFAULT NULL,
  `MS_CODE` varchar(32) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_off_ord_user` */

DROP TABLE IF EXISTS `ord_off_ord_user`;

CREATE TABLE `ord_off_ord_user` (
  `OFF_USER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_USER_RELAT_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `USER_ID` bigint(14) DEFAULT NULL,
  `USER_ROLE_ID` bigint(12) DEFAULT NULL,
  `IS_MAIN_OFFER` bigint(1) DEFAULT NULL COMMENT '是否主订购(1是0否,主要用于记录该策划的直接订购者)',
  `IS_GRP_MAIN_USER` bigint(1) DEFAULT NULL COMMENT '是否群主用户订购(1：是，0：否，用以记录家庭用户群组的户主、优惠促销群的主操作用户等)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OFFER_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL DEFAULT '0' COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL DEFAULT '0' COMMENT '0系统计算\n1用户指定',
  PRIMARY KEY (`OFF_USER_ORDER_ID`),
  KEY `IDX_ORD_USEROFF_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_USEROFF_2` (`OFFER_ORDER_ID`),
  KEY `IDX_ORD_USEROFF_5` (`USER_ORDER_ID`),
  KEY `IDX_ORD_USEROFF_7` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：该订单描述策划订单与用户订单的关系，更重要的是记录用户与策划实例的实例编号，以便变更业务能够正确定位用户与策划实例的关系。在订单中，该订单与策划订单和用户订单的关系，均是一对一的关系。\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按用户编号随机分10张表(北京:ORD_OFF_ORD_USER_100开始,上海:ORD_OFF_ORD_USER_210开始)\n\n历史表：按用户编号分片和年月进行分表(如ORD_OFF_ORD_USER_H_100_201110，增加H_ID字段)\n\n竣工表：按用户编号分片和年月进行分表(如ORD_OFF_ORD_USER_F_100_201110)';

/*Table structure for table `ord_off_ord_user_f` */

DROP TABLE IF EXISTS `ord_off_ord_user_f`;

CREATE TABLE `ord_off_ord_user_f` (
  `OFF_USER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_USER_RELAT_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `USER_ID` bigint(14) DEFAULT NULL,
  `USER_ROLE_ID` bigint(12) DEFAULT NULL,
  `IS_MAIN_OFFER` bigint(1) DEFAULT NULL COMMENT '是否主订购(1是0否,主要用于记录该策划的直接订购者)',
  `IS_GRP_MAIN_USER` bigint(1) DEFAULT NULL COMMENT '是否群主用户订购(1：是，0：否，用以记录家庭用户群组的户主、优惠促销群的主操作用户等)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OFFER_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  PRIMARY KEY (`OFF_USER_ORDER_ID`),
  KEY `IDX_ORD_USEROFF_3` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_USEROFF_4` (`OFFER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_off_ord_user_h` */

DROP TABLE IF EXISTS `ord_off_ord_user_h`;

CREATE TABLE `ord_off_ord_user_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `OFF_USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_USER_RELAT_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `USER_ID` bigint(14) DEFAULT NULL,
  `USER_ROLE_ID` bigint(12) DEFAULT NULL,
  `IS_MAIN_OFFER` bigint(1) DEFAULT NULL COMMENT '是否主订购(1是0否,主要用于记录该策划的直接订购者)',
  `IS_GRP_MAIN_USER` bigint(1) DEFAULT NULL COMMENT '是否群主用户订购(1：是，0：否，用以记录家庭用户群组的户主、优惠促销群的主操作用户等)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OFFER_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9145 DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110)';

/*Table structure for table `ord_offer` */

DROP TABLE IF EXISTS `ord_offer`;

CREATE TABLE `ord_offer` (
  `OFFER_ORDER_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '业务操作类型。产品管理中业务操作产品定义的业务类型，包括新装、变更、增加成员、删除成员等。为报表统计效率而冗余。',
  `CUST_ID` bigint(14) NOT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型：1个人用户2家庭客户3政企客户4VPMN客户',
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_TYPE` varchar(30) DEFAULT NULL COMMENT '策划类型(产品定义的,code_type=SO_OFFER_TYPE)\nOFFER_PLAN_BBOSS	集团套餐\nOFFER_PLAN_BROADBAND	宽带套餐\nOFFER_PLAN_FAMILY	家庭套餐\nOFFER_PLAN_GROUP	群组套餐\nOFFER_PLAN_GROUP_QQW	家庭亲情网\nOFFER_PLAN_GROUP_QZT	亲子通\nOFFER_PLAN_IOT	物联网套餐\nOFFER_VAS_IOT	物联网增值套餐\nOFFER_VAS_IOT_PKG	物联网增值套餐包\nOFFER_VAS_PLOY	营销活动\nOFFER_PLAN_M2M	物联网套餐\nOFFER_VAS_BROADBAND	宽带增值业务\nOFFER_VAS_CBOSS	CBOSS\nOFFER_VAS_COMB	产品包\nOFFER_VAS_DSMP	DSMP\nOFFER_PLAN_GSM	GSM套餐\nOFFER_PLAN_TELEPHONE	固话套餐\nOFFER_PLAN_IMS	IMS套餐\nOFFER_PLAN_PSTN	铁通套餐\nOFFER_PLAN_TD_LTE	TDLTE套餐\nOFFER_VAS_BBOSS	集团增值策划\nOFFER_PLAN_POOL	家庭畅享计划\nOFFER_PLAN_JTW	家庭V网\nOFFER_VAS_YHGX	用户关系\nOFFER_VAS_OTHER_NET	异网产品\nOFFER_VAS_GROUP_YJSH	一机双号\nOFFER_VAS_MARKET	营销包\nOFFER_VAS_OTHER	增值业务\nOFFER_VAS_PREPAY	预缴\nOFFER_VAS_PROMOTION	促销\nOFFER_VAS_TERMINAL	捆绑档次',
  `BRAND_ID` bigint(12) DEFAULT NULL,
  `OLD_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '换策划前的原策划编号。用于换回原套餐时使用。',
  `ORDER_NAME` varchar(200) NOT NULL COMMENT '可自定义订购策划的名称',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `SALE_TYPE` bigint(2) DEFAULT NULL COMMENT '销售方式(code_type=SO_SALE_TYPE)\n0 直销\n1 产品代理\n2 关系代理\n3 关系产品代理\n4积分兑换\n5卡管理平台',
  `SALE_PARTY_ROLE_ID` bigint(12) DEFAULT NULL COMMENT '表示销售代表编号',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停\n4套卡预约',
  `CANCEL_REASON` varchar(500) DEFAULT NULL COMMENT '销户原因',
  `CANCEL_DATE` datetime DEFAULT NULL COMMENT '要求销户时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OBJ_EFFECTIVE_TYPE` varchar(20) DEFAULT NULL COMMENT '目标生效类型',
  `OBJ_EXPIRE_TYPE` varchar(20) DEFAULT NULL COMMENT '目标失效时间',
  `EXPIRE_PROCESS_TYPE` bigint(2) DEFAULT NULL COMMENT '到期处理方式(:0:短信提醒到期,1:到期停,2:到期转包月)',
  `CHANNEL_TYPE` bigint(12) DEFAULT NULL COMMENT '0	联网银行\n1	营业厅\n10	BBOSS系统\n11	业务平台WEB\n12	业务平台IVR\n13	业务平台SMS\n14	业务平台接口机\n15	业务平台批量\n16	业务平台功能复制开通\n17	业务平台文件开通\n18	业务平台WAP\n19	业务平台MMS\n2	10086客服\n20	业务平台JAVA\n23	短信营业厅\n25	营业批量受理\n26	自助终端\n27	银行前置机\n28	知识库\n29	4A\n3	代理商\n30	集团网厅\n31	ESOP\n32	坐席框架\n33	电话经理\n34	CMOP\n35	排队机\n36	联动优势个人代收\n37	联动优势小额支付\n38	联动优势集团缴费\n39	泛伟统一充值平台\n4	网上营业厅\n40	银行邮政代扣\n41	华为二卡合一平台\n42	大唐空中写卡\n43	鉴权中心\n44	aicas平台\n45	在线客服\n46	电子商务\n47	自动拨测\n5	合作营业厅\n6	内部管理\n7	后台自动处理\n8	小额支付\n9	外部接口\n99	CBOSS',
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `RELAT_TYPE` char(1) DEFAULT NULL COMMENT '关联策划实例类型(code_type=SO_OFFER_RELAT_TYPE)\n0 无关联\n1 关联了其他策划\n2 被其他策划关联\n3 既关联他策划，也被其他策划关联',
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `EXT_DONE_CODE` varchar(1000) DEFAULT NULL,
  `OLD_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '策划修改前的失效时间',
  `NUM_EXT1` bigint(14) DEFAULT NULL,
  `COMMITMENT_START_DATE` datetime DEFAULT NULL,
  `COMMITMENT_END_DATE` datetime DEFAULT NULL,
  `OS_STATE` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`OFFER_ORDER_ID`),
  KEY `IDX_ORD_OFF_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_OFF_2` (`BUSINESS_ID`),
  KEY `IDX_ORD_OFF_5` (`USER_ID`,`DONE_CODE`),
  KEY `IDX_OFF_CUSTID` (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：针对一个用户的每一个策划的每一个具体的操作订单。如批量新装业务，每个用户的新装都是一个策划操作订单；一个客户同时办理定购一个增值产品、退订一个增值产品，则是两个策划操作订单。\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按用户编号随机分10张表(北京:ORD_OFFER_100开始,上海:ORD_OFFER_210开始)\n\n历史表：按用户编号分片和年月进行分表(如ORD_OFFER_H_100_201110，增加H_ID字段)\n\n竣工表：按用户编号分片和年月进行分表(如ORD_OFFER_F_100_201110)';

/*Table structure for table `ord_offer_ext` */

DROP TABLE IF EXISTS `ord_offer_ext`;

CREATE TABLE `ord_offer_ext` (
  `OFFER_ORD_EXT_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) NOT NULL,
  `OFFER_ORDER_ID` bigint(14) NOT NULL,
  `OFFER_INDEX_ID` bigint(14) NOT NULL,
  `ATTR_CODE` varchar(255) DEFAULT NULL,
  `ATTR_NAME` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` varchar(500) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)   1 新建   2 修改   3 删除   4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '7 强制删除   9 失败   10 撤单   11 竣工',
  `DONE_CODE` bigint(2) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`OFFER_ORD_EXT_ID`),
  KEY `IDX_ORD_OFF_EXT_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_OFF_EXT_2` (`OFFER_ORDER_ID`),
  KEY `IDX_ORD_OFF_EXT_3` (`OFFER_INDEX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竣工表：按用户编号分片和年月进行分表(如ORD_OFFER_EXT_F_100_201110)';

/*Table structure for table `ord_offer_ext_f` */

DROP TABLE IF EXISTS `ord_offer_ext_f`;

CREATE TABLE `ord_offer_ext_f` (
  `OFFER_ORD_EXT_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) NOT NULL,
  `OFFER_ORDER_ID` bigint(14) NOT NULL,
  `OFFER_INDEX_ID` bigint(14) NOT NULL,
  `ATTR_CODE` varchar(255) DEFAULT NULL,
  `ATTR_NAME` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` varchar(500) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)   1 新建   2 修改   3 删除   4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '7 强制删除   9 失败   10 撤单   11 竣工',
  `DONE_CODE` bigint(2) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`OFFER_ORD_EXT_ID`),
  KEY `IDX_ORD_OFF_EXT_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_OFF_EXT_2` (`OFFER_ORDER_ID`),
  KEY `IDX_ORD_OFF_EXT_3` (`OFFER_INDEX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竣工表：按用户编号分片和年月进行分表(如ORD_OFFER_EXT_F_100_201110)';

/*Table structure for table `ord_offer_ext_h` */

DROP TABLE IF EXISTS `ord_offer_ext_h`;

CREATE TABLE `ord_offer_ext_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `OFFER_ORD_EXT_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) NOT NULL,
  `OFFER_ORDER_ID` bigint(14) NOT NULL,
  `OFFER_INDEX_ID` bigint(14) NOT NULL,
  `ATTR_CODE` varchar(255) DEFAULT NULL,
  `ATTR_NAME` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` varchar(500) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)   1 新建   2 修改   3 删除   4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '7 强制删除   9 失败   10 撤单   11 竣工',
  `DONE_CODE` bigint(2) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `IDX_ORD_OFF_EXT_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_OFF_EXT_2` (`OFFER_ORDER_ID`),
  KEY `IDX_ORD_OFF_EXT_3` (`OFFER_INDEX_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100709 DEFAULT CHARSET=utf8;

/*Table structure for table `ord_offer_f` */

DROP TABLE IF EXISTS `ord_offer_f`;

CREATE TABLE `ord_offer_f` (
  `OFFER_ORDER_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '业务操作类型。产品管理中业务操作产品定义的业务类型，包括新装、变更、增加成员、删除成员等。为报表统计效率而冗余。',
  `CUST_ID` bigint(14) NOT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型：1个人用户2家庭客户3政企客户4VPMN客户',
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_TYPE` varchar(30) DEFAULT NULL COMMENT '策划类型(产品定义的,code_type=SO_OFFER_TYPE)',
  `BRAND_ID` bigint(12) DEFAULT NULL,
  `OLD_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '换策划前的原策划编号。用于换回原套餐时使用。',
  `ORDER_NAME` varchar(200) NOT NULL COMMENT '可自定义订购策划的名称',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `SALE_TYPE` bigint(2) DEFAULT NULL COMMENT '销售方式(code_type=SO_SALE_TYPE)\n0 直销\n1 产品代理\n2 关系代理\n3 关系产品代理\n4积分兑换\n5卡管理平台',
  `SALE_PARTY_ROLE_ID` bigint(12) DEFAULT NULL COMMENT '表示销售代表编号',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停\n4套卡预约',
  `CANCEL_REASON` varchar(500) DEFAULT NULL COMMENT '销户原因',
  `CANCEL_DATE` datetime DEFAULT NULL COMMENT '要求销户时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OBJ_EFFECTIVE_TYPE` varchar(20) DEFAULT NULL COMMENT '目标生效类型',
  `OBJ_EXPIRE_TYPE` varchar(20) DEFAULT NULL COMMENT '目标失效时间',
  `EXPIRE_PROCESS_TYPE` bigint(2) DEFAULT NULL COMMENT '到期处理方式(:0:短信提醒到期,1:到期停,2:到期转包月)',
  `CHANNEL_TYPE` bigint(12) DEFAULT NULL,
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `RELAT_TYPE` char(1) DEFAULT NULL COMMENT '关联策划实例类型(code_type=SO_OFFER_RELAT_TYPE)\n0 无关联\n1 关联了其他策划\n2 被其他策划关联\n3 既关联他策划，也被其他策划关联',
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `EXT_DONE_CODE` varchar(1000) DEFAULT NULL,
  `OLD_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '策划修改前的失效时间',
  `NUM_EXT1` bigint(14) DEFAULT NULL,
  `OS_STATE` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`OFFER_ORDER_ID`),
  KEY `IDX_ORD_OFF_3` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_OFF_4` (`BUSINESS_ID`),
  KEY `IDX_ORD_OFF_7` (`USER_ID`,`DONE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_offer_h` */

DROP TABLE IF EXISTS `ord_offer_h`;

CREATE TABLE `ord_offer_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '业务操作类型。产品管理中业务操作产品定义的业务类型，包括新装、变更、增加成员、删除成员等。为报表统计效率而冗余。',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型：1个人用户2家庭客户3政企客户4VPMN客户',
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_TYPE` varchar(30) DEFAULT NULL COMMENT '策划类型(产品定义的,code_type=SO_OFFER_TYPE)',
  `BRAND_ID` bigint(12) DEFAULT NULL,
  `OLD_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '换策划前的原策划编号。用于换回原套餐时使用。',
  `ORDER_NAME` varchar(200) DEFAULT NULL COMMENT '可自定义订购策划的名称',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `SALE_TYPE` bigint(2) DEFAULT NULL COMMENT '销售方式(code_type=SO_SALE_TYPE)\n0 直销\n1 产品代理\n2 关系代理\n3 关系产品代理\n4积分兑换\n5卡管理平台',
  `SALE_PARTY_ROLE_ID` bigint(12) DEFAULT NULL COMMENT '表示销售代表编号',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停\n4套卡预约',
  `CANCEL_REASON` varchar(500) DEFAULT NULL COMMENT '销户原因',
  `CANCEL_DATE` datetime DEFAULT NULL COMMENT '要求销户时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OBJ_EFFECTIVE_TYPE` varchar(20) DEFAULT NULL COMMENT '目标生效类型',
  `OBJ_EXPIRE_TYPE` varchar(20) DEFAULT NULL COMMENT '目标失效时间',
  `EXPIRE_PROCESS_TYPE` bigint(2) DEFAULT NULL COMMENT '到期处理方式(:0:短信提醒到期,1:到期停,2:到期转包月)',
  `CHANNEL_TYPE` bigint(12) DEFAULT NULL,
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `RELAT_TYPE` char(1) DEFAULT NULL COMMENT '关联策划实例类型(code_type=SO_OFFER_RELAT_TYPE)\n0 无关联\n1 关联了其他策划\n2 被其他策划关联\n3 既关联他策划，也被其他策划关联',
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `EXT_DONE_CODE` varchar(1000) DEFAULT NULL,
  `OLD_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '策划修改前的失效时间',
  `NUM_EXT1` bigint(14) DEFAULT NULL,
  `OS_STATE` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10515 DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110)';

/*Table structure for table `ord_offer_relat` */

DROP TABLE IF EXISTS `ord_offer_relat`;

CREATE TABLE `ord_offer_relat` (
  `RELAT_ORDER_ID` bigint(12) NOT NULL,
  `RELAT_INST_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(14) DEFAULT NULL,
  `RELATED_OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `RELATED_OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `RELAT_ROLE_ID` bigint(12) DEFAULT NULL COMMENT '关联角色编号(具体参见产品单元表定义)',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `RELAT_TYPE` varchar(8) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `RELATED_OFFER_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`RELAT_ORDER_ID`),
  KEY `IDX_ORD_OFFREL_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_OFFREL_2` (`OFFER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用于记录策划和策划间的关联关系订单。\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按用户编号随机分10张表(北京:ORD_OFFER_RELAT_100开始,上海:ORD_OFFER_RELAT_210开始)\n\n历史表：按用户编号分片和年月进行分表(如ORD_OFFER_RELAT_H_100_201110，增加H_ID字段)\n\n竣工表：按用户编号分片和年月进行分表(如ORD_OFFER_RELAT_F_100_201110)';

/*Table structure for table `ord_offer_relat_f` */

DROP TABLE IF EXISTS `ord_offer_relat_f`;

CREATE TABLE `ord_offer_relat_f` (
  `RELAT_ORDER_ID` bigint(12) NOT NULL,
  `RELAT_INST_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(14) DEFAULT NULL,
  `RELATED_OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `RELATED_OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `RELAT_ROLE_ID` bigint(12) DEFAULT NULL COMMENT '关联角色编号(具体参见产品单元表定义)',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `RELAT_TYPE` varchar(8) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `RELATED_OFFER_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`RELAT_ORDER_ID`),
  KEY `IDX_ORD_OFFREL_3` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_OFFREL_4` (`OFFER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_offer_relat_h` */

DROP TABLE IF EXISTS `ord_offer_relat_h`;

CREATE TABLE `ord_offer_relat_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `RELAT_ORDER_ID` bigint(12) DEFAULT NULL,
  `RELAT_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_ORDER_ID` bigint(14) DEFAULT NULL,
  `RELATED_OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `RELATED_OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `RELAT_ROLE_ID` bigint(12) DEFAULT NULL COMMENT '关联角色编号(具体参见产品单元表定义)',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `RELAT_TYPE` varchar(8) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `RELATED_OFFER_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=927 DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110)';

/*Table structure for table `ord_ott_cust` */

DROP TABLE IF EXISTS `ord_ott_cust`;

CREATE TABLE `ord_ott_cust` (
  `OTT_CUST_RELA_ID` bigint(14) NOT NULL,
  `OTT_BUSI_TYPE` varchar(200) DEFAULT NULL COMMENT '1. O365 2.One Drive',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型：1个人用户2家庭客户3政企客户4VPMN客户',
  `VOUCHER` varchar(255) DEFAULT NULL COMMENT 'Voucher',
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号码',
  `STATE` char(1) DEFAULT NULL COMMENT '状态(1：正常，0：失效)',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `ACTIVE_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '激活生效日期',
  `ACTIVE_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '激活失效日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `NOTICE_DATE` datetime DEFAULT NULL,
  `SECOND_NOTICE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DEAL_STATE` bigint(2) DEFAULT NULL COMMENT '处理标识0未处理1.已发送赠送通知 2.已发送续送通知3.已订购',
  `REMARKS` varchar(255) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`OTT_CUST_RELA_ID`),
  KEY `INDX_ORD_OTT_CUST_1` (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OTT客户沉淀表，按租户分表如ORD_OTT_CUST_01';

/*Table structure for table `ord_ott_cust_h` */

DROP TABLE IF EXISTS `ord_ott_cust_h`;

CREATE TABLE `ord_ott_cust_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '��ʷ���',
  `OTT_CUST_RELA_ID` bigint(14) DEFAULT NULL,
  `OTT_BUSI_TYPE` varchar(200) DEFAULT NULL COMMENT '1. O365 2.One Drive',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '�ͻ����ͣ�1�����û�2��ͥ�ͻ�3����ͻ�4VPMN�ͻ�',
  `VOUCHER` varchar(255) DEFAULT NULL COMMENT 'Voucher',
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '�ƷѺ���',
  `STATE` char(1) DEFAULT NULL COMMENT '״̬(1��������0��ʧЧ)',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '��ǰҵ��������',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '��ǰҵ����������',
  `ACTIVE_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '������Ч����',
  `ACTIVE_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '����ʧЧ����',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '�޸Ķ������Ч����',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '�޸Ķ����ʧЧ����',
  `NOTICE_DATE` datetime DEFAULT NULL,
  `SECOND_NOTICE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DEAL_STATE` bigint(2) DEFAULT NULL COMMENT '�����ʶ0δ����1.�ѷ�������֪ͨ 2.�ѷ�������֪ͨ3.�Ѷ���',
  `REMARKS` varchar(255) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ֱ��ʽ�����⻧�����½��зֱ�(��:ORD_OTT_CUST_H_01_201501)';

/*Table structure for table `ord_ott_wimp` */

DROP TABLE IF EXISTS `ord_ott_wimp`;

CREATE TABLE `ord_ott_wimp` (
  `ORD_OTT_WIMP_ID` bigint(14) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型：1个人用户2家庭客户3政企客户4VPMN客户',
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号码',
  `USER_NAME_TYPE` varchar(100) NOT NULL,
  `USER_NAME` varchar(80) DEFAULT NULL,
  `MSISDN` varchar(30) DEFAULT NULL,
  `EMAIL` varchar(80) DEFAULT NULL,
  `PRODUCT_TYPE` varchar(20) DEFAULT NULL,
  `ACTIVE_STATE` char(1) DEFAULT NULL COMMENT '状态(1：激活，0：未激活)',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `ACTIVE_DATE` datetime DEFAULT NULL COMMENT '激活生效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`ORD_OTT_WIMP_ID`),
  KEY `INDX_ORD_OTT_WIMP_1` (`CUST_ID`),
  KEY `INDX_ORD_OTT_WIMP_2` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OTT客户沉淀表，按租户分';

/*Table structure for table `ord_pay_info` */

DROP TABLE IF EXISTS `ord_pay_info`;

CREATE TABLE `ord_pay_info` (
  `PAY_ORDER_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `TRANSACTION_ID` bigint(12) DEFAULT NULL,
  `TRANSACTION_DATE` datetime DEFAULT NULL,
  `PAYMENT_STATUS` bigint(2) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `PAY_CHL_ID` bigint(12) DEFAULT NULL COMMENT '支付渠道号',
  `PAY_CHL_TYPE` bigint(2) DEFAULT NULL COMMENT '支付渠道',
  `PAY_FEE` varchar(50) DEFAULT NULL COMMENT '支付金额',
  `PAY_PER_INFO` varchar(50) DEFAULT NULL COMMENT '支付个人信息',
  `EXT_1` varchar(50) DEFAULT NULL COMMENT 'EXT_1',
  `EXT_2` varchar(50) DEFAULT NULL COMMENT 'EXT_2',
  `EXT_3` varchar(50) DEFAULT NULL COMMENT 'EXT_3',
  PRIMARY KEY (`PAY_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_pay_info_bak` */

DROP TABLE IF EXISTS `ord_pay_info_bak`;

CREATE TABLE `ord_pay_info_bak` (
  `PAY_ORDER_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `TRANSACTION_ID` bigint(12) DEFAULT NULL,
  `TRANSACTION_DATE` datetime DEFAULT NULL,
  `PAYMENT_STATUS` bigint(2) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_pay_info_h_bak` */

DROP TABLE IF EXISTS `ord_pay_info_h_bak`;

CREATE TABLE `ord_pay_info_h_bak` (
  `PAY_ORDER_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `TRANSACTION_ID` bigint(12) DEFAULT NULL,
  `TRANSACTION_DATE` datetime DEFAULT NULL,
  `PAYMENT_STATUS` bigint(2) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_phonebook` */

DROP TABLE IF EXISTS `ord_phonebook`;

CREATE TABLE `ord_phonebook` (
  `PHONEBOOK_ORDER_ID` bigint(12) NOT NULL DEFAULT '0',
  `BATCH_ORDER_ID` varchar(40) DEFAULT NULL,
  `BILL_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DEAL_RESULT` varchar(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `EXT1` varchar(50) DEFAULT NULL,
  `EXT2` varchar(50) DEFAULT NULL,
  `EXT3` varchar(50) DEFAULT NULL,
  `EXT4` varchar(50) DEFAULT NULL,
  `EXT5` varchar(50) DEFAULT NULL,
  `EXT6` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PHONEBOOK_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_phonebook_h` */

DROP TABLE IF EXISTS `ord_phonebook_h`;

CREATE TABLE `ord_phonebook_h` (
  `PHONEBOOK_ORDER_ID` bigint(12) NOT NULL DEFAULT '0',
  `BATCH_ORDER_ID` varchar(40) DEFAULT NULL,
  `BILL_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DEAL_RESULT` varchar(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `EXT1` varchar(50) DEFAULT NULL,
  `EXT2` varchar(50) DEFAULT NULL,
  `EXT3` varchar(50) DEFAULT NULL,
  `EXT4` varchar(50) DEFAULT NULL,
  `EXT5` varchar(50) DEFAULT NULL,
  `EXT6` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PHONEBOOK_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_portin_poa` */

DROP TABLE IF EXISTS `ord_portin_poa`;

CREATE TABLE `ord_portin_poa` (
  `POA_ID` bigint(14) NOT NULL COMMENT 'POA',
  `ORD_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `ACCOUNT_ID` varchar(20) DEFAULT NULL,
  `ICC_ID` varchar(20) DEFAULT NULL,
  `NUMBER_TYPE` varchar(20) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `CUST_TYPE` varchar(20) DEFAULT NULL,
  `CUST_ID` varchar(20) DEFAULT NULL,
  `CURRENT_SP` varchar(50) DEFAULT NULL,
  `PORTING_DATE` datetime DEFAULT NULL COMMENT '资源编码',
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `CPR` varchar(30) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `POST_CODE` bigint(6) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(16) DEFAULT NULL,
  `POA_STATE` bigint(1) DEFAULT NULL,
  `NUMBER_SERIES` varchar(255) DEFAULT NULL,
  `CHECK_MODE` varchar(2) DEFAULT NULL COMMENT 'I:Icc Agreement C:ACCOUNT ID agrement D:Digital  POA W:written  POA',
  `IS_NEED` varchar(2) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  `EXT3` varchar(255) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `STATE` bigint(1) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `PARENT_CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `ACCOUNT_BILL_ID` varchar(30) DEFAULT NULL,
  `SUB_CUST_ID` varchar(14) DEFAULT NULL,
  `REJECT_CODE` varchar(255) DEFAULT NULL,
  `REJECT_DESC` varchar(500) DEFAULT NULL,
  `NP_STATUS` varchar(25) DEFAULT NULL,
  `RETURN_CONFIRM_DATE` varchar(20) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `encrypt_code` varchar(255) DEFAULT NULL,
  `CONTACT_EMAIL` varchar(100) DEFAULT NULL,
  `IS_AGREE` varchar(2) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`POA_ID`),
  KEY `IDX_PORTIN_INDX1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_PORTIN_INDX2` (`BILL_ID`),
  KEY `IDX_PORTIN_INDX3` (`encrypt_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='携号转网POA信息;\n目前只按租户分表';

/*Table structure for table `ord_portin_poa_h` */

DROP TABLE IF EXISTS `ord_portin_poa_h`;

CREATE TABLE `ord_portin_poa_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `POA_ID` bigint(14) NOT NULL COMMENT 'POA',
  `ORD_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `ACCOUNT_ID` varchar(20) DEFAULT NULL,
  `ICC_ID` varchar(20) DEFAULT NULL,
  `NUMBER_TYPE` varchar(20) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `CUST_TYPE` varchar(20) DEFAULT NULL,
  `CUST_ID` varchar(20) DEFAULT NULL,
  `CURRENT_SP` varchar(50) DEFAULT NULL,
  `PORTING_DATE` datetime DEFAULT NULL COMMENT '资源编码',
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `CPR` varchar(30) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `POST_CODE` bigint(6) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(16) DEFAULT NULL,
  `POA_STATE` bigint(1) DEFAULT NULL,
  `NUMBER_SERIES` varchar(255) DEFAULT NULL,
  `CHECK_MODE` varchar(2) DEFAULT NULL COMMENT 'I:Icc Agreement C:ACCOUNT ID agrement D:Digital  POA W:written  POA',
  `IS_NEED` varchar(2) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  `EXT3` varchar(255) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `PARENT_CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `ACCOUNT_BILL_ID` varchar(30) DEFAULT NULL,
  `SUB_CUST_ID` varchar(14) DEFAULT NULL,
  `REJECT_CODE` varchar(255) DEFAULT NULL,
  `REJECT_DESC` varchar(500) DEFAULT NULL,
  `NP_STATUS` varchar(25) DEFAULT NULL,
  `RETURN_CONFIRM_DATE` varchar(20) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `ENCRYPT_CODE` varchar(255) DEFAULT NULL,
  `CONTACT_EMAIL` varchar(100) DEFAULT NULL,
  `IS_AGREE` varchar(2) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_PORTIN_POA_H_571_201110)';

/*Table structure for table `ord_portout_info` */

DROP TABLE IF EXISTS `ord_portout_info`;

CREATE TABLE `ord_portout_info` (
  `LOG_ID` bigint(14) NOT NULL COMMENT '主键',
  `ORDER_ID` varchar(50) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `CUST_ID` varchar(20) DEFAULT NULL,
  `ICC_ID` varchar(20) DEFAULT NULL,
  `ACCOUNT_ID` varchar(20) DEFAULT NULL,
  `NUMBER_TYPE` varchar(20) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `PORTING_DATE` datetime DEFAULT NULL COMMENT '期望携出时间',
  `CUR_SERVICE_OPERATOR` varchar(20) DEFAULT NULL,
  `REC_SERVICE_OPERATOR` varchar(20) DEFAULT NULL,
  `REC_NETWORK_OPERATOR` varchar(20) DEFAULT NULL,
  `POINT_OF_CONNECTION` varchar(20) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `NUMBER_SERIES` varchar(255) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  `EXT3` varchar(255) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REJECT_CODE` varchar(255) DEFAULT NULL,
  `NP_STATUS` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`),
  KEY `IDX_PORTOUT_INDX1` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='携出信息表;\n目前只按租户分表';

/*Table structure for table `ord_portout_info_h` */

DROP TABLE IF EXISTS `ord_portout_info_h`;

CREATE TABLE `ord_portout_info_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `LOG_ID` bigint(14) NOT NULL COMMENT '主键',
  `ORDER_ID` varchar(50) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `CUST_ID` varchar(20) DEFAULT NULL,
  `ICC_ID` varchar(20) DEFAULT NULL,
  `ACCOUNT_ID` varchar(20) DEFAULT NULL,
  `NUMBER_TYPE` varchar(20) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `PORTING_DATE` datetime DEFAULT NULL COMMENT '期望携出时间',
  `CUR_SERVICE_OPERATOR` varchar(20) DEFAULT NULL,
  `REC_SERVICE_OPERATOR` varchar(20) DEFAULT NULL,
  `REC_NETWORK_OPERATOR` varchar(20) DEFAULT NULL,
  `POINT_OF_CONNECTION` varchar(20) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `NUMBER_SERIES` varchar(255) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  `EXT3` varchar(255) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REJECT_CODE` varchar(255) DEFAULT NULL,
  `NP_STATUS` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_PORTOUT_INFO_H_571_201110)';

/*Table structure for table `ord_price_attr` */

DROP TABLE IF EXISTS `ord_price_attr`;

CREATE TABLE `ord_price_attr` (
  `PRICE_ATTR_ORDER_ID` bigint(12) NOT NULL,
  `PRICE_ATTR_INST_ID` bigint(14) DEFAULT NULL,
  `PRICE_ATTR_ORDER_TYPE` bigint(2) NOT NULL COMMENT '1 产品订单关联的价格计划信息\n2套餐订单关联的价格计划信息',
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(12) NOT NULL,
  `RELAT_ORDER_ID` bigint(12) NOT NULL COMMENT '根据价格计划订单类型分别存放的是策划订单、服务包订单编号。',
  `PRICE_DETAIL_TYPE` varchar(100) DEFAULT NULL COMMENT 'BOSS_NORMAL      帐务资费包     \nBOSS_PROMOTION   帐务促销      \n              \nBILLING_NORMAL   计费资费包    \nBILLING_FREE     免费资源      \n              \nBOSS_RENT        月租资费包    \nBOSS_RENT        月租资费包    \n              \nAWARD_PREPAY     普通预存      \nAWARD_PREPAY     分摊预存      \nAWARD_SCORE      积分          \nAWARD_COUNT      条数          \nAWARD_RES        资源          \nAWARD_FEE        赠送话费(分摊)\nAWARD_CARD       休闲卡        \nAWARD_COUNT      彩信条数      \nAWARD_FEE        本地长途<分摊>\nAWARD_FEE        本地长途',
  `PRICE_ID` bigint(12) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `SORT_ID` bigint(6) DEFAULT NULL COMMENT '记录批量属性的序号。对单个属性填0',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  PRIMARY KEY (`PRICE_ATTR_ORDER_ID`),
  KEY `IDX_ORD_PRIATTR_1` (`OFFER_ORDER_ID`),
  KEY `IDX_ORD_PRIATTR_2` (`RELAT_ORDER_ID`),
  KEY `IDX_ORD_PRIATTR_3` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：是策划订单或者产品订单的资费属性的描述。如果策划或产品的资费不包含属性，则不记录订单，也不实例化；如果策划或产品的资费包含属性，则此订单记录策划或产品资费的属性值，主要记录内容是资费的进一步描述，如是否打折，打折的折扣、优惠的金额等。\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按用户编号随机分10张表(北京:ORD_PRICE_ATTR_100开始,上海:ORD_PRICE_ATTR_210开始)\n\n历史表：按用户编号分片和年月进行分表(如ORD_PRICE_ATTR_H_100_201110，增加H_ID字段)\n\n竣工表：按用户编号分片和年月进行分表(如ORD_PRICE_ATTR_F_100_201110)';

/*Table structure for table `ord_price_attr_f` */

DROP TABLE IF EXISTS `ord_price_attr_f`;

CREATE TABLE `ord_price_attr_f` (
  `PRICE_ATTR_ORDER_ID` bigint(12) NOT NULL,
  `PRICE_ATTR_INST_ID` bigint(14) DEFAULT NULL,
  `PRICE_ATTR_ORDER_TYPE` bigint(2) NOT NULL COMMENT '1 产品订单关联的价格计划信息\n2套餐订单关联的价格计划信息',
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(12) NOT NULL,
  `RELAT_ORDER_ID` bigint(12) NOT NULL COMMENT '根据价格计划订单类型分别存放的是策划订单、服务包订单编号。',
  `PRICE_DETAIL_TYPE` varchar(100) DEFAULT NULL COMMENT 'BOSS_NORMAL      帐务资费包     \nBOSS_PROMOTION   帐务促销      \n              \nBILLING_NORMAL   计费资费包    \nBILLING_FREE     免费资源      \n              \nBOSS_RENT        月租资费包    \nBOSS_RENT        月租资费包    \n              \nAWARD_PREPAY     普通预存      \nAWARD_PREPAY     分摊预存      \nAWARD_SCORE      积分          \nAWARD_COUNT      条数          \nAWARD_RES        资源          \nAWARD_FEE        赠送话费(分摊)\nAWARD_CARD       休闲卡        \nAWARD_COUNT      彩信条数      \nAWARD_FEE        本地长途<分摊>\nAWARD_FEE        本地长途',
  `PRICE_ID` bigint(12) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `SORT_ID` bigint(6) DEFAULT NULL COMMENT '记录批量属性的序号。对单个属性填0',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  PRIMARY KEY (`PRICE_ATTR_ORDER_ID`),
  KEY `IDX_ORD_PRIATTR_4` (`OFFER_ORDER_ID`),
  KEY `IDX_ORD_PRIATTR_5` (`RELAT_ORDER_ID`),
  KEY `IDX_ORD_PRIATTR_6` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_price_attr_h` */

DROP TABLE IF EXISTS `ord_price_attr_h`;

CREATE TABLE `ord_price_attr_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `PRICE_ATTR_ORDER_ID` bigint(12) DEFAULT NULL,
  `PRICE_ATTR_INST_ID` bigint(14) DEFAULT NULL,
  `PRICE_ATTR_ORDER_TYPE` bigint(2) DEFAULT NULL COMMENT '1 产品订单关联的价格计划信息\n2套餐订单关联的价格计划信息',
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `RELAT_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '根据价格计划订单类型分别存放的是策划订单、服务包订单编号。',
  `PRICE_DETAIL_TYPE` varchar(100) DEFAULT NULL COMMENT 'BOSS_NORMAL      帐务资费包     \nBOSS_PROMOTION   帐务促销      \n              \nBILLING_NORMAL   计费资费包    \nBILLING_FREE     免费资源      \n              \nBOSS_RENT        月租资费包    \nBOSS_RENT        月租资费包    \n              \nAWARD_PREPAY     普通预存      \nAWARD_PREPAY     分摊预存      \nAWARD_SCORE      积分          \nAWARD_COUNT      条数          \nAWARD_RES        资源          \nAWARD_FEE        赠送话费(分摊)\nAWARD_CARD       休闲卡        \nAWARD_COUNT      彩信条数      \nAWARD_FEE        本地长途<分摊>\nAWARD_FEE        本地长途',
  `PRICE_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `SORT_ID` bigint(6) DEFAULT NULL COMMENT '记录批量属性的序号。对单个属性填0',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19265 DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110，增加H_ID字段)';

/*Table structure for table `ord_process_status` */

DROP TABLE IF EXISTS `ord_process_status`;

CREATE TABLE `ord_process_status` (
  `ORD_PROCESS_STATUS_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `BUSINESS_ID` bigint(12) NOT NULL,
  `PROCESS_TYPE` varchar(100) NOT NULL COMMENT 'SO_PROCESS_NEW_CONNECTION��SO_PROCESS_CHANGE_LINE_SPEED��SO_PROCESS_CHANGE_OWNER_SHIP��SO_PROCESS_CHANGE_SERICES_ADDRESS',
  `PROCESS_CODE` varchar(100) NOT NULL COMMENT 'SUBMIT_ORDER��CHECK_COMPLETNESS��TECHNICIAN_CONFIRM��CPE_DELIVERY��ONLINE_DATE_CONFIRM��CPE_PLUG_IN��FINISHED��TRANSFER_OWNERSHIP',
  `PROCESS_STATUS` varchar(200) DEFAULT NULL,
  `PROCESS_DATE` datetime DEFAULT NULL,
  `SORT_ID` bigint(10) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  PRIMARY KEY (`ORD_PROCESS_STATUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='˵������¼������״̬���ݣ���Ҫ��Կͻ���';

/*Table structure for table `ord_prod` */

DROP TABLE IF EXISTS `ord_prod`;

CREATE TABLE `ord_prod` (
  `PROD_ORDER_ID` bigint(12) NOT NULL,
  `OFF_USER_ORDER_ID` bigint(14) DEFAULT NULL COMMENT 'OFFER关系ID',
  `PROD_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `PROD_ID` bigint(12) DEFAULT NULL,
  `PROD_PKG_FLAG` bigint(1) DEFAULT NULL COMMENT '产品包标识(code_type=SO_PROD_PKG_FLAG)\n0：包外产品\n1：包内产品\n2：包产品',
  `OLD_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '转为包内产品前所对应的老策划编号',
  `PROD_TYPE` varchar(30) DEFAULT NULL COMMENT '产品类型(code_type=SO_PRODUCT_TYPE)',
  `EXPIRE_PROCESS_TYPE` bigint(2) DEFAULT NULL COMMENT '到期处理方式(:0:短信提醒到期,1:到期停,2:到期转包月)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `PRESENT_OBJ_USER` bigint(14) DEFAULT NULL COMMENT '记录赠送目标用户的产品实例编号',
  `ORDER_STATE` bigint(2) NOT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建 \n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '1 在用\n2 变更中\n3 暂停',
  `OLD_INST_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '在订购产品包时，如果有在其他套餐下的包内产品存在，则将此产品实例的策划实例编号改为新的包产品策划实例编号，同时将原策划的实例编号记录在OLD_INST_OFFER_ID中；在退订包产品时，将OLD_INST_OFFER_ID替换回策划实例编号，以达到该产品实例由包内产品转化为原策划下的产品的目的。\n在换策划时，如果新的策划下含有被转化为包内产品的产品实例，则需要同时将产品实例的OLD_INST_OFFER_ID替换为新的策划实例的编号。',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '行纪录的来源系统。如客户订单是来源于BBoss系统，还是DSMP系统\n1RBOSS\n2BBOSS\n3DSMP',
  `SRC_SYSTEM_EXT_CODE` varchar(200) DEFAULT NULL COMMENT '来源系统扩展编码,如果是来自sp产品，则该字段保存sp_code',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `BOSS_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '计费帐务测原生效时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OBJ_EFFECTIVE_TYPE` varchar(20) DEFAULT NULL COMMENT '目标生效类型\n0系统计算\n1用户指定',
  `OBJ_EXPIRE_TYPE` varchar(20) DEFAULT NULL COMMENT '目标失效类型\n0系统计算\n1用户指定',
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `BUSI_TYPE` varchar(20) DEFAULT NULL COMMENT '业务平台类型',
  `EXT_1` bigint(14) DEFAULT NULL COMMENT '擴展字段1',
  `PROD_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PROD_ORDER_ID`),
  KEY `IDX_ORD_PROD_1` (`OFFER_ORDER_ID`),
  KEY `IDX_ORD_PROD_2` (`USER_ORDER_ID`),
  KEY `IDX_ORD_PROD_3` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_PROD_7` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：指用户订购的产品或变更的产品实例。产品定义了用户订购的服务及其资费。产品的定义参见产品管理。产品订单是指向用户与策划关系订单的。即具体指某个用户在某个策划下订购的产品。\n\n分表方式：按用户编号随机分10张表(北京:ORD_PROD_100开始,上海:ORD_PROD_210开始)\n\n历史表：按用户编号分片和年月进行分表(如ORD_PROD_H_100_201110，增加H_ID字段)\n\n竣工表：按用户编号分片和年月进行分表(如ORD_PROD_F_100_201110)';

/*Table structure for table `ord_prod_attr` */

DROP TABLE IF EXISTS `ord_prod_attr`;

CREATE TABLE `ord_prod_attr` (
  `PROD_ATTR_ORDER_ID` bigint(12) NOT NULL,
  `PROD_ATTR_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `PROD_ORDER_ID` bigint(12) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `PROD_ID` bigint(12) NOT NULL COMMENT 'service_id',
  `SORT_ID` bigint(6) DEFAULT NULL COMMENT '记录批量属性的序号。对单个属性填0',
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `ATTR_BATCH` varchar(20) DEFAULT NULL COMMENT '为空表示单值属性''ATTR_BATCH''表示批量属性',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\r             1 新建\r             2 修改\r             3 删除\r             4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\r             1 创建\r             7 强制删除\r             9 失败\r             10 撤单\r             11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\r             1 在用\r             2 变更中\r             3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\r             1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\r             1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `OLD_ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `OLD_ATTR_TEXT` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`PROD_ATTR_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_prod_attr_bak` */

DROP TABLE IF EXISTS `ord_prod_attr_bak`;

CREATE TABLE `ord_prod_attr_bak` (
  `PROD_ATTR_ORDER_ID` bigint(12) NOT NULL,
  `PROD_ATTR_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `PROD_ORDER_ID` bigint(12) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `PROD_ID` bigint(12) NOT NULL COMMENT 'service_id',
  `SORT_ID` bigint(6) DEFAULT NULL COMMENT '记录批量属性的序号。对单个属性填0',
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `ATTR_BATCH` varchar(20) DEFAULT NULL COMMENT '为空表示单值属性''ATTR_BATCH''表示批量属性',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\r             1 新建\r             2 修改\r             3 删除\r             4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\r             1 创建\r             7 强制删除\r             9 失败\r             10 撤单\r             11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\r             1 在用\r             2 变更中\r             3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\r             1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\r             1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `OLD_ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `OLD_ATTR_TEXT` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_prod_attr_h` */

DROP TABLE IF EXISTS `ord_prod_attr_h`;

CREATE TABLE `ord_prod_attr_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `PROD_ATTR_ORDER_ID` bigint(12) DEFAULT NULL,
  `PROD_ATTR_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `PROD_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `PROD_ID` bigint(12) DEFAULT NULL COMMENT 'service_id',
  `SORT_ID` bigint(6) DEFAULT NULL COMMENT '记录批量属性的序号。对单个属性填0',
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `ATTR_BATCH` varchar(20) DEFAULT NULL COMMENT '为空表示单值属性''ATTR_BATCH''表示批量属性',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\r             1 新建\r             2 修改\r             3 删除\r             4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\r             1 创建\r             7 强制删除\r             9 失败\r             10 撤单\r             11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\r             1 在用\r             2 变更中\r             3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\r             1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\r             1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `OLD_ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `OLD_ATTR_TEXT` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=48987 DEFAULT CHARSET=utf8;

/*Table structure for table `ord_prod_f` */

DROP TABLE IF EXISTS `ord_prod_f`;

CREATE TABLE `ord_prod_f` (
  `PROD_ORDER_ID` bigint(12) NOT NULL,
  `OFF_USER_ORDER_ID` bigint(14) DEFAULT NULL COMMENT '策划用户关系ID',
  `PROD_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `PROD_ID` bigint(12) DEFAULT NULL,
  `PROD_PKG_FLAG` bigint(1) DEFAULT NULL COMMENT '产品包标识(code_type=SO_PROD_PKG_FLAG)\n0：包外产品\n1：包内产品\n2：包产品',
  `OLD_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '转为包内产品前所对应的老策划编号',
  `PROD_TYPE` varchar(30) DEFAULT NULL COMMENT '产品类型(code_type=SO_PRODUCT_TYPE)',
  `EXPIRE_PROCESS_TYPE` bigint(2) DEFAULT NULL COMMENT '到期处理方式(:0:短信提醒到期,1:到期停,2:到期转包月)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `PRESENT_OBJ_USER` bigint(14) DEFAULT NULL COMMENT '记录赠送目标用户的产品实例编号',
  `ORDER_STATE` bigint(2) NOT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建 \n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '1 在用\n2 变更中\n3 暂停',
  `OLD_INST_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '在订购产品包时，如果有在其他套餐下的包内产品存在，则将此产品实例的策划实例编号改为新的包产品策划实例编号，同时将原策划的实例编号记录在OLD_INST_OFFER_ID中；在退订包产品时，将OLD_INST_OFFER_ID替换回策划实例编号，以达到该产品实例由包内产品转化为原策划下的产品的目的。\n在换策划时，如果新的策划下含有被转化为包内产品的产品实例，则需要同时将产品实例的OLD_INST_OFFER_ID替换为新的策划实例的编号。',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '行纪录的来源系统。如客户订单是来源于BBoss系统，还是DSMP系统\n1RBOSS\n2BBOSS\n3DSMP',
  `SRC_SYSTEM_EXT_CODE` varchar(200) DEFAULT NULL COMMENT '来源系统扩展编码,如果是来自sp产品，则该字段保存sp_code',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `BOSS_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '计费帐务测原生效时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OBJ_EFFECTIVE_TYPE` varchar(20) DEFAULT NULL COMMENT '目标生效类型',
  `OBJ_EXPIRE_TYPE` varchar(20) DEFAULT NULL COMMENT '目标失效类型',
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `BUSI_TYPE` varchar(20) DEFAULT NULL COMMENT '业务平台类型',
  `EXT_1` bigint(14) DEFAULT NULL COMMENT '擴展字段1',
  `PROD_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PROD_ORDER_ID`),
  KEY `IDX_ORD_PROD_4` (`OFFER_ORDER_ID`),
  KEY `IDX_ORD_PROD_5` (`USER_ORDER_ID`),
  KEY `IDX_ORD_PROD_6` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_PROD_8` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：指用户订购的产品或变更的产品实例。产品定义了用户订购的服务及其资费。产品的定义参见产品管理。产品订单是指向用户与策划关系订单的。即具体指某个用户在某个策划下订购的产品。\n\n分表方式：按地区进行分表(如ORD_DTL_INFO_571)\n\n历史表：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110，增加H_ID字段)\n\n竣工表：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_prod_gift_sync` */

DROP TABLE IF EXISTS `ord_prod_gift_sync`;

CREATE TABLE `ord_prod_gift_sync` (
  `CRM_ID` bigint(14) NOT NULL COMMENT 'CRM生成，唯一标识一笔业务',
  `PRODUCT_ID` bigint(15) NOT NULL COMMENT '产品实例ID',
  `OFFER_ID` bigint(15) NOT NULL,
  `VALID_DATE` datetime NOT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '失效时间',
  `PHONE_ID` bigint(15) NOT NULL,
  `ACCT_ID` bigint(15) NOT NULL,
  `SO_NBR` bigint(15) DEFAULT NULL COMMENT '同步事件工单号',
  `ORDER_DATE` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`CRM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_prod_h` */

DROP TABLE IF EXISTS `ord_prod_h`;

CREATE TABLE `ord_prod_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `OFF_USER_ORDER_ID` bigint(14) DEFAULT NULL COMMENT '策划用户关系ID',
  `PROD_ORDER_ID` bigint(12) DEFAULT NULL,
  `PROD_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `PROD_ID` bigint(12) DEFAULT NULL,
  `PROD_PKG_FLAG` bigint(1) DEFAULT NULL COMMENT '产品包标识(code_type=SO_PROD_PKG_FLAG)\n0：包外产品\n1：包内产品\n2：包产品',
  `OLD_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '转为包内产品前所对应的老策划编号',
  `PROD_TYPE` varchar(30) DEFAULT NULL COMMENT '产品类型(code_type=SO_PRODUCT_TYPE)',
  `EXPIRE_PROCESS_TYPE` bigint(2) DEFAULT NULL COMMENT '到期处理方式(:0:短信提醒到期,1:到期停,2:到期转包月)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `PRESENT_OBJ_USER` bigint(14) DEFAULT NULL COMMENT '记录赠送目标用户的产品实例编号',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建 \n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '1 在用\n2 变更中\n3 暂停',
  `OLD_INST_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '在订购产品包时，如果有在其他套餐下的包内产品存在，则将此产品实例的策划实例编号改为新的包产品策划实例编号，同时将原策划的实例编号记录在OLD_INST_OFFER_ID中；在退订包产品时，将OLD_INST_OFFER_ID替换回策划实例编号，以达到该产品实例由包内产品转化为原策划下的产品的目的。\n在换策划时，如果新的策划下含有被转化为包内产品的产品实例，则需要同时将产品实例的OLD_INST_OFFER_ID替换为新的策划实例的编号。',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '行纪录的来源系统。如客户订单是来源于BBoss系统，还是DSMP系统\n1RBOSS\n2BBOSS\n3DSMP',
  `SRC_SYSTEM_EXT_CODE` varchar(200) DEFAULT NULL COMMENT '来源系统扩展编码,如果是来自sp产品，则该字段保存sp_code',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `BOSS_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '计费帐务测原生效时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OBJ_EFFECTIVE_TYPE` varchar(20) DEFAULT NULL COMMENT '目标生效类型',
  `OBJ_EXPIRE_TYPE` varchar(20) DEFAULT NULL COMMENT '目标失效类型',
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `BUSI_TYPE` varchar(20) DEFAULT NULL COMMENT '业务平台类型',
  `EXT_1` bigint(14) DEFAULT NULL COMMENT '擴展字段1',
  `PROD_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44033 DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110)';

/*Table structure for table `ord_prod_ord_srv` */

DROP TABLE IF EXISTS `ord_prod_ord_srv`;

CREATE TABLE `ord_prod_ord_srv` (
  `PROD_SRV_ORDER_ID` bigint(12) NOT NULL,
  `PROD_SRV_RELAT_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `PROD_ORDER_ID` bigint(12) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `SERVICE_ID` bigint(12) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `SERVICE_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PROD_SRV_ORDER_ID`),
  KEY `IDX_ORD_SRPKG_1` (`OFFER_ORDER_ID`),
  KEY `IDX_ORD_SRPKG_2` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_SRPKG_3` (`PROD_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：指用户订购的服务。一般服务指程控或增值的功能。服务的具体定义参见产品管理。\n产品包含的服务订单是在具体的产品订单下面。\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按用户编号随机分10张表(北京:ORD_PROD_ORD_SRV_100开始,上海:ORD_PROD_ORD_SRV_210开始)\n\n历史表：按用户编号分片和年月进行分表(如ORD_PROD_ORD_SRV_H_100_201110，增加H_ID字段)\n\n竣工表：按用户编号分片和年月进行分表(如ORD_PROD_ORD_SRV_F_100_201110)';

/*Table structure for table `ord_prod_ord_srv_f` */

DROP TABLE IF EXISTS `ord_prod_ord_srv_f`;

CREATE TABLE `ord_prod_ord_srv_f` (
  `PROD_SRV_ORDER_ID` bigint(12) NOT NULL,
  `PROD_SRV_RELAT_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `PROD_ORDER_ID` bigint(12) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `SERVICE_ID` bigint(12) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `SERVICE_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PROD_SRV_ORDER_ID`),
  KEY `IDX_ORD_SRPKG_4` (`OFFER_ORDER_ID`),
  KEY `IDX_ORD_SRPKG_5` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_SRPKG_6` (`PROD_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_prod_ord_srv_h` */

DROP TABLE IF EXISTS `ord_prod_ord_srv_h`;

CREATE TABLE `ord_prod_ord_srv_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `PROD_SRV_ORDER_ID` bigint(12) DEFAULT NULL,
  `PROD_SRV_RELAT_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `PROD_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `SERVICE_ID` bigint(12) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `SERVICE_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43523 DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110)';

/*Table structure for table `ord_prod_service_sus_res` */

DROP TABLE IF EXISTS `ord_prod_service_sus_res`;

CREATE TABLE `ord_prod_service_sus_res` (
  `CRM_ID` bigint(14) NOT NULL COMMENT 'CRM生成，唯一标识一笔业务',
  `ACTION_TYPE` bigint(4) NOT NULL COMMENT '0:BarService,1:unBarService',
  `CREATE_TIME` datetime NOT NULL,
  `EXPIRE_TIME` datetime DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `FLAG` varchar(30) DEFAULT NULL COMMENT 'I(init)未处理  S(success)成功   F(failure)失败 O(ongoing)正在处理',
  `MESSAGE` varchar(255) DEFAULT NULL COMMENT '如标志位为F，则需要记录失败原因',
  `TRYCOUNT` bigint(14) DEFAULT NULL COMMENT '数据被执行一次+1\n            \n            ',
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `SERVICE_CODE` bigint(15) NOT NULL COMMENT '变更后余额',
  `SO_NBR` bigint(15) NOT NULL COMMENT '流水号',
  `USER_ID` bigint(15) NOT NULL,
  PRIMARY KEY (`CRM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_prod_special` */

DROP TABLE IF EXISTS `ord_prod_special`;

CREATE TABLE `ord_prod_special` (
  `PROD_ORDER_ID` bigint(14) NOT NULL,
  `PROD_INST_ID` bigint(14) DEFAULT NULL,
  `PROD_ID` bigint(14) NOT NULL,
  `PROD_NAME` varchar(255) DEFAULT NULL,
  `PROD_TYPE` varchar(30) DEFAULT NULL COMMENT '产品类型(code_type=SO_PRODUCT_TYPE)',
  `OFFER_ORD_ID` bigint(14) DEFAULT NULL,
  `OFFER_ORD_BUSI_ID` bigint(14) DEFAULT NULL,
  `OFFER_ORD_BUSI_NAME` varchar(200) DEFAULT NULL,
  `OFFER_TYPE` varchar(30) DEFAULT NULL COMMENT '策划类型(产品定义的,code_type=SO_OFFER_TYPE)',
  `BRAND_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL,
  `OFFER_NAME` varchar(200) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `CUST_ORD_ID` bigint(14) DEFAULT NULL,
  `ORDER_CODE` varchar(40) DEFAULT NULL,
  `CUST_ORD_BUSI_ID` bigint(14) DEFAULT NULL,
  `CUST_ORD_BUSI_NAME` varchar(200) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT_1` bigint(14) DEFAULT NULL COMMENT '扩展字段',
  `EXT_2` bigint(14) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(100) DEFAULT NULL COMMENT '扩展字段3',
  `EXT_4` varchar(100) DEFAULT NULL COMMENT '扩展字段4',
  `EXT_5` varchar(100) DEFAULT NULL COMMENT '扩展字段5',
  `EXT_6` varchar(255) DEFAULT NULL COMMENT '扩展字段6',
  PRIMARY KEY (`PROD_ORDER_ID`),
  KEY `IDX_ORD_PROD_SPECIAL_1` (`CUST_ID`),
  KEY `IDX_ORD_PROD_SPECIAL_2` (`USER_ID`),
  KEY `IDX_ORD_PROD_SPECIAL_3` (`BILL_ID`),
  KEY `IDX_ORD_PROD_SPECIAL_4` (`CUST_ORD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：指用户订购的产品或变更的产品实例。产品订单是指向用户与策划关系订单的。即具体指某个用户在某个策划下订购的产品。因为预销及预销重入网某些产品订单未失效需提供渠道做统计\n\n分表方式：按租户分表(如ORD_PROD_01)\n\n历史表：按租户和年月进行分表(如ORD_PROD_H_01_201501，增加H_ID字段)\n\n竣工表：按租户和年月进行分表(如ORD_PROD_F_01_201501)';

/*Table structure for table `ord_prod_special_f` */

DROP TABLE IF EXISTS `ord_prod_special_f`;

CREATE TABLE `ord_prod_special_f` (
  `PROD_ORDER_ID` bigint(14) NOT NULL,
  `PROD_INST_ID` bigint(14) DEFAULT NULL,
  `PROD_ID` bigint(14) NOT NULL,
  `PROD_NAME` varchar(255) DEFAULT NULL,
  `PROD_TYPE` varchar(30) DEFAULT NULL COMMENT '产品类型(code_type=SO_PRODUCT_TYPE)',
  `OFFER_ORD_ID` bigint(14) DEFAULT NULL,
  `OFFER_ORD_BUSI_ID` bigint(14) DEFAULT NULL,
  `OFFER_ORD_BUSI_NAME` varchar(200) DEFAULT NULL,
  `OFFER_TYPE` varchar(30) DEFAULT NULL COMMENT '策划类型(产品定义的,code_type=SO_OFFER_TYPE)',
  `BRAND_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL,
  `OFFER_NAME` varchar(200) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `CUST_ORD_ID` bigint(14) DEFAULT NULL,
  `ORDER_CODE` varchar(40) DEFAULT NULL,
  `CUST_ORD_BUSI_ID` bigint(14) DEFAULT NULL,
  `CUST_ORD_BUSI_NAME` varchar(200) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT_1` bigint(14) DEFAULT NULL COMMENT '扩展字段',
  `EXT_2` bigint(14) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(100) DEFAULT NULL COMMENT '扩展字段3',
  `EXT_4` varchar(100) DEFAULT NULL COMMENT '扩展字段4',
  `EXT_5` varchar(100) DEFAULT NULL COMMENT '扩展字段5',
  `EXT_6` varchar(255) DEFAULT NULL COMMENT '扩展字段6',
  PRIMARY KEY (`PROD_ORDER_ID`),
  KEY `IDX_ORD_PROD_SPECIAL_F_1` (`CUST_ID`),
  KEY `IDX_ORD_PROD_SPECIAL_F_2` (`USER_ID`),
  KEY `IDX_ORD_PROD_SPECIAL_F_3` (`BILL_ID`),
  KEY `IDX_ORD_PROD_SPECIAL_F_4` (`CUST_ORD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：租户和年月进行分表(如ORD_PROD_F_01_201501)';

/*Table structure for table `ord_prod_special_h` */

DROP TABLE IF EXISTS `ord_prod_special_h`;

CREATE TABLE `ord_prod_special_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `PROD_ORDER_ID` bigint(14) DEFAULT NULL,
  `PROD_INST_ID` bigint(14) DEFAULT NULL,
  `PROD_ID` bigint(14) DEFAULT NULL,
  `PROD_NAME` varchar(255) DEFAULT NULL,
  `PROD_TYPE` varchar(30) DEFAULT NULL COMMENT '产品类型(code_type=SO_PRODUCT_TYPE)',
  `OFFER_ORD_ID` bigint(14) DEFAULT NULL,
  `OFFER_ORD_BUSI_ID` bigint(14) DEFAULT NULL,
  `OFFER_ORD_BUSI_NAME` varchar(200) DEFAULT NULL,
  `OFFER_TYPE` varchar(30) DEFAULT NULL COMMENT '策划类型(产品定义的,code_type=SO_OFFER_TYPE)',
  `BRAND_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL,
  `OFFER_NAME` varchar(200) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `CUST_ORD_ID` bigint(14) DEFAULT NULL,
  `ORDER_CODE` varchar(40) DEFAULT NULL,
  `CUST_ORD_BUSI_ID` bigint(14) DEFAULT NULL,
  `CUST_ORD_BUSI_NAME` varchar(200) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT_1` bigint(14) DEFAULT NULL COMMENT '扩展字段',
  `EXT_2` bigint(14) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(100) DEFAULT NULL COMMENT '扩展字段3',
  `EXT_4` varchar(100) DEFAULT NULL COMMENT '扩展字段4',
  `EXT_5` varchar(100) DEFAULT NULL COMMENT '扩展字段5',
  `EXT_6` varchar(255) DEFAULT NULL COMMENT '扩展字段6',
  KEY `IDX_ORD_PROD_1` (`CUST_ID`),
  KEY `IDX_ORD_PROD_2` (`USER_ID`),
  KEY `IDX_ORD_PROD_3` (`BILL_ID`),
  KEY `IDX_ORD_PROD_4` (`CUST_ORD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按租户和年月进行分表(如ORD_PROD_H_01_201501，增加H_ID字段)';

/*Table structure for table `ord_prod_sts_sync` */

DROP TABLE IF EXISTS `ord_prod_sts_sync`;

CREATE TABLE `ord_prod_sts_sync` (
  `CRM_ID` bigint(14) NOT NULL COMMENT 'CRM生成，唯一标识一笔业务',
  `ACCT_ID` bigint(15) DEFAULT NULL,
  `PRODUCT_ID` bigint(15) NOT NULL COMMENT '产品实例ID',
  `OFFER_ID` bigint(15) NOT NULL,
  `DEDUCT_FLAG` bigint(2) NOT NULL COMMENT '0正常扣费成功，1重新扣费成功，2扣费失败3折算账期，4 延迟扣费',
  `STATUS_BEFORE` bigint(2) NOT NULL COMMENT '1 激活 2挂起 3 终止 4 暂停',
  `STATUS_AFTER` bigint(2) NOT NULL COMMENT '1 激活 2挂起 3 终止 4 暂停',
  `OLD_CYCLE_DATE` datetime DEFAULT NULL COMMENT '本次扣费开始时间',
  `NEW_CYCLE_DATE` datetime DEFAULT NULL COMMENT '下次扣费时间',
  `PREVIOUS_BALANCE` bigint(15) DEFAULT NULL COMMENT '扣费前余额',
  `CURRENT_BALANCE` bigint(15) DEFAULT NULL COMMENT '当前余额',
  `LAST_TRY_FLAG` bigint(2) DEFAULT NULL COMMENT '是否重试扣费1是，0不是',
  `PRORATE_DAYS` bigint(4) DEFAULT NULL COMMENT '折算天数',
  `CHARGE_AMOUNT` bigint(8) DEFAULT NULL COMMENT '扣费金额',
  `SPLIT_CHARGE_AMOUNT` bigint(8) DEFAULT NULL COMMENT '分账金额',
  `DEDUCT_TIME` datetime DEFAULT NULL COMMENT '扣费时间',
  `FAIL_REASON` varchar(255) DEFAULT NULL COMMENT '失败原因描述',
  `SO_NBR` bigint(15) DEFAULT NULL COMMENT '同步事件工单号',
  `CREATE_DATE` datetime NOT NULL COMMENT '创建时间',
  `CHANGE_MAIN_FLAG` bigint(2) DEFAULT NULL COMMENT '是否更换主产品0为改变，1改变',
  `PRICE_DESC` varchar(255) DEFAULT NULL COMMENT '定价描述',
  `CHANGE_PRICE_FLAG` bigint(2) DEFAULT NULL COMMENT '是否更定价0为改变，1改变',
  `NEW_PRODUCT_ID` bigint(9) DEFAULT NULL COMMENT '如果是更换主产品，新主产品实例id',
  `NEW_PRODUCT_SEQ_ID` bigint(9) DEFAULT NULL COMMENT '新主产品offerid',
  `NEW_PRODUCT_VALID_DATE` datetime DEFAULT NULL COMMENT '新产品生效时间',
  `NEW_PRODUCT_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '新产品失效时间',
  PRIMARY KEY (`CRM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_pushc_merge` */

DROP TABLE IF EXISTS `ord_pushc_merge`;

CREATE TABLE `ord_pushc_merge` (
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `BATCH_ORDER_ID` varchar(150) DEFAULT NULL,
  `CUST_ID` varchar(30) DEFAULT NULL,
  `BILL_ID` varchar(90) DEFAULT NULL,
  `GROUP_ID` bigint(14) DEFAULT NULL,
  `PUSH_CODE` varchar(400) DEFAULT NULL,
  `PUSCH_MSG` varchar(4000) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMAERKS` varchar(4000) DEFAULT NULL,
  `EXT1` varchar(400) DEFAULT NULL,
  `EXT2` varchar(400) DEFAULT NULL,
  `EXT3` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_pushc_merge_h` */

DROP TABLE IF EXISTS `ord_pushc_merge_h`;

CREATE TABLE `ord_pushc_merge_h` (
  `BATCH_ORDER_ID` varchar(150) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `CUST_ID` varchar(30) DEFAULT NULL,
  `BILL_ID` varchar(90) DEFAULT NULL,
  `GROUP_ID` bigint(14) DEFAULT NULL,
  `PUSH_CODE` varchar(400) DEFAULT NULL,
  `PUSCH_MSG` varchar(4000) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMAERKS` varchar(4000) DEFAULT NULL,
  `EXT1` varchar(400) DEFAULT NULL,
  `EXT2` varchar(400) DEFAULT NULL,
  `EXT3` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_refund_fee` */

DROP TABLE IF EXISTS `ord_refund_fee`;

CREATE TABLE `ord_refund_fee` (
  `ORD_REFUND_FEE_ID` bigint(14) NOT NULL,
  `REGRET_CUST_ORD_ID` bigint(14) DEFAULT NULL,
  `DEDUCT_TYPE` bigint(2) DEFAULT NULL COMMENT '支付类型：3.BILL；4.分期；5.津贴；6.NETS；7.RETAIL INVOICE；8:POS',
  `AMOUNT` varchar(50) DEFAULT NULL COMMENT '支付金额',
  `MEASURE_ID` bigint(14) DEFAULT NULL,
  `ORDER_DATE` datetime DEFAULT NULL COMMENT '老订单时间',
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL COMMENT '老订单号',
  `STATES` varchar(2) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGIOIN_ID` varchar(6) DEFAULT NULL,
  `EXT_1` varchar(2000) DEFAULT NULL,
  `EXT_2` varchar(2000) DEFAULT NULL,
  `REMARKS` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ORD_REFUND_FEE_ID`),
  KEY `ORD_REFUND_FEE_INDEX1` (`REGRET_CUST_ORD_ID`),
  KEY `ORD_REFUND_FEE_INDEX2` (`REGRET_CUST_ORD_ID`,`DEDUCT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='反悔退费费用沉淀记录表,目前租户分表';

/*Table structure for table `ord_refund_fee_f` */

DROP TABLE IF EXISTS `ord_refund_fee_f`;

CREATE TABLE `ord_refund_fee_f` (
  `ORD_REFUND_FEE_ID` bigint(14) NOT NULL,
  `REGRET_CUST_ORD_ID` bigint(14) DEFAULT NULL,
  `DEDUCT_TYPE` bigint(2) DEFAULT NULL COMMENT '支付类型：3.BILL；4.分期；5.津贴；6.NETS；7.RETAIL INVOICE；8:POS',
  `AMOUNT` varchar(50) DEFAULT NULL COMMENT '支付金额',
  `MEASURE_ID` bigint(14) DEFAULT NULL,
  `ORDER_DATE` datetime DEFAULT NULL COMMENT '老订单时间',
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL COMMENT '老订单号',
  `STATES` varchar(2) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGIOIN_ID` varchar(6) DEFAULT NULL,
  `EXT_1` varchar(2000) DEFAULT NULL,
  `EXT_2` varchar(2000) DEFAULT NULL,
  `REMARKS` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ORD_REFUND_FEE_ID`),
  KEY `ORD_REFUND_FEE_INDEX1` (`REGRET_CUST_ORD_ID`),
  KEY `ORD_REFUND_FEE_INDEX2` (`REGRET_CUST_ORD_ID`,`DEDUCT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='反悔退费费用沉淀记录表,目前租户分表';

/*Table structure for table `ord_special_deal` */

DROP TABLE IF EXISTS `ord_special_deal`;

CREATE TABLE `ord_special_deal` (
  `DEAL_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '业务操作类型。产品管理中业务操作产品定义的业务类型，包括新装、变更、增加成员、删除成员等。为报表统计效率而冗余。',
  `CONFIG_ID` bigint(6) DEFAULT NULL COMMENT '沉淀配置编号',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型：1个人用户2家庭客户3政企客户4VPMN客户',
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_TYPE` varchar(30) DEFAULT NULL COMMENT '策划类型(产品定义的,code_type=SO_OFFER_TYPE)',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号码',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DEAL_STATE` bigint(2) DEFAULT NULL COMMENT '处理标识',
  PRIMARY KEY (`DEAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：需要特殊处理的订单沉淀表，如用户订购 的产品需要沉淀到单独的一张表里去，用户的相关属性需要入索引表，用户的订购需要进到期处理表等。\n分表方式：按用户编号随意分10张表(如：ORD_SPECIAL_DEAL_100)\n历史表：按用户分片和年月进行分表(如：ORD_SPECIAL_DEAL_H_100_201110)\n错误表：按用户随机分10张表(如：ORD_SPECIAL_DEAL_100_ERR)';

/*Table structure for table `ord_special_deal_err` */

DROP TABLE IF EXISTS `ord_special_deal_err`;

CREATE TABLE `ord_special_deal_err` (
  `DEAL_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '业务操作类型。产品管理中业务操作产品定义的业务类型，包括新装、变更、增加成员、删除成员等。为报表统计效率而冗余。',
  `CONFIG_ID` bigint(6) DEFAULT NULL COMMENT '沉淀配置编号',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型：1个人用户2家庭客户3政企客户4VPMN客户',
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_TYPE` varchar(30) DEFAULT NULL COMMENT '策划类型(产品定义的,code_type=SO_OFFER_TYPE)',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号码',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DEAL_STATE` bigint(2) DEFAULT NULL COMMENT '处理标识',
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：需要特殊处理的订单沉淀表，如用户订购 的产品需要沉淀到单独的一张表里去，用户的相关属性需要入索引表，用户的订购需要进到期处理表等。\n分表方式：按用户编号随意分10张表(如：ORD_SPECIAL_DEAL_100)\n历史表：按用户分片和年月进行分表(如：ORD_SPECIAL_DEAL_H_100_201110)\n错误表：按用户随机分10张表(如：ORD_SPECIAL_DEAL_100_ERR)';

/*Table structure for table `ord_special_deal_h` */

DROP TABLE IF EXISTS `ord_special_deal_h`;

CREATE TABLE `ord_special_deal_h` (
  `DEAL_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '业务操作类型。产品管理中业务操作产品定义的业务类型，包括新装、变更、增加成员、删除成员等。为报表统计效率而冗余。',
  `CONFIG_ID` bigint(6) DEFAULT NULL COMMENT '沉淀配置编号',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型：1个人用户2家庭客户3政企客户4VPMN客户',
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_TYPE` varchar(30) DEFAULT NULL COMMENT '策划类型(产品定义的,code_type=SO_OFFER_TYPE)',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号码',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DEAL_STATE` bigint(2) DEFAULT NULL COMMENT '处理标识',
  `TF_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：需要特殊处理的订单沉淀表，如用户订购 的产品需要沉淀到单独的一张表里去，用户的相关属性需要入索引表，用户的订购需要进到期处理表等。\n分表方式：按用户编号随意分10张表(如：ORD_SPECIAL_DEAL_100)\n历史表：按用户分片和年月进行分表(如：ORD_SPECIAL_DEAL_H_100_201110)\n错误表：按用户随机分10张表(如：ORD_SPECIAL_DEAL_100_ERR)';

/*Table structure for table `ord_srv_attr` */

DROP TABLE IF EXISTS `ord_srv_attr`;

CREATE TABLE `ord_srv_attr` (
  `SRV_ATTR_ORDER_ID` bigint(12) NOT NULL,
  `SRV_ATTR_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `PROD_ORDER_ID` bigint(12) NOT NULL,
  `PROD_SRV_ORDER_ID` bigint(12) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `SERVICE_ID` bigint(12) NOT NULL COMMENT 'service_id',
  `SORT_ID` bigint(6) DEFAULT NULL COMMENT '记录批量属性的序号。对单个属性填0',
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `ATTR_BATCH` varchar(20) DEFAULT NULL COMMENT '为空表示单值属性;ATTR_BATCH表示批量属性',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `OLD_ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `OLD_ATTR_TEXT` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`SRV_ATTR_ORDER_ID`),
  KEY `IDX_ORD_SVATTR_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_SVATTR_2` (`OFFER_ORDER_ID`),
  KEY `IDX_ORD_SVATTR_5` (`ATTR_ID`),
  KEY `IDX_ORD_SVATTR_8` (`PROD_SRV_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：对订购服务的具体描述。如选择的号码、卡号、输入密码等。\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按用户编号随机分10张表(北京:ORD_SRV_ATTR_100开始,上海:ORD_SRV_ATTR_210开始)\n\n历史表：按用户编号分片和年月进行分表(如ORD_SRV_ATTR_H_100_201110，增加H_ID字段)\n\n竣工表：按用户编号分片和年月进行分表(如ORD_SRV_ATTR_F_100_201110)';

/*Table structure for table `ord_srv_attr_f` */

DROP TABLE IF EXISTS `ord_srv_attr_f`;

CREATE TABLE `ord_srv_attr_f` (
  `SRV_ATTR_ORDER_ID` bigint(12) NOT NULL,
  `SRV_ATTR_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `OFFER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `PROD_ORDER_ID` bigint(12) NOT NULL,
  `PROD_SRV_ORDER_ID` bigint(12) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `SERVICE_ID` bigint(12) NOT NULL COMMENT 'service_id',
  `SORT_ID` bigint(6) DEFAULT NULL COMMENT '记录批量属性的序号。对单个属性填0',
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `ATTR_BATCH` varchar(20) DEFAULT NULL COMMENT '为空表示单值属性;ATTR_BATCH表示批量属性',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `OLD_ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `OLD_ATTR_TEXT` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`SRV_ATTR_ORDER_ID`),
  KEY `IDX_ORD_SVATTR_3` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_SVATTR_4` (`OFFER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：对订购服务的具体描述。如选择的号码、卡号、输入密码等。\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按地区进行分表(如ORD_DTL_INFO_571)\n\n历史表：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_srv_attr_h` */

DROP TABLE IF EXISTS `ord_srv_attr_h`;

CREATE TABLE `ord_srv_attr_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `SRV_ATTR_ORDER_ID` bigint(12) DEFAULT NULL,
  `SRV_ATTR_INST_ID` bigint(14) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `PROD_ORDER_ID` bigint(12) DEFAULT NULL,
  `PROD_SRV_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `SERVICE_ID` bigint(12) DEFAULT NULL COMMENT 'service_id',
  `SORT_ID` bigint(6) DEFAULT NULL COMMENT '记录批量属性的序号。对单个属性填0',
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `ATTR_BATCH` varchar(20) DEFAULT NULL COMMENT '为空表示单值属性;ATTR_BATCH表示批量属性',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `OLD_ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `OLD_ATTR_TEXT` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44431 DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_survey` */

DROP TABLE IF EXISTS `ord_survey`;

CREATE TABLE `ord_survey` (
  `SURVEY_ID` bigint(12) NOT NULL COMMENT '外堪单ID',
  `ORDER_ID` bigint(12) DEFAULT NULL COMMENT '外堪单对应的订单ID，若有的话',
  `SURVEY_TYPE` varchar(16) DEFAULT NULL COMMENT 'OUTSIDE：外线勘察',
  `SERV_TYPE` varchar(16) DEFAULT NULL COMMENT 'fixed-line\n            broadband',
  `INVESTIGATOR_OP_ID` bigint(12) DEFAULT NULL,
  `INVESTIGATOR_ORG_ID` bigint(12) DEFAULT NULL,
  `RESULT_CODE` varchar(8) DEFAULT NULL,
  `RESULT_DESC` varchar(4000) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型：1个人用户2家庭客户3政企客户4VPMN客户',
  `CUST_NAME` varchar(64) NOT NULL,
  `CONTACT_NO` varchar(32) NOT NULL,
  `ADDRESS_ID` bigint(14) DEFAULT NULL,
  `INSTALLATION_ADDR` varchar(512) NOT NULL,
  `ORDER_STATE` bigint(2) NOT NULL COMMENT '10 订单创建完成\n            30 待支付\n            40 订单启动成功\n            41 订单启动失败，等待自动重试\n            43 订单启动失败，等待人工处理\n            50 订单暂停\n            60 订单撤单中\n            61 订单已撤单\n            70 订单已完成\n            71 已创建业务单\n            72 业务单已完工\n            80 订单已拆分\n            90 订单开通失败\n            99 订单执行中',
  `PONR` bigint(1) DEFAULT '0' COMMENT '0 默认，可撤单\n            1 不可撤单',
  `BOOKING_TIME` datetime DEFAULT NULL,
  `SOURCE_SYSTEM_ID` bigint(2) DEFAULT NULL COMMENT '行纪录的来源系统(code_type=SO_SOURCE_SYSTEM)。\n            如客户订单是来源于BBoss系统，还是DSMP系统\n            1RBOSS\n            2BBOSS\n            3DSMP',
  `PAY_TYPE` bigint(2) DEFAULT NULL COMMENT '缴费方式(code_type=SO_PAY_TYPE)\n            1现金缴费\n            2刷卡缴费',
  `FACT_MONEY` bigint(12) DEFAULT NULL COMMENT '实收金额',
  `PAY_TRANS_ID` varchar(128) DEFAULT NULL,
  `PAY_CODE` varchar(32) DEFAULT NULL,
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL COMMENT '具体类型由接口组去定义(code_type=SO_CHANNEL_TYPE)，大致定义如下： 0:联网银行 1:营业厅 2:1860客服 3:代理商 4:网上营业厅 5:合作营业厅 6:内部管理 7:后台自动处理 8:小额支付 9:外部接口 10:BBOSS系统 11:业务平台WEB 12:业务平台IVR 13:业务平台SMS 14:业务平台接口机 15:业务平台批量 16:业务平台功能复制开通 17:业务平台文件开通 18:业务平台WAP 19:业务平台MMS 20:业务平台JAVA 23:短信营业厅 25:营业批量受理 99:CBOSS ',
  `WRRANT_NO` varchar(80) DEFAULT NULL,
  `EXT_DONE_TYPE` varchar(32) DEFAULT NULL COMMENT '1商机\n            2预受理\n            3CBOSS业务受理\n            4亲情网关联订单\n            5批量任务\n            6空选空写',
  `EXT_DONE_CODE` varchar(512) DEFAULT NULL,
  `IS_BATCH_ORDER` bigint(1) DEFAULT NULL COMMENT '是否指业务(CODE_TYPE=SO_YES_NO)',
  `BATCH_ID` bigint(16) DEFAULT NULL,
  `PKG_ID` bigint(8) DEFAULT NULL,
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '用户归属的县市',
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `CLERK_NO` varchar(32) DEFAULT NULL,
  `INVOICE_TITLE` varchar(512) DEFAULT NULL COMMENT '发票抬头',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TENANT_ID` bigint(16) DEFAULT NULL,
  `EXT1` varchar(64) DEFAULT NULL,
  `EXT2` varchar(64) DEFAULT NULL,
  `EXT3` datetime DEFAULT NULL,
  PRIMARY KEY (`SURVEY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_survey_f` */

DROP TABLE IF EXISTS `ord_survey_f`;

CREATE TABLE `ord_survey_f` (
  `SURVEY_ID` bigint(12) NOT NULL,
  `ORDER_ID` bigint(12) DEFAULT NULL,
  `SURVEY_TYPE` varchar(16) DEFAULT NULL COMMENT 'OUTSIDE：外线勘察',
  `SERV_TYPE` varchar(16) DEFAULT NULL COMMENT 'fixed-line\n            broadband',
  `INVESTIGATOR_OP_ID` bigint(12) DEFAULT NULL,
  `INVESTIGATOR_ORG_ID` bigint(12) DEFAULT NULL,
  `RESULT_CODE` varchar(8) DEFAULT NULL,
  `RESULT_DESC` varchar(4000) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型：1个人用户2家庭客户3政企客户4VPMN客户',
  `CUST_NAME` varchar(64) NOT NULL,
  `CONTACT_NO` varchar(32) NOT NULL,
  `ADDRESS_ID` bigint(14) DEFAULT NULL,
  `INSTALLATION_ADDR` varchar(512) NOT NULL,
  `ORDER_STATE` bigint(2) NOT NULL COMMENT '10 订单创建完成\n            30 待支付\n            40 订单启动成功\n            41 订单启动失败，等待自动重试\n            43 订单启动失败，等待人工处理\n            50 订单暂停\n            60 订单撤单中\n            61 订单已撤单\n            70 订单已完成\n            71 已创建业务单\n            72 业务单已完工\n            80 订单已拆分\n            90 订单开通失败\n            99 订单执行中',
  `PONR` bigint(1) DEFAULT '0' COMMENT '0 默认，可撤单\n            1 不可撤单',
  `BOOKING_TIME` datetime DEFAULT NULL,
  `SOURCE_SYSTEM_ID` bigint(2) DEFAULT NULL COMMENT '行纪录的来源系统(code_type=SO_SOURCE_SYSTEM)。\n            如客户订单是来源于BBoss系统，还是DSMP系统\n            1RBOSS\n            2BBOSS\n            3DSMP',
  `PAY_TYPE` bigint(2) DEFAULT NULL COMMENT '缴费方式(code_type=SO_PAY_TYPE)\n            1现金缴费\n            2刷卡缴费',
  `FACT_MONEY` bigint(12) DEFAULT NULL COMMENT '实收金额',
  `PAY_TRANS_ID` varchar(128) DEFAULT NULL,
  `PAY_CODE` varchar(32) DEFAULT NULL,
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL COMMENT '具体类型由接口组去定义(code_type=SO_CHANNEL_TYPE)，大致定义如下： 0:联网银行 1:营业厅 2:1860客服 3:代理商 4:网上营业厅 5:合作营业厅 6:内部管理 7:后台自动处理 8:小额支付 9:外部接口 10:BBOSS系统 11:业务平台WEB 12:业务平台IVR 13:业务平台SMS 14:业务平台接口机 15:业务平台批量 16:业务平台功能复制开通 17:业务平台文件开通 18:业务平台WAP 19:业务平台MMS 20:业务平台JAVA 23:短信营业厅 25:营业批量受理 99:CBOSS ',
  `WRRANT_NO` varchar(80) DEFAULT NULL,
  `EXT_DONE_TYPE` varchar(32) DEFAULT NULL COMMENT '1商机\n            2预受理\n            3CBOSS业务受理\n            4亲情网关联订单\n            5批量任务\n            6空选空写',
  `EXT_DONE_CODE` varchar(512) DEFAULT NULL,
  `IS_BATCH_ORDER` bigint(1) DEFAULT NULL COMMENT '是否指业务(CODE_TYPE=SO_YES_NO)',
  `BATCH_ID` bigint(16) DEFAULT NULL,
  `PKG_ID` bigint(8) DEFAULT NULL,
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '用户归属的县市',
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `CLERK_NO` varchar(32) DEFAULT NULL,
  `INVOICE_TITLE` varchar(512) DEFAULT NULL COMMENT '发票抬头',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TENANT_ID` bigint(16) DEFAULT NULL,
  `FINISH_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(64) DEFAULT NULL,
  `EXT2` varchar(64) DEFAULT NULL,
  `EXT3` datetime DEFAULT NULL,
  PRIMARY KEY (`SURVEY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_survey_fee` */

DROP TABLE IF EXISTS `ord_survey_fee`;

CREATE TABLE `ord_survey_fee` (
  `ORD_FEE_ID` bigint(16) NOT NULL,
  `ORDER_ID` bigint(12) NOT NULL,
  `FEE_TYPE` bigint(8) DEFAULT NULL,
  `ITEM_TYPE` varchar(16) DEFAULT NULL,
  `ITEM_CODE` varchar(16) DEFAULT NULL,
  `ITEM_UNIT` varchar(8) DEFAULT NULL,
  `ITEM_QUANTITY` bigint(8) DEFAULT NULL,
  `ITEM_UNIT_PRICE` bigint(4) DEFAULT NULL,
  `ITEM_TOTAL_PRICE` bigint(8) DEFAULT NULL,
  `ATTR_CODE1` varchar(16) DEFAULT NULL,
  `ATTR_VALUE1` varchar(16) DEFAULT NULL,
  `ATTR_CODE2` varchar(16) DEFAULT NULL,
  `ATTR_VALUE2` varchar(16) DEFAULT NULL,
  `ATTR_CODE3` varchar(16) DEFAULT NULL,
  `ATTR_VALUE3` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`ORD_FEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_survey_fee_f` */

DROP TABLE IF EXISTS `ord_survey_fee_f`;

CREATE TABLE `ord_survey_fee_f` (
  `ORD_FEE_ID` bigint(16) NOT NULL,
  `ORDER_ID` bigint(12) NOT NULL,
  `FEE_TYPE` bigint(8) DEFAULT NULL,
  `ITEM_TYPE` varchar(16) DEFAULT NULL,
  `ITEM_CODE` varchar(16) DEFAULT NULL,
  `ITEM_UNIT` varchar(8) DEFAULT NULL,
  `ITEM_QUANTITY` bigint(8) DEFAULT NULL,
  `ITEM_UNIT_PRICE` bigint(4) DEFAULT NULL,
  `ITEM_TOTAL_PRICE` bigint(8) DEFAULT NULL,
  `ATTR_CODE1` varchar(16) DEFAULT NULL,
  `ATTR_VALUE1` varchar(16) DEFAULT NULL,
  `ATTR_CODE2` varchar(16) DEFAULT NULL,
  `ATTR_VALUE2` varchar(16) DEFAULT NULL,
  `ATTR_CODE3` varchar(16) DEFAULT NULL,
  `ATTR_VALUE3` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`ORD_FEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_survey_fee_h` */

DROP TABLE IF EXISTS `ord_survey_fee_h`;

CREATE TABLE `ord_survey_fee_h` (
  `H_ID` bigint(14) DEFAULT NULL,
  `ORD_FEE_ID` bigint(16) NOT NULL,
  `ORDER_ID` bigint(12) NOT NULL,
  `FEE_TYPE` bigint(8) DEFAULT NULL,
  `ITEM_TYPE` varchar(16) DEFAULT NULL,
  `ITEM_CODE` varchar(16) DEFAULT NULL,
  `ITEM_UNIT` varchar(8) DEFAULT NULL,
  `ITEM_QUANTITY` bigint(8) DEFAULT NULL,
  `ITEM_UNIT_PRICE` bigint(4) DEFAULT NULL,
  `ITEM_TOTAL_PRICE` bigint(8) DEFAULT NULL,
  `ATTR_CODE1` varchar(16) DEFAULT NULL,
  `ATTR_VALUE1` varchar(16) DEFAULT NULL,
  `ATTR_CODE2` varchar(16) DEFAULT NULL,
  `ATTR_VALUE2` varchar(16) DEFAULT NULL,
  `ATTR_CODE3` varchar(16) DEFAULT NULL,
  `ATTR_VALUE3` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_survey_h` */

DROP TABLE IF EXISTS `ord_survey_h`;

CREATE TABLE `ord_survey_h` (
  `H_ID` bigint(14) NOT NULL,
  `SURVEY_ID` bigint(12) NOT NULL,
  `ORDER_ID` bigint(12) DEFAULT NULL,
  `SURVEY_TYPE` varchar(16) DEFAULT NULL COMMENT 'OUTSIDE：外线勘察',
  `SERV_TYPE` varchar(16) DEFAULT NULL COMMENT 'fixed-line\n            broadband',
  `INVESTIGATOR_OP_ID` bigint(12) DEFAULT NULL,
  `INVESTIGATOR_ORG_ID` bigint(12) DEFAULT NULL,
  `RESULT_CODE` varchar(8) DEFAULT NULL,
  `RESULT_DESC` varchar(4000) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型：1个人用户2家庭客户3政企客户4VPMN客户',
  `CUST_NAME` varchar(64) NOT NULL,
  `CONTACT_NO` varchar(32) NOT NULL,
  `ADDRESS_ID` bigint(14) DEFAULT NULL,
  `INSTALLATION_ADDR` varchar(512) NOT NULL,
  `ORDER_STATE` bigint(2) NOT NULL COMMENT '10 订单创建完成\n            30 待支付\n            40 订单启动成功\n            41 订单启动失败，等待自动重试\n            43 订单启动失败，等待人工处理\n            50 订单暂停\n            60 订单撤单中\n            61 订单已撤单\n            70 订单已完成\n            71 已创建业务单\n            72 业务单已完工\n            80 订单已拆分\n            90 订单开通失败\n            99 订单执行中',
  `PONR` bigint(1) DEFAULT '0' COMMENT '0 默认，可撤单\n            1 不可撤单',
  `BOOKING_TIME` datetime DEFAULT NULL,
  `SOURCE_SYSTEM_ID` bigint(2) DEFAULT NULL COMMENT '行纪录的来源系统(code_type=SO_SOURCE_SYSTEM)。\n            如客户订单是来源于BBoss系统，还是DSMP系统\n            1RBOSS\n            2BBOSS\n            3DSMP',
  `PAY_TYPE` bigint(2) DEFAULT NULL COMMENT '缴费方式(code_type=SO_PAY_TYPE)\n            1现金缴费\n            2刷卡缴费',
  `FACT_MONEY` bigint(12) DEFAULT NULL COMMENT '实收金额',
  `PAY_TRANS_ID` varchar(128) DEFAULT NULL,
  `PAY_CODE` varchar(32) DEFAULT NULL,
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL COMMENT '具体类型由接口组去定义(code_type=SO_CHANNEL_TYPE)，大致定义如下： 0:联网银行 1:营业厅 2:1860客服 3:代理商 4:网上营业厅 5:合作营业厅 6:内部管理 7:后台自动处理 8:小额支付 9:外部接口 10:BBOSS系统 11:业务平台WEB 12:业务平台IVR 13:业务平台SMS 14:业务平台接口机 15:业务平台批量 16:业务平台功能复制开通 17:业务平台文件开通 18:业务平台WAP 19:业务平台MMS 20:业务平台JAVA 23:短信营业厅 25:营业批量受理 99:CBOSS ',
  `WRRANT_NO` varchar(80) DEFAULT NULL,
  `EXT_DONE_TYPE` varchar(32) DEFAULT NULL COMMENT '1商机\n            2预受理\n            3CBOSS业务受理\n            4亲情网关联订单\n            5批量任务\n            6空选空写',
  `EXT_DONE_CODE` varchar(512) DEFAULT NULL,
  `IS_BATCH_ORDER` bigint(1) DEFAULT NULL COMMENT '是否指业务(CODE_TYPE=SO_YES_NO)',
  `BATCH_ID` bigint(16) DEFAULT NULL,
  `PKG_ID` bigint(8) DEFAULT NULL,
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '用户归属的县市',
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `CLERK_NO` varchar(32) DEFAULT NULL,
  `INVOICE_TITLE` varchar(512) DEFAULT NULL COMMENT '发票抬头',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TENANT_ID` bigint(16) DEFAULT NULL,
  `FINISH_DATE` datetime DEFAULT NULL,
  `HIS_CREATE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(64) DEFAULT NULL,
  `EXT2` varchar(64) DEFAULT NULL,
  `EXT3` datetime DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_user` */

DROP TABLE IF EXISTS `ord_user`;

CREATE TABLE `ord_user` (
  `USER_ORDER_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `VIRTUAL_USER_ID` bigint(14) DEFAULT NULL,
  `PROD_CATALOG_ID` bigint(12) DEFAULT NULL COMMENT '产品分类编号，如ADSL、GSM、普通电话等产品分类的编号',
  `CUST_ID` bigint(14) NOT NULL COMMENT '客户编号',
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型(code_type=SO_CUST_TYPE)\n1个人用户2家庭客户3政企客户4VPMN客户',
  `BILL_ID` varchar(30) NOT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `SUB_BILL_ID` varchar(50) DEFAULT NULL COMMENT '用于记录除计费号之外的标识号码。',
  `FIRST_USE_DATE` datetime DEFAULT NULL,
  `ACTIVE_DATE` datetime DEFAULT NULL COMMENT '激活时间',
  `PRE_DESTORY_TIME` datetime DEFAULT NULL COMMENT '预销时间',
  `LAST_TRANS_DATE` datetime DEFAULT NULL COMMENT '最后一次过户时间',
  `CREDIT_LEVEL` bigint(2) DEFAULT NULL COMMENT '信用等级',
  `OWE_AMOUNT` bigint(12) DEFAULT NULL COMMENT '信用额度',
  `PASSWORD_TYPE` bigint(2) DEFAULT NULL COMMENT '密码类型(code_type=SO_PWD_TYPE)\n0：系统自动生成；\n1：用户指定；',
  `PASSWORD` varchar(64) DEFAULT NULL,
  `USER_TYPE` bigint(2) DEFAULT NULL COMMENT '用户类别(code_type=SO_USER_TYPE)\n1普通用户\n2公免用户\n3测试用户\n4套卡用户\n5专用卡用户\n6虚拟用户\n8集团用户\n9个人IP直通车\n10企业IP直通车\n11手机阅读用户',
  `NOTICE_FLAG` bigint(2) DEFAULT NULL COMMENT '表示针对这个产品在欠费的时候是否可以进行催缴(code_type=SO_NOTICE_FLAG)\n0：可催可停；\n1：不可催，可停；\n2：可催，不可停；\n3：不可催，不可停；\n4：红名单；\n5：公务机；\n6：测试号；',
  `AREA_ID` bigint(12) DEFAULT NULL COMMENT '表明本实体所对应的产品实例发生在哪个营业区。',
  `AREA_CODE` varchar(40) DEFAULT NULL,
  `COUNTRY_CODE` varchar(6) DEFAULT NULL,
  `ADDRESS_ID` varchar(200) DEFAULT NULL COMMENT '标准地址编号',
  `ADDRESS_DESC` varchar(1000) DEFAULT NULL COMMENT '详细地址',
  `EXCHANGE_ID` varchar(30) DEFAULT NULL COMMENT '局向编号',
  `IS_OUT_NET` bigint(2) DEFAULT NULL COMMENT '他网产品标志(code_type=SO_IS_OUT_NET)\n1 它网\n0 本网',
  `BAL_ORG_ID` bigint(12) DEFAULT NULL COMMENT '营业员可以选择入网时的结算组织。\n缺省为入网营业员所属的组织编号。\n但为了结算，可能系统会批量调整。',
  `RISK_FLAG` bigint(1) DEFAULT '0' COMMENT '1 风险控制用户 0 非风险控制用户',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建 2 修改 3 删除 4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `CONT_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '用户创建人编码',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `PREPAY_VALIDITY_DATE` datetime DEFAULT NULL COMMENT '预开户最晚激活时间',
  PRIMARY KEY (`USER_ORDER_ID`),
  KEY `IDX_ORD_USER_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_USER_2` (`BILL_ID`),
  KEY `IDX_ORD_USER_SUBBILLID` (`SUB_BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：指与用户对应的订单，新开户时定义所选号码将要生成的用户信息；变更业务时指办理业务涉及到的用户。\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按用户编号随机分10张表(北京:ORD_USER_100开始,上海:ORD_USER_210开始)\n\n历史表：按用户编号分片和年月进行分表(如ORD_USER_H_100_201110，增加H_ID字段)\n\n竣工表：按用户编号分片和年月进行分表(如ORD_USER_F_100_201110)';

/*Table structure for table `ord_user_agr_rel` */

DROP TABLE IF EXISTS `ord_user_agr_rel`;

CREATE TABLE `ord_user_agr_rel` (
  `USER_AGR_REL_ID` bigint(14) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) NOT NULL COMMENT '成员自己的用户编码',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '例如：vpmn企业策划、vpmn套餐策划、跨省v网策的划实例',
  `ROLE_ID` bigint(12) DEFAULT NULL,
  `AGR_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1=加入群\n            2=退出群',
  `BILL_ID` varchar(30) NOT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(25) DEFAULT NULL COMMENT '扩展属性1',
  `EXT2` varchar(25) DEFAULT NULL COMMENT '扩展属性2',
  `EXT3` varchar(25) DEFAULT NULL COMMENT '扩展属性3',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_AGR_REL_ID`),
  KEY `IDX_MEMBER_SHORT_INFO_1` (`OFFER_INST_ID`,`BILL_ID`),
  KEY `IDX_MEMBER_SHORT_INFO_2` (`OFFER_INST_ID`,`OFFER_ID`),
  KEY `IDX_MEMBER_SHORT_INFO_3` (`OFFER_INST_ID`),
  KEY `IDX_MEMBER_SHORT_INFO_4` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同用户沉淀表';

/*Table structure for table `ord_user_agr_rel_h` */

DROP TABLE IF EXISTS `ord_user_agr_rel_h`;

CREATE TABLE `ord_user_agr_rel_h` (
  `USER_AGR_REL_ID` bigint(14) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) NOT NULL COMMENT '成员自己的用户编码',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '例如：vpmn企业策划、vpmn套餐策划、跨省v网策的划实例',
  `ROLE_ID` bigint(12) DEFAULT NULL,
  `AGR_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1=加入群              2=退出群',
  `BILL_ID` varchar(30) NOT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(25) DEFAULT NULL COMMENT '扩展属性1',
  `EXT2` varchar(25) DEFAULT NULL COMMENT '扩展属性2',
  `EXT3` varchar(25) DEFAULT NULL COMMENT '扩展属性3',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_AGR_REL_ID`),
  KEY `IDX_MEMBER_SHORT_INFO_1` (`OFFER_INST_ID`,`BILL_ID`),
  KEY `IDX_MEMBER_SHORT_INFO_2` (`OFFER_INST_ID`,`OFFER_ID`),
  KEY `IDX_MEMBER_SHORT_INFO_3` (`OFFER_INST_ID`),
  KEY `IDX_MEMBER_SHORT_INFO_4` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按照租户和创建日期进行分表，例如ORD_USER_AGR_REL_H_21_201509';

/*Table structure for table `ord_user_ext` */

DROP TABLE IF EXISTS `ord_user_ext`;

CREATE TABLE `ord_user_ext` (
  `USER_ORDER_EXT_ID` bigint(14) NOT NULL COMMENT '用户扩展编号',
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '用户订单编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `ATTR_CODE` bigint(6) DEFAULT NULL COMMENT '用户扩展属性编码,目前主要有以下几种：\nIS_OUT_NET_USER-是否是网外用户\nIS_NP_USER-是否是携号转网用户\nIS_M2M_USER-是否是物联网用户',
  `ATTR_VALUE` varchar(500) DEFAULT NULL COMMENT '用户扩展属性值',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '目标生效时间',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '目标失效时间',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '原实例流水号',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '实例流水号',
  `INS_USER_EXT_ID` bigint(14) DEFAULT NULL COMMENT '用户扩展属性实例编号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`USER_ORDER_EXT_ID`),
  KEY `IDX_ORD_USEXT_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_USEXT_2` (`USER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户记录用户的相关扩展信息，如是否是物联网用户、是否是网外用户、是否是携号转网用户等；\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按用户编号随机分10张表(北京:ORD_USER_EXT_100开始,上海:ORD_USER_EXT_210开始)\n\n历史表：按用户编号分片和年月进行分表(如ORD_USER_EXT_H_100_201110，增加H_ID字段)\n\n竣工表：按用户编号分片和年月进行分表(如ORD_USER_EXT_F_100_201110)';

/*Table structure for table `ord_user_ext_f` */

DROP TABLE IF EXISTS `ord_user_ext_f`;

CREATE TABLE `ord_user_ext_f` (
  `USER_ORDER_EXT_ID` bigint(14) NOT NULL COMMENT '用户扩展编号',
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '用户订单编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `ATTR_CODE` bigint(6) DEFAULT NULL COMMENT '用户扩展属性编码,目前主要有以下几种：\nIS_OUT_NET_USER-是否是网外用户\nIS_NP_USER-是否是携号转网用户\nIS_M2M_USER-是否是物联网用户',
  `ATTR_VALUE` varchar(500) DEFAULT NULL COMMENT '用户扩展属性值',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '目标生效时间',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '目标失效时间',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '原实例流水号',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '实例流水号',
  `INS_USER_EXT_ID` bigint(14) DEFAULT NULL COMMENT '用户扩展属性实例编号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`USER_ORDER_EXT_ID`),
  KEY `IDX_ORD_USEXT_3` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_USEXT_4` (`USER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_user_ext_h` */

DROP TABLE IF EXISTS `ord_user_ext_h`;

CREATE TABLE `ord_user_ext_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `USER_ORDER_EXT_ID` bigint(14) DEFAULT NULL COMMENT '用户扩展编号',
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '用户订单编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `ATTR_CODE` bigint(6) DEFAULT NULL COMMENT '用户扩展属性编码,目前主要有以下几种：\nIS_OUT_NET_USER-是否是网外用户\nIS_NP_USER-是否是携号转网用户\nIS_M2M_USER-是否是物联网用户',
  `ATTR_VALUE` varchar(500) DEFAULT NULL COMMENT '用户扩展属性值',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '目标生效时间',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '目标失效时间',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '原实例流水号',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '实例流水号',
  `INS_USER_EXT_ID` bigint(14) DEFAULT NULL COMMENT '用户扩展属性实例编号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110)';

/*Table structure for table `ord_user_f` */

DROP TABLE IF EXISTS `ord_user_f`;

CREATE TABLE `ord_user_f` (
  `USER_ORDER_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `PROD_CATALOG_ID` bigint(12) DEFAULT NULL COMMENT '产品分类编号，如ADSL、GSM、普通电话等产品分类的编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型(code_type=SO_CUST_TYPE)\n1个人用户2家庭客户3政企客户4VPMN客户',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `SUB_BILL_ID` varchar(50) DEFAULT NULL COMMENT '用于记录除计费号之外的标识号码。',
  `FIRST_USE_DATE` datetime DEFAULT NULL,
  `ACTIVE_DATE` datetime DEFAULT NULL COMMENT '激活时间',
  `PRE_DESTORY_TIME` datetime DEFAULT NULL COMMENT '预销时间',
  `LAST_TRANS_DATE` datetime DEFAULT NULL COMMENT '最后一次过户时间',
  `CREDIT_LEVEL` bigint(2) DEFAULT NULL COMMENT '信用等级',
  `OWE_AMOUNT` bigint(12) DEFAULT NULL COMMENT '信用额度',
  `PASSWORD_TYPE` bigint(2) DEFAULT NULL COMMENT '密码类型(code_type=SO_PWD_TYPE)\n0：系统自动生成；\n1：用户指定；',
  `PASSWORD` varchar(64) DEFAULT NULL,
  `USER_TYPE` bigint(2) DEFAULT NULL COMMENT '用户类别(code_type=SO_USER_TYPE)\n1普通用户\n2公免用户\n3测试用户\n4套卡用户\n5专用卡用户\n6虚拟用户\n8集团用户\n9个人IP直通车\n10企业IP直通车\n11手机阅读用户',
  `NOTICE_FLAG` bigint(2) DEFAULT NULL COMMENT '表示针对这个产品在欠费的时候是否可以进行催缴(code_type=SO_NOTICE_FLAG)\n0：可催可停；\n1：不可催，可停；\n2：可催，不可停；\n3：不可催，不可停；\n4：红名单；\n5：公务机；\n6：测试号；',
  `AREA_ID` bigint(12) DEFAULT NULL COMMENT '表明本实体所对应的产品实例发生在哪个营业区。',
  `AREA_CODE` varchar(40) DEFAULT NULL,
  `COUNTRY_CODE` varchar(6) DEFAULT NULL,
  `ADDRESS_ID` varchar(200) DEFAULT NULL COMMENT '标准地址编号',
  `ADDRESS_DESC` varchar(1000) DEFAULT NULL COMMENT '详细地址',
  `EXCHANGE_ID` varchar(30) DEFAULT NULL COMMENT '局向编号',
  `IS_OUT_NET` bigint(2) DEFAULT NULL COMMENT '他网产品标志(code_type=SO_IS_OUT_NET)\n1 它网\n0 本网',
  `BAL_ORG_ID` bigint(12) DEFAULT NULL COMMENT '营业员可以选择入网时的结算组织。\n缺省为入网营业员所属的组织编号。\n但为了结算，可能系统会批量调整。',
  `RISK_FLAG` bigint(1) DEFAULT '0' COMMENT '1 风险控制用户 0 非风险控制用户',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建 2 修改 3 删除 4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `CONT_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '用户创建人编码',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `PREPAY_VALIDITY_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ORDER_ID`),
  KEY `IDX_ORD_USER_3` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_ORD_USER_4` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_user_h` */

DROP TABLE IF EXISTS `ord_user_h`;

CREATE TABLE `ord_user_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `VIRTUAL_USER_ID` bigint(14) DEFAULT NULL,
  `PROD_CATALOG_ID` bigint(12) DEFAULT NULL COMMENT '产品分类编号，如ADSL、GSM、普通电话等产品分类的编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型(code_type=SO_CUST_TYPE)\n1个人用户2家庭客户3政企客户4VPMN客户',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `SUB_BILL_ID` varchar(50) DEFAULT NULL COMMENT '用于记录除计费号之外的标识号码。',
  `FIRST_USE_DATE` datetime DEFAULT NULL,
  `ACTIVE_DATE` datetime DEFAULT NULL COMMENT '激活时间',
  `PRE_DESTORY_TIME` datetime DEFAULT NULL COMMENT '预销时间',
  `LAST_TRANS_DATE` datetime DEFAULT NULL COMMENT '最后一次过户时间',
  `CREDIT_LEVEL` bigint(2) DEFAULT NULL COMMENT '信用等级',
  `OWE_AMOUNT` bigint(12) DEFAULT NULL COMMENT '信用额度',
  `PASSWORD_TYPE` bigint(2) DEFAULT NULL COMMENT '密码类型(code_type=SO_PWD_TYPE)\n0：系统自动生成；\n1：用户指定；',
  `PASSWORD` varchar(64) DEFAULT NULL,
  `USER_TYPE` bigint(2) DEFAULT NULL COMMENT '用户类别(code_type=SO_USER_TYPE)\n1普通用户\n2公免用户\n3测试用户\n4套卡用户\n5专用卡用户\n6虚拟用户\n8集团用户\n9个人IP直通车\n10企业IP直通车\n11手机阅读用户',
  `NOTICE_FLAG` bigint(2) DEFAULT NULL COMMENT '表示针对这个产品在欠费的时候是否可以进行催缴(code_type=SO_NOTICE_FLAG)\n0：可催可停；\n1：不可催，可停；\n2：可催，不可停；\n3：不可催，不可停；\n4：红名单；\n5：公务机；\n6：测试号；',
  `AREA_ID` bigint(12) DEFAULT NULL COMMENT '表明本实体所对应的产品实例发生在哪个营业区。',
  `AREA_CODE` varchar(40) DEFAULT NULL,
  `COUNTRY_CODE` varchar(6) DEFAULT NULL,
  `ADDRESS_ID` varchar(200) DEFAULT NULL COMMENT '标准地址编号',
  `ADDRESS_DESC` varchar(1000) DEFAULT NULL COMMENT '详细地址',
  `EXCHANGE_ID` varchar(30) DEFAULT NULL COMMENT '局向编号',
  `IS_OUT_NET` bigint(2) DEFAULT NULL COMMENT '他网产品标志(code_type=SO_IS_OUT_NET)\n1 它网\n0 本网',
  `BAL_ORG_ID` bigint(12) DEFAULT NULL COMMENT '营业员可以选择入网时的结算组织。\n缺省为入网营业员所属的组织编号。\n但为了结算，可能系统会批量调整。',
  `RISK_FLAG` bigint(1) DEFAULT '0' COMMENT '1 风险控制用户 0 非风险控制用户',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建 2 修改 3 删除 4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `INS_STATE` bigint(2) DEFAULT NULL COMMENT '实例状态(code_type=SO_INSTANCE_STATE)\n1 在用\n2 变更中\n3 暂停',
  `CONT_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '用户创建人编码',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `PREPAY_VALIDITY_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7449 DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110)';

/*Table structure for table `ord_user_his_info` */

DROP TABLE IF EXISTS `ord_user_his_info`;

CREATE TABLE `ord_user_his_info` (
  `ID` bigint(12) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `ADDRESS_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `CIRCUIT_NUMBER` varchar(90) DEFAULT NULL,
  `SUB_BILL_ID` varchar(50) DEFAULT NULL,
  `IMEI` varchar(30) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `VOIP_ID` varchar(90) DEFAULT NULL,
  `VOIP_NO` varchar(30) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `OPER_TYPE` varchar(6) DEFAULT NULL,
  `EXT_1` varchar(90) DEFAULT NULL,
  `EXT_2` varchar(90) DEFAULT NULL,
  `EXT_3` varchar(90) DEFAULT NULL,
  `EXT_4` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_user_os_state` */

DROP TABLE IF EXISTS `ord_user_os_state`;

CREATE TABLE `ord_user_os_state` (
  `USER_ORDER_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `OS_STATUS` varchar(64) DEFAULT NULL COMMENT '用户停开机状态.按字符存储不同的停开机类型。每一位取值0表示开，1表示停；\n每一位的含义为：\n第一位         管理停开\n第二位         营业停开\n第三位         帐务停开               \n第四位         营业的连带停开         \n第五位         呼出限制               \n第六位         帐务的连带停开         \n第七位         管理的连带停开         \n第八位         呼出限制的连带停开     \n第九位         营业预销               \n第十位         帐务预销               \n第十一位       管理预销               \n第十二位       资金有效期停机 \n\n用户停开机时不修改程控功能表中的服务状态，对服务状态判断时要首先判断对应用户信息表中的停开机类型。\n\n个人IP直通车用户时，此字段的第一位值：\n0.激活状态；1.封锁状态',
  `OS_STATUS_PRE` varchar(64) DEFAULT NULL COMMENT '发送给计费的最近一次停机方式',
  `B_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次营业停机日期',
  `A_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次帐务停机日期',
  `M_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次管理停机日期',
  `R_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次连带停机日期',
  `O_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次呼出限制停日期',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建 2 修改 3 删除 4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `OS_REASON` bigint(3) DEFAULT NULL,
  PRIMARY KEY (`USER_ORDER_ID`),
  KEY `IDX_ORD_USERSTS_1` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：记录用户停开机状态变化的信息\n\n索引：CUSTOMER_ORDER_ID\n\n分表方式：按用户编号随机分10张表(北京:ORD_USER_OS_STATE_100开始,上海:ORD_DSMP_SWITCH_210开始)\n\n历史表：按用户编号分片和年月进行分表(如ORD_USER_OS_STATE_H_100_201110，增加H_ID字段)\n\n竣工表：按用户编号分片和年月进行分表(如ORD_USER_OS_STATE_F_100_201110)';

/*Table structure for table `ord_user_os_state_f` */

DROP TABLE IF EXISTS `ord_user_os_state_f`;

CREATE TABLE `ord_user_os_state_f` (
  `USER_ORDER_ID` bigint(12) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `OS_STATUS` varchar(64) DEFAULT NULL COMMENT '用户停开机状态.按字符存储不同的停开机类型。每一位取值0表示开，1表示停；\n每一位的含义为：\n第一位         管理停开\n第二位         营业停开\n第三位         帐务停开               \n第四位         营业的连带停开         \n第五位         呼出限制               \n第六位         帐务的连带停开         \n第七位         管理的连带停开         \n第八位         呼出限制的连带停开     \n第九位         营业预销               \n第十位         帐务预销               \n第十一位       管理预销               \n第十二位       资金有效期停机 \n\n用户停开机时不修改程控功能表中的服务状态，对服务状态判断时要首先判断对应用户信息表中的停开机类型。\n\n个人IP直通车用户时，此字段的第一位值：\n0.激活状态；1.封锁状态',
  `OS_STATUS_PRE` varchar(64) DEFAULT NULL COMMENT '发送给计费的最近一次停机方式',
  `B_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次营业停机日期',
  `A_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次帐务停机日期',
  `M_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次管理停机日期',
  `R_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次连带停机日期',
  `O_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次呼出限制停日期',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建 2 修改 3 删除 4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `OS_REASON` bigint(3) DEFAULT NULL,
  PRIMARY KEY (`USER_ORDER_ID`),
  KEY `IDX_ORD_USERSTS_2` (`CUSTOMER_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_F_571_201110)';

/*Table structure for table `ord_user_os_state_h` */

DROP TABLE IF EXISTS `ord_user_os_state_h`;

CREATE TABLE `ord_user_os_state_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `USER_ORDER_ID` bigint(12) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `OS_STATUS` varchar(64) DEFAULT NULL COMMENT '用户停开机状态.按字符存储不同的停开机类型。每一位取值0表示开，1表示停；\n每一位的含义为：\n第一位         管理停开\n第二位         营业停开\n第三位         帐务停开               \n第四位         营业的连带停开         \n第五位         呼出限制               \n第六位         帐务的连带停开         \n第七位         管理的连带停开         \n第八位         呼出限制的连带停开     \n第九位         营业预销               \n第十位         帐务预销               \n第十一位       管理预销               \n第十二位       资金有效期停机 \n\n用户停开机时不修改程控功能表中的服务状态，对服务状态判断时要首先判断对应用户信息表中的停开机类型。\n\n个人IP直通车用户时，此字段的第一位值：\n0.激活状态；1.封锁状态',
  `OS_STATUS_PRE` varchar(64) DEFAULT NULL COMMENT '发送给计费的最近一次停机方式',
  `B_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次营业停机日期',
  `A_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次帐务停机日期',
  `M_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次管理停机日期',
  `R_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次连带停机日期',
  `O_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次呼出限制停日期',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建 2 修改 3 删除 4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\n1 创建\n7 强制删除\n9 失败\n10 撤单\n11 竣工',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `LAST_INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更时记录当前实例表的done_code，以供测试使用',
  `INS_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '记录受理结束后实例表的done_code',
  `OS_REASON` bigint(3) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6335 DEFAULT CHARSET=utf8 COMMENT='分表方式：按地区和年月进行分表(如ORD_DTL_INFO_H_571_201110)';

/*Table structure for table `ord_vip_portal` */

DROP TABLE IF EXISTS `ord_vip_portal`;

CREATE TABLE `ord_vip_portal` (
  `ORD_VIP_PORTAL_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `ICCID` varchar(50) DEFAULT NULL,
  `IMEI` varchar(50) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL,
  `TRACE_NUMBER` varchar(50) DEFAULT NULL,
  `SHOP_ID` bigint(12) DEFAULT NULL,
  `EXT1` varchar(2000) DEFAULT NULL,
  `EXT2` varchar(500) DEFAULT NULL,
  `EXT3` varchar(500) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `VIP_ORDER_NUMBER` varchar(30) DEFAULT NULL,
  `ITEM_NUMBER` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`ORD_VIP_PORTAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ord_vip_portal_h` */

DROP TABLE IF EXISTS `ord_vip_portal_h`;

CREATE TABLE `ord_vip_portal_h` (
  `ORD_VIP_PORTAL_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `ICCID` varchar(50) DEFAULT NULL,
  `IMEI` varchar(50) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL,
  `TRACE_NUMBER` varchar(50) DEFAULT NULL,
  `SHOP_ID` bigint(12) DEFAULT NULL,
  `EXT1` varchar(2000) DEFAULT NULL,
  `EXT2` varchar(500) DEFAULT NULL,
  `EXT3` varchar(500) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `VIP_ORDER_NUMBER` varchar(30) DEFAULT NULL,
  `ITEM_NUMBER` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`ORD_VIP_PORTAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ordx_ded_rem` */

DROP TABLE IF EXISTS `ordx_ded_rem`;

CREATE TABLE `ordx_ded_rem` (
  `DEAL_ORDER_ID` bigint(14) NOT NULL,
  `DEAL_ORDER_TYPE` bigint(2) DEFAULT NULL COMMENT '1.计费文件中导入的立即发送短信，并且需要导出回给计费  \n2.立即计费及当月非首次72小时业务订购 立即发送短信 退订后需要退费\n3.72小时免费类  48小时时发送短信 退订后不需要发计费',
  `BILL_ID` varchar(30) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_CODE` varchar(4) DEFAULT NULL,
  `DOMAIN_ID` bigint(2) DEFAULT NULL COMMENT '1、 DSP/程控\n2、 BBOSS\n3、 CBOSS\n4、 DSMP',
  `MSG_TYPE` bigint(2) DEFAULT NULL,
  `FEE_VALUE` bigint(10) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `VALID_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(14) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `STATUS` bigint(2) DEFAULT NULL,
  `SP_CODE` varchar(32) DEFAULT NULL,
  `SP_NAME` varchar(100) DEFAULT NULL,
  `BIZ_CODE` varchar(32) DEFAULT NULL,
  `BIZ_NAME` varchar(100) DEFAULT NULL,
  `SERV_TYPE` varchar(32) DEFAULT NULL,
  `BILLING_TYPE` varchar(20) DEFAULT NULL COMMENT 'B：包月\nD：点播',
  `BIZ_SOURCE` varchar(20) DEFAULT NULL COMMENT '0：自有\n1：梦网',
  `BIZ_TYPE` varchar(20) DEFAULT NULL,
  `PROD_ID` bigint(8) DEFAULT NULL,
  `PROD_NAME` varchar(100) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_NAME` varchar(100) DEFAULT NULL,
  `MSG_NUM` varchar(20) DEFAULT NULL,
  `CONFIRM_TYPE` varchar(32) DEFAULT NULL,
  `CONFIRM_CODE` varchar(32) DEFAULT NULL,
  `REPLY_MSG` varchar(1024) DEFAULT NULL,
  `REPLY_DATE` datetime DEFAULT NULL,
  `MSG_CONTENT` varchar(500) DEFAULT NULL,
  `RAND_NUM` varchar(100) DEFAULT NULL,
  `SOURCE` varchar(100) DEFAULT NULL COMMENT '"BOSS",“CBOSS”,"DSMP"',
  `CHANNEL_SOURCE` varchar(100) DEFAULT NULL,
  `DEAL_STATUS` varchar(100) DEFAULT NULL,
  `MSG_STATUS` varchar(100) DEFAULT NULL,
  `BILLING_STATUS` varchar(100) DEFAULT NULL COMMENT '初始值  “待处理”',
  `ORDER_STATUS` varchar(100) DEFAULT NULL,
  `MSG_SEND_TIME` datetime DEFAULT NULL,
  `OVER_TIME` datetime DEFAULT NULL COMMENT '发送短信时间(当前时间)+1小时',
  `ORDER_TIME` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CALL_ORDER_TYPE` bigint(4) DEFAULT NULL,
  `CALL_CREATE_DATE` datetime DEFAULT NULL,
  `CALL_DEAL_DATE` datetime DEFAULT NULL,
  `CALL_EXPIRE_DATE` datetime DEFAULT NULL COMMENT 'MANUAL_CREATE_DATE+3天',
  `CALL_STATUS` bigint(2) DEFAULT NULL COMMENT '当前状态，具体枚举值见：code_type=ORDX_FEE_QRY_DEAL.DEAL_STATUS',
  `CALL_RESULT` varchar(4000) DEFAULT NULL,
  `LOCKED_TIME` datetime DEFAULT NULL COMMENT '琐定时间',
  `LOCKED_OP_ID` bigint(12) DEFAULT NULL COMMENT '琐定员工',
  `LOCKED_STATE` bigint(1) DEFAULT NULL COMMENT '琐定状态(0:没有琐定,1:琐定)',
  `SOURCE_TABLE` bigint(1) DEFAULT NULL COMMENT '数据来源：\n1：DR_ISMG_KFTX \n2：DR_MMS_KFTX \n3：DR_KJ_KFTX \n4：DR_WAP_KFTX',
  `HIS_FLAG` bigint(2) DEFAULT NULL COMMENT '0：不需要移历史\n1：需要移历史',
  `NOTE` text,
  `EXTEND1` text,
  `EXTEND2` text,
  `EXTEND3` text,
  `EXTEND4` text,
  `EXTEND5` text,
  `EXTEND6` text,
  PRIMARY KEY (`DEAL_ORDER_ID`),
  KEY `IDX_ORDX_DEDUCT_REMIND_1` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用于记录扣费提醒及用户疑问的处理记录\n分表方式：按区域进行分表(如：ORDX_DEDUCT_REMIND_100)\n历史表：按区域和年月进行分表(如：ORDX_DEDUCT_REMIND_H_100_201203)，在原表的基础上增加一个类型为DATE的TF_DATE字段\n错误表：按区域进行分表(如：ORDX_DEDUCT_REMIND_100_ERR) 在原表的基础上增加一个类型为DATE的ERR_DATE和类型为VARCHAR2(4000)的ERR_MSG';

/*Table structure for table `ordx_ded_rem_err` */

DROP TABLE IF EXISTS `ordx_ded_rem_err`;

CREATE TABLE `ordx_ded_rem_err` (
  `DEAL_ORDER_ID` bigint(14) NOT NULL,
  `DEAL_ORDER_TYPE` bigint(2) DEFAULT NULL COMMENT '1.计费文件中导入的立即发送短信，并且需要导出回给计费  \n2.立即计费及当月非首次72小时业务订购 立即发送短信 退订后需要退费\n3.72小时免费类  48小时时发送短信 退订后不需要发计费',
  `BILL_ID` varchar(30) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_CODE` varchar(4) DEFAULT NULL,
  `DOMAIN_ID` bigint(2) DEFAULT NULL COMMENT '1、 DSP/程控\n2、 BBOSS\n3、 CBOSS\n4、 DSMP',
  `MSG_TYPE` bigint(2) DEFAULT NULL,
  `FEE_VALUE` bigint(10) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `VALID_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(14) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `STATUS` bigint(2) DEFAULT NULL,
  `SP_CODE` varchar(32) DEFAULT NULL,
  `SP_NAME` varchar(100) DEFAULT NULL,
  `BIZ_CODE` varchar(32) DEFAULT NULL,
  `BIZ_NAME` varchar(100) DEFAULT NULL,
  `SERV_TYPE` varchar(32) DEFAULT NULL,
  `BILLING_TYPE` varchar(20) DEFAULT NULL COMMENT 'B：包月\nD：点播',
  `BIZ_SOURCE` varchar(20) DEFAULT NULL COMMENT '0：自有\n1：梦网',
  `BIZ_TYPE` varchar(20) DEFAULT NULL,
  `PROD_ID` bigint(8) DEFAULT NULL,
  `PROD_NAME` varchar(100) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_NAME` varchar(100) DEFAULT NULL,
  `MSG_NUM` varchar(20) DEFAULT NULL,
  `CONFIRM_TYPE` varchar(32) DEFAULT NULL,
  `CONFIRM_CODE` varchar(32) DEFAULT NULL,
  `REPLY_MSG` varchar(1024) DEFAULT NULL,
  `REPLY_DATE` datetime DEFAULT NULL,
  `MSG_CONTENT` varchar(500) DEFAULT NULL,
  `RAND_NUM` varchar(100) DEFAULT NULL,
  `SOURCE` varchar(100) DEFAULT NULL COMMENT '"BOSS",“CBOSS”,"DSMP"',
  `CHANNEL_SOURCE` varchar(100) DEFAULT NULL,
  `DEAL_STATUS` varchar(100) DEFAULT NULL,
  `MSG_STATUS` varchar(100) DEFAULT NULL,
  `BILLING_STATUS` varchar(100) DEFAULT NULL COMMENT '初始值  “待处理”',
  `ORDER_STATUS` varchar(100) DEFAULT NULL,
  `MSG_SEND_TIME` datetime DEFAULT NULL,
  `OVER_TIME` datetime DEFAULT NULL COMMENT '发送短信时间(当前时间)+1小时',
  `ORDER_TIME` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CALL_ORDER_TYPE` bigint(4) DEFAULT NULL,
  `CALL_CREATE_DATE` datetime DEFAULT NULL,
  `CALL_DEAL_DATE` datetime DEFAULT NULL,
  `CALL_EXPIRE_DATE` datetime DEFAULT NULL COMMENT 'MANUAL_CREATE_DATE+3天',
  `CALL_STATUS` bigint(2) DEFAULT NULL COMMENT '当前状态，具体枚举值见：code_type=ORDX_FEE_QRY_DEAL.DEAL_STATUS',
  `CALL_RESULT` varchar(4000) DEFAULT NULL,
  `LOCKED_TIME` datetime DEFAULT NULL COMMENT '琐定时间',
  `LOCKED_OP_ID` bigint(12) DEFAULT NULL COMMENT '琐定员工',
  `LOCKED_STATE` bigint(1) DEFAULT NULL COMMENT '琐定状态(0:没有琐定,1:琐定)',
  `SOURCE_TABLE` bigint(1) DEFAULT NULL COMMENT '数据来源：\n1：DR_ISMG_KFTX \n2：DR_MMS_KFTX \n3：DR_KJ_KFTX \n4：DR_WAP_KFTX',
  `HIS_FLAG` bigint(2) DEFAULT NULL COMMENT '0：不需要移历史\n1：需要移历史',
  `NOTE` varchar(4000) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` text,
  `EXTEND1` text,
  `EXTEND2` text,
  `EXTEND3` text,
  `EXTEND4` text,
  `EXTEND5` text,
  `EXTEND6` text,
  KEY `IDX_ORDX_DEDUCT_REMIND_2` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用于记录扣费提醒及用户疑问的处理记录\n分表方式：按区域进行分表(如：ORDX_DEDUCT_REMIND_100)\n历史表：按区域和年月进行分表(如：ORDX_DEDUCT_REMIND_H_100_201203)，在原表的基础上增加一个类型为DATE的TF_DATE字段\n错误表：按区域进行分表(如：ORDX_DEDUCT_REMIND_100_ERR) 在原表的基础上增加一个类型为DATE的ERR_DATE和类型为VARCHAR2(4000)的ERR_MSG';

/*Table structure for table `ordx_ded_rem_h` */

DROP TABLE IF EXISTS `ordx_ded_rem_h`;

CREATE TABLE `ordx_ded_rem_h` (
  `DEAL_ORDER_ID` bigint(14) NOT NULL,
  `DEAL_ORDER_TYPE` bigint(2) DEFAULT NULL COMMENT '1.计费文件中导入的立即发送短信，并且需要导出回给计费  \n2.立即计费及当月非首次72小时业务订购 立即发送短信 退订后需要退费\n3.72小时免费类  48小时时发送短信 退订后不需要发计费',
  `BILL_ID` varchar(30) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_CODE` varchar(4) DEFAULT NULL,
  `DOMAIN_ID` bigint(2) DEFAULT NULL COMMENT '1、 DSP/程控\n2、 BBOSS\n3、 CBOSS\n4、 DSMP',
  `MSG_TYPE` bigint(2) DEFAULT NULL,
  `FEE_VALUE` bigint(10) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `VALID_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(14) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `STATUS` bigint(2) DEFAULT NULL,
  `SP_CODE` varchar(32) DEFAULT NULL,
  `SP_NAME` varchar(100) DEFAULT NULL,
  `BIZ_CODE` varchar(32) DEFAULT NULL,
  `BIZ_NAME` varchar(100) DEFAULT NULL,
  `SERV_TYPE` varchar(32) DEFAULT NULL,
  `BILLING_TYPE` varchar(20) DEFAULT NULL COMMENT 'B：包月\nD：点播',
  `BIZ_SOURCE` varchar(20) DEFAULT NULL COMMENT '0：自有\n1：梦网',
  `BIZ_TYPE` varchar(20) DEFAULT NULL,
  `PROD_ID` bigint(8) DEFAULT NULL,
  `PROD_NAME` varchar(100) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_NAME` varchar(100) DEFAULT NULL,
  `MSG_NUM` varchar(20) DEFAULT NULL,
  `CONFIRM_TYPE` varchar(32) DEFAULT NULL,
  `CONFIRM_CODE` varchar(32) DEFAULT NULL,
  `REPLY_MSG` varchar(1024) DEFAULT NULL,
  `REPLY_DATE` datetime DEFAULT NULL,
  `MSG_CONTENT` varchar(500) DEFAULT NULL,
  `RAND_NUM` varchar(100) DEFAULT NULL,
  `SOURCE` varchar(100) DEFAULT NULL COMMENT '"BOSS",“CBOSS”,"DSMP"',
  `CHANNEL_SOURCE` varchar(100) DEFAULT NULL,
  `DEAL_STATUS` varchar(100) DEFAULT NULL,
  `MSG_STATUS` varchar(100) DEFAULT NULL,
  `BILLING_STATUS` varchar(100) DEFAULT NULL COMMENT '初始值  “待处理”',
  `ORDER_STATUS` varchar(100) DEFAULT NULL,
  `MSG_SEND_TIME` datetime DEFAULT NULL,
  `OVER_TIME` datetime DEFAULT NULL COMMENT '发送短信时间(当前时间)+1小时',
  `ORDER_TIME` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CALL_ORDER_TYPE` bigint(4) DEFAULT NULL,
  `CALL_CREATE_DATE` datetime DEFAULT NULL,
  `CALL_DEAL_DATE` datetime DEFAULT NULL,
  `CALL_EXPIRE_DATE` datetime DEFAULT NULL COMMENT 'MANUAL_CREATE_DATE+3天',
  `CALL_STATUS` bigint(2) DEFAULT NULL COMMENT '当前状态，具体枚举值见：code_type=ORDX_FEE_QRY_DEAL.DEAL_STATUS',
  `CALL_RESULT` varchar(4000) DEFAULT NULL,
  `LOCKED_TIME` datetime DEFAULT NULL COMMENT '琐定时间',
  `LOCKED_OP_ID` bigint(12) DEFAULT NULL COMMENT '琐定员工',
  `LOCKED_STATE` bigint(1) DEFAULT NULL COMMENT '琐定状态(0:没有琐定,1:琐定)',
  `SOURCE_TABLE` bigint(1) DEFAULT NULL COMMENT '数据来源：\n1：DR_ISMG_KFTX \n2：DR_MMS_KFTX \n3：DR_KJ_KFTX \n4：DR_WAP_KFTX',
  `HIS_FLAG` bigint(2) DEFAULT NULL COMMENT '0：不需要移历史\n1：需要移历史',
  `NOTE` varchar(4000) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL,
  `EXTEND1` text,
  `EXTEND2` text,
  `EXTEND3` text,
  `EXTEND4` text,
  `EXTEND5` text,
  `EXTEND6` text,
  KEY `IDX_ORDX_DEDUCT_REMIND_3` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用于记录扣费提醒及用户疑问的处理记录\n分表方式：按区域进行分表(如：ORDX_DED_REM_H_240)\n历史表：按区域和年月进行分表(如：ORDX_DED_REM_H_240_201203)，在原表的基础上增加一个类型为DATE的TF_DATE字段\n错误表：按区域进行分表(如：ORDX_DED_REM_ERR_240) 在原表的基础上增加一个类型为DATE的ERR_DATE和类型为VARCHAR2(4000)的ERR_MSG';

/*Table structure for table `ordx_del_user` */

DROP TABLE IF EXISTS `ordx_del_user`;

CREATE TABLE `ordx_del_user` (
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作流水号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '基本策划编号',
  `BRAND_ID` bigint(12) DEFAULT NULL COMMENT '品牌编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `DESTROY_TIME` datetime DEFAULT NULL COMMENT '销户时间',
  `DESTROY_TYPE` bigint(2) DEFAULT NULL COMMENT '销户类型\n1-营业销户\n2-帐务销户\n3-套卡到期销户\n4-套卡批量销户',
  `DATA_SOURCE` bigint(2) DEFAULT NULL COMMENT '数据来源 1-前台导入\n2-后台生成',
  `ACCT_ID` bigint(14) DEFAULT NULL COMMENT '默认付费账号',
  `DEAL_STATE` bigint(2) DEFAULT NULL COMMENT '处理状态\n0-初始化\n1-处理成功\n3-处理失败\n4-待重处理',
  `COUNTRY_CODE` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `IS_COUSTOM_VIP` bigint(1) DEFAULT NULL,
  KEY `IDX_ORDX_DEL_USER_1` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：待销户工单表\n分表方式：按用户编号随机分10张表表(如:ORDX_DEL_USER_100)\n历史处理表：按用户分片和年月进行分表(如:ORDX_DES_USER_H_100_201110)\n错误表：按用户随机分10张表(如:ORDX_DEL_USER_100_ERR，要加上ERR_DATE和ERR_MSG字段)';

/*Table structure for table `ordx_des_user` */

DROP TABLE IF EXISTS `ordx_des_user`;

CREATE TABLE `ordx_des_user` (
  `DES_USER_ORD_ID` bigint(14) NOT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作流水号',
  `BATCH_ID` bigint(12) DEFAULT NULL COMMENT '销户批次',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `DESTROY_TYPE` bigint(2) DEFAULT NULL COMMENT '销户类型 code_type=CRM_DESTROY_TYPE\n1-营业销户\n2-帐务销户\n3-套卡到期销户',
  `DATA_SOURCE` bigint(2) DEFAULT NULL COMMENT '数据来源 1-前台导入\n2-后台生成',
  `ACCT_ID` bigint(14) DEFAULT NULL COMMENT '默认付费账号',
  `DEAL_STATE` bigint(2) DEFAULT NULL COMMENT '处理状态 code_type=ORDX_DES_USER.DATA_SOURCE\n0-初始化\n1-处理成功\n2-重复号码，无须处理\n3-处理失败\n4-待重处理\n5-长流程处理中',
  `REL_ORDER_CODE` varchar(40) DEFAULT NULL,
  `COUNTRY_CODE` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`DES_USER_ORD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：待销户工单表\n分表方式：按用户编号随机分10张表(如:ORDX_DES_USER_100)\n历史处理表：按用户分片和年月进行分表(如:ORDX_DES_USER_H_100_201110)\n错误表：按用户编号随机分10张表(如:ORDX_DES_USER_100_ERR，要加上ERR_DATE和ERR_MSG字段)';

/*Table structure for table `ordx_des_user_batch` */

DROP TABLE IF EXISTS `ordx_des_user_batch`;

CREATE TABLE `ordx_des_user_batch` (
  `BATCH_ID` bigint(12) NOT NULL COMMENT '销户批次',
  `START_TIME` datetime DEFAULT NULL COMMENT '提取数据开始时间',
  `END_TIME` datetime DEFAULT NULL COMMENT '提取数据结束时间',
  `TOTAL_NUM` bigint(12) DEFAULT NULL COMMENT '本次提取的符合销户条件的用户总数',
  `SUCC_NUM` bigint(12) DEFAULT NULL COMMENT '处理成功',
  `ERROR_NUM` bigint(12) DEFAULT NULL COMMENT '处理失败数',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `COUNTRY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员ID',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：待销户处理批次表\n分表方式：按地市分表';

/*Table structure for table `ordx_des_user_err` */

DROP TABLE IF EXISTS `ordx_des_user_err`;

CREATE TABLE `ordx_des_user_err` (
  `DES_USER_ORD_ID` bigint(14) NOT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作流水号',
  `BATCH_ID` bigint(12) DEFAULT NULL COMMENT '销户批次',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `DESTROY_TYPE` bigint(2) DEFAULT NULL COMMENT '销户类型 code_type=CRM_DESTROY_TYPE\n1-营业销户\n2-帐务销户\n3-套卡到期销户',
  `DATA_SOURCE` bigint(2) DEFAULT NULL COMMENT '数据来源 1-前台导入\n2-后台生成',
  `ACCT_ID` bigint(14) DEFAULT NULL COMMENT '默认付费账号',
  `DEAL_STATE` bigint(2) DEFAULT NULL COMMENT '处理状态 code_type=ORDX_DES_USER.DATA_SOURCE\n0-初始化\n1-处理成功\n2-重复号码，无须处理\n3-处理失败\n4-待重处理\n5-长流程处理中',
  `REL_ORDER_CODE` varchar(40) DEFAULT NULL,
  `COUNTRY_CODE` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  KEY `IDX_ORDX_DES_USER_ERR_1` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：待销户工单表\n分表方式：按用户编号随机分10张表(如:ORDX_DES_USER_100)\n历史处理表：按用户分片和年月进行分表(如:ORDX_DES_USER_H_100_201110)\n错误表：按用户编号随机分10张表(如:ORDX_DES_USER_100_ERR，要加上ERR_DATE和ERR_MSG字段)';

/*Table structure for table `ordx_des_user_h` */

DROP TABLE IF EXISTS `ordx_des_user_h`;

CREATE TABLE `ordx_des_user_h` (
  `DES_USER_ORD_ID` bigint(14) NOT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作流水号',
  `BATCH_ID` bigint(12) DEFAULT NULL COMMENT '销户批次',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `DESTROY_TYPE` bigint(2) DEFAULT NULL COMMENT '销户类型 code_type=CRM_DESTROY_TYPE\n1-营业销户\n2-帐务销户\n3-套卡到期销户',
  `DATA_SOURCE` bigint(2) DEFAULT NULL COMMENT '数据来源 1-前台导入\n2-后台生成',
  `ACCT_ID` bigint(14) DEFAULT NULL COMMENT '默认付费账号',
  `DEAL_STATE` bigint(2) DEFAULT NULL COMMENT '处理状态 code_type=ORDX_DES_USER.DATA_SOURCE\n0-初始化\n1-处理成功\n2-重复号码，无须处理\n3-处理失败\n4-待重处理\n5-长流程处理中',
  `REL_ORDER_CODE` varchar(40) DEFAULT NULL,
  `COUNTRY_CODE` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：待销户工单表\n分表方式：按用户编号随机分10张表(如:ORDX_DES_USER_100)\n历史处理表：按用户分片和年月进行分表(如:ORDX_DES_USER_H_100_201110)\n错误表：按用户编号随机分10张表(如:ORDX_DES_USER_100_ERR，要加上ERR_DATE和ERR_MSG字段)';

/*Table structure for table `ordx_group_member_info` */

DROP TABLE IF EXISTS `ordx_group_member_info`;

CREATE TABLE `ordx_group_member_info` (
  `CUSTOMER_ORDER_ID` bigint(14) NOT NULL,
  `BUSINESS_ID` bigint(12) NOT NULL COMMENT '业务编码',
  `VIR_BILL_ID` varchar(30) DEFAULT NULL COMMENT '群组虚拟用户号码',
  `BILL_ID` varchar(30) NOT NULL COMMENT '成员号码',
  `GROUP_OFFER_ID` bigint(12) NOT NULL COMMENT '群组策划编号',
  `GROUP_OFFER_TYPE` varchar(30) NOT NULL COMMENT '群组策划类型',
  `ROLE_ID` bigint(12) DEFAULT NULL COMMENT '成员归属角色',
  `IS_MGR_MEMBER` bigint(1) DEFAULT NULL COMMENT '是否管理角色用户 1=是 0=否',
  `STATE` bigint(2) NOT NULL COMMENT '1=新增 2=修改 3=删除',
  `GROUP_REGION_ID` varchar(6) NOT NULL COMMENT '群组归属地',
  `USER_REGION_ID` varchar(6) NOT NULL COMMENT '用户归属地',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地市',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '操作编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT_1` varchar(40) DEFAULT NULL,
  `EXT_2` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ORDER_ID`,`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录群组组网、变更时的成员信息\n\n分表方式：地市分表\n\n如：ORDX_GROUP_MEMBER_INFO_xxx';

/*Table structure for table `ordx_info_deposite` */

DROP TABLE IF EXISTS `ordx_info_deposite`;

CREATE TABLE `ordx_info_deposite` (
  `CUSTOMER_ORDER_ID` bigint(12) NOT NULL,
  `ORDER_CODE` varchar(40) NOT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '本次业务的主业务操作编号',
  `BUSINESS_TYPE` varchar(200) DEFAULT NULL COMMENT '业务操作类型。产品管理中业务操作产品定义的业务类型，包括新装、变更、增加成员、删除成员等。为报表统计效率而冗余。',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `SOURCE_SYSTEM_ID` bigint(2) DEFAULT NULL COMMENT '行纪录的来源系统(code_type=SO_SOURCE_SYSTEM)。\n如客户订单是来源于BBoss系统，还是DSMP系统\n1RBOSS\n2BBOSS\n3DSMP',
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL COMMENT '具体类型由接口组去定义(code_type=SO_CHANNEL_TYPE)，大致定义如下： 0:联网银行 1:营业厅 2:1860客服 3:代理商 4:网上营业厅 5:合作营业厅 6:内部管理 7:后台自动处理 8:小额支付 9:外部接口 10:BBOSS系统 11:业务平台WEB 12:业务平台IVR 13:业务平台SMS 14:业务平台接口机 15:业务平台批量 16:业务平台功能复制开通 17:业务平台文件开通 18:业务平台WAP 19:业务平台MMS 20:业务平台JAVA 23:短信营业厅 25:营业批量受理 99:CBOSS',
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(120) DEFAULT NULL,
  `WORKFLOW_TASK_ID` varchar(25) DEFAULT NULL COMMENT '用于回复外部流程任务',
  `IS_BATCH_ORDER` bigint(1) DEFAULT NULL COMMENT '是否指业务(CODE_TYPE=SO_YES_NO)',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户订单信息沉淀';

/*Table structure for table `ordx_sec_smsreply` */

DROP TABLE IF EXISTS `ordx_sec_smsreply`;

CREATE TABLE `ordx_sec_smsreply` (
  `REPLY_ID` bigint(14) NOT NULL COMMENT '回复编号',
  `TASK_ID` varchar(25) NOT NULL,
  `MSG_SEND_CODE` varchar(32) DEFAULT NULL COMMENT '该字段用来判断是针对哪条短信来做的回复 采取的数据模式是：10086+随机号     Eg：10086,1008653201',
  `BILL_ID` varchar(15) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `MODULE` varchar(8) DEFAULT NULL COMMENT '为了让二次短信确认同其它模块公用，该字段标识各个模块的ID\n1）用户订购短信确认回复；\n2）扣费提醒短信确认回复；\n3）统一支付成员邀请短信确认回复；\n4）家庭套餐成员邀请短信确认回复；\n5）VPMN成员邀请短信确认回复；\n6）集团业务添加成员二次确认短信回复；',
  `CREATE_TIME` datetime DEFAULT NULL,
  `EXPIRE_TIME` datetime DEFAULT NULL COMMENT '默认24小时',
  `REPLY_MESSAGE` varchar(512) DEFAULT NULL COMMENT '回复内容',
  `REPLAY_TIME` datetime DEFAULT NULL COMMENT '回复信息时间',
  `CONFIRM_TYPE` varchar(30) DEFAULT NULL COMMENT '0：非空即可 1：需要与确认编码(CONFIRM_CODE)匹配',
  `CONFIRM_CODE` varchar(32) DEFAULT NULL COMMENT '在其有效期内回复内容与之匹配即可认为确认成功',
  `STATE` char(1) NOT NULL COMMENT '1初始化2已回复3已过期',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区编号',
  `BILL_FLAG` bigint(10) DEFAULT NULL,
  `BUSI_TYPE` varchar(25) DEFAULT NULL,
  `SUB_BUSI_TYPE` varchar(25) DEFAULT NULL,
  `ORDER_EFFECTIVE_TIME` datetime DEFAULT NULL,
  `ORDER_EXPIRE_TIME` datetime DEFAULT NULL,
  `ID_TYPE` varchar(25) DEFAULT NULL,
  `ID_VALUE` varchar(25) DEFAULT NULL,
  `OP_ID` varchar(10) DEFAULT NULL,
  `OPR_CODE` varchar(10) DEFAULT NULL,
  `SP_CODE` varchar(25) DEFAULT NULL,
  `SERVICE_CODE` varchar(25) DEFAULT NULL,
  `SOURCE` varchar(10) DEFAULT NULL,
  `OFFER_CODE` varchar(50) DEFAULT NULL,
  `OPR_NUMB` varchar(50) DEFAULT NULL,
  `THIRD_NUMB` varchar(25) DEFAULT NULL,
  `CRM_BUSI_TYPE` varchar(25) DEFAULT NULL,
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_3` varchar(2000) DEFAULT NULL,
  KEY `IDX_ORDXSECSMSRPLY_1` (`REPLY_ID`),
  KEY `IDX_ORDXSECSMSRPLY_2` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用于记录DSMP订购时下发短信时用户回复信息，描述处理时一定要加上分区的字段，分为三个后台进程来进行处理，以免造成业务的相互影响。\n分表方式：按地市进行分表\n分区：根据MODULE进行分区\n历史表：按用户分片和年月进行分表(如ORDX_SEC_SMSREPLY_H_100_201110),历史表要加上tf_date字段,类型为date\n错误表：按用户编号随机分10张表(ORDX_SEC_SMSREPLY_100_ERR)';

/*Table structure for table `ordx_sec_smsreply_err` */

DROP TABLE IF EXISTS `ordx_sec_smsreply_err`;

CREATE TABLE `ordx_sec_smsreply_err` (
  `REPLY_ID` bigint(14) NOT NULL COMMENT '回复编号',
  `TASK_ID` varchar(25) NOT NULL,
  `MSG_SEND_CODE` varchar(32) DEFAULT NULL COMMENT '该字段用来判断是针对哪条短信来做的回复 采取的数据模式是：10086+随机号     Eg：10086,1008653201',
  `BILL_ID` varchar(15) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `MODULE` varchar(8) DEFAULT NULL COMMENT '为了让二次短信确认同其它模块公用，该字段标识各个模块的ID\n1）用户订购短信确认回复；\n2）扣费提醒短信确认回复；\n3）统一支付成员邀请短信确认回复；\n4）家庭套餐成员邀请短信确认回复；\n5）VPMN成员邀请短信确认回复；\n6）集团业务添加成员二次确认短信回复；',
  `CREATE_TIME` datetime DEFAULT NULL,
  `EXPIRE_TIME` datetime DEFAULT NULL COMMENT '默认24小时',
  `REPLY_MESSAGE` varchar(512) DEFAULT NULL COMMENT '回复内容',
  `REPLAY_TIME` datetime DEFAULT NULL COMMENT '回复信息时间',
  `CONFIRM_TYPE` varchar(30) DEFAULT NULL COMMENT '0：非空即可 1：需要与确认编码(CONFIRM_CODE)匹配',
  `CONFIRM_CODE` varchar(32) DEFAULT NULL COMMENT '在其有效期内回复内容与之匹配即可认为确认成功',
  `STATE` char(1) NOT NULL COMMENT '1初始化2已回复3已过期',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区编号',
  `BILL_FLAG` bigint(10) DEFAULT NULL,
  `BUSI_TYPE` varchar(25) DEFAULT NULL,
  `SUB_BUSI_TYPE` varchar(25) DEFAULT NULL,
  `ORDER_EFFECTIVE_TIME` datetime DEFAULT NULL,
  `ORDER_EXPIRE_TIME` datetime DEFAULT NULL,
  `ID_TYPE` varchar(25) DEFAULT NULL,
  `ID_VALUE` varchar(25) DEFAULT NULL,
  `OP_ID` varchar(10) DEFAULT NULL,
  `OPR_CODE` varchar(10) DEFAULT NULL,
  `SP_CODE` varchar(25) DEFAULT NULL,
  `SERVICE_CODE` varchar(25) DEFAULT NULL,
  `SOURCE` varchar(10) DEFAULT NULL,
  `OFFER_CODE` varchar(50) DEFAULT NULL,
  `OPR_NUMB` varchar(50) DEFAULT NULL,
  `THIRD_NUMB` varchar(25) DEFAULT NULL,
  `CRM_BUSI_TYPE` varchar(25) DEFAULT NULL,
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_3` varchar(2000) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  KEY `IDX_ORDXSECSMSREPLY_1` (`REPLY_ID`),
  KEY `IDX_ORDXSECSMSREPLY_2` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用于记录DSMP订购时下发短信时用户回复信息，描述处理时一定要加上分区的字段，分为三个后台进程来进行处理，以免造成业务的相互影响。\n分表方式：按地市进行分表\n分区：根据MODULE进行分区\n历史表：按用户分片和年月进行分表(如ORDX_SEC_SMSREPLY_H_100_201110),历史表要加上tf_date字段,类型为date\n错误表：按用户编号随机分10张表(ORDX_SEC_SMSREPLY_100_ERR)';

/*Table structure for table `ordx_sec_smsreply_h` */

DROP TABLE IF EXISTS `ordx_sec_smsreply_h`;

CREATE TABLE `ordx_sec_smsreply_h` (
  `REPLY_ID` bigint(14) NOT NULL COMMENT '回复编号',
  `TASK_ID` varchar(25) NOT NULL,
  `MSG_SEND_CODE` varchar(32) DEFAULT NULL COMMENT '该字段用来判断是针对哪条短信来做的回复 采取的数据模式是：10086+随机号     Eg：10086,1008653201',
  `BILL_ID` varchar(15) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `MODULE` varchar(8) DEFAULT NULL COMMENT '为了让二次短信确认同其它模块公用，该字段标识各个模块的ID\n1）用户订购短信确认回复；\n2）扣费提醒短信确认回复；\n3）统一支付成员邀请短信确认回复；\n4）家庭套餐成员邀请短信确认回复；\n5）VPMN成员邀请短信确认回复；\n6）集团业务添加成员二次确认短信回复；',
  `CREATE_TIME` datetime DEFAULT NULL,
  `EXPIRE_TIME` datetime DEFAULT NULL COMMENT '默认24小时',
  `REPLY_MESSAGE` varchar(512) DEFAULT NULL COMMENT '回复内容',
  `REPLAY_TIME` datetime DEFAULT NULL COMMENT '回复信息时间',
  `CONFIRM_TYPE` varchar(30) DEFAULT NULL COMMENT '0：非空即可 1：需要与确认编码(CONFIRM_CODE)匹配',
  `CONFIRM_CODE` varchar(32) DEFAULT NULL COMMENT '在其有效期内回复内容与之匹配即可认为确认成功',
  `STATE` char(1) NOT NULL COMMENT '1初始化2已回复3已过期',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区编号',
  `BILL_FLAG` bigint(10) DEFAULT NULL,
  `BUSI_TYPE` varchar(25) DEFAULT NULL,
  `SUB_BUSI_TYPE` varchar(25) DEFAULT NULL,
  `ORDER_EFFECTIVE_TIME` datetime DEFAULT NULL,
  `ORDER_EXPIRE_TIME` datetime DEFAULT NULL,
  `ID_TYPE` varchar(25) DEFAULT NULL,
  `ID_VALUE` varchar(25) DEFAULT NULL,
  `OP_ID` varchar(10) DEFAULT NULL,
  `OPR_CODE` varchar(10) DEFAULT NULL,
  `SP_CODE` varchar(25) DEFAULT NULL,
  `SERVICE_CODE` varchar(25) DEFAULT NULL,
  `SOURCE` varchar(10) DEFAULT NULL,
  `OFFER_CODE` varchar(50) DEFAULT NULL,
  `OPR_NUMB` varchar(50) DEFAULT NULL,
  `THIRD_NUMB` varchar(25) DEFAULT NULL,
  `CRM_BUSI_TYPE` varchar(25) DEFAULT NULL,
  `EXT_1` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(1000) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_3` varchar(2000) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL,
  KEY `IDX_ORDXSECSMSRPLY_H_1` (`REPLY_ID`),
  KEY `IDX_ORDXSECSMSRPLY_H_2` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用于记录DSMP订购时下发短信时用户回复信息，描述处理时一定要加上分区的字段，分为三个后台进程来进行处理，以免造成业务的相互影响。\n分表方式：按地市进行分表\n分区：根据MODULE进行分区\n历史表：按用户分片和年月进行分表(如ORDX_SEC_SMSREPLY_H_100_201110),历史表要加上tf_date字段,类型为date\n错误表：按用户编号随机分10张表(ORDX_SEC_SMSREPLY_100_ERR)';

/*Table structure for table `ordx_sync_confirm` */

DROP TABLE IF EXISTS `ordx_sync_confirm`;

CREATE TABLE `ordx_sync_confirm` (
  `CONFIRM_ORDER_ID` bigint(14) NOT NULL COMMENT '主键，按SEQ生成',
  `CUSTOMER_ORDER_ID` bigint(14) NOT NULL COMMENT '客户订单编号',
  `OFFER_ORDER_ID` bigint(14) NOT NULL COMMENT '策划订单编号',
  `BILL_ID` varchar(30) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TASK_ID` varchar(25) DEFAULT NULL COMMENT '对应流程的当前任务节点',
  `IS_CONFIRMED` bigint(1) DEFAULT NULL COMMENT '平台是否确认完成\n0：初始状态\n1：完成确认',
  `CONFIRM_RST_CODE` varchar(5) DEFAULT NULL COMMENT '平台的确认结果编码',
  `CREATE_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_DATE` datetime DEFAULT NULL,
  `STATE` varchar(3) NOT NULL COMMENT '状态编码\n0：初始状态\n1：等待平台确认',
  `TASK_TYPE` bigint(1) DEFAULT NULL COMMENT '任务类型',
  `PROD_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `PROD_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '产品订单编号',
  `EXT_DONE_CODE` varchar(4000) DEFAULT NULL COMMENT '扩展信息',
  PRIMARY KEY (`CONFIRM_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：订购关系同步确认表\n分表方式：按用户编号随机分10张表(如北京：ORDX_SYNC_CONFIRM_100，上海：ORDX_SYNC_CONFIRM_210)\n错误表：按用户编号随机分10张表(ORDX_SYNC_CONFIRM_100_ERR，需要增加ERR_DATE和ERR_MSG字段)\n历史表：按用户编号随机分10张表(ORDX_SYNC_CONFIRM_H_100_201105，需要增加TF_DATE字段)';

/*Table structure for table `ordx_sync_confirm_err` */

DROP TABLE IF EXISTS `ordx_sync_confirm_err`;

CREATE TABLE `ordx_sync_confirm_err` (
  `CONFIRM_ORDER_ID` bigint(14) NOT NULL COMMENT '主键，按SEQ生成',
  `CUSTOMER_ORDER_ID` bigint(14) NOT NULL COMMENT '客户订单编号',
  `OFFER_ORDER_ID` bigint(14) NOT NULL COMMENT '策划订单编号',
  `BILL_ID` varchar(30) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TASK_ID` varchar(25) DEFAULT NULL COMMENT '对应流程的当前任务节点',
  `IS_CONFIRMED` bigint(1) DEFAULT NULL COMMENT '平台是否确认完成\n0：初始状态\n1：完成确认',
  `CONFIRM_RST_CODE` varchar(5) DEFAULT NULL COMMENT '平台的确认结果编码',
  `CREATE_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_DATE` datetime DEFAULT NULL,
  `STATE` varchar(3) NOT NULL COMMENT '状态编码\n0：初始状态\n1：等待平台确认',
  `TASK_TYPE` bigint(1) DEFAULT NULL COMMENT '任务类型',
  `PROD_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `PROD_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '产品订单编号',
  `EXT_DONE_CODE` varchar(4000) DEFAULT NULL COMMENT '扩展信息',
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL COMMENT '错误消息'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：订购关系同步确认表\n分表方式：按用户编号随机分10张表(如北京：ORDX_SYNC_CONFIRM_100，上海：ORDX_SYNC_CONFIRM_210)\n错误表：按用户编号随机分10张表(ORDX_SYNC_CONFIRM_100_ERR，需要增加ERR_DATE和ERR_MSG字段)\n历史表：按用户编号随机分10张表(ORDX_SYNC_CONFIRM_H_100_201105，需要增加TF_DATE字段)';

/*Table structure for table `ordx_sync_confirm_h` */

DROP TABLE IF EXISTS `ordx_sync_confirm_h`;

CREATE TABLE `ordx_sync_confirm_h` (
  `CONFIRM_ORDER_ID` bigint(14) NOT NULL COMMENT '主键，按SEQ生成',
  `CUSTOMER_ORDER_ID` bigint(14) NOT NULL COMMENT '客户订单编号',
  `OFFER_ORDER_ID` bigint(14) NOT NULL COMMENT '策划订单编号',
  `BILL_ID` varchar(30) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TASK_ID` varchar(25) DEFAULT NULL COMMENT '对应流程的当前任务节点',
  `IS_CONFIRMED` bigint(1) DEFAULT NULL COMMENT '平台是否确认完成\n0：初始状态\n1：完成确认',
  `CONFIRM_RST_CODE` varchar(5) DEFAULT NULL COMMENT '平台的确认结果编码',
  `CREATE_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_DATE` datetime DEFAULT NULL,
  `STATE` varchar(3) NOT NULL COMMENT '状态编码\n0：初始状态\n1：等待平台确认',
  `TASK_TYPE` bigint(1) DEFAULT NULL COMMENT '任务类型',
  `PROD_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `PROD_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '产品订单编号',
  `EXT_DONE_CODE` varchar(4000) DEFAULT NULL COMMENT '扩展信息',
  `TF_DATE` datetime DEFAULT NULL COMMENT '处理时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：订购关系同步确认表\n分表方式：按用户编号随机分10张表(如北京：ORDX_SYNC_CONFIRM_100，上海：ORDX_SYNC_CONFIRM_210)\n错误表：按用户编号随机分10张表(ORDX_SYNC_CONFIRM_100_ERR，需要增加ERR_DATE和ERR_MSG字段)\n历史表：按用户编号随机分10张表(ORDX_SYNC_CONFIRM_H_100_201105，需要增加TF_DATE字段)';

/*Table structure for table `ordx_user_monitor_h` */

DROP TABLE IF EXISTS `ordx_user_monitor_h`;

CREATE TABLE `ordx_user_monitor_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `SEQ_ID` bigint(14) DEFAULT NULL COMMENT '主键ID',
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号',
  `BUSINESS_TYPE` bigint(2) DEFAULT NULL COMMENT '操作类型(0：新开户，1：国际长途订购，2：国际长途取消，3、预开户激活，4：梦网短彩信订购，5梦网短彩退订)',
  `MONITOR_FLAG` bigint(8) DEFAULT NULL COMMENT '受监控大类\n语音类监控添50001（新入网、梦网短彩信）\n长途类监控添50006（国际长途）',
  `ACTIVE_DATE` datetime DEFAULT NULL COMMENT '入网时间',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `DEAL_STATE` bigint(1) DEFAULT NULL COMMENT '处理标识\n1-已监控\n3-未监控',
  `DEAL_DATE` datetime DEFAULT NULL COMMENT '处理时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(如：ORDX_USER_MONITOR_H_571_201110)';

/*Table structure for table `reload_log` */

DROP TABLE IF EXISTS `reload_log`;

CREATE TABLE `reload_log` (
  `LOG_ID` decimal(12,0) DEFAULT NULL,
  `SRC_TAB` varchar(255) DEFAULT NULL,
  `SRC_INSTANCE` varchar(1024) DEFAULT NULL,
  `DEST_TAB` varchar(255) DEFAULT NULL,
  `MOD_COUNT` decimal(10,0) DEFAULT NULL COMMENT 'U 正常\nE 失效',
  `DEL_COUNT` decimal(10,0) DEFAULT NULL COMMENT '记录帐户缴费后金额；如果缴费为专款专用，则记录专款专用的缴费后金额\n\n例如： 缴费后余额：100',
  `DONE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='RELOAD型TF跨用户同步数据，对应的LOG日志表，表所存在的用户和跨库同步数据TF所配置的用户相关';

/*Table structure for table `sms_batch_pending` */

DROP TABLE IF EXISTS `sms_batch_pending`;

CREATE TABLE `sms_batch_pending` (
  `OPTSN` varchar(25) NOT NULL COMMENT '流水号',
  `DESTNUM` varchar(20) NOT NULL COMMENT '手机号码',
  `SRCTYPE` char(1) DEFAULT NULL COMMENT '来源',
  `OPTCODE` varchar(20) DEFAULT NULL COMMENT '操作代码',
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL COMMENT '端口号（如10086）',
  `AREA` varchar(5) DEFAULT NULL COMMENT '地区编码',
  `SMSTYPE` varchar(8) DEFAULT NULL COMMENT '类型（目前没用）',
  `PRI` varchar(1) DEFAULT NULL COMMENT '优先级别',
  `SENDDATE` datetime NOT NULL COMMENT '发送时间',
  `OPTDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `SENDFLAG` char(1) DEFAULT NULL COMMENT '发送标志',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区',
  `TEMPLATE_ID` varchar(20) NOT NULL COMMENT '短信平台模板ID',
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL COMMENT '短信平台发送任务编号',
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL COMMENT '批量任务序号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`OPTSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='批量短信待发表，供营业、帐管、营销等系统发送即时大批量短信用';

/*Table structure for table `sms_batch_pending_err` */

DROP TABLE IF EXISTS `sms_batch_pending_err`;

CREATE TABLE `sms_batch_pending_err` (
  `OPTSN` varchar(25) NOT NULL COMMENT '流水号',
  `DESTNUM` varchar(20) NOT NULL COMMENT '手机号码',
  `SRCTYPE` char(1) DEFAULT NULL COMMENT '来源',
  `OPTCODE` varchar(20) DEFAULT NULL COMMENT '操作代码',
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL COMMENT '端口号（如10086）',
  `AREA` varchar(5) DEFAULT NULL COMMENT '地区编码',
  `SMSTYPE` varchar(8) DEFAULT NULL COMMENT '类型（目前没用）',
  `PRI` varchar(1) DEFAULT NULL COMMENT '优先级别',
  `SENDDATE` datetime NOT NULL COMMENT '发送时间',
  `OPTDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `SENDFLAG` char(1) DEFAULT NULL COMMENT '发送标志',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区',
  `TEMPLATE_ID` varchar(20) NOT NULL COMMENT '短信平台模板ID',
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL COMMENT '短信平台发送任务编号',
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL COMMENT '批量任务序号',
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='批量短信待发表，供营业、帐管、营销等系统发送即时大批量短信用';

/*Table structure for table `sms_batch_pending_h` */

DROP TABLE IF EXISTS `sms_batch_pending_h`;

CREATE TABLE `sms_batch_pending_h` (
  `TF_DATE` datetime DEFAULT NULL,
  `OPTSN` varchar(25) NOT NULL COMMENT '流水号',
  `DESTNUM` varchar(20) NOT NULL COMMENT '手机号码',
  `SRCTYPE` char(1) DEFAULT NULL COMMENT '来源',
  `OPTCODE` varchar(20) DEFAULT NULL COMMENT '操作代码',
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL COMMENT '端口号（如10086）',
  `AREA` varchar(5) DEFAULT NULL COMMENT '地区编码',
  `SMSTYPE` varchar(8) DEFAULT NULL COMMENT '类型（目前没用）',
  `PRI` varchar(1) DEFAULT NULL COMMENT '优先级别',
  `SENDDATE` datetime NOT NULL COMMENT '发送时间',
  `OPTDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `SENDFLAG` char(1) DEFAULT NULL COMMENT '发送标志',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区',
  `TEMPLATE_ID` varchar(20) NOT NULL COMMENT '短信平台模板ID',
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL COMMENT '短信平台发送任务编号',
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL COMMENT '批量任务序号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL,
  KEY `IDX_SMS_BATCH_PEDING_H_1` (`SENDDATE`,`OP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='批量短信待发表，供营业、帐管、营销等系统发送即时大批量短信用';

/*Table structure for table `sms_bom_pending` */

DROP TABLE IF EXISTS `sms_bom_pending`;

CREATE TABLE `sms_bom_pending` (
  `OPTSN` varchar(25) NOT NULL COMMENT '流水号',
  `DESTNUM` varchar(20) NOT NULL COMMENT '手机号码',
  `SRCTYPE` char(1) DEFAULT NULL COMMENT '来源',
  `OPTCODE` varchar(20) DEFAULT NULL COMMENT '操作代码',
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL COMMENT '端口号（如10086）',
  `AREA` varchar(5) DEFAULT NULL COMMENT '地区编码',
  `SMSTYPE` varchar(8) DEFAULT NULL COMMENT '类型（目前没用）',
  `PRI` varchar(1) DEFAULT NULL COMMENT '优先级别',
  `SENDDATE` datetime NOT NULL COMMENT '发送时间',
  `OPTDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `SENDFLAG` char(1) DEFAULT NULL COMMENT '发送标志',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区',
  `TEMPLATE_ID` varchar(20) NOT NULL COMMENT '短信平台模板ID',
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL COMMENT '短信平台发送任务编号',
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL COMMENT '批量任务序号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`OPTSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='月初短信待发表，供营业、帐管、营销等系统发送月初大批量短信用';

/*Table structure for table `sms_bom_pending_err` */

DROP TABLE IF EXISTS `sms_bom_pending_err`;

CREATE TABLE `sms_bom_pending_err` (
  `OPTSN` varchar(25) NOT NULL COMMENT '流水号',
  `DESTNUM` varchar(20) NOT NULL COMMENT '手机号码',
  `SRCTYPE` char(1) DEFAULT NULL COMMENT '来源',
  `OPTCODE` varchar(20) DEFAULT NULL COMMENT '操作代码',
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL COMMENT '端口号（如10086）',
  `AREA` varchar(5) DEFAULT NULL COMMENT '地区编码',
  `SMSTYPE` varchar(8) DEFAULT NULL COMMENT '类型（目前没用）',
  `PRI` varchar(1) DEFAULT NULL COMMENT '优先级别',
  `SENDDATE` datetime NOT NULL COMMENT '发送时间',
  `OPTDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `SENDFLAG` char(1) DEFAULT NULL COMMENT '发送标志',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区',
  `TEMPLATE_ID` varchar(20) NOT NULL COMMENT '短信平台模板ID',
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL COMMENT '短信平台发送任务编号',
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL COMMENT '批量任务序号',
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='月初短信待发表，供营业、帐管、营销等系统发送月初大批量短信用';

/*Table structure for table `sms_bom_pending_h` */

DROP TABLE IF EXISTS `sms_bom_pending_h`;

CREATE TABLE `sms_bom_pending_h` (
  `TF_DATE` datetime DEFAULT NULL,
  `OPTSN` varchar(25) NOT NULL COMMENT '流水号',
  `DESTNUM` varchar(20) NOT NULL COMMENT '手机号码',
  `SRCTYPE` char(1) DEFAULT NULL COMMENT '来源',
  `OPTCODE` varchar(20) DEFAULT NULL COMMENT '操作代码',
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL COMMENT '端口号（如10086）',
  `AREA` varchar(5) DEFAULT NULL COMMENT '地区编码',
  `SMSTYPE` varchar(8) DEFAULT NULL COMMENT '类型（目前没用）',
  `PRI` varchar(1) DEFAULT NULL COMMENT '优先级别',
  `SENDDATE` datetime NOT NULL COMMENT '发送时间',
  `OPTDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `SENDFLAG` char(1) DEFAULT NULL COMMENT '发送标志',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区',
  `TEMPLATE_ID` varchar(20) NOT NULL COMMENT '短信平台模板ID',
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL COMMENT '短信平台发送任务编号',
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL COMMENT '批量任务序号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL,
  KEY `IDX_SMS_BOM_PENDING_H_1` (`SENDDATE`,`OP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='月初短信待发表，供营业、帐管、营销等系统发送月初大批量短信用';

/*Table structure for table `sms_cc_pending_err` */

DROP TABLE IF EXISTS `sms_cc_pending_err`;

CREATE TABLE `sms_cc_pending_err` (
  `OPTSN` varchar(25) NOT NULL,
  `DESTNUM` varchar(20) NOT NULL,
  `SRCTYPE` char(1) DEFAULT NULL,
  `OPTCODE` varchar(20) DEFAULT NULL,
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL,
  `AREA` varchar(5) DEFAULT NULL,
  `SMSTYPE` varchar(8) DEFAULT NULL,
  `PRI` varchar(1) DEFAULT NULL,
  `SENDDATE` datetime NOT NULL,
  `OPTDATE` datetime DEFAULT NULL,
  `SENDFLAG` char(1) DEFAULT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `TEMPLATE_ID` varchar(20) NOT NULL,
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL,
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表说明：根据地市和年月分表，如SMS_CC_PENDING_240_ERR_1211，分表字段为REGION_ID和SEND_DATE';

/*Table structure for table `sms_cc_pending_h` */

DROP TABLE IF EXISTS `sms_cc_pending_h`;

CREATE TABLE `sms_cc_pending_h` (
  `OPTSN` varchar(25) NOT NULL,
  `DESTNUM` varchar(20) NOT NULL,
  `SRCTYPE` char(1) DEFAULT NULL,
  `OPTCODE` varchar(20) DEFAULT NULL,
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL,
  `AREA` varchar(5) DEFAULT NULL,
  `SMSTYPE` varchar(8) DEFAULT NULL,
  `PRI` varchar(1) DEFAULT NULL,
  `SENDDATE` datetime NOT NULL,
  `OPTDATE` datetime DEFAULT NULL,
  `SENDFLAG` char(1) DEFAULT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `TEMPLATE_ID` varchar(20) NOT NULL,
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL,
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL,
  KEY `IDX_SMS_CC_PENDING_H` (`DESTNUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表说明：根据地市分表，如SMS_CC_PENDING_240\n历史表：根据地市和年月分表，如SMS_CC_PENDING_H_240_201211，分表字段为REGION_ID和SEND_DATE';

/*Table structure for table `sms_fast_pending` */

DROP TABLE IF EXISTS `sms_fast_pending`;

CREATE TABLE `sms_fast_pending` (
  `OPTSN` varchar(25) NOT NULL COMMENT '流水号',
  `DESTNUM` varchar(20) NOT NULL COMMENT '手机号码',
  `SRCTYPE` char(1) DEFAULT NULL COMMENT '来源',
  `OPTCODE` varchar(20) DEFAULT NULL COMMENT '操作代码',
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL COMMENT '端口号（如10086）',
  `AREA` varchar(5) DEFAULT NULL COMMENT '地区编码',
  `SMSTYPE` varchar(8) DEFAULT NULL COMMENT '类型（目前没用）',
  `PRI` varchar(1) DEFAULT NULL COMMENT '优先级别',
  `SENDDATE` datetime NOT NULL COMMENT '发送时间',
  `OPTDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `SENDFLAG` char(1) DEFAULT NULL COMMENT '发送标志',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区',
  `TEMPLATE_ID` varchar(20) NOT NULL COMMENT '短信平台模板ID',
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL COMMENT '短信平台发送任务编号',
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL COMMENT '批量任务序号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`OPTSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='立即短信待发表，供营业、帐管、营销等系统发送用户立即短信用';

/*Table structure for table `sms_fast_pending_err` */

DROP TABLE IF EXISTS `sms_fast_pending_err`;

CREATE TABLE `sms_fast_pending_err` (
  `OPTSN` varchar(25) NOT NULL COMMENT '流水号',
  `DESTNUM` varchar(20) NOT NULL COMMENT '手机号码',
  `SRCTYPE` char(1) DEFAULT NULL COMMENT '来源',
  `OPTCODE` varchar(20) DEFAULT NULL COMMENT '操作代码',
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL COMMENT '端口号（如10086）',
  `AREA` varchar(5) DEFAULT NULL COMMENT '地区编码',
  `SMSTYPE` varchar(8) DEFAULT NULL COMMENT '类型（目前没用）',
  `PRI` varchar(1) DEFAULT NULL COMMENT '优先级别',
  `SENDDATE` datetime NOT NULL COMMENT '发送时间',
  `OPTDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `SENDFLAG` char(1) DEFAULT NULL COMMENT '发送标志',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区',
  `TEMPLATE_ID` varchar(20) NOT NULL COMMENT '短信平台模板ID',
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL COMMENT '短信平台发送任务编号',
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL COMMENT '批量任务序号',
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='立即短信待发表，供营业、帐管、营销等系统发送用户立即短信用';

/*Table structure for table `sms_fast_pending_h` */

DROP TABLE IF EXISTS `sms_fast_pending_h`;

CREATE TABLE `sms_fast_pending_h` (
  `TF_DATE` datetime DEFAULT NULL,
  `OPTSN` varchar(25) NOT NULL COMMENT '流水号',
  `DESTNUM` varchar(20) NOT NULL COMMENT '手机号码',
  `SRCTYPE` char(1) DEFAULT NULL COMMENT '来源',
  `OPTCODE` varchar(20) DEFAULT NULL COMMENT '操作代码',
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL COMMENT '端口号（如10086）',
  `AREA` varchar(5) DEFAULT NULL COMMENT '地区编码',
  `SMSTYPE` varchar(8) DEFAULT NULL COMMENT '类型（目前没用）',
  `PRI` varchar(1) DEFAULT NULL COMMENT '优先级别',
  `SENDDATE` datetime NOT NULL COMMENT '发送时间',
  `OPTDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `SENDFLAG` char(1) DEFAULT NULL COMMENT '发送标志',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区',
  `TEMPLATE_ID` varchar(20) NOT NULL COMMENT '短信平台模板ID',
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL COMMENT '短信平台发送任务编号',
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL COMMENT '批量任务序号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL,
  KEY `IDX_SMS_FAST_PENDING_2` (`DESTNUM`,`SENDDATE`,`TEMPLATE_ID`),
  KEY `IDX_SMS_FAST_PENDING_1` (`SENDDATE`,`OP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='立即短信待发表，供营业、帐管、营销等系统发送用户立即短信用';

/*Table structure for table `sms_sky_pending` */

DROP TABLE IF EXISTS `sms_sky_pending`;

CREATE TABLE `sms_sky_pending` (
  `OPTSN` varchar(25) NOT NULL COMMENT '流水号',
  `DESTNUM` varchar(20) NOT NULL COMMENT '手机号码',
  `SRCTYPE` char(1) DEFAULT NULL COMMENT '来源',
  `OPTCODE` varchar(20) DEFAULT NULL COMMENT '操作代码',
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL COMMENT '端口号（如10086）',
  `AREA` varchar(5) DEFAULT NULL COMMENT '地区编码',
  `SMSTYPE` varchar(8) DEFAULT NULL COMMENT '类型（目前没用）',
  `PRI` varchar(1) DEFAULT NULL COMMENT '优先级别',
  `SENDDATE` datetime NOT NULL COMMENT '发送时间',
  `OPTDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `SENDFLAG` char(1) DEFAULT NULL COMMENT '发送标志',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区',
  `TEMPLATE_ID` varchar(20) NOT NULL COMMENT '短信平台模板ID',
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL COMMENT '短信平台发送任务编号',
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL COMMENT '批量任务序号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`OPTSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='空中充值短信待发表，供营业、帐管、营销等系统发送即时大批量空中充值短信用';

/*Table structure for table `sms_sky_pending_err` */

DROP TABLE IF EXISTS `sms_sky_pending_err`;

CREATE TABLE `sms_sky_pending_err` (
  `OPTSN` varchar(25) NOT NULL COMMENT '流水号',
  `DESTNUM` varchar(20) NOT NULL COMMENT '手机号码',
  `SRCTYPE` char(1) DEFAULT NULL COMMENT '来源',
  `OPTCODE` varchar(20) DEFAULT NULL COMMENT '操作代码',
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL COMMENT '端口号（如10086）',
  `AREA` varchar(5) DEFAULT NULL COMMENT '地区编码',
  `SMSTYPE` varchar(8) DEFAULT NULL COMMENT '类型（目前没用）',
  `PRI` varchar(1) DEFAULT NULL COMMENT '优先级别',
  `SENDDATE` datetime NOT NULL COMMENT '发送时间',
  `OPTDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `SENDFLAG` char(1) DEFAULT NULL COMMENT '发送标志',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区',
  `TEMPLATE_ID` varchar(20) NOT NULL COMMENT '短信平台模板ID',
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL COMMENT '短信平台发送任务编号',
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL COMMENT '批量任务序号',
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='空中充值短信待发表，供营业、帐管、营销等系统发送即时大批量空中充值短信用';

/*Table structure for table `sms_sky_pending_h` */

DROP TABLE IF EXISTS `sms_sky_pending_h`;

CREATE TABLE `sms_sky_pending_h` (
  `TF_DATE` datetime DEFAULT NULL,
  `OPTSN` varchar(25) NOT NULL COMMENT '流水号',
  `DESTNUM` varchar(20) NOT NULL COMMENT '手机号码',
  `SRCTYPE` char(1) DEFAULT NULL COMMENT '来源',
  `OPTCODE` varchar(20) DEFAULT NULL COMMENT '操作代码',
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL COMMENT '端口号（如10086）',
  `AREA` varchar(5) DEFAULT NULL COMMENT '地区编码',
  `SMSTYPE` varchar(8) DEFAULT NULL COMMENT '类型（目前没用）',
  `PRI` varchar(1) DEFAULT NULL COMMENT '优先级别',
  `SENDDATE` datetime NOT NULL COMMENT '发送时间',
  `OPTDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `SENDFLAG` char(1) DEFAULT NULL COMMENT '发送标志',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区',
  `TEMPLATE_ID` varchar(20) NOT NULL COMMENT '短信平台模板ID',
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL COMMENT '短信平台发送任务编号',
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL COMMENT '批量任务序号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL,
  KEY `IDX_SMS_SKY_PEDING_H_1` (`SENDDATE`,`OP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='空中充值短信待发表，供营业、帐管、营销等系统发送即时大批量空中充值短信用';

/*Table structure for table `sms_wap_push` */

DROP TABLE IF EXISTS `sms_wap_push`;

CREATE TABLE `sms_wap_push` (
  `OPTSN` varchar(25) NOT NULL COMMENT '流水号',
  `DESTNUM` varchar(20) NOT NULL COMMENT '手机号码',
  `SRCTYPE` char(1) DEFAULT NULL COMMENT '来源',
  `OPTCODE` varchar(20) DEFAULT NULL COMMENT '操作代码',
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL COMMENT '端口号（如10086）',
  `AREA` varchar(5) DEFAULT NULL COMMENT '地区编码',
  `SMSTYPE` varchar(8) DEFAULT NULL COMMENT '类型（目前没用）',
  `PRI` varchar(1) DEFAULT NULL COMMENT '优先级别',
  `SENDDATE` datetime NOT NULL COMMENT '发送时间',
  `OPTDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `SENDFLAG` char(1) DEFAULT NULL COMMENT '发送标志',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区',
  `TEMPLATE_ID` varchar(20) NOT NULL COMMENT '短信平台模板ID',
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL COMMENT '短信平台发送任务编号',
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL COMMENT '批量任务序号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='WAP PUSH短信待发表，供营业、帐管、营销等系统发送WAP PUSH短信用';

/*Table structure for table `sms_wap_push_err` */

DROP TABLE IF EXISTS `sms_wap_push_err`;

CREATE TABLE `sms_wap_push_err` (
  `OPTSN` varchar(25) NOT NULL COMMENT '流水号',
  `DESTNUM` varchar(20) NOT NULL COMMENT '手机号码',
  `SRCTYPE` char(1) DEFAULT NULL COMMENT '来源',
  `OPTCODE` varchar(20) DEFAULT NULL COMMENT '操作代码',
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL COMMENT '端口号（如10086）',
  `AREA` varchar(5) DEFAULT NULL COMMENT '地区编码',
  `SMSTYPE` varchar(8) DEFAULT NULL COMMENT '类型（目前没用）',
  `PRI` varchar(1) DEFAULT NULL COMMENT '优先级别',
  `SENDDATE` datetime NOT NULL COMMENT '发送时间',
  `OPTDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `SENDFLAG` char(1) DEFAULT NULL COMMENT '发送标志',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区',
  `TEMPLATE_ID` varchar(20) NOT NULL COMMENT '短信平台模板ID',
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL COMMENT '短信平台发送任务编号',
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL COMMENT '批量任务序号',
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='WAP PUSH短信待发表，供营业、帐管、营销等系统发送WAP PUSH短信用';

/*Table structure for table `sms_wap_push_h` */

DROP TABLE IF EXISTS `sms_wap_push_h`;

CREATE TABLE `sms_wap_push_h` (
  `TF_DATE` datetime NOT NULL,
  `OPTSN` varchar(25) NOT NULL COMMENT '流水号',
  `DESTNUM` varchar(20) NOT NULL COMMENT '手机号码',
  `SRCTYPE` char(1) DEFAULT NULL COMMENT '来源',
  `OPTCODE` varchar(20) DEFAULT NULL COMMENT '操作代码',
  `RTNDATA` varchar(512) DEFAULT NULL,
  `PORT` varchar(50) NOT NULL COMMENT '端口号（如10086）',
  `AREA` varchar(5) DEFAULT NULL COMMENT '地区编码',
  `SMSTYPE` varchar(8) DEFAULT NULL COMMENT '类型（目前没用）',
  `PRI` varchar(1) DEFAULT NULL COMMENT '优先级别',
  `SENDDATE` datetime NOT NULL COMMENT '发送时间',
  `OPTDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `SENDFLAG` char(1) DEFAULT NULL COMMENT '发送标志',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区',
  `TEMPLATE_ID` varchar(20) NOT NULL COMMENT '短信平台模板ID',
  `MEDIA_TASK_ID` varchar(20) DEFAULT NULL COMMENT '短信平台发送任务编号',
  `BATCH_TASK_SEQ` varchar(20) DEFAULT NULL COMMENT '批量任务序号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `COMPLETE_MSG` varchar(1000) DEFAULT NULL,
  KEY `IDX_SMS_WAP_PUSH_H_1` (`SENDDATE`,`OP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='WAP PUSH短信待发表，供营业、帐管、营销等系统发送WAP PUSH短信用';

/*Table structure for table `so_busi_deposit` */

DROP TABLE IF EXISTS `so_busi_deposit`;

CREATE TABLE `so_busi_deposit` (
  `DEPOSIT_ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `BILL_ID` varchar(30) NOT NULL COMMENT '计费号码',
  `CONFIG_ID` bigint(6) NOT NULL COMMENT '沉淀配置编号',
  `BUSINESS_ID` bigint(12) NOT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_TYPE` varchar(30) DEFAULT NULL COMMENT '策划类型(产品定义的,code_type=SO_OFFER_TYPE)',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `DEAL_STATE` bigint(2) DEFAULT NULL COMMENT '处理标识',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) NOT NULL COMMENT '当前业务受理编号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime NOT NULL COMMENT '当前业务受理日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  PRIMARY KEY (`DEPOSIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务信息沉淀信息表\n按地市分表SO_BUSI_DEPOSIT_101';

/*Table structure for table `so_busi_log` */

DROP TABLE IF EXISTS `so_busi_log`;

CREATE TABLE `so_busi_log` (
  `BUSI_LOG_ID` bigint(12) NOT NULL COMMENT '受理日志编号',
  `PARENT_ID` bigint(14) DEFAULT NULL COMMENT '父受理日志编号',
  `HAS_CHILD` char(1) DEFAULT NULL COMMENT '是否有子操作(code_type=SO_HAVE_NOTHING)\n(0:无1:有)',
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '客户订单编号',
  `ORDER_CODE` varchar(40) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `ACCT_ID` bigint(14) DEFAULT NULL COMMENT '帐户编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号码',
  `USER_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '基本策划编号',
  `OPER_TYPE` varchar(20) DEFAULT NULL COMMENT '操作类型(具体要参见产品测的操作分类)',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '操作编号',
  `ACTION_STATE` bigint(2) DEFAULT NULL COMMENT '操作状态(code_type=SO_ORDER_DATA_STATE)\n1 新建\n2 修改\n3 删除\n4 不变',
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL COMMENT '具体类型由接口组去定义(code_type=SO_CHANNEL_TYPE',
  `OPR_OBJECT_NAME` varchar(1000) DEFAULT NULL COMMENT '变更策划或产品名称，方便客服人员的查询而冗余。',
  `BUSI_DETAIL` varchar(4000) DEFAULT NULL COMMENT '业务变更明细',
  `FEE_DETAIL` varchar(4000) DEFAULT NULL COMMENT '资费明细',
  `RES_DETAIL` varchar(4000) DEFAULT NULL COMMENT '资源明细',
  `REMARKS` varchar(1000) DEFAULT NULL COMMENT '备注',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_D` varchar(6) DEFAULT NULL COMMENT '操作所在地区',
  `CHECK_OP_ID` bigint(12) DEFAULT NULL,
  `CHECK_STATE` char(1) NOT NULL DEFAULT '0',
  `CHECK_DATE` datetime DEFAULT NULL,
  `CHECK_REMARK` varchar(1000) DEFAULT NULL,
  `SOURCE_TYPE` varchar(10) DEFAULT NULL COMMENT 'RES:资源\nSO:营业\nCM:客户管理',
  `FACT_MONEY` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`BUSI_LOG_ID`),
  KEY `IDX_SO_BUSILOG_1` (`CUSTOMER_ORDER_ID`),
  KEY `IDX_SO_BUSI_LOG_2` (`BILL_ID`),
  KEY `IDX_SO_BUSI_LOG_3` (`OP_ID`),
  KEY `IDX_SO_BUSI_LOG_4` (`PARENT_ID`),
  KEY `IDX_SO_BUSI_LOG_5` (`ORDER_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：记录业务受理或查询的相关日志\n\n索引：CUSTOMER_ORDER_ID\n\n分表：按年月进行分表(如ORD_DTL_INFO_201110)\n辽宁：按照地市和年月进行分表（如：SO_BUSI_LOG_240_201212）';

/*Table structure for table `so_busi_print_info` */

DROP TABLE IF EXISTS `so_busi_print_info`;

CREATE TABLE `so_busi_print_info` (
  `PRINT_ID` bigint(12) NOT NULL COMMENT '免填单编号',
  `ORDER_CODE` varchar(40) DEFAULT NULL COMMENT '客户订单编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '操作编号',
  `TEMPLATE_ID` bigint(12) DEFAULT NULL COMMENT '打印模板编号',
  `PRINT_COUNT` bigint(2) DEFAULT NULL COMMENT '打印次数',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `SURE_SHEET_ARGS_5` varchar(4000) DEFAULT NULL COMMENT '免填单参数信息',
  `SURE_SHEET_ARGS` varchar(4000) DEFAULT NULL COMMENT '免填单参数信息',
  `SURE_SHEET_ARGS_4` varchar(4000) DEFAULT NULL COMMENT '免填单参数信息',
  `SURE_SHEET_ARGS_3` varchar(4000) DEFAULT NULL COMMENT '免填单参数信息',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `SURE_SHEET_ARGS_2` varchar(4000) DEFAULT NULL COMMENT '免填单参数信息',
  PRIMARY KEY (`PRINT_ID`),
  KEY `IDX_SOBUSIPRINTINFO1` (`ORDER_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：免填单信息表\n分表方式：按用户编号分片和年月进行分表(如：SO_BUSI_PRINT_INFO_100_201110)';

/*Table structure for table `so_deal_task` */

DROP TABLE IF EXISTS `so_deal_task`;

CREATE TABLE `so_deal_task` (
  `DEAL_TASK_ID` bigint(20) DEFAULT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL,
  `BATCH_ORDER_ID` bigint(14) DEFAULT NULL,
  `STATE` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TASK_ID` varchar(150) DEFAULT NULL,
  `SERVICE_NAME` varchar(600) DEFAULT NULL,
  `MESSAGE` varchar(1500) DEFAULT NULL,
  `EXT1` varchar(600) DEFAULT NULL,
  `EXT2` varchar(600) DEFAULT NULL,
  `EXT3` varchar(600) DEFAULT NULL,
  `REMARK` varchar(600) DEFAULT NULL,
  `ERROR_MSG` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `so_file_info_tdc` */

DROP TABLE IF EXISTS `so_file_info_tdc`;

CREATE TABLE `so_file_info_tdc` (
  `FILE_INFO_ID` bigint(14) NOT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `FILE_FLAG` varchar(2) DEFAULT NULL COMMENT '1：开户   2：销户',
  `OPEN_DATE` datetime DEFAULT NULL,
  `TERMINATE_DATE` datetime DEFAULT NULL,
  `STATE` varchar(2) DEFAULT NULL COMMENT '1：未处理   2：已处理   3：处理失败',
  `REASON` varchar(255) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FILE_INFO_ID`),
  KEY `IDX_SO_FILE_INFO_TDC_02` (`FILE_FLAG`),
  KEY `IDX_SO_FILE_INFO_TDC_01` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `so_file_info_tdc_h` */

DROP TABLE IF EXISTS `so_file_info_tdc_h`;

CREATE TABLE `so_file_info_tdc_h` (
  `H_ID` bigint(12) NOT NULL,
  `FILE_INFO_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `FILE_FLAG` varchar(2) DEFAULT NULL COMMENT '1：开户   2：销户',
  `OPEN_DATE` datetime DEFAULT NULL,
  `TERMINATE_DATE` datetime DEFAULT NULL,
  `STATE` varchar(2) DEFAULT NULL COMMENT '1：未处理   2：已处理   3：处理失败',
  `REASON` varchar(255) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户年月分表';

/*Table structure for table `so_limit_grp_user` */

DROP TABLE IF EXISTS `so_limit_grp_user`;

CREATE TABLE `so_limit_grp_user` (
  `RELATE_ID` bigint(12) NOT NULL COMMENT '关系编号',
  `LIMIT_GRP_ID` bigint(12) DEFAULT NULL COMMENT '限制群编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号码',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更流水',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '变更时间',
  PRIMARY KEY (`RELATE_ID`),
  KEY `IDX_SO_LIMIT_GRP_USER_1` (`LIMIT_GRP_ID`),
  KEY `IDX_SO_LIMIT_GRP_USER_3` (`USER_ID`),
  KEY `IDX_SO_LIMIT_GRP_USER_2` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：业务限制群用户关系表\n分表：不分分表\n历史表：按年月进行分表(如:SO_LIMIT_GRP_USER_H_201110)';

/*Table structure for table `so_limit_grp_user_h` */

DROP TABLE IF EXISTS `so_limit_grp_user_h`;

CREATE TABLE `so_limit_grp_user_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `RELATE_ID` bigint(12) DEFAULT NULL COMMENT '关系编号',
  `LIMIT_GRP_ID` bigint(12) DEFAULT NULL COMMENT '限制群编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号码',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '变更流水',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '变更时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按年月进行分表(如:SO_LIMIT_GRP_USER_H_201110)';

/*Table structure for table `so_marketing_user_rec_h` */

DROP TABLE IF EXISTS `so_marketing_user_rec_h`;

CREATE TABLE `so_marketing_user_rec_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `REC_ID` bigint(12) DEFAULT NULL COMMENT '记录编号',
  `MARKETING_ID` bigint(12) DEFAULT NULL COMMENT '营销案编号',
  `CARD_CODE` varchar(20) DEFAULT NULL COMMENT '用户证件号码',
  `CARD_TYPE` bigint(2) DEFAULT NULL COMMENT '用户证件类型',
  `CUST_NAME` varchar(60) DEFAULT NULL COMMENT '用户姓名',
  `BILL_ID` varchar(15) DEFAULT NULL COMMENT '用户手机号码',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '登记时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员登陆组织',
  `OP_ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员所属组织',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市进行分表(SO_MARKETING_USER_REC_H_571)';

/*Table structure for table `so_owe_mem_h` */

DROP TABLE IF EXISTS `so_owe_mem_h`;

CREATE TABLE `so_owe_mem_h` (
  `USER_ID` bigint(14) NOT NULL COMMENT '用户编号',
  `BILL_ID` varchar(30) NOT NULL,
  `GROUP_BILL_ID` varchar(30) NOT NULL COMMENT '集团计费号码',
  `OFFER_ID` bigint(12) NOT NULL COMMENT 'OFFER_ID',
  `OS_STATUS` varchar(64) NOT NULL COMMENT '集团产品停开机状态',
  `STATE` varchar(3) NOT NULL COMMENT 'D 已处理 U 未处理 X 异常',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理时间',
  `TF_DATE` datetime DEFAULT NULL,
  `GROUP_REGION_ID` varchar(6) DEFAULT NULL COMMENT '集团地势编码',
  `USER_REGION_ID` varchar(6) DEFAULT NULL COMMENT '用户所在地市编码',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团停开机成员用户信息历史表\n分表方式：按按年月分表进行分表(如:SO_OWE_MEM_H_201203)';

/*Table structure for table `so_satisfy_sms_log` */

DROP TABLE IF EXISTS `so_satisfy_sms_log`;

CREATE TABLE `so_satisfy_sms_log` (
  `USER_ID` bigint(14) NOT NULL COMMENT '用户编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费编号',
  `SEND_DATE` datetime DEFAULT NULL COMMENT '短信发送时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  PRIMARY KEY (`USER_ID`),
  KEY `IDX_SO_SATISFY_SMS_LOG` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户满意意短信下发记录表\n分表方式：按用户编号分片和年月分表(如：北京：SO_SATISFY_SMS_LOG_100_201110,上海：SO_SATISFY_SMS_LOG_210_201110)';

/*Table structure for table `so_shop_cart` */

DROP TABLE IF EXISTS `so_shop_cart`;

CREATE TABLE `so_shop_cart` (
  `ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `DEFAULT_USER_ID` bigint(14) DEFAULT NULL,
  `DEFAULT_BILL_ID` varchar(30) DEFAULT NULL,
  `STATE` varchar(3) NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `PAY_TYPE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `so_shop_cart_detail` */

DROP TABLE IF EXISTS `so_shop_cart_detail`;

CREATE TABLE `so_shop_cart_detail` (
  `ID` bigint(12) NOT NULL,
  `CART_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_NAME` varchar(200) DEFAULT NULL,
  `OP_TYPE` char(3) DEFAULT NULL,
  `RELAT_ID` bigint(12) DEFAULT NULL,
  `RELAT_TYPE` char(1) DEFAULT NULL,
  `STATE` varchar(3) NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_SO_SHOP_CART_DETAIL_1` (`CART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车项记录表';

/*Table structure for table `so_shop_cart_detail_info` */

DROP TABLE IF EXISTS `so_shop_cart_detail_info`;

CREATE TABLE `so_shop_cart_detail_info` (
  `ID` bigint(12) NOT NULL,
  `DETAIL_ID` bigint(12) DEFAULT NULL,
  `INFO_1` varchar(4000) DEFAULT NULL,
  `INFO_2` varchar(4000) DEFAULT NULL,
  `INFO_3` varchar(4000) DEFAULT NULL,
  `INFO_4` varchar(4000) DEFAULT NULL,
  `STATE` varchar(3) NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_SO_SHOP_CART_DETAIL_INFO_1` (`DETAIL_ID`)
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

/*Table structure for table `sys_sequences_bak` */

DROP TABLE IF EXISTS `sys_sequences_bak`;

CREATE TABLE `sys_sequences_bak` (
  `SEQUENCE_NAME` varchar(60) NOT NULL,
  `START_BY` bigint(20) NOT NULL COMMENT 'SEQUENCE的最开始值',
  `INCREMENT_BY` bigint(10) NOT NULL COMMENT 'SEQUENCE的自增长度',
  `LAST_NUMBER` bigint(20) NOT NULL COMMENT 'SEQUENCE的当前值初始化为开始值',
  `JVM_STEP_BY` bigint(10) NOT NULL DEFAULT '200' COMMENT '缓存到JVM中的值，上线时默认为200,产品特有的自定义20'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
