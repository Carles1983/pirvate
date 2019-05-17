/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log : Database - product
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`product` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `product`;

/*Table structure for table `busi_inter_char_spec` */

DROP TABLE IF EXISTS `busi_inter_char_spec`;

CREATE TABLE `busi_inter_char_spec` (
  `BUSI_INTER_CHAR_SPEC_ID` decimal(12,0) NOT NULL,
  `CHAR_SPEC_ID` decimal(12,0) DEFAULT NULL COMMENT '属性ID',
  `CHAR_SPEC_NAME` varchar(32) DEFAULT NULL COMMENT '属性名称',
  `BUSI_INTER_ITEM_SPEC_ID` decimal(12,0) DEFAULT NULL,
  `PRIORITY` varchar(8) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `CONE_CODE` varchar(32) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(8) DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `RSRV_STR1` varchar(16) DEFAULT NULL,
  `RSRV_STR2` varchar(64) DEFAULT NULL,
  `RSRV_STR3` varchar(128) DEFAULT NULL,
  `RSRV_STR4` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`BUSI_INTER_CHAR_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务属性表';

/*Table structure for table `busi_inter_char_spec_value` */

DROP TABLE IF EXISTS `busi_inter_char_spec_value`;

CREATE TABLE `busi_inter_char_spec_value` (
  `VALUE_ID` decimal(12,0) NOT NULL,
  `BUSI_INTER_CHAR_SPEC_ID` decimal(12,0) DEFAULT NULL,
  `CHAR_VALUE_ID` decimal(12,0) DEFAULT NULL,
  `VALUE` varchar(64) DEFAULT NULL,
  `DISPLAY_VALUE` varchar(64) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` varchar(32) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` datetime DEFAULT NULL,
  `RSRV_STR1` varchar(16) DEFAULT NULL,
  `RSRV_STR2` varchar(64) DEFAULT NULL,
  `RSRV_STR3` varchar(128) DEFAULT NULL,
  `RSRV_STR4` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务属性值表';

/*Table structure for table `busi_notify` */

DROP TABLE IF EXISTS `busi_notify`;

CREATE TABLE `busi_notify` (
  `BUSI_NOTIFY_ID` decimal(12,0) NOT NULL,
  `PROD_OFFERING_ID` decimal(12,0) DEFAULT NULL,
  `NOTIFY_TEMPLATE_ID` decimal(12,0) DEFAULT NULL,
  `NOTIFY_CHANNEL_CODE` varchar(16) NOT NULL,
  `NOTIFY_CHANNEL_NAME` varchar(32) NOT NULL,
  `BUSI_INTER_ID` varchar(16) NOT NULL,
  `STATUS` varchar(8) NOT NULL,
  `RSRV_STR1` varchar(16) DEFAULT NULL,
  `RSRV_STR2` varchar(32) DEFAULT NULL,
  `RSRV_STR3` varchar(64) DEFAULT NULL,
  `RSRV_STR4` varchar(512) DEFAULT NULL,
  `CREATE_OP_ID` varchar(12) DEFAULT NULL,
  `CREATE_ORG_ID` varchar(12) DEFAULT NULL,
  `OP_ID` varchar(12) DEFAULT NULL,
  `ORG_ID` varchar(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`BUSI_NOTIFY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务通知表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公共参数表';

/*Table structure for table `common_param_copy` */

DROP TABLE IF EXISTS `common_param_copy`;

CREATE TABLE `common_param_copy` (
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

/*Table structure for table `customer_type` */

DROP TABLE IF EXISTS `customer_type`;

CREATE TABLE `customer_type` (
  `CUSTOMER_TYPE_ID` decimal(4,0) NOT NULL,
  `SUPPER_CUSTOMER_TYPE_ID` decimal(4,0) DEFAULT NULL,
  `CUSTOMER_TYPE_CODE` varchar(32) DEFAULT NULL,
  `CUSTOMER_TYPE_NAME` varchar(128) NOT NULL,
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
  PRIMARY KEY (`CUSTOMER_TYPE_ID`),
  KEY `CUSTOMER_TYPE_CODE` (`CUSTOMER_TYPE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户类型表';

/*Table structure for table `free_resource` */

DROP TABLE IF EXISTS `free_resource`;

CREATE TABLE `free_resource` (
  `FREE_RES_ID` decimal(12,0) NOT NULL,
  `PROD_OFFERING_ID` decimal(12,0) DEFAULT NULL,
  `FREE_RES_TYPE` varchar(32) NOT NULL,
  `FREE_RES_ITEM_ID` varchar(32) NOT NULL,
  `FREE_RES_ITEM_NAME` varchar(64) NOT NULL,
  `AMOUNT` varchar(32) NOT NULL,
  `UNIT_CODE` varchar(32) NOT NULL,
  `UNIT_NAME` varchar(32) NOT NULL,
  `STATUS` varchar(8) NOT NULL,
  `RSRV_STR1` varchar(20) DEFAULT NULL,
  `RSRV_STR2` varchar(20) DEFAULT NULL,
  `RSRV_STR3` varchar(521) DEFAULT NULL,
  `RSRV_STR4` varchar(1024) DEFAULT NULL,
  `CREATE_OP_ID` varchar(12) DEFAULT NULL,
  `CREATE_ORG_ID` varchar(12) DEFAULT NULL,
  `OP_ID` varchar(12) DEFAULT NULL,
  `ORG_ID` varchar(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`FREE_RES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='免费资源表';

/*Table structure for table `media_assoc_define` */

DROP TABLE IF EXISTS `media_assoc_define`;

CREATE TABLE `media_assoc_define` (
  `MEDIA_ASSOC_ID` decimal(12,0) NOT NULL,
  `MEDIA_ID` decimal(12,0) DEFAULT NULL,
  `MEDIA_ASSOC_INST_TYPE` varchar(8) NOT NULL COMMENT '1001 商品\r\n            1002 商品序列\r\n            2001 商品目录筛选属性\r\n            2002 SPLASH\r\n            3001 支付方式\r\n            4001 配送方式\r\n  5001 广告\r\n          ',
  `MEDIA_ASSOC_INST_ID` decimal(12,0) NOT NULL,
  `MEDIA_ASSOC_USE_TYPE` varchar(8) NOT NULL COMMENT '通过定义资源使用的上下文位置定义此类型\r\n            1001 列表页默认\r\n            2001 详情页默认',
  `MEDIA_ASSOC_URI` varchar(128) DEFAULT NULL,
  `PRIORITY` decimal(12,0) NOT NULL COMMENT '在相同语言、相同用途类型下定义展示优先级',
  `STATE` varchar(8) NOT NULL COMMENT '1 已生效\r\n            9 已注销\r\n            ',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`MEDIA_ASSOC_ID`),
  KEY `MEDIA_ID` (`MEDIA_ID`),
  KEY `MEDIA_ASSOC_INST_ID` (`MEDIA_ASSOC_INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='媒介与销售品关系表';

/*Table structure for table `media_resource` */

DROP TABLE IF EXISTS `media_resource`;

CREATE TABLE `media_resource` (
  `MEDIA_ID` decimal(12,0) NOT NULL,
  `MEDIA_NAME` varchar(128) NOT NULL,
  `ALT_NAME` varchar(128) DEFAULT NULL COMMENT '鼠标移动上面显示的名称',
  `MEDIA_TYPE` varchar(8) NOT NULL COMMENT '1 图片\n            2 音频\n            3 视频\n            4 网页\n            ',
  `MEDIA_SPEC_TYPE` varchar(8) NOT NULL COMMENT '用于定义媒体资源的不同规格，例如图片、视频大小。\n            规格值通过枚举值定义，例如 MEDIA_SPEC_PIC\n            \n            ',
  `MEDIA_URL` varchar(256) NOT NULL,
  `LANG_TYPE` varchar(8) NOT NULL COMMENT '0 英语\n            1 丹麦语\n            2 匈牙利语',
  `POSTER_IMAGE_ID` varchar(32) DEFAULT NULL,
  `POSTER_IMAGE_WIDTH` decimal(12,0) DEFAULT NULL,
  `POSTER_IMAGE_HEIGHT` decimal(12,0) DEFAULT NULL,
  `WIDTH` decimal(12,0) DEFAULT NULL,
  `HEIGHT` decimal(12,0) DEFAULT NULL,
  `TENANT_ID` varchar(8) NOT NULL,
  `STATE` varchar(8) NOT NULL COMMENT '1 待发布\n            2 已发布\n            3 已注销\n            ',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`MEDIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='媒介表';

/*Table structure for table `notify_template` */

DROP TABLE IF EXISTS `notify_template`;

CREATE TABLE `notify_template` (
  `NOTIFY_TEMPLATE_ID` decimal(12,0) NOT NULL,
  `NOTIFY_TEMPLATE` varchar(1024) NOT NULL,
  `TEMPLATE_PARAM1` varchar(52) DEFAULT NULL,
  `TEMPLATE_PARAM2` varchar(52) DEFAULT NULL,
  `TEMPLATE_PARAM3` varchar(52) DEFAULT NULL,
  `TEMPLATE_PARAM4` varchar(52) DEFAULT NULL,
  `TEMPLATE_PARAM5` varchar(52) DEFAULT NULL,
  `TEMPLATE_PARAM6` varchar(52) DEFAULT NULL,
  `STATUS` varchar(8) NOT NULL,
  `RSRV_STR1` varchar(20) DEFAULT NULL,
  `RSRV_STR2` varchar(20) DEFAULT NULL,
  `RSRV_STR3` varchar(20) DEFAULT NULL,
  `RSRV_STR4` varchar(20) DEFAULT NULL,
  `RSRV_STR5` varchar(52) DEFAULT NULL,
  `RSRV_STR6` varchar(100) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`NOTIFY_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知模板表';

/*Table structure for table `offer_exp_cfg` */

DROP TABLE IF EXISTS `offer_exp_cfg`;

CREATE TABLE `offer_exp_cfg` (
  `OFFER_EXP_CFG_ID` decimal(16,0) NOT NULL,
  `PROD_OFFERING_ID` decimal(12,0) DEFAULT NULL,
  `DEAL_TYPE` varchar(10) NOT NULL,
  `RSRV_STR1` varchar(4) DEFAULT NULL,
  `RSRV_STR2` varchar(20) DEFAULT NULL,
  `RSRV_STR3` varchar(20) DEFAULT NULL,
  `RSRV_STR4` varchar(521) DEFAULT NULL,
  `STATE` varchar(1024) NOT NULL,
  `CREATE_OP_ID` varchar(12) DEFAULT NULL,
  `CREATE_ORG_ID` varchar(12) DEFAULT NULL,
  `OP_ID` varchar(12) DEFAULT NULL,
  `ORG_ID` varchar(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(6) DEFAULT NULL,
  `TENANT_ID` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`OFFER_EXP_CFG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='描述销售品到期处理表';

/*Table structure for table `offering_cust_type_relation` */

DROP TABLE IF EXISTS `offering_cust_type_relation`;

CREATE TABLE `offering_cust_type_relation` (
  `PROD_OFFERING_ID` decimal(12,0) NOT NULL,
  `CUSTOMER_TYPE_CODE` varchar(32) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `RSRV_STR4` varchar(128) DEFAULT NULL,
  `RSRV_STR3` varchar(64) DEFAULT NULL,
  `RSRV_STR2` varchar(32) DEFAULT NULL,
  `RSRV_STR1` varchar(16) DEFAULT NULL,
  `TENANT_ID` varchar(8) DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`PROD_OFFERING_ID`,`CUSTOMER_TYPE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品和客户级别关系表';

/*Table structure for table `offering_data_temp_new` */

DROP TABLE IF EXISTS `offering_data_temp_new`;

CREATE TABLE `offering_data_temp_new` (
  `OFFER_ID` decimal(12,0) NOT NULL COMMENT 'UPC OFFER ID',
  `OFFER_NAME` varchar(128) DEFAULT NULL,
  `OFFER_TYPE` varchar(8) DEFAULT NULL COMMENT '存放UPC的OFFER类型',
  `CATALOG_NAME` varchar(64) DEFAULT NULL,
  `CATEGORY_NAME` varchar(64) DEFAULT NULL COMMENT '多个分类以逗号分隔',
  `DEFAULT_CONTRACT_B2C` decimal(12,0) DEFAULT NULL,
  `DEFAULT_CONTRACT_B2B` decimal(12,0) DEFAULT NULL,
  `SHOW_ORDER` varchar(64) DEFAULT NULL COMMENT '多个以逗号分隔',
  `DESCRIPTION_DK` varchar(256) DEFAULT NULL,
  `DESCRIPTION_EN` varchar(256) DEFAULT NULL,
  `IDENTIFY_CODE` varchar(64) DEFAULT NULL,
  `PAGE_REFERENCE` varchar(256) DEFAULT NULL COMMENT 'about页面',
  `PRODUCT_IMAGE_ID` varchar(64) DEFAULT NULL COMMENT '多个以逗号分隔',
  `BASKET_IMAGE_ID` varchar(64) DEFAULT NULL COMMENT '多个以逗号分隔',
  `SPLASH_IMAGE_ID` varchar(64) DEFAULT NULL COMMENT '多个以逗号分隔',
  `IS_DEFAULT` decimal(12,0) DEFAULT NULL,
  `SHORT_NAME_DK` varchar(128) DEFAULT NULL,
  `SHORT_NAME_EN` varchar(128) DEFAULT NULL,
  `LONG_NAME_DK` varchar(128) DEFAULT NULL,
  `LONG_NAME_EN` varchar(128) DEFAULT NULL,
  `SELLING_POINT1_DK` varchar(256) DEFAULT NULL,
  `SELLING_POINT2_DK` varchar(256) DEFAULT NULL,
  `SELLING_POINT3_DK` varchar(256) DEFAULT NULL,
  `SELLING_POINT1_EN` varchar(256) DEFAULT NULL,
  `SELLING_POINT2_EN` varchar(256) DEFAULT NULL,
  `SELLING_POINT3_EN` varchar(256) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL COMMENT '0:未处理；1：已处理；2：处理错误',
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `RSRV_STR1` varchar(128) DEFAULT NULL COMMENT '预留字段1',
  `RSRV_STR2` varchar(256) DEFAULT NULL COMMENT '预留字段2',
  `RSRV_STR3` varchar(128) DEFAULT NULL COMMENT '预留字段3',
  `RSRV_STR4` varchar(256) DEFAULT NULL COMMENT '预留字段4',
  PRIMARY KEY (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `price_cust_type_relation` */

DROP TABLE IF EXISTS `price_cust_type_relation`;

CREATE TABLE `price_cust_type_relation` (
  `PRICE_ID` decimal(12,0) NOT NULL,
  `CUSTOMER_TYPE_CODE` varchar(32) NOT NULL,
  `TENANT_ID` varchar(8) DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`PRICE_ID`,`CUSTOMER_TYPE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='价格和客户级别关系表';

/*Table structure for table `prod_about` */

DROP TABLE IF EXISTS `prod_about`;

CREATE TABLE `prod_about` (
  `PROD_ABOUT_ID` decimal(12,0) NOT NULL COMMENT 'include prod_offering_id,prod_model_id',
  `PROD_OFFERING_ID` decimal(12,0) NOT NULL,
  `MEDIA_ID` decimal(12,0) NOT NULL,
  `POSITION` varchar(8) NOT NULL,
  `TITLE` varchar(256) NOT NULL COMMENT '商品介绍标题',
  `CONTENT` varchar(1024) NOT NULL COMMENT '商品介绍内容',
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  PRIMARY KEY (`PROD_ABOUT_ID`),
  KEY `MEDIA_ID` (`MEDIA_ID`),
  KEY `PROD_OFFERING_ID` (`PROD_OFFERING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品扩展信息表';

/*Table structure for table `prod_behaviour_stat` */

DROP TABLE IF EXISTS `prod_behaviour_stat`;

CREATE TABLE `prod_behaviour_stat` (
  `PROD_BEH_STAT_ID` decimal(12,0) NOT NULL,
  `PROD_OFFERING_ID` decimal(12,0) NOT NULL,
  `STAT_SPEC_ID` decimal(8,0) NOT NULL,
  `STAT_SPEC_CODE` varchar(32) DEFAULT NULL,
  `VALUE` decimal(12,0) NOT NULL,
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
  PRIMARY KEY (`PROD_BEH_STAT_ID`),
  KEY `PROD_OFFERING_ID` (`PROD_OFFERING_ID`),
  KEY `STAT_SPEC_CODE` (`STAT_SPEC_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `prod_busi_inter_rel` */

DROP TABLE IF EXISTS `prod_busi_inter_rel`;

CREATE TABLE `prod_busi_inter_rel` (
  `id` bigint(12) NOT NULL,
  `PROD_OFFERING_ID` decimal(12,0) NOT NULL,
  `BUSI_INTER_ITEM_SPEC_ID` varchar(32) NOT NULL,
  `BUSI_INTER_ITEM_SPEC_NAME` varchar(128) DEFAULT NULL,
  `BUSI_INTER_ITEM_SPEC_TYPE` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品与业务操作关系表';

/*Table structure for table `prod_busi_rule_rel` */

DROP TABLE IF EXISTS `prod_busi_rule_rel`;

CREATE TABLE `prod_busi_rule_rel` (
  `PROD_BUSI_RULE_REL_ID` decimal(12,0) NOT NULL,
  `PROD_OFFERING_ID` decimal(12,0) DEFAULT NULL,
  `BUSI_INTER_ID` decimal(12,0) NOT NULL,
  `BUSI_RULE_ID` decimal(12,0) NOT NULL,
  `STATUS` varchar(8) NOT NULL,
  `RSRV_STR1` varchar(16) DEFAULT NULL,
  `RSRV_STR2` varchar(32) DEFAULT NULL,
  `RSRV_STR3` varchar(64) DEFAULT NULL,
  `RSRV_STR4` varchar(512) DEFAULT NULL,
  `CREATE_OP_ID` varchar(12) DEFAULT NULL,
  `CREATE_ORG_ID` varchar(12) DEFAULT NULL,
  `OP_ID` varchar(12) DEFAULT NULL,
  `ORG_ID` varchar(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`PROD_BUSI_RULE_REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品与业务规则关系表';

/*Table structure for table `prod_catalog` */

DROP TABLE IF EXISTS `prod_catalog`;

CREATE TABLE `prod_catalog` (
  `CATALOG_ID` decimal(8,0) NOT NULL,
  `CATALOG_CODE` varchar(32) DEFAULT NULL,
  `CATALOG_NAME` varchar(128) NOT NULL,
  `CATALOG_TYPE` varchar(8) DEFAULT NULL COMMENT '对应线框图第一级目录\r\n            1 Shop\r\n            2 My Telenor\r\n            3 Support\r\n            ',
  `IS_DISPLAY` decimal(2,0) NOT NULL,
  `priority` decimal(12,0) DEFAULT NULL,
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
  PRIMARY KEY (`CATALOG_ID`),
  KEY `CATALOG_CODE` (`CATALOG_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品目录表';

/*Table structure for table `prod_catalog_char_group` */

DROP TABLE IF EXISTS `prod_catalog_char_group`;

CREATE TABLE `prod_catalog_char_group` (
  `GROUP_ID` decimal(8,0) NOT NULL,
  `GROUP_NAME` varchar(128) NOT NULL,
  `CATALOG_ID` decimal(8,0) NOT NULL,
  `GROUP_TYPE` varchar(8) DEFAULT NULL COMMENT '1 客观属性\r\n            2 主观属性',
  `priority` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime NOT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`),
  KEY `FK_Relationship_2` (`CATALOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品目录属性组表';

/*Table structure for table `prod_catalog_char_group_rela` */

DROP TABLE IF EXISTS `prod_catalog_char_group_rela`;

CREATE TABLE `prod_catalog_char_group_rela` (
  `REL_ID` decimal(8,0) NOT NULL,
  `CHAR_SPEC_ID` decimal(8,0) NOT NULL,
  `GROUP_ID` decimal(8,0) NOT NULL,
  `IS_DISPLAY` decimal(2,0) NOT NULL,
  `IS_COMPARABLE` decimal(2,0) NOT NULL,
  `IS_SEARCHABLE` decimal(2,0) NOT NULL,
  `IS_MODEL_FLAG` decimal(2,0) NOT NULL,
  `priority` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime NOT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`),
  KEY `FK_Relationship_3` (`GROUP_ID`),
  KEY `FK_Relationship_9` (`CHAR_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品目录属性组与属性规格关系表';

/*Table structure for table `prod_catalog_filter_char` */

DROP TABLE IF EXISTS `prod_catalog_filter_char`;

CREATE TABLE `prod_catalog_filter_char` (
  `CTLG_FILTER_CHAR_ID` decimal(8,0) NOT NULL,
  `CHAR_SPEC_ID` decimal(8,0) NOT NULL,
  `CHAR_SPEC_NAME` varchar(128) NOT NULL,
  `CATALOG_ID` decimal(8,0) NOT NULL,
  `priority` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime NOT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`CTLG_FILTER_CHAR_ID`),
  KEY `FK_Relationship_10` (`CHAR_SPEC_ID`),
  KEY `FK_Relationship_4` (`CATALOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品目录筛选属性表';

/*Table structure for table `prod_catalog_flt_char_value` */

DROP TABLE IF EXISTS `prod_catalog_flt_char_value`;

CREATE TABLE `prod_catalog_flt_char_value` (
  `CTLG_FILTER_CHAR_VALUE_ID` decimal(8,0) NOT NULL,
  `CTLG_FILTER_CHAR_ID` decimal(8,0) NOT NULL,
  `CHAR_VALUE_ID` decimal(12,0) DEFAULT NULL,
  `SEARCH_CODE` varchar(512) NOT NULL,
  `VALUE` varchar(512) NOT NULL,
  `DISPLAY_VALUE` varchar(256) NOT NULL,
  `priority` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime NOT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`CTLG_FILTER_CHAR_VALUE_ID`),
  KEY `FK_Relationship_5` (`CTLG_FILTER_CHAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品目录筛选属性值表';

/*Table structure for table `prod_category` */

DROP TABLE IF EXISTS `prod_category`;

CREATE TABLE `prod_category` (
  `CATEGORY_ID` decimal(8,0) NOT NULL,
  `CATALOG_ID` decimal(8,0) NOT NULL,
  `CATEGORY_NAME` varchar(128) NOT NULL,
  `CATEGORY_CODE` varchar(32) DEFAULT NULL,
  `PARENT_CATEGORY_ID` decimal(8,0) DEFAULT NULL,
  `CATEGORY_GEN_TYPE` varchar(8) NOT NULL COMMENT '表达商品分类的维护模式,例如topsales 需要后台服务定时产生\r\n            1 master catagory (came from upc)\r\n            2 customlized catagory (configued by agent in ose)\r\n            11  topsales\r\n            12 onsales\r\n            13  favourite\r\n            14  new phone',
  `IS_DISPLAY` decimal(2,0) NOT NULL COMMENT '0 不显示\r\n            1 显示',
  `priority` decimal(12,0) DEFAULT NULL,
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
  PRIMARY KEY (`CATEGORY_ID`),
  KEY `CATALOG_ID` (`CATALOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品分类表';

/*Table structure for table `prod_catgy_prod_rela` */

DROP TABLE IF EXISTS `prod_catgy_prod_rela`;

CREATE TABLE `prod_catgy_prod_rela` (
  `REL_ID` decimal(12,0) NOT NULL,
  `PROD_OFFERING_ID` decimal(12,0) NOT NULL,
  `CATEGORY_ID` decimal(8,0) NOT NULL,
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
  `SHOW_ORDER` decimal(4,0) DEFAULT NULL COMMENT '显示顺序',
  PRIMARY KEY (`REL_ID`),
  KEY `FK_Relationship_12` (`CATEGORY_ID`),
  KEY `PROD_OFFERING_ID` (`PROD_OFFERING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品与分类关系表';

/*Table structure for table `prod_char_spec` */

DROP TABLE IF EXISTS `prod_char_spec`;

CREATE TABLE `prod_char_spec` (
  `PROD_CHAR_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `CHAR_SPEC_ID` decimal(8,0) NOT NULL,
  `CHAR_SPEC_CODE` varchar(32) DEFAULT NULL,
  `PROD_OFFERING_ID` decimal(12,0) DEFAULT NULL,
  `CHAR_SPEC_NAME` varchar(128) NOT NULL,
  `PRICEPLAN_CODE` varchar(32) DEFAULT NULL COMMENT '资费产编码',
  `CAN_MODIFY` decimal(2,0) NOT NULL COMMENT '某些特征是该对象的固有业务信息，不能变更；\r\n            某些特征是根据客户意愿可以个性化设置的',
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
  `PROD_SPEC_ID` decimal(12,0) DEFAULT NULL,
  `SERVICE_SPEC_ID` decimal(12,0) DEFAULT NULL,
  PRIMARY KEY (`PROD_CHAR_ID`),
  KEY `PROD_OFFERING_ID` (`PROD_OFFERING_ID`),
  KEY `CHAR_SPEC_CODE` (`CHAR_SPEC_CODE`),
  KEY `CHAR_SPEC_ID` (`CHAR_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品属性规格表';

/*Table structure for table `prod_char_spec_value` */

DROP TABLE IF EXISTS `prod_char_spec_value`;

CREATE TABLE `prod_char_spec_value` (
  `VALUE_ID` decimal(12,0) NOT NULL,
  `CHAR_VALUE_ID` decimal(12,0) NOT NULL,
  `PROD_CHAR_ID` decimal(8,0) DEFAULT NULL,
  `VALUE` varchar(256) NOT NULL,
  `DISPLAY_VALUE` varchar(256) NOT NULL,
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
  PRIMARY KEY (`VALUE_ID`),
  KEY `PROD_CHAR_ID` (`PROD_CHAR_ID`),
  KEY `CHAR_VALUE_ID` (`CHAR_VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品属性值表';

/*Table structure for table `prod_inventory` */

DROP TABLE IF EXISTS `prod_inventory`;

CREATE TABLE `prod_inventory` (
  `PROD_INVENTORY_ID` decimal(12,0) NOT NULL,
  `PROD_SPEC_ID` decimal(12,0) NOT NULL,
  `RESOURCE_CODE` varchar(32) NOT NULL,
  `STORE_CODE` varchar(32) DEFAULT NULL COMMENT 'SAP门店标识',
  `RESOURCE_UNIT` varchar(32) DEFAULT NULL,
  `QUANTITY` decimal(12,0) NOT NULL COMMENT '可用数量=数量-当日预占数量-当日实占数量',
  `DAY_RESERVE_QUANTITY` decimal(12,0) NOT NULL,
  `DAY_ALLOCATE_QUANTITY` decimal(12,0) NOT NULL,
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
  PRIMARY KEY (`PROD_INVENTORY_ID`),
  KEY `FK_Relationship_1` (`PROD_SPEC_ID`),
  KEY `STORE_RESOURCE_CODE` (`RESOURCE_CODE`,`STORE_CODE`),
  KEY `STORE_CODE` (`STORE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品库存表';

/*Table structure for table `prod_line` */

DROP TABLE IF EXISTS `prod_line`;

CREATE TABLE `prod_line` (
  `PROD_LINE_ID` decimal(12,0) NOT NULL,
  `PROD_LINE_NAME` varchar(128) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `STATUS` decimal(1,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `RSRV_STR1` varchar(16) DEFAULT NULL,
  `RSRV_STR2` varchar(32) DEFAULT NULL,
  `RSRV_STR3` varchar(64) DEFAULT NULL,
  `RSRV_STR4` varchar(512) DEFAULT NULL,
  `CREATE_OP_ID` varchar(12) DEFAULT NULL,
  `CREATE_ORG_ID` varchar(12) DEFAULT NULL,
  `OP_ID` varchar(12) DEFAULT NULL,
  `ORG_ID` varchar(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`PROD_LINE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品线表';

/*Table structure for table `prod_message` */

DROP TABLE IF EXISTS `prod_message`;

CREATE TABLE `prod_message` (
  `MESSAGE_ID` decimal(16,0) NOT NULL,
  `MESSAGE_TYPE` varchar(4) DEFAULT NULL COMMENT '消息类型',
  `TARGET_ID` varchar(32) DEFAULT NULL COMMENT '关联对象ID',
  `CONTENT` varchar(5000) DEFAULT NULL,
  `STATE` varchar(4) NOT NULL DEFAULT '0' COMMENT '0 待阅\r\n 1 已阅\r\n ',
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REMARK` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品消息管理表';

/*Table structure for table `prod_model_behaviour` */

DROP TABLE IF EXISTS `prod_model_behaviour`;

CREATE TABLE `prod_model_behaviour` (
  `PROD_MODEL_BEH_ID` decimal(20,0) NOT NULL,
  `MODEL_ID` decimal(12,0) NOT NULL,
  `PROD_MODEL_BEH_CATAG_ID` decimal(12,0) DEFAULT NULL,
  `MODEL_RATING_ID` decimal(20,0) DEFAULT NULL,
  `VALUE` varchar(256) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `DONE_DATE` date DEFAULT NULL,
  `EFFECTIVE_DATE` date DEFAULT NULL,
  `EXPIRE_DATE` date DEFAULT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`PROD_MODEL_BEH_ID`),
  KEY `FK_Relationship_2` (`PROD_MODEL_BEH_CATAG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `prod_model_behaviour_stat` */

DROP TABLE IF EXISTS `prod_model_behaviour_stat`;

CREATE TABLE `prod_model_behaviour_stat` (
  `PROD_MODEL_BEH_STAT_ID` decimal(12,0) NOT NULL,
  `PROD_MODEL_ID` decimal(12,0) DEFAULT NULL,
  `STAT_SPEC_ID` decimal(8,0) NOT NULL,
  `STAT_SPEC_CODE` varchar(32) NOT NULL COMMENT '用于内部识别统计规格项\r\n            SALE_QUANTITY 销售数量\r\n            BROWSE_TIMES 浏览次数\r\n            RATING_TIMES 评价次数\r\n            RATING_TIMES_ONE 1分次数\r\n            RATING_TIMES_TWO 2分次数\r\n            RATING_TIMES_THREE 3分次数\r\n            RATING_TIMES_FOUR 4分次数\r\n     ',
  `value` decimal(12,0) DEFAULT NULL,
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
  PRIMARY KEY (`PROD_MODEL_BEH_STAT_ID`),
  KEY `FK_Relationship_10` (`PROD_MODEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `prod_model_char_spec` */

DROP TABLE IF EXISTS `prod_model_char_spec`;

CREATE TABLE `prod_model_char_spec` (
  `PROD_MODEL_CHAR_SPEC_ID` decimal(8,0) NOT NULL,
  `CHAR_SPEC_NAME` varchar(128) NOT NULL,
  `priority` decimal(4,0) DEFAULT NULL,
  `PROD_MODEL_ID` decimal(12,0) NOT NULL,
  `CHAR_SPEC_ID` decimal(8,0) DEFAULT NULL,
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
  PRIMARY KEY (`PROD_MODEL_CHAR_SPEC_ID`),
  KEY `FK_Relationship_11` (`PROD_MODEL_ID`),
  KEY `FK_Relationship_9` (`CHAR_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `prod_model_char_spec_value` */

DROP TABLE IF EXISTS `prod_model_char_spec_value`;

CREATE TABLE `prod_model_char_spec_value` (
  `VALUE_ID` decimal(12,0) NOT NULL,
  `PROD_MODEL_CHAR_SPEC_ID` decimal(8,0) NOT NULL,
  `CHAR_VALUE_ID` decimal(12,0) DEFAULT NULL,
  `VALUE` varchar(256) NOT NULL,
  `DISPLAY_VALUE` varchar(256) NOT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  PRIMARY KEY (`VALUE_ID`),
  KEY `FK_Relationship_23` (`PROD_MODEL_CHAR_SPEC_ID`),
  KEY `FK_Relationship_6` (`CHAR_VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `prod_model_splash_rela` */

DROP TABLE IF EXISTS `prod_model_splash_rela`;

CREATE TABLE `prod_model_splash_rela` (
  `PROD_SPLASH_RELA_ID` decimal(12,0) NOT NULL,
  `SPLASH_ID` decimal(12,0) NOT NULL,
  `TARGET_INST_ID` decimal(12,0) NOT NULL COMMENT 'include prod_offering_id,prod_model_id',
  `TARGET_INST_TYPE` varchar(8) NOT NULL COMMENT '1 PROD_MODEL\r\n            2 PROD_OFFERING\r\n            ',
  `POSITION` decimal(4,0) NOT NULL,
  `BG_CSS` varchar(128) DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`PROD_SPLASH_RELA_ID`),
  KEY `SPLASH_ID` (`SPLASH_ID`),
  KEY `TARGET_INST_ID` (`TARGET_INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `prod_offering_model` */

DROP TABLE IF EXISTS `prod_offering_model`;

CREATE TABLE `prod_offering_model` (
  `PROD_MODEL_ID` decimal(12,0) NOT NULL,
  `PROD_MODEL_NAME` varchar(128) NOT NULL,
  `PROD_MODEL_CODE` varchar(32) DEFAULT NULL COMMENT '对应UPC的目录编号',
  `SEARCH_CODE` varchar(512) NOT NULL,
  `DEFAULT_PROD_OFFERING_ID` decimal(12,0) NOT NULL,
  `EFFECTIVE_SECOND` decimal(12,0) DEFAULT NULL,
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
  `RSRV_STR4` varchar(100) DEFAULT NULL,
  `RSRV_STR3` varchar(40) DEFAULT NULL,
  `RSRV_STR2` varchar(20) DEFAULT NULL,
  `RSRV_STR1` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PROD_MODEL_ID`),
  KEY `PROD_MODEL_CODE` (`PROD_MODEL_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品model表';

/*Table structure for table `prod_offering_prod_rela` */

DROP TABLE IF EXISTS `prod_offering_prod_rela`;

CREATE TABLE `prod_offering_prod_rela` (
  `RELA_ID` decimal(12,0) DEFAULT NULL,
  `PROD_OFFERING_ID` decimal(12,0) NOT NULL,
  `PROD_SPEC_ID` decimal(12,0) NOT NULL,
  `STATE` varchar(8) NOT NULL COMMENT '0 待发布\r\n 1 已发布\r\n 9 已注销\r\n ',
  `DEFAULT_NUMBER` varchar(8) DEFAULT NULL,
  `MIN_NUMBER` varchar(8) DEFAULT NULL,
  `MAX_NUMBER` varchar(8) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  PRIMARY KEY (`PROD_SPEC_ID`,`PROD_OFFERING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品与产品关系表';

/*Table structure for table `prod_offering_type_tree` */

DROP TABLE IF EXISTS `prod_offering_type_tree`;

CREATE TABLE `prod_offering_type_tree` (
  `TREE_ID` varchar(8) DEFAULT NULL,
  `TREE_NAME` varchar(50) DEFAULT NULL,
  `SUP_TREE_ID` varchar(8) DEFAULT NULL,
  `EXT1` varchar(50) DEFAULT NULL,
  `EXT2` varchar(50) DEFAULT NULL,
  `EXT3` varchar(50) DEFAULT NULL,
  `TENANT_ID` varchar(8) DEFAULT NULL COMMENT '租户ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `prod_pop_define` */

DROP TABLE IF EXISTS `prod_pop_define`;

CREATE TABLE `prod_pop_define` (
  `POP_DEFINE_ID` decimal(12,0) NOT NULL,
  `TARGET_INST_ID` decimal(12,0) NOT NULL COMMENT 'include prod_offering_id,prod_model_id',
  `TARGET_INST_TYPE` varchar(8) NOT NULL COMMENT '1 PROD_MODEL\r\n            2 PROD_OFFERING\r\n            ',
  `POP_MESSAGE` varchar(128) DEFAULT NULL,
  `DETAIL_POP_MESSAGE` varchar(512) DEFAULT NULL,
  `BOOTH_SPEC` varchar(8) NOT NULL COMMENT '1 标准大小\r\n            2 横向2个单位\r\n            3 竖向2个单位\r\n            ',
  `TENANT_ID` varchar(8) NOT NULL,
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
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`POP_DEFINE_ID`),
  KEY `TARGET_INST_ID` (`TARGET_INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `prod_price` */

DROP TABLE IF EXISTS `prod_price`;

CREATE TABLE `prod_price` (
  `PRICE_ID` decimal(12,0) NOT NULL,
  `PROD_OFFERING_ID` decimal(12,0) NOT NULL,
  `price_code` varchar(32) DEFAULT NULL COMMENT '存放UPC的价格科目标识,解释放静态表',
  `PRICE_ITEM_CODE` varchar(32) DEFAULT NULL COMMENT '存放UPC的价格科目标识,解释放静态表',
  `PRICE_TYPE` varchar(8) NOT NULL COMMENT '1 基础价格\r\n            ',
  `HAVE_TAX` varchar(8) DEFAULT NULL COMMENT '0 税费无关 1 含税 2 不含税',
  `PRICE_NAME` varchar(128) NOT NULL,
  `PRICE` decimal(12,0) DEFAULT NULL COMMENT '折扣前价格',
  `PRICE_EXPRESSION` varchar(512) DEFAULT NULL,
  `DISCOUNT` decimal(12,0) DEFAULT NULL,
  `IS_MAIN_PRICE` decimal(12,0) NOT NULL,
  `PRICE_MODE` varchar(8) NOT NULL COMMENT '1 价格值\r\n            2 价格表达式',
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `MEASURE_ID` decimal(12,0) DEFAULT NULL COMMENT '货币单位',
  `tax` decimal(12,0) DEFAULT '0',
  `duty_free` decimal(12,0) DEFAULT '0',
  `BUSI_SPEC_CODE` varchar(20) DEFAULT NULL COMMENT '一次性费用操作',
  `UPC_PRICE_ID` varchar(32) DEFAULT '0' COMMENT 'upc价格标识',
  `policy_id` varchar(12) DEFAULT '0' COMMENT '价格表达式ID',
  `CHARGE_TYPE` varchar(2) DEFAULT '0' COMMENT '费用分类',
  `OTC_ID` varchar(20) DEFAULT NULL,
  `RSRV_STR1` varchar(10) DEFAULT NULL,
  `RSRV_STR2` varchar(20) DEFAULT NULL,
  `RSRV_STR3` varchar(40) DEFAULT NULL,
  `RSRV_STR4` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRICE_ID`),
  KEY `PROD_OFFERING_ID` (`PROD_OFFERING_ID`),
  KEY `price_code` (`price_code`),
  KEY `PRICE_NAME` (`PRICE_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品价格表';

/*Table structure for table `prod_price_char_spec` */

DROP TABLE IF EXISTS `prod_price_char_spec`;

CREATE TABLE `prod_price_char_spec` (
  `PRICE_ID` decimal(12,0) NOT NULL,
  `CHAR_SPEC_CODE` varchar(32) NOT NULL,
  `VALUE_CODE` varchar(32) DEFAULT NULL,
  `VALUE` varchar(1024) NOT NULL,
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
  `REMARKS` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品价格属性表';

/*Table structure for table `prod_rating` */

DROP TABLE IF EXISTS `prod_rating`;

CREATE TABLE `prod_rating` (
  `RATING_ID` decimal(12,0) NOT NULL,
  `CUSTOMER_CODE` varchar(32) NOT NULL COMMENT '客户标志',
  `RELA_RATING_ID` decimal(12,0) DEFAULT NULL,
  `PROD_OFFERING_ID` decimal(12,0) DEFAULT NULL,
  `RATING_TITLE` varchar(256) DEFAULT NULL,
  `CONTENT` varchar(512) NOT NULL,
  `SCORE` decimal(4,0) DEFAULT NULL,
  `DISAGREE_COUNT` decimal(12,0) DEFAULT NULL,
  `AGREE_COUNT` decimal(12,0) DEFAULT NULL,
  `OSE_USER_NAME` varchar(32) DEFAULT NULL,
  `RATING_TYPE` decimal(4,0) NOT NULL COMMENT '1 商品评价\r\n 2 评价的回复',
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(8,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(8,0) DEFAULT NULL,
  `OP_ID` decimal(8,0) DEFAULT NULL,
  `ORG_ID` decimal(8,0) DEFAULT NULL,
  `DONE_CODE` decimal(8,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` decimal(8,0) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`RATING_ID`),
  KEY `PROD_OFFERING_ID` (`PROD_OFFERING_ID`),
  KEY `CUSTOMER_CODE` (`CUSTOMER_CODE`),
  KEY `RELA_RATING_ID` (`RELA_RATING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品评级表';

/*Table structure for table `prod_relation` */

DROP TABLE IF EXISTS `prod_relation`;

CREATE TABLE `prod_relation` (
  `RELA_ID` decimal(12,0) NOT NULL,
  `PROD_OFFERING_ID` decimal(12,0) NOT NULL,
  `RELA_PROD_OFFERING_ID` decimal(12,0) NOT NULL,
  `RELA_TYPE` varchar(8) NOT NULL COMMENT '1001 搭配销售 cross selling\r\n            2001 替换销售\r\n            2002 额外销售 upselling\r\n            3001 赠送\r\n            4001 商品包的包含关系\r\n            5001 依赖',
  `priority` decimal(4,0) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL COMMENT '1 已生效\r\n            9 已注销\r\n            ',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`),
  KEY `PROD_OFFERING_ID` (`PROD_OFFERING_ID`),
  KEY `RELA_PROD_OFFERING_ID` (`RELA_PROD_OFFERING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品关系表';

/*Table structure for table `prod_relation_char_spec` */

DROP TABLE IF EXISTS `prod_relation_char_spec`;

CREATE TABLE `prod_relation_char_spec` (
  `PROD_RELATION__CHAR_ID` decimal(8,0) NOT NULL,
  `CHAR_SPEC_CODE` varchar(20) NOT NULL,
  `RELA_ID` decimal(12,0) NOT NULL,
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
  PRIMARY KEY (`PROD_RELATION__CHAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品关系属性表';

/*Table structure for table `prod_selling_point_define` */

DROP TABLE IF EXISTS `prod_selling_point_define`;

CREATE TABLE `prod_selling_point_define` (
  `SELLING_POINT_ID` decimal(12,0) NOT NULL,
  `TARGET_INST_ID` decimal(12,0) NOT NULL COMMENT 'include prod_offering_id,prod_model_id',
  `TARGET_INST_TYPE` varchar(8) NOT NULL COMMENT '1 PROD_MODEL\r\n            2 PROD_OFFERING\r\n            ',
  `CONTENT` varchar(512) NOT NULL COMMENT '用于展示',
  `priority` decimal(4,0) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  PRIMARY KEY (`SELLING_POINT_ID`),
  KEY `TARGET_INST_ID` (`TARGET_INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品卖点定义表';

/*Table structure for table `prod_spec_line_rel` */

DROP TABLE IF EXISTS `prod_spec_line_rel`;

CREATE TABLE `prod_spec_line_rel` (
  `PROD_SPEC_LINE_REL_ID` decimal(12,0) NOT NULL,
  `PROD_LINE_ID` decimal(12,0) DEFAULT NULL,
  `PROD_SPEC_ID` decimal(12,0) DEFAULT NULL,
  `IS_MAIN` decimal(1,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `RSRV_STR1` varchar(16) DEFAULT NULL,
  `RSRV_STR2` varchar(32) DEFAULT NULL,
  `RSRV_STR3` varchar(64) DEFAULT NULL,
  `RSRV_STR4` varchar(512) DEFAULT NULL,
  `CREATE_OP_ID` varchar(12) DEFAULT NULL,
  `CREATE_ORG_ID` varchar(12) DEFAULT NULL,
  `OP_ID` varchar(12) DEFAULT NULL,
  `ORG_ID` varchar(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`PROD_SPEC_LINE_REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品与产品线关系表';

/*Table structure for table `prod_spec_rela` */

DROP TABLE IF EXISTS `prod_spec_rela`;

CREATE TABLE `prod_spec_rela` (
  `RELA_ID` decimal(12,0) NOT NULL,
  `PROD_SPEC_ID` decimal(12,0) NOT NULL,
  `RELA_PROD_SPEC_ID` decimal(12,0) NOT NULL,
  `RELA_TYPE` varchar(8) NOT NULL,
  `STATE` varchar(8) NOT NULL COMMENT '0 待发布\r\n 1 已发布\r\n 9 已注销\r\n ',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  PRIMARY KEY (`RELA_ID`),
  KEY `PROD_SPEC_ID` (`PROD_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品关系表';

/*Table structure for table `prod_spec_serv_rela` */

DROP TABLE IF EXISTS `prod_spec_serv_rela`;

CREATE TABLE `prod_spec_serv_rela` (
  `RELA_ID` decimal(12,0) NOT NULL,
  `PROD_SPEC_ID` decimal(12,0) NOT NULL,
  `SERVICE_SPEC_ID` decimal(12,0) NOT NULL,
  `STATE` varchar(8) NOT NULL COMMENT '0 待发布\r\n 1 已发布\r\n 9 已注销\r\n ',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  PRIMARY KEY (`RELA_ID`),
  KEY `PROD_SPEC_ID` (`PROD_SPEC_ID`),
  KEY `SERVICE_SPEC_ID` (`SERVICE_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品与服务关系表';

/*Table structure for table `prod_splash` */

DROP TABLE IF EXISTS `prod_splash`;

CREATE TABLE `prod_splash` (
  `SPLASH_ID` decimal(12,0) NOT NULL,
  `SPLASH_NAME` varchar(128) NOT NULL COMMENT '后台配置管理使用',
  `TITLE` varchar(128) NOT NULL COMMENT '前台展示用',
  `CONTENT` varchar(512) NOT NULL COMMENT '前台展示用',
  `TENANT_ID` varchar(6) NOT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`SPLASH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `product_offering` */

DROP TABLE IF EXISTS `product_offering`;

CREATE TABLE `product_offering` (
  `PROD_OFFERING_ID` decimal(12,0) NOT NULL,
  `UPC_OFFER_CODE` varchar(32) DEFAULT NULL,
  `PROD_OFFERING_CODE` varchar(32) DEFAULT NULL,
  `RESOURCE_CODE` varchar(32) DEFAULT NULL,
  `IDENTIFY_CODE` varchar(64) DEFAULT NULL,
  `SEARCH_CODE` varchar(512) DEFAULT NULL,
  `PROD_OFFERING_NAME` varchar(128) NOT NULL,
  `MERCHANT_ID` decimal(8,0) DEFAULT NULL,
  `PROD_MODEL_ID` decimal(12,0) NOT NULL,
  `CATALOG_ID` decimal(8,0) DEFAULT NULL,
  `TYPE` varchar(8) DEFAULT NULL,
  `OFFER_TYPE` varchar(8) DEFAULT NULL COMMENT '存放UPC的策划类型 main or addon',
  `UPC_OFFER_TYPE` varchar(32) DEFAULT NULL,
  `PROD_LINE_ID` varchar(12) DEFAULT NULL,
  `INIT_PRICE` decimal(12,0) DEFAULT NULL,
  `SALE_FLAG` varchar(8) NOT NULL COMMENT '0 不销售\r\n            1 公开销售\r\n            2 内部销售\r\n            ',
  `PROD_MAP_PARAM` varchar(512) DEFAULT NULL COMMENT '用于同UPC 对应多个商品时，记录UPC下面的具体终端标识\r\n            ',
  `DESCRIPTION` varchar(512) DEFAULT NULL COMMENT '存放UPC定义的商品描述字段productDesc',
  `STATE` varchar(8) NOT NULL COMMENT '0 待发布\r\n            1 已发布\r\n            9 已注销\r\n            ',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `PAGE_REFRENCE` varchar(256) DEFAULT NULL COMMENT 'about页面',
  `LONG_NAME` varchar(256) DEFAULT NULL COMMENT '长名字',
  `SHORT_NAME` varchar(64) DEFAULT NULL COMMENT '短名字',
  `AGENT_DESCRIPTION` varchar(512) DEFAULT NULL COMMENT '代理商描述',
  `TENANT_ID` varchar(6) NOT NULL,
  `VALID_DURATION` decimal(12,0) DEFAULT NULL,
  `DEFUALT_CONTRACT_ID` decimal(12,0) DEFAULT NULL,
  `RSRV_STR1` varchar(20) DEFAULT NULL COMMENT '预留字段1',
  `RSRV_STR2` varchar(20) DEFAULT NULL COMMENT '预留字段2',
  `PAY_TYPE` varchar(4) DEFAULT NULL COMMENT '付费类型',
  `RSRV_STR3` varchar(20) DEFAULT NULL COMMENT '预留字段3',
  `RSRV_STR4` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`PROD_OFFERING_ID`),
  KEY `PROD_OFFERING_CODE` (`PROD_OFFERING_CODE`),
  KEY `PROD_LINE_ID` (`PROD_LINE_ID`),
  KEY `prod_model_id` (`PROD_MODEL_ID`),
  KEY `CATALOG_ID` (`CATALOG_ID`),
  KEY `RSRV_STR4` (`RSRV_STR4`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售品表';

/*Table structure for table `product_spec` */

DROP TABLE IF EXISTS `product_spec`;

CREATE TABLE `product_spec` (
  `PROD_SPEC_ID` decimal(12,0) NOT NULL,
  `PROD_SPEC_CODE` varchar(32) DEFAULT NULL,
  `PROD_SPEC_NAME` varchar(128) NOT NULL,
  `STATE` varchar(8) NOT NULL COMMENT '0 待发布\r\n            1 已发布\r\n            9 已注销\r\n            ',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `RESOURCE_CODE` varchar(32) DEFAULT NULL,
  `RESOURCE_NAME` varchar(128) DEFAULT NULL,
  `RESOURCE_PATH` varchar(128) DEFAULT NULL,
  `PROD_SPEC_TYPE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`PROD_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品表';

/*Table structure for table `rating_tariff` */

DROP TABLE IF EXISTS `rating_tariff`;

CREATE TABLE `rating_tariff` (
  `RATING_TARIFF_ID` decimal(12,0) NOT NULL,
  `PROD_OFFERING_ID` decimal(12,0) NOT NULL,
  `RATING_TARIFF_CODE` varchar(12) NOT NULL,
  `ITEM_TYPE_CODE` varchar(12) NOT NULL,
  `ITEM_TYPE_NAME` varchar(52) NOT NULL,
  `ITEM_CODE` varchar(12) NOT NULL,
  `ITEM_NAME` varchar(52) NOT NULL,
  `AMOUNT` varchar(12) NOT NULL,
  `UNIT_CODE` varchar(12) NOT NULL,
  `UNIT_NAME` varchar(12) NOT NULL,
  `CYCLE_AMOUNT` varchar(12) NOT NULL,
  `RATE_RANG_FROM` varchar(16) DEFAULT NULL,
  `RATE_RANG_TO` varchar(16) DEFAULT NULL,
  `PRIORITY` varchar(8) DEFAULT NULL,
  `ROUNDING_METHOD` varchar(16) DEFAULT NULL,
  `RATE_TYPE` varchar(16) DEFAULT NULL,
  `TIME_PERIOD_ID` decimal(12,0) DEFAULT NULL,
  `CYCLE_UNIT_CODE` varchar(12) NOT NULL,
  `CYCLE_UNIT_NAME` varchar(12) NOT NULL,
  `STATUS` varchar(4) NOT NULL,
  `RSRV_STR1` varchar(20) DEFAULT NULL,
  `RSRV_STR2` varchar(20) DEFAULT NULL,
  `RSRV_STR3` varchar(521) DEFAULT NULL,
  `RSRV_STR4` varchar(1024) DEFAULT NULL,
  `CREATE_OP_ID` varchar(12) DEFAULT NULL,
  `CREATE_ORG_ID` varchar(12) DEFAULT NULL,
  `OP_ID` varchar(12) DEFAULT NULL,
  `ORG_ID` varchar(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`RATING_TARIFF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资费表';

/*Table structure for table `rb_busi_inter_item_spec` */

DROP TABLE IF EXISTS `rb_busi_inter_item_spec`;

CREATE TABLE `rb_busi_inter_item_spec` (
  `BUSI_INTER_ITEM_SPEC_ID` bigint(12) NOT NULL,
  `BUSI_CODE` varchar(32) DEFAULT NULL,
  `BUSI_INTER_ITEM_SPEC_NAME` varchar(128) DEFAULT NULL,
  `BUSI_INTER_ITEM_SPEC_TYPE` varchar(64) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`BUSI_INTER_ITEM_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作业务项表';

/*Table structure for table `rb_busi_rule_item_spec` */

DROP TABLE IF EXISTS `rb_busi_rule_item_spec`;

CREATE TABLE `rb_busi_rule_item_spec` (
  `BUSI_RULE_ITEM_SPEC_ID` decimal(12,0) NOT NULL COMMENT '主键',
  `BUSI_RULE_ITEM_SPEC_NAME` varchar(512) NOT NULL COMMENT '业务规则名称如检查用户是否是VIP',
  `BUSI_RULE_ITEM_SPEC_TYPE` decimal(12,0) DEFAULT NULL COMMENT '业务规则类型',
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `STATUS` varchar(8) NOT NULL,
  `RSRV_STR1` varchar(16) DEFAULT NULL,
  `RSRV_STR2` varchar(32) DEFAULT NULL,
  `RSRV_STR3` varchar(64) DEFAULT NULL,
  `RSRV_STR4` varchar(512) DEFAULT NULL,
  `CREATE_OP_ID` varchar(12) DEFAULT NULL,
  `CREATE_ORG_ID` varchar(12) DEFAULT NULL,
  `OP_ID` varchar(12) DEFAULT NULL,
  `ORG_ID` varchar(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`BUSI_RULE_ITEM_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务规则项表';

/*Table structure for table `rb_char_spec` */

DROP TABLE IF EXISTS `rb_char_spec`;

CREATE TABLE `rb_char_spec` (
  `CHAR_SPEC_ID` decimal(8,0) NOT NULL,
  `CHAR_SPEC_CODE` varchar(32) DEFAULT NULL,
  `CHAR_SPEC_NAME` varchar(128) DEFAULT NULL,
  `CHAR_SPEC_TYPE` varchar(8) DEFAULT NULL COMMENT '1 default\\r\\n            2 color\\r\\n            3 memorySize \\r\\n            ',
  `CHAR_SPEC_CATALOG` varchar(8) DEFAULT NULL COMMENT '1 商品\\r\\n            2 商品序列\\r\\n            ',
  `VALUE_TYPE` varchar(8) DEFAULT NULL COMMENT '1.数字型\\r\\n            2.文本型\\r\\n            3.枚举型',
  `MIN_CARDINALITY` decimal(4,0) DEFAULT NULL COMMENT '如亲情号码个数（1~5），最小基数为1。一些非空特征规格最小基数也为1',
  `MAX_CARDINALITY` decimal(4,0) DEFAULT NULL COMMENT '如亲情号码个数（1~5），最大基数为5。最大基数默认为1',
  `DERIVATION_FORMULA` varchar(1024) DEFAULT NULL COMMENT 'A rule or principle represented in symbols, numbers, or letters, often in the form of an equation used to derive the value of a characteristic value.',
  `CAN_MODIFY` decimal(2,0) DEFAULT NULL COMMENT '某些特征是该对象的固有业务信息，不能变更；\r\n            某些特征是根据客户意愿可以个性化设置的',
  `IS_COMPOSITE` decimal(2,0) DEFAULT NULL,
  `IS_CUSTOMIZED` decimal(1,0) DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '1 待发布\\r\\n            2 已发布\\r\\n            3 已注销\\r\\n            ',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`CHAR_SPEC_ID`),
  KEY `CHAR_SPEC_CODE` (`CHAR_SPEC_CODE`),
  KEY `CHAR_SPEC_NAME` (`CHAR_SPEC_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='规格属性表';

/*Table structure for table `rb_char_spec_value` */

DROP TABLE IF EXISTS `rb_char_spec_value`;

CREATE TABLE `rb_char_spec_value` (
  `CHAR_VALUE_ID` decimal(12,0) NOT NULL,
  `CHAR_VALUE_CODE` varchar(32) DEFAULT NULL,
  `VALUE` varchar(256) DEFAULT NULL,
  `CHAR_SPEC_ID` decimal(8,0) NOT NULL,
  `display_value` varchar(256) DEFAULT NULL,
  `IS_DEFAULT` decimal(2,0) DEFAULT NULL,
  `VALUE_FROM` decimal(12,0) DEFAULT NULL,
  `VALUE_TO` decimal(12,0) DEFAULT NULL,
  `RANGE_INTERVAL` decimal(12,0) DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '1 待发布\\r\\n            2 已发布\\r\\n            3 已注销\\r\\n            ',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`CHAR_VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='规格属性值表';

/*Table structure for table `rb_free_res_item_spec` */

DROP TABLE IF EXISTS `rb_free_res_item_spec`;

CREATE TABLE `rb_free_res_item_spec` (
  `FREE_RES_ITEM_SPEC_ID` decimal(12,0) NOT NULL,
  `FREE_RES_ITEM_SPEC_NAME` varchar(512) NOT NULL,
  `FREE_RES_TYPE` decimal(12,0) NOT NULL,
  `DESCRIPTION` varchar(1024) NOT NULL,
  `STATUS` varchar(8) NOT NULL,
  `RSRV_STR1` varchar(16) DEFAULT NULL,
  `RSRV_STR2` varchar(32) DEFAULT NULL,
  `RSRV_STR3` varchar(64) DEFAULT NULL,
  `RSRV_STR4` varchar(512) DEFAULT NULL,
  `CREATE_OP_ID` varchar(12) DEFAULT NULL,
  `CREATE_ORG_ID` varchar(12) DEFAULT NULL,
  `OP_ID` varchar(12) DEFAULT NULL,
  `ORG_ID` varchar(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`FREE_RES_ITEM_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='免费资源规格项表';

/*Table structure for table `rb_i18n_entrance` */

DROP TABLE IF EXISTS `rb_i18n_entrance`;

CREATE TABLE `rb_i18n_entrance` (
  `i18n_entrance_id` decimal(12,0) NOT NULL,
  `domain` varchar(32) DEFAULT NULL COMMENT '服务域:eshop,selfcare,kapala,auth,agentview',
  `i18n_entrance_name` varchar(512) DEFAULT NULL COMMENT '需要国际化的入口 dao.method.field',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `rb_i18n_resource` */

DROP TABLE IF EXISTS `rb_i18n_resource`;

CREATE TABLE `rb_i18n_resource` (
  `I18N_RESOURCE_ID` decimal(12,0) NOT NULL,
  `INST_ID` decimal(16,0) DEFAULT NULL COMMENT '存放需要国际化实体记录的标识',
  `ENTITY_PROPERTY_CODE` varchar(64) NOT NULL COMMENT '存放实体属性编码，如PROD_OFFERING.PROD_NAME表示来自商品名称',
  `LANGUAGE_CODE` varchar(32) DEFAULT NULL,
  `CONTENT` varchar(1024) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `TENANT_ID` varchar(8) DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`I18N_RESOURCE_ID`),
  KEY `INST_ID` (`INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='国际化表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='货币单位表';

/*Table structure for table `rb_measure_unit_exchange` */

DROP TABLE IF EXISTS `rb_measure_unit_exchange`;

CREATE TABLE `rb_measure_unit_exchange` (
  `MEASURE_ID` decimal(9,0) NOT NULL COMMENT '度量ID',
  `DEST_MEASURE_ID` decimal(9,0) NOT NULL COMMENT '目标度量ID ',
  `MEASURE_EXCHANGE_ID` decimal(9,0) NOT NULL COMMENT '度量转换规则ID',
  `EXCHANGE_NUMERATOR` decimal(9,0) NOT NULL COMMENT '换算分子',
  `EXCHANGE_DENOMINATOR` decimal(9,0) NOT NULL COMMENT '换算分母',
  `TENANT_ID` varchar(8) DEFAULT NULL COMMENT '租户ID',
  KEY `PK_RB_MEASURE_UNIT_EXCHANGE` (`MEASURE_ID`,`DEST_MEASURE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='货币转换表';

/*Table structure for table `rb_offertype_busi_rel` */

DROP TABLE IF EXISTS `rb_offertype_busi_rel`;

CREATE TABLE `rb_offertype_busi_rel` (
  `OFFERTYPE_BUSI_REL_ID` bigint(12) NOT NULL COMMENT '主键ID',
  `OFFER_TYPE` varchar(8) DEFAULT NULL,
  `BUSI_INTER_ITEM_SPEC_ID` bigint(12) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL COMMENT '描述',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作编码',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `op_id` bigint(12) DEFAULT NULL COMMENT '操作员ID',
  `done_date` datetime DEFAULT NULL COMMENT '操作日期',
  `IS_MANDATORY` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`OFFERTYPE_BUSI_REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `rb_rating_tariff_item_spec` */

DROP TABLE IF EXISTS `rb_rating_tariff_item_spec`;

CREATE TABLE `rb_rating_tariff_item_spec` (
  `RATING_TARIFF_ITEM_SPEC_ID` decimal(12,0) NOT NULL,
  `RATING_TARIFF_ITEM_SPEC_NAME` varchar(512) NOT NULL,
  `RATING_TARIFF_TYPE` decimal(12,0) NOT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `STATUS` varchar(8) NOT NULL,
  `RSRV_STR1` varchar(16) DEFAULT NULL,
  `RSRV_STR2` varchar(32) DEFAULT NULL,
  `RSRV_STR3` varchar(64) DEFAULT NULL,
  `RSRV_STR4` varchar(512) DEFAULT NULL,
  `CREATE_OP_ID` varchar(12) DEFAULT NULL,
  `CREATE_ORG_ID` varchar(12) DEFAULT NULL,
  `OP_ID` varchar(12) DEFAULT NULL,
  `ORG_ID` varchar(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`RATING_TARIFF_ITEM_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资费项表';

/*Table structure for table `rb_redis_object` */

DROP TABLE IF EXISTS `rb_redis_object`;

CREATE TABLE `rb_redis_object` (
  `OBJECT_NAME` varchar(50) NOT NULL,
  `UPDATE_DATE` datetime NOT NULL,
  `FINISH_DATE` datetime NOT NULL,
  `OBJECT_KEY` varchar(50) NOT NULL DEFAULT '',
  `OBJECT_LOCALE` varchar(20) NOT NULL DEFAULT '',
  `STATE` char(1) DEFAULT NULL COMMENT '0-已处理,1-新增,2-修改,3-删除',
  `TENANT_ID` varchar(8) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`OBJECT_NAME`,`OBJECT_KEY`,`OBJECT_LOCALE`),
  KEY `OBJECT_KEY_OBJECT_LOCALE` (`OBJECT_KEY`,`OBJECT_LOCALE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Redis缓存表';

/*Table structure for table `rb_redis_object_handle` */

DROP TABLE IF EXISTS `rb_redis_object_handle`;

CREATE TABLE `rb_redis_object_handle` (
  `OBJECT_NAME` varchar(50) NOT NULL,
  `HANDLE_CLASS` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Redis缓存映射类表';

/*Table structure for table `sales_channel` */

DROP TABLE IF EXISTS `sales_channel`;

CREATE TABLE `sales_channel` (
  `CHANNEL_ID` decimal(8,0) NOT NULL,
  `CHANNEL_CODE` varchar(32) DEFAULT NULL,
  `NAME` varchar(128) DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`CHANNEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售渠道表';

/*Table structure for table `sales_channel_offer_rela` */

DROP TABLE IF EXISTS `sales_channel_offer_rela`;

CREATE TABLE `sales_channel_offer_rela` (
  `ID` decimal(12,0) NOT NULL,
  `OFFER_ID` varchar(20) DEFAULT NULL COMMENT 'OSE OFFER',
  `OFFER_CODE` varchar(64) DEFAULT NULL COMMENT 'UPC OFFER',
  `SALES_CHANNEL` varchar(32) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `TENANT_ID` varchar(8) DEFAULT NULL COMMENT '租户ID',
  `CHANNEL_TYPE` varchar(10) DEFAULT NULL COMMENT '渠道类型',
  PRIMARY KEY (`ID`),
  KEY `OFFER_ID` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='渠道与销售品关系表';

/*Table structure for table `sales_channel_price_rela` */

DROP TABLE IF EXISTS `sales_channel_price_rela`;

CREATE TABLE `sales_channel_price_rela` (
  `PRICE_ID` decimal(12,0) NOT NULL,
  `SALES_CHANNEL` varchar(32) NOT NULL,
  PRIMARY KEY (`PRICE_ID`,`SALES_CHANNEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='渠道与销售品价格关系表';

/*Table structure for table `service_spec` */

DROP TABLE IF EXISTS `service_spec`;

CREATE TABLE `service_spec` (
  `SERVICE_SPEC_ID` decimal(12,0) NOT NULL,
  `SERVICE_SPEC_CODE` varchar(32) DEFAULT NULL,
  `SERVICE_SPEC_NAME` varchar(128) NOT NULL,
  `SERVICE_SPEC_TYPE` varchar(32) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL COMMENT '0 待发布\r\n            1 已发布\r\n            9 已注销\r\n            ',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  PRIMARY KEY (`SERVICE_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务表';

/*Table structure for table `service_spec_line_rel` */

DROP TABLE IF EXISTS `service_spec_line_rel`;

CREATE TABLE `service_spec_line_rel` (
  `SERVICE_SPEC_LINE_REL_ID` decimal(12,0) NOT NULL,
  `PROD_LINE_ID` decimal(12,0) DEFAULT NULL,
  `SERVICE_SPEC_ID` decimal(12,0) DEFAULT NULL,
  `IS_MAIN` decimal(1,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `RSRV_STR1` varchar(16) DEFAULT NULL,
  `RSRV_STR2` varchar(32) DEFAULT NULL,
  `RSRV_STR3` varchar(64) DEFAULT NULL,
  `RSRV_STR4` varchar(512) DEFAULT NULL,
  `CREATE_OP_ID` varchar(12) DEFAULT NULL,
  `CREATE_ORG_ID` varchar(12) DEFAULT NULL,
  `OP_ID` varchar(12) DEFAULT NULL,
  `ORG_ID` varchar(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`SERVICE_SPEC_LINE_REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务与产品线关系表';

/*Table structure for table `service_spec_rela` */

DROP TABLE IF EXISTS `service_spec_rela`;

CREATE TABLE `service_spec_rela` (
  `RELA_ID` decimal(12,0) NOT NULL,
  `SERVICE_SPEC_ID` decimal(12,0) NOT NULL,
  `RELA_SERVICE_SPEC_ID` decimal(12,0) NOT NULL,
  `RELA_TYPE` varchar(8) DEFAULT NULL,
  `STATE` varchar(8) NOT NULL COMMENT '0 待发布\r\n 1 已发布\r\n 9 已注销\r\n ',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  `TENANT_ID` varchar(6) NOT NULL,
  PRIMARY KEY (`RELA_ID`),
  KEY `SERVICE_SPEC_ID` (`SERVICE_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务关系表';

/*Table structure for table `solr_product_updatelogs` */

DROP TABLE IF EXISTS `solr_product_updatelogs`;

CREATE TABLE `solr_product_updatelogs` (
  `actionId` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id，区分每个不同的update记录',
  `prod_model_id` decimal(12,0) DEFAULT NULL COMMENT '通过序列id来更新整个document数据',
  `actionstatus` char(2) DEFAULT NULL COMMENT '-1表示待更新 1表示已更新',
  `createDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `TENANT_ID` varchar(8) DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`actionId`)
) ENGINE=InnoDB AUTO_INCREMENT=1010801 DEFAULT CHARSET=utf8 COMMENT='solr_product_updatelogs主要为记录商品序列数据更新，-1表示未更新 待更新，此处通过定时任务来实现\r\n1表示已更新\r\n--------------------------------------------------\r\ncreatetime表示创建时间';

/*Table structure for table `sys_sequences` */

DROP TABLE IF EXISTS `sys_sequences`;

CREATE TABLE `sys_sequences` (
  `SEQUENCE_NAME` varchar(60) NOT NULL,
  `START_BY` bigint(20) NOT NULL COMMENT 'SEQUENCE的最开始值',
  `INCREMENT_BY` bigint(10) NOT NULL COMMENT 'SEQUENCE的自增长度',
  `LAST_NUMBER` bigint(20) NOT NULL COMMENT 'SEQUENCE的当前值初始化为开始值',
  `JVM_STEP_BY` bigint(10) NOT NULL DEFAULT '200' COMMENT '缓存到JVM中的值，上线时默认为200,产品特有的自定义20',
  PRIMARY KEY (`SEQUENCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='序列表';

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

/*Table structure for table `td_m_role` */

DROP TABLE IF EXISTS `td_m_role`;

CREATE TABLE `td_m_role` (
  `ROLE_ID` int(10) NOT NULL,
  `ROLE_NAME` varchar(30) NOT NULL,
  `ENABLE` int(2) NOT NULL,
  `REMARK` varchar(255) NOT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `td_m_role_privilege` */

DROP TABLE IF EXISTS `td_m_role_privilege`;

CREATE TABLE `td_m_role_privilege` (
  `RR_ID` decimal(16,0) NOT NULL COMMENT '角色资源表',
  `ROLE_ID` decimal(16,0) DEFAULT NULL COMMENT '角色ID',
  `PRIVILEGE_ID` decimal(16,0) DEFAULT NULL COMMENT '权限ID',
  PRIMARY KEY (`RR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限定义表';

/*Table structure for table `td_m_user` */

DROP TABLE IF EXISTS `td_m_user`;

CREATE TABLE `td_m_user` (
  `USER_ID` int(16) NOT NULL,
  `USER_LOGIN_NAME` varchar(30) NOT NULL,
  `USER_NAME` varchar(30) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `ENABLE` int(1) NOT NULL DEFAULT '1' COMMENT '0 无效 1有效',
  `USER_TYPE` varchar(30) NOT NULL,
  `UPDATE_PERSON` varchar(24) DEFAULT NULL COMMENT '更新人',
  `UPDATE_DATETIME` datetime DEFAULT NULL COMMENT '更新时间',
  `REMARK` text COMMENT '描述',
  `FAILURE_LOGIN_COUNT` int(2) DEFAULT NULL COMMENT '登录失败次数',
  `PWD_LAST_UPDATE_DATETIME` datetime DEFAULT NULL,
  `SALT` varchar(200) DEFAULT NULL COMMENT '随机密钥',
  `TENANT_ID` varchar(8) DEFAULT NULL COMMENT '租户ID',
  `MAIL_ADDRESS` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `td_m_user_role` */

DROP TABLE IF EXISTS `td_m_user_role`;

CREATE TABLE `td_m_user_role` (
  `UR_ID` int(16) NOT NULL COMMENT '用户角色ID',
  `user_id` varchar(50) DEFAULT NULL,
  `ROLE_ID` int(16) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`UR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存放角色和最终用户、应用接入方关系表';

/*Table structure for table `td_s_menu` */

DROP TABLE IF EXISTS `td_s_menu`;

CREATE TABLE `td_s_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_TYPE` varchar(30) NOT NULL COMMENT '菜单类型 ',
  `PARENT_MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(50) NOT NULL COMMENT '菜单名称',
  `MENU_URL` varchar(255) NOT NULL COMMENT '菜单URL',
  `SHOW_ORDER` int(11) NOT NULL,
  `ENABLED` int(11) NOT NULL,
  `MENU_NAME_EN` varchar(50) NOT NULL COMMENT '菜单名称_EN',
  `MENU_NAME_ZH_CN` varchar(50) NOT NULL COMMENT '菜单名称_ZH_CN',
  `MENU_NAME_EN_US` varchar(50) DEFAULT NULL COMMENT '菜单名称_EN_US',
  `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

/*Table structure for table `time_period` */

DROP TABLE IF EXISTS `time_period`;

CREATE TABLE `time_period` (
  `TIME_PERIOD_ID` decimal(12,0) NOT NULL,
  `TIME_PERIOD_NAME` varchar(32) DEFAULT NULL,
  `START_WEEK` varchar(32) DEFAULT NULL,
  `END_WEEK` varchar(32) DEFAULT NULL,
  `START_TIME` time DEFAULT NULL,
  `END_TIME` time DEFAULT NULL,
  `DATE_MODE` varchar(32) DEFAULT NULL,
  `TIME_MODE` varchar(32) DEFAULT NULL,
  `STATUS` varchar(2) DEFAULT NULL,
  `RSRV_STR1` varchar(16) DEFAULT NULL,
  `RSRV_STR2` char(32) DEFAULT NULL,
  `RSRV_STR3` varchar(64) DEFAULT NULL,
  `RSRV_STR4` varchar(512) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(8) DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`TIME_PERIOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `time_period_del` */

DROP TABLE IF EXISTS `time_period_del`;

CREATE TABLE `time_period_del` (
  `REL_ID` decimal(12,0) NOT NULL,
  `TIME_PERIOD_ID` decimal(12,0) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `START_WEEK` varchar(16) DEFAULT NULL,
  `END_WEEK` varchar(16) DEFAULT NULL,
  `START_TIME` time DEFAULT NULL,
  `END_TIME` time DEFAULT NULL,
  `RSRV_STR1` varchar(16) DEFAULT NULL,
  `RSRV_STR2` varchar(32) DEFAULT NULL,
  `RSRV_STR3` varchar(64) DEFAULT NULL,
  `RSRV_STR4` varchar(512) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TENANT_ID` varchar(8) DEFAULT NULL,
  `REMARKS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
