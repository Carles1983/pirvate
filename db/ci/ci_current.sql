/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.24-log : Database - ci
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ci` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ci`;

/*Table structure for table `ci_attach` */

DROP TABLE IF EXISTS `ci_attach`;

CREATE TABLE `ci_attach` (
  `ATTACH_ID` bigint(12) NOT NULL,
  `BUSI_SHEET_ID` varchar(128) DEFAULT NULL COMMENT '业务主键，如comentid\n            ',
  `ATTACH_TYPE` varchar(3) DEFAULT NULL COMMENT '1 客户交互comment',
  `FILE_NAME` varchar(128) DEFAULT NULL,
  `STORAGE_FILE_URI` varchar(1024) DEFAULT NULL COMMENT '存储介质上的文件唯一标示符',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `ATTACH_STATUS` varchar(3) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  `BUSI_TYPE_CODE` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`ATTACH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户交互附件';

/*Table structure for table `ci_channel` */

DROP TABLE IF EXISTS `ci_channel`;

CREATE TABLE `ci_channel` (
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `CHANNEL_CODE` varchar(32) NOT NULL COMMENT '渠道代码\n            配置时要保持与UCP的渠道代码一致',
  `CHANNEL_NAME` varchar(32) NOT NULL COMMENT '渠道名称',
  `CHANNEL_NAME_I18N` varchar(10) DEFAULT NULL COMMENT '渠道国际化编码\n            bs_i18n_resource.res_key',
  `CONTACT_TIMEOUT` bigint(8) NOT NULL COMMENT '接触超时时间，单位为分',
  `EVENT_MAX_TRY_TIMES` bigint(4) NOT NULL COMMENT '事件最大发送次数，发送失败时允许发送的最大次数',
  `EVENT_FIRE_INTERVAL` bigint(4) NOT NULL COMMENT '事件发送间隔，失败后再次发送的间隔，单位为秒',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '受理组织',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理时间',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`CHANNEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主要配置交互管理自定义的渠道';

/*Table structure for table `ci_channel_mapping` */

DROP TABLE IF EXISTS `ci_channel_mapping`;

CREATE TABLE `ci_channel_mapping` (
  `CHNL_MAPPING_ID` bigint(12) NOT NULL COMMENT '渠道映射编码',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_SYS_ID` varchar(32) NOT NULL COMMENT '源系统标识\n            \n            CODE_TYPE=CI_SRC_SYS_ID',
  `SRC_SYS_CHNL_ID` varchar(32) NOT NULL COMMENT '源系统渠道代码',
  `STATE` bigint(2) NOT NULL COMMENT '状态 \n            0：无效，1：有效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '受理组织',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理时间',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`CHNL_MAPPING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主要维护同一渠道，交互管理自定义渠道代码与其他业务源系统定义的渠道代码的映射关系。';

/*Table structure for table `ci_contact` */

DROP TABLE IF EXISTS `ci_contact`;

CREATE TABLE `ci_contact` (
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_CONTACT_ID` varchar(50) DEFAULT NULL COMMENT '源系统接触流水号',
  `CONTACT_TIME` datetime NOT NULL COMMENT '接触时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '接触结束时间',
  `DURATION_INTERVAL` bigint(8) DEFAULT NULL COMMENT '持续时间间隔，单位为秒',
  `INTERACTION_COUNT` bigint(8) DEFAULT NULL COMMENT '本次接触内的交互次数',
  `CONTACT_TYPE` bigint(2) NOT NULL COMMENT '接触类型 1：客户主动接触 2：客户被动接触\n            \n            code_type=CI_CONTACT@CONTACT_TYPE',
  `CUST_ID` bigint(12) NOT NULL COMMENT '客户编号',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务源系统\n            CODE_TYPE=CI_SRC_SYS_ID',
  `CONTACT_RESULT` bigint(2) DEFAULT NULL COMMENT '接触结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`CONTACT_ID`),
  KEY `IDX_CI_CONTACT_01` (`CHANNEL_ID`),
  KEY `IDX_CI_CONTACT_02` (`CONTACT_TIME`),
  KEY `IDX_CI_CONTACT_03` (`COMPLETE_TIME`),
  KEY `IDX_CI_CONTACT_04` (`CONTACT_TYPE`),
  KEY `IDX_CI_CONTACT_05` (`CUST_ID`),
  KEY `IDX_CI_CONTACT_06` (`OP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户接触信息按租户，年月，客户取模分表';

/*Table structure for table `ci_contact_201905` */

DROP TABLE IF EXISTS `ci_contact_201905`;

CREATE TABLE `ci_contact_201905` (
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_CONTACT_ID` varchar(50) DEFAULT NULL COMMENT '源系统接触流水号',
  `CONTACT_TIME` datetime NOT NULL COMMENT '接触时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '接触结束时间',
  `DURATION_INTERVAL` bigint(8) DEFAULT NULL COMMENT '持续时间间隔，单位为秒',
  `INTERACTION_COUNT` bigint(8) DEFAULT NULL COMMENT '本次接触内的交互次数',
  `CONTACT_TYPE` bigint(2) NOT NULL COMMENT '接触类型 1：客户主动接触 2：客户被动接触\n            \n            code_type=CI_CONTACT@CONTACT_TYPE',
  `CUST_ID` bigint(12) NOT NULL COMMENT '客户编号',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务源系统\n            CODE_TYPE=CI_SRC_SYS_ID',
  `CONTACT_RESULT` bigint(2) DEFAULT NULL COMMENT '接触结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_contact_201906` */

DROP TABLE IF EXISTS `ci_contact_201906`;

CREATE TABLE `ci_contact_201906` (
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_CONTACT_ID` varchar(50) DEFAULT NULL COMMENT '源系统接触流水号',
  `CONTACT_TIME` datetime NOT NULL COMMENT '接触时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '接触结束时间',
  `DURATION_INTERVAL` bigint(8) DEFAULT NULL COMMENT '持续时间间隔，单位为秒',
  `INTERACTION_COUNT` bigint(8) DEFAULT NULL COMMENT '本次接触内的交互次数',
  `CONTACT_TYPE` bigint(2) NOT NULL COMMENT '接触类型 1：客户主动接触 2：客户被动接触\n            \n            code_type=CI_CONTACT@CONTACT_TYPE',
  `CUST_ID` bigint(12) NOT NULL COMMENT '客户编号',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务源系统\n            CODE_TYPE=CI_SRC_SYS_ID',
  `CONTACT_RESULT` bigint(2) DEFAULT NULL COMMENT '接触结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_contact_201907` */

DROP TABLE IF EXISTS `ci_contact_201907`;

CREATE TABLE `ci_contact_201907` (
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_CONTACT_ID` varchar(50) DEFAULT NULL COMMENT '源系统接触流水号',
  `CONTACT_TIME` datetime NOT NULL COMMENT '接触时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '接触结束时间',
  `DURATION_INTERVAL` bigint(8) DEFAULT NULL COMMENT '持续时间间隔，单位为秒',
  `INTERACTION_COUNT` bigint(8) DEFAULT NULL COMMENT '本次接触内的交互次数',
  `CONTACT_TYPE` bigint(2) NOT NULL COMMENT '接触类型 1：客户主动接触 2：客户被动接触\n            \n            code_type=CI_CONTACT@CONTACT_TYPE',
  `CUST_ID` bigint(12) NOT NULL COMMENT '客户编号',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务源系统\n            CODE_TYPE=CI_SRC_SYS_ID',
  `CONTACT_RESULT` bigint(2) DEFAULT NULL COMMENT '接触结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_contact_201908` */

DROP TABLE IF EXISTS `ci_contact_201908`;

CREATE TABLE `ci_contact_201908` (
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_CONTACT_ID` varchar(50) DEFAULT NULL COMMENT '源系统接触流水号',
  `CONTACT_TIME` datetime NOT NULL COMMENT '接触时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '接触结束时间',
  `DURATION_INTERVAL` bigint(8) DEFAULT NULL COMMENT '持续时间间隔，单位为秒',
  `INTERACTION_COUNT` bigint(8) DEFAULT NULL COMMENT '本次接触内的交互次数',
  `CONTACT_TYPE` bigint(2) NOT NULL COMMENT '接触类型 1：客户主动接触 2：客户被动接触\n            \n            code_type=CI_CONTACT@CONTACT_TYPE',
  `CUST_ID` bigint(12) NOT NULL COMMENT '客户编号',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务源系统\n            CODE_TYPE=CI_SRC_SYS_ID',
  `CONTACT_RESULT` bigint(2) DEFAULT NULL COMMENT '接触结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_contact_201909` */

DROP TABLE IF EXISTS `ci_contact_201909`;

CREATE TABLE `ci_contact_201909` (
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_CONTACT_ID` varchar(50) DEFAULT NULL COMMENT '源系统接触流水号',
  `CONTACT_TIME` datetime NOT NULL COMMENT '接触时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '接触结束时间',
  `DURATION_INTERVAL` bigint(8) DEFAULT NULL COMMENT '持续时间间隔，单位为秒',
  `INTERACTION_COUNT` bigint(8) DEFAULT NULL COMMENT '本次接触内的交互次数',
  `CONTACT_TYPE` bigint(2) NOT NULL COMMENT '接触类型 1：客户主动接触 2：客户被动接触\n            \n            code_type=CI_CONTACT@CONTACT_TYPE',
  `CUST_ID` bigint(12) NOT NULL COMMENT '客户编号',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务源系统\n            CODE_TYPE=CI_SRC_SYS_ID',
  `CONTACT_RESULT` bigint(2) DEFAULT NULL COMMENT '接触结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_contact_201910` */

DROP TABLE IF EXISTS `ci_contact_201910`;

CREATE TABLE `ci_contact_201910` (
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_CONTACT_ID` varchar(50) DEFAULT NULL COMMENT '源系统接触流水号',
  `CONTACT_TIME` datetime NOT NULL COMMENT '接触时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '接触结束时间',
  `DURATION_INTERVAL` bigint(8) DEFAULT NULL COMMENT '持续时间间隔，单位为秒',
  `INTERACTION_COUNT` bigint(8) DEFAULT NULL COMMENT '本次接触内的交互次数',
  `CONTACT_TYPE` bigint(2) NOT NULL COMMENT '接触类型 1：客户主动接触 2：客户被动接触\n            \n            code_type=CI_CONTACT@CONTACT_TYPE',
  `CUST_ID` bigint(12) NOT NULL COMMENT '客户编号',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务源系统\n            CODE_TYPE=CI_SRC_SYS_ID',
  `CONTACT_RESULT` bigint(2) DEFAULT NULL COMMENT '接触结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_contact_201911` */

DROP TABLE IF EXISTS `ci_contact_201911`;

CREATE TABLE `ci_contact_201911` (
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_CONTACT_ID` varchar(50) DEFAULT NULL COMMENT '源系统接触流水号',
  `CONTACT_TIME` datetime NOT NULL COMMENT '接触时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '接触结束时间',
  `DURATION_INTERVAL` bigint(8) DEFAULT NULL COMMENT '持续时间间隔，单位为秒',
  `INTERACTION_COUNT` bigint(8) DEFAULT NULL COMMENT '本次接触内的交互次数',
  `CONTACT_TYPE` bigint(2) NOT NULL COMMENT '接触类型 1：客户主动接触 2：客户被动接触\n            \n            code_type=CI_CONTACT@CONTACT_TYPE',
  `CUST_ID` bigint(12) NOT NULL COMMENT '客户编号',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务源系统\n            CODE_TYPE=CI_SRC_SYS_ID',
  `CONTACT_RESULT` bigint(2) DEFAULT NULL COMMENT '接触结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_contact_201912` */

DROP TABLE IF EXISTS `ci_contact_201912`;

CREATE TABLE `ci_contact_201912` (
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_CONTACT_ID` varchar(50) DEFAULT NULL COMMENT '源系统接触流水号',
  `CONTACT_TIME` datetime NOT NULL COMMENT '接触时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '接触结束时间',
  `DURATION_INTERVAL` bigint(8) DEFAULT NULL COMMENT '持续时间间隔，单位为秒',
  `INTERACTION_COUNT` bigint(8) DEFAULT NULL COMMENT '本次接触内的交互次数',
  `CONTACT_TYPE` bigint(2) NOT NULL COMMENT '接触类型 1：客户主动接触 2：客户被动接触\n            \n            code_type=CI_CONTACT@CONTACT_TYPE',
  `CUST_ID` bigint(12) NOT NULL COMMENT '客户编号',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务源系统\n            CODE_TYPE=CI_SRC_SYS_ID',
  `CONTACT_RESULT` bigint(2) DEFAULT NULL COMMENT '接触结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_event_fire` */

DROP TABLE IF EXISTS `ci_event_fire`;

CREATE TABLE `ci_event_fire` (
  `EVENT_FIRE_ID` bigint(12) NOT NULL COMMENT '事件触发编号',
  `INTERACTION_TYPE_ID` bigint(12) NOT NULL COMMENT '交互类型编号\n            CI_INTERACTION_TYPE.INTERACTION_TYPE_ID',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID\n            CI_CHANNEL.CHANNEL_ID',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `SWITCH_STATE` bigint(2) NOT NULL COMMENT '开关状态，\n            0：关，1：开',
  `SWITCH_TIME` datetime NOT NULL COMMENT '开关时间',
  PRIMARY KEY (`EVENT_FIRE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交互作为事件对外发送的规则定义';

/*Table structure for table `ci_interaction` */

DROP TABLE IF EXISTS `ci_interaction`;

CREATE TABLE `ci_interaction` (
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号 ，编码规则：YYYYMMDD+7位序列值',
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_INTERACTION_ID` varchar(50) DEFAULT NULL COMMENT '源系统交互流水号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '交互结束时间',
  `INTERACTION_TYPE` bigint(12) NOT NULL COMMENT '交互类型。对应交互类型表中的交互类型编号',
  `CUST_ID` bigint(12) NOT NULL COMMENT '交互客户',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `MSISDN` varchar(20) DEFAULT NULL COMMENT '用户号码',
  `MEDIA_TYPE` varchar(20) NOT NULL COMMENT '交互媒介\n            code_type=CI_INTERACTION@MEDIA_TYPE',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务系统的代码\n            CODE_TYPE=CI_SRC_SYS_ID',
  `SRC_BUSI_TYPE` varchar(30) NOT NULL COMMENT '业务系统中业务所对应的代码',
  `INTERACTION_RESULT` bigint(2) DEFAULT NULL COMMENT '交互结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `EVENT_STATE` bigint(2) NOT NULL COMMENT '事件发送状态，-1：不需发送，0：未发送，1：发送成功，2：发送失败\n            code_type=CI_INTERACTION@EVENT_STATE',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `UP_INTERACTION_ID` bigint(15) DEFAULT NULL COMMENT '父业务交互编号',
  `SRC_INTERACTION_ENTITY_ID` varchar(50) DEFAULT NULL COMMENT '源业务交互实体编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `ACCOUNT_ID` bigint(15) DEFAULT NULL COMMENT '0.8版本需求,增加对该字段维护,并且增加查询条件',
  PRIMARY KEY (`INTERACTION_ID`),
  KEY `IDX_CI_INTERACTION_01` (`CHANNEL_ID`),
  KEY `IDX_CI_INTERACTION_02` (`INTERACTION_TYPE`),
  KEY `IDX_CI_INTERACTION_03` (`INTERACTION_TIME`),
  KEY `IDX_CI_INTERACTION_04` (`CUST_ID`),
  KEY `IDX_CI_INTERACTION_05` (`OP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户业务交互信息按租户，年月，客户取模分表';

/*Table structure for table `ci_interaction_201905` */

DROP TABLE IF EXISTS `ci_interaction_201905`;

CREATE TABLE `ci_interaction_201905` (
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号 ，编码规则：YYYYMMDD+7位序列值',
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_INTERACTION_ID` varchar(50) DEFAULT NULL COMMENT '源系统交互流水号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '交互结束时间',
  `INTERACTION_TYPE` bigint(12) NOT NULL COMMENT '交互类型。对应交互类型表中的交互类型编号',
  `CUST_ID` bigint(12) NOT NULL COMMENT '交互客户',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `MSISDN` varchar(20) DEFAULT NULL COMMENT '用户号码',
  `MEDIA_TYPE` varchar(20) NOT NULL COMMENT '交互媒介\n            code_type=CI_INTERACTION@MEDIA_TYPE',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务系统的代码\n            CODE_TYPE=CI_SRC_SYS_ID',
  `SRC_BUSI_TYPE` varchar(30) NOT NULL COMMENT '业务系统中业务所对应的代码',
  `INTERACTION_RESULT` bigint(2) DEFAULT NULL COMMENT '交互结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `EVENT_STATE` bigint(2) NOT NULL COMMENT '事件发送状态，-1：不需发送，0：未发送，1：发送成功，2：发送失败\n            code_type=CI_INTERACTION@EVENT_STATE',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `UP_INTERACTION_ID` bigint(15) DEFAULT NULL COMMENT '父业务交互编号',
  `SRC_INTERACTION_ENTITY_ID` varchar(50) DEFAULT NULL COMMENT '源业务交互实体编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `ACCOUNT_ID` bigint(15) DEFAULT NULL COMMENT '0.8版本需求,增加对该字段维护,并且增加查询条件'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_201906` */

DROP TABLE IF EXISTS `ci_interaction_201906`;

CREATE TABLE `ci_interaction_201906` (
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号 ，编码规则：YYYYMMDD+7位序列值',
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_INTERACTION_ID` varchar(50) DEFAULT NULL COMMENT '源系统交互流水号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '交互结束时间',
  `INTERACTION_TYPE` bigint(12) NOT NULL COMMENT '交互类型。对应交互类型表中的交互类型编号',
  `CUST_ID` bigint(12) NOT NULL COMMENT '交互客户',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `MSISDN` varchar(20) DEFAULT NULL COMMENT '用户号码',
  `MEDIA_TYPE` varchar(20) NOT NULL COMMENT '交互媒介\n            code_type=CI_INTERACTION@MEDIA_TYPE',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务系统的代码\n            CODE_TYPE=CI_SRC_SYS_ID',
  `SRC_BUSI_TYPE` varchar(30) NOT NULL COMMENT '业务系统中业务所对应的代码',
  `INTERACTION_RESULT` bigint(2) DEFAULT NULL COMMENT '交互结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `EVENT_STATE` bigint(2) NOT NULL COMMENT '事件发送状态，-1：不需发送，0：未发送，1：发送成功，2：发送失败\n            code_type=CI_INTERACTION@EVENT_STATE',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `UP_INTERACTION_ID` bigint(15) DEFAULT NULL COMMENT '父业务交互编号',
  `SRC_INTERACTION_ENTITY_ID` varchar(50) DEFAULT NULL COMMENT '源业务交互实体编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `ACCOUNT_ID` bigint(15) DEFAULT NULL COMMENT '0.8版本需求,增加对该字段维护,并且增加查询条件'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_201907` */

DROP TABLE IF EXISTS `ci_interaction_201907`;

CREATE TABLE `ci_interaction_201907` (
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号 ，编码规则：YYYYMMDD+7位序列值',
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_INTERACTION_ID` varchar(50) DEFAULT NULL COMMENT '源系统交互流水号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '交互结束时间',
  `INTERACTION_TYPE` bigint(12) NOT NULL COMMENT '交互类型。对应交互类型表中的交互类型编号',
  `CUST_ID` bigint(12) NOT NULL COMMENT '交互客户',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `MSISDN` varchar(20) DEFAULT NULL COMMENT '用户号码',
  `MEDIA_TYPE` varchar(20) NOT NULL COMMENT '交互媒介\n            code_type=CI_INTERACTION@MEDIA_TYPE',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务系统的代码\n            CODE_TYPE=CI_SRC_SYS_ID',
  `SRC_BUSI_TYPE` varchar(30) NOT NULL COMMENT '业务系统中业务所对应的代码',
  `INTERACTION_RESULT` bigint(2) DEFAULT NULL COMMENT '交互结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `EVENT_STATE` bigint(2) NOT NULL COMMENT '事件发送状态，-1：不需发送，0：未发送，1：发送成功，2：发送失败\n            code_type=CI_INTERACTION@EVENT_STATE',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `UP_INTERACTION_ID` bigint(15) DEFAULT NULL COMMENT '父业务交互编号',
  `SRC_INTERACTION_ENTITY_ID` varchar(50) DEFAULT NULL COMMENT '源业务交互实体编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `ACCOUNT_ID` bigint(15) DEFAULT NULL COMMENT '0.8版本需求,增加对该字段维护,并且增加查询条件'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_201908` */

DROP TABLE IF EXISTS `ci_interaction_201908`;

CREATE TABLE `ci_interaction_201908` (
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号 ，编码规则：YYYYMMDD+7位序列值',
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_INTERACTION_ID` varchar(50) DEFAULT NULL COMMENT '源系统交互流水号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '交互结束时间',
  `INTERACTION_TYPE` bigint(12) NOT NULL COMMENT '交互类型。对应交互类型表中的交互类型编号',
  `CUST_ID` bigint(12) NOT NULL COMMENT '交互客户',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `MSISDN` varchar(20) DEFAULT NULL COMMENT '用户号码',
  `MEDIA_TYPE` varchar(20) NOT NULL COMMENT '交互媒介\n            code_type=CI_INTERACTION@MEDIA_TYPE',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务系统的代码\n            CODE_TYPE=CI_SRC_SYS_ID',
  `SRC_BUSI_TYPE` varchar(30) NOT NULL COMMENT '业务系统中业务所对应的代码',
  `INTERACTION_RESULT` bigint(2) DEFAULT NULL COMMENT '交互结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `EVENT_STATE` bigint(2) NOT NULL COMMENT '事件发送状态，-1：不需发送，0：未发送，1：发送成功，2：发送失败\n            code_type=CI_INTERACTION@EVENT_STATE',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `UP_INTERACTION_ID` bigint(15) DEFAULT NULL COMMENT '父业务交互编号',
  `SRC_INTERACTION_ENTITY_ID` varchar(50) DEFAULT NULL COMMENT '源业务交互实体编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `ACCOUNT_ID` bigint(15) DEFAULT NULL COMMENT '0.8版本需求,增加对该字段维护,并且增加查询条件'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_201909` */

DROP TABLE IF EXISTS `ci_interaction_201909`;

CREATE TABLE `ci_interaction_201909` (
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号 ，编码规则：YYYYMMDD+7位序列值',
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_INTERACTION_ID` varchar(50) DEFAULT NULL COMMENT '源系统交互流水号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '交互结束时间',
  `INTERACTION_TYPE` bigint(12) NOT NULL COMMENT '交互类型。对应交互类型表中的交互类型编号',
  `CUST_ID` bigint(12) NOT NULL COMMENT '交互客户',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `MSISDN` varchar(20) DEFAULT NULL COMMENT '用户号码',
  `MEDIA_TYPE` varchar(20) NOT NULL COMMENT '交互媒介\n            code_type=CI_INTERACTION@MEDIA_TYPE',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务系统的代码\n            CODE_TYPE=CI_SRC_SYS_ID',
  `SRC_BUSI_TYPE` varchar(30) NOT NULL COMMENT '业务系统中业务所对应的代码',
  `INTERACTION_RESULT` bigint(2) DEFAULT NULL COMMENT '交互结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `EVENT_STATE` bigint(2) NOT NULL COMMENT '事件发送状态，-1：不需发送，0：未发送，1：发送成功，2：发送失败\n            code_type=CI_INTERACTION@EVENT_STATE',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `UP_INTERACTION_ID` bigint(15) DEFAULT NULL COMMENT '父业务交互编号',
  `SRC_INTERACTION_ENTITY_ID` varchar(50) DEFAULT NULL COMMENT '源业务交互实体编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `ACCOUNT_ID` bigint(15) DEFAULT NULL COMMENT '0.8版本需求,增加对该字段维护,并且增加查询条件'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_201910` */

DROP TABLE IF EXISTS `ci_interaction_201910`;

CREATE TABLE `ci_interaction_201910` (
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号 ，编码规则：YYYYMMDD+7位序列值',
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_INTERACTION_ID` varchar(50) DEFAULT NULL COMMENT '源系统交互流水号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '交互结束时间',
  `INTERACTION_TYPE` bigint(12) NOT NULL COMMENT '交互类型。对应交互类型表中的交互类型编号',
  `CUST_ID` bigint(12) NOT NULL COMMENT '交互客户',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `MSISDN` varchar(20) DEFAULT NULL COMMENT '用户号码',
  `MEDIA_TYPE` varchar(20) NOT NULL COMMENT '交互媒介\n            code_type=CI_INTERACTION@MEDIA_TYPE',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务系统的代码\n            CODE_TYPE=CI_SRC_SYS_ID',
  `SRC_BUSI_TYPE` varchar(30) NOT NULL COMMENT '业务系统中业务所对应的代码',
  `INTERACTION_RESULT` bigint(2) DEFAULT NULL COMMENT '交互结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `EVENT_STATE` bigint(2) NOT NULL COMMENT '事件发送状态，-1：不需发送，0：未发送，1：发送成功，2：发送失败\n            code_type=CI_INTERACTION@EVENT_STATE',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `UP_INTERACTION_ID` bigint(15) DEFAULT NULL COMMENT '父业务交互编号',
  `SRC_INTERACTION_ENTITY_ID` varchar(50) DEFAULT NULL COMMENT '源业务交互实体编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `ACCOUNT_ID` bigint(15) DEFAULT NULL COMMENT '0.8版本需求,增加对该字段维护,并且增加查询条件'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_201911` */

DROP TABLE IF EXISTS `ci_interaction_201911`;

CREATE TABLE `ci_interaction_201911` (
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号 ，编码规则：YYYYMMDD+7位序列值',
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_INTERACTION_ID` varchar(50) DEFAULT NULL COMMENT '源系统交互流水号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '交互结束时间',
  `INTERACTION_TYPE` bigint(12) NOT NULL COMMENT '交互类型。对应交互类型表中的交互类型编号',
  `CUST_ID` bigint(12) NOT NULL COMMENT '交互客户',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `MSISDN` varchar(20) DEFAULT NULL COMMENT '用户号码',
  `MEDIA_TYPE` varchar(20) NOT NULL COMMENT '交互媒介\n            code_type=CI_INTERACTION@MEDIA_TYPE',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务系统的代码\n            CODE_TYPE=CI_SRC_SYS_ID',
  `SRC_BUSI_TYPE` varchar(30) NOT NULL COMMENT '业务系统中业务所对应的代码',
  `INTERACTION_RESULT` bigint(2) DEFAULT NULL COMMENT '交互结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `EVENT_STATE` bigint(2) NOT NULL COMMENT '事件发送状态，-1：不需发送，0：未发送，1：发送成功，2：发送失败\n            code_type=CI_INTERACTION@EVENT_STATE',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `UP_INTERACTION_ID` bigint(15) DEFAULT NULL COMMENT '父业务交互编号',
  `SRC_INTERACTION_ENTITY_ID` varchar(50) DEFAULT NULL COMMENT '源业务交互实体编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `ACCOUNT_ID` bigint(15) DEFAULT NULL COMMENT '0.8版本需求,增加对该字段维护,并且增加查询条件'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_201912` */

DROP TABLE IF EXISTS `ci_interaction_201912`;

CREATE TABLE `ci_interaction_201912` (
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号 ，编码规则：YYYYMMDD+7位序列值',
  `CONTACT_ID` bigint(15) NOT NULL COMMENT '客户接触编号，编码规则：YYYYMMDD+7位序列值',
  `CHANNEL_ID` bigint(8) NOT NULL COMMENT '渠道ID',
  `SRC_INTERACTION_ID` varchar(50) DEFAULT NULL COMMENT '源系统交互流水号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间',
  `COMPLETE_TIME` datetime DEFAULT NULL COMMENT '交互结束时间',
  `INTERACTION_TYPE` bigint(12) NOT NULL COMMENT '交互类型。对应交互类型表中的交互类型编号',
  `CUST_ID` bigint(12) NOT NULL COMMENT '交互客户',
  `CUST_REGION_ID` varchar(10) DEFAULT NULL COMMENT '客户归属地',
  `MSISDN` varchar(20) DEFAULT NULL COMMENT '用户号码',
  `MEDIA_TYPE` varchar(20) NOT NULL COMMENT '交互媒介\n            code_type=CI_INTERACTION@MEDIA_TYPE',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务系统的代码\n            CODE_TYPE=CI_SRC_SYS_ID',
  `SRC_BUSI_TYPE` varchar(30) NOT NULL COMMENT '业务系统中业务所对应的代码',
  `INTERACTION_RESULT` bigint(2) DEFAULT NULL COMMENT '交互结果 0：成功，1：失败\n            code_type=CI_INTERACTION@INTERACTION_RESULT',
  `RESULT_DETAIL` varchar(255) DEFAULT NULL COMMENT '结果明细',
  `EVENT_STATE` bigint(2) NOT NULL COMMENT '事件发送状态，-1：不需发送，0：未发送，1：发送成功，2：发送失败\n            code_type=CI_INTERACTION@EVENT_STATE',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `UP_INTERACTION_ID` bigint(15) DEFAULT NULL COMMENT '父业务交互编号',
  `SRC_INTERACTION_ENTITY_ID` varchar(50) DEFAULT NULL COMMENT '源业务交互实体编号',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `ACCOUNT_ID` bigint(15) DEFAULT NULL COMMENT '0.8版本需求,增加对该字段维护,并且增加查询条件'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_attr` */

DROP TABLE IF EXISTS `ci_interaction_attr`;

CREATE TABLE `ci_interaction_attr` (
  `INTERACTION_ATTR_ID` bigint(12) NOT NULL COMMENT '交互属性编号',
  `INTERACTION_TYPE_ID` bigint(12) NOT NULL COMMENT '交互类型编号',
  `INTERACTION_ATTR_CODE` varchar(50) NOT NULL COMMENT '交互属性代码',
  `INTERACTION_ATTR_NAME` varchar(50) NOT NULL COMMENT '交互属性名称',
  `INTERACTION_ATTR_NAME_I18N` varchar(10) DEFAULT NULL COMMENT '属性名称国际化编码\n            \n            bs_i18n_resource.res_key',
  `INTERACTION_ATTR_DESC` varchar(50) DEFAULT NULL COMMENT '交互属性描述',
  `VALUE_TRANS_MODE` bigint(4) NOT NULL COMMENT '属性值转义方式\n            0：正常显示\n            1：模糊化\n            2：从静态枚举获取映射名称\n            3：调用ejb服务\n            4：从外围系统传过来的属性中获取\n            \n            code_type=CI_INTERACTION_ATTR@VALUE_TRANS_MODE',
  `VALUE_TRANSFER` varchar(255) DEFAULT NULL COMMENT '属性值转义器',
  `IS_DISPLAY` bigint(2) DEFAULT NULL COMMENT '是否在查询界面显示\n            0：不显示\n            1：显示\n            code_type=CI_ATTR@IS_DISPLAY',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '受理组织',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理时间',
  `STATE` bigint(2) NOT NULL COMMENT '状态， 0：无效，1：失效',
  `REMAKR` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`INTERACTION_ATTR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_attr_value` */

DROP TABLE IF EXISTS `ci_interaction_attr_value`;

CREATE TABLE `ci_interaction_attr_value` (
  `INTERACTION_ATTR_VALUE_ID` bigint(15) NOT NULL COMMENT '业务交互项属性值编号',
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号',
  `INTERACTION_ATTR_ID` bigint(12) NOT NULL COMMENT '交互属性编号',
  `INTERACTION_ATTR_CODE` varchar(50) DEFAULT NULL COMMENT '交互属性代码\n            主要冗余外系统传过来的code，这些code在客户交互没有配置',
  `INTERACTION_ATTR_ATTR_VALUE` varchar(4000) DEFAULT NULL COMMENT '业务交互属性值',
  `CUST_ID` bigint(12) DEFAULT NULL COMMENT '客户编号',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间',
  PRIMARY KEY (`INTERACTION_ATTR_VALUE_ID`),
  KEY `IDX_CI_INTERACTION_ATTR_VALUE_01` (`INTERACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务交互属性值按租户，年月，客户取模分表';

/*Table structure for table `ci_interaction_attr_value_201905` */

DROP TABLE IF EXISTS `ci_interaction_attr_value_201905`;

CREATE TABLE `ci_interaction_attr_value_201905` (
  `INTERACTION_ATTR_VALUE_ID` bigint(15) NOT NULL COMMENT '业务交互项属性值编号',
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号',
  `INTERACTION_ATTR_ID` bigint(12) NOT NULL COMMENT '交互属性编号',
  `INTERACTION_ATTR_CODE` varchar(50) DEFAULT NULL COMMENT '交互属性代码\n            主要冗余外系统传过来的code，这些code在客户交互没有配置',
  `INTERACTION_ATTR_ATTR_VALUE` varchar(4000) DEFAULT NULL COMMENT '业务交互属性值',
  `CUST_ID` bigint(12) DEFAULT NULL COMMENT '客户编号',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_attr_value_201906` */

DROP TABLE IF EXISTS `ci_interaction_attr_value_201906`;

CREATE TABLE `ci_interaction_attr_value_201906` (
  `INTERACTION_ATTR_VALUE_ID` bigint(15) NOT NULL COMMENT '业务交互项属性值编号',
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号',
  `INTERACTION_ATTR_ID` bigint(12) NOT NULL COMMENT '交互属性编号',
  `INTERACTION_ATTR_CODE` varchar(50) DEFAULT NULL COMMENT '交互属性代码\n            主要冗余外系统传过来的code，这些code在客户交互没有配置',
  `INTERACTION_ATTR_ATTR_VALUE` varchar(4000) DEFAULT NULL COMMENT '业务交互属性值',
  `CUST_ID` bigint(12) DEFAULT NULL COMMENT '客户编号',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_attr_value_201907` */

DROP TABLE IF EXISTS `ci_interaction_attr_value_201907`;

CREATE TABLE `ci_interaction_attr_value_201907` (
  `INTERACTION_ATTR_VALUE_ID` bigint(15) NOT NULL COMMENT '业务交互项属性值编号',
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号',
  `INTERACTION_ATTR_ID` bigint(12) NOT NULL COMMENT '交互属性编号',
  `INTERACTION_ATTR_CODE` varchar(50) DEFAULT NULL COMMENT '交互属性代码\n            主要冗余外系统传过来的code，这些code在客户交互没有配置',
  `INTERACTION_ATTR_ATTR_VALUE` varchar(4000) DEFAULT NULL COMMENT '业务交互属性值',
  `CUST_ID` bigint(12) DEFAULT NULL COMMENT '客户编号',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_attr_value_201908` */

DROP TABLE IF EXISTS `ci_interaction_attr_value_201908`;

CREATE TABLE `ci_interaction_attr_value_201908` (
  `INTERACTION_ATTR_VALUE_ID` bigint(15) NOT NULL COMMENT '业务交互项属性值编号',
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号',
  `INTERACTION_ATTR_ID` bigint(12) NOT NULL COMMENT '交互属性编号',
  `INTERACTION_ATTR_CODE` varchar(50) DEFAULT NULL COMMENT '交互属性代码\n            主要冗余外系统传过来的code，这些code在客户交互没有配置',
  `INTERACTION_ATTR_ATTR_VALUE` varchar(4000) DEFAULT NULL COMMENT '业务交互属性值',
  `CUST_ID` bigint(12) DEFAULT NULL COMMENT '客户编号',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_attr_value_201909` */

DROP TABLE IF EXISTS `ci_interaction_attr_value_201909`;

CREATE TABLE `ci_interaction_attr_value_201909` (
  `INTERACTION_ATTR_VALUE_ID` bigint(15) NOT NULL COMMENT '业务交互项属性值编号',
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号',
  `INTERACTION_ATTR_ID` bigint(12) NOT NULL COMMENT '交互属性编号',
  `INTERACTION_ATTR_CODE` varchar(50) DEFAULT NULL COMMENT '交互属性代码\n            主要冗余外系统传过来的code，这些code在客户交互没有配置',
  `INTERACTION_ATTR_ATTR_VALUE` varchar(4000) DEFAULT NULL COMMENT '业务交互属性值',
  `CUST_ID` bigint(12) DEFAULT NULL COMMENT '客户编号',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_attr_value_201910` */

DROP TABLE IF EXISTS `ci_interaction_attr_value_201910`;

CREATE TABLE `ci_interaction_attr_value_201910` (
  `INTERACTION_ATTR_VALUE_ID` bigint(15) NOT NULL COMMENT '业务交互项属性值编号',
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号',
  `INTERACTION_ATTR_ID` bigint(12) NOT NULL COMMENT '交互属性编号',
  `INTERACTION_ATTR_CODE` varchar(50) DEFAULT NULL COMMENT '交互属性代码\n            主要冗余外系统传过来的code，这些code在客户交互没有配置',
  `INTERACTION_ATTR_ATTR_VALUE` varchar(4000) DEFAULT NULL COMMENT '业务交互属性值',
  `CUST_ID` bigint(12) DEFAULT NULL COMMENT '客户编号',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_attr_value_201911` */

DROP TABLE IF EXISTS `ci_interaction_attr_value_201911`;

CREATE TABLE `ci_interaction_attr_value_201911` (
  `INTERACTION_ATTR_VALUE_ID` bigint(15) NOT NULL COMMENT '业务交互项属性值编号',
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号',
  `INTERACTION_ATTR_ID` bigint(12) NOT NULL COMMENT '交互属性编号',
  `INTERACTION_ATTR_CODE` varchar(50) DEFAULT NULL COMMENT '交互属性代码\n            主要冗余外系统传过来的code，这些code在客户交互没有配置',
  `INTERACTION_ATTR_ATTR_VALUE` varchar(4000) DEFAULT NULL COMMENT '业务交互属性值',
  `CUST_ID` bigint(12) DEFAULT NULL COMMENT '客户编号',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_attr_value_201912` */

DROP TABLE IF EXISTS `ci_interaction_attr_value_201912`;

CREATE TABLE `ci_interaction_attr_value_201912` (
  `INTERACTION_ATTR_VALUE_ID` bigint(15) NOT NULL COMMENT '业务交互项属性值编号',
  `INTERACTION_ID` bigint(15) NOT NULL COMMENT '业务交互编号',
  `INTERACTION_ATTR_ID` bigint(12) NOT NULL COMMENT '交互属性编号',
  `INTERACTION_ATTR_CODE` varchar(50) DEFAULT NULL COMMENT '交互属性代码\n            主要冗余外系统传过来的code，这些code在客户交互没有配置',
  `INTERACTION_ATTR_ATTR_VALUE` varchar(4000) DEFAULT NULL COMMENT '业务交互属性值',
  `CUST_ID` bigint(12) DEFAULT NULL COMMENT '客户编号',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `INTERACTION_TIME` datetime NOT NULL COMMENT '交互时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_interaction_category` */

DROP TABLE IF EXISTS `ci_interaction_category`;

CREATE TABLE `ci_interaction_category` (
  `INTERACTION_CATEGORY_ID` bigint(12) NOT NULL COMMENT '交互类型编号',
  `PARENT_CATEGORY_ID` bigint(12) NOT NULL COMMENT '上级交互类型分类编号',
  `INTERACTION_CATEGORY_NAME` varchar(50) NOT NULL COMMENT '交互类型名称',
  `INTERACTION_CATEGORY_NAME_I18N` varchar(10) DEFAULT NULL COMMENT '分类名称国际化编码\n            \n            bs_i18n_resource.res_key',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '受理组织',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理时间',
  `REMAKR` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`INTERACTION_CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对业务类型的分类，树形结构展示';

/*Table structure for table `ci_interaction_comment` */

DROP TABLE IF EXISTS `ci_interaction_comment`;

CREATE TABLE `ci_interaction_comment` (
  `COMMENT_ID` bigint(15) NOT NULL COMMENT '评论编号',
  `INTERACTION_ID` bigint(15) DEFAULT NULL COMMENT '交互编号',
  `SRC_COMMENT_ID` bigint(15) DEFAULT NULL COMMENT '源评论编号',
  `COMMENT` varchar(4096) DEFAULT NULL COMMENT '评论内容',
  `VISIBLE` bigint(2) DEFAULT NULL COMMENT 'comment对agent，客户的可见设置\n            1：agent可见\n            2：agent和客户可见\n            \n            由agent受理时填写',
  `SRC_SYS_ID` varchar(30) NOT NULL COMMENT '业务源系统',
  `CHANNEL_CODE` varchar(32) DEFAULT NULL COMMENT '通过什么进行评论',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CUST_ID` bigint(12) DEFAULT NULL COMMENT '客户编号',
  `INTERACTION_TIME` datetime DEFAULT NULL COMMENT '交互时间',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '评价时间',
  PRIMARY KEY (`COMMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录某条客户交互的评论或者注释，一条客户交互允许有多个注释或者评论可以对原有的注释或者评论添加注视或者评论';

/*Table structure for table `ci_interaction_rel` */

DROP TABLE IF EXISTS `ci_interaction_rel`;

CREATE TABLE `ci_interaction_rel` (
  `INTERACTION_REL_ID` bigint(15) NOT NULL,
  `INTERACTION_ID` bigint(15) DEFAULT NULL,
  `DOWN_INTERACTION_ID` bigint(15) DEFAULT NULL,
  `CUST_ID` bigint(12) DEFAULT NULL COMMENT '客户编号',
  `INTERACTION_TIME` datetime DEFAULT NULL COMMENT '交互时间',
  `TENANT_ID` varchar(4) NOT NULL COMMENT '租户编号',
  PRIMARY KEY (`INTERACTION_REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按租户，年月，客户取模分表，时间取父客户交互时间';

/*Table structure for table `ci_interaction_type` */

DROP TABLE IF EXISTS `ci_interaction_type`;

CREATE TABLE `ci_interaction_type` (
  `INTERACTION_TYPE_ID` bigint(12) NOT NULL COMMENT '交互类型编号',
  `INTERACTION_CATEGORY_ID` bigint(12) NOT NULL COMMENT '交互类型分类编号',
  `INTERACTION_TYPE_NAME` varchar(255) NOT NULL COMMENT '交互类型名称',
  `INTERACTION_TYPE_NAME_I18N` varchar(10) DEFAULT NULL COMMENT '类型名称国际化编码\r\n            \r\n            bs_i18n_resource.res_key',
  `UP_INTERACTION_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '依赖交互类型编号',
  `SRC_SYS_ID` varchar(32) NOT NULL COMMENT '源系统标识\r\n            \r\n            CODE_TYPE=CI_SRC_SYS_ID',
  `SRC_INTERACTION_TYPE_ID` varchar(50) NOT NULL COMMENT '源系统交互类型编号',
  `SRC_INTERACTION_TYPE_NAME` varchar(255) NOT NULL COMMENT '源系统交互类型名称',
  `SRC_INTERACTION_TYPE_DESC` varchar(255) DEFAULT NULL COMMENT '源系统交互类型描述',
  `DETAIL_PAGE_URL` varchar(255) DEFAULT NULL COMMENT '详情页面地址，形如http://127.0.0.1/msm?custId=${cust_id}&custCode=${cust_code}',
  `DETAIL_PAGE_WIDTH` bigint(4) DEFAULT NULL COMMENT '详情页面宽度',
  `DETAIL_PAGE_HEIGHT` bigint(4) DEFAULT NULL COMMENT '详情页面高度',
  `ENTITY_DATE_POS` bigint(4) DEFAULT NULL COMMENT '在业务交互实体编号中截取年月时间的起始位置，第一位以1开始\r\n            截取长度6位',
  `QUERY_PRI` bigint(12) DEFAULT NULL COMMENT '查询权限，只有相应权限的人员才能查询此类型的交互\r\n            二进制串形式存储\r\n            AGENT_PRI             0x0000000000000001l;\r\n            OWNER_PRI 	 0x0000000000000002l;\r\n            TA_PRI		 0x0000000000000004l;\r\n            USER_PRI 	 0x0000000000000008l;\r\n            PAYER_PRI 	 0x0000000000000010l;',
  `MACRO_PAGE_URL` varchar(255) DEFAULT NULL COMMENT '微详情页面地址，形如http://127.0.0.1/msm?custId=${cust_id}&custCode=${cust_code}',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '受理操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '受理组织',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理时间',
  `STATE` bigint(2) NOT NULL COMMENT '状态， 0：无效，1：有效',
  `REMAKR` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`INTERACTION_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ci_intf_billing` */

DROP TABLE IF EXISTS `ci_intf_billing`;

CREATE TABLE `ci_intf_billing` (
  `ID` bigint(12) NOT NULL COMMENT '主键',
  `SEQ_ID` bigint(15) DEFAULT NULL COMMENT '序列标识',
  `BREAK_ID` bigint(4) DEFAULT NULL COMMENT '从0开始，依次递增',
  `END_FLAG` bigint(4) DEFAULT NULL COMMENT '0：未结束 1：截断终止',
  `NOTIFY_CONTENT` varchar(4096) DEFAULT NULL COMMENT '接口报文',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `TENANT_ID` varchar(4) DEFAULT NULL COMMENT '租户标识',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户交互与BILLING侧接口表按照租户分表';

/*Table structure for table `ci_intf_billing_err` */

DROP TABLE IF EXISTS `ci_intf_billing_err`;

CREATE TABLE `ci_intf_billing_err` (
  `ID` bigint(12) NOT NULL COMMENT '主键',
  `SEQ_ID` bigint(15) DEFAULT NULL COMMENT '序列标识',
  `BREAK_ID` bigint(4) DEFAULT NULL COMMENT '从0开始，依次递增',
  `END_FLAG` bigint(4) DEFAULT NULL COMMENT '0：未结束 1：截断终止',
  `NOTIFY_CONTENT` varchar(4096) DEFAULT NULL COMMENT '接口报文',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `TENANT_ID` varchar(4) DEFAULT NULL COMMENT '租户标识',
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户交互与BILLING侧接口表按照租户分表';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
