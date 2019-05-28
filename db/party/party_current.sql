/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.24-log : Database - party
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`party` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `party`;

/*Table structure for table `cm_account` */

DROP TABLE IF EXISTS `cm_account`;

CREATE TABLE `cm_account` (
  `ACCT_ID` bigint(14) NOT NULL COMMENT '账户编号\n\n新账户编号生成规则：2位地市编码+10位序列号。',
  `ACCT_SERVICE_ID` varchar(30) DEFAULT NULL COMMENT '账户服务编号,割接数据存放老系统账户ID',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '关联客户编号\n包含三大类型的客户唯一标识',
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `LAST NAME` varchar(256) DEFAULT NULL,
  `ACCT_NAME` varchar(255) DEFAULT NULL COMMENT '账户名称',
  `ACCT_TYPE` bigint(2) DEFAULT NULL COMMENT '账户类型：（CM_ACCOUNT_TYPE）\n\n0	后付费账户\n1	预付费帐户',
  `ACCT_STATUS` bigint(2) DEFAULT NULL COMMENT '帐户状态（CM_ACCOUNT_STATUS）\n1	正常\n2	预销\n3	注销',
  `ACCT_PASSWORD` varchar(50) DEFAULT NULL COMMENT '合同编号',
  `CREDIT_LEVEL` bigint(2) DEFAULT NULL COMMENT '个人客户：\n定义有50-65级共15个级别\n集团客户：\n定义有0级，1级，2级，3级，4级，',
  `CREDIT_VALUE` bigint(10) DEFAULT NULL COMMENT '个人客户（信用度单位为分）\n50级：0\n51级：500\n52级：1000\n53级：1500\n54级：2000\n55级：2500\n56级：3000\n57级：5000\n58级：10000\n59级：15000\n60级：20000\n61级：30000\n62级：50000\n63级：60000\n64级：80000\n65级：200000\n集团客户（单位分）\n0级：0\n1级：60000',
  `INSTALLMENT_FLAG` bigint(2) DEFAULT NULL COMMENT '1：分期付款账户\n0：非分期付款账户',
  `URGE_STOP_FLAG` varchar(10) DEFAULT NULL COMMENT 'TAX FLAG ：1：Normal Tax Rate,2：VAT Exemption,3：Reverse Charge',
  `BILL_CYCLE_FLAG` bigint(2) DEFAULT NULL COMMENT 'telenor未使用\n分散账期标识\n1：开通；\n0：不开通。\n\n在开展分散账期期间需要逐步放开，避免一次性全放开之后无法控制。',
  `ACCT_BEHALF_PHONE` varchar(30) DEFAULT NULL COMMENT '是否免收托收费用 0：否，1：是',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ACCT_ID`),
  KEY `IDX_CM_ACCOUNT_1` (`CUST_ID`),
  KEY `IDX_CM_ACCOUNT_2` (`ACCT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户基本信息。\n包含个人客户、家庭客户和集团客户三大类型客户的账户，账户是需要按地市进行分表存储的。\n\n分表方式：租户+账户ID尾数分表\n分区方式：不分区\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_account_h` */

DROP TABLE IF EXISTS `cm_account_h`;

CREATE TABLE `cm_account_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '历史记录编号',
  `ACCT_ID` bigint(14) NOT NULL COMMENT '账户编号\n\n新账户编号生成规则：2位地市编码+10位序列号。',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '关联客户编号\n包含三大类型的客户唯一标识',
  `ACCT_NAME` varchar(255) DEFAULT NULL COMMENT '账户名称',
  `ACCT_TYPE` bigint(2) DEFAULT NULL COMMENT '账户类型：\n\n1	预付费账户\n2	后付费帐户\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_ACCOUNT_TYPE;',
  `ACCT_STATUS` bigint(2) DEFAULT NULL COMMENT '帐户状态\n1	正常\n2	预销\n3	注销\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_ACCOUNT_STATUS;',
  `ACCT_PASSWORD` varchar(50) DEFAULT NULL COMMENT '账户密码。\n预留，暂时没有这样的需求。',
  `CREDIT_LEVEL` bigint(2) DEFAULT NULL COMMENT '账户信用等级',
  `CREDIT_VALUE` bigint(10) DEFAULT NULL COMMENT '账户信用额度',
  `URGE_STOP_FLAG` varchar(10) DEFAULT NULL COMMENT '免催免停标志\n\n00：催停；01：可摧免停；10：免催可停；11：免催免停\n\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_ACCOUNT_URGE_STOP_FLAG;',
  `BILL_CYCLE_FLAG` bigint(2) DEFAULT NULL COMMENT '分散账期标识\n1：开通；\n0：不开通。\n\n在开展分散账期期间需要逐步放开，避免一次性全放开之后无法控制。',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `ACCT_BEHALF_PHONE` varchar(30) DEFAULT NULL COMMENT '代表号码',
  `INSTALLMENT_FLAG` bigint(2) DEFAULT NULL COMMENT '1：分期付款账户\n0：非分期付款账户',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户信息历史表\n\n分表方式：按年表\n分区方式：待定\n分区字段：待定\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_acct_address_rel` */

DROP TABLE IF EXISTS `cm_acct_address_rel`;

CREATE TABLE `cm_acct_address_rel` (
  `acct_address_rel_id` bigint(12) NOT NULL COMMENT '账期记录编号',
  `cm_acct_id` bigint(14) DEFAULT NULL COMMENT '账户编号\n            \n            新账户编号生成规则：2位地市编码+10位序列号。',
  `acct_id` bigint(12) DEFAULT NULL,
  `cust_cont_rela_id` bigint(12) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL COMMENT '记录状态\n            \n            U:有效 E:无效',
  `create_op_id` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `create_org_id` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `op_id` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `org_id` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `done_code` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `done_date` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `effective_date` datetime DEFAULT NULL COMMENT '客户生效日期',
  `expire_date` datetime DEFAULT NULL COMMENT '客户失效日期',
  PRIMARY KEY (`acct_address_rel_id`),
  KEY `fk_reference_27` (`cm_acct_id`),
  CONSTRAINT `fk_reference_27` FOREIGN KEY (`cm_acct_id`) REFERENCES `cm_account` (`ACCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录账户与账单地址关联关系\n分区方式：不分区';

/*Table structure for table `cm_acct_bill_cycle` */

DROP TABLE IF EXISTS `cm_acct_bill_cycle`;

CREATE TABLE `cm_acct_bill_cycle` (
  `CYCLE_ID` bigint(12) NOT NULL COMMENT '账期记录编号',
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `CYCLE_TYPE` bigint(2) DEFAULT NULL COMMENT '账期类型(CM_ACCOUNT_CYCLE_TYPE)\n年、月、季度、日\n1:日(暂不适用)\n2:周(暂不适用)\n4:年(暂不适用)\n5:月 \n6:季度(3,6,9,12)\n7:季度(2,5,8,11)\n8:季度(1,4,7,10)\n\nCM_ACCT_BILL_CYCLE 表中CYCLE_TYPE ：\n账期单位，如按年出账，则可定制几年出一次账',
  `CYCLE_UNIT` bigint(2) DEFAULT NULL COMMENT '出账周期（CM_ACCOUNT_CYCLE_UNIT）\n\n1：月\n2：季度',
  `BILL_DAY` bigint(6) DEFAULT NULL COMMENT '出账日',
  `BILL_DUE_DATE` bigint(6) DEFAULT NULL COMMENT '出账后多少天必须缴费',
  `CYCLE_REASON` varchar(255) DEFAULT NULL COMMENT '账期原因',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '缴费日修改原因',
  PRIMARY KEY (`CYCLE_ID`),
  KEY `IDX_CM_ACCT_BILL_CYCLE_1` (`ACCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='为支持分散账期，设计该表用于存放账户定制的出账日期信息，目前暂定可以支持定制按季度、月份、周等账期类型。\n\n分表方式：租户+账户ID尾数分表\n分区方式：不分区';

/*Table structure for table `cm_acct_bill_cycle_h` */

DROP TABLE IF EXISTS `cm_acct_bill_cycle_h`;

CREATE TABLE `cm_acct_bill_cycle_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '历史记录编号',
  `CYCLE_ID` bigint(12) NOT NULL COMMENT '账期记录编号',
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `CYCLE_TYPE` bigint(2) DEFAULT NULL COMMENT '账期类型\n年、月、日\n\n5: 月\n6:季度(3,6,9,12)\n7:季度(2,5,8,11)\n8:季度(1,4,7,10)',
  `CYCLE_UNIT` bigint(2) DEFAULT NULL COMMENT '出账周期\n\n国内一个月',
  `BILL_DAY` bigint(6) DEFAULT NULL COMMENT '出账日',
  `BILL_DUE_DATE` bigint(6) DEFAULT NULL COMMENT '出账后多少天必须缴费',
  `CYCLE_REASON` varchar(255) DEFAULT NULL COMMENT '账期原因',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`H_ID`),
  KEY `IDX_CM_ACCT_BILL_CYCLE_2` (`ACCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='为支持分散账期，设计该表用于存放账户定制的出账日期信息，目前暂定可以支持定制按季度、月份、周等账期类型。';

/*Table structure for table `cm_acct_payment` */

DROP TABLE IF EXISTS `cm_acct_payment`;

CREATE TABLE `cm_acct_payment` (
  `PAYMENT_ID` bigint(12) NOT NULL COMMENT '主键',
  `ACCT_ID` bigint(14) NOT NULL COMMENT '账户唯一标识',
  `PAY_METHOD` bigint(2) DEFAULT NULL COMMENT '付费方式（CM_ACCOUNT_PAY_METHOD）\n1  自有\n2  员工使用',
  `BANK_CONTRACT` varchar(255) DEFAULT NULL COMMENT '银行协议号',
  `PAYMENT_BANK_CODE` varchar(30) DEFAULT NULL COMMENT '该支付方案的帐户提供标识，当为现金时不填，为托收时，填对应的银行标识，为信用卡时，填对应的卡银行标识，等等',
  `PAYMENT_ACCOUNT` varchar(256) DEFAULT NULL COMMENT '该支付方式下对应的帐号，现金方式不用填写，托收方式填写银行帐号，信用卡方式填写信用卡号',
  `PAYMENT_ACCOUNT_NAME` varchar(256) DEFAULT NULL COMMENT '账单地址寄送名称',
  `PAYMENT_ACCOUNT_TYPE` bigint(2) DEFAULT NULL COMMENT 'telenor未使用\n支付帐户类型\n0	非银行帐户\n1	银行帐户\n2	专用存折帐户\n3	储蓄卡帐户\n4	信用卡日控制帐户\n5	信用卡非日控制帐户\n6	托收帐户\n7	金卡充值\n8	公免',
  `PAYMENT_ACCOUNT_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '支付账户失效日期',
  `PRIORITY` bigint(2) DEFAULT NULL COMMENT 'telenor未使用\n当前帐户所定制的各付款方式的优先级',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `PAY_TYPE` bigint(2) DEFAULT '0',
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `IDX_CM_ACCT_PAYMENT_1` (`ACCT_ID`),
  KEY `IDX_CM_ACCT_PAYMENT_3` (`PAY_METHOD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定义帐户的各种支付方案，包括现金、银行托收、买断、信用卡等。\n\n分表方式：租户+账户ID尾数分表\n分区方式：不分区\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_acct_payment_h` */

DROP TABLE IF EXISTS `cm_acct_payment_h`;

CREATE TABLE `cm_acct_payment_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '历史记录编号',
  `PAYMENT_ID` bigint(12) NOT NULL COMMENT '主键',
  `ACCT_ID` bigint(14) NOT NULL COMMENT '账户唯一标识',
  `PAY_METHOD` bigint(2) DEFAULT NULL COMMENT '使用类型：1  自有，2  员工使用',
  `BANK_CONTRACT` varchar(255) DEFAULT NULL COMMENT '银行协议号',
  `PAYMENT_BANK_CODE` varchar(30) DEFAULT NULL COMMENT '该支付方案的帐户提供标识，当为现金时不填，为托收时，填对应的银行标识，为信用卡时，填对应的卡银行标识，等等',
  `PAYMENT_ACCOUNT` varchar(256) DEFAULT NULL COMMENT '该支付方式下对应的帐号，现金方式不用填写，托收方式填写银行帐号，信用卡方式填写信用卡号',
  `PAYMENT_ACCOUNT_NAME` varchar(256) DEFAULT NULL COMMENT '当支付方式为银行转账方式和信用卡方式的时候，记录银行帐户名称。',
  `PAYMENT_ACCOUNT_TYPE` bigint(2) DEFAULT NULL,
  `PAYMENT_ACCOUNT_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '支付账户失效日期',
  `PRIORITY` bigint(2) DEFAULT NULL COMMENT '当前帐户所定制的各付款方式的优先级',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定义帐户的各种支付方案，包括现金、银行托收、买断、信用卡等。\n\n分表方式：按年月分表\n分区方式：待定\n分区字段：待定\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_address` */

DROP TABLE IF EXISTS `cm_address`;

CREATE TABLE `cm_address` (
  `addr_id` bigint(12) NOT NULL,
  `zip_code` varchar(6) DEFAULT NULL,
  `add_detail` varchar(255) DEFAULT NULL,
  `priority` varchar(2) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  `create_op_id` bigint(12) DEFAULT NULL,
  `create_org_id` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `done_date` datetime DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `region_id` varchar(8) DEFAULT NULL,
  `tenant_id` varchar(68) DEFAULT NULL,
  PRIMARY KEY (`addr_id`),
  UNIQUE KEY `index_id` (`addr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_billing_acct` */

DROP TABLE IF EXISTS `cm_billing_acct`;

CREATE TABLE `cm_billing_acct` (
  `SEQ_ID` bigint(12) NOT NULL,
  `ACCT_ID` bigint(12) NOT NULL,
  `PBS_NUMBER` varchar(128) DEFAULT NULL,
  `EAN` varchar(35) DEFAULT NULL,
  `STATE` varchar(3) NOT NULL COMMENT '记录状态N N U:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '账单地址ID',
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT6` varchar(1000) DEFAULT NULL,
  `EXT7` varchar(1000) DEFAULT NULL,
  `EXT8` varchar(1000) DEFAULT NULL,
  `EXT9` datetime DEFAULT NULL COMMENT 'ean生效时间',
  `EXT10` datetime DEFAULT NULL COMMENT 'ean失效时间',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_CM_BILLING_ACCT_1` (`PBS_NUMBER`),
  KEY `IDX_CM_BILLING_ACCT_2` (`EAN`),
  KEY `IDX_CM_BILLING_ACCT_3` (`EXT1`),
  KEY `IDX_CM_BILLING_ACCT_4` (`ACCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户分表';

/*Table structure for table `cm_billing_acct_21` */

DROP TABLE IF EXISTS `cm_billing_acct_21`;

CREATE TABLE `cm_billing_acct_21` (
  `SEQ_ID` bigint(12) NOT NULL,
  `ACCT_ID` bigint(12) NOT NULL,
  `PBS_NUMBER` varchar(128) DEFAULT NULL,
  `EAN` varchar(35) DEFAULT NULL,
  `STATE` varchar(3) NOT NULL COMMENT '记录状态N N U:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '账单地址ID',
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT6` varchar(1000) DEFAULT NULL,
  `EXT7` varchar(1000) DEFAULT NULL,
  `EXT8` varchar(1000) DEFAULT NULL,
  `EXT9` datetime DEFAULT NULL COMMENT 'ean生效时间',
  `EXT10` datetime DEFAULT NULL COMMENT 'ean失效时间',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_CM_BILLING_ACCT_1` (`PBS_NUMBER`) USING BTREE,
  KEY `IDX_CM_BILLING_ACCT_2` (`EAN`) USING BTREE,
  KEY `IDX_CM_BILLING_ACCT_3` (`EXT1`) USING BTREE,
  KEY `IDX_CM_BILLING_ACCT_4` (`ACCT_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户分表';

/*Table structure for table `cm_billing_acct_91` */

DROP TABLE IF EXISTS `cm_billing_acct_91`;

CREATE TABLE `cm_billing_acct_91` (
  `SEQ_ID` bigint(12) NOT NULL,
  `ACCT_ID` bigint(12) NOT NULL,
  `PBS_NUMBER` varchar(128) DEFAULT NULL,
  `EAN` varchar(35) DEFAULT NULL,
  `STATE` varchar(3) NOT NULL COMMENT '记录状态N N U:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '账单地址ID',
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT6` varchar(1000) DEFAULT NULL,
  `EXT7` varchar(1000) DEFAULT NULL,
  `EXT8` varchar(1000) DEFAULT NULL,
  `EXT9` datetime DEFAULT NULL COMMENT 'ean生效时间',
  `EXT10` datetime DEFAULT NULL COMMENT 'ean失效时间',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_CM_BILLING_ACCT_1` (`PBS_NUMBER`) USING BTREE,
  KEY `IDX_CM_BILLING_ACCT_2` (`EAN`) USING BTREE,
  KEY `IDX_CM_BILLING_ACCT_3` (`EXT1`) USING BTREE,
  KEY `IDX_CM_BILLING_ACCT_4` (`ACCT_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户分表';

/*Table structure for table `cm_billing_acct_h` */

DROP TABLE IF EXISTS `cm_billing_acct_h`;

CREATE TABLE `cm_billing_acct_h` (
  `H_ID` bigint(12) NOT NULL,
  `SEQ_ID` bigint(12) NOT NULL,
  `ACCT_ID` bigint(12) NOT NULL,
  `PBS_NUMBER` varchar(128) DEFAULT NULL,
  `EAN` varchar(35) DEFAULT NULL,
  `STATE` varchar(3) NOT NULL COMMENT '记录状态N N U:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT6` varchar(1000) DEFAULT NULL,
  `EXT7` varchar(1000) DEFAULT NULL,
  `EXT8` varchar(1000) DEFAULT NULL,
  `EXT9` datetime DEFAULT NULL,
  `EXT10` datetime DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `IDX_CM_BILLING_ACCT_1` (`PBS_NUMBER`),
  KEY `IDX_CM_BILLING_ACCT_2` (`EAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户分表';

/*Table structure for table `cm_contact_cont_medium` */

DROP TABLE IF EXISTS `cm_contact_cont_medium`;

CREATE TABLE `cm_contact_cont_medium` (
  `CONT_RELA_ID` bigint(12) NOT NULL,
  `CONT_ID` bigint(12) DEFAULT NULL COMMENT '联系人编号',
  `CONT_MED_TYPE_ID` bigint(12) DEFAULT NULL,
  `POSTAL_CODE` varchar(128) DEFAULT NULL,
  `ADDRESS_ID` bigint(12) DEFAULT NULL COMMENT '标准地址流水编码（标准地址详情表主键）',
  `ADDRESS_CODE` varchar(50) DEFAULT NULL COMMENT '第三方机构标准地址业务编号（例如：CPR、KOB包含的地址编号）',
  `ADDRESS_DETAIL` varchar(512) DEFAULT NULL COMMENT '标准地址详情',
  `EMAIL_ADDRESS` varchar(128) DEFAULT NULL COMMENT '关系类型是 电子地址大类的，填写该字段',
  `FAX_NUMBER` varchar(20) DEFAULT NULL COMMENT '暂时不启用',
  `CONT_NUMBER` varchar(20) DEFAULT NULL COMMENT '关系类型是 联系电话大类的，，填写该字典',
  `IS_NO_DISTURBING` bigint(2) DEFAULT NULL COMMENT '免打扰\n0:不可打扰\n1：可打扰',
  `PRIORITY` bigint(2) DEFAULT NULL COMMENT '不同关系类型标准地址优先级顺序（从1到n）',
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXP_DATE` date DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`CONT_RELA_ID`),
  KEY `IDX_CM_GROUP_ADDRESS_1` (`CONT_ID`),
  KEY `idx_cm_contact_cont_medium_2` (`EMAIL_ADDRESS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录联系人与联系媒介不同类型的关系\n\n分表方式：按租户分表';

/*Table structure for table `cm_contact_cont_medium_21` */

DROP TABLE IF EXISTS `cm_contact_cont_medium_21`;

CREATE TABLE `cm_contact_cont_medium_21` (
  `CONT_RELA_ID` bigint(12) NOT NULL,
  `CONT_ID` bigint(12) DEFAULT NULL,
  `CONT_MED_TYPE_ID` bigint(12) DEFAULT NULL,
  `POSTAL_CODE` varchar(128) DEFAULT NULL,
  `ADDRESS_ID` bigint(12) DEFAULT NULL,
  `ADDRESS_CODE` varchar(50) DEFAULT NULL,
  `ADDRESS_DETAIL` varchar(512) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(128) DEFAULT NULL,
  `FAX_NUMBER` varchar(20) DEFAULT NULL,
  `CONT_NUMBER` varchar(20) DEFAULT NULL,
  `IS_NO_DISTURBING` bigint(2) DEFAULT NULL,
  `PRIORITY` bigint(2) DEFAULT NULL,
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXP_DATE` date DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`CONT_RELA_ID`),
  KEY `IDX_CM_GROUP_ADDRESS_1_21` (`CONT_ID`) USING BTREE,
  KEY `idx_cm_contact_cont_medium_2` (`EMAIL_ADDRESS`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_contact_cont_medium_91` */

DROP TABLE IF EXISTS `cm_contact_cont_medium_91`;

CREATE TABLE `cm_contact_cont_medium_91` (
  `CONT_RELA_ID` bigint(12) NOT NULL,
  `CONT_ID` bigint(12) DEFAULT NULL,
  `CONT_MED_TYPE_ID` bigint(12) DEFAULT NULL,
  `POSTAL_CODE` varchar(128) DEFAULT NULL,
  `ADDRESS_ID` bigint(12) DEFAULT NULL,
  `ADDRESS_CODE` varchar(50) DEFAULT NULL,
  `ADDRESS_DETAIL` varchar(512) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(128) DEFAULT NULL,
  `FAX_NUMBER` varchar(20) DEFAULT NULL,
  `CONT_NUMBER` varchar(20) DEFAULT NULL,
  `IS_NO_DISTURBING` bigint(2) DEFAULT NULL,
  `PRIORITY` bigint(2) DEFAULT NULL,
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXP_DATE` date DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`CONT_RELA_ID`),
  KEY `IDX_CM_GROUP_ADDRESS_1_91` (`CONT_ID`) USING BTREE,
  KEY `idx_cm_contact_cont_medium_2` (`EMAIL_ADDRESS`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_contact_cont_medium_h` */

DROP TABLE IF EXISTS `cm_contact_cont_medium_h`;

CREATE TABLE `cm_contact_cont_medium_h` (
  `H_ID` bigint(12) NOT NULL,
  `CONT_RELA_ID` bigint(12) NOT NULL,
  `CONT_ID` bigint(12) DEFAULT NULL COMMENT '联系人编号',
  `CONT_MED_TYPE_ID` bigint(12) DEFAULT NULL,
  `POSTAL_CODE` varchar(128) DEFAULT NULL,
  `ADDRESS_ID` bigint(12) DEFAULT NULL COMMENT '标准地址流水编码（标准地址详情表主键）',
  `ADDRESS_CODE` varchar(50) DEFAULT NULL COMMENT '第三方机构标准地址业务编号（例如：CPR、KOB包含的地址编号）',
  `ADDRESS_DETAIL` varchar(512) DEFAULT NULL COMMENT '标准地址详情',
  `EMAIL_ADDRESS` varchar(128) DEFAULT NULL COMMENT '关系类型是 电子地址大类的，填写该字段',
  `FAX_NUMBER` varchar(20) DEFAULT NULL COMMENT '暂时不启用',
  `CONT_NUMBER` varchar(20) DEFAULT NULL COMMENT '关系类型是 联系电话大类的，，填写该字典',
  `IS_NO_DISTURBING` bigint(2) DEFAULT NULL COMMENT '免打扰\n0:不可打扰\n1：可打扰',
  `PRIORITY` bigint(2) DEFAULT NULL COMMENT '不同关系类型标准地址优先级顺序（从1到n）',
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXP_DATE` date DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `IDX_CM_GROUP_ADDRESS_1` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录联系人与联系媒介不同类型的关系历史';

/*Table structure for table `cm_contact_medium` */

DROP TABLE IF EXISTS `cm_contact_medium`;

CREATE TABLE `cm_contact_medium` (
  `cont_med_id` bigint(12) NOT NULL,
  `priority` varchar(2) DEFAULT NULL,
  `contact_name` varchar(64) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `receiver` varchar(64) DEFAULT NULL,
  `email_address` varchar(64) DEFAULT NULL,
  `fax_number` varchar(32) DEFAULT NULL,
  `cont_number` varchar(16) DEFAULT NULL,
  `addr_id` bigint(12) DEFAULT NULL,
  `create_op_id` bigint(12) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  `do_not_disturb` varchar(1) DEFAULT NULL,
  `create_org_id` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `done_date` datetime DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `region_id` varchar(8) DEFAULT NULL,
  `tenant_id` varchar(68) DEFAULT NULL,
  `column_23` char(10) DEFAULT NULL,
  PRIMARY KEY (`cont_med_id`),
  UNIQUE KEY `index_id` (`cont_med_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_contact_medium_rel` */

DROP TABLE IF EXISTS `cm_contact_medium_rel`;

CREATE TABLE `cm_contact_medium_rel` (
  `RELA_ID` bigint(12) NOT NULL COMMENT '集团客户与客户细分属性的关系编号（关系表主键）',
  `CUST_CONT_ID` bigint(12) NOT NULL COMMENT '客户编号\n\n所有类型客户的客户编号是唯一的。',
  `CONT_RELA_ID` bigint(12) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录客户联系人关系与联系媒介的关系（作用：同一个联系人作为不同的客户的联系人时，可以使用该联系人的不同联系媒介）';

/*Table structure for table `cm_contact_medium_rel_21` */

DROP TABLE IF EXISTS `cm_contact_medium_rel_21`;

CREATE TABLE `cm_contact_medium_rel_21` (
  `RELA_ID` bigint(12) NOT NULL,
  `CUST_CONT_ID` bigint(12) NOT NULL,
  `CONT_RELA_ID` bigint(12) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_contact_medium_rel_91` */

DROP TABLE IF EXISTS `cm_contact_medium_rel_91`;

CREATE TABLE `cm_contact_medium_rel_91` (
  `RELA_ID` bigint(12) NOT NULL,
  `CUST_CONT_ID` bigint(12) NOT NULL,
  `CONT_RELA_ID` bigint(12) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_contact_medium_rel_h` */

DROP TABLE IF EXISTS `cm_contact_medium_rel_h`;

CREATE TABLE `cm_contact_medium_rel_h` (
  `H_ID` bigint(12) NOT NULL,
  `RELA_ID` bigint(12) DEFAULT NULL COMMENT '集团客户与客户细分属性的关系编号（关系表主键）',
  `CUST_CONT_ID` bigint(12) DEFAULT NULL COMMENT '客户编号N N 所有类型客户的客户编号是唯一的。',
  `CONT_RELA_ID` bigint(12) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态N N U:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录客户联系人关系与联系媒介的关系（作用：同一个联系人作为不同的客户的联系人时，可以使用该联系人的不同联系媒介）N -&';

/*Table structure for table `cm_cust_acct_rel` */

DROP TABLE IF EXISTS `cm_cust_acct_rel`;

CREATE TABLE `cm_cust_acct_rel` (
  `REL_CUST_ID` bigint(14) NOT NULL COMMENT '关联客户编号',
  `ACCT_ID` bigint(14) NOT NULL COMMENT '账户编号',
  `REL_TYPE` bigint(2) NOT NULL COMMENT '关系类型\n1 自有\n2 关联',
  `CUST_TYPE` bigint(2) DEFAULT NULL COMMENT '客户类型\n1：个人\n3：集团',
  `ACCT_NAME` varchar(255) DEFAULT NULL COMMENT '账户名称',
  `INSTALLMENT_FLAG` bigint(2) DEFAULT NULL COMMENT '0：普通账户\n1：分期付款账户\n2：津贴账户',
  `PAY_METHOD` bigint(2) DEFAULT NULL COMMENT '付费方式（CM_ACCOUNT_PAY_METHOD）\n1  自有\n2  代付',
  `CYCLE_TYPE` bigint(2) DEFAULT NULL COMMENT '账期类型(CM_ACCOUNT_CYCLE_TYPE)\n5:月 \n6:季度\nCM_ACCT_BILL_CYCLE 表中CYCLE_TYPE ：\n账期单位，如按年出账，则可定制几年出一次账',
  `BILL_DAY` bigint(6) DEFAULT NULL COMMENT '出账日',
  `BILL_DUE_DATE` bigint(6) DEFAULT NULL COMMENT '出账后多少天必须缴费',
  `ACCT_ALIAS_NAME` varchar(256) DEFAULT NULL COMMENT '账户别名\n如：标明该账户的用途等信息。',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '帐户状态（CM_ACCOUNT_STATUS）1-active-正常 ,2-dunning-催缴停机 ,3-pre_term-预销户 ,4- inactive-账户已不出账 ,5- ca_flag-未缴清 ,6-writeoff_flag-呆坏账',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '割接数据存放老系统账户编号,新系统账户该字段为空',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '合同编号',
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`REL_CUST_ID`,`ACCT_ID`),
  KEY `IDX_CM_CUST_ACCT_REL_1` (`REL_CUST_ID`),
  KEY `IDX_CM_CUST_ACCT_REL_2` (`ACCT_ID`),
  KEY `idx_cm_cust_acct_rel_3` (`EXT2`),
  KEY `IDX_CM_CUST_ACCT_REL_4` (`EXT3`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户账户关系表\n\n用于记录如集团客户关联其关键人物等成员客户的账户时的特殊客户-账户关系。\n\n\n分表方式：租户分表\n分区方式：不分区\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_cust_acct_rel_21` */

DROP TABLE IF EXISTS `cm_cust_acct_rel_21`;

CREATE TABLE `cm_cust_acct_rel_21` (
  `REL_CUST_ID` bigint(14) NOT NULL,
  `ACCT_ID` bigint(14) NOT NULL,
  `REL_TYPE` bigint(2) NOT NULL,
  `CUST_TYPE` bigint(2) DEFAULT NULL,
  `ACCT_NAME` varchar(255) DEFAULT NULL,
  `INSTALLMENT_FLAG` bigint(2) DEFAULT NULL,
  `PAY_METHOD` bigint(2) DEFAULT NULL,
  `CYCLE_TYPE` bigint(2) DEFAULT NULL,
  `BILL_DAY` bigint(6) DEFAULT NULL,
  `BILL_DUE_DATE` bigint(6) DEFAULT NULL,
  `ACCT_ALIAS_NAME` varchar(256) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL COMMENT '帐户状态（CM_ACCOUNT_STATUS）1-active-正常 ,2-dunning-催缴停机 ,3-pre_term-预销户 ,4- inactive-账户已不出账 ,5- ca_flag-未缴清 ,6-writeoff_flag-呆坏账',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '割接数据存放老系统账户编号,新系统账户该字段为空',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '合同编号',
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`REL_CUST_ID`,`ACCT_ID`),
  KEY `IDX_CM_CUST_ACCT_REL_1_21` (`REL_CUST_ID`) USING BTREE,
  KEY `IDX_CM_CUST_ACCT_REL_2_21` (`ACCT_ID`) USING BTREE,
  KEY `idx_cm_cust_acct_rel_3` (`EXT2`) USING BTREE,
  KEY `IDX_CM_CUST_ACCT_REL_4` (`EXT3`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_acct_rel_91` */

DROP TABLE IF EXISTS `cm_cust_acct_rel_91`;

CREATE TABLE `cm_cust_acct_rel_91` (
  `REL_CUST_ID` bigint(14) NOT NULL,
  `ACCT_ID` bigint(14) NOT NULL,
  `REL_TYPE` bigint(2) NOT NULL,
  `CUST_TYPE` bigint(2) DEFAULT NULL,
  `ACCT_NAME` varchar(255) DEFAULT NULL,
  `INSTALLMENT_FLAG` bigint(2) DEFAULT NULL,
  `PAY_METHOD` bigint(2) DEFAULT NULL,
  `CYCLE_TYPE` bigint(2) DEFAULT NULL,
  `BILL_DAY` bigint(6) DEFAULT NULL,
  `BILL_DUE_DATE` bigint(6) DEFAULT NULL,
  `ACCT_ALIAS_NAME` varchar(256) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL COMMENT '帐户状态（CM_ACCOUNT_STATUS）1-active-正常 ,2-dunning-催缴停机 ,3-pre_term-预销户 ,4- inactive-账户已不出账 ,5- ca_flag-未缴清 ,6-writeoff_flag-呆坏账',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '割接数据存放老系统账户编号,新系统账户该字段为空',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '合同编号',
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`REL_CUST_ID`,`ACCT_ID`),
  KEY `IDX_CM_CUST_ACCT_REL_1_91` (`REL_CUST_ID`) USING BTREE,
  KEY `IDX_CM_CUST_ACCT_REL_2_91` (`ACCT_ID`) USING BTREE,
  KEY `idx_cm_cust_acct_rel_3` (`EXT2`) USING BTREE,
  KEY `IDX_CM_CUST_ACCT_REL_4` (`EXT3`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_acct_rel_h` */

DROP TABLE IF EXISTS `cm_cust_acct_rel_h`;

CREATE TABLE `cm_cust_acct_rel_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '历史记录编号',
  `REL_CUST_ID` bigint(14) DEFAULT NULL COMMENT '关联客户编号',
  `ACCT_ID` bigint(14) DEFAULT NULL COMMENT '账户编号',
  `REL_TYPE` bigint(2) DEFAULT NULL COMMENT '关系类型\n1 自有\n2 关联',
  `CUST_TYPE` bigint(2) DEFAULT NULL COMMENT '客户类型\n冗余存储，便于快速定位该账户关联的客户类型。\n必须与CUST_ID对应的客户类型一致。',
  `ACCT_NAME` varchar(255) DEFAULT NULL COMMENT '账户名称',
  `INSTALLMENT_FLAG` bigint(2) DEFAULT NULL COMMENT '0：普通账户\n1：分期付款账户\n2：津贴账户',
  `PAY_METHOD` bigint(2) DEFAULT NULL COMMENT '付费方式（CM_ACCOUNT_PAY_METHOD）\n1  自有\n2  代付',
  `CYCLE_TYPE` bigint(2) DEFAULT NULL COMMENT '账期类型(CM_ACCOUNT_CYCLE_TYPE)\n5:月 \n6:季度\nCM_ACCT_BILL_CYCLE 表中CYCLE_TYPE ：\n账期单位，如按年出账，则可定制几年出一次账',
  `BILL_DAY` bigint(6) DEFAULT NULL COMMENT '出账日',
  `BILL_DUE_DATE` bigint(6) DEFAULT NULL COMMENT '出账后多少天必须缴费',
  `ACCT_ALIAS_NAME` varchar(256) DEFAULT NULL COMMENT '账户别名\n如：标明该账户的用途等信息。',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户账户关系历史表\n\n用于记录如集团客户关联其关键人物等成员客户的账户时的特殊客户-账户关系。\n\n\n分表方式：按年\n分区方式：待定\n分区字段：待定\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_cust_bad_record` */

DROP TABLE IF EXISTS `cm_cust_bad_record`;

CREATE TABLE `cm_cust_bad_record` (
  `DELETION_DATE` datetime DEFAULT NULL COMMENT '请求类型\n1:删除\n4:新增',
  `DELETION_CAUS` varchar(256) DEFAULT NULL,
  `CREATE_BY` varchar(100) DEFAULT NULL,
  `REGIST_DATE` datetime DEFAULT NULL,
  `REGIST_REMARK` varchar(256) DEFAULT NULL,
  `AMOUNT` varchar(20) DEFAULT NULL,
  `BESKED_ID` varchar(20) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  `EXT7` varchar(100) DEFAULT NULL,
  `EXT8` varchar(100) DEFAULT NULL,
  `EXT9` varchar(100) DEFAULT NULL,
  `EXT10` varchar(100) DEFAULT NULL,
  `EXT11` varchar(100) DEFAULT NULL,
  `EXT12` varchar(100) DEFAULT NULL,
  `EXT13` varchar(100) DEFAULT NULL,
  `EXT14` varchar(1000) DEFAULT NULL,
  `EXT15` varchar(1000) DEFAULT NULL,
  `EXT16` varchar(1000) DEFAULT NULL,
  `EXT17` varchar(1000) DEFAULT NULL,
  `EXT18` varchar(1000) DEFAULT NULL,
  `EXT19` bigint(12) DEFAULT NULL,
  `EXT20` bigint(12) DEFAULT NULL,
  `EXT21` bigint(12) DEFAULT NULL,
  `EXT22` bigint(12) DEFAULT NULL,
  `EXT23` bigint(12) DEFAULT NULL,
  `EXT24` bigint(12) DEFAULT NULL,
  `EXT25` bigint(12) DEFAULT NULL,
  `EXT26` bigint(12) DEFAULT NULL,
  `EXT27` date DEFAULT NULL,
  `EXT28` date DEFAULT NULL,
  `EXT29` date DEFAULT NULL,
  `EXT30` date DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`BESKED_ID`,`CUST_ID`),
  KEY `idx_cm_cust_bad_record_1` (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_bad_record_21` */

DROP TABLE IF EXISTS `cm_cust_bad_record_21`;

CREATE TABLE `cm_cust_bad_record_21` (
  `DELETION_DATE` datetime DEFAULT NULL,
  `DELETION_CAUS` varchar(256) DEFAULT NULL,
  `CREATE_BY` varchar(100) DEFAULT NULL,
  `REGIST_DATE` datetime DEFAULT NULL,
  `REGIST_REMARK` varchar(256) DEFAULT NULL,
  `AMOUNT` varchar(20) DEFAULT NULL,
  `BESKED_ID` varchar(20) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  `EXT7` varchar(100) DEFAULT NULL,
  `EXT8` varchar(100) DEFAULT NULL,
  `EXT9` varchar(100) DEFAULT NULL,
  `EXT10` varchar(100) DEFAULT NULL,
  `EXT11` varchar(100) DEFAULT NULL,
  `EXT12` varchar(100) DEFAULT NULL,
  `EXT13` varchar(100) DEFAULT NULL,
  `EXT14` varchar(1000) DEFAULT NULL,
  `EXT15` varchar(1000) DEFAULT NULL,
  `EXT16` varchar(1000) DEFAULT NULL,
  `EXT17` varchar(1000) DEFAULT NULL,
  `EXT18` varchar(1000) DEFAULT NULL,
  `EXT19` bigint(12) DEFAULT NULL,
  `EXT20` bigint(12) DEFAULT NULL,
  `EXT21` bigint(12) DEFAULT NULL,
  `EXT22` bigint(12) DEFAULT NULL,
  `EXT23` bigint(12) DEFAULT NULL,
  `EXT24` bigint(12) DEFAULT NULL,
  `EXT25` bigint(12) DEFAULT NULL,
  `EXT26` bigint(12) DEFAULT NULL,
  `EXT27` date DEFAULT NULL,
  `EXT28` date DEFAULT NULL,
  `EXT29` date DEFAULT NULL,
  `EXT30` date DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`BESKED_ID`,`CUST_ID`),
  KEY `idx_cm_cust_bad_record_1` (`CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_bad_record_91` */

DROP TABLE IF EXISTS `cm_cust_bad_record_91`;

CREATE TABLE `cm_cust_bad_record_91` (
  `DELETION_DATE` datetime DEFAULT NULL,
  `DELETION_CAUS` varchar(256) DEFAULT NULL,
  `CREATE_BY` varchar(100) DEFAULT NULL,
  `REGIST_DATE` datetime DEFAULT NULL,
  `REGIST_REMARK` varchar(256) DEFAULT NULL,
  `AMOUNT` varchar(20) DEFAULT NULL,
  `BESKED_ID` varchar(20) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  `EXT7` varchar(100) DEFAULT NULL,
  `EXT8` varchar(100) DEFAULT NULL,
  `EXT9` varchar(100) DEFAULT NULL,
  `EXT10` varchar(100) DEFAULT NULL,
  `EXT11` varchar(100) DEFAULT NULL,
  `EXT12` varchar(100) DEFAULT NULL,
  `EXT13` varchar(100) DEFAULT NULL,
  `EXT14` varchar(1000) DEFAULT NULL,
  `EXT15` varchar(1000) DEFAULT NULL,
  `EXT16` varchar(1000) DEFAULT NULL,
  `EXT17` varchar(1000) DEFAULT NULL,
  `EXT18` varchar(1000) DEFAULT NULL,
  `EXT19` bigint(12) DEFAULT NULL,
  `EXT20` bigint(12) DEFAULT NULL,
  `EXT21` bigint(12) DEFAULT NULL,
  `EXT22` bigint(12) DEFAULT NULL,
  `EXT23` bigint(12) DEFAULT NULL,
  `EXT24` bigint(12) DEFAULT NULL,
  `EXT25` bigint(12) DEFAULT NULL,
  `EXT26` bigint(12) DEFAULT NULL,
  `EXT27` date DEFAULT NULL,
  `EXT28` date DEFAULT NULL,
  `EXT29` date DEFAULT NULL,
  `EXT30` date DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`BESKED_ID`,`CUST_ID`),
  KEY `idx_cm_cust_bad_record_1` (`CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_bad_record_h` */

DROP TABLE IF EXISTS `cm_cust_bad_record_h`;

CREATE TABLE `cm_cust_bad_record_h` (
  `H_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `DELETION_DATE` datetime DEFAULT NULL COMMENT '请求类型\n1:删除\n4:新增',
  `DELETION_CAUS` varchar(256) DEFAULT NULL,
  `CREATE_BY` varchar(100) DEFAULT NULL,
  `REGIST_DATE` datetime DEFAULT NULL,
  `REGIST_REMARK` varchar(256) DEFAULT NULL,
  `AMOUNT` varchar(20) DEFAULT NULL,
  `BESKED_ID` varchar(20) NOT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  `EXT7` varchar(100) DEFAULT NULL,
  `EXT8` varchar(100) DEFAULT NULL,
  `EXT9` varchar(100) DEFAULT NULL,
  `EXT10` varchar(100) DEFAULT NULL,
  `EXT11` varchar(100) DEFAULT NULL,
  `EXT12` varchar(100) DEFAULT NULL,
  `EXT13` varchar(100) DEFAULT NULL,
  `EXT14` varchar(1000) DEFAULT NULL,
  `EXT15` varchar(1000) DEFAULT NULL,
  `EXT16` varchar(1000) DEFAULT NULL,
  `EXT17` varchar(1000) DEFAULT NULL,
  `EXT18` varchar(1000) DEFAULT NULL,
  `EXT19` bigint(12) DEFAULT NULL,
  `EXT20` bigint(12) DEFAULT NULL,
  `EXT21` bigint(12) DEFAULT NULL,
  `EXT22` bigint(12) DEFAULT NULL,
  `EXT23` bigint(12) DEFAULT NULL,
  `EXT24` bigint(12) DEFAULT NULL,
  `EXT25` bigint(12) DEFAULT NULL,
  `EXT26` bigint(12) DEFAULT NULL,
  `EXT27` date DEFAULT NULL,
  `EXT28` date DEFAULT NULL,
  `EXT29` date DEFAULT NULL,
  `EXT30` date DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`BESKED_ID`,`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_cont_med_type` */

DROP TABLE IF EXISTS `cm_cust_cont_med_type`;

CREATE TABLE `cm_cust_cont_med_type` (
  `CONT_MED_TYPE_ID` bigint(12) NOT NULL,
  `UP_CONT_MED_TYPE_ID` bigint(12) DEFAULT NULL,
  `CONT_MED_TYPE_NAME` varchar(128) DEFAULT NULL,
  `USE_TYPE` bigint(2) NOT NULL COMMENT '0:适用所有\n1:客户联系媒介使用\n2:客户偏好媒介使用',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`CONT_MED_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主要存放客户的联系媒介，树形结构：\n客户实体地址：客户住址、邮寄地址、法律地址\n客户电子地址：EMAIL，QQ等\n客户联系电话号码：固话联系号码、移动电话联系号码、短信联系号码、彩信联系号码等';

/*Table structure for table `cm_cust_cont_med_type_21` */

DROP TABLE IF EXISTS `cm_cust_cont_med_type_21`;

CREATE TABLE `cm_cust_cont_med_type_21` (
  `CONT_MED_TYPE_ID` bigint(12) NOT NULL,
  `UP_CONT_MED_TYPE_ID` bigint(12) DEFAULT NULL,
  `CONT_MED_TYPE_NAME` varchar(128) DEFAULT NULL,
  `USE_TYPE` bigint(2) NOT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`CONT_MED_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_cont_med_type_91` */

DROP TABLE IF EXISTS `cm_cust_cont_med_type_91`;

CREATE TABLE `cm_cust_cont_med_type_91` (
  `CONT_MED_TYPE_ID` bigint(12) NOT NULL,
  `UP_CONT_MED_TYPE_ID` bigint(12) DEFAULT NULL,
  `CONT_MED_TYPE_NAME` varchar(128) DEFAULT NULL,
  `USE_TYPE` bigint(2) NOT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`CONT_MED_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_cont_med_type_h` */

DROP TABLE IF EXISTS `cm_cust_cont_med_type_h`;

CREATE TABLE `cm_cust_cont_med_type_h` (
  `H_ID` bigint(12) NOT NULL,
  `CONT_MED_TYPE_ID` bigint(12) NOT NULL,
  `CONT_MED_TYPE_NAME` varchar(128) DEFAULT NULL,
  `USE_TYPE` bigint(2) NOT NULL COMMENT '0:适用所有\n1:客户联系媒介使用\n2:客户偏好媒介使用',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主要存放客户的联系媒介，树形结构：\n客户实体地址：客户住址、邮寄地址、法律地址\n客户电子地址：EMAIL，QQ等\n客户联系电话号码：固话联系号码、移动电话联系号码、短信联系号码、彩信联系号码等';

/*Table structure for table `cm_cust_contact_medium` */

DROP TABLE IF EXISTS `cm_cust_contact_medium`;

CREATE TABLE `cm_cust_contact_medium` (
  `CUST_CONT_RELA_ID` bigint(12) NOT NULL COMMENT '集团客户与标准地址的关系编号（关系表主键）',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号\n\n所有类型客户的客户编号是唯一的。',
  `CONT_MED_TYPE_ID` bigint(12) DEFAULT NULL,
  `POSTAL_CODE` varchar(128) DEFAULT NULL,
  `ADDRESS_ID` bigint(12) DEFAULT NULL COMMENT '标准地址流水编码（标准地址详情表主键）',
  `ADDRESS_CODE` varchar(50) DEFAULT NULL COMMENT '第三方机构标准地址业务编号（例如：CPR、KOB包含的地址编号）',
  `ADDRESS_DETAIL` varchar(512) DEFAULT NULL COMMENT '标准地址详情',
  `EMAIL_ADDRESS` varchar(128) DEFAULT NULL COMMENT '关系类型是 电子地址大类的，填写该字段',
  `FAX_NUMBER` varchar(20) DEFAULT NULL COMMENT '暂时不启用',
  `CONT_NUMBER` varchar(20) DEFAULT NULL COMMENT '关系类型是 联系电话大类的，，填写该字典',
  `IS_NO_DISTURBING` bigint(2) DEFAULT NULL COMMENT '免打扰\n0:不可打扰\n1：可打扰',
  `PRIORITY` bigint(2) DEFAULT NULL COMMENT '不同关系类型标准地址优先级顺序（从1到n）',
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXP_DATE` date DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  `CONTACT_PERSON` varchar(255) DEFAULT NULL COMMENT '地址转收人',
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CUST_CONT_RELA_ID`),
  KEY `IDX_CM_GROUP_ADDRESS_1` (`CUST_ID`),
  KEY `idx_cm_cust_contact_medium_3` (`ADDRESS_ID`),
  KEY `idx_cm_cust_contact_medium_4` (`EMAIL_ADDRESS`),
  KEY `idx_cm_cust_contact_medium_5` (`CONT_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录客户与联系媒介不同类型的关系\n\n分表方式:按租户分表';

/*Table structure for table `cm_cust_contact_medium_21` */

DROP TABLE IF EXISTS `cm_cust_contact_medium_21`;

CREATE TABLE `cm_cust_contact_medium_21` (
  `CUST_CONT_RELA_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CONT_MED_TYPE_ID` bigint(12) DEFAULT NULL,
  `POSTAL_CODE` varchar(128) DEFAULT NULL,
  `ADDRESS_ID` bigint(12) DEFAULT NULL,
  `ADDRESS_CODE` varchar(50) DEFAULT NULL,
  `ADDRESS_DETAIL` varchar(512) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(128) DEFAULT NULL,
  `FAX_NUMBER` varchar(20) DEFAULT NULL,
  `CONT_NUMBER` varchar(20) DEFAULT NULL,
  `IS_NO_DISTURBING` bigint(2) DEFAULT NULL,
  `PRIORITY` bigint(2) DEFAULT NULL,
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXP_DATE` date DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  `CONTACT_PERSON` varchar(255) DEFAULT NULL COMMENT '地址转收人',
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CUST_CONT_RELA_ID`),
  KEY `IDX_CM_GROUP_ADDRESS_1_21` (`CUST_ID`) USING BTREE,
  KEY `idx_cm_cust_contact_medium_3` (`ADDRESS_ID`) USING BTREE,
  KEY `idx_cm_cust_contact_medium_3_21` (`ADDRESS_ID`) USING BTREE,
  KEY `idx_cm_cust_contact_medium_4_21` (`EMAIL_ADDRESS`) USING BTREE,
  KEY `idx_cm_cust_contact_medium_5_21` (`CONT_NUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_contact_medium_91` */

DROP TABLE IF EXISTS `cm_cust_contact_medium_91`;

CREATE TABLE `cm_cust_contact_medium_91` (
  `CUST_CONT_RELA_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CONT_MED_TYPE_ID` bigint(12) DEFAULT NULL,
  `POSTAL_CODE` varchar(128) DEFAULT NULL,
  `ADDRESS_ID` bigint(12) DEFAULT NULL,
  `ADDRESS_CODE` varchar(50) DEFAULT NULL,
  `ADDRESS_DETAIL` varchar(512) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(128) DEFAULT NULL,
  `FAX_NUMBER` varchar(20) DEFAULT NULL,
  `CONT_NUMBER` varchar(20) DEFAULT NULL,
  `IS_NO_DISTURBING` bigint(2) DEFAULT NULL,
  `PRIORITY` bigint(2) DEFAULT NULL,
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXP_DATE` date DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  `CONTACT_PERSON` varchar(255) DEFAULT NULL COMMENT '地址转收人',
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CUST_CONT_RELA_ID`),
  KEY `IDX_CM_GROUP_ADDRESS_1_91` (`CUST_ID`) USING BTREE,
  KEY `idx_cm_cust_contact_medium_3` (`ADDRESS_ID`) USING BTREE,
  KEY `idx_cm_cust_contact_medium_3_91` (`ADDRESS_ID`) USING BTREE,
  KEY `idx_cm_cust_contact_medium_4_91` (`EMAIL_ADDRESS`) USING BTREE,
  KEY `idx_cm_cust_contact_medium_5_91` (`CONT_NUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_contact_medium_h` */

DROP TABLE IF EXISTS `cm_cust_contact_medium_h`;

CREATE TABLE `cm_cust_contact_medium_h` (
  `H_ID` bigint(12) NOT NULL,
  `CUST_CONT_RELA_ID` bigint(12) NOT NULL COMMENT '集团客户与标准地址的关系编号（关系表主键）',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CONT_MED_TYPE_ID` bigint(12) DEFAULT NULL,
  `POSTAL_CODE` varchar(128) DEFAULT NULL,
  `ADDRESS_ID` bigint(12) DEFAULT NULL COMMENT '标准地址流水编码（标准地址详情表主键）',
  `ADDRESS_CODE` varchar(50) DEFAULT NULL COMMENT '第三方机构标准地址业务编号（例如：CPR、KOB包含的地址编号）',
  `ADDRESS_DETAIL` varchar(512) DEFAULT NULL COMMENT '标准地址详情',
  `EMAIL_ADDRESS` varchar(128) DEFAULT NULL COMMENT '关系类型是 电子地址大类的，填写该字段',
  `FAX_NUMBER` varchar(20) DEFAULT NULL COMMENT '暂时不启用',
  `CONT_NUMBER` varchar(20) DEFAULT NULL COMMENT '关系类型是 联系电话大类的，，填写该字典',
  `IS_NO_DISTURBING` bigint(2) DEFAULT NULL COMMENT '免打扰\n0:不可打扰\n1：可打扰',
  `PRIORITY` bigint(2) DEFAULT NULL COMMENT '不同关系类型标准地址优先级顺序（从1到n）',
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXP_DATE` date DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  `CONTACT_PERSON` varchar(255) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录客户与联系媒介不同类型的关系';

/*Table structure for table `cm_cust_delivery_address` */

DROP TABLE IF EXISTS `cm_cust_delivery_address`;

CREATE TABLE `cm_cust_delivery_address` (
  `cust_cont_rela_id` bigint(12) NOT NULL COMMENT '集团客户与标准地址的关系编号（关系表主键）',
  `cust_id` bigint(14) DEFAULT NULL COMMENT '客户编号\n            \n            所有类型客户的客户编号是唯一的。',
  `cont_med_type_id` bigint(12) DEFAULT NULL,
  `postal_code` varchar(128) DEFAULT NULL,
  `address_id` bigint(12) DEFAULT NULL COMMENT '标准地址流水编码（标准地址详情表主键）',
  `address_code` varchar(50) DEFAULT NULL COMMENT '第三方机构标准地址业务编号（例如：CPR、KOB包含的地址编号）',
  `address_detail` varchar(512) DEFAULT NULL COMMENT '标准地址详情',
  `email_address` varchar(128) DEFAULT NULL COMMENT '关系类型是 电子地址大类的，填写该字段',
  `fax_number` varchar(20) DEFAULT NULL COMMENT '暂时不启用',
  `cont_number` varchar(20) DEFAULT NULL COMMENT '关系类型是 联系电话大类的，，填写该字典',
  `is_no_disturbing` bigint(2) DEFAULT NULL COMMENT '免打扰\n            0:不可打扰\n            1：可打扰',
  `priority` bigint(2) DEFAULT NULL COMMENT '不同关系类型标准地址优先级顺序（从1到n）',
  `protect_eff_date` date DEFAULT NULL,
  `protect_exp_date` date DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL COMMENT '记录状态\n            \n            U:有效 E:无效',
  `create_op_id` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `create_org_id` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `op_id` bigint(12) DEFAULT NULL COMMENT '操作员',
  `org_id` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `done_code` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `done_date` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `effective_date` datetime DEFAULT NULL COMMENT '客户生效日期',
  `expire_date` datetime DEFAULT NULL COMMENT '客户失效日期',
  `region_id` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `remarks` varchar(256) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `ext1` varchar(100) DEFAULT NULL COMMENT '联系人FIRSTNAME',
  `ext2` varchar(100) DEFAULT NULL COMMENT '联系人LASTNAME',
  `ext3` varchar(100) DEFAULT NULL,
  `ext4` varchar(100) DEFAULT NULL,
  `ext5` varchar(100) DEFAULT NULL,
  `ext6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cust_cont_rela_id`),
  KEY `cust_id` (`cust_id`,`cont_med_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录客户物流地址\n分表方式:按租户分表';

/*Table structure for table `cm_cust_prefer_channel` */

DROP TABLE IF EXISTS `cm_cust_prefer_channel`;

CREATE TABLE `cm_cust_prefer_channel` (
  `PREFER_CHANNEL_ID` bigint(12) NOT NULL,
  `CUST_CONT_RELA_ID` bigint(12) DEFAULT NULL COMMENT '集团客户与标准地址的关系编号（关系表主键）',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '个人客户编号\n客户唯一标识(主键)，来源于系统序列号\n标明此处的个人客户唯一标识与基础客户的唯一标识是不一样的。',
  `PERFER_TYPE` bigint(2) NOT NULL COMMENT '1:偏好媒介\n2:偏好营业厅',
  `PREFER_CHANNEL_NAME` varchar(128) DEFAULT NULL,
  `PRIOR` bigint(2) DEFAULT NULL COMMENT '数字越小优先级越高',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`PREFER_CHANNEL_ID`),
  KEY `idx_cm_cust_prefer_channel_1` (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_prefer_channel_21` */

DROP TABLE IF EXISTS `cm_cust_prefer_channel_21`;

CREATE TABLE `cm_cust_prefer_channel_21` (
  `PREFER_CHANNEL_ID` bigint(12) NOT NULL,
  `CUST_CONT_RELA_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `PERFER_TYPE` bigint(2) NOT NULL COMMENT '1:偏好媒介\n2:偏好营业厅',
  `PREFER_CHANNEL_NAME` varchar(128) DEFAULT NULL,
  `PRIOR` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`PREFER_CHANNEL_ID`),
  KEY `idx_cm_cust_prefer_channel_1` (`CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_prefer_channel_91` */

DROP TABLE IF EXISTS `cm_cust_prefer_channel_91`;

CREATE TABLE `cm_cust_prefer_channel_91` (
  `PREFER_CHANNEL_ID` bigint(12) NOT NULL,
  `CUST_CONT_RELA_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `PERFER_TYPE` bigint(2) NOT NULL COMMENT '1:偏好媒介\n2:偏好营业厅',
  `PREFER_CHANNEL_NAME` varchar(128) DEFAULT NULL,
  `PRIOR` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`PREFER_CHANNEL_ID`),
  KEY `idx_cm_cust_prefer_channel_1` (`CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_prefer_channel_h` */

DROP TABLE IF EXISTS `cm_cust_prefer_channel_h`;

CREATE TABLE `cm_cust_prefer_channel_h` (
  `H_ID` bigint(12) NOT NULL,
  `PREFER_CHANNEL_ID` bigint(12) NOT NULL,
  `PERFER_TYPE` bigint(2) NOT NULL COMMENT '1:偏好媒介\n2:偏好营业厅',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '个人客户编号\n客户唯一标识(主键)，来源于系统序列号\n标明此处的个人客户唯一标识与基础客户的唯一标识是不一样的。',
  `CUST_CONT_RELA_ID` bigint(12) DEFAULT NULL COMMENT '集团客户与标准地址的关系编号（关系表主键）',
  `PREFER_CHANNEL_NAME` varchar(128) DEFAULT NULL,
  `PRIOR` bigint(2) DEFAULT NULL COMMENT '数字越小优先级越高',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_segment` */

DROP TABLE IF EXISTS `cm_cust_segment`;

CREATE TABLE `cm_cust_segment` (
  `SEGMENT_ID` bigint(12) NOT NULL COMMENT '客户细分属性编号（主键）',
  `UP_SEGMENT_ID` bigint(12) DEFAULT NULL COMMENT '客户细分属性编号（主键）',
  `REL_ID` bigint(12) DEFAULT NULL COMMENT '关联ID',
  `SEGMENT_NAME` varchar(128) DEFAULT NULL COMMENT '客户细分名称',
  `ALLOW_INHERITABLE` bigint(2) DEFAULT NULL COMMENT '允许可被继承\n0：不允许可被继承\n1：允许可被继承',
  `ALLOW_REVISABLE` bigint(2) DEFAULT NULL COMMENT '0：不允许\n1：允许',
  `ALLOW_CREDIT_CALCULATED` bigint(2) DEFAULT NULL COMMENT '0：不允许可被计算信用度\n1：允许可被计算信用度',
  `ALLOW_APPROVABLE` bigint(2) DEFAULT NULL COMMENT '0：不允许可被审批\n1：允许可被审批',
  `ALLOW_MANUAL` bigint(2) DEFAULT NULL COMMENT '0:不可以\n1：可以',
  `PROCESS_DEF` varchar(128) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  `NOTICE_PERIOD` bigint(12) DEFAULT NULL COMMENT '通知期',
  `NOTIFY_TYPE` bigint(2) DEFAULT NULL COMMENT '1:in,2:out.',
  PRIMARY KEY (`SEGMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户细分定义，作用于个人客户和集团客户。';

/*Table structure for table `cm_cust_segment_21` */

DROP TABLE IF EXISTS `cm_cust_segment_21`;

CREATE TABLE `cm_cust_segment_21` (
  `SEGMENT_ID` bigint(12) NOT NULL,
  `UP_SEGMENT_ID` bigint(12) DEFAULT NULL,
  `REL_ID` bigint(12) DEFAULT NULL,
  `SEGMENT_NAME` varchar(128) DEFAULT NULL,
  `ALLOW_INHERITABLE` bigint(2) DEFAULT NULL,
  `ALLOW_REVISABLE` bigint(2) DEFAULT NULL,
  `ALLOW_CREDIT_CALCULATED` bigint(2) DEFAULT NULL,
  `ALLOW_APPROVABLE` bigint(2) DEFAULT NULL,
  `ALLOW_MANUAL` bigint(2) DEFAULT NULL,
  `PROCESS_DEF` varchar(128) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  `NOTICE_PERIOD` bigint(12) DEFAULT NULL,
  `NOTIFY_TYPE` bigint(2) DEFAULT NULL COMMENT '1:in,2:out.',
  PRIMARY KEY (`SEGMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_segment_91` */

DROP TABLE IF EXISTS `cm_cust_segment_91`;

CREATE TABLE `cm_cust_segment_91` (
  `SEGMENT_ID` bigint(12) NOT NULL,
  `UP_SEGMENT_ID` bigint(12) DEFAULT NULL,
  `REL_ID` bigint(12) DEFAULT NULL,
  `SEGMENT_NAME` varchar(128) DEFAULT NULL,
  `ALLOW_INHERITABLE` bigint(2) DEFAULT NULL,
  `ALLOW_REVISABLE` bigint(2) DEFAULT NULL,
  `ALLOW_CREDIT_CALCULATED` bigint(2) DEFAULT NULL,
  `ALLOW_APPROVABLE` bigint(2) DEFAULT NULL,
  `ALLOW_MANUAL` bigint(2) DEFAULT NULL,
  `PROCESS_DEF` varchar(128) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  `NOTICE_PERIOD` bigint(12) DEFAULT NULL,
  `NOTIFY_TYPE` bigint(2) DEFAULT NULL COMMENT '1:in,2:out.',
  PRIMARY KEY (`SEGMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_segment_h` */

DROP TABLE IF EXISTS `cm_cust_segment_h`;

CREATE TABLE `cm_cust_segment_h` (
  `H_ID` bigint(12) NOT NULL,
  `SEGMENT_ID` bigint(12) NOT NULL COMMENT '客户细分属性编号（主键）',
  `UP_SEGMENT_ID` bigint(12) DEFAULT NULL COMMENT '客户细分属性编号（主键）',
  `SEGMENT_NAME` varchar(128) DEFAULT NULL COMMENT '客户细分名称',
  `ALLOW_INHERITABLE` bigint(2) DEFAULT NULL COMMENT '允许可被继承\n0：不允许可被继承\n1：允许可被继承',
  `ALLOW_REVISABLE` bigint(2) DEFAULT NULL,
  `ALLOW_CREDIT_CALCULATED` bigint(2) DEFAULT NULL,
  `ALLOW_APPROVABLE` bigint(2) DEFAULT NULL,
  `ALLOW_MANUAL` bigint(2) DEFAULT NULL,
  `PROCESS_DEF` varchar(128) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  `NOTICE_PERIOD` bigint(12) DEFAULT NULL COMMENT '通知期',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户细分定义，作用于个人客户和集团客户。';

/*Table structure for table `cm_cust_segment_rela` */

DROP TABLE IF EXISTS `cm_cust_segment_rela`;

CREATE TABLE `cm_cust_segment_rela` (
  `RELA_ID` bigint(12) NOT NULL COMMENT '集团客户与客户细分属性的关系编号（关系表主键）',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号\n\n所有类型客户的客户编号是唯一的。',
  `SEGMENT_ID` bigint(12) DEFAULT NULL COMMENT '客户细分属性编号（主键）',
  `IS_INHERITABLE` bigint(2) DEFAULT NULL COMMENT '是否可被继承\n0：不被继承\n1：可被继承',
  `IS_REVISABLE` bigint(2) DEFAULT NULL COMMENT '0：不允许\n1：允许',
  `IS_CREDIT_CALCULATED` bigint(2) DEFAULT NULL COMMENT '是否计算信用度\n0：不计算\n1：需要计算',
  `IS_CREDIT_RECALCULATED` bigint(2) DEFAULT NULL COMMENT '是否计算信用度\n0：不计算\n1：重新计算',
  `IS_APPROVABLE` bigint(2) DEFAULT NULL COMMENT '是否审批\n0：不需审批\n1：需要审批',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  `NOTICE_PERIOD` bigint(12) DEFAULT NULL COMMENT '通知期',
  PRIMARY KEY (`RELA_ID`),
  KEY `IDX_GROUP_SEGMENTATTR_RELA_1` (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录客户和客户细分的关系';

/*Table structure for table `cm_cust_segment_rela_21` */

DROP TABLE IF EXISTS `cm_cust_segment_rela_21`;

CREATE TABLE `cm_cust_segment_rela_21` (
  `RELA_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `SEGMENT_ID` bigint(12) DEFAULT NULL,
  `IS_INHERITABLE` bigint(2) DEFAULT NULL,
  `IS_REVISABLE` bigint(2) DEFAULT NULL,
  `IS_CREDIT_CALCULATED` bigint(2) DEFAULT NULL,
  `IS_CREDIT_RECALCULATED` bigint(2) DEFAULT NULL,
  `IS_APPROVABLE` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  `NOTICE_PERIOD` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`),
  KEY `IDX_ROUP_SEGMENTATTR_RELA_1_21` (`CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_segment_rela_91` */

DROP TABLE IF EXISTS `cm_cust_segment_rela_91`;

CREATE TABLE `cm_cust_segment_rela_91` (
  `RELA_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `SEGMENT_ID` bigint(12) DEFAULT NULL,
  `IS_INHERITABLE` bigint(2) DEFAULT NULL,
  `IS_REVISABLE` bigint(2) DEFAULT NULL,
  `IS_CREDIT_CALCULATED` bigint(2) DEFAULT NULL,
  `IS_CREDIT_RECALCULATED` bigint(2) DEFAULT NULL,
  `IS_APPROVABLE` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  `NOTICE_PERIOD` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`),
  KEY `IDX_ROUP_SEGMENTATTR_RELA_1_91` (`CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_cust_segment_rela_h` */

DROP TABLE IF EXISTS `cm_cust_segment_rela_h`;

CREATE TABLE `cm_cust_segment_rela_h` (
  `H_ID` bigint(12) NOT NULL,
  `RELA_ID` bigint(12) NOT NULL COMMENT '集团客户与客户细分属性的关系编号（关系表主键）',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号\n\n所有类型客户的客户编号是唯一的。',
  `SEGMENT_ID` bigint(12) DEFAULT NULL COMMENT '客户细分属性编号（主键）',
  `IS_INHERITABLE` bigint(2) DEFAULT NULL COMMENT '是否可被继承\n0：不被继承\n1：可被继承',
  `IS_REVISABLE` bigint(2) DEFAULT NULL,
  `IS_CREDIT_CALCULATED` bigint(2) DEFAULT NULL COMMENT '是否计算信用度\n0：不计算\n1：需要计算',
  `IS_CREDIT_RECALCULATED` bigint(2) DEFAULT NULL COMMENT '是否计算信用度\n0：不计算\n1：重新计算',
  `IS_APPROVABLE` bigint(2) DEFAULT NULL COMMENT '是否审批\n0：不需审批\n1：需要审批',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  `NOTICE_PERIOD` bigint(12) DEFAULT NULL COMMENT '通知期',
  PRIMARY KEY (`H_ID`),
  KEY `IDX_GROUP_SEGMENTATTR_RELA_1` (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录客户和客户细分的关系';

/*Table structure for table `cm_department_member_assoc` */

DROP TABLE IF EXISTS `cm_department_member_assoc`;

CREATE TABLE `cm_department_member_assoc` (
  `rel_id` bigint(12) NOT NULL,
  `member_id` bigint(12) DEFAULT NULL,
  `department_id` bigint(12) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  `create_op_id` bigint(12) DEFAULT NULL,
  `create_org_id` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `done_date` datetime DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `region_id` varchar(8) DEFAULT NULL,
  `tenant_id` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`rel_id`),
  UNIQUE KEY `index_id` (`rel_id`),
  KEY `index_custid` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_accounting` */

DROP TABLE IF EXISTS `cm_group_accounting`;

CREATE TABLE `cm_group_accounting` (
  `CUST_ID` bigint(14) NOT NULL COMMENT '客户编号\n\n所有类型客户的客户编号是唯一的。',
  `LISTED_ON_STOCK_EXCHANGE` varchar(3) DEFAULT NULL COMMENT '’JA’, if yes, otherwise ’nej’',
  `RATING_CODE` varchar(20) DEFAULT NULL,
  `FISCAL_YEAR` varchar(5) DEFAULT NULL COMMENT 'YYYY or YY/YY—财政年份',
  `REVENUE` varchar(15) DEFAULT NULL COMMENT '收入',
  `LAST_YEAR_EMPLOYEES` bigint(12) DEFAULT NULL,
  `ACCOUNT_REMARK` varchar(1000) DEFAULT NULL COMMENT '备注',
  `GROSS_PROFIT` varchar(15) DEFAULT NULL COMMENT '毛利',
  `EARNINGS` varchar(15) DEFAULT NULL COMMENT '收益',
  `NET_PROFIT_YEARLY` varchar(15) DEFAULT NULL,
  `STATUS_BALANCE` varchar(15) DEFAULT NULL COMMENT '平衡状况',
  `FIXED_SSETS` varchar(15) DEFAULT NULL COMMENT '固定资产',
  `LAND_AND_BUILDINGS` varchar(15) DEFAULT NULL COMMENT '土地及建筑物',
  `CURRENT_ASSETS` varchar(15) DEFAULT NULL COMMENT '流动资产',
  `EQUITY` varchar(15) DEFAULT NULL COMMENT '股票',
  `PROVISIONS` varchar(15) DEFAULT NULL COMMENT '规定',
  `SUBORDINARY_LOAN_CAPITAL` varchar(15) DEFAULT NULL COMMENT '关于从属贷款资金',
  `LONG_TERM_DEBT` varchar(15) DEFAULT NULL COMMENT '长期债务',
  `MORTGAGES` varchar(15) DEFAULT NULL COMMENT '抵押贷款',
  `SHORT_TERM_DEBT` varchar(15) DEFAULT NULL COMMENT '短期债务',
  `COVERAGE` varchar(15) DEFAULT NULL COMMENT '覆盖',
  `OPERATING_MARGIN` varchar(15) DEFAULT NULL COMMENT '营业利润率',
  `RETURN_ON_ASSETS` varchar(15) DEFAULT NULL COMMENT '资产报酬率',
  `DEGREE_OF_LIQUIDITYI` varchar(15) DEFAULT NULL COMMENT '流动性程度1',
  `DEGREE_OF_LIQUIDITY2` varchar(15) DEFAULT NULL COMMENT '流动性程度2',
  `SOLVENCY_ATIO` varchar(15) DEFAULT NULL COMMENT '偿付能力充足率',
  `DEPRECIATION` varchar(15) DEFAULT NULL COMMENT '折旧',
  `FINANCE_ITEMS` varchar(15) DEFAULT NULL COMMENT '金融项目',
  `OPERATING_PROFIT` varchar(15) DEFAULT NULL COMMENT '营业利润',
  `EXTRAORDINARY_ITEMS` varchar(15) DEFAULT NULL COMMENT '特别项目',
  `PROFIT_BEFORE_TAX` varchar(15) DEFAULT NULL COMMENT '税前利润',
  `CASH` varchar(15) DEFAULT NULL COMMENT '现金',
  `TRADE_CREDITORS` varchar(15) DEFAULT NULL COMMENT '应付账款',
  `EMPLOYEES` varchar(15) DEFAULT NULL COMMENT '雇员',
  `FINANCIAL_REVENUE` varchar(15) DEFAULT NULL COMMENT '财政收入',
  `FINANCIAL_EXPENDITURE` varchar(15) DEFAULT NULL COMMENT '财政支出',
  `IMMAT_CONSTRUCTION_ACTIVITIES` varchar(15) DEFAULT NULL COMMENT '精致建筑活动',
  `MAT_CONSTRUCTION_ACTIVITIES` varchar(15) DEFAULT NULL COMMENT '粗糙建筑活动',
  `PRIM_RES_PER_EMPLOYEE` varchar(15) DEFAULT NULL COMMENT '每个员工的赠品资源',
  `ORD_RES_PER_EMPLOYEE` varchar(15) DEFAULT NULL COMMENT '每个员工的订单资源',
  `NET_GAINS_PER_EMPLOYEE` varchar(15) DEFAULT NULL COMMENT '每个员工的净利润',
  `FIXED_ASSETS_PER_EMPLOYEE` varchar(15) DEFAULT NULL COMMENT '每个员工的固定资产',
  `CAPACITY_GRADE` varchar(15) DEFAULT NULL COMMENT '能力级别',
  `ZERO_TURNOVER` varchar(15) DEFAULT NULL COMMENT '零成交',
  `SAFETY_MARGIN` varchar(15) DEFAULT NULL COMMENT '安全边际',
  `ASSETS_TURNOVER_RATE` varchar(15) DEFAULT NULL COMMENT '资产周转率',
  `CREDIT_PERIOD_CREDIT` varchar(15) DEFAULT NULL COMMENT '信用期信贷',
  `FIXED_ASSETS_TURNOVER_RATE` varchar(15) DEFAULT NULL COMMENT '固定资产周转率',
  `CAPITAL_GRADE` varchar(15) DEFAULT NULL COMMENT '资本等级',
  `SALERY_GRADE` varchar(15) DEFAULT NULL COMMENT '工资等级',
  `STAFF_COSTS` varchar(15) DEFAULT NULL COMMENT '员工成本',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `CREDIT_MAX_CURRENCY` varchar(3) DEFAULT NULL,
  `CREDIT_MAX_AMOUNT` varchar(15) DEFAULT NULL,
  `RISC_GROUP` varchar(3) DEFAULT NULL,
  `PUBLICATION_DATE` varchar(15) DEFAULT NULL,
  `EXT1` varchar(15) DEFAULT NULL,
  `EXT2` varchar(15) DEFAULT NULL,
  `EXT3` varchar(15) DEFAULT NULL,
  `EXT4` varchar(15) DEFAULT NULL,
  `EXT5` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团会计信息表，保存集团客户的会计信息。\n\n按租户分表。';

/*Table structure for table `cm_group_accounting_21` */

DROP TABLE IF EXISTS `cm_group_accounting_21`;

CREATE TABLE `cm_group_accounting_21` (
  `CUST_ID` bigint(14) NOT NULL,
  `LISTED_ON_STOCK_EXCHANGE` varchar(3) DEFAULT NULL,
  `RATING_CODE` varchar(20) DEFAULT NULL,
  `FISCAL_YEAR` varchar(5) DEFAULT NULL,
  `REVENUE` varchar(15) DEFAULT NULL,
  `LAST_YEAR_EMPLOYEES` bigint(12) DEFAULT NULL,
  `ACCOUNT_REMARK` varchar(1000) DEFAULT NULL,
  `GROSS_PROFIT` varchar(15) DEFAULT NULL,
  `EARNINGS` varchar(15) DEFAULT NULL,
  `NET_PROFIT_YEARLY` varchar(15) DEFAULT NULL,
  `STATUS_BALANCE` varchar(15) DEFAULT NULL,
  `FIXED_SSETS` varchar(15) DEFAULT NULL,
  `LAND_AND_BUILDINGS` varchar(15) DEFAULT NULL,
  `CURRENT_ASSETS` varchar(15) DEFAULT NULL,
  `EQUITY` varchar(15) DEFAULT NULL,
  `PROVISIONS` varchar(15) DEFAULT NULL,
  `SUBORDINARY_LOAN_CAPITAL` varchar(15) DEFAULT NULL,
  `LONG_TERM_DEBT` varchar(15) DEFAULT NULL,
  `MORTGAGES` varchar(15) DEFAULT NULL,
  `SHORT_TERM_DEBT` varchar(15) DEFAULT NULL,
  `COVERAGE` varchar(15) DEFAULT NULL,
  `OPERATING_MARGIN` varchar(15) DEFAULT NULL,
  `RETURN_ON_ASSETS` varchar(15) DEFAULT NULL,
  `DEGREE_OF_LIQUIDITYI` varchar(15) DEFAULT NULL,
  `DEGREE_OF_LIQUIDITY2` varchar(15) DEFAULT NULL,
  `SOLVENCY_ATIO` varchar(15) DEFAULT NULL,
  `DEPRECIATION` varchar(15) DEFAULT NULL,
  `FINANCE_ITEMS` varchar(15) DEFAULT NULL,
  `OPERATING_PROFIT` varchar(15) DEFAULT NULL,
  `EXTRAORDINARY_ITEMS` varchar(15) DEFAULT NULL,
  `PROFIT_BEFORE_TAX` varchar(15) DEFAULT NULL,
  `CASH` varchar(15) DEFAULT NULL,
  `TRADE_CREDITORS` varchar(15) DEFAULT NULL,
  `EMPLOYEES` varchar(15) DEFAULT NULL,
  `FINANCIAL_REVENUE` varchar(15) DEFAULT NULL,
  `FINANCIAL_EXPENDITURE` varchar(15) DEFAULT NULL,
  `IMMAT_CONSTRUCTION_ACTIVITIES` varchar(15) DEFAULT NULL,
  `MAT_CONSTRUCTION_ACTIVITIES` varchar(15) DEFAULT NULL,
  `PRIM_RES_PER_EMPLOYEE` varchar(15) DEFAULT NULL,
  `ORD_RES_PER_EMPLOYEE` varchar(15) DEFAULT NULL,
  `NET_GAINS_PER_EMPLOYEE` varchar(15) DEFAULT NULL,
  `FIXED_ASSETS_PER_EMPLOYEE` varchar(15) DEFAULT NULL,
  `CAPACITY_GRADE` varchar(15) DEFAULT NULL,
  `ZERO_TURNOVER` varchar(15) DEFAULT NULL,
  `SAFETY_MARGIN` varchar(15) DEFAULT NULL,
  `ASSETS_TURNOVER_RATE` varchar(15) DEFAULT NULL,
  `CREDIT_PERIOD_CREDIT` varchar(15) DEFAULT NULL,
  `FIXED_ASSETS_TURNOVER_RATE` varchar(15) DEFAULT NULL,
  `CAPITAL_GRADE` varchar(15) DEFAULT NULL,
  `SALERY_GRADE` varchar(15) DEFAULT NULL,
  `STAFF_COSTS` varchar(15) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CREDIT_MAX_CURRENCY` varchar(3) DEFAULT NULL,
  `CREDIT_MAX_AMOUNT` varchar(15) DEFAULT NULL,
  `RISC_GROUP` varchar(3) DEFAULT NULL,
  `PUBLICATION_DATE` varchar(15) DEFAULT NULL,
  `EXT1` varchar(15) DEFAULT NULL,
  `EXT2` varchar(15) DEFAULT NULL,
  `EXT3` varchar(15) DEFAULT NULL,
  `EXT4` varchar(15) DEFAULT NULL,
  `EXT5` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_accounting_91` */

DROP TABLE IF EXISTS `cm_group_accounting_91`;

CREATE TABLE `cm_group_accounting_91` (
  `CUST_ID` bigint(14) NOT NULL,
  `LISTED_ON_STOCK_EXCHANGE` varchar(3) DEFAULT NULL,
  `RATING_CODE` varchar(20) DEFAULT NULL,
  `FISCAL_YEAR` varchar(5) DEFAULT NULL,
  `REVENUE` varchar(15) DEFAULT NULL,
  `LAST_YEAR_EMPLOYEES` bigint(12) DEFAULT NULL,
  `ACCOUNT_REMARK` varchar(1000) DEFAULT NULL,
  `GROSS_PROFIT` varchar(15) DEFAULT NULL,
  `EARNINGS` varchar(15) DEFAULT NULL,
  `NET_PROFIT_YEARLY` varchar(15) DEFAULT NULL,
  `STATUS_BALANCE` varchar(15) DEFAULT NULL,
  `FIXED_SSETS` varchar(15) DEFAULT NULL,
  `LAND_AND_BUILDINGS` varchar(15) DEFAULT NULL,
  `CURRENT_ASSETS` varchar(15) DEFAULT NULL,
  `EQUITY` varchar(15) DEFAULT NULL,
  `PROVISIONS` varchar(15) DEFAULT NULL,
  `SUBORDINARY_LOAN_CAPITAL` varchar(15) DEFAULT NULL,
  `LONG_TERM_DEBT` varchar(15) DEFAULT NULL,
  `MORTGAGES` varchar(15) DEFAULT NULL,
  `SHORT_TERM_DEBT` varchar(15) DEFAULT NULL,
  `COVERAGE` varchar(15) DEFAULT NULL,
  `OPERATING_MARGIN` varchar(15) DEFAULT NULL,
  `RETURN_ON_ASSETS` varchar(15) DEFAULT NULL,
  `DEGREE_OF_LIQUIDITYI` varchar(15) DEFAULT NULL,
  `DEGREE_OF_LIQUIDITY2` varchar(15) DEFAULT NULL,
  `SOLVENCY_ATIO` varchar(15) DEFAULT NULL,
  `DEPRECIATION` varchar(15) DEFAULT NULL,
  `FINANCE_ITEMS` varchar(15) DEFAULT NULL,
  `OPERATING_PROFIT` varchar(15) DEFAULT NULL,
  `EXTRAORDINARY_ITEMS` varchar(15) DEFAULT NULL,
  `PROFIT_BEFORE_TAX` varchar(15) DEFAULT NULL,
  `CASH` varchar(15) DEFAULT NULL,
  `TRADE_CREDITORS` varchar(15) DEFAULT NULL,
  `EMPLOYEES` varchar(15) DEFAULT NULL,
  `FINANCIAL_REVENUE` varchar(15) DEFAULT NULL,
  `FINANCIAL_EXPENDITURE` varchar(15) DEFAULT NULL,
  `IMMAT_CONSTRUCTION_ACTIVITIES` varchar(15) DEFAULT NULL,
  `MAT_CONSTRUCTION_ACTIVITIES` varchar(15) DEFAULT NULL,
  `PRIM_RES_PER_EMPLOYEE` varchar(15) DEFAULT NULL,
  `ORD_RES_PER_EMPLOYEE` varchar(15) DEFAULT NULL,
  `NET_GAINS_PER_EMPLOYEE` varchar(15) DEFAULT NULL,
  `FIXED_ASSETS_PER_EMPLOYEE` varchar(15) DEFAULT NULL,
  `CAPACITY_GRADE` varchar(15) DEFAULT NULL,
  `ZERO_TURNOVER` varchar(15) DEFAULT NULL,
  `SAFETY_MARGIN` varchar(15) DEFAULT NULL,
  `ASSETS_TURNOVER_RATE` varchar(15) DEFAULT NULL,
  `CREDIT_PERIOD_CREDIT` varchar(15) DEFAULT NULL,
  `FIXED_ASSETS_TURNOVER_RATE` varchar(15) DEFAULT NULL,
  `CAPITAL_GRADE` varchar(15) DEFAULT NULL,
  `SALERY_GRADE` varchar(15) DEFAULT NULL,
  `STAFF_COSTS` varchar(15) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CREDIT_MAX_CURRENCY` varchar(3) DEFAULT NULL,
  `CREDIT_MAX_AMOUNT` varchar(15) DEFAULT NULL,
  `RISC_GROUP` varchar(3) DEFAULT NULL,
  `PUBLICATION_DATE` varchar(15) DEFAULT NULL,
  `EXT1` varchar(15) DEFAULT NULL,
  `EXT2` varchar(15) DEFAULT NULL,
  `EXT3` varchar(15) DEFAULT NULL,
  `EXT4` varchar(15) DEFAULT NULL,
  `EXT5` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_accounting_h` */

DROP TABLE IF EXISTS `cm_group_accounting_h`;

CREATE TABLE `cm_group_accounting_h` (
  `CUST_ID` bigint(14) NOT NULL COMMENT '客户编号\n\n所有类型客户的客户编号是唯一的。',
  `LISTED_ON_STOCK_EXCHANGE` varchar(3) DEFAULT NULL COMMENT '’JA’, if yes, otherwise ’nej’',
  `RATING_CODE` varchar(20) DEFAULT NULL,
  `FISCAL_YEAR` varchar(5) DEFAULT NULL COMMENT 'YYYY or YY/YY—财政年份',
  `REVENUE` varchar(15) DEFAULT NULL COMMENT '收入',
  `LAST_YEAR_EMPLOYEES` bigint(12) DEFAULT NULL,
  `ACCOUNT_REMARK` varchar(1000) DEFAULT NULL COMMENT '备注',
  `GROSS_PROFIT` varchar(15) DEFAULT NULL COMMENT '毛利',
  `EARNINGS` varchar(15) DEFAULT NULL COMMENT '收益',
  `NET_PROFIT_YEARLY` varchar(15) DEFAULT NULL,
  `STATUS_BALANCE` varchar(15) DEFAULT NULL COMMENT '平衡状况',
  `FIXED_SSETS` varchar(15) DEFAULT NULL COMMENT '固定资产',
  `LAND_AND_BUILDINGS` varchar(15) DEFAULT NULL COMMENT '土地及建筑物',
  `CURRENT_ASSETS` varchar(15) DEFAULT NULL COMMENT '流动资产',
  `EQUITY` varchar(15) DEFAULT NULL COMMENT '股票',
  `PROVISIONS` varchar(15) DEFAULT NULL COMMENT '规定',
  `SUBORDINARY_LOAN_CAPITAL` varchar(15) DEFAULT NULL COMMENT '关于从属贷款资金',
  `LONG_TERM_DEBT` varchar(15) DEFAULT NULL COMMENT '长期债务',
  `MORTGAGES` varchar(15) DEFAULT NULL COMMENT '抵押贷款',
  `SHORT_TERM_DEBT` varchar(15) DEFAULT NULL COMMENT '短期债务',
  `COVERAGE` varchar(15) DEFAULT NULL COMMENT '覆盖',
  `OPERATING_MARGIN` varchar(15) DEFAULT NULL COMMENT '营业利润率',
  `RETURN_ON_ASSETS` varchar(15) DEFAULT NULL COMMENT '资产报酬率',
  `DEGREE_OF_LIQUIDITYI` varchar(15) DEFAULT NULL COMMENT '流动性程度1',
  `DEGREE_OF_LIQUIDITY2` varchar(15) DEFAULT NULL COMMENT '流动性程度2',
  `SOLVENCY_ATIO` varchar(15) DEFAULT NULL COMMENT '偿付能力充足率',
  `DEPRECIATION` varchar(15) DEFAULT NULL COMMENT '折旧',
  `FINANCE_ITEMS` varchar(15) DEFAULT NULL COMMENT '金融项目',
  `OPERATING_PROFIT` varchar(15) DEFAULT NULL COMMENT '营业利润',
  `EXTRAORDINARY_ITEMS` varchar(15) DEFAULT NULL COMMENT '特别项目',
  `PROFIT_BEFORE_TAX` varchar(15) DEFAULT NULL COMMENT '税前利润',
  `CASH` varchar(15) DEFAULT NULL COMMENT '现金',
  `TRADE_CREDITORS` varchar(15) DEFAULT NULL COMMENT '应付账款',
  `EMPLOYEES` varchar(15) DEFAULT NULL COMMENT '雇员',
  `FINANCIAL_REVENUE` varchar(15) DEFAULT NULL COMMENT '财政收入',
  `FINANCIAL_EXPENDITURE` varchar(15) DEFAULT NULL COMMENT '财政支出',
  `IMMAT_CONSTRUCTION_ACTIVITIES` varchar(15) DEFAULT NULL COMMENT '精致建筑活动',
  `MAT_CONSTRUCTION_ACTIVITIES` varchar(15) DEFAULT NULL COMMENT '粗糙建筑活动',
  `PRIM_RES_PER_EMPLOYEE` varchar(15) DEFAULT NULL COMMENT '每个员工的赠品资源',
  `ORD_RES_PER_EMPLOYEE` varchar(15) DEFAULT NULL COMMENT '每个员工的订单资源',
  `NET_GAINS_PER_EMPLOYEE` varchar(15) DEFAULT NULL COMMENT '每个员工的净利润',
  `FIXED_ASSETS_PER_EMPLOYEE` varchar(15) DEFAULT NULL COMMENT '每个员工的固定资产',
  `CAPACITY_GRADE` varchar(15) DEFAULT NULL COMMENT '能力级别',
  `ZERO_TURNOVER` varchar(15) DEFAULT NULL COMMENT '零成交',
  `SAFETY_MARGIN` varchar(15) DEFAULT NULL COMMENT '安全边际',
  `ASSETS_TURNOVER_RATE` varchar(15) DEFAULT NULL COMMENT '资产周转率',
  `CREDIT_PERIOD_CREDIT` varchar(15) DEFAULT NULL COMMENT '信用期信贷',
  `FIXED_ASSETS_TURNOVER_RATE` varchar(15) DEFAULT NULL COMMENT '固定资产周转率',
  `CAPITAL_GRADE` varchar(15) DEFAULT NULL COMMENT '资本等级',
  `SALERY_GRADE` varchar(15) DEFAULT NULL COMMENT '工资等级',
  `STAFF_COSTS` varchar(15) DEFAULT NULL COMMENT '员工成本',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `H_ID` bigint(12) NOT NULL,
  `CREDIT_MAX_CURRENCY` varchar(3) DEFAULT NULL,
  `CREDIT_MAX_AMOUNT` varchar(15) DEFAULT NULL,
  `RISC_GROUP` varchar(3) DEFAULT NULL,
  `PUBLICATION_DATE` varchar(15) DEFAULT NULL,
  `EXT1` varchar(15) DEFAULT NULL,
  `EXT2` varchar(15) DEFAULT NULL,
  `EXT3` varchar(15) DEFAULT NULL,
  `EXT4` varchar(15) DEFAULT NULL,
  `EXT5` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团会计信息表，保存集团客户的会计信息。\n\n按租户分表。';

/*Table structure for table `cm_group_contact_binding` */

DROP TABLE IF EXISTS `cm_group_contact_binding`;

CREATE TABLE `cm_group_contact_binding` (
  `REL_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号\n\n所有类型客户的客户编号是唯一的。',
  `CONT_ID` bigint(12) DEFAULT NULL COMMENT '联系人ID',
  `BINDING_EVENT` bigint(12) DEFAULT NULL COMMENT '绑定事件',
  `IS_NOTIFY` bigint(2) DEFAULT NULL COMMENT '是否接受通知\n0：否\n1：是',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户分表';

/*Table structure for table `cm_group_contact_binding_21` */

DROP TABLE IF EXISTS `cm_group_contact_binding_21`;

CREATE TABLE `cm_group_contact_binding_21` (
  `REL_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CONT_ID` bigint(12) DEFAULT NULL,
  `BINDING_EVENT` bigint(12) DEFAULT NULL,
  `IS_NOTIFY` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_contact_binding_91` */

DROP TABLE IF EXISTS `cm_group_contact_binding_91`;

CREATE TABLE `cm_group_contact_binding_91` (
  `REL_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CONT_ID` bigint(12) DEFAULT NULL,
  `BINDING_EVENT` bigint(12) DEFAULT NULL,
  `IS_NOTIFY` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_contact_binding_h` */

DROP TABLE IF EXISTS `cm_group_contact_binding_h`;

CREATE TABLE `cm_group_contact_binding_h` (
  `H_ID` bigint(12) NOT NULL,
  `REL_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号\n\n所有类型客户的客户编号是唯一的。',
  `CONT_ID` bigint(12) DEFAULT NULL COMMENT '联系人ID',
  `BINDING_EVENT` bigint(12) DEFAULT NULL COMMENT '绑定事件',
  `IS_NOTIFY` bigint(2) DEFAULT NULL COMMENT '是否接受通知\n0：否\n1：是',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户分表';

/*Table structure for table `cm_group_contact_binding_h_21` */

DROP TABLE IF EXISTS `cm_group_contact_binding_h_21`;

CREATE TABLE `cm_group_contact_binding_h_21` (
  `H_ID` bigint(12) NOT NULL,
  `REL_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CONT_ID` bigint(12) DEFAULT NULL,
  `BINDING_EVENT` bigint(12) DEFAULT NULL,
  `IS_NOTIFY` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_contact_binding_h_91` */

DROP TABLE IF EXISTS `cm_group_contact_binding_h_91`;

CREATE TABLE `cm_group_contact_binding_h_91` (
  `H_ID` bigint(12) NOT NULL,
  `REL_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CONT_ID` bigint(12) DEFAULT NULL,
  `BINDING_EVENT` bigint(12) DEFAULT NULL,
  `IS_NOTIFY` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_contact_h` */

DROP TABLE IF EXISTS `cm_group_contact_h`;

CREATE TABLE `cm_group_contact_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '历史记录编号',
  `CUST_CONT_ID` bigint(12) NOT NULL COMMENT '客户联系人编号',
  `PARTY_ID` bigint(12) DEFAULT NULL COMMENT '参与人编号\n\n表示一个参与人的唯一标识，由系统生成的全局唯一的序列号。',
  `CONT_ID` bigint(12) DEFAULT NULL COMMENT '记录参与人联系信息的唯一标识，作为主键。',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号\n\n所有类型客户的客户编号是唯一的。',
  `PRIORY_LEVEL` bigint(2) DEFAULT NULL COMMENT '联系方式优先级，从1开始，数字越小，优先级越高。',
  `CONT_TYPE` bigint(2) DEFAULT NULL COMMENT '联系人类型\n\n使用者；\n担保人；\n关键人；',
  `CONTACT_PERMISSIONS` bigint(2) DEFAULT NULL COMMENT 'yes, no, blank',
  `CONT_LEVEL` bigint(2) DEFAULT NULL COMMENT '联系人类别\n\n根据这个联系人在该单位的重要级别等因素来划分，可分为：\n公司领导人、单位/公司级领导、部门、主管等。',
  `IS_INHERITABLE` bigint(2) DEFAULT NULL COMMENT '----------------Telenor需求概念扩展\n是否可被继承\n0：不被继承\n1：可被继承',
  `CONT_CLASS` bigint(2) DEFAULT NULL COMMENT '联系人分类\n对于集团客户来说，他的联系人主要有重要成员和普通联系人之分；',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(4000) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号\n\n用于支持某些地方将俱乐部会员资格定义在用户上的情况。',
  `PROTO_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '授权协议书失效日期',
  `CONT_SOCIAL_INTERESTS` bigint(2) DEFAULT NULL COMMENT 'EN:christmas_card,cinema,concerts,football,golf,opera,theater\nDK:Julekort,Biograf,Koncerter,Fodbold,Golf,Opera,Teater',
  `CONT_BUSI_INTERESTS` bigint(2) DEFAULT NULL COMMENT 'EN:Blackberry,gross salary,M2M,,pure_mobile,security,unified_communiction\nDK:Blackberry,Bruttol?n,M2M,Pure Mobile,Sikkerhed,Unified Communiction',
  `CONTACT_DEPARTMENT` varchar(100) DEFAULT NULL,
  `PROTO_VALID_DATE` datetime DEFAULT NULL COMMENT '授权协议书生效日期',
  `PROTO_FILE_NAME` varchar(200) DEFAULT NULL COMMENT '授权协议书文件名',
  `ID_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '证件失效日期',
  `ID_VALID_DATE` datetime DEFAULT NULL COMMENT '证件生效日期',
  `ID_FILE_NAME` varchar(200) DEFAULT NULL COMMENT '证件文件名',
  `MEMBER_JOB` varchar(100) DEFAULT NULL COMMENT '成员职位',
  `MEMBER_TYPE` bigint(2) DEFAULT NULL COMMENT '成员类型',
  `MEMBER_DESC` varchar(200) DEFAULT NULL COMMENT '成员说明',
  `PROVIDE_ID` bigint(2) DEFAULT NULL COMMENT '运营商',
  `BRAND` varchar(50) DEFAULT NULL COMMENT '品牌',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团客户联系人信息表\n\n分表方式：按年分表\n分区方式：待定\n分区字段：待定\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_group_customer` */

DROP TABLE IF EXISTS `cm_group_customer`;

CREATE TABLE `cm_group_customer` (
  `cust_id` bigint(14) NOT NULL COMMENT '客户编号',
  `party_id` bigint(12) DEFAULT NULL,
  `cust_service_id` varchar(50) DEFAULT NULL,
  `cust_password` varchar(50) DEFAULT NULL COMMENT '客户密码',
  `cust_service_level` bigint(2) DEFAULT NULL,
  `credit_level` varchar(20) DEFAULT NULL COMMENT 'DK\r\n            客户信用等级（CM_DK_CREDIT_LEVE）\r\n            SELECT m.`PARA1`,n.`EN_US` FROM base.`bs_para_detail` m , base.`bs_i18n_resource` n WHERE m.`PARA_TYPE` = ''CM_DK_CREDIT'' AND m.`PARA_CODE` = ''LEVEL'' AND m.`PARA2` = n.`RES_KEY`;\r\n            \r\n            HU\r\n            暂不使用',
  `credit_value` bigint(12) DEFAULT NULL COMMENT '账户信用额度（2到4级未定义额度）\r\n            0级：0\r\n            1级：60000',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `state` varchar(3) DEFAULT NULL COMMENT '记录状态\r\n            \r\n            U:有效 E:无效',
  `create_op_id` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `create_org_id` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `op_id` bigint(12) DEFAULT NULL COMMENT '操作员',
  `org_id` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `done_code` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `done_date` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `effective_date` datetime DEFAULT NULL COMMENT '客户生效日期',
  `expire_date` datetime DEFAULT NULL COMMENT '客户失效日期',
  `region_id` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  PRIMARY KEY (`cust_id`),
  KEY `idx_cm_group_customer_1` (`party_id`),
  KEY `idx_cm_group_customer_4` (`cust_service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团客户表，保存集团客户基本信息。\n分表方式：租户分表\n分区方式：不';

/*Table structure for table `cm_group_customer_21` */

DROP TABLE IF EXISTS `cm_group_customer_21`;

CREATE TABLE `cm_group_customer_21` (
  `CUST_ID` bigint(14) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `PARENT_CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_SERVICE_ID` varchar(50) DEFAULT NULL,
  `CUST_NAME` varchar(255) NOT NULL,
  `SHORT_NAME` varchar(255) DEFAULT NULL,
  `CUST_STATUS` bigint(2) DEFAULT NULL,
  `CUST_ZIPCODE` varchar(9) DEFAULT NULL,
  `CUST_ADDRESS` varchar(256) DEFAULT NULL,
  `CUST_CERT_TYPE` bigint(2) DEFAULT NULL,
  `CUST_CERT_CODE` varchar(50) DEFAULT NULL,
  `CUST_CERT_ADDRESS` varchar(256) DEFAULT NULL,
  `CUST_CERT_EFFDATE` datetime DEFAULT NULL,
  `CUST_CERT_EXPIRE` datetime DEFAULT NULL,
  `CUST_LANGUAGE` varchar(25) DEFAULT NULL,
  `CUST_PASSWORD` varchar(50) DEFAULT NULL,
  `CUST_SERVICE_LEVEL` bigint(2) DEFAULT NULL COMMENT '客户服务级别（SELECT * FROM BASE.`bs_static_data` T WHERE  T.`CODE_TYPE`  = ''CM_CUST_SERVICE_LEVEL_3''）',
  `CREDIT_LEVEL` varchar(20) DEFAULT NULL COMMENT '客户信用等级（CM_DK_CREDIT_LEVE）SELECT m.`PARA1`,n.`EN_US` FROM base.`bs_para_detail` m , base.`bs_i18n_resource` n WHERE m.`PARA_TYPE` = ''CM_DK_CREDIT'' AND m.`PARA_CODE` = ''CM_DK_CREDIT_LEVE'' AND m.`PARA2` = n.`RES_KEY`;',
  `CREDIT_VALUE` bigint(10) DEFAULT NULL COMMENT '客户信用度值',
  `IS_REVISABLE` bigint(2) DEFAULT NULL COMMENT 'SELECT * FROM base.bs_static_data t WHERE t.code_type = ''CM_YES_NO'';',
  `STAFF_AMOUNT_TYPE` varchar(3) DEFAULT NULL COMMENT 'A:未知,B:0,C:1,D:2-4,E:5-9,F:10-19,G:20-49,H:50-99,I:100-199,J:200-499,K:500-999,L:1000-2499,M:2500-4999,N:5000-9999,O:10000-24999,P:>24999',
  `STAFF_AMOUNT` bigint(10) DEFAULT NULL,
  `HQ_NUMBER` varchar(30) DEFAULT NULL,
  `GROUP_FAX` varchar(30) DEFAULT NULL,
  `GROUP_WEB` varchar(100) DEFAULT NULL,
  `LEGAL_CUST_ID` bigint(12) DEFAULT NULL,
  `LEGAL_CUST_NAME` varchar(50) DEFAULT NULL,
  `VOCATION` bigint(6) DEFAULT NULL,
  `SUB_VOCATION` bigint(6) DEFAULT NULL,
  `GROUP_TYPE` bigint(6) DEFAULT NULL COMMENT '集团类型（CM_WAY_TYPE）\n1.WHOLESALE \n2.NORMAL\n3.SUPPLIER\n4.PARTNER\n5.COMPETITOR\n6.BROKER\n7.TELENOR GROUP',
  `REG_AMOUNT` bigint(12) DEFAULT NULL,
  `NATIONALITY` varchar(10) DEFAULT NULL,
  `PROVINCE_ID` varchar(10) DEFAULT NULL,
  `CITY_ID` varchar(10) DEFAULT NULL,
  `COUNTY_ID` varchar(10) DEFAULT NULL,
  `TOWN_ID` bigint(12) DEFAULT NULL,
  `VILLEGE_ID` bigint(12) DEFAULT NULL,
  `DEVELOP_TYPE` bigint(2) DEFAULT NULL COMMENT '启用，作为外国集团类型使用1.Foreign,2.without KOB,3.waiting for KOB,4.dummy',
  `EC_CODE` varchar(50) DEFAULT NULL COMMENT '运营商编码',
  `ACCOUNT_CYCLE` bigint(6) DEFAULT NULL,
  `GROUP_SUB_TYPE` bigint(3) DEFAULT NULL COMMENT '1.Nordic Account',
  `ESTABLISHED` bigint(4) DEFAULT NULL,
  `REMARKS` varchar(4000) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`),
  KEY `IDX_CM_GROUP_CUSTOMER_4_21` (`CUST_SERVICE_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_CUSTOMER_1_21` (`PARTY_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_CUSTOMER_2_21` (`CUST_NAME`) USING BTREE,
  KEY `IDX_CM_GROUP_CUSTOMER_6_21` (`CITY_ID`,`COUNTY_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_CUSTOMER_7_21` (`EC_CODE`) USING BTREE,
  KEY `idx_cm_group_customer_3` (`CUST_CERT_CODE`,`CUST_CERT_TYPE`) USING BTREE,
  KEY `idx_cm_group_customer_8` (`GROUP_TYPE`) USING BTREE,
  KEY `idx_cm_group_customer_9` (`CUST_STATUS`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_customer_91` */

DROP TABLE IF EXISTS `cm_group_customer_91`;

CREATE TABLE `cm_group_customer_91` (
  `CUST_ID` bigint(14) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `PARENT_CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_SERVICE_ID` varchar(50) DEFAULT NULL,
  `CUST_NAME` varchar(255) NOT NULL,
  `SHORT_NAME` varchar(255) DEFAULT NULL,
  `CUST_STATUS` bigint(2) DEFAULT NULL,
  `CUST_ZIPCODE` varchar(9) DEFAULT NULL,
  `CUST_ADDRESS` varchar(256) DEFAULT NULL,
  `CUST_CERT_TYPE` bigint(2) DEFAULT NULL,
  `CUST_CERT_CODE` varchar(50) DEFAULT NULL,
  `CUST_CERT_ADDRESS` varchar(256) DEFAULT NULL,
  `CUST_CERT_EFFDATE` datetime DEFAULT NULL,
  `CUST_CERT_EXPIRE` datetime DEFAULT NULL,
  `CUST_LANGUAGE` varchar(25) DEFAULT NULL,
  `CUST_PASSWORD` varchar(50) DEFAULT NULL,
  `CUST_SERVICE_LEVEL` bigint(2) DEFAULT NULL COMMENT '客户服务级别（SELECT * FROM BASE.`bs_static_data` T WHERE  T.`CODE_TYPE`  = ''CM_CUST_SERVICE_LEVEL_3''）',
  `CREDIT_LEVEL` varchar(20) DEFAULT NULL COMMENT '客户信用等级（CM_DK_CREDIT_LEVE）SELECT m.`PARA1`,n.`EN_US` FROM base.`bs_para_detail` m , base.`bs_i18n_resource` n WHERE m.`PARA_TYPE` = ''CM_DK_CREDIT'' AND m.`PARA_CODE` = ''CM_DK_CREDIT_LEVE'' AND m.`PARA2` = n.`RES_KEY`;',
  `CREDIT_VALUE` bigint(10) DEFAULT NULL COMMENT '客户信用度值',
  `IS_REVISABLE` bigint(2) DEFAULT NULL COMMENT 'SELECT * FROM base.bs_static_data t WHERE t.code_type = ''CM_YES_NO'';',
  `STAFF_AMOUNT_TYPE` varchar(3) DEFAULT NULL COMMENT 'A:未知,B:0,C:1,D:2-4,E:5-9,F:10-19,G:20-49,H:50-99,I:100-199,J:200-499,K:500-999,L:1000-2499,M:2500-4999,N:5000-9999,O:10000-24999,P:>24999',
  `STAFF_AMOUNT` bigint(10) DEFAULT NULL,
  `HQ_NUMBER` varchar(30) DEFAULT NULL,
  `GROUP_FAX` varchar(30) DEFAULT NULL,
  `GROUP_WEB` varchar(100) DEFAULT NULL,
  `LEGAL_CUST_ID` bigint(12) DEFAULT NULL,
  `LEGAL_CUST_NAME` varchar(50) DEFAULT NULL,
  `VOCATION` bigint(6) DEFAULT NULL,
  `SUB_VOCATION` bigint(6) DEFAULT NULL,
  `GROUP_TYPE` bigint(6) DEFAULT NULL COMMENT '集团类型（CM_WAY_TYPE）\n1.WHOLESALE \n2.NORMAL\n3.SUPPLIER\n4.PARTNER\n5.COMPETITOR\n6.BROKER\n7.TELENOR GROUP',
  `REG_AMOUNT` bigint(12) DEFAULT NULL,
  `NATIONALITY` varchar(10) DEFAULT NULL,
  `PROVINCE_ID` varchar(10) DEFAULT NULL,
  `CITY_ID` varchar(10) DEFAULT NULL,
  `COUNTY_ID` varchar(10) DEFAULT NULL,
  `TOWN_ID` bigint(12) DEFAULT NULL,
  `VILLEGE_ID` bigint(12) DEFAULT NULL,
  `DEVELOP_TYPE` bigint(2) DEFAULT NULL COMMENT '启用，作为外国集团类型使用1.Foreign,2.without KOB,3.waiting for KOB,4.dummy',
  `EC_CODE` varchar(50) DEFAULT NULL COMMENT '运营商编码',
  `ACCOUNT_CYCLE` bigint(6) DEFAULT NULL,
  `GROUP_SUB_TYPE` bigint(3) DEFAULT NULL COMMENT '1.Nordic Account',
  `ESTABLISHED` bigint(4) DEFAULT NULL,
  `REMARKS` varchar(4000) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`),
  KEY `IDX_CM_GROUP_CUSTOMER_4_91` (`CUST_SERVICE_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_CUSTOMER_1_91` (`PARTY_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_CUSTOMER_2_91` (`CUST_NAME`) USING BTREE,
  KEY `IDX_CM_GROUP_CUSTOMER_6_91` (`CITY_ID`,`COUNTY_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_CUSTOMER_7_91` (`EC_CODE`) USING BTREE,
  KEY `idx_cm_group_customer_3` (`CUST_CERT_CODE`,`CUST_CERT_TYPE`) USING BTREE,
  KEY `idx_cm_group_customer_8` (`GROUP_TYPE`) USING BTREE,
  KEY `idx_cm_group_customer_9` (`CUST_STATUS`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_customer_audit` */

DROP TABLE IF EXISTS `cm_group_customer_audit`;

CREATE TABLE `cm_group_customer_audit` (
  `AUDIT_ID` bigint(12) NOT NULL COMMENT '审核序列号',
  `AUDIT_TYPE` bigint(2) DEFAULT NULL COMMENT '审核类型\n1：集团客户\n2：集团成员',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号\n\n所有类型客户的客户编号是唯一的。',
  `CUST_ZIPCODE` varchar(6) DEFAULT NULL COMMENT '客户邮编',
  `CUST_ADDRESS` varchar(256) DEFAULT NULL COMMENT '客户地址',
  `CONT_MOBILE` varchar(30) DEFAULT NULL COMMENT '客户联系电话',
  `MEMBER_CUST_ID` bigint(14) DEFAULT NULL,
  `MEMBER_TYPE` bigint(2) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `SHORT_NUM` varchar(100) DEFAULT NULL,
  `DEPTMENT` varchar(100) DEFAULT NULL,
  `JOB` varchar(255) DEFAULT NULL,
  `IS_VIP` bigint(2) DEFAULT NULL COMMENT '0：非大客户\n1：大客户',
  `MANAGER_ID` bigint(12) DEFAULT NULL,
  `MEMBER_NAME` varchar(100) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `GROUP_TYPE` bigint(2) DEFAULT NULL,
  `CLASS_ID` bigint(2) DEFAULT NULL,
  `MEMBER_STATE` bigint(2) DEFAULT NULL,
  `MEMBER_CREATE_DATE` datetime DEFAULT NULL,
  `BRAND_NAME` varchar(30) DEFAULT NULL,
  `BRAND_ID` bigint(14) DEFAULT NULL,
  `PLAN_NAME` varchar(30) DEFAULT NULL,
  `PLAN_ID` bigint(14) DEFAULT NULL,
  `OPER_TYPE` bigint(2) DEFAULT NULL COMMENT '1：新增\n2：修改\n3：删除\n4：查询',
  `AUDIT_STATUS` bigint(2) DEFAULT NULL COMMENT '1：未审核\n2：审核通过\n3：审核不通过',
  `AUDIT_DESC` varchar(256) DEFAULT NULL,
  `AUDIT_MANAGER_ID` bigint(12) DEFAULT NULL,
  `AUDIT_DATE` datetime DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID2` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`AUDIT_ID`),
  KEY `IDX_CM_GROUP_AUDIT_1` (`AUDIT_MANAGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团客户信息审核表。（telenor未启用）\n\n提供网厅接口修改集团客户已经成员时需要审核完成后再保存到CRM';

/*Table structure for table `cm_group_customer_h` */

DROP TABLE IF EXISTS `cm_group_customer_h`;

CREATE TABLE `cm_group_customer_h` (
  `H_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL COMMENT '客户编号\n\n所有类型客户的客户编号是唯一的。',
  `PARTY_ID` bigint(12) DEFAULT NULL COMMENT '参与人编号\n\n表示一个参与人的唯一标识，由系统生成的全局唯一的序列号。',
  `PARENT_CUST_ID` bigint(14) DEFAULT NULL COMMENT '上级集团',
  `CUST_SERVICE_ID` varchar(50) DEFAULT NULL COMMENT '客户服务编号\n\n客户服务编号是系统按照一定规则生成的序列号，当客户被创建后告知客户，方便以后客户可以通过提供这个编号直接办理业务等。\n\n\n----------------Telenor需求概念扩展\n第三方机构客户唯一编码（例如：CPR NUMBER、KOB NUMBER）',
  `CUST_NAME` varchar(255) NOT NULL COMMENT '客户名称：\n对于集团客户的客户名称是唯一的。',
  `SHORT_NAME` varchar(255) DEFAULT NULL COMMENT '集团简称',
  `CUST_STATUS` bigint(2) DEFAULT NULL COMMENT '客户状态（CM_CUST_STATUS_3）\n \n0 潜在\n1 在网\n3 暂停\n2 离网\n4 注销',
  `CUST_ZIPCODE` varchar(9) DEFAULT NULL COMMENT '客户的邮政编码',
  `CUST_ADDRESS` varchar(256) DEFAULT NULL COMMENT '客户地址',
  `CUST_CERT_TYPE` bigint(2) DEFAULT NULL COMMENT '证件类型（CM_CUST_CERT_TYPE_3）\n1：身份证\n2：组织机构代码证\n3：社会团体法人登记证书\n4：民办非企业单位登记证书\n5：营业执照\n6：护照\n7：驾驶证\n8：军官证\n9：警官证\n13：社会保险号\n14：其他\n15：介绍信\n16：户口本',
  `CUST_CERT_CODE` varchar(50) DEFAULT NULL COMMENT '证件号码',
  `CUST_CERT_ADDRESS` varchar(256) DEFAULT NULL COMMENT '证件地址',
  `CUST_CERT_EFFDATE` datetime DEFAULT NULL,
  `CUST_CERT_EXPIRE` datetime DEFAULT NULL COMMENT '证件有效期',
  `CUST_LANGUAGE` varchar(25) DEFAULT NULL,
  `CUST_PASSWORD` varchar(50) DEFAULT NULL COMMENT '客户密码',
  `CUST_SERVICE_LEVEL` bigint(2) DEFAULT NULL COMMENT '客户服务级别（CM_CUST_SERVICE_LEVEL_3）\n1.A-Customer,\n2.B-Customer,\n3.C-Customer,\n4.A-Prospect,\n5.B-Prospect,\n6.C-Prospect,\n7.Not Contactpoint',
  `CREDIT_LEVEL` varchar(20) DEFAULT NULL COMMENT '账户信用等级（CM_GRP_CREDIT_LEVEL）\n\n0	危险信息等级\n1	低信用等级\n2	中信用等级\n3	高信用等级\n4	特殊信用等级',
  `CREDIT_VALUE` bigint(10) DEFAULT NULL COMMENT '账户信用额度（2到4级未定义额度）\n0级：0\n1级：60000',
  `STAFF_AMOUNT_TYPE` varchar(3) DEFAULT NULL COMMENT '员工数量类型',
  `STAFF_AMOUNT` bigint(10) DEFAULT NULL COMMENT '1表示1－100人\n2表示101－500人\n3表示500人以上',
  `HQ_NUMBER` varchar(30) DEFAULT NULL COMMENT '公司总机号',
  `GROUP_FAX` varchar(30) DEFAULT NULL COMMENT '公司传真',
  `GROUP_WEB` varchar(100) DEFAULT NULL COMMENT '集团网址',
  `LEGAL_CUST_ID` bigint(12) DEFAULT NULL COMMENT '法人客户标识',
  `LEGAL_CUST_NAME` varchar(50) DEFAULT NULL COMMENT '法人代表',
  `VOCATION` bigint(6) DEFAULT NULL COMMENT 'telenor未使用\n区分集团所属的行业大类（CM_VOCATION）\n1	A 农、林、牧、渔业                  \n10	J 金融业                          \n11	K  房地产业                       \n12	L 租赁和商务服务业                \n13	M 科学研究、技术服务和地质勘查业  \n14	N 水利、环境和公共设施管理业      \n15	O 居民服务和其他服务业            \n16	P 教育                            \n17	Q 卫生、社会保障和社会福利业      \n18	R 文化、体育和娱乐业              \n19	S 公共管理与社会组织              \n2	B 采矿业                            \n20	T 国际组织                        \n21	其它                              \n3	C 制造业                            \n4	D 电力、燃气及水的生产和供应业      \n5	E 建筑业                            \n6	F 交通运输、仓储和邮政业            \n7	G 信息传输、计算机服务和软件业      \n8	H 批发和零售业                      \n9	I 住宿和餐饮业',
  `SUB_VOCATION` bigint(6) DEFAULT NULL COMMENT 'telenor未使用\n行业子类型\n\nCM_SEC_VOCATION_1	2	林业\nCM_SEC_VOCATION_1	3	畜牧业\nCM_SEC_VOCATION_1	4	渔业\nCM_SEC_VOCATION_1	5	农、林、牧、渔服务业\nCM_SEC_VOCATION_1	1	农业\nCM_SEC_VOCATION_10	68	银行业\nCM_SEC_VOCATION_10	69	证券业\nCM_SEC_VOCATION_10	70	保险业\nCM_SEC_VOCATION_10	71	其他金融活动\nCM_SEC_VOCATION_11	72	房地产业\nCM_SEC_VOCATION_12	73	租赁业\nCM_SEC_VOCATION_12	74	商务服务业\nCM_SEC_VOCATION_13	76	专业技术服务业\nCM_SEC_VOCATION_13	77	科技交流和推广服务业\nCM_SEC_VOCATION_13	78	地质勘查业\nCM_SEC_VOCATION_13	75	研究与试验发展\nCM_SEC_VOCATION_14	79	水利管理业\nCM_SEC_VOCATION_14	80	环境管理业\nCM_SEC_VOCATION_14	81	公共设施管理业\nCM_SEC_VOCATION_15	83	其他服务业\nCM_SEC_VOCATION_15	82	居民服务业\nCM_SEC_VOCATION_16	84	教育\nCM_SEC_VOCATION_17	86	社会保障业\nCM_SEC_VOCATION_17	87	社会福利业\nCM_SEC_VOCATION_17	85	卫生\nCM_SEC_VOCATION_18	89	广播、电视、电影和音像业\nCM_SEC_VOCATION_18	90	文化艺术业\nCM_SEC_VOCATION_18	91	体育\nCM_SEC_VOCATION_18	92	娱乐业\nCM_SEC_VOCATION_18	88	新闻出版业\nCM_SEC_VOCATION_19	93	中国共产党机关\nCM_SEC_VOCATION_19	94	国家机构\nCM_SEC_VOCATION_19	95	人',
  `GROUP_TYPE` bigint(6) DEFAULT NULL COMMENT '集团类型（CM_WAY_TYPE）\n1.MVNO\n2.NORMAL\n3.SUPPLIER\n4.PARTNER\n5.COMPETITOR\n6.BROKER\n7.TELENOR GROUP',
  `REG_AMOUNT` bigint(12) DEFAULT NULL COMMENT '注册资金',
  `NATIONALITY` varchar(10) DEFAULT NULL COMMENT '国家',
  `PROVINCE_ID` varchar(10) DEFAULT NULL COMMENT '省份',
  `CITY_ID` varchar(10) DEFAULT NULL COMMENT '地市',
  `COUNTY_ID` varchar(10) DEFAULT NULL COMMENT '区县',
  `TOWN_ID` bigint(12) DEFAULT NULL COMMENT '集团的行政区域信息',
  `VILLEGE_ID` bigint(12) DEFAULT NULL COMMENT '集团的行政区域信息',
  `DEVELOP_TYPE` bigint(2) DEFAULT NULL COMMENT 'CM_SERV_CHANNEL\n1	客户经理       \n2	10086热线      \n3	电话客户经理   \n4	营业厅         \n5	代理商',
  `EC_CODE` varchar(50) DEFAULT NULL COMMENT '全网集团编号',
  `ACCOUNT_CYCLE` bigint(6) DEFAULT NULL COMMENT '集团缴费期（账管缴费延期多少月，只有集团信用等级为4）',
  `GROUP_SUB_TYPE` bigint(3) DEFAULT NULL COMMENT 'telenor未使用',
  `ESTABLISHED` bigint(4) DEFAULT NULL COMMENT '成立年份',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `IS_REVISABLE` bigint(2) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `IDX_CM_GROUP_CUSTOMER_1` (`PARTY_ID`),
  KEY `IDX_CM_GROUP_CUSTOMER_2` (`CUST_NAME`),
  KEY `IDX_CM_GROUP_CUSTOMER_3` (`CUST_CERT_TYPE`,`CUST_CERT_CODE`),
  KEY `IDX_CM_GROUP_CUSTOMER_4` (`CUST_SERVICE_ID`),
  KEY `IDX_CM_GROUP_CUSTOMER_6` (`CITY_ID`,`COUNTY_ID`),
  KEY `IDX_CM_GROUP_CUSTOMER_7` (`EC_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团客户表，保存集团客户基本信息。\n\n\n分表方式：租户分表\n分区方式：不分区\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_group_department` */

DROP TABLE IF EXISTS `cm_group_department`;

CREATE TABLE `cm_group_department` (
  `department_id` bigint(12) NOT NULL,
  `up_department_id` bigint(12) DEFAULT NULL,
  `organization_id` bigint(12) NOT NULL,
  `dpt_name` varchar(128) NOT NULL,
  `dpt_code` varchar(64) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  `create_op_id` bigint(12) DEFAULT NULL,
  `create_org_id` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `done_date` datetime DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `region_id` varchar(8) DEFAULT NULL,
  `tenant_id` varchar(68) DEFAULT NULL,
  PRIMARY KEY (`department_id`),
  UNIQUE KEY `index_id` (`department_id`),
  KEY `index_orgtid` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_department_char` */

DROP TABLE IF EXISTS `cm_group_department_char`;

CREATE TABLE `cm_group_department_char` (
  `dpt_char_id` bigint(12) NOT NULL,
  `dpt_id` bigint(12) NOT NULL,
  `attr_text` varchar(255) NOT NULL,
  `attr_value` varchar(255) DEFAULT NULL,
  `state` varchar(8) DEFAULT NULL,
  `create_op_id` bigint(12) DEFAULT NULL,
  `create_org_id` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `done_date` datetime DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `region_id` varchar(8) DEFAULT NULL,
  `tenant_id` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`dpt_char_id`,`dpt_id`,`attr_text`),
  UNIQUE KEY `index_id` (`dpt_char_id`),
  KEY `index_vat` (`dpt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团客户部门属性表';

/*Table structure for table `cm_group_manager` */

DROP TABLE IF EXISTS `cm_group_manager`;

CREATE TABLE `cm_group_manager` (
  `rel_id` bigint(12) NOT NULL COMMENT '关系编号',
  `organization_id` bigint(14) NOT NULL COMMENT '集团客户编号',
  `manager_id` varchar(64) NOT NULL COMMENT '客户经理标识',
  `manager_name` varchar(255) DEFAULT NULL,
  `oper_type` bigint(2) DEFAULT NULL COMMENT '操作类型\n            0   查询\n            1   查询、更改\n            \n            SELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = ''CM_CUST_MGR_OPER_TYPE'';',
  `rel_type` bigint(2) DEFAULT NULL COMMENT '关系类型\n            \n            \n            SELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = ''CM_CUST_MGR_REL_TYPE'';\n            \n            HU\n            \n            SELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = ''CM_CUST_MGR_REL_TYPE'';\n            ',
  `state` varchar(3) DEFAULT NULL COMMENT '记录状态\n            \n            U:有效 E:无效',
  `create_op_id` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `create_org_id` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `op_id` bigint(12) DEFAULT NULL COMMENT '操作员',
  `org_id` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `done_code` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `done_date` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `effective_date` datetime DEFAULT NULL COMMENT '客户生效日期',
  `expire_date` datetime DEFAULT NULL COMMENT '客户失效日期',
  `region_id` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`rel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_manager_21` */

DROP TABLE IF EXISTS `cm_group_manager_21`;

CREATE TABLE `cm_group_manager_21` (
  `REL_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `MANAGER_ID` bigint(12) NOT NULL,
  `OPER_TYPE` bigint(2) DEFAULT NULL,
  `REL_TYPE` bigint(2) DEFAULT NULL COMMENT '关系类型:SELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = ''CM_CUST_MGR_REL_TYPE'';',
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`),
  KEY `IDX_CM_GROUP_MGER_1_21` (`MANAGER_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_MGER_2_21` (`CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_manager_91` */

DROP TABLE IF EXISTS `cm_group_manager_91`;

CREATE TABLE `cm_group_manager_91` (
  `REL_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `MANAGER_ID` bigint(12) NOT NULL,
  `OPER_TYPE` bigint(2) DEFAULT NULL,
  `REL_TYPE` bigint(2) DEFAULT NULL COMMENT '关系类型:SELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = ''CM_CUST_MGR_REL_TYPE'';',
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`),
  KEY `IDX_CM_GROUP_MGER_1_91` (`MANAGER_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_MGER_2_91` (`CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_manager_h` */

DROP TABLE IF EXISTS `cm_group_manager_h`;

CREATE TABLE `cm_group_manager_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '历史记录编号',
  `REL_ID` bigint(12) NOT NULL COMMENT '关系编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '集团客户编号',
  `MANAGER_ID` bigint(12) DEFAULT NULL COMMENT '客户经理标识',
  `OPER_TYPE` bigint(2) DEFAULT NULL COMMENT '操作类型\n0   查询\n1   查询、更改\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_CUST_MGR_OPER_TYPE;',
  `REL_TYPE` bigint(2) DEFAULT NULL COMMENT '关系类型\n\n1:主要服务，2:辅助服务，3:首席客户经理\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_CUST_MGR_REL_TYPE;',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`H_ID`),
  KEY `IDX_CM_GROUP_MGER_H_1` (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录客户经理与集团客户之间的关系。\n\n\n分表方式：按年分表\n分区方式：待定\n分区字段：待定\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_group_member` */

DROP TABLE IF EXISTS `cm_group_member`;

CREATE TABLE `cm_group_member` (
  `cust_rel_id` bigint(12) NOT NULL,
  `group_cust_id` bigint(14) NOT NULL COMMENT '集团客户编号',
  `member_cust_id` bigint(12) DEFAULT NULL,
  `member_name` varchar(100) DEFAULT NULL,
  `member_type` bigint(2) DEFAULT NULL,
  `member_status` bigint(2) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL COMMENT '性别',
  `provide_id` bigint(2) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL COMMENT '品牌',
  `user_id` bigint(14) DEFAULT NULL,
  `bill_id` varchar(30) DEFAULT NULL COMMENT '手机号码',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `state` varchar(3) DEFAULT NULL,
  `create_op_id` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `create_org_id` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `op_id` bigint(12) DEFAULT NULL COMMENT '操作员',
  `org_id` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `done_code` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `done_date` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `effective_date` datetime DEFAULT NULL COMMENT '客户生效日期',
  `expire_date` datetime DEFAULT NULL COMMENT '客户失效日期',
  `region_id` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  PRIMARY KEY (`cust_rel_id`),
  KEY `idx_cm_group_member_1` (`group_cust_id`),
  KEY `idx_cm_group_member_3` (`bill_id`),
  KEY `idx_cm_group_member_4` (`user_id`),
  KEY `idx_cm_group_member_5` (`member_cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团客户成员表\n分表方式：租户分表\n分区方式：不分区\n敏感信息安全等级';

/*Table structure for table `cm_group_member_21` */

DROP TABLE IF EXISTS `cm_group_member_21`;

CREATE TABLE `cm_group_member_21` (
  `CUST_REL_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `DEPT_ID` bigint(12) DEFAULT NULL,
  `MEMBER_CUST_ID` bigint(14) DEFAULT NULL,
  `MEMBER_NAME` varchar(100) DEFAULT NULL,
  `MEMBER_TYPE` bigint(2) DEFAULT NULL,
  `MEMBER_POSITION` varchar(255) DEFAULT NULL,
  `MEMBER_STATUS` bigint(2) DEFAULT NULL,
  `MEMBER_ROLE` bigint(2) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `PROVIDE_ID` bigint(2) DEFAULT NULL,
  `BRAND` varchar(50) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `MEMBER_DESC` varchar(200) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MEMBER_NAME_QRY` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`CUST_REL_ID`),
  KEY `IDX_CM_GROUP_MEMBER_1_21` (`CUST_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_MEMBER_4_21` (`USER_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_MEMBER_3_21` (`BILL_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_MEMBER_2` (`DEPT_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_MEMBER_5` (`MEMBER_CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_member_91` */

DROP TABLE IF EXISTS `cm_group_member_91`;

CREATE TABLE `cm_group_member_91` (
  `CUST_REL_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `DEPT_ID` bigint(12) DEFAULT NULL,
  `MEMBER_CUST_ID` bigint(14) DEFAULT NULL,
  `MEMBER_NAME` varchar(100) DEFAULT NULL,
  `MEMBER_TYPE` bigint(2) DEFAULT NULL,
  `MEMBER_POSITION` varchar(255) DEFAULT NULL,
  `MEMBER_STATUS` bigint(2) DEFAULT NULL,
  `MEMBER_ROLE` bigint(2) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `PROVIDE_ID` bigint(2) DEFAULT NULL,
  `BRAND` varchar(50) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `MEMBER_DESC` varchar(200) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MEMBER_NAME_QRY` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`CUST_REL_ID`),
  KEY `IDX_CM_GROUP_MEMBER_1_91` (`CUST_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_MEMBER_4_91` (`USER_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_MEMBER_3_91` (`BILL_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_MEMBER_2` (`DEPT_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_MEMBER_5` (`MEMBER_CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_member_char` */

DROP TABLE IF EXISTS `cm_group_member_char`;

CREATE TABLE `cm_group_member_char` (
  `char_id` bigint(12) NOT NULL,
  `cust_rel_id` bigint(12) NOT NULL,
  `attr_text` varchar(255) NOT NULL,
  `attr_value` varchar(255) DEFAULT NULL,
  `state` varchar(8) DEFAULT NULL,
  `create_op_id` bigint(12) DEFAULT NULL,
  `create_org_id` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `done_date` datetime DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `region_id` varchar(8) DEFAULT NULL,
  `tenant_id` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`cust_rel_id`,`attr_text`),
  UNIQUE KEY `index_id` (`char_id`),
  KEY `index_vat` (`cust_rel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团客户成员属性表';

/*Table structure for table `cm_group_member_h` */

DROP TABLE IF EXISTS `cm_group_member_h`;

CREATE TABLE `cm_group_member_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '历史记录编号',
  `CUST_REL_ID` bigint(12) NOT NULL COMMENT '成员编号\n\n集团成员编号是指集团客户与成员客户之间的关系编号。',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '集团客户编号',
  `MEMBER_CUST_ID` bigint(14) DEFAULT NULL COMMENT '成员客户编号',
  `DEPT_ID` bigint(12) DEFAULT NULL COMMENT '所属组织结构',
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MEMBER_NAME_QRY` varchar(256) DEFAULT NULL,
  `MEMBER_NAME` varchar(100) DEFAULT NULL COMMENT '成员名称',
  `MEMBER_TYPE` bigint(2) DEFAULT NULL COMMENT '客户成员类型\n\n成员类型包括关键成员客户、普通成员客户、潜在成员客户等',
  `MEMBER_POSITION` varchar(255) DEFAULT NULL COMMENT '成员职位',
  `MEMBER_STATUS` bigint(2) DEFAULT NULL COMMENT '成员状态\n对成员客户状态的描述（有效、离职等）',
  `MEMBER_ROLE` bigint(2) DEFAULT NULL COMMENT '成员业务角色\n\n客户在集团客户中的角色如：集团业务管理员、集团管理员、普通客户等',
  `CUST_REGION_ID` varchar(6) DEFAULT NULL COMMENT '客户归属地',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `PROVIDE_ID` bigint(2) DEFAULT NULL COMMENT '运营商',
  `BRAND` varchar(50) DEFAULT NULL COMMENT '品牌',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号\n\n用于支持某些地方将俱乐部会员资格定义在用户上的情况。',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '手机号码',
  `MEMBER_DESC` varchar(200) DEFAULT NULL COMMENT '成员说明',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团客户成员表\n\n分表方式：按年分表\n分区方式：待定\n分区字段：待定\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_group_org_differ` */

DROP TABLE IF EXISTS `cm_group_org_differ`;

CREATE TABLE `cm_group_org_differ` (
  `DIFFER_ID` bigint(12) NOT NULL COMMENT '差异编号（主键）\n目前只考虑组织机构层级的差异性',
  `DEPT_ID` bigint(12) DEFAULT NULL COMMENT '集团组织机构唯一标识',
  `PARENT_DEPT_ID` bigint(12) NOT NULL COMMENT '上级组织机构标识',
  `IMPORT_PARENT_DEPT_ID` bigint(12) DEFAULT NULL COMMENT '第三方机构的组织机构编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '组织机构对应的集团客户编号',
  `PARENT_CUST_ID` bigint(14) NOT NULL COMMENT '上级组织机构对应的集团客户编号',
  `IMPORT_PARENT_CUST_ID` bigint(14) DEFAULT NULL COMMENT '第三方机构的上级组织机构对应的集团客户编号',
  `CUST_SERVICE_ID` varchar(50) DEFAULT NULL COMMENT '客户服务编号\n\n客户服务编号是系统按照一定规则生成的序列号，当客户被创建后告知客户，方便以后客户可以通过提供这个编号直接办理业务等。\n\n\n----------------Telenor需求概念扩展\n组织机构对应的第三方机构客户唯一编码（例如：CPR NUMBER、KOB NUMBER）',
  `PARENT_CUSTSERV_ID` varchar(50) DEFAULT NULL COMMENT '客户服务编号\n\n客户服务编号是系统按照一定规则生成的序列号，当客户被创建后告知客户，方便以后客户可以通过提供这个编号直接办理业务等。\n\n----------------Telenor需求概念扩展\n上级组织机构对应的第三方机构客户唯一编码（例如：CPR NUMBER、KOB NUMBER）',
  `IMPORT_PARENT_CUSTSERV_ID` varchar(50) DEFAULT NULL COMMENT '客户服务编号\n\n客户服务编号是系统按照一定规则生成的序列号，当客户被创建后告知客户，方便以后客户可以通过提供这个编号直接办理业务等。\n\n----------------Telenor需求概念扩展\n第三方机构的上级组织机构对应的第三方机构客户唯一编码（例如：CPR NUMBER、KOB NUMBER）',
  `IMPORT_SOURCE` varchar(128) DEFAULT NULL COMMENT '第三方机构来源\n例如：CPR、KOB等',
  `IMPORT_DATE` datetime DEFAULT NULL COMMENT '导入时间',
  `IS_ALERT` bigint(2) DEFAULT NULL COMMENT '是否提醒客户经理\n0：不需提醒\n1：需要提醒',
  `PROCESS_STATUS` bigint(2) DEFAULT NULL COMMENT '1:未变更层级，2:已变更层级,3:已重算细分,4:处理失败',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`DIFFER_ID`),
  KEY `IDX_CM_GROUP_ORG_DIFFER_1` (`DEPT_ID`),
  KEY `IDX_CUST_ID` (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_org_differ_21` */

DROP TABLE IF EXISTS `cm_group_org_differ_21`;

CREATE TABLE `cm_group_org_differ_21` (
  `DIFFER_ID` bigint(12) NOT NULL,
  `DEPT_ID` bigint(12) DEFAULT NULL,
  `PARENT_DEPT_ID` bigint(12) NOT NULL,
  `IMPORT_PARENT_DEPT_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `PARENT_CUST_ID` bigint(14) NOT NULL,
  `IMPORT_PARENT_CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_SERVICE_ID` varchar(50) DEFAULT NULL,
  `PARENT_CUSTSERV_ID` varchar(50) DEFAULT NULL,
  `IMPORT_PARENT_CUSTSERV_ID` varchar(50) DEFAULT NULL,
  `IMPORT_SOURCE` varchar(128) DEFAULT NULL,
  `IMPORT_DATE` datetime DEFAULT NULL,
  `IS_ALERT` bigint(2) DEFAULT NULL,
  `PROCESS_STATUS` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DIFFER_ID`),
  KEY `IDX_CM_GROUP_ORG_DIFFER_1_21` (`DEPT_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_ORG_DIFFER_2` (`CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_org_differ_91` */

DROP TABLE IF EXISTS `cm_group_org_differ_91`;

CREATE TABLE `cm_group_org_differ_91` (
  `DIFFER_ID` bigint(12) NOT NULL,
  `DEPT_ID` bigint(12) DEFAULT NULL,
  `PARENT_DEPT_ID` bigint(12) NOT NULL,
  `IMPORT_PARENT_DEPT_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `PARENT_CUST_ID` bigint(14) NOT NULL,
  `IMPORT_PARENT_CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_SERVICE_ID` varchar(50) DEFAULT NULL,
  `PARENT_CUSTSERV_ID` varchar(50) DEFAULT NULL,
  `IMPORT_PARENT_CUSTSERV_ID` varchar(50) DEFAULT NULL,
  `IMPORT_SOURCE` varchar(128) DEFAULT NULL,
  `IMPORT_DATE` datetime DEFAULT NULL,
  `IS_ALERT` bigint(2) DEFAULT NULL,
  `PROCESS_STATUS` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DIFFER_ID`),
  KEY `IDX_CM_GROUP_ORG_DIFFER_1_91` (`DEPT_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_ORG_DIFFER_2` (`CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_org_differ_h` */

DROP TABLE IF EXISTS `cm_group_org_differ_h`;

CREATE TABLE `cm_group_org_differ_h` (
  `H_ID` bigint(12) NOT NULL,
  `DIFFER_ID` bigint(12) NOT NULL COMMENT '差异编号（主键）\n目前只考虑组织机构层级的差异性',
  `DEPT_ID` bigint(12) DEFAULT NULL COMMENT '集团组织机构唯一标识',
  `PARENT_DEPT_ID` bigint(12) NOT NULL COMMENT '上级组织机构标识',
  `IMPORT_PARENT_DEPT_ID` bigint(12) DEFAULT NULL COMMENT '第三方机构的组织机构编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '组织机构对应的集团客户编号',
  `PARENT_CUST_ID` bigint(14) NOT NULL COMMENT '上级组织机构对应的集团客户编号',
  `IMPORT_PARENT_CUST_ID` bigint(14) DEFAULT NULL COMMENT '第三方机构的上级组织机构对应的集团客户编号',
  `CUST_SERVICE_ID` varchar(50) DEFAULT NULL COMMENT '客户服务编号\n\n客户服务编号是系统按照一定规则生成的序列号，当客户被创建后告知客户，方便以后客户可以通过提供这个编号直接办理业务等。\n\n\n----------------Telenor需求概念扩展\n组织机构对应的第三方机构客户唯一编码（例如：CPR NUMBER、KOB NUMBER）',
  `PARENT_CUSTSERV_ID` varchar(50) DEFAULT NULL COMMENT '客户服务编号\n\n客户服务编号是系统按照一定规则生成的序列号，当客户被创建后告知客户，方便以后客户可以通过提供这个编号直接办理业务等。\n\n----------------Telenor需求概念扩展\n上级组织机构对应的第三方机构客户唯一编码（例如：CPR NUMBER、KOB NUMBER）',
  `IMPORT_PARENT_CUSTSERV_ID` varchar(50) DEFAULT NULL COMMENT '客户服务编号\n\n客户服务编号是系统按照一定规则生成的序列号，当客户被创建后告知客户，方便以后客户可以通过提供这个编号直接办理业务等。\n\n----------------Telenor需求概念扩展\n第三方机构的上级组织机构对应的第三方机构客户唯一编码（例如：CPR NUMBER、KOB NUMBER）',
  `IMPORT_SOURCE` varchar(128) DEFAULT NULL COMMENT '第三方机构来源\n例如：CPR、KOB等',
  `IMPORT_DATE` datetime DEFAULT NULL COMMENT '导入时间',
  `IS_ALERT` bigint(2) DEFAULT NULL COMMENT '是否提醒客户经理\n0：不需提醒\n1：需要提醒',
  `PROCESS_STATUS` bigint(2) DEFAULT NULL COMMENT '1:未变更，2:已变更',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`H_ID`),
  KEY `IDX_CM_GROUP_ORG_DIFFER_1` (`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_org_struct` */

DROP TABLE IF EXISTS `cm_group_org_struct`;

CREATE TABLE `cm_group_org_struct` (
  `DEPT_ID` bigint(12) NOT NULL COMMENT '集团组织机构唯一标识',
  `PARENT_DEPT_ID` bigint(12) DEFAULT NULL COMMENT '上级组织机构标识',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '集团客户编号',
  `DEPT_NAME` varchar(128) DEFAULT NULL COMMENT '组织机构名称',
  `DEPT_TYPE` bigint(2) NOT NULL COMMENT '组织机构类型（CM_GROUP_DEPT_TYPE）\n0:分公司\n1:部门',
  `DEPT_FUNC` varchar(50) DEFAULT NULL COMMENT '组织机构职能',
  `DEPT_LEVEL` bigint(2) DEFAULT NULL COMMENT '组织机构级别（CM_GROUP_DEPT_LEVEL）\n0：一级\n1：二级',
  `PRINCIPAL` varchar(60) DEFAULT NULL COMMENT '组织机构负责人',
  `PRINCIPAL_TEL` varchar(20) DEFAULT NULL COMMENT '负责人联系电话',
  `HAS_LEAF` bigint(2) DEFAULT NULL COMMENT 'telenor未使用\n\nCM_GROUP_HAS_LEAF\n0：否\n1：是',
  `REL_CUST_ID` bigint(14) DEFAULT NULL,
  `IS_CONTACT_POINT` bigint(2) DEFAULT NULL COMMENT '是否联系点：\n1：联系点\n0：非联系点',
  `IS_HAVE_CONTACT_POINT` bigint(2) DEFAULT NULL COMMENT '针对层级跟节点，标识是否整个层级是否有联系点。\n1：是\n0：否',
  `IS_REVISABLE` bigint(2) DEFAULT NULL COMMENT '能否被KOB同步文件覆盖\n0：不允许\n1：允许',
  `MODIFIED_BY` bigint(12) DEFAULT NULL COMMENT '----------------Telenor需求概念扩展\n集团组织结构信息修改人员（目前只考虑修改组织机构层级的人员）',
  `MODIFIED_DATE` datetime DEFAULT NULL COMMENT '----------------Telenor需求概念扩展\n集团组织结构信息修改时间',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `IS_CPE_PROVISIONING_NEEDED` varchar(2) DEFAULT NULL COMMENT 'Y：是\nN：否',
  `WIFI_NAME` varchar(100) DEFAULT NULL,
  `WIFI_PASSWORD` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DEPT_ID`),
  KEY `IDX_CM_GROUP_ORG_STR_1` (`CUST_ID`),
  KEY `IDX_CM_GROUP_ORG_STR_2` (`PARENT_DEPT_ID`),
  KEY `IDX_CM_GROUP_ORG_STR_3` (`REL_CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保存政企组织结构信息表。\n    一个集团客户组织机构必须且仅归属于一个集团客户，集团客户组织机构之间存在着上下级等关系。子集团在展示集团组织机构树时需要展示在树上，因此组织机构与集团之间也存在一个集团组织机构包含多个子集团的关系。\n\n\n\n分表方式：租户分表\n分区方式：不分区\n敏感信息安全等级：中\n业务操作安全等级：中';

/*Table structure for table `cm_group_org_struct_21` */

DROP TABLE IF EXISTS `cm_group_org_struct_21`;

CREATE TABLE `cm_group_org_struct_21` (
  `DEPT_ID` bigint(12) NOT NULL,
  `PARENT_DEPT_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `DEPT_NAME` varchar(128) DEFAULT NULL,
  `DEPT_TYPE` bigint(2) NOT NULL COMMENT '组织机构类型（CM_GROUP_DEPT_TYPE）\n0:分公司\n1:部门',
  `DEPT_FUNC` varchar(50) DEFAULT NULL,
  `DEPT_LEVEL` bigint(2) DEFAULT NULL,
  `PRINCIPAL` varchar(60) DEFAULT NULL,
  `PRINCIPAL_TEL` varchar(20) DEFAULT NULL,
  `HAS_LEAF` bigint(2) DEFAULT NULL,
  `REL_CUST_ID` bigint(14) DEFAULT NULL,
  `IS_CONTACT_POINT` bigint(2) DEFAULT NULL,
  `IS_HAVE_CONTACT_POINT` bigint(2) DEFAULT NULL,
  `IS_REVISABLE` bigint(2) DEFAULT NULL,
  `MODIFIED_BY` bigint(12) DEFAULT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `IS_CPE_PROVISIONING_NEEDED` varchar(2) DEFAULT NULL,
  `WIFI_NAME` varchar(100) DEFAULT NULL,
  `WIFI_PASSWORD` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DEPT_ID`),
  KEY `IDX_CM_GROUP_ORG_STR_1_21` (`CUST_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_ORG_STR_2_21` (`PARENT_DEPT_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_ORG_STR_3_21` (`REL_CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_org_struct_91` */

DROP TABLE IF EXISTS `cm_group_org_struct_91`;

CREATE TABLE `cm_group_org_struct_91` (
  `DEPT_ID` bigint(12) NOT NULL,
  `PARENT_DEPT_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `DEPT_NAME` varchar(128) DEFAULT NULL,
  `DEPT_TYPE` bigint(2) NOT NULL COMMENT '组织机构类型（CM_GROUP_DEPT_TYPE）\n0:分公司\n1:部门',
  `DEPT_FUNC` varchar(50) DEFAULT NULL,
  `DEPT_LEVEL` bigint(2) DEFAULT NULL,
  `PRINCIPAL` varchar(60) DEFAULT NULL,
  `PRINCIPAL_TEL` varchar(20) DEFAULT NULL,
  `HAS_LEAF` bigint(2) DEFAULT NULL,
  `REL_CUST_ID` bigint(14) DEFAULT NULL,
  `IS_CONTACT_POINT` bigint(2) DEFAULT NULL,
  `IS_HAVE_CONTACT_POINT` bigint(2) DEFAULT NULL,
  `IS_REVISABLE` bigint(2) DEFAULT NULL,
  `MODIFIED_BY` bigint(12) DEFAULT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `IS_CPE_PROVISIONING_NEEDED` varchar(2) DEFAULT NULL,
  `WIFI_NAME` varchar(100) DEFAULT NULL,
  `WIFI_PASSWORD` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DEPT_ID`),
  KEY `IDX_CM_GROUP_ORG_STR_1_91` (`CUST_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_ORG_STR_2_91` (`PARENT_DEPT_ID`) USING BTREE,
  KEY `IDX_CM_GROUP_ORG_STR_3_91` (`REL_CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_org_struct_h` */

DROP TABLE IF EXISTS `cm_group_org_struct_h`;

CREATE TABLE `cm_group_org_struct_h` (
  `H_ID` bigint(12) NOT NULL,
  `DEPT_ID` bigint(12) NOT NULL COMMENT '集团组织机构唯一标识',
  `PARENT_DEPT_ID` bigint(12) DEFAULT NULL COMMENT '上级组织机构标识',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '集团客户编号',
  `DEPT_NAME` varchar(128) DEFAULT NULL COMMENT '组织机构名称',
  `DEPT_TYPE` bigint(2) NOT NULL COMMENT '组织机构类型（CM_GROUP_DEPT_TYPE）\n0	部门\n1              分公司',
  `DEPT_FUNC` varchar(50) DEFAULT NULL COMMENT '组织机构职能',
  `DEPT_LEVEL` bigint(2) DEFAULT NULL COMMENT '组织机构级别（CM_GROUP_DEPT_LEVEL）\n0：一级\n1：二级',
  `PRINCIPAL` varchar(60) DEFAULT NULL COMMENT '组织机构负责人',
  `PRINCIPAL_TEL` varchar(20) DEFAULT NULL COMMENT '负责人联系电话',
  `HAS_LEAF` bigint(2) DEFAULT NULL COMMENT 'telenor未使用\n\nCM_GROUP_HAS_LEAF\n0：否\n1：是',
  `REL_CUST_ID` bigint(14) DEFAULT NULL,
  `IS_CONTACT_POINT` bigint(2) DEFAULT NULL COMMENT '是否联系点：\n1：联系点\n0：非联系点',
  `IS_REVISABLE` bigint(2) DEFAULT NULL COMMENT '能否被KOB同步文件覆盖\n0：不允许\n1：允许',
  `IS_HAVE_CONTACT_POINT` bigint(2) DEFAULT NULL COMMENT '针对层级跟节点，标识是否整个层级是否有联系点。\n1：是\n0：否',
  `MODIFIED_BY` bigint(12) DEFAULT NULL COMMENT '----------------Telenor需求概念扩展\n集团组织结构信息修改人员（目前只考虑修改组织机构层级的人员）',
  `MODIFIED_DATE` datetime DEFAULT NULL COMMENT '----------------Telenor需求概念扩展\n集团组织结构信息修改时间',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `IS_CPE_PROVISIONING_NEEDED` varchar(2) DEFAULT NULL COMMENT 'Y：是\nN：否',
  `WIFI_NAME` varchar(100) DEFAULT NULL,
  `WIFI_PASSWORD` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `IDX_CM_GROUP_ORG_STR_1` (`CUST_ID`),
  KEY `IDX_CM_GROUP_ORG_STR_2` (`PARENT_DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保存政企组织结构信息表。\n    一个集团客户组织机构必须且仅归属于一个集团客户，集团客户组织机构之间存在着上下级等关系。子集团在展示集团组织机构树时需要展示在树上，因此组织机构与集团之间也存在一个集团组织机构包含多个子集团的关系。\n\n\n\n分表方式：租户分表\n分区方式：不分区\n敏感信息安全等级：中\n业务操作安全等级：中';

/*Table structure for table `cm_group_rel_industry` */

DROP TABLE IF EXISTS `cm_group_rel_industry`;

CREATE TABLE `cm_group_rel_industry` (
  `REL_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `INDUSTRY_ID` varchar(8) NOT NULL COMMENT '关联BASE.BS_STATIC_DATE中CODE_TYPE=CM_VOCATION对应的CODE_VALUE。',
  `INDUSTRY_NAME` varchar(255) DEFAULT NULL COMMENT '行业名称',
  `SORT` bigint(2) NOT NULL COMMENT '枚举：\n1:first\n2;second\n3:third\n4.fourth\n5.fifth\n6.sixth\n7:Seventh\n8;Eighth',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`),
  KEY `IDX_CUST_ID` (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团关联行业.\n分表方式：按租户分表。';

/*Table structure for table `cm_group_rel_industry_21` */

DROP TABLE IF EXISTS `cm_group_rel_industry_21`;

CREATE TABLE `cm_group_rel_industry_21` (
  `REL_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `INDUSTRY_ID` varchar(8) NOT NULL,
  `INDUSTRY_NAME` varchar(255) DEFAULT NULL,
  `SORT` bigint(2) NOT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`),
  KEY `IDX_CUST_ID` (`CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_rel_industry_91` */

DROP TABLE IF EXISTS `cm_group_rel_industry_91`;

CREATE TABLE `cm_group_rel_industry_91` (
  `REL_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `INDUSTRY_ID` varchar(8) NOT NULL,
  `INDUSTRY_NAME` varchar(255) DEFAULT NULL,
  `SORT` bigint(2) NOT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`),
  KEY `IDX_CUST_ID` (`CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_group_rel_industry_h` */

DROP TABLE IF EXISTS `cm_group_rel_industry_h`;

CREATE TABLE `cm_group_rel_industry_h` (
  `H_ID` bigint(12) NOT NULL,
  `REL_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `INDUSTRY_ID` varchar(8) NOT NULL COMMENT '关联BASE.BS_STATIC_DATE中CODE_TYPE=CM_VOCATION对应的CODE_VALUE。',
  `INDUSTRY_NAME` varchar(255) DEFAULT NULL COMMENT '行业名称',
  `SORT` bigint(2) NOT NULL COMMENT '枚举：\n1:first\n2;second\n3:third\n4.fourth\n5.fifth\n6.sixth\n7:Seventh\n8;Eighth',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团关联行业.\n分表方式：按年分表。';

/*Table structure for table `cm_identification` */

DROP TABLE IF EXISTS `cm_identification`;

CREATE TABLE `cm_identification` (
  `IDEN_ID` bigint(12) NOT NULL COMMENT '识别信息主键',
  `PARTY_ID` bigint(12) DEFAULT NULL COMMENT '参与人编号\n\n表示一个参与人的唯一标识，由系统生成的全局唯一的序列号。',
  `IDEN_TYPE` bigint(2) DEFAULT NULL COMMENT '1: FACEBOOK,2: TWITTER,3: GOOGLE,4:EMAIL,5:APPLE ID,8: CPR,17:KOB',
  `IDEN_SUB_TYPE` bigint(2) DEFAULT NULL COMMENT 'In case of Personal ID (documentType=19) \n’0’ – permanent before 2000\n’1’ – permanent\n’2’ – gentilitial\n’3’ – refugee\n’4’ – immigrant\n’5’ – settled\nIn case of a Driving license (documentType = 13)  \n’1’ – vehicle driver license\n’2’ – driver license\n’3’ – international license\nIn case of passport (documentType = 12)  \n’1’ – service passport\n’2’ – seaman service passport\n’3’ – personal passport',
  `IDEN_NR` varchar(128) DEFAULT NULL COMMENT '识别号码',
  `IDEN_ADDRESS` varchar(512) DEFAULT NULL COMMENT '识别信息地址',
  `ISSUER_AUTHORITY` varchar(128) DEFAULT NULL COMMENT '证件发行机构',
  `IDEN_EFF_DATE` datetime DEFAULT NULL COMMENT '识别信息签发时间',
  `IDEN_EXP_DATE` datetime DEFAULT NULL COMMENT '识别信息失效时间',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '识别信息状态(在用，挂失，补办)',
  `STATUS_DATE` datetime DEFAULT NULL COMMENT '状态变更时间',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`IDEN_ID`),
  KEY `IDX_GROUP_SEGMENTATTR_RELA_1` (`IDEN_TYPE`),
  KEY `idx_cm_identification_2` (`PARTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录参与人识别信息';

/*Table structure for table `cm_identification_21` */

DROP TABLE IF EXISTS `cm_identification_21`;

CREATE TABLE `cm_identification_21` (
  `IDEN_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `IDEN_TYPE` bigint(2) DEFAULT NULL COMMENT '1: FACEBOOK,2: TWITTER,3: GOOGLE,4:EMAIL,5:APPLE ID,8: CPR,17:KOB',
  `IDEN_SUB_TYPE` bigint(2) DEFAULT NULL,
  `IDEN_NR` varchar(128) DEFAULT NULL,
  `IDEN_ADDRESS` varchar(512) DEFAULT NULL,
  `ISSUER_AUTHORITY` varchar(128) DEFAULT NULL,
  `IDEN_EFF_DATE` datetime DEFAULT NULL,
  `IDEN_EXP_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(3) DEFAULT NULL,
  `STATUS_DATE` datetime DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`IDEN_ID`),
  KEY `IDX_ROUP_SEGMENTATTR_RELA_1_21` (`IDEN_TYPE`) USING BTREE,
  KEY `idx_cm_identification_2` (`PARTY_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_identification_91` */

DROP TABLE IF EXISTS `cm_identification_91`;

CREATE TABLE `cm_identification_91` (
  `IDEN_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `IDEN_TYPE` bigint(2) DEFAULT NULL COMMENT '1: FACEBOOK,2: TWITTER,3: GOOGLE,4:EMAIL,5:APPLE ID,8: CPR,17:KOB',
  `IDEN_SUB_TYPE` bigint(2) DEFAULT NULL,
  `IDEN_NR` varchar(128) DEFAULT NULL,
  `IDEN_ADDRESS` varchar(512) DEFAULT NULL,
  `ISSUER_AUTHORITY` varchar(128) DEFAULT NULL,
  `IDEN_EFF_DATE` datetime DEFAULT NULL,
  `IDEN_EXP_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(3) DEFAULT NULL,
  `STATUS_DATE` datetime DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`IDEN_ID`),
  KEY `IDX_ROUP_SEGMENTATTR_RELA_1_91` (`IDEN_TYPE`) USING BTREE,
  KEY `idx_cm_identification_2` (`PARTY_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_identification_h` */

DROP TABLE IF EXISTS `cm_identification_h`;

CREATE TABLE `cm_identification_h` (
  `H_ID` bigint(12) NOT NULL,
  `IDEN_ID` bigint(12) NOT NULL COMMENT '识别信息主键',
  `PARTY_ID` bigint(12) DEFAULT NULL COMMENT '参与人编号\n\n表示一个参与人的唯一标识，由系统生成的全局唯一的序列号。',
  `IDEN_TYPE` bigint(2) DEFAULT NULL COMMENT '识别类型\n’I’ – Personal ID（匈牙利）\n’V’ – Driving license（匈牙利）\n’U’ – Passport（匈牙利）\nK  --KOB NUMBER(丹麦)\nC -- CPR NUMBER（丹麦）',
  `IDEN_SUB_TYPE` bigint(2) DEFAULT NULL COMMENT 'In case of Personal ID (documentType=I) \n’0’ – permanent before 2000\n’1’ – permanent\n’2’ – gentilitial\n’3’ – refugee\n’4’ – immigrant\n’5’ – settled\nIn case of a Driving license (documentType = ’V’)  \n’1’ – vehicle driver license\n’2’ – driver license\n’3’ – international license\nIn case of passport (documentType = ’U’)  \n’1’ – service passport\n’2’ – seaman service passport\n’3’ – personal passport',
  `IDEN_NR` varchar(128) DEFAULT NULL COMMENT '识别号码',
  `IDEN_ADDRESS` varchar(512) DEFAULT NULL COMMENT '识别信息地址',
  `ISSUER_AUTHORITY` varchar(128) DEFAULT NULL COMMENT '证件发行机构',
  `IDEN_EFF_DATE` datetime DEFAULT NULL COMMENT '识别信息签发时间',
  `IDEN_EXP_DATE` datetime DEFAULT NULL COMMENT '识别信息失效时间',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '识别信息状态(在用，挂失，补办)',
  `STATUS_DATE` datetime DEFAULT NULL COMMENT '状态变更时间',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `IDX_GROUP_SEGMENTATTR_RELA_1` (`IDEN_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录参与人识别信息';

/*Table structure for table `cm_indiv_contact` */

DROP TABLE IF EXISTS `cm_indiv_contact`;

CREATE TABLE `cm_indiv_contact` (
  `CUST_CONT_ID` bigint(12) NOT NULL COMMENT '客户联系人编号',
  `PARTY_ID` bigint(12) NOT NULL COMMENT '参与人编号\n\n表示一个参与人的唯一标识，由系统生成的全局唯一的序列号。',
  `CONT_ID` bigint(12) NOT NULL COMMENT '记录参与人联系信息的唯一标识，作为主键。',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '个人客户编号\n客户唯一标识(主键)，来源于系统序列号\n标明此处的个人客户唯一标识与基础客户的唯一标识是不一样的。',
  `PRIORY_LEVEL` bigint(2) DEFAULT NULL COMMENT '联系方式优先级  CM_GROUP_CUST_CONT_PRIORY_LEVEL\n1：主要\n2：次要',
  `CONT_TYPE` bigint(2) DEFAULT NULL COMMENT 'CM_INDIV_CUST_CONT_TYPE\n联系人类型\n1.监护人',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`CUST_CONT_ID`),
  KEY `IDX_CM_INDIV_CONTACT_2` (`PARTY_ID`),
  KEY `IDX_CM_INDIV_CONTACT_3` (`CONT_ID`),
  KEY `idx_cm_indiv_contact_1` (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人客户联系人信息表\n\n\n分表方式：租户分表\n分区方式：不分区\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_indiv_contact_21` */

DROP TABLE IF EXISTS `cm_indiv_contact_21`;

CREATE TABLE `cm_indiv_contact_21` (
  `CUST_CONT_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) NOT NULL,
  `CONT_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `PRIORY_LEVEL` bigint(2) DEFAULT NULL,
  `CONT_TYPE` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CUST_CONT_ID`),
  KEY `IDX_CM_INDIV_CONTACT_3_21` (`CONT_ID`) USING BTREE,
  KEY `IDX_CM_INDIV_CONTACT_2_21` (`PARTY_ID`) USING BTREE,
  KEY `idx_cm_indiv_contact_1` (`CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_indiv_contact_91` */

DROP TABLE IF EXISTS `cm_indiv_contact_91`;

CREATE TABLE `cm_indiv_contact_91` (
  `CUST_CONT_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) NOT NULL,
  `CONT_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `PRIORY_LEVEL` bigint(2) DEFAULT NULL,
  `CONT_TYPE` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CUST_CONT_ID`),
  KEY `IDX_CM_INDIV_CONTACT_3_91` (`CONT_ID`) USING BTREE,
  KEY `IDX_CM_INDIV_CONTACT_2_91` (`PARTY_ID`) USING BTREE,
  KEY `idx_cm_indiv_contact_1` (`CUST_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_indiv_contact_h` */

DROP TABLE IF EXISTS `cm_indiv_contact_h`;

CREATE TABLE `cm_indiv_contact_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '历史记录编号',
  `CUST_CONT_ID` bigint(12) NOT NULL COMMENT '客户联系人编号',
  `PARTY_ID` bigint(12) DEFAULT NULL COMMENT '参与人编号\n\n表示一个参与人的唯一标识，由系统生成的全局唯一的序列号。',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '家庭客户编号',
  `CONT_ID` bigint(12) DEFAULT NULL COMMENT '记录参与人联系信息的唯一标识，作为主键。',
  `PRIORY_LEVEL` bigint(2) DEFAULT NULL COMMENT '联系方式优先级，从1开始，数字越小，优先级越高。',
  `CONT_TYPE` bigint(2) DEFAULT NULL COMMENT '联系人类型\n\n使用者；\n担保人；\n关键人；',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人客户联系人信息表\n\n\n分表方式：按年分表\n分区方式：待定\n分区字段：待定\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_indiv_customer` */

DROP TABLE IF EXISTS `cm_indiv_customer`;

CREATE TABLE `cm_indiv_customer` (
  `CUST_ID` bigint(14) NOT NULL COMMENT '个人客户编号\n客户唯一标识(主键)，来源于系统序列号\n标明此处的个人客户唯一标识与基础客户的唯一标识是不一样的。',
  `PARTY_ID` bigint(12) DEFAULT NULL COMMENT '参与人编号',
  `CUST_SERVICE_ID` varchar(50) DEFAULT NULL COMMENT '客户服务编号\n\n客户服务编号是系统按照一定规则生成的序列号，当客户被创建后告知客户，方便以后客户可以通过提供这个编号直接办理业务等。\n\n\n----------------Telenor需求概念扩展\n第三方机构客户唯一编码（例如：CPR NUMBER、KOB NUMBER）',
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `CUST_NAME_QRY` varchar(256) DEFAULT NULL,
  `CUST_NAME` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `SHORT_NAME` varchar(128) DEFAULT NULL COMMENT '简称',
  `ENGLISH_NAME` varchar(256) DEFAULT NULL COMMENT '英文名称',
  `CUST_STATUS` bigint(2) NOT NULL COMMENT '客户状态\n0 潜在\n1 在网\n3 暂停\n2 离网\n4 注销\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_CUST_STATUS_1‘;',
  `CUST_PASSWORD` varchar(50) DEFAULT NULL,
  `CUST_ZIPCODE` varchar(9) DEFAULT NULL COMMENT '邮政编码',
  `CUST_ADDRESS` varchar(256) DEFAULT NULL COMMENT '客户地址',
  `CUST_SERVICE_LEVEL` bigint(2) DEFAULT NULL COMMENT '客户服务级别（SELECT * FROM BASE.`bs_static_data` T WHERE  T.`CODE_TYPE`  = ''CM_CUST_SERVICE_LEVEL_1''）',
  `CUST_CERT_TYPE` bigint(2) DEFAULT NULL COMMENT '8:CPR\n\n\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_CUST_CERT_TYPE_1;',
  `CUST_CERT_CODE` varchar(50) DEFAULT NULL COMMENT '证件号码',
  `CUST_CERT_ADDRESS` varchar(256) DEFAULT NULL COMMENT '证件地址',
  `CUST_CERT_EFFDATE` datetime DEFAULT NULL,
  `CUST_CERT_EXPIRE` datetime DEFAULT NULL COMMENT '证件有效期',
  `INDIV_CUST_TYPE` varchar(2) DEFAULT NULL COMMENT '客户物理表中客户角色区分\n1：客户\n2：使用者\n3:   员工',
  `CUST_LANGUAGE` varchar(25) DEFAULT NULL COMMENT '1.丹麦语\n2.匈牙利语\n3.英语',
  `IS_VIP` bigint(2) DEFAULT NULL COMMENT '是否大客户\n\n0：否\n1：是',
  `CREDIT_LEVEL` varchar(20) DEFAULT NULL COMMENT '客户信用等级（CM_DK_CREDIT_LEVE）SELECT m.`PARA1`,n.`EN_US` FROM base.`bs_para_detail` m , base.`bs_i18n_resource` n WHERE m.`PARA_TYPE` = ''CM_DK_CREDIT'' AND m.`PARA_CODE` = ''CM_DK_CREDIT_LEVE'' AND m.`PARA2` = n.`RES_KEY`;',
  `CREDIT_VALUE` bigint(12) DEFAULT NULL COMMENT '个人客户（信用度单位为分）\n50级：0\n51级：500\n52级：1000\n53级：1500\n54级：2000\n55级：2500\n56级：3000\n57级：5000\n58级：10000\n59级：15000\n60级：20000\n61级：30000\n62级：50000\n63级：60000\n64级：80000\n65级：200000',
  `IS_REVISABLE` bigint(2) DEFAULT NULL COMMENT 'SELECT * FROM base.bs_static_data t WHERE t.code_type = ''CM_YES_NO'';',
  `GENDER` bigint(2) DEFAULT NULL COMMENT '客户性别\n1	男\n2	女\n0	未知\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_GENDER;',
  `LUNAR` bigint(2) DEFAULT NULL COMMENT 'telenor未使用\n生日类别\n0：阳历（缺省）\n1：阴历',
  `BIRTHDAY` datetime DEFAULT NULL COMMENT '出生日期',
  `BIRTH_PLACE` varchar(27) DEFAULT NULL COMMENT '出生地',
  `OCCUPATION` bigint(2) DEFAULT NULL COMMENT '所属行业\n1：未知\n2：其他\n3：个体户/私营业主\n4：机关干部\n5：教师/医生/技术人员\n6：工人/一般职业\n7：司机\n8：中高级企业管理人员\n9：业务员/销售员/推销员\n10：学生\n11：全职家庭主妇\n12：离退休在家\n13：公务员\n14：社会名流\n15：无业\n16：自由职业者\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_INDIV_CUST_OCCUPATION;',
  `REAL_NAME_FLAG` bigint(2) NOT NULL COMMENT '实名标志：\n0	否\n1	是\n\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_CUST_REAL_NAME_FLAG’;',
  `RELIGION` varchar(255) DEFAULT NULL COMMENT '宗教信仰',
  `NATIONAL_TYPE` bigint(6) DEFAULT NULL COMMENT '民族  CM_NATIONAL_TYPE\n10	汉族	       \n11	蒙古族       \n12	鄂温克族     \n13	鄂伦春族	   \n14	达斡尔族	   \n15	赫哲族	     \n16	朝鲜族	     \n17	满族	       \n18	纳西族	     \n19	藏族         \n20	僳僳族	     \n21	彝族	       \n22	普米族       \n23	白族	       \n24	独龙族	     \n25	怒族	       \n26	阿昌族	     \n27	景颇族	     \n28	德昂族	     \n29	佤族	       \n30	拉祜族	     \n31	布朗族	     \n32	基诺族	     \n33	傣族	       \n34	哈尼族	     \n35	门巴族	     \n36	珞巴族	     \n37	塔吉克族	   \n38	柯尔克孜族	 \n39	哈萨克族	   \n40	乌孜别克族	 \n41	塔塔尔族	   \n42	俄罗斯族	   \n43	锡伯族	     \n44	维吾尔族	   \n45	裕固族	     \n46	土族	       \n47	撒拉族	     \n48	保安族	     \n49	东乡族	     \n50	回族	       \n51	畲族	       \n52	黎族	       \n53	京族	       \n54	毛南族	     \n55	壮族	       \n56	仫佬族	     \n57	Yao	瑶族	   \n58	侗族	       \n59	苗族	       \n60	水族	       \n61	布依族	     \n62	仡佬族	     \n63	土家族	     \n64	羌族	       \n65	高山族',
  `FAMILY_INFO` varchar(255) DEFAULT NULL COMMENT '子女状况',
  `POLITICS_FACE` bigint(2) DEFAULT NULL COMMENT '政治面貌   CM_POLITICS_FACE\n0：党员\n1：团员\n2：群众\n3：其他',
  `EDUCATION_LEVEL` bigint(2) DEFAULT NULL COMMENT '学历  CM_CUST_EDUCATION_LEVEL\n\n0	初中以下\n1	初中\n2	高中\n3	中专、技校\n4	大专\n5	本科\n6	硕士\n7	博士\n8	其他',
  `INCOME_LEVEL` bigint(6) DEFAULT NULL COMMENT '收入  CM_INCOME_LEVEL\n\n1	0-3万             \n10	200万-300万     \n11	300万-400万     \n12	400万-500万     \n13	500万-1000万    \n14	1000万-2000万   \n15	2000万-3000万   \n16	3000万-4000万   \n17	4000万-5000万   \n18	5000万-1亿      \n19	1亿-5亿         \n2	3万-5万           \n20	5亿-10亿        \n21	10亿-50亿       \n22	50亿以上        \n3	5万-8万           \n4	8万-10万          \n5	10万-20万         \n6	20万-50万         \n7	50万-80万         \n8	80万-100万        \n9	100万-200万',
  `CHARACTER_DESC` varchar(256) DEFAULT NULL COMMENT '性格描述',
  `JOB_POSITION` varchar(40) DEFAULT NULL COMMENT '职位   CMX_POSITION\n\n1	未知\n2	职员\n3	科长\n4	经理',
  `JOB_COMPANY` varchar(255) DEFAULT NULL COMMENT '工作单位',
  `MARRY_STATUS` bigint(2) DEFAULT NULL COMMENT '婚姻状况   CM_INDIV_CUST_MARRY_STATUS\n0	未知\n1	已婚\n2	未婚',
  `HOBBY` varchar(255) DEFAULT NULL COMMENT '个人爱好',
  `PHYSIOLOGICAL_STATE` bigint(2) DEFAULT NULL COMMENT '0代表正常人\n1代表眼盲人士\n2代表耳聋人士,\n3代表眼盲、耳聋',
  `ANONYMOUS_FLAG` bigint(2) DEFAULT NULL COMMENT 'SELECT * FROM base.bs_static_data t WHERE t.code_type = ''CM_YES_NO'';',
  `NATIONALITY` varchar(10) DEFAULT NULL COMMENT '国家',
  `PROVINCE_ID` varchar(10) DEFAULT NULL COMMENT '省份',
  `CITY_ID` varchar(10) DEFAULT NULL COMMENT '地市',
  `COUNTY_ID` varchar(10) DEFAULT NULL COMMENT '区县',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`CUST_ID`),
  KEY `IDX_CM_INDIV_CUSTOMER_1` (`CUST_NAME`),
  KEY `IDX_CM_INDIV_CUSTOMER_3` (`PARTY_ID`),
  KEY `IDX_CM_INDIV_CUSTOMER_4` (`CUST_SERVICE_ID`),
  KEY `idx_cm_indiv_customer_5` (`BIRTHDAY`),
  KEY `idx_cm_indiv_customer_6` (`INDIV_CUST_TYPE`,`STATE`),
  KEY `idx_cm_indiv_customer_7` (`CUST_STATUS`),
  KEY `idx_cm_indiv_customer_2` (`CUST_CERT_CODE`,`CUST_CERT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人客户表，保存个人客户基本信息。\n个人客户是客户的一个具体类型。\n\n分表方式：租户分表\n分区方式：不分区\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_indiv_customer_21` */

DROP TABLE IF EXISTS `cm_indiv_customer_21`;

CREATE TABLE `cm_indiv_customer_21` (
  `CUST_ID` bigint(14) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `CUST_SERVICE_ID` varchar(50) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `CUST_NAME_QRY` varchar(256) DEFAULT NULL,
  `CUST_NAME` varchar(255) NOT NULL,
  `SHORT_NAME` varchar(128) DEFAULT NULL,
  `ENGLISH_NAME` varchar(256) DEFAULT NULL,
  `CUST_STATUS` bigint(2) NOT NULL,
  `CUST_PASSWORD` varchar(50) DEFAULT NULL,
  `CUST_ZIPCODE` varchar(9) DEFAULT NULL,
  `CUST_ADDRESS` varchar(256) DEFAULT NULL,
  `CUST_SERVICE_LEVEL` bigint(2) DEFAULT NULL COMMENT '客户服务级别（SELECT * FROM BASE.`bs_static_data` T WHERE  T.`CODE_TYPE`  = ''CM_CUST_SERVICE_LEVEL_1''）',
  `CUST_CERT_TYPE` bigint(2) DEFAULT NULL,
  `CUST_CERT_CODE` varchar(50) DEFAULT NULL,
  `CUST_CERT_ADDRESS` varchar(256) DEFAULT NULL,
  `CUST_CERT_EFFDATE` datetime DEFAULT NULL,
  `CUST_CERT_EXPIRE` datetime DEFAULT NULL,
  `INDIV_CUST_TYPE` varchar(2) DEFAULT NULL,
  `CUST_LANGUAGE` varchar(25) DEFAULT NULL,
  `IS_VIP` bigint(2) DEFAULT NULL,
  `CREDIT_LEVEL` varchar(20) DEFAULT NULL COMMENT '客户信用等级（CM_DK_CREDIT_LEVE）SELECT m.`PARA1`,n.`EN_US` FROM base.`bs_para_detail` m , base.`bs_i18n_resource` n WHERE m.`PARA_TYPE` = ''CM_DK_CREDIT'' AND m.`PARA_CODE` = ''CM_DK_CREDIT_LEVE'' AND m.`PARA2` = n.`RES_KEY`;',
  `CREDIT_VALUE` bigint(12) DEFAULT NULL,
  `IS_REVISABLE` bigint(2) DEFAULT NULL COMMENT 'SELECT * FROM base.bs_static_data t WHERE t.code_type = ''CM_YES_NO'';',
  `GENDER` bigint(2) DEFAULT NULL,
  `LUNAR` bigint(2) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `BIRTH_PLACE` varchar(27) DEFAULT NULL,
  `OCCUPATION` bigint(2) DEFAULT NULL,
  `REAL_NAME_FLAG` bigint(2) NOT NULL,
  `RELIGION` varchar(255) DEFAULT NULL,
  `NATIONAL_TYPE` bigint(6) DEFAULT NULL,
  `FAMILY_INFO` varchar(255) DEFAULT NULL,
  `POLITICS_FACE` bigint(2) DEFAULT NULL,
  `EDUCATION_LEVEL` bigint(2) DEFAULT NULL,
  `INCOME_LEVEL` bigint(6) DEFAULT NULL,
  `CHARACTER_DESC` varchar(256) DEFAULT NULL,
  `JOB_POSITION` varchar(40) DEFAULT NULL,
  `JOB_COMPANY` varchar(255) DEFAULT NULL,
  `MARRY_STATUS` bigint(2) DEFAULT NULL,
  `HOBBY` varchar(255) DEFAULT NULL,
  `PHYSIOLOGICAL_STATE` bigint(2) DEFAULT NULL,
  `ANONYMOUS_FLAG` bigint(2) DEFAULT NULL COMMENT 'SELECT * FROM base.bs_static_data t WHERE t.code_type = ''CM_YES_NO'';',
  `NATIONALITY` varchar(10) DEFAULT NULL,
  `PROVINCE_ID` varchar(10) DEFAULT NULL,
  `CITY_ID` varchar(10) DEFAULT NULL,
  `COUNTY_ID` varchar(10) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`),
  KEY `IDX_CM_INDIV_CUSTOMER_4_21` (`CUST_SERVICE_ID`) USING BTREE,
  KEY `IDX_CM_INDIV_CUSTOMER_1_21` (`CUST_NAME`) USING BTREE,
  KEY `IDX_CM_INDIV_CUSTOMER_3_21` (`PARTY_ID`) USING BTREE,
  KEY `idx_cm_indiv_customer_5_21` (`BIRTHDAY`) USING BTREE,
  KEY `idx_cm_indiv_customer_6` (`INDIV_CUST_TYPE`,`STATE`) USING BTREE,
  KEY `idx_cm_indiv_customer_7` (`CUST_STATUS`) USING BTREE,
  KEY `idx_cm_indiv_customer_2` (`CUST_CERT_CODE`,`CUST_CERT_TYPE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_indiv_customer_91` */

DROP TABLE IF EXISTS `cm_indiv_customer_91`;

CREATE TABLE `cm_indiv_customer_91` (
  `CUST_ID` bigint(14) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `CUST_SERVICE_ID` varchar(50) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `CUST_NAME_QRY` varchar(256) DEFAULT NULL,
  `CUST_NAME` varchar(255) NOT NULL,
  `SHORT_NAME` varchar(128) DEFAULT NULL,
  `ENGLISH_NAME` varchar(256) DEFAULT NULL,
  `CUST_STATUS` bigint(2) NOT NULL,
  `CUST_PASSWORD` varchar(50) DEFAULT NULL,
  `CUST_ZIPCODE` varchar(9) DEFAULT NULL,
  `CUST_ADDRESS` varchar(256) DEFAULT NULL,
  `CUST_SERVICE_LEVEL` bigint(2) DEFAULT NULL COMMENT '客户服务级别（SELECT * FROM BASE.`bs_static_data` T WHERE  T.`CODE_TYPE`  = ''CM_CUST_SERVICE_LEVEL_1''）',
  `CUST_CERT_TYPE` bigint(2) DEFAULT NULL,
  `CUST_CERT_CODE` varchar(50) DEFAULT NULL,
  `CUST_CERT_ADDRESS` varchar(256) DEFAULT NULL,
  `CUST_CERT_EFFDATE` datetime DEFAULT NULL,
  `CUST_CERT_EXPIRE` datetime DEFAULT NULL,
  `INDIV_CUST_TYPE` varchar(2) DEFAULT NULL,
  `CUST_LANGUAGE` varchar(25) DEFAULT NULL,
  `IS_VIP` bigint(2) DEFAULT NULL,
  `CREDIT_LEVEL` varchar(20) DEFAULT NULL COMMENT '客户信用等级（CM_DK_CREDIT_LEVE）SELECT m.`PARA1`,n.`EN_US` FROM base.`bs_para_detail` m , base.`bs_i18n_resource` n WHERE m.`PARA_TYPE` = ''CM_DK_CREDIT'' AND m.`PARA_CODE` = ''CM_DK_CREDIT_LEVE'' AND m.`PARA2` = n.`RES_KEY`;',
  `CREDIT_VALUE` bigint(12) DEFAULT NULL,
  `IS_REVISABLE` bigint(2) DEFAULT NULL COMMENT 'SELECT * FROM base.bs_static_data t WHERE t.code_type = ''CM_YES_NO'';',
  `GENDER` bigint(2) DEFAULT NULL,
  `LUNAR` bigint(2) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `BIRTH_PLACE` varchar(27) DEFAULT NULL,
  `OCCUPATION` bigint(2) DEFAULT NULL,
  `REAL_NAME_FLAG` bigint(2) NOT NULL,
  `RELIGION` varchar(255) DEFAULT NULL,
  `NATIONAL_TYPE` bigint(6) DEFAULT NULL,
  `FAMILY_INFO` varchar(255) DEFAULT NULL,
  `POLITICS_FACE` bigint(2) DEFAULT NULL,
  `EDUCATION_LEVEL` bigint(2) DEFAULT NULL,
  `INCOME_LEVEL` bigint(6) DEFAULT NULL,
  `CHARACTER_DESC` varchar(256) DEFAULT NULL,
  `JOB_POSITION` varchar(40) DEFAULT NULL,
  `JOB_COMPANY` varchar(255) DEFAULT NULL,
  `MARRY_STATUS` bigint(2) DEFAULT NULL,
  `HOBBY` varchar(255) DEFAULT NULL,
  `PHYSIOLOGICAL_STATE` bigint(2) DEFAULT NULL,
  `ANONYMOUS_FLAG` bigint(2) DEFAULT NULL COMMENT 'SELECT * FROM base.bs_static_data t WHERE t.code_type = ''CM_YES_NO'';',
  `NATIONALITY` varchar(10) DEFAULT NULL,
  `PROVINCE_ID` varchar(10) DEFAULT NULL,
  `CITY_ID` varchar(10) DEFAULT NULL,
  `COUNTY_ID` varchar(10) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`),
  KEY `IDX_CM_INDIV_CUSTOMER_4_91` (`CUST_SERVICE_ID`) USING BTREE,
  KEY `IDX_CM_INDIV_CUSTOMER_1_91` (`CUST_NAME`) USING BTREE,
  KEY `IDX_CM_INDIV_CUSTOMER_3_91` (`PARTY_ID`) USING BTREE,
  KEY `idx_cm_indiv_customer_5_91` (`BIRTHDAY`) USING BTREE,
  KEY `idx_cm_indiv_customer_6` (`INDIV_CUST_TYPE`,`STATE`) USING BTREE,
  KEY `idx_cm_indiv_customer_7` (`CUST_STATUS`) USING BTREE,
  KEY `idx_cm_indiv_customer_2` (`CUST_CERT_CODE`,`CUST_CERT_TYPE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_indiv_customer_h` */

DROP TABLE IF EXISTS `cm_indiv_customer_h`;

CREATE TABLE `cm_indiv_customer_h` (
  `H_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL COMMENT '个人客户编号\n客户唯一标识(主键)，来源于系统序列号\n标明此处的个人客户唯一标识与基础客户的唯一标识是不一样的。',
  `PARTY_ID` bigint(12) DEFAULT NULL COMMENT '参与人编号',
  `CUST_SERVICE_ID` varchar(50) DEFAULT NULL COMMENT '客户服务编号\n\n客户服务编号是系统按照一定规则生成的序列号，当客户被创建后告知客户，方便以后客户可以通过提供这个编号直接办理业务等。\n\n\n----------------Telenor需求概念扩展\n第三方机构客户唯一编码（例如：CPR NUMBER、KOB NUMBER）',
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `CUST_NAME_QRY` varchar(256) DEFAULT NULL,
  `CUST_NAME` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `SHORT_NAME` varchar(128) DEFAULT NULL COMMENT '简称',
  `ENGLISH_NAME` varchar(256) DEFAULT NULL COMMENT '英文名称',
  `CUST_PASSWORD` varchar(50) DEFAULT NULL COMMENT '客户密码',
  `CUST_STATUS` bigint(2) NOT NULL COMMENT '客户状态\n0 潜在\n1 在网\n3 暂停\n2 离网\n4 注销\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_CUST_STATUS_1‘;',
  `CUST_ZIPCODE` varchar(9) DEFAULT NULL COMMENT '邮政编码',
  `CUST_ADDRESS` varchar(256) DEFAULT NULL COMMENT '客户地址',
  `CUST_SERVICE_LEVEL` bigint(2) DEFAULT NULL COMMENT 'telenor未使用该字段\n\n客户级别\n0	普通\n1	钻石卡\n2	金卡\n3	银卡',
  `CUST_CERT_TYPE` bigint(2) DEFAULT NULL COMMENT '1：身份证\n2：护照\n3：驾驶证\n4：军官证\n5：警官证\n6：社会保险号\n7：其他\n\n\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_CUST_CERT_TYPE_1;',
  `CUST_CERT_CODE` varchar(50) DEFAULT NULL COMMENT '证件号码',
  `CUST_CERT_ADDRESS` varchar(256) DEFAULT NULL COMMENT '证件地址',
  `CUST_CERT_EFFDATE` datetime DEFAULT NULL,
  `CUST_CERT_EXPIRE` datetime DEFAULT NULL COMMENT '证件有效期',
  `INDIV_CUST_TYPE` varchar(2) DEFAULT NULL COMMENT 'telenor未使用该字段\n\n1：个人客户\n2：单位客户\n3:   测试客户',
  `CUST_LANGUAGE` varchar(25) DEFAULT NULL,
  `IS_VIP` bigint(2) DEFAULT NULL COMMENT '是否大客户\n\n0：否\n1：是',
  `CREDIT_LEVEL` varchar(20) DEFAULT NULL COMMENT '定义有50-65级共15个级别',
  `CREDIT_VALUE` bigint(12) DEFAULT NULL COMMENT '个人客户（信用度单位为分）\n50级：0\n51级：500\n52级：1000\n53级：1500\n54级：2000\n55级：2500\n56级：3000\n57级：5000\n58级：10000\n59级：15000\n60级：20000\n61级：30000\n62级：50000\n63级：60000\n64级：80000\n65级：200000',
  `GENDER` bigint(2) DEFAULT NULL COMMENT '客户性别\n1	男\n2	女\n0	未知\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_GENDER;',
  `LUNAR` bigint(2) DEFAULT NULL COMMENT 'telenor未使用\n生日类别\n0：阳历（缺省）\n1：阴历',
  `BIRTHDAY` datetime DEFAULT NULL COMMENT '出生日期',
  `BIRTH_PLACE` varchar(27) DEFAULT NULL COMMENT '出生地',
  `OCCUPATION` bigint(2) DEFAULT NULL COMMENT '所属行业\n1：未知\n2：其他\n3：个体户/私营业主\n4：机关干部\n5：教师/医生/技术人员\n6：工人/一般职业\n7：司机\n8：中高级企业管理人员\n9：业务员/销售员/推销员\n10：学生\n11：全职家庭主妇\n12：离退休在家\n13：公务员\n14：社会名流\n15：无业\n16：自由职业者\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_INDIV_CUST_OCCUPATION;',
  `REAL_NAME_FLAG` bigint(2) NOT NULL COMMENT '实名标志：\n0	否\n1	是\n\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_CUST_REAL_NAME_FLAG’;',
  `RELIGION` varchar(255) DEFAULT NULL COMMENT '宗教信仰',
  `NATIONAL_TYPE` bigint(6) DEFAULT NULL COMMENT '民族  CM_NATIONAL_TYPE\n10	汉族	       \n11	蒙古族       \n12	鄂温克族     \n13	鄂伦春族	   \n14	达斡尔族	   \n15	赫哲族	     \n16	朝鲜族	     \n17	满族	       \n18	纳西族	     \n19	藏族         \n20	僳僳族	     \n21	彝族	       \n22	普米族       \n23	白族	       \n24	独龙族	     \n25	怒族	       \n26	阿昌族	     \n27	景颇族	     \n28	德昂族	     \n29	佤族	       \n30	拉祜族	     \n31	布朗族	     \n32	基诺族	     \n33	傣族	       \n34	哈尼族	     \n35	门巴族	     \n36	珞巴族	     \n37	塔吉克族	   \n38	柯尔克孜族	 \n39	哈萨克族	   \n40	乌孜别克族	 \n41	塔塔尔族	   \n42	俄罗斯族	   \n43	锡伯族	     \n44	维吾尔族	   \n45	裕固族	     \n46	土族	       \n47	撒拉族	     \n48	保安族	     \n49	东乡族	     \n50	回族	       \n51	畲族	       \n52	黎族	       \n53	京族	       \n54	毛南族	     \n55	壮族	       \n56	仫佬族	     \n57	Yao	瑶族	   \n58	侗族	       \n59	苗族	       \n60	水族	       \n61	布依族	     \n62	仡佬族	     \n63	土家族	     \n64	羌族	       \n65	高山族',
  `FAMILY_INFO` varchar(255) DEFAULT NULL COMMENT '子女状况',
  `POLITICS_FACE` bigint(2) DEFAULT NULL COMMENT '政治面貌   CM_POLITICS_FACE\n0：党员\n1：团员\n2：群众\n3：其他',
  `EDUCATION_LEVEL` bigint(2) DEFAULT NULL COMMENT '学历  CM_CUST_EDUCATION_LEVEL\n\n0	初中以下\n1	初中\n2	高中\n3	中专、技校\n4	大专\n5	本科\n6	硕士\n7	博士\n8	其他',
  `INCOME_LEVEL` bigint(6) DEFAULT NULL COMMENT '收入  CM_INCOME_LEVEL\n\n1	0-3万             \n10	200万-300万     \n11	300万-400万     \n12	400万-500万     \n13	500万-1000万    \n14	1000万-2000万   \n15	2000万-3000万   \n16	3000万-4000万   \n17	4000万-5000万   \n18	5000万-1亿      \n19	1亿-5亿         \n2	3万-5万           \n20	5亿-10亿        \n21	10亿-50亿       \n22	50亿以上        \n3	5万-8万           \n4	8万-10万          \n5	10万-20万         \n6	20万-50万         \n7	50万-80万         \n8	80万-100万        \n9	100万-200万',
  `CHARACTER_DESC` varchar(256) DEFAULT NULL COMMENT '性格描述',
  `JOB_POSITION` varchar(40) DEFAULT NULL COMMENT '职位   CMX_POSITION\n\n1	未知\n2	职员\n3	科长\n4	经理',
  `JOB_COMPANY` varchar(255) DEFAULT NULL COMMENT '工作单位',
  `MARRY_STATUS` bigint(2) DEFAULT NULL COMMENT '婚姻状况   CM_INDIV_CUST_MARRY_STATUS\n0	未知\n1	已婚\n2	未婚',
  `HOBBY` varchar(255) DEFAULT NULL COMMENT '个人爱好',
  `PHYSIOLOGICAL_STATE` bigint(2) DEFAULT NULL COMMENT '0代表正常人\n1代表眼盲人士\n2代表耳聋人士,\n3代表眼盲、耳聋',
  `ANONYMOUS_FLAG` bigint(2) DEFAULT NULL,
  `NATIONALITY` varchar(10) DEFAULT NULL COMMENT '国家',
  `PROVINCE_ID` varchar(10) DEFAULT NULL COMMENT '省份',
  `CITY_ID` varchar(10) DEFAULT NULL COMMENT '地市',
  `COUNTY_ID` varchar(10) DEFAULT NULL COMMENT '区县',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `IS_REVISABLE` bigint(2) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `IDX_CM_INDIV_CUSTOMER_1` (`CUST_NAME`),
  KEY `IDX_CM_INDIV_CUSTOMER_2` (`CUST_CERT_TYPE`,`CUST_CERT_CODE`),
  KEY `IDX_CM_INDIV_CUSTOMER_3` (`PARTY_ID`),
  KEY `IDX_CM_INDIV_CUSTOMER_4` (`CUST_SERVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人客户表，保存个人客户基本信息。\n个人客户是客户的一个具体类型。\n\n分表方式：租户分表\n分区方式：不分区\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_indiv_manager` */

DROP TABLE IF EXISTS `cm_indiv_manager`;

CREATE TABLE `cm_indiv_manager` (
  `REL_ID` bigint(12) NOT NULL COMMENT '关系编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '个人客户编号\n客户唯一标识(主键)，来源于系统序列号\n标明此处的个人客户唯一标识与基础客户的唯一标识是不一样的。',
  `MANAGER_ID` bigint(12) NOT NULL COMMENT '客户经理标识',
  `OPER_TYPE` bigint(2) DEFAULT NULL COMMENT '操作类型\n0   查询\n1   查询、更改\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_CUST_MGR_OPER_TYPE;',
  `REL_TYPE` bigint(2) DEFAULT NULL COMMENT '关系类型\n\n1:主要服务，2:辅助服务，3:首席客户经理\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_CUST_MGR_REL_TYPE;',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`REL_ID`),
  KEY `IDX_CM_INDIV_MANAGER_2` (`MANAGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录客户经理与集团客户之间的关系。（telenor未启用）\n\n\n分表方式：待定\n分区方式：待定\n分区字段：待定\n敏感信息安全等级：中\n业务操作安全等级：中';

/*Table structure for table `cm_indiv_manager_h` */

DROP TABLE IF EXISTS `cm_indiv_manager_h`;

CREATE TABLE `cm_indiv_manager_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '历史记录编号',
  `REL_ID` bigint(12) NOT NULL COMMENT '关系编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '集团客户编号',
  `MANAGER_ID` bigint(12) DEFAULT NULL COMMENT '客户经理标识',
  `OPER_TYPE` bigint(2) DEFAULT NULL COMMENT '操作类型\n0   查询\n1   查询、更改\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_CUST_MGR_OPER_TYPE;',
  `REL_TYPE` bigint(2) DEFAULT NULL COMMENT '关系类型\n\n1:主要服务，2:辅助服务，3:首席客户经理\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_CUST_MGR_REL_TYPE;',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录客户经理与集团客户之间的关系。\n\n\n分表方式：按年分表\n分区方式：待定\n分区字段：待定\n敏感信息安全等级：中\n业务操作安全等级：中';

/*Table structure for table `cm_indiv_party` */

DROP TABLE IF EXISTS `cm_indiv_party`;

CREATE TABLE `cm_indiv_party` (
  `PARTY_ID` bigint(12) NOT NULL COMMENT '唯一标识。来源于系统序列号',
  `GENDER` bigint(2) DEFAULT NULL COMMENT '客户性别\n1	男\n2	女\n3	未知\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_GENDER;',
  `LUNAR` bigint(2) DEFAULT NULL COMMENT '生日类别\n0：阳历（缺省）\n1：阴历',
  `BIRTHDAY` datetime DEFAULT NULL COMMENT '出生日期',
  `MARRY_STATUS` bigint(2) DEFAULT NULL COMMENT '婚姻状况\n0	未知\n1	已婚\n2	未婚\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_INDIV_CUST_MARRY_STATUS;',
  `RELIGION` varchar(255) DEFAULT NULL COMMENT '宗教信仰',
  `NATIONAL_TYPE` bigint(6) DEFAULT NULL COMMENT '民族',
  `EDUCATION_LEVEL` bigint(2) DEFAULT NULL COMMENT '学历\n\n0	初中以下\n1	初中\n2	高中\n3	中专、技校\n4	大专\n5	本科\n6	硕士\n7	博士\n9	其他\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_INDIV_CUST.EDUCATION;',
  `INCOME_LEVEL` bigint(6) DEFAULT NULL COMMENT '收入',
  `POLITICS_FACE` bigint(2) DEFAULT NULL COMMENT '政治面貌\n\n党员\n团员\n群众',
  `FAMILY_INFO` varchar(255) DEFAULT NULL COMMENT '子女状况',
  `JOB_POSITION` varchar(255) DEFAULT NULL COMMENT '职位',
  `JOB_COMPANY` varchar(255) DEFAULT NULL COMMENT '工作单位',
  `JOB_DESC` varchar(255) DEFAULT NULL COMMENT '职责说明',
  `HOME_ADDRESS` varchar(256) DEFAULT NULL COMMENT '居住地址',
  `HOBBY` varchar(255) DEFAULT NULL COMMENT '个人爱好',
  `CHARACTER_DESC` varchar(255) DEFAULT NULL COMMENT '性格特点',
  `SECURITY_ID` varchar(30) DEFAULT NULL COMMENT '社保卡号',
  `CAR_NO` varchar(40) DEFAULT NULL COMMENT '车牌号码',
  `ALARM_BILL_ID` varchar(30) DEFAULT NULL COMMENT '告警转移号码\n\n（具体含义待定，目前情况是：集团客户的联系人中职位较高的联系人都需要存储该字段）',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` bigint(12) DEFAULT NULL,
  `EXT7` bigint(12) DEFAULT NULL,
  `EXT8` bigint(12) DEFAULT NULL,
  `EXT9` date DEFAULT NULL,
  `EXT10` date DEFAULT NULL,
  `TITLE` varchar(1000) DEFAULT NULL,
  `SUFFIX` bigint(2) DEFAULT NULL,
  `PLACE_OF_BIRTH` varchar(100) DEFAULT NULL,
  `MOTHER_NAME` varchar(100) DEFAULT NULL,
  `BIRTH_FIRST_NAME` varchar(255) DEFAULT NULL,
  `BIRTH_LAST_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PARTY_ID`),
  KEY `IDX_CM_INDIV_PARTY_1` (`BIRTHDAY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人类参与人（扩展）信息表，用于存放包含个人客户、运营商的员工等的扩展信息。\n\n包括个人客户、员工等。\n\n分表方式：租户分表\n分区方式：不分区\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_indiv_party_21` */

DROP TABLE IF EXISTS `cm_indiv_party_21`;

CREATE TABLE `cm_indiv_party_21` (
  `PARTY_ID` bigint(12) NOT NULL,
  `GENDER` bigint(2) DEFAULT NULL,
  `LUNAR` bigint(2) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `MARRY_STATUS` bigint(2) DEFAULT NULL,
  `RELIGION` varchar(255) DEFAULT NULL,
  `NATIONAL_TYPE` bigint(6) DEFAULT NULL,
  `EDUCATION_LEVEL` bigint(2) DEFAULT NULL,
  `INCOME_LEVEL` bigint(6) DEFAULT NULL,
  `POLITICS_FACE` bigint(2) DEFAULT NULL,
  `FAMILY_INFO` varchar(255) DEFAULT NULL,
  `JOB_POSITION` varchar(255) DEFAULT NULL,
  `JOB_COMPANY` varchar(255) DEFAULT NULL,
  `JOB_DESC` varchar(255) DEFAULT NULL,
  `HOME_ADDRESS` varchar(256) DEFAULT NULL,
  `HOBBY` varchar(255) DEFAULT NULL,
  `CHARACTER_DESC` varchar(255) DEFAULT NULL,
  `SECURITY_ID` varchar(30) DEFAULT NULL,
  `CAR_NO` varchar(40) DEFAULT NULL,
  `ALARM_BILL_ID` varchar(30) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` bigint(12) DEFAULT NULL,
  `EXT7` bigint(12) DEFAULT NULL,
  `EXT8` bigint(12) DEFAULT NULL,
  `EXT9` date DEFAULT NULL,
  `EXT10` date DEFAULT NULL,
  `TITLE` varchar(1000) DEFAULT NULL,
  `SUFFIX` bigint(2) DEFAULT NULL,
  `PLACE_OF_BIRTH` varchar(100) DEFAULT NULL,
  `MOTHER_NAME` varchar(100) DEFAULT NULL,
  `BIRTH_FIRST_NAME` varchar(255) DEFAULT NULL,
  `BIRTH_LAST_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PARTY_ID`),
  KEY `IDX_CM_INDIV_PARTY_1` (`BIRTHDAY`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_indiv_party_91` */

DROP TABLE IF EXISTS `cm_indiv_party_91`;

CREATE TABLE `cm_indiv_party_91` (
  `PARTY_ID` bigint(12) NOT NULL,
  `GENDER` bigint(2) DEFAULT NULL,
  `LUNAR` bigint(2) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `MARRY_STATUS` bigint(2) DEFAULT NULL,
  `RELIGION` varchar(255) DEFAULT NULL,
  `NATIONAL_TYPE` bigint(6) DEFAULT NULL,
  `EDUCATION_LEVEL` bigint(2) DEFAULT NULL,
  `INCOME_LEVEL` bigint(6) DEFAULT NULL,
  `POLITICS_FACE` bigint(2) DEFAULT NULL,
  `FAMILY_INFO` varchar(255) DEFAULT NULL,
  `JOB_POSITION` varchar(255) DEFAULT NULL,
  `JOB_COMPANY` varchar(255) DEFAULT NULL,
  `JOB_DESC` varchar(255) DEFAULT NULL,
  `HOME_ADDRESS` varchar(256) DEFAULT NULL,
  `HOBBY` varchar(255) DEFAULT NULL,
  `CHARACTER_DESC` varchar(255) DEFAULT NULL,
  `SECURITY_ID` varchar(30) DEFAULT NULL,
  `CAR_NO` varchar(40) DEFAULT NULL,
  `ALARM_BILL_ID` varchar(30) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` bigint(12) DEFAULT NULL,
  `EXT7` bigint(12) DEFAULT NULL,
  `EXT8` bigint(12) DEFAULT NULL,
  `EXT9` date DEFAULT NULL,
  `EXT10` date DEFAULT NULL,
  `TITLE` varchar(1000) DEFAULT NULL,
  `SUFFIX` bigint(2) DEFAULT NULL,
  `PLACE_OF_BIRTH` varchar(100) DEFAULT NULL,
  `MOTHER_NAME` varchar(100) DEFAULT NULL,
  `BIRTH_FIRST_NAME` varchar(255) DEFAULT NULL,
  `BIRTH_LAST_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PARTY_ID`),
  KEY `IDX_CM_INDIV_PARTY_1` (`BIRTHDAY`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_indiv_party_h` */

DROP TABLE IF EXISTS `cm_indiv_party_h`;

CREATE TABLE `cm_indiv_party_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '历史记录编号',
  `PARTY_ID` bigint(12) NOT NULL COMMENT '唯一标识。来源于系统序列号',
  `GENDER` bigint(2) DEFAULT NULL COMMENT '客户性别\n1	男\n2	女\n3	未知\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_GENDER;',
  `LUNAR` bigint(2) DEFAULT NULL COMMENT '生日类别\n0：阳历（缺省）\n1：阴历',
  `BIRTHDAY` datetime DEFAULT NULL COMMENT '出生日期',
  `MARRY_STATUS` bigint(2) DEFAULT NULL COMMENT '婚姻状况\n0	未知\n1	已婚\n2	未婚\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_INDIV_CUST_MARRY_STATUS;',
  `RELIGION` varchar(255) DEFAULT NULL COMMENT '宗教信仰',
  `NATIONAL_TYPE` bigint(6) DEFAULT NULL COMMENT '民族',
  `EDUCATION_LEVEL` bigint(2) DEFAULT NULL COMMENT '学历\n\n0	初中以下\n1	初中\n2	高中\n3	中专、技校\n4	大专\n5	本科\n6	硕士\n7	博士\n9	其他\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_INDIV_CUST.EDUCATION;',
  `INCOME_LEVEL` bigint(6) DEFAULT NULL COMMENT '收入',
  `POLITICS_FACE` bigint(2) DEFAULT NULL COMMENT '政治面貌\n\n党员\n团员\n群众',
  `FAMILY_INFO` varchar(255) DEFAULT NULL COMMENT '子女状况',
  `JOB_POSITION` varchar(255) DEFAULT NULL COMMENT '职位',
  `JOB_COMPANY` varchar(255) DEFAULT NULL COMMENT '工作单位',
  `JOB_DESC` varchar(255) DEFAULT NULL COMMENT '职责说明',
  `HOME_ADDRESS` varchar(256) DEFAULT NULL COMMENT '居住地址',
  `HOBBY` varchar(255) DEFAULT NULL COMMENT '个人爱好',
  `CHARACTER_DESC` varchar(255) DEFAULT NULL COMMENT '性格特点',
  `SECURITY_ID` varchar(30) DEFAULT NULL COMMENT '社保卡号',
  `CAR_NO` varchar(40) DEFAULT NULL COMMENT '车牌号码',
  `ALARM_BILL_ID` varchar(30) DEFAULT NULL COMMENT '告警转移号码\n\n（具体含义待定，目前情况是：集团客户的联系人中职位较高的联系人都需要存储该字段）',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` bigint(12) DEFAULT NULL,
  `EXT7` bigint(12) DEFAULT NULL,
  `EXT8` bigint(12) DEFAULT NULL,
  `EXT9` date DEFAULT NULL,
  `EXT10` date DEFAULT NULL,
  `TITLE` varchar(1000) DEFAULT NULL,
  `SUFFIX` bigint(2) DEFAULT NULL,
  `PLACE_OF_BIRTH` varchar(100) DEFAULT NULL,
  `MOTHER_NAME` varchar(100) DEFAULT NULL,
  `BIRTH_FIRST_NAME` varchar(255) DEFAULT NULL,
  `BIRTH_LAST_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人类参与人（扩展）信息表，用于存放包含个人客户、运营商的员工等的扩展信息。\n\n包括个人客户、员工等。\n\n分表方式：按年分表\n分区方式：待定\n分区字段：待定\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_industry_config` */

DROP TABLE IF EXISTS `cm_industry_config`;

CREATE TABLE `cm_industry_config` (
  `INDUSTRY_ID` varchar(8) NOT NULL,
  `INDUSTRY_NAME` varchar(200) DEFAULT NULL,
  `PARENT_INDUSTRY_ID` varchar(8) DEFAULT NULL,
  `LEVEL` bigint(2) NOT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`INDUSTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：\n按租户分表';

/*Table structure for table `cm_industry_config_21` */

DROP TABLE IF EXISTS `cm_industry_config_21`;

CREATE TABLE `cm_industry_config_21` (
  `INDUSTRY_ID` varchar(8) NOT NULL,
  `INDUSTRY_NAME` varchar(200) DEFAULT NULL,
  `PARENT_INDUSTRY_ID` varchar(8) DEFAULT NULL,
  `LEVEL` bigint(2) NOT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`INDUSTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_industry_config_91` */

DROP TABLE IF EXISTS `cm_industry_config_91`;

CREATE TABLE `cm_industry_config_91` (
  `INDUSTRY_ID` varchar(8) NOT NULL,
  `INDUSTRY_NAME` varchar(200) DEFAULT NULL,
  `PARENT_INDUSTRY_ID` varchar(8) DEFAULT NULL,
  `LEVEL` bigint(2) NOT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`INDUSTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_notify_template_configure` */

DROP TABLE IF EXISTS `cm_notify_template_configure`;

CREATE TABLE `cm_notify_template_configure` (
  `ID` varchar(32) NOT NULL COMMENT '主键',
  `BUSINESS_ID` varchar(32) DEFAULT NULL COMMENT '业务ID',
  `TEMPLATE_CODE` varchar(50) DEFAULT NULL COMMENT '通知模板Code,对应PushC（短信网关）的TemplateCode',
  `IMPLCLASS` varchar(500) DEFAULT NULL COMMENT '发送通知实现类',
  `NOTIFICATION_CATAGORY` varchar(50) DEFAULT NULL COMMENT '一个业务中不同的阶段',
  `REMARK` varbinary(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_org_party` */

DROP TABLE IF EXISTS `cm_org_party`;

CREATE TABLE `cm_org_party` (
  `PARTY_ID` bigint(12) NOT NULL COMMENT '唯一标识。来源于系统序列号',
  `MEMBER_NUM` bigint(6) DEFAULT NULL COMMENT '人数',
  `MANAGER_NAME` varchar(40) DEFAULT NULL COMMENT '负责人名称',
  `ORG_ADDRESS` varchar(255) DEFAULT NULL COMMENT '组织地址',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PARTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团客户、集团客户的部门、权限组织等\n\n\n分表方式：租户分表\n分区方式：不分区\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_org_party_21` */

DROP TABLE IF EXISTS `cm_org_party_21`;

CREATE TABLE `cm_org_party_21` (
  `PARTY_ID` bigint(12) NOT NULL,
  `MEMBER_NUM` bigint(6) DEFAULT NULL,
  `MANAGER_NAME` varchar(40) DEFAULT NULL,
  `ORG_ADDRESS` varchar(255) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PARTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_org_party_91` */

DROP TABLE IF EXISTS `cm_org_party_91`;

CREATE TABLE `cm_org_party_91` (
  `PARTY_ID` bigint(12) NOT NULL,
  `MEMBER_NUM` bigint(6) DEFAULT NULL,
  `MANAGER_NAME` varchar(40) DEFAULT NULL,
  `ORG_ADDRESS` varchar(255) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PARTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_org_party_h` */

DROP TABLE IF EXISTS `cm_org_party_h`;

CREATE TABLE `cm_org_party_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '历史记录编号',
  `PARTY_ID` bigint(12) NOT NULL COMMENT '唯一标识。来源于系统序列号',
  `MEMBER_NUM` bigint(6) DEFAULT NULL COMMENT '人数',
  `MANAGER_NAME` varchar(40) DEFAULT NULL COMMENT '负责人名称',
  `ORG_ADDRESS` varchar(255) DEFAULT NULL COMMENT '组织地址',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团客户、集团客户的部门、权限组织等\n\n\n分表方式：按年分表\n分区方式：待定\n分区字段：待定\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_org_party_h_2015` */

DROP TABLE IF EXISTS `cm_org_party_h_2015`;

CREATE TABLE `cm_org_party_h_2015` (
  `H_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) NOT NULL,
  `MEMBER_NUM` bigint(6) DEFAULT NULL,
  `MANAGER_NAME` varchar(40) DEFAULT NULL,
  `ORG_ADDRESS` varchar(255) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_org_party_h_2016` */

DROP TABLE IF EXISTS `cm_org_party_h_2016`;

CREATE TABLE `cm_org_party_h_2016` (
  `H_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) NOT NULL,
  `MEMBER_NUM` bigint(6) DEFAULT NULL,
  `MANAGER_NAME` varchar(40) DEFAULT NULL,
  `ORG_ADDRESS` varchar(255) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_org_party_h_2017` */

DROP TABLE IF EXISTS `cm_org_party_h_2017`;

CREATE TABLE `cm_org_party_h_2017` (
  `H_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) NOT NULL,
  `MEMBER_NUM` bigint(6) DEFAULT NULL,
  `MANAGER_NAME` varchar(40) DEFAULT NULL,
  `ORG_ADDRESS` varchar(255) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_organization` */

DROP TABLE IF EXISTS `cm_organization`;

CREATE TABLE `cm_organization` (
  `organization_id` bigint(12) NOT NULL,
  `up_organization_id` bigint(12) DEFAULT NULL,
  `member_range` varchar(12) DEFAULT NULL,
  `principal_name` varchar(128) DEFAULT NULL,
  `industry_type` varchar(16) DEFAULT NULL,
  `legal_name` varchar(128) DEFAULT NULL,
  `org_address` varchar(255) DEFAULT NULL,
  `zip_code` varchar(9) DEFAULT NULL,
  `vat_no` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `cont_tel` varchar(32) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `found_date` datetime DEFAULT NULL,
  `terminal_date` datetime DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `state` varchar(8) DEFAULT NULL,
  `create_op_id` bigint(12) DEFAULT NULL,
  `create_org_id` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `done_date` datetime DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `region_id` varchar(8) DEFAULT NULL,
  `tenant_id` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`organization_id`),
  UNIQUE KEY `index_id` (`organization_id`),
  UNIQUE KEY `index_vat` (`vat_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织信息';

/*Table structure for table `cm_organization_char` */

DROP TABLE IF EXISTS `cm_organization_char`;

CREATE TABLE `cm_organization_char` (
  `org_attr_id` bigint(12) NOT NULL,
  `organization_id` bigint(12) NOT NULL,
  `attr_text` varchar(255) DEFAULT NULL,
  `attr_value` varchar(255) DEFAULT NULL,
  `state` varchar(8) DEFAULT NULL,
  `create_op_id` bigint(12) DEFAULT NULL,
  `create_org_id` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `done_date` datetime DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `region_id` varchar(8) DEFAULT NULL,
  `tenant_id` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`org_attr_id`),
  UNIQUE KEY `index_id` (`org_attr_id`),
  KEY `index_vat` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织信息';

/*Table structure for table `cm_party` */

DROP TABLE IF EXISTS `cm_party`;

CREATE TABLE `cm_party` (
  `PARTY_ID` bigint(12) NOT NULL COMMENT '参与人编号\n\n表示一个参与人的唯一标识，由系统生成的全局唯一的序列号。',
  `PARENT_PARTY_ID` bigint(12) DEFAULT NULL COMMENT '上级参与人编号。\n\n用于标识该参与人直接关系的上级参与人。',
  `PARTY_TYPE` bigint(2) NOT NULL COMMENT '参与人类型\n1 个人类参与人\n3 组织类参与人',
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME` varchar(255) DEFAULT NULL COMMENT '参与人的名称。名称是参与人的关键属性，一个参与人必须要有一个确定的名称，该名称必须为参与人的具有法律效益的全称。NN对于个人来说，名称即是该客户的身份证上名称。NN对于组织类参与人来说，即是集团、单位等的名称，由销售经理输和修改，集团单位名称应与该集团客户工商管理部门登记注册的名称一致，集团名称须进行唯一性判别。',
  `SHORT_NAME` varchar(128) DEFAULT NULL COMMENT '简称',
  `ENGLISH_NAME` varchar(256) DEFAULT NULL COMMENT '英文名称',
  `CERT_TYPE` bigint(2) DEFAULT NULL COMMENT '个人客户\n(CM_CUST_CERT_TYPE_1)8:CPR ,集团客户\n证件类型(CM_CUST_CERT_TYPE_3)\n17:KOB',
  `CERT_CODE` varchar(50) DEFAULT NULL COMMENT '证件号码',
  `CERT_ADDRESS` varchar(256) DEFAULT NULL COMMENT '证件地址',
  `CUST_CERT_EFFDATE` datetime DEFAULT NULL,
  `CERT_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '证件有效期',
  `NATIONALITY` varchar(10) DEFAULT NULL COMMENT '国家\n\n具体枚举值见系统统一静态数据定义',
  `PROVINCE_ID` varchar(10) DEFAULT NULL COMMENT '省份',
  `CITY_ID` varchar(10) DEFAULT NULL COMMENT '地市',
  `COUNTY_ID` varchar(10) DEFAULT NULL COMMENT '区县',
  `REGION_TYPE` varchar(10) DEFAULT NULL COMMENT '区域类型',
  `SUB_REGION_TYPE` varchar(10) DEFAULT NULL COMMENT '区域子类型',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识\n\n由于平台保存历史记录时需要验证该字段是否为空，如果为空将不能保存，故需要限制该字段不能为空。',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `PERFER_LANGUAGE` bigint(2) DEFAULT NULL COMMENT '偏好网站语言 1.丹麦语 2.匈牙利语 3.英语',
  `CPR_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PARTY_ID`),
  KEY `IDX_CM_PARTY_2` (`CERT_CODE`,`CERT_TYPE`),
  KEY `IDX_CM_PARTY_1` (`PARTY_NAME`),
  KEY `IDX_CM_PARTY_4` (`CPR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参与人基本信息表\n\n该表用于存放所有类型的参与人的基本信息，主要包含参与人的以下属性：\n名称、类型（个人OR组织）、证件类型、证件号码、证件有效期、所在国家、省份、地市、区县等。\n\n分表方式：租户分表\n分区方式：不分区\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_party_21` */

DROP TABLE IF EXISTS `cm_party_21`;

CREATE TABLE `cm_party_21` (
  `PARTY_ID` bigint(12) NOT NULL,
  `PARENT_PARTY_ID` bigint(12) DEFAULT NULL,
  `PARTY_TYPE` bigint(2) NOT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME` varchar(255) NOT NULL COMMENT '参与人的名称。名称是参与人的关键属性，一个参与人必须要有一个确定的名称，该名称必须为参与人的具有法律效益的全称。NN对于个人来说，名称即是该客户的身份证上名称。NN对于组织类参与人来说，即是集团、单位等的名称，由销售经理输和修改，集团单位名称应与该集团客户工商管理部门登记注册的名称一致，集团名称须进行唯一性判别。',
  `SHORT_NAME` varchar(128) DEFAULT NULL,
  `ENGLISH_NAME` varchar(256) DEFAULT NULL,
  `CERT_TYPE` bigint(2) DEFAULT NULL COMMENT '个人客户\n(CM_CUST_CERT_TYPE_1)8:CPR ,集团客户\n证件类型(CM_CUST_CERT_TYPE_3)\n17:KOB',
  `CERT_CODE` varchar(50) DEFAULT NULL,
  `CERT_ADDRESS` varchar(256) DEFAULT NULL,
  `CUST_CERT_EFFDATE` datetime DEFAULT NULL,
  `CERT_EXPIRE_DATE` datetime DEFAULT NULL,
  `NATIONALITY` varchar(10) DEFAULT NULL,
  `PROVINCE_ID` varchar(10) DEFAULT NULL,
  `CITY_ID` varchar(10) DEFAULT NULL,
  `COUNTY_ID` varchar(10) DEFAULT NULL,
  `REGION_TYPE` varchar(10) DEFAULT NULL,
  `SUB_REGION_TYPE` varchar(10) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `PERFER_LANGUAGE` bigint(2) DEFAULT NULL COMMENT '偏好网站语言 1.丹麦语 2.匈牙利语 3.英语',
  `CPR_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PARTY_ID`),
  KEY `IDX_CM_PARTY_2_21` (`CERT_CODE`,`CERT_TYPE`) USING BTREE,
  KEY `IDX_CM_PARTY_1` (`PARTY_NAME`) USING BTREE,
  KEY `IDX_CM_PARTY_4` (`CPR_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_91` */

DROP TABLE IF EXISTS `cm_party_91`;

CREATE TABLE `cm_party_91` (
  `PARTY_ID` bigint(12) NOT NULL,
  `PARENT_PARTY_ID` bigint(12) DEFAULT NULL,
  `PARTY_TYPE` bigint(2) NOT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME` varchar(255) NOT NULL COMMENT '参与人的名称。名称是参与人的关键属性，一个参与人必须要有一个确定的名称，该名称必须为参与人的具有法律效益的全称。NN对于个人来说，名称即是该客户的身份证上名称。NN对于组织类参与人来说，即是集团、单位等的名称，由销售经理输和修改，集团单位名称应与该集团客户工商管理部门登记注册的名称一致，集团名称须进行唯一性判别。',
  `SHORT_NAME` varchar(128) DEFAULT NULL,
  `ENGLISH_NAME` varchar(256) DEFAULT NULL,
  `CERT_TYPE` bigint(2) DEFAULT NULL COMMENT '个人客户\n(CM_CUST_CERT_TYPE_1)8:CPR ,集团客户\n证件类型(CM_CUST_CERT_TYPE_3)\n17:KOB',
  `CERT_CODE` varchar(50) DEFAULT NULL,
  `CERT_ADDRESS` varchar(256) DEFAULT NULL,
  `CUST_CERT_EFFDATE` datetime DEFAULT NULL,
  `CERT_EXPIRE_DATE` datetime DEFAULT NULL,
  `NATIONALITY` varchar(10) DEFAULT NULL,
  `PROVINCE_ID` varchar(10) DEFAULT NULL,
  `CITY_ID` varchar(10) DEFAULT NULL,
  `COUNTY_ID` varchar(10) DEFAULT NULL,
  `REGION_TYPE` varchar(10) DEFAULT NULL,
  `SUB_REGION_TYPE` varchar(10) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `PERFER_LANGUAGE` bigint(2) DEFAULT NULL COMMENT '偏好网站语言 1.丹麦语 2.匈牙利语 3.英语',
  `CPR_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PARTY_ID`),
  KEY `IDX_CM_PARTY_2_91` (`CERT_CODE`,`CERT_TYPE`) USING BTREE,
  KEY `IDX_CM_PARTY_1` (`PARTY_NAME`) USING BTREE,
  KEY `IDX_CM_PARTY_4` (`CPR_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_acct_rel` */

DROP TABLE IF EXISTS `cm_party_acct_rel`;

CREATE TABLE `cm_party_acct_rel` (
  `REL_ID` bigint(12) NOT NULL COMMENT '唯一标识。来源于系统序列号',
  `PARTY_ID` bigint(12) DEFAULT NULL COMMENT '客户性别\n1	男\n2	女\n3	未知\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_GENDER;',
  `ACCT_ID` bigint(14) DEFAULT NULL COMMENT '账户编号\n\n新账户编号生成规则：2位地市编码+10位序列号。',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`REL_ID`),
  KEY `idx_cm_party_acct_rel_1` (`PARTY_ID`),
  KEY `idx_cm_party_acct_rel_2` (`ACCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户与参与人关系表';

/*Table structure for table `cm_party_acct_rel_21` */

DROP TABLE IF EXISTS `cm_party_acct_rel_21`;

CREATE TABLE `cm_party_acct_rel_21` (
  `REL_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`),
  KEY `IDX_CM_PARTY_ACCT_REL_21_1` (`PARTY_ID`) USING BTREE,
  KEY `IDX_CM_PARTY_ACCT_REL_21_2` (`ACCT_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_acct_rel_91` */

DROP TABLE IF EXISTS `cm_party_acct_rel_91`;

CREATE TABLE `cm_party_acct_rel_91` (
  `REL_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`),
  KEY `IDX_CM_PARTY_ACCT_REL_91_1` (`PARTY_ID`) USING BTREE,
  KEY `IDX_CM_PARTY_ACCT_REL_91_2` (`ACCT_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_acct_rel_h` */

DROP TABLE IF EXISTS `cm_party_acct_rel_h`;

CREATE TABLE `cm_party_acct_rel_h` (
  `H_ID` bigint(12) NOT NULL,
  `REL_ID` bigint(12) DEFAULT NULL COMMENT '唯一标识。来源于系统序列号',
  `PARTY_ID` bigint(12) DEFAULT NULL COMMENT '客户性别\n1	男\n2	女\n3	未知\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_GENDER;',
  `ACCT_ID` bigint(14) DEFAULT NULL COMMENT '账户编号\n\n新账户编号生成规则：2位地市编码+10位序列号。',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户与参与人关系表';

/*Table structure for table `cm_party_acct_rel_h_2015` */

DROP TABLE IF EXISTS `cm_party_acct_rel_h_2015`;

CREATE TABLE `cm_party_acct_rel_h_2015` (
  `H_ID` bigint(12) NOT NULL,
  `REL_ID` bigint(12) DEFAULT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_acct_rel_h_2016` */

DROP TABLE IF EXISTS `cm_party_acct_rel_h_2016`;

CREATE TABLE `cm_party_acct_rel_h_2016` (
  `H_ID` bigint(12) NOT NULL,
  `REL_ID` bigint(12) DEFAULT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_acct_rel_h_2017` */

DROP TABLE IF EXISTS `cm_party_acct_rel_h_2017`;

CREATE TABLE `cm_party_acct_rel_h_2017` (
  `H_ID` bigint(12) NOT NULL,
  `REL_ID` bigint(12) DEFAULT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_attachment` */

DROP TABLE IF EXISTS `cm_party_attachment`;

CREATE TABLE `cm_party_attachment` (
  `atachment_id` bigint(12) NOT NULL,
  `party_id` bigint(12) DEFAULT NULL,
  `attachment_type` varchar(8) DEFAULT NULL,
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_path` varchar(2048) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  `create_op_id` bigint(12) DEFAULT NULL,
  `create_org_id` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `done_date` datetime DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `region_id` varchar(8) DEFAULT NULL,
  `tenant_id` varchar(68) DEFAULT NULL,
  PRIMARY KEY (`atachment_id`),
  KEY `index_custid` (`party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_contact` */

DROP TABLE IF EXISTS `cm_party_contact`;

CREATE TABLE `cm_party_contact` (
  `CONT_ID` bigint(12) NOT NULL COMMENT '记录参与人联系信息的唯一标识，作为主键。',
  `PARTY_ID` bigint(12) DEFAULT NULL COMMENT '参与人编号',
  `PRIORY_LEVEL` bigint(2) DEFAULT NULL COMMENT '联系方式优先级，从1开始，数字越小，优先级越高。',
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `CONT_NAME_QRY` varchar(256) DEFAULT NULL,
  `CONT_NAME` varchar(256) DEFAULT NULL COMMENT '联系人',
  `CONT_ADDRESS` varchar(255) DEFAULT NULL,
  `HOME_TEL` varchar(60) DEFAULT NULL COMMENT '家庭电话',
  `OFFICE_TEL` varchar(60) DEFAULT NULL COMMENT '办公电话',
  `CONT_MOBILE` varchar(30) DEFAULT NULL COMMENT '移动电话',
  `CONT_DESC` varchar(256) DEFAULT NULL COMMENT '记录参与人联系详细信息。',
  `CONT_EMAIL` varchar(256) DEFAULT NULL COMMENT 'Email',
  `POST_CODE` varchar(9) DEFAULT NULL COMMENT '记录参与人联系地址的邮政编码。',
  `POST_ADDRESS` varchar(256) DEFAULT NULL COMMENT '记录参与人的邮件地址。',
  `CONT_FAX` varchar(60) DEFAULT NULL COMMENT '传真号',
  `DIRECT_MARKETING_PROTECTION` bigint(2) DEFAULT NULL COMMENT '营销信息免打扰，1：免打扰，0：不免打扰',
  `PROTECT_EFF_DATE` date DEFAULT NULL COMMENT '免打扰开始时间',
  `PROTECT_EXPIRE_DATE` date DEFAULT NULL COMMENT '免打扰失效时间',
  `MANUAL_COMMERCIAL_PROTECTION` bigint(2) DEFAULT NULL COMMENT '此字段如果有值，则优先级高于营销免打扰。营销信息免打扰，1：不免打扰，0：免打扰',
  `MANUAL_PROTECT_EFFECTIVE_DATE` date DEFAULT NULL COMMENT '免打扰开始时间',
  `MANUAL_PROTECT_EXPIRE_DATE` date DEFAULT NULL COMMENT '免打扰失效时间',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT 'payer注册地址详细信息',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '是否受保护',
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` bigint(12) DEFAULT NULL,
  `EXT7` bigint(12) DEFAULT NULL,
  `EXT8` bigint(12) DEFAULT NULL,
  `EXT9` date DEFAULT NULL COMMENT 'PAYER受保护生效时间',
  `EXT10` date DEFAULT NULL COMMENT 'PAYER受保护失效时间',
  PRIMARY KEY (`CONT_ID`),
  KEY `IDX_CM_PARTY_CONTACT_1` (`PARTY_ID`),
  KEY `IDX_CONT_ADDRESS` (`CONT_ADDRESS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录参与人的联系信息。\n分表方式：租户分表\n分区方式：不分区\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_party_contact_21` */

DROP TABLE IF EXISTS `cm_party_contact_21`;

CREATE TABLE `cm_party_contact_21` (
  `CONT_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `PRIORY_LEVEL` bigint(2) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `CONT_NAME_QRY` varchar(256) DEFAULT NULL,
  `CONT_NAME` varchar(256) DEFAULT NULL,
  `CONT_ADDRESS` varchar(255) DEFAULT NULL,
  `HOME_TEL` varchar(60) DEFAULT NULL,
  `OFFICE_TEL` varchar(60) DEFAULT NULL,
  `CONT_MOBILE` varchar(30) DEFAULT NULL,
  `CONT_DESC` varchar(256) DEFAULT NULL,
  `CONT_EMAIL` varchar(256) DEFAULT NULL,
  `POST_CODE` varchar(9) DEFAULT NULL,
  `POST_ADDRESS` varchar(256) DEFAULT NULL,
  `CONT_FAX` varchar(60) DEFAULT NULL,
  `DIRECT_MARKETING_PROTECTION` bigint(2) DEFAULT NULL,
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `MANUAL_COMMERCIAL_PROTECTION` bigint(2) DEFAULT NULL COMMENT '此字段如果有值，则优先级高于营销免打扰。营销信息免打扰，1：不免打扰，0：免打扰',
  `MANUAL_PROTECT_EFFECTIVE_DATE` date DEFAULT NULL,
  `MANUAL_PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL COMMENT 'payer注册地址详细信息',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '是否受保护',
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` bigint(12) DEFAULT NULL,
  `EXT7` bigint(12) DEFAULT NULL,
  `EXT8` bigint(12) DEFAULT NULL,
  `EXT9` date DEFAULT NULL COMMENT 'PAYER受保护生效时间',
  `EXT10` date DEFAULT NULL COMMENT 'PAYER受保护失效时间',
  PRIMARY KEY (`CONT_ID`),
  KEY `IDX_CM_PARTY_CONTACT_1_21` (`PARTY_ID`) USING BTREE,
  KEY `IDX_CONT_ADDRESS` (`CONT_ADDRESS`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_contact_91` */

DROP TABLE IF EXISTS `cm_party_contact_91`;

CREATE TABLE `cm_party_contact_91` (
  `CONT_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `PRIORY_LEVEL` bigint(2) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `CONT_NAME_QRY` varchar(256) DEFAULT NULL,
  `CONT_NAME` varchar(256) DEFAULT NULL,
  `CONT_ADDRESS` varchar(255) DEFAULT NULL,
  `HOME_TEL` varchar(60) DEFAULT NULL,
  `OFFICE_TEL` varchar(60) DEFAULT NULL,
  `CONT_MOBILE` varchar(30) DEFAULT NULL,
  `CONT_DESC` varchar(256) DEFAULT NULL,
  `CONT_EMAIL` varchar(256) DEFAULT NULL,
  `POST_CODE` varchar(9) DEFAULT NULL,
  `POST_ADDRESS` varchar(256) DEFAULT NULL,
  `CONT_FAX` varchar(60) DEFAULT NULL,
  `DIRECT_MARKETING_PROTECTION` bigint(2) DEFAULT NULL,
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `MANUAL_COMMERCIAL_PROTECTION` bigint(2) DEFAULT NULL COMMENT '此字段如果有值，则优先级高于营销免打扰。营销信息免打扰，1：不免打扰，0：免打扰',
  `MANUAL_PROTECT_EFFECTIVE_DATE` date DEFAULT NULL,
  `MANUAL_PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL COMMENT 'payer注册地址详细信息',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '是否受保护',
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` bigint(12) DEFAULT NULL,
  `EXT7` bigint(12) DEFAULT NULL,
  `EXT8` bigint(12) DEFAULT NULL,
  `EXT9` date DEFAULT NULL COMMENT 'PAYER受保护生效时间',
  `EXT10` date DEFAULT NULL COMMENT 'PAYER受保护失效时间',
  PRIMARY KEY (`CONT_ID`),
  KEY `IDX_CM_PARTY_CONTACT_1_91` (`PARTY_ID`) USING BTREE,
  KEY `IDX_CONT_ADDRESS` (`CONT_ADDRESS`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_contact_assoc` */

DROP TABLE IF EXISTS `cm_party_contact_assoc`;

CREATE TABLE `cm_party_contact_assoc` (
  `rel_id` bigint(12) NOT NULL,
  `party_id` bigint(12) NOT NULL,
  `medium_id` bigint(12) NOT NULL,
  `priority` varchar(2) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  `create_op_id` bigint(12) DEFAULT NULL,
  `create_org_id` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `done_date` datetime DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `region_id` varchar(8) DEFAULT NULL,
  `tenant_id` varchar(68) DEFAULT NULL,
  PRIMARY KEY (`rel_id`),
  UNIQUE KEY `index_id` (`rel_id`),
  KEY `index_custid` (`party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_contact_h` */

DROP TABLE IF EXISTS `cm_party_contact_h`;

CREATE TABLE `cm_party_contact_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '��ʷ��¼���',
  `CONT_ID` bigint(12) NOT NULL COMMENT '��¼��������ϵ��Ϣ��Ψһ��ʶ����Ϊ������',
  `PARTY_ID` bigint(12) DEFAULT NULL COMMENT '�����˱��',
  `PRIORY_LEVEL` bigint(2) DEFAULT NULL COMMENT '��ϵ��ʽ���ȼ�����1��ʼ������ԽС�����ȼ�Խ�ߡ�',
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `CONT_NAME_QRY` varchar(256) DEFAULT NULL,
  `CONT_NAME` varchar(256) DEFAULT NULL COMMENT '��ϵ��',
  `CONT_ADDRESS` varchar(256) DEFAULT NULL COMMENT '��¼�����˵���ϵ��ַ��',
  `HOME_TEL` varchar(60) DEFAULT NULL COMMENT '��ͥ�绰',
  `OFFICE_TEL` varchar(60) DEFAULT NULL COMMENT '�칫�绰',
  `CONT_MOBILE` varchar(30) DEFAULT NULL COMMENT '�ƶ��绰',
  `CONT_DESC` varchar(256) DEFAULT NULL COMMENT '��¼��������ϵ��ϸ��Ϣ��',
  `CONT_EMAIL` varchar(256) DEFAULT NULL COMMENT 'Email',
  `POST_CODE` varchar(9) DEFAULT NULL COMMENT '��¼��������ϵ��ַ���������롣',
  `POST_ADDRESS` varchar(256) DEFAULT NULL COMMENT '��¼�����˵��ʼ���ַ��',
  `CONT_FAX` varchar(60) DEFAULT NULL COMMENT '�����',
  `STATE` varchar(3) DEFAULT NULL COMMENT '��¼״̬\n\nU:��Ч E:��Ч',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '��������Ա',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '��������Ա��֯',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '��ǰҵ���������Ա',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '��ǰҵ��������֯��Ԫ',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '��ǰҵ��������',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '��������',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '��ǰҵ����������',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '�ͻ���Ч����',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '�ͻ�ʧЧ����',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '���������ʶ',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '��ע',
  `DIRECT_MARKETING_PROTECTION` bigint(2) DEFAULT NULL,
  `MANUAL_COMMERCIAL_PROTECTION` bigint(2) DEFAULT NULL,
  `MANUAL_PROTECT_EFFECTIVE_DATE` date DEFAULT NULL,
  `MANUAL_PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL COMMENT '是否受保护',
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` bigint(12) DEFAULT NULL,
  `EXT7` bigint(12) DEFAULT NULL,
  `EXT8` bigint(12) DEFAULT NULL,
  `EXT9` date DEFAULT NULL COMMENT 'PAYER受保护生效时间',
  `EXT10` date DEFAULT NULL COMMENT 'PAYER受保护失效时间',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��¼�����˵���ϵ��Ϣ��\n\n�ֱ��ʽ������ݱ�\n������ʽ������\n�����ֶΣ�����\n�����Ϣ��ȫ�ȼ�����\nҵ�������ȫ�ȼ�����';

/*Table structure for table `cm_party_contact_h_2015` */

DROP TABLE IF EXISTS `cm_party_contact_h_2015`;

CREATE TABLE `cm_party_contact_h_2015` (
  `H_ID` bigint(12) NOT NULL,
  `CONT_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `PRIORY_LEVEL` bigint(2) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `CONT_NAME_QRY` varchar(256) DEFAULT NULL,
  `CONT_NAME` varchar(256) DEFAULT NULL,
  `CONT_ADDRESS` varchar(256) DEFAULT NULL,
  `HOME_TEL` varchar(60) DEFAULT NULL,
  `OFFICE_TEL` varchar(60) DEFAULT NULL,
  `CONT_MOBILE` varchar(30) DEFAULT NULL,
  `CONT_DESC` varchar(256) DEFAULT NULL,
  `CONT_EMAIL` varchar(256) DEFAULT NULL,
  `POST_CODE` varchar(9) DEFAULT NULL,
  `POST_ADDRESS` varchar(256) DEFAULT NULL,
  `CONT_FAX` varchar(60) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(4000) DEFAULT NULL,
  `DIRECT_MARKETING_PROTECTION` bigint(2) DEFAULT NULL,
  `MANUAL_COMMERCIAL_PROTECTION` bigint(2) DEFAULT NULL,
  `MANUAL_PROTECT_EFFECTIVE_DATE` date DEFAULT NULL,
  `MANUAL_PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL COMMENT '是否受保护',
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` bigint(12) DEFAULT NULL,
  `EXT7` bigint(12) DEFAULT NULL,
  `EXT8` bigint(12) DEFAULT NULL,
  `EXT9` date DEFAULT NULL COMMENT 'PAYER受保护生效时间',
  `EXT10` date DEFAULT NULL COMMENT 'PAYER受保护失效时间',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_contact_h_2016` */

DROP TABLE IF EXISTS `cm_party_contact_h_2016`;

CREATE TABLE `cm_party_contact_h_2016` (
  `H_ID` bigint(12) NOT NULL,
  `CONT_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `PRIORY_LEVEL` bigint(2) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `CONT_NAME_QRY` varchar(256) DEFAULT NULL,
  `CONT_NAME` varchar(256) DEFAULT NULL,
  `CONT_ADDRESS` varchar(256) DEFAULT NULL,
  `HOME_TEL` varchar(60) DEFAULT NULL,
  `OFFICE_TEL` varchar(60) DEFAULT NULL,
  `CONT_MOBILE` varchar(30) DEFAULT NULL,
  `CONT_DESC` varchar(256) DEFAULT NULL,
  `CONT_EMAIL` varchar(256) DEFAULT NULL,
  `POST_CODE` varchar(9) DEFAULT NULL,
  `POST_ADDRESS` varchar(256) DEFAULT NULL,
  `CONT_FAX` varchar(60) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(4000) DEFAULT NULL,
  `DIRECT_MARKETING_PROTECTION` bigint(2) DEFAULT NULL,
  `MANUAL_COMMERCIAL_PROTECTION` bigint(2) DEFAULT NULL,
  `MANUAL_PROTECT_EFFECTIVE_DATE` date DEFAULT NULL,
  `MANUAL_PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL COMMENT '是否受保护',
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` bigint(12) DEFAULT NULL,
  `EXT7` bigint(12) DEFAULT NULL,
  `EXT8` bigint(12) DEFAULT NULL,
  `EXT9` date DEFAULT NULL COMMENT 'PAYER受保护生效时间',
  `EXT10` date DEFAULT NULL COMMENT 'PAYER受保护失效时间',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_contact_h_2017` */

DROP TABLE IF EXISTS `cm_party_contact_h_2017`;

CREATE TABLE `cm_party_contact_h_2017` (
  `H_ID` bigint(12) NOT NULL,
  `CONT_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `PRIORY_LEVEL` bigint(2) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `CONT_NAME_QRY` varchar(256) DEFAULT NULL,
  `CONT_NAME` varchar(256) DEFAULT NULL,
  `CONT_ADDRESS` varchar(256) DEFAULT NULL,
  `HOME_TEL` varchar(60) DEFAULT NULL,
  `OFFICE_TEL` varchar(60) DEFAULT NULL,
  `CONT_MOBILE` varchar(30) DEFAULT NULL,
  `CONT_DESC` varchar(256) DEFAULT NULL,
  `CONT_EMAIL` varchar(256) DEFAULT NULL,
  `POST_CODE` varchar(9) DEFAULT NULL,
  `POST_ADDRESS` varchar(256) DEFAULT NULL,
  `CONT_FAX` varchar(60) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(4000) DEFAULT NULL,
  `DIRECT_MARKETING_PROTECTION` bigint(2) DEFAULT NULL,
  `MANUAL_COMMERCIAL_PROTECTION` bigint(2) DEFAULT NULL,
  `MANUAL_PROTECT_EFFECTIVE_DATE` date DEFAULT NULL,
  `MANUAL_PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` bigint(12) DEFAULT NULL,
  `EXT7` bigint(12) DEFAULT NULL,
  `EXT8` bigint(12) DEFAULT NULL,
  `EXT9` date DEFAULT NULL,
  `EXT10` date DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_h` */

DROP TABLE IF EXISTS `cm_party_h`;

CREATE TABLE `cm_party_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '��ʷ��¼���',
  `PARTY_ID` bigint(12) NOT NULL COMMENT '�����˱��\n\n��ʾһ�������˵�Ψһ��ʶ����ϵͳ���ɵ�ȫ��Ψһ�����кš�',
  `PARENT_PARTY_ID` bigint(12) DEFAULT NULL COMMENT '�ϼ������˱�š�\n\n���ڱ�ʶ�ò�����ֱ�ӹ�ϵ���ϼ������ˡ�',
  `PARTY_TYPE` bigint(2) DEFAULT NULL COMMENT '����������\n1 �����������\n2 ��֯�������',
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME` varchar(256) DEFAULT NULL COMMENT '�����˵����ơ������ǲ����˵Ĺؼ����ԣ�һ�������˱���Ҫ��һ��ȷ�������ƣ������Ʊ���Ϊ�����˵ľ��з���Ч���ȫ�ơ�\n\n���ڸ�����˵�����Ƽ��Ǹÿͻ������֤�����ơ�\n\n������֯���������˵�����Ǽ��š���λ�ȵ����ƣ������۾�������޸ģ����ŵ�λ����Ӧ��ü��ſͻ����̹�����ŵǼ�ע�������һ�£��������������Ψһ���б�',
  `SHORT_NAME` varchar(128) DEFAULT NULL COMMENT '���',
  `ENGLISH_NAME` varchar(256) DEFAULT NULL COMMENT 'Ӣ������',
  `CERT_TYPE` bigint(2) DEFAULT NULL COMMENT '֤������\n1	���֤\n2	����\n3	����֤\n4	�籣��\n5	ͼ��֤\n6	��ʻ֤\n7	����֤\n8	Ӫҵִ��\n9	��ҵ����֤\n10	���̵Ǽ�֤\n11	ѧ��֤\n12	����֤\n13	����֤\n14	���ڱ�\n15	�侯����֤\n16	ʿ��֤\n17	��Уѧ��֤\n18	�м�֤\n19	����ִ��\n20	��֤������\n21	��ǩԼ����֤��\n99	����֤��\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_CUST_CERT_TYPE;',
  `CERT_CODE` varchar(50) DEFAULT NULL COMMENT '֤������',
  `CERT_ADDRESS` varchar(256) DEFAULT NULL COMMENT '֤����ַ',
  `CUST_CERT_EFFDATE` datetime DEFAULT NULL,
  `CERT_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '֤����Ч��',
  `NATIONALITY` varchar(10) DEFAULT NULL COMMENT '����\n\n����ö��ֵ��ϵͳͳһ��̬���ݶ���',
  `PROVINCE_ID` varchar(10) DEFAULT NULL COMMENT 'ʡ��',
  `CITY_ID` varchar(10) DEFAULT NULL COMMENT '����',
  `COUNTY_ID` varchar(10) DEFAULT NULL COMMENT '����',
  `REGION_TYPE` varchar(10) DEFAULT NULL COMMENT '��������',
  `SUB_REGION_TYPE` varchar(10) DEFAULT NULL COMMENT '����������',
  `STATE` varchar(3) DEFAULT NULL COMMENT '��¼״̬\n\nU:��Ч E:��Ч',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '��������Ա',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '��������Ա��֯',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '����Ա',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '��֯��Ԫ',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '��ǰҵ��������',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '��������',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '��ǰҵ����������',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '�ͻ���Ч����',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '�ͻ�ʧЧ����',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '���������ʶ\n\n����ƽ̨������ʷ��¼ʱ��Ҫ��֤���ֶ��Ƿ�Ϊ�գ����Ϊ�ս����ܱ��棬����Ҫ���Ƹ��ֶβ���Ϊ�ա�',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '��ע',
  `PERFER_LANGUAGE` bigint(2) DEFAULT NULL COMMENT 'ƫ������\n1.������\n2.��������\n3.Ӣ��',
  `CPR_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�����˻�����Ϣ��\n\n�ñ����ڴ���������͵Ĳ����˵Ļ�����Ϣ����Ҫ���������˵��������ԣ�\n���ơ����ͣ�����OR��֯����֤�����͡�֤�����롢֤����Ч�ڡ����ڹ��ҡ�ʡ�ݡ����С����صȡ�\n\n�ֱ��ʽ������ֱ�\n������ʽ������\n�����ֶΣ�����\n�����Ϣ��ȫ�ȼ�����\nҵ�������ȫ�ȼ�����';

/*Table structure for table `cm_party_h_2015` */

DROP TABLE IF EXISTS `cm_party_h_2015`;

CREATE TABLE `cm_party_h_2015` (
  `H_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) NOT NULL,
  `PARENT_PARTY_ID` bigint(12) DEFAULT NULL,
  `PARTY_TYPE` bigint(2) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME` varchar(256) DEFAULT NULL,
  `SHORT_NAME` varchar(128) DEFAULT NULL,
  `ENGLISH_NAME` varchar(256) DEFAULT NULL,
  `CERT_TYPE` bigint(2) DEFAULT NULL,
  `CERT_CODE` varchar(50) DEFAULT NULL,
  `CERT_ADDRESS` varchar(256) DEFAULT NULL,
  `CUST_CERT_EFFDATE` datetime DEFAULT NULL,
  `CERT_EXPIRE_DATE` datetime DEFAULT NULL,
  `NATIONALITY` varchar(10) DEFAULT NULL,
  `PROVINCE_ID` varchar(10) DEFAULT NULL,
  `CITY_ID` varchar(10) DEFAULT NULL,
  `COUNTY_ID` varchar(10) DEFAULT NULL,
  `REGION_TYPE` varchar(10) DEFAULT NULL,
  `SUB_REGION_TYPE` varchar(10) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `PERFER_LANGUAGE` bigint(2) DEFAULT NULL,
  `CPR_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_h_2016` */

DROP TABLE IF EXISTS `cm_party_h_2016`;

CREATE TABLE `cm_party_h_2016` (
  `H_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) NOT NULL,
  `PARENT_PARTY_ID` bigint(12) DEFAULT NULL,
  `PARTY_TYPE` bigint(2) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME` varchar(256) DEFAULT NULL,
  `SHORT_NAME` varchar(128) DEFAULT NULL,
  `ENGLISH_NAME` varchar(256) DEFAULT NULL,
  `CERT_TYPE` bigint(2) DEFAULT NULL,
  `CERT_CODE` varchar(50) DEFAULT NULL,
  `CERT_ADDRESS` varchar(256) DEFAULT NULL,
  `CUST_CERT_EFFDATE` datetime DEFAULT NULL,
  `CERT_EXPIRE_DATE` datetime DEFAULT NULL,
  `NATIONALITY` varchar(10) DEFAULT NULL,
  `PROVINCE_ID` varchar(10) DEFAULT NULL,
  `CITY_ID` varchar(10) DEFAULT NULL,
  `COUNTY_ID` varchar(10) DEFAULT NULL,
  `REGION_TYPE` varchar(10) DEFAULT NULL,
  `SUB_REGION_TYPE` varchar(10) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `PERFER_LANGUAGE` bigint(2) DEFAULT NULL,
  `CPR_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_h_2017` */

DROP TABLE IF EXISTS `cm_party_h_2017`;

CREATE TABLE `cm_party_h_2017` (
  `H_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) NOT NULL,
  `PARENT_PARTY_ID` bigint(12) DEFAULT NULL,
  `PARTY_TYPE` bigint(2) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME` varchar(256) DEFAULT NULL,
  `SHORT_NAME` varchar(128) DEFAULT NULL,
  `ENGLISH_NAME` varchar(256) DEFAULT NULL,
  `CERT_TYPE` bigint(2) DEFAULT NULL,
  `CERT_CODE` varchar(50) DEFAULT NULL,
  `CERT_ADDRESS` varchar(256) DEFAULT NULL,
  `CUST_CERT_EFFDATE` datetime DEFAULT NULL,
  `CERT_EXPIRE_DATE` datetime DEFAULT NULL,
  `NATIONALITY` varchar(10) DEFAULT NULL,
  `PROVINCE_ID` varchar(10) DEFAULT NULL,
  `CITY_ID` varchar(10) DEFAULT NULL,
  `COUNTY_ID` varchar(10) DEFAULT NULL,
  `REGION_TYPE` varchar(10) DEFAULT NULL,
  `SUB_REGION_TYPE` varchar(10) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `PERFER_LANGUAGE` bigint(2) DEFAULT NULL,
  `CPR_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_permission` */

DROP TABLE IF EXISTS `cm_party_permission`;

CREATE TABLE `cm_party_permission` (
  `REL_ID` bigint(12) NOT NULL COMMENT '唯一性标识',
  `PARTY_ID` bigint(12) NOT NULL,
  `PERMISSON_TYPE` bigint(12) NOT NULL COMMENT '1.LEGAL CONTACT MEDIA PERMISSION   2.COMMERCIAL CONTACT PERMISSION   3.MARKETING CONTACT PERMISSION   4.LOCATION DATA PERMISSION。   5.TRAFFIC USAGE DATA PERMISSION   6.THIRD PARTY PRODUCTS & SERVICES MARKETING PERMISSION   7.CONTENT USAGE DATA PERMISSION   8.CONTACTING EMPLOYEES PERMISSION',
  `PERMISSION_VALUE` varchar(20) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态   U:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识   由于平台保存历史记录时需要验证该字段是否为空，如果为空将不能保存，故需要限制该字段不能为空。',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户分表';

/*Table structure for table `cm_party_permission_21` */

DROP TABLE IF EXISTS `cm_party_permission_21`;

CREATE TABLE `cm_party_permission_21` (
  `REL_ID` bigint(12) NOT NULL COMMENT '唯一性标识',
  `PARTY_ID` bigint(12) NOT NULL,
  `PERMISSON_TYPE` bigint(12) NOT NULL COMMENT '1.LEGAL CONTACT MEDIA PERMISSION   2.COMMERCIAL CONTACT PERMISSION   3.MARKETING CONTACT PERMISSION   4.LOCATION DATA PERMISSION。   5.TRAFFIC USAGE DATA PERMISSION   6.THIRD PARTY PRODUCTS & SERVICES MARKETING PERMISSION   7.CONTENT USAGE DATA PERMISSION   8.CONTACTING EMPLOYEES PERMISSION',
  `PERMISSION_VALUE` varchar(20) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态   U:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识   由于平台保存历史记录时需要验证该字段是否为空，如果为空将不能保存，故需要限制该字段不能为空。',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户分表';

/*Table structure for table `cm_party_permission_91` */

DROP TABLE IF EXISTS `cm_party_permission_91`;

CREATE TABLE `cm_party_permission_91` (
  `REL_ID` bigint(12) NOT NULL COMMENT '唯一性标识',
  `PARTY_ID` bigint(12) NOT NULL,
  `PERMISSON_TYPE` bigint(12) NOT NULL COMMENT '1.LEGAL CONTACT MEDIA PERMISSION   2.COMMERCIAL CONTACT PERMISSION   3.MARKETING CONTACT PERMISSION   4.LOCATION DATA PERMISSION。   5.TRAFFIC USAGE DATA PERMISSION   6.THIRD PARTY PRODUCTS & SERVICES MARKETING PERMISSION   7.CONTENT USAGE DATA PERMISSION   8.CONTACTING EMPLOYEES PERMISSION',
  `PERMISSION_VALUE` varchar(20) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态   U:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识   由于平台保存历史记录时需要验证该字段是否为空，如果为空将不能保存，故需要限制该字段不能为空。',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户分表';

/*Table structure for table `cm_party_permission_h` */

DROP TABLE IF EXISTS `cm_party_permission_h`;

CREATE TABLE `cm_party_permission_h` (
  `REL_ID` bigint(12) NOT NULL COMMENT '唯一性标识',
  `PARTY_ID` bigint(12) NOT NULL,
  `PERMISSON_TYPE` bigint(12) NOT NULL COMMENT '1.LEGAL CONTACT MEDIA PERMISSION   2.COMMERCIAL CONTACT PERMISSION   3.MARKETING CONTACT PERMISSION   4.LOCATION DATA PERMISSION。   5.TRAFFIC USAGE DATA PERMISSION   6.THIRD PARTY PRODUCTS & SERVICES MARKETING PERMISSION   7.CONTENT USAGE DATA PERMISSION   8.CONTACTING EMPLOYEES PERMISSION',
  `PERMISSION_VALUE` varchar(20) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态   U:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识   由于平台保存历史记录时需要验证该字段是否为空，如果为空将不能保存，故需要限制该字段不能为空。',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `H_ID` bigint(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户分表';

/*Table structure for table `cm_party_permission_h_2016` */

DROP TABLE IF EXISTS `cm_party_permission_h_2016`;

CREATE TABLE `cm_party_permission_h_2016` (
  `REL_ID` bigint(12) NOT NULL COMMENT '唯一性标识',
  `PARTY_ID` bigint(12) NOT NULL,
  `PERMISSON_TYPE` bigint(12) NOT NULL COMMENT '1.LEGAL CONTACT MEDIA PERMISSION   2.COMMERCIAL CONTACT PERMISSION   3.MARKETING CONTACT PERMISSION   4.LOCATION DATA PERMISSION。   5.TRAFFIC USAGE DATA PERMISSION   6.THIRD PARTY PRODUCTS & SERVICES MARKETING PERMISSION   7.CONTENT USAGE DATA PERMISSION   8.CONTACTING EMPLOYEES PERMISSION',
  `PERMISSION_VALUE` varchar(20) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态   U:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识   由于平台保存历史记录时需要验证该字段是否为空，如果为空将不能保存，故需要限制该字段不能为空。',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `H_ID` bigint(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户分表';

/*Table structure for table `cm_party_permission_h_2017` */

DROP TABLE IF EXISTS `cm_party_permission_h_2017`;

CREATE TABLE `cm_party_permission_h_2017` (
  `REL_ID` bigint(12) NOT NULL COMMENT '唯一性标识',
  `PARTY_ID` bigint(12) NOT NULL,
  `PERMISSON_TYPE` bigint(12) NOT NULL COMMENT '1.LEGAL CONTACT MEDIA PERMISSION   2.COMMERCIAL CONTACT PERMISSION   3.MARKETING CONTACT PERMISSION   4.LOCATION DATA PERMISSION。   5.TRAFFIC USAGE DATA PERMISSION   6.THIRD PARTY PRODUCTS & SERVICES MARKETING PERMISSION   7.CONTENT USAGE DATA PERMISSION   8.CONTACTING EMPLOYEES PERMISSION',
  `PERMISSION_VALUE` varchar(20) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态   U:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识   由于平台保存历史记录时需要验证该字段是否为空，如果为空将不能保存，故需要限制该字段不能为空。',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `H_ID` bigint(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户分表';

/*Table structure for table `cm_party_role` */

DROP TABLE IF EXISTS `cm_party_role`;

CREATE TABLE `cm_party_role` (
  `PARTY_ROLE_ID` bigint(14) NOT NULL COMMENT '�����˽�ɫ���\n���ݲ�ͬ�Ľ�ɫӳ�䵽��Ӧ��ʵ���ϣ�ȡ�ö�Ӧʵ���������\n�磺\n�ͻ���ɫ������˽�ɫ��ž��ǿͻ���š�',
  `ROLE_TYPE` bigint(2) NOT NULL COMMENT 'Ŀǰֻ������һ�ֽ�ɫ\n1���ͻ�\n2:   ʹ����\n3��Ա��\n4����ϵ��',
  `ENTITY_ID` bigint(14) NOT NULL COMMENT '�����ɫ�ǿͻ����ǿͻ�ID\n�������ϵ��������ϵ��ID',
  `PARTY_ID` bigint(12) DEFAULT NULL COMMENT '�����˱��\n\n��ʾһ�������˵�Ψһ��ʶ����ϵͳ���ɵ�ȫ��Ψһ�����кš�',
  `ROLE_REGION_ID` varchar(6) DEFAULT NULL COMMENT '��ɫ�������',
  `ROLE_STATUS` bigint(2) DEFAULT NULL COMMENT '1.active\n2.inactive',
  `STATE` varchar(3) DEFAULT NULL COMMENT '��¼״̬\n\nU:��Ч E:��Ч',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '��������Ա',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '��������Ա��֯',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '��ǰҵ���������Ա',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '��ǰҵ��������֯��Ԫ',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '��ǰҵ��������',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '��������',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '��ǰҵ����������',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '�ͻ���Ч����',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '�ͻ�ʧЧ����',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '���������ʶ',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`PARTY_ROLE_ID`,`ROLE_TYPE`),
  KEY `IDX_CM_PARTY_ROLE_1` (`PARTY_ID`),
  KEY `idx_cm_party_role_2` (`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��¼��������ʲô�ص����ʲô���Ľ�ɫ�������˽�ɫ��Ҫ�����ͻ���Ա������֯�������̡����ֲ���Ա�ȡ�\n\nҪ���漰���ĵط����ͻ����Ա�������������Ϣ��ȱ������Ҫ��¼��Ӧ�Ĳ����˱�ţ�party_id�������⾭�������ɫ���������ˡ�\n\n�ֱ��ʽ���⻧�ֱ�\n������ʽ��������\n�����Ϣ��ȫ�ȼ�����\nҵ�������ȫ�ȼ�����';

/*Table structure for table `cm_party_role_21` */

DROP TABLE IF EXISTS `cm_party_role_21`;

CREATE TABLE `cm_party_role_21` (
  `PARTY_ROLE_ID` bigint(14) NOT NULL,
  `ROLE_TYPE` bigint(2) NOT NULL,
  `ENTITY_ID` bigint(14) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `ROLE_REGION_ID` varchar(6) DEFAULT NULL,
  `ROLE_STATUS` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PARTY_ROLE_ID`,`ROLE_TYPE`),
  KEY `idx_cm_party_role_2_21` (`ENTITY_ID`) USING BTREE,
  KEY `IDX_CM_PARTY_ROLE_1_21` (`PARTY_ID`) USING BTREE,
  KEY `idx_cm_party_role_2` (`ENTITY_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_role_91` */

DROP TABLE IF EXISTS `cm_party_role_91`;

CREATE TABLE `cm_party_role_91` (
  `PARTY_ROLE_ID` bigint(14) NOT NULL,
  `ROLE_TYPE` bigint(2) NOT NULL,
  `ENTITY_ID` bigint(14) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `ROLE_REGION_ID` varchar(6) DEFAULT NULL,
  `ROLE_STATUS` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PARTY_ROLE_ID`,`ROLE_TYPE`),
  KEY `idx_cm_party_role_2_91` (`ENTITY_ID`) USING BTREE,
  KEY `IDX_CM_PARTY_ROLE_1_91` (`PARTY_ID`) USING BTREE,
  KEY `idx_cm_party_role_2` (`ENTITY_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_role_h` */

DROP TABLE IF EXISTS `cm_party_role_h`;

CREATE TABLE `cm_party_role_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '历史记录编号',
  `PARTY_ROLE_ID` bigint(14) NOT NULL COMMENT '参与人角色编号\n根据不同的角色映射到对应的实体上，取用对应实体的主键。\n如：\n客户角色则参与人角色编号就是客户编号。',
  `ROLE_TYPE` bigint(2) NOT NULL COMMENT '参与人角色类型\n1：客户\n2:   使用者\n3：员工\n4：联系人',
  `PARTY_ID` bigint(12) DEFAULT NULL COMMENT '参与人编号\n\n表示一个参与人的唯一标识，由系统生成的全局唯一的序列号。',
  `ENTITY_ID` bigint(14) NOT NULL COMMENT '如果角色是客户则是客户ID\n如果是联系人则是联系人ID',
  `ROLE_REGION_ID` varchar(6) DEFAULT NULL COMMENT '角色归属地市',
  `ROLE_STATUS` bigint(2) DEFAULT NULL COMMENT '1.active\n2.inactive',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录参与人在什么地点扮演什么样的角色。参与人角色主要包含客户、员工、组织、代理商、俱乐部会员等。\n\n要求涉及到的地方（客户表、员工表、代理商信息表等表）中需要记录对应的参与人编号（party_id），避免经过这个角色表反查参与人。\n\n分表方式：按年分表\n分区方式：待定\n分区字段：待定\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cm_party_role_h_2015` */

DROP TABLE IF EXISTS `cm_party_role_h_2015`;

CREATE TABLE `cm_party_role_h_2015` (
  `H_ID` bigint(12) NOT NULL,
  `PARTY_ROLE_ID` bigint(14) NOT NULL,
  `ROLE_TYPE` bigint(2) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `ENTITY_ID` bigint(14) NOT NULL,
  `ROLE_REGION_ID` varchar(6) DEFAULT NULL,
  `ROLE_STATUS` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_role_h_2016` */

DROP TABLE IF EXISTS `cm_party_role_h_2016`;

CREATE TABLE `cm_party_role_h_2016` (
  `H_ID` bigint(12) NOT NULL,
  `PARTY_ROLE_ID` bigint(14) NOT NULL,
  `ROLE_TYPE` bigint(2) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `ENTITY_ID` bigint(14) NOT NULL,
  `ROLE_REGION_ID` varchar(6) DEFAULT NULL,
  `ROLE_STATUS` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_party_role_h_2017` */

DROP TABLE IF EXISTS `cm_party_role_h_2017`;

CREATE TABLE `cm_party_role_h_2017` (
  `H_ID` bigint(12) NOT NULL,
  `PARTY_ROLE_ID` bigint(14) NOT NULL,
  `ROLE_TYPE` bigint(2) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `ENTITY_ID` bigint(14) NOT NULL,
  `ROLE_REGION_ID` varchar(6) DEFAULT NULL,
  `ROLE_STATUS` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_seg_mgr_group_rel` */

DROP TABLE IF EXISTS `cm_seg_mgr_group_rel`;

CREATE TABLE `cm_seg_mgr_group_rel` (
  `REL_ID` bigint(12) NOT NULL COMMENT '关联ID',
  `SEGMENT_ID` bigint(12) NOT NULL COMMENT '关系类型\n1：使用关系\n2：拥有关系',
  `GROUP_CODE` varchar(100) NOT NULL COMMENT '客户编号\n\n所有类型客户的客户编号是唯一的。',
  `ZIP_CODE` bigint(9) DEFAULT NULL COMMENT '用户ID',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='细分与客户经理组映射表';

/*Table structure for table `cm_seg_mgr_group_rel_21` */

DROP TABLE IF EXISTS `cm_seg_mgr_group_rel_21`;

CREATE TABLE `cm_seg_mgr_group_rel_21` (
  `REL_ID` bigint(12) NOT NULL,
  `SEGMENT_ID` bigint(12) NOT NULL,
  `GROUP_CODE` varchar(100) NOT NULL,
  `ZIP_CODE` bigint(9) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_seg_mgr_group_rel_91` */

DROP TABLE IF EXISTS `cm_seg_mgr_group_rel_91`;

CREATE TABLE `cm_seg_mgr_group_rel_91` (
  `REL_ID` bigint(12) NOT NULL,
  `SEGMENT_ID` bigint(12) NOT NULL,
  `GROUP_CODE` varchar(100) NOT NULL,
  `ZIP_CODE` bigint(9) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_seg_mgr_group_rel_h` */

DROP TABLE IF EXISTS `cm_seg_mgr_group_rel_h`;

CREATE TABLE `cm_seg_mgr_group_rel_h` (
  `H_ID` bigint(12) NOT NULL,
  `REL_ID` bigint(12) DEFAULT NULL COMMENT '关联ID',
  `SEGMENT_ID` bigint(12) DEFAULT NULL COMMENT '关系类型\n1：使用关系\n2：拥有关系',
  `GROUP_ID` bigint(14) DEFAULT NULL COMMENT '客户编号\n\n所有类型客户的客户编号是唯一的。',
  `ZIP_CODE` bigint(9) DEFAULT NULL COMMENT '用户ID',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='细分与客户经理组映射表';

/*Table structure for table `cm_special_list` */

DROP TABLE IF EXISTS `cm_special_list`;

CREATE TABLE `cm_special_list` (
  `SPEC_LIST_ID` bigint(12) NOT NULL COMMENT '特殊名单标识',
  `PARTY_ID` bigint(12) DEFAULT NULL COMMENT '基础客户编号\n来自于基础客户表的主键。',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '家庭客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号\n\n用于支持某些地方将俱乐部会员资格定义在用户上的情况。',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '手机号码\n增加手机号码，方便快速查询等。',
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME` varchar(256) DEFAULT NULL COMMENT '客户名称',
  `CERT_TYPE` bigint(2) DEFAULT NULL COMMENT '1：身份证\n2：护照\n3：驾驶证\n4：军官证\n5：警官证\n6：社会保险号\n7：其他',
  `CERT_CODE` varchar(50) DEFAULT NULL COMMENT '证件号码',
  `MON_TYPE` bigint(6) NOT NULL COMMENT '监控类型(依赖名单来源LIST_SOURCE，CM_SPECIAL_MON_TYPE_[LIST_SOURCE])\n\nLIST_SOURCE为1：\n1	黑名单    \n\nLIST_SOURCE为2：\n1	灰名单    \n2	白名单    \n3	红名单    \n4	证件黑名单\n5	信用黑名单',
  `SUB_MON_TYPE` bigint(6) DEFAULT NULL COMMENT '监控子类型（telenor没有启用）\n\n针对每种监控类型定义具体的子类型，可以通过特殊名单类型细分进行一些具体的监控规则等。\n详细的定义根据业务需要进行扩展定义。',
  `MON_REGION_LEVEL` bigint(2) DEFAULT NULL COMMENT '监控区域级别\n\n按照省、地市、县市等级别进行定义。\n目前暂定义为：\n1：集团（全国）特殊名单；\n10：省级特殊名单；\n2：地市级特殊名单；\n3：县市级特殊名单。\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_SPECIAL_MON_REGION_LEVEL;',
  `MON_REGION_DETAIL` varchar(255) DEFAULT NULL COMMENT '区域明细\n根据相应的区域级别记录对应的区域信息。\n多个区域之间以","分割。',
  `MON_RANK` bigint(2) DEFAULT NULL COMMENT '监控等级（CM_SPECIAL_MON_RANK）\n\n按照监控的严重程度细分进行定义。\n目前暂定义为：\n1	特级      \n2	中级      \n3	一般',
  `LIST_SOURCE` bigint(2) DEFAULT NULL COMMENT '名单来源(CM_SPECIAL_LIST_SOURCE)\n1 账单报损黑名单\n2 管理类特殊名单',
  `ADD_REASON` varchar(255) DEFAULT NULL COMMENT '名单添加原因\n\n在特殊名单录入时录入',
  `DEL_REASON` varchar(255) DEFAULT NULL COMMENT '名单注销原因\n\n在特殊名单注销时录入',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`SPEC_LIST_ID`),
  KEY `IDX_CM_CUST_SPE_LIST_1` (`PARTY_ID`),
  KEY `IDX_CM_CUST_SPE_LIST_2` (`CUST_ID`),
  KEY `IDX_CM_CUST_SPE_LIST_3` (`BILL_ID`),
  KEY `IDX_CM_CUST_SPE_LIST_4` (`CERT_TYPE`,`CERT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='特殊名单：特殊名单包括黑名单、红名单等信息，用于记录如因故被列入黑名单的客户用户和免催缴客户、用户等特殊名单。\n特殊名单应该是全省唯一的，不应该放到具体的地市进行管理，这样不方便异地查询特殊名单。\n\n\n分表方式：不分表\n分区方式：不分区\n分区字段：不分区\n敏感信息安全等级：二级\n业务操作安全等级：一级';

/*Table structure for table `cm_special_list_21` */

DROP TABLE IF EXISTS `cm_special_list_21`;

CREATE TABLE `cm_special_list_21` (
  `SPEC_LIST_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME` varchar(256) DEFAULT NULL,
  `CERT_TYPE` bigint(2) DEFAULT NULL,
  `CERT_CODE` varchar(50) DEFAULT NULL,
  `MON_TYPE` bigint(6) NOT NULL,
  `SUB_MON_TYPE` bigint(6) DEFAULT NULL,
  `MON_REGION_LEVEL` bigint(2) DEFAULT NULL,
  `MON_REGION_DETAIL` varchar(255) DEFAULT NULL,
  `MON_RANK` bigint(2) DEFAULT NULL,
  `LIST_SOURCE` bigint(2) DEFAULT NULL,
  `ADD_REASON` varchar(255) DEFAULT NULL,
  `DEL_REASON` varchar(255) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SPEC_LIST_ID`),
  KEY `IDX_CM_CUST_SPE_LIST_2_21` (`CUST_ID`) USING BTREE,
  KEY `IDX_CM_CUST_SPE_LIST_1_21` (`PARTY_ID`) USING BTREE,
  KEY `IDX_CM_CUST_SPE_LIST_4_21` (`CERT_TYPE`,`CERT_CODE`) USING BTREE,
  KEY `IDX_CM_CUST_SPE_LIST_3_21` (`BILL_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_special_list_91` */

DROP TABLE IF EXISTS `cm_special_list_91`;

CREATE TABLE `cm_special_list_91` (
  `SPEC_LIST_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME` varchar(256) DEFAULT NULL,
  `CERT_TYPE` bigint(2) DEFAULT NULL,
  `CERT_CODE` varchar(50) DEFAULT NULL,
  `MON_TYPE` bigint(6) NOT NULL,
  `SUB_MON_TYPE` bigint(6) DEFAULT NULL,
  `MON_REGION_LEVEL` bigint(2) DEFAULT NULL,
  `MON_REGION_DETAIL` varchar(255) DEFAULT NULL,
  `MON_RANK` bigint(2) DEFAULT NULL,
  `LIST_SOURCE` bigint(2) DEFAULT NULL,
  `ADD_REASON` varchar(255) DEFAULT NULL,
  `DEL_REASON` varchar(255) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SPEC_LIST_ID`),
  KEY `IDX_CM_CUST_SPE_LIST_2_91` (`CUST_ID`) USING BTREE,
  KEY `IDX_CM_CUST_SPE_LIST_1_91` (`PARTY_ID`) USING BTREE,
  KEY `IDX_CM_CUST_SPE_LIST_4_91` (`CERT_TYPE`,`CERT_CODE`) USING BTREE,
  KEY `IDX_CM_CUST_SPE_LIST_3_91` (`BILL_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_special_list_h` */

DROP TABLE IF EXISTS `cm_special_list_h`;

CREATE TABLE `cm_special_list_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '历史记录编号',
  `SPEC_LIST_ID` bigint(12) NOT NULL COMMENT '特殊名单标识',
  `PARTY_ID` bigint(12) DEFAULT NULL COMMENT '基础客户编号\n来自于基础客户表的主键。',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '家庭客户编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号\n\n用于支持某些地方将俱乐部会员资格定义在用户上的情况。',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '手机号码\n增加手机号码，方便快速查询等。',
  `PARTY_NAME` varchar(40) DEFAULT NULL COMMENT '客户名称',
  `CERT_TYPE` bigint(2) DEFAULT NULL COMMENT '证件类型\n1	身份证\n2	护照\n3	军人证\n4	社保卡\n5	图书证\n6	驾驶证\n7	工作证\n8	营业执照\n9	企业代码证\n10	工商登记证\n11	学生证\n12	回乡证\n13	军官证\n14	户口本\n15	武警警官证\n16	士兵证\n17	军校学生证\n18	残疾证\n19	政府执照\n20	无证件类型\n21	非签约虚拟证件\n99	其它证件\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_CUST_CERT_TYPE;',
  `CERT_CODE` varchar(50) DEFAULT NULL COMMENT '证件号码',
  `MON_TYPE` bigint(6) DEFAULT NULL COMMENT '监控类型\n0	黑名单\n1	白名单\n2	红名单\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_SPECIAL_MON_TYPE;',
  `SUB_MON_TYPE` bigint(6) DEFAULT NULL COMMENT '监控子类型\n\n针对每种监控类型定义具体的子类型，可以通过特殊名单类型细分进行一些具体的监控规则等。\n详细的定义根据业务需要进行扩展定义。',
  `MON_REGION_LEVEL` bigint(2) DEFAULT NULL COMMENT '监控区域级别\n\n按照省、地市、县市等级别进行定义。\n目前暂定义为：\n1：集团（全国）特殊名单；\n10：省级特殊名单；\n2：地市级特殊名单；\n3：县市级特殊名单。\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_SPECIAL_MON_REGION_LEVEL;',
  `MON_REGION_DETAIL` varchar(255) DEFAULT NULL COMMENT '区域明细\n根据相应的区域级别记录对应的区域信息。\n多个区域之间以","分割。',
  `MON_RANK` bigint(2) DEFAULT NULL COMMENT '监控等级\n\n按照监控的严重程度细分进行定义。\n目前暂定义为：\n1	特级\n2	中级\n3	一般\n\n\nSELECT T.* FROM BASE.BS_STATIC_DATA T WHERE T.CODE_TYPE = CM_SPECIAL_MON_RANK;',
  `LIST_SOURCE` bigint(2) DEFAULT NULL COMMENT '名单来源\n1 账单报损黑名单\n2 管理类特殊名单',
  `ADD_REASON` varchar(255) DEFAULT NULL COMMENT '名单添加原因\n\n在特殊名单录入时录入',
  `DEL_REASON` varchar(255) DEFAULT NULL COMMENT '名单注销原因\n\n在特殊名单注销时录入',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '当前业务受理组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME_QRY` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='特殊名单：特殊名单包括黑名单、红名单等信息，用于记录如因故被列入黑名单的客户用户和免催缴客户、用户等特殊名单。\n特殊名单应该是全省唯一的，不应该放到具体的地市进行管理，这样不方便异地查询特殊名单。\n\n\n分表方式：按年分表\n分区方式：不分区\n分区字段：不分区\n敏感信息安全等级：二级\n业务操作安全等级：一级';

/*Table structure for table `cm_special_list_h_2015` */

DROP TABLE IF EXISTS `cm_special_list_h_2015`;

CREATE TABLE `cm_special_list_h_2015` (
  `H_ID` bigint(12) NOT NULL,
  `SPEC_LIST_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `PARTY_NAME` varchar(40) DEFAULT NULL,
  `CERT_TYPE` bigint(2) DEFAULT NULL,
  `CERT_CODE` varchar(50) DEFAULT NULL,
  `MON_TYPE` bigint(6) DEFAULT NULL,
  `SUB_MON_TYPE` bigint(6) DEFAULT NULL,
  `MON_REGION_LEVEL` bigint(2) DEFAULT NULL,
  `MON_REGION_DETAIL` varchar(255) DEFAULT NULL,
  `MON_RANK` bigint(2) DEFAULT NULL,
  `LIST_SOURCE` bigint(2) DEFAULT NULL,
  `ADD_REASON` varchar(255) DEFAULT NULL,
  `DEL_REASON` varchar(255) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME_QRY` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_special_list_h_2016` */

DROP TABLE IF EXISTS `cm_special_list_h_2016`;

CREATE TABLE `cm_special_list_h_2016` (
  `H_ID` bigint(12) NOT NULL,
  `SPEC_LIST_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `PARTY_NAME` varchar(40) DEFAULT NULL,
  `CERT_TYPE` bigint(2) DEFAULT NULL,
  `CERT_CODE` varchar(50) DEFAULT NULL,
  `MON_TYPE` bigint(6) DEFAULT NULL,
  `SUB_MON_TYPE` bigint(6) DEFAULT NULL,
  `MON_REGION_LEVEL` bigint(2) DEFAULT NULL,
  `MON_REGION_DETAIL` varchar(255) DEFAULT NULL,
  `MON_RANK` bigint(2) DEFAULT NULL,
  `LIST_SOURCE` bigint(2) DEFAULT NULL,
  `ADD_REASON` varchar(255) DEFAULT NULL,
  `DEL_REASON` varchar(255) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME_QRY` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cm_special_list_h_2017` */

DROP TABLE IF EXISTS `cm_special_list_h_2017`;

CREATE TABLE `cm_special_list_h_2017` (
  `H_ID` bigint(12) NOT NULL,
  `SPEC_LIST_ID` bigint(12) NOT NULL,
  `PARTY_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `PARTY_NAME` varchar(40) DEFAULT NULL,
  `CERT_TYPE` bigint(2) DEFAULT NULL,
  `CERT_CODE` varchar(50) DEFAULT NULL,
  `MON_TYPE` bigint(6) DEFAULT NULL,
  `SUB_MON_TYPE` bigint(6) DEFAULT NULL,
  `MON_REGION_LEVEL` bigint(2) DEFAULT NULL,
  `MON_REGION_DETAIL` varchar(255) DEFAULT NULL,
  `MON_RANK` bigint(2) DEFAULT NULL,
  `LIST_SOURCE` bigint(2) DEFAULT NULL,
  `ADD_REASON` varchar(255) DEFAULT NULL,
  `DEL_REASON` varchar(255) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) DEFAULT NULL,
  `LAST_NAME` varchar(256) DEFAULT NULL,
  `FIRST_NAME_QRY` varchar(256) DEFAULT NULL,
  `MIDDLE_NAME_QRY` varchar(256) DEFAULT NULL,
  `LAST_NAME_QRY` varchar(256) DEFAULT NULL,
  `PARTY_NAME_QRY` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cmx_acct_bank_rel` */

DROP TABLE IF EXISTS `cmx_acct_bank_rel`;

CREATE TABLE `cmx_acct_bank_rel` (
  `REL_ID` bigint(12) NOT NULL COMMENT '主键标识',
  `ACCT_ID` bigint(14) NOT NULL COMMENT '账户编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '手机号码',
  `BANK_CODE` varchar(50) DEFAULT NULL COMMENT '银行编号',
  `BANK_ACCOUNT_TYPE` bigint(2) DEFAULT NULL COMMENT '卡类型： 0 贷记卡 1 准贷记卡 2 借记卡',
  `BANK_ACCOUNT` varchar(30) DEFAULT NULL COMMENT '银行账户',
  `ACCOUNT_EXPIRE_DATE` varchar(8) DEFAULT NULL COMMENT '银行账户失效时间（YYMM）',
  `PAY_METHOD` bigint(2) DEFAULT NULL COMMENT '支付方式：2 信用卡代扣',
  `BUSI_CODE` bigint(12) DEFAULT NULL COMMENT '业务操作编码\nBUSI_CODE\n可填写：\n\n浦发银行签约的类型为2330001003 \n手机支付的类型为2330001004',
  `ID_CARD` varchar(20) DEFAULT NULL COMMENT '身份证号：信用卡代扣时必须输入',
  `CREDIT` varchar(60) DEFAULT NULL COMMENT '信用额度（调用银行接口返回的数据）',
  `PF_SEQ` varchar(30) DEFAULT NULL COMMENT '浦发银行签约流水',
  `ACTIONDATE` varchar(10) DEFAULT NULL COMMENT '平台下发的操作请求日期	YYYYMMDD,对帐时间以此为准',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `CARD_HOLDER` varchar(255) DEFAULT NULL COMMENT '持卡人',
  `CVV_CVC_CID` bigint(3) DEFAULT NULL COMMENT '卡背后三位数',
  PRIMARY KEY (`REL_ID`),
  KEY `IDX_CMX_ACCT_BANK_REL_1` (`ACCT_ID`),
  KEY `IDX_CMX_ACCT_BANK_REL_2` (`BILL_ID`),
  KEY `IDX_CMX_ACCT_BANK_REL_3` (`BUSI_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='（telenor未启用）\n浦发银行签约的类型为2330001003 \n手机支付的类型为2330001004';

/*Table structure for table `cmx_acct_bank_rel_h` */

DROP TABLE IF EXISTS `cmx_acct_bank_rel_h`;

CREATE TABLE `cmx_acct_bank_rel_h` (
  `H_ID` bigint(12) NOT NULL COMMENT '历史表主键',
  `REL_ID` bigint(12) DEFAULT NULL COMMENT '原表主键标识',
  `ACCT_ID` bigint(14) DEFAULT NULL COMMENT '账户编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '手机号码',
  `BANK_CODE` varchar(50) DEFAULT NULL COMMENT '银行编号',
  `BANK_ACCOUNT_TYPE` bigint(2) DEFAULT NULL COMMENT '卡类型： 0 贷记卡 1 准贷记卡 2 借记卡',
  `BANK_ACCOUNT` varchar(30) DEFAULT NULL COMMENT '银行账户',
  `ACCOUNT_EXPIRE_DATE` varchar(8) DEFAULT NULL COMMENT '银行账户失效时间（YYMM）',
  `PAY_METHOD` bigint(2) DEFAULT NULL COMMENT '支付方式：2 信用卡代扣',
  `BUSI_CODE` bigint(12) DEFAULT NULL COMMENT '业务操作编码：\n支付方式为信用卡代扣，BUSI_CODE\n可填写：\n2330001003  信用卡代扣申请(8021415)	\n2330001004  信用卡担保入网(4047208)\n其中 浦发银行签约的类型为2330001003 	信用卡代扣申请',
  `ID_CARD` varchar(20) DEFAULT NULL COMMENT '身份证号：信用卡代扣时必须输入',
  `CREDIT` varchar(60) DEFAULT NULL COMMENT '信用额度（调用银行接口返回的数据）',
  `PF_SEQ` varchar(30) DEFAULT NULL COMMENT '浦发银行签约流水',
  `ACTIONDATE` varchar(10) DEFAULT NULL COMMENT '平台下发的操作请求日期	YYYYMMDD,对帐时间以此为准',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='满足账户支付信息中的支付方式为信用卡代扣\n2330001003  信用卡代扣申请(8021415)	\n2330001004  信用卡担保入网(4047208)\n浦发银行签约以及解约等）';

/*Table structure for table `cmx_acct_bank_rel_h_2015` */

DROP TABLE IF EXISTS `cmx_acct_bank_rel_h_2015`;

CREATE TABLE `cmx_acct_bank_rel_h_2015` (
  `H_ID` bigint(12) NOT NULL,
  `REL_ID` bigint(12) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `BANK_CODE` varchar(50) DEFAULT NULL,
  `BANK_ACCOUNT_TYPE` bigint(2) DEFAULT NULL,
  `BANK_ACCOUNT` varchar(30) DEFAULT NULL,
  `ACCOUNT_EXPIRE_DATE` varchar(8) DEFAULT NULL,
  `PAY_METHOD` bigint(2) DEFAULT NULL,
  `BUSI_CODE` bigint(12) DEFAULT NULL,
  `ID_CARD` varchar(20) DEFAULT NULL,
  `CREDIT` varchar(60) DEFAULT NULL,
  `PF_SEQ` varchar(30) DEFAULT NULL,
  `ACTIONDATE` varchar(10) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cmx_acct_bank_rel_h_2016` */

DROP TABLE IF EXISTS `cmx_acct_bank_rel_h_2016`;

CREATE TABLE `cmx_acct_bank_rel_h_2016` (
  `H_ID` bigint(12) NOT NULL,
  `REL_ID` bigint(12) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `BANK_CODE` varchar(50) DEFAULT NULL,
  `BANK_ACCOUNT_TYPE` bigint(2) DEFAULT NULL,
  `BANK_ACCOUNT` varchar(30) DEFAULT NULL,
  `ACCOUNT_EXPIRE_DATE` varchar(8) DEFAULT NULL,
  `PAY_METHOD` bigint(2) DEFAULT NULL,
  `BUSI_CODE` bigint(12) DEFAULT NULL,
  `ID_CARD` varchar(20) DEFAULT NULL,
  `CREDIT` varchar(60) DEFAULT NULL,
  `PF_SEQ` varchar(30) DEFAULT NULL,
  `ACTIONDATE` varchar(10) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cmx_acct_bank_rel_h_2017` */

DROP TABLE IF EXISTS `cmx_acct_bank_rel_h_2017`;

CREATE TABLE `cmx_acct_bank_rel_h_2017` (
  `H_ID` bigint(12) NOT NULL,
  `REL_ID` bigint(12) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `BANK_CODE` varchar(50) DEFAULT NULL,
  `BANK_ACCOUNT_TYPE` bigint(2) DEFAULT NULL,
  `BANK_ACCOUNT` varchar(30) DEFAULT NULL,
  `ACCOUNT_EXPIRE_DATE` varchar(8) DEFAULT NULL,
  `PAY_METHOD` bigint(2) DEFAULT NULL,
  `BUSI_CODE` bigint(12) DEFAULT NULL,
  `ID_CARD` varchar(20) DEFAULT NULL,
  `CREDIT` varchar(60) DEFAULT NULL,
  `PF_SEQ` varchar(30) DEFAULT NULL,
  `ACTIONDATE` varchar(10) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cmx_indiv_customer` */

DROP TABLE IF EXISTS `cmx_indiv_customer`;

CREATE TABLE `cmx_indiv_customer` (
  `CUST_ID` bigint(14) NOT NULL COMMENT '客户编号\n\n所有类型客户的客户编号是唯一的。',
  `DIRECT_MARKETING_PROTECTION` bigint(2) DEFAULT NULL COMMENT '营销信息免打扰，1：免打扰，0：不免打扰',
  `PROTECT_EFF_DATE` date DEFAULT NULL COMMENT '免打扰开始时间',
  `PROTECT_EXPIRE_DATE` date DEFAULT NULL COMMENT '免打扰失效时间',
  `MANUAL_COMMERCIAL_PROTECTION` bigint(2) DEFAULT NULL COMMENT '此字段如果有值，则优先级高于营销免打扰。营销信息免打扰，1：不免打扰，0：免打扰',
  `MANUAL_PROTECT_EFFECTIVE_DATE` date DEFAULT NULL COMMENT '免打扰开始时间',
  `MANUAL_PROTECT_EXPIRE_DATE` date DEFAULT NULL COMMENT '免打扰失效时间',
  `CONTACT_PROTECTION` bigint(2) DEFAULT NULL COMMENT '1：免打扰，0：不免打扰',
  `PNR` bigint(14) DEFAULT NULL COMMENT 'PNR for the person if the customer also has a PNR subscription for that person,\n从CPR查询客户的信息中获得.',
  `PERSON_STATUS` varchar(2) DEFAULT NULL COMMENT '个人状态\n                01 = Active, residence in Danish CPR—居住在丹麦\n	03 = Active, special street code (9900 - 9999) in Danish CPR—特殊街道号码在丹麦\n	05 = Active, residence in Greenlandic CPR—居住在格陵兰\n	07 = Active, special street code (9900 - 9999) in Greenlandic CPR—特殊街道号码在格陵兰\n	20 = Inactive, no residence in Danish/Greenlandic CPR, but allocated PNR for taxation reasons (municipality codes 0010, 0011, 0012 and 0019)—不居住在丹麦但由于税务原因分配了PNR\n	30 = Inactive, PNR annulled—PNR废止\n	50 = Inactive, PNR annulled for double number—双数的PNR废止\n	60 = Inactive, changed PNR from change of DOB and gender—修改性别和出生日期而修改了PNR\n	70 = Inactive, disappeared—消失\n	80 = Inactive, emigrated—移民\n	90 = Inactive, deceased—死者',
  `STATUS_EFF_DATE` date DEFAULT NULL COMMENT '状态生效时间',
  `CUR_RESIDENCE_STR_DATE` date DEFAULT NULL COMMENT '当前居住地开始时间',
  `ATTORNEYS` varchar(34) DEFAULT NULL COMMENT '代办人名称',
  `BAD_PAYER_FLAG` bigint(2) DEFAULT NULL COMMENT '不良付款人标志',
  `GUARDIAN_NAME` varchar(34) DEFAULT NULL COMMENT '监护人名称',
  `FORMER_NAME` varchar(100) DEFAULT NULL COMMENT '曾用名',
  `MOTHER_NAME` varchar(100) DEFAULT NULL COMMENT '母亲名称',
  `CO_NAME` varchar(200) DEFAULT NULL COMMENT 'person who owned this house例如我住宾馆，这个C/O就是宾馆名字，我住别人的房子，C/O就是这个房子的主人名字',
  `DUPLICATE_CPR_ID` varchar(200) DEFAULT NULL,
  `AKS_STATUS` varchar(10) DEFAULT NULL COMMENT '1：Subscribed successfully.2：Unsubscribed successfully.3：Pending 4：Failed',
  `AKS_REGISTRATION_DATE` date DEFAULT NULL,
  `UPDATE_FLAG` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '偏好坐席工号',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '偏好技术组',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '偏好部门',
  `EXT4` varchar(100) DEFAULT NULL COMMENT '是否可以携号转网:1.是,0.否',
  `EXT5` varchar(100) DEFAULT NULL COMMENT '账单显示名称',
  `EXT6` varchar(100) DEFAULT NULL COMMENT '是否允许收集LBS信息标识:1.是,0.否',
  `EXT7` varchar(100) DEFAULT NULL COMMENT '是否允许分析LBS信息标识:1.是,0.否',
  `EXT8` varchar(100) DEFAULT NULL COMMENT '是否允许收集DPI信息标识:1.是,0.否',
  `EXT9` varchar(100) DEFAULT NULL COMMENT '是否允许收集客户信息标识:1.是,0.否',
  `EXT10` varchar(100) DEFAULT NULL,
  `EXT11` varchar(100) DEFAULT NULL,
  `EXT12` varchar(100) DEFAULT NULL COMMENT '缴费日修改原因',
  `EXT13` varchar(100) DEFAULT NULL,
  `EXT14` varchar(1000) DEFAULT NULL,
  `EXT15` varchar(1000) DEFAULT NULL,
  `EXT16` varchar(1000) DEFAULT NULL,
  `EXT17` varchar(1000) DEFAULT NULL,
  `EXT18` varchar(1000) DEFAULT NULL,
  `EXT19` bigint(12) DEFAULT NULL,
  `EXT20` bigint(12) DEFAULT NULL,
  `EXT21` bigint(12) DEFAULT NULL COMMENT '缴费日，及出账后多少天进行缴费',
  `EXT22` bigint(12) DEFAULT NULL COMMENT '是否免收托收费或者纸质账单寄送费，0：否，1：是',
  `EXT23` bigint(12) DEFAULT NULL,
  `EXT24` bigint(12) DEFAULT NULL,
  `EXT25` bigint(12) DEFAULT NULL,
  `EXT26` bigint(12) DEFAULT NULL,
  `EXT27` date DEFAULT NULL COMMENT '客户入网日期',
  `EXT28` date DEFAULT NULL COMMENT '客户离网日期',
  `EXT29` date DEFAULT NULL,
  `EXT30` date DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  PRIMARY KEY (`CUST_ID`),
  KEY `IDX_PNR` (`PNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人客户扩展信息。\n\n\n分表方式：租户分表\n分区方式：不分区\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cmx_indiv_customer_21` */

DROP TABLE IF EXISTS `cmx_indiv_customer_21`;

CREATE TABLE `cmx_indiv_customer_21` (
  `CUST_ID` bigint(14) NOT NULL,
  `DIRECT_MARKETING_PROTECTION` bigint(2) DEFAULT NULL,
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `MANUAL_COMMERCIAL_PROTECTION` bigint(2) DEFAULT NULL COMMENT '此字段如果有值，则优先级高于营销免打扰。营销信息免打扰，1：不免打扰，0：免打扰',
  `MANUAL_PROTECT_EFFECTIVE_DATE` date DEFAULT NULL,
  `MANUAL_PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `CONTACT_PROTECTION` bigint(2) DEFAULT NULL,
  `PNR` bigint(14) DEFAULT NULL,
  `PERSON_STATUS` varchar(2) DEFAULT NULL,
  `STATUS_EFF_DATE` date DEFAULT NULL,
  `CUR_RESIDENCE_STR_DATE` date DEFAULT NULL,
  `ATTORNEYS` varchar(34) DEFAULT NULL,
  `BAD_PAYER_FLAG` bigint(2) DEFAULT NULL,
  `GUARDIAN_NAME` varchar(34) DEFAULT NULL,
  `FORMER_NAME` varchar(100) DEFAULT NULL,
  `MOTHER_NAME` varchar(100) DEFAULT NULL,
  `CO_NAME` varchar(200) DEFAULT NULL,
  `DUPLICATE_CPR_ID` varchar(200) DEFAULT NULL,
  `AKS_STATUS` varchar(10) DEFAULT NULL COMMENT '1：Subscribed successfully.2：Unsubscribed successfully.3：Pending 4：Failed',
  `AKS_REGISTRATION_DATE` date DEFAULT NULL,
  `UPDATE_FLAG` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL COMMENT '偏好坐席工号',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '偏好技术组',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '偏好部门',
  `EXT4` varchar(100) DEFAULT NULL COMMENT '是否可以携号转网:1.是,0.否',
  `EXT5` varchar(100) DEFAULT NULL COMMENT '账单显示名称',
  `EXT6` varchar(100) DEFAULT NULL COMMENT '是否允许收集LBS信息标识:1.是,0.否',
  `EXT7` varchar(100) DEFAULT NULL COMMENT '是否允许分析LBS信息标识:1.是,0.否',
  `EXT8` varchar(100) DEFAULT NULL COMMENT '是否允许收集DPI信息标识:1.是,0.否',
  `EXT9` varchar(100) DEFAULT NULL COMMENT '是否允许收集客户信息标识:1.是,0.否',
  `EXT10` varchar(100) DEFAULT NULL,
  `EXT11` varchar(100) DEFAULT NULL,
  `EXT12` varchar(100) DEFAULT NULL COMMENT '缴费日修改原因',
  `EXT13` varchar(100) DEFAULT NULL,
  `EXT14` varchar(1000) DEFAULT NULL,
  `EXT15` varchar(1000) DEFAULT NULL,
  `EXT16` varchar(1000) DEFAULT NULL,
  `EXT17` varchar(1000) DEFAULT NULL,
  `EXT18` varchar(1000) DEFAULT NULL,
  `EXT19` bigint(12) DEFAULT NULL,
  `EXT20` bigint(12) DEFAULT NULL,
  `EXT21` bigint(12) DEFAULT NULL COMMENT '缴费日，及出账后多少天进行缴费',
  `EXT22` bigint(12) DEFAULT NULL COMMENT '是否免收托收费或者纸质账单寄送费，0：否，1：是',
  `EXT23` bigint(12) DEFAULT NULL,
  `EXT24` bigint(12) DEFAULT NULL,
  `EXT25` bigint(12) DEFAULT NULL,
  `EXT26` bigint(12) DEFAULT NULL,
  `EXT27` date DEFAULT NULL,
  `EXT28` date DEFAULT NULL,
  `EXT29` date DEFAULT NULL,
  `EXT30` date DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`),
  KEY `IDX_PNR_21` (`PNR`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cmx_indiv_customer_91` */

DROP TABLE IF EXISTS `cmx_indiv_customer_91`;

CREATE TABLE `cmx_indiv_customer_91` (
  `CUST_ID` bigint(14) NOT NULL,
  `DIRECT_MARKETING_PROTECTION` bigint(2) DEFAULT NULL,
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `MANUAL_COMMERCIAL_PROTECTION` bigint(2) DEFAULT NULL COMMENT '此字段如果有值，则优先级高于营销免打扰。营销信息免打扰，1：不免打扰，0：免打扰',
  `MANUAL_PROTECT_EFFECTIVE_DATE` date DEFAULT NULL,
  `MANUAL_PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `CONTACT_PROTECTION` bigint(2) DEFAULT NULL,
  `PNR` bigint(14) DEFAULT NULL,
  `PERSON_STATUS` varchar(2) DEFAULT NULL,
  `STATUS_EFF_DATE` date DEFAULT NULL,
  `CUR_RESIDENCE_STR_DATE` date DEFAULT NULL,
  `ATTORNEYS` varchar(34) DEFAULT NULL,
  `BAD_PAYER_FLAG` bigint(2) DEFAULT NULL,
  `GUARDIAN_NAME` varchar(34) DEFAULT NULL,
  `FORMER_NAME` varchar(100) DEFAULT NULL,
  `MOTHER_NAME` varchar(100) DEFAULT NULL,
  `CO_NAME` varchar(200) DEFAULT NULL,
  `DUPLICATE_CPR_ID` varchar(200) DEFAULT NULL,
  `AKS_STATUS` varchar(10) DEFAULT NULL COMMENT '1：Subscribed successfully.2：Unsubscribed successfully.3：Pending 4：Failed',
  `AKS_REGISTRATION_DATE` date DEFAULT NULL,
  `UPDATE_FLAG` bigint(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL COMMENT '偏好坐席工号',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '偏好技术组',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '偏好部门',
  `EXT4` varchar(100) DEFAULT NULL COMMENT '是否可以携号转网:1.是,0.否',
  `EXT5` varchar(100) DEFAULT NULL COMMENT '账单显示名称',
  `EXT6` varchar(100) DEFAULT NULL COMMENT '是否允许收集LBS信息标识:1.是,0.否',
  `EXT7` varchar(100) DEFAULT NULL COMMENT '是否允许分析LBS信息标识:1.是,0.否',
  `EXT8` varchar(100) DEFAULT NULL COMMENT '是否允许收集DPI信息标识:1.是,0.否',
  `EXT9` varchar(100) DEFAULT NULL COMMENT '是否允许收集客户信息标识:1.是,0.否',
  `EXT10` varchar(100) DEFAULT NULL,
  `EXT11` varchar(100) DEFAULT NULL,
  `EXT12` varchar(100) DEFAULT NULL COMMENT '缴费日修改原因',
  `EXT13` varchar(100) DEFAULT NULL,
  `EXT14` varchar(1000) DEFAULT NULL,
  `EXT15` varchar(1000) DEFAULT NULL,
  `EXT16` varchar(1000) DEFAULT NULL,
  `EXT17` varchar(1000) DEFAULT NULL,
  `EXT18` varchar(1000) DEFAULT NULL,
  `EXT19` bigint(12) DEFAULT NULL,
  `EXT20` bigint(12) DEFAULT NULL,
  `EXT21` bigint(12) DEFAULT NULL COMMENT '缴费日，及出账后多少天进行缴费',
  `EXT22` bigint(12) DEFAULT NULL COMMENT '是否免收托收费或者纸质账单寄送费，0：否，1：是',
  `EXT23` bigint(12) DEFAULT NULL,
  `EXT24` bigint(12) DEFAULT NULL,
  `EXT25` bigint(12) DEFAULT NULL,
  `EXT26` bigint(12) DEFAULT NULL,
  `EXT27` date DEFAULT NULL,
  `EXT28` date DEFAULT NULL,
  `EXT29` date DEFAULT NULL,
  `EXT30` date DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`),
  KEY `IDX_PNR_91` (`PNR`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cmx_indiv_customer_h` */

DROP TABLE IF EXISTS `cmx_indiv_customer_h`;

CREATE TABLE `cmx_indiv_customer_h` (
  `H_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL COMMENT '客户编号\n\n所有类型客户的客户编号是唯一的。',
  `DIRECT_MARKETING_PROTECTION` bigint(2) DEFAULT NULL COMMENT '营销信息免打扰，1：免打扰，0：不免打扰',
  `PROTECT_EFF_DATE` date DEFAULT NULL COMMENT '免打扰开始时间',
  `PROTECT_EXPIRE_DATE` date DEFAULT NULL COMMENT '免打扰失效时间',
  `MANUAL_COMMERCIAL_PROTECTION` bigint(2) DEFAULT NULL COMMENT '此字段如果有值，则优先级高于营销免打扰。',
  `MANUAL_PROTECT_EFFECTIVE_DATE` date DEFAULT NULL COMMENT '免打扰开始时间',
  `MANUAL_PROTECT_EXPIRE_DATE` date DEFAULT NULL COMMENT '免打扰失效时间',
  `CONTACT_PROTECTION` bigint(2) DEFAULT NULL COMMENT '1：免打扰，0：不免打扰',
  `PNR` bigint(14) DEFAULT NULL COMMENT 'PNR for the person if the customer also has a PNR subscription for that person,\n从CPR查询客户的信息中获得.',
  `PERSON_STATUS` varchar(2) DEFAULT NULL COMMENT '个人状态\n                01 = Active, residence in Danish CPR—居住在丹麦\n	03 = Active, special street code (9900 - 9999) in Danish CPR—特殊街道号码在丹麦\n	05 = Active, residence in Greenlandic CPR—居住在格陵兰\n	07 = Active, special street code (9900 - 9999) in Greenlandic CPR—特殊街道号码在格陵兰\n	20 = Inactive, no residence in Danish/Greenlandic CPR, but allocated PNR for taxation reasons (municipality codes 0010, 0011, 0012 and 0019)—不居住在丹麦但由于税务原因分配了PNR\n	30 = Inactive, PNR annulled—PNR废止\n	50 = Inactive, PNR annulled for double number—双数的PNR废止\n	60 = Inactive, changed PNR from change of DOB and gender—修改性别和出生日期而修改了PNR\n	70 = Inactive, disappeared—消失\n	80 = Inactive, emigrated—移民\n	90 = Inactive, deceased—死者',
  `STATUS_EFF_DATE` date DEFAULT NULL COMMENT '状态生效时间',
  `CUR_RESIDENCE_STR_DATE` date DEFAULT NULL COMMENT '当前居住地开始时间',
  `ATTORNEYS` varchar(34) DEFAULT NULL COMMENT '代办人名称',
  `BAD_PAYER_FLAG` bigint(2) DEFAULT NULL COMMENT '不良付款人标志',
  `GUARDIAN_NAME` varchar(34) DEFAULT NULL COMMENT '监护人名称',
  `FORMER_NAME` varchar(100) DEFAULT NULL COMMENT '曾用名',
  `MOTHER_NAME` varchar(100) DEFAULT NULL COMMENT '母亲名称',
  `CO_NAME` varchar(200) DEFAULT NULL COMMENT 'person who owned this house例如我住宾馆，这个C/O就是宾馆名字，我住别人的房子，C/O就是这个房子的主人名字',
  `STATE` varchar(3) DEFAULT NULL COMMENT '记录状态\n\nU:有效 E:无效',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  `EXT7` varchar(100) DEFAULT NULL,
  `EXT8` varchar(100) DEFAULT NULL,
  `EXT9` varchar(100) DEFAULT NULL,
  `EXT10` varchar(100) DEFAULT NULL,
  `EXT11` varchar(100) DEFAULT NULL,
  `EXT12` varchar(100) DEFAULT NULL,
  `EXT13` varchar(100) DEFAULT NULL,
  `EXT14` varchar(1000) DEFAULT NULL,
  `EXT15` varchar(1000) DEFAULT NULL,
  `EXT16` varchar(1000) DEFAULT NULL,
  `EXT17` varchar(1000) DEFAULT NULL,
  `EXT18` varchar(1000) DEFAULT NULL,
  `EXT19` bigint(12) DEFAULT NULL,
  `EXT20` bigint(12) DEFAULT NULL,
  `EXT21` bigint(12) DEFAULT NULL,
  `EXT22` bigint(12) DEFAULT NULL,
  `EXT23` bigint(12) DEFAULT NULL,
  `EXT24` bigint(12) DEFAULT NULL,
  `EXT25` bigint(12) DEFAULT NULL,
  `EXT26` bigint(12) DEFAULT NULL,
  `EXT27` date DEFAULT NULL,
  `EXT28` date DEFAULT NULL,
  `EXT29` date DEFAULT NULL,
  `EXT30` date DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `DUPLICATE_CPR_ID` varchar(200) DEFAULT NULL,
  `AKS_STATUS` varchar(10) DEFAULT NULL,
  `AKS_REGISTRATION_DATE` date DEFAULT NULL,
  `UPDATE_FLAG` bigint(2) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `IDX_PNR` (`PNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人客户扩展信息。\n\n\n分表方式：租户分表\n分区方式：不分区\n敏感信息安全等级：高\n业务操作安全等级：高';

/*Table structure for table `cmx_indiv_customer_h_2015` */

DROP TABLE IF EXISTS `cmx_indiv_customer_h_2015`;

CREATE TABLE `cmx_indiv_customer_h_2015` (
  `H_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `DIRECT_MARKETING_PROTECTION` bigint(2) DEFAULT NULL,
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `MANUAL_COMMERCIAL_PROTECTION` bigint(2) DEFAULT NULL,
  `MANUAL_PROTECT_EFFECTIVE_DATE` date DEFAULT NULL,
  `MANUAL_PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `CONTACT_PROTECTION` bigint(2) DEFAULT NULL,
  `PNR` bigint(14) DEFAULT NULL,
  `PERSON_STATUS` varchar(2) DEFAULT NULL,
  `STATUS_EFF_DATE` date DEFAULT NULL,
  `CUR_RESIDENCE_STR_DATE` date DEFAULT NULL,
  `ATTORNEYS` varchar(34) DEFAULT NULL,
  `BAD_PAYER_FLAG` bigint(2) DEFAULT NULL,
  `GUARDIAN_NAME` varchar(34) DEFAULT NULL,
  `FORMER_NAME` varchar(100) DEFAULT NULL,
  `MOTHER_NAME` varchar(100) DEFAULT NULL,
  `CO_NAME` varchar(200) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  `EXT7` varchar(100) DEFAULT NULL,
  `EXT8` varchar(100) DEFAULT NULL,
  `EXT9` varchar(100) DEFAULT NULL,
  `EXT10` varchar(100) DEFAULT NULL,
  `EXT11` varchar(100) DEFAULT NULL,
  `EXT12` varchar(100) DEFAULT NULL,
  `EXT13` varchar(100) DEFAULT NULL,
  `EXT14` varchar(1000) DEFAULT NULL,
  `EXT15` varchar(1000) DEFAULT NULL,
  `EXT16` varchar(1000) DEFAULT NULL,
  `EXT17` varchar(1000) DEFAULT NULL,
  `EXT18` varchar(1000) DEFAULT NULL,
  `EXT19` bigint(12) DEFAULT NULL,
  `EXT20` bigint(12) DEFAULT NULL,
  `EXT21` bigint(12) DEFAULT NULL,
  `EXT22` bigint(12) DEFAULT NULL,
  `EXT23` bigint(12) DEFAULT NULL,
  `EXT24` bigint(12) DEFAULT NULL,
  `EXT25` bigint(12) DEFAULT NULL,
  `EXT26` bigint(12) DEFAULT NULL,
  `EXT27` date DEFAULT NULL,
  `EXT28` date DEFAULT NULL,
  `EXT29` date DEFAULT NULL,
  `EXT30` date DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DUPLICATE_CPR_ID` varchar(200) DEFAULT NULL,
  `AKS_STATUS` varchar(10) DEFAULT NULL,
  `AKS_REGISTRATION_DATE` date DEFAULT NULL,
  `UPDATE_FLAG` bigint(2) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `IDX_PNR_2015` (`PNR`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cmx_indiv_customer_h_2016` */

DROP TABLE IF EXISTS `cmx_indiv_customer_h_2016`;

CREATE TABLE `cmx_indiv_customer_h_2016` (
  `H_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `DIRECT_MARKETING_PROTECTION` bigint(2) DEFAULT NULL,
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `MANUAL_COMMERCIAL_PROTECTION` bigint(2) DEFAULT NULL,
  `MANUAL_PROTECT_EFFECTIVE_DATE` date DEFAULT NULL,
  `MANUAL_PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `CONTACT_PROTECTION` bigint(2) DEFAULT NULL,
  `PNR` bigint(14) DEFAULT NULL,
  `PERSON_STATUS` varchar(2) DEFAULT NULL,
  `STATUS_EFF_DATE` date DEFAULT NULL,
  `CUR_RESIDENCE_STR_DATE` date DEFAULT NULL,
  `ATTORNEYS` varchar(34) DEFAULT NULL,
  `BAD_PAYER_FLAG` bigint(2) DEFAULT NULL,
  `GUARDIAN_NAME` varchar(34) DEFAULT NULL,
  `FORMER_NAME` varchar(100) DEFAULT NULL,
  `MOTHER_NAME` varchar(100) DEFAULT NULL,
  `CO_NAME` varchar(200) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  `EXT7` varchar(100) DEFAULT NULL,
  `EXT8` varchar(100) DEFAULT NULL,
  `EXT9` varchar(100) DEFAULT NULL,
  `EXT10` varchar(100) DEFAULT NULL,
  `EXT11` varchar(100) DEFAULT NULL,
  `EXT12` varchar(100) DEFAULT NULL,
  `EXT13` varchar(100) DEFAULT NULL,
  `EXT14` varchar(1000) DEFAULT NULL,
  `EXT15` varchar(1000) DEFAULT NULL,
  `EXT16` varchar(1000) DEFAULT NULL,
  `EXT17` varchar(1000) DEFAULT NULL,
  `EXT18` varchar(1000) DEFAULT NULL,
  `EXT19` bigint(12) DEFAULT NULL,
  `EXT20` bigint(12) DEFAULT NULL,
  `EXT21` bigint(12) DEFAULT NULL,
  `EXT22` bigint(12) DEFAULT NULL,
  `EXT23` bigint(12) DEFAULT NULL,
  `EXT24` bigint(12) DEFAULT NULL,
  `EXT25` bigint(12) DEFAULT NULL,
  `EXT26` bigint(12) DEFAULT NULL,
  `EXT27` date DEFAULT NULL,
  `EXT28` date DEFAULT NULL,
  `EXT29` date DEFAULT NULL,
  `EXT30` date DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DUPLICATE_CPR_ID` varchar(200) DEFAULT NULL,
  `AKS_STATUS` varchar(10) DEFAULT NULL,
  `AKS_REGISTRATION_DATE` date DEFAULT NULL,
  `UPDATE_FLAG` bigint(2) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `IDX_PNR_2014` (`PNR`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cmx_indiv_customer_h_2017` */

DROP TABLE IF EXISTS `cmx_indiv_customer_h_2017`;

CREATE TABLE `cmx_indiv_customer_h_2017` (
  `H_ID` bigint(12) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `DIRECT_MARKETING_PROTECTION` bigint(2) DEFAULT NULL,
  `PROTECT_EFF_DATE` date DEFAULT NULL,
  `PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `MANUAL_COMMERCIAL_PROTECTION` bigint(2) DEFAULT NULL,
  `MANUAL_PROTECT_EFFECTIVE_DATE` date DEFAULT NULL,
  `MANUAL_PROTECT_EXPIRE_DATE` date DEFAULT NULL,
  `CONTACT_PROTECTION` bigint(2) DEFAULT NULL,
  `PNR` bigint(14) DEFAULT NULL,
  `PERSON_STATUS` varchar(2) DEFAULT NULL,
  `STATUS_EFF_DATE` date DEFAULT NULL,
  `CUR_RESIDENCE_STR_DATE` date DEFAULT NULL,
  `ATTORNEYS` varchar(34) DEFAULT NULL,
  `BAD_PAYER_FLAG` bigint(2) DEFAULT NULL,
  `GUARDIAN_NAME` varchar(34) DEFAULT NULL,
  `FORMER_NAME` varchar(100) DEFAULT NULL,
  `MOTHER_NAME` varchar(100) DEFAULT NULL,
  `CO_NAME` varchar(200) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  `EXT5` varchar(100) DEFAULT NULL,
  `EXT6` varchar(100) DEFAULT NULL,
  `EXT7` varchar(100) DEFAULT NULL,
  `EXT8` varchar(100) DEFAULT NULL,
  `EXT9` varchar(100) DEFAULT NULL,
  `EXT10` varchar(100) DEFAULT NULL,
  `EXT11` varchar(100) DEFAULT NULL,
  `EXT12` varchar(100) DEFAULT NULL,
  `EXT13` varchar(100) DEFAULT NULL,
  `EXT14` varchar(1000) DEFAULT NULL,
  `EXT15` varchar(1000) DEFAULT NULL,
  `EXT16` varchar(1000) DEFAULT NULL,
  `EXT17` varchar(1000) DEFAULT NULL,
  `EXT18` varchar(1000) DEFAULT NULL,
  `EXT19` bigint(12) DEFAULT NULL,
  `EXT20` bigint(12) DEFAULT NULL,
  `EXT21` bigint(12) DEFAULT NULL,
  `EXT22` bigint(12) DEFAULT NULL,
  `EXT23` bigint(12) DEFAULT NULL,
  `EXT24` bigint(12) DEFAULT NULL,
  `EXT25` bigint(12) DEFAULT NULL,
  `EXT26` bigint(12) DEFAULT NULL,
  `EXT27` date DEFAULT NULL,
  `EXT28` date DEFAULT NULL,
  `EXT29` date DEFAULT NULL,
  `EXT30` date DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DUPLICATE_CPR_ID` varchar(200) DEFAULT NULL,
  `AKS_STATUS` varchar(10) DEFAULT NULL,
  `AKS_REGISTRATION_DATE` date DEFAULT NULL,
  `UPDATE_FLAG` bigint(2) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `IDX_PNR_2017` (`PNR`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `insx_user_address` */

DROP TABLE IF EXISTS `insx_user_address`;

CREATE TABLE `insx_user_address` (
  `ADDRESS_ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) NOT NULL COMMENT '�û�ID',
  `DISTRICT_ID` bigint(14) DEFAULT NULL COMMENT '������',
  `EXCHANGE_ID` varchar(30) DEFAULT NULL COMMENT '������',
  `STANDARD_ADDR_ID` bigint(14) DEFAULT NULL COMMENT '��׼��ַID',
  `STANDARD_ADDR_NAME` varchar(500) DEFAULT NULL COMMENT '��׼��ַ����',
  `DETAIL_ADDR` varchar(1000) DEFAULT NULL COMMENT '��ϸ��ַ',
  `COUNTRY` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `STREET` varchar(255) DEFAULT NULL,
  `HOUSE_NO` varchar(255) DEFAULT NULL,
  `MAIN_DOOR` varchar(255) DEFAULT NULL,
  `FLOOR` varchar(255) DEFAULT NULL,
  `DOOR_NO` varchar(255) DEFAULT NULL,
  `COUNTY` varchar(255) DEFAULT NULL,
  `ZIP_CODE` varchar(255) DEFAULT NULL,
  `MUNICIPAL_CODE` varchar(255) DEFAULT NULL,
  `CO_INFO` varchar(8000) DEFAULT NULL,
  `LINE_PRODUCT_INFO` varchar(4000) DEFAULT NULL,
  `CAPTURE_INFO` varchar(4000) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '�������ڡ�',
  `UPDATE_DATE` datetime DEFAULT NULL,
  `RELAT_CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL COMMENT '�ͻ�������',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '����Ա���',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '����Ա��֯',
  `REMARKS` varchar(1000) DEFAULT NULL,
  `PRE_ADDRESS_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`ADDRESS_ID`),
  KEY `IDX_USER_ID` (`USER_ID`),
  KEY `IDX_INSX_USER_ADDRESS_2` (`STANDARD_ADDR_ID`),
  KEY `IDX_INSX_USER_ADDRESS_1` (`CITY`,`STREET`,`HOUSE_NO`,`ZIP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='˵����������¼��װ��ַ��Ϣ\n\n�ֱ�����ֱ���������ģ�Ŀǰ�ǽ���sf�û���\n\n��ʷ���INSX_USER_ADDRESS_H(����H_ID�ֶ�)';

/*Table structure for table `insx_user_address_h` */

DROP TABLE IF EXISTS `insx_user_address_h`;

CREATE TABLE `insx_user_address_h` (
  `H_ID` bigint(14) NOT NULL COMMENT '�û�ID',
  `ADDRESS_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) NOT NULL COMMENT '�û�ID',
  `DISTRICT_ID` bigint(14) DEFAULT NULL COMMENT '������',
  `EXCHANGE_ID` varchar(30) DEFAULT NULL COMMENT '������',
  `STANDARD_ADDR_ID` bigint(14) DEFAULT NULL COMMENT '��׼��ַID',
  `STANDARD_ADDR_NAME` varchar(500) DEFAULT NULL COMMENT '��׼��ַ����',
  `DETAIL_ADDR` varchar(1000) DEFAULT NULL COMMENT '��ϸ��ַ',
  `COUNTRY` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `STREET` varchar(255) DEFAULT NULL,
  `HOUSE_NO` varchar(255) DEFAULT NULL,
  `MAIN_DOOR` varchar(255) DEFAULT NULL,
  `FLOOR` varchar(255) DEFAULT NULL,
  `COUNTY` varchar(255) DEFAULT NULL,
  `DOOR_NO` varchar(255) DEFAULT NULL,
  `ZIP_CODE` varchar(255) DEFAULT NULL,
  `MUNICIPAL_CODE` varchar(255) DEFAULT NULL,
  `CO_INFO` varchar(8000) DEFAULT NULL,
  `LINE_PRODUCT_INFO` varchar(4000) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '�������ڡ�',
  `UPDATE_DATE` datetime DEFAULT NULL,
  `RELAT_CUSTOMER_ORDER_ID` bigint(14) DEFAULT NULL COMMENT '�ͻ�������',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '����Ա���',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '����Ա��֯',
  `REMARKS` varchar(1000) DEFAULT NULL,
  `PRE_ADDRESS_ID` bigint(14) DEFAULT NULL,
  `CAPTURE_INFO` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='˵����������¼��װ��ַ��Ϣ\n\n�ֱ�����ֱ����������\n��ʷ���INSX_USER_ADDRESS_H(����H_ID�ֶ�)';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
