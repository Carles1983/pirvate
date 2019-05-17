/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log : Database - oss_sff
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`oss_sff` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `oss_sff`;

/*Table structure for table `ar_inter_temp_rel` */

DROP TABLE IF EXISTS `ar_inter_temp_rel`;

CREATE TABLE `ar_inter_temp_rel` (
  `REL_ID` bigint(12) NOT NULL,
  `INTER_ID` bigint(12) DEFAULT NULL,
  `TEMP_ID` bigint(12) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ar_interface` */

DROP TABLE IF EXISTS `ar_interface`;

CREATE TABLE `ar_interface` (
  `INTERFACE_ID` bigint(12) NOT NULL,
  `TENANT_ID` varchar(12) NOT NULL,
  `INTERFACE_CODE` varchar(100) NOT NULL,
  `INTERFACE_NAME` varchar(100) NOT NULL,
  `STATE` char(1) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`INTERFACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461;

/*Table structure for table `ar_interface_result_temp` */

DROP TABLE IF EXISTS `ar_interface_result_temp`;

CREATE TABLE `ar_interface_result_temp` (
  `REL_ID` bigint(12) NOT NULL DEFAULT '0',
  `TEMP_ID` bigint(12) DEFAULT NULL,
  `TYPE_ID` bigint(12) DEFAULT NULL,
  `SPLITTER` char(1) DEFAULT NULL,
  `FIELD_TYPE` varchar(20) DEFAULT NULL,
  `CONDITION_SQL` varchar(1000) DEFAULT NULL,
  `FIELD_LEVEL_SORT` bigint(3) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=481;

/*Table structure for table `ar_login_user_log` */

DROP TABLE IF EXISTS `ar_login_user_log`;

CREATE TABLE `ar_login_user_log` (
  `OP_ID` bigint(12) DEFAULT NULL,
  `OP_LOG_NAME` varchar(300) DEFAULT NULL,
  `LOGIN_DATE` datetime DEFAULT NULL,
  `LOGOUT_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `ID` bigint(16) DEFAULT NULL,
  `RegionZipCode` varchar(600) DEFAULT NULL,
  `REGION` varchar(600) DEFAULT NULL,
  `MUNICAPITY_CODE` varchar(600) DEFAULT NULL,
  `MUNICAPITY` varchar(600) DEFAULT NULL,
  `ZIP_CODE` varchar(600) DEFAULT NULL,
  `city` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `oss_dictionary` */

DROP TABLE IF EXISTS `oss_dictionary`;

CREATE TABLE `oss_dictionary` (
  `DICT_ID` bigint(12) NOT NULL COMMENT '主键ID',
  `DICT_CODE` varchar(128) DEFAULT NULL,
  `DICT_NAME` varchar(128) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL COMMENT '1:可用   0:删除',
  `TENANT_ID` varchar(36) DEFAULT NULL,
  `REGION_ID` varchar(36) DEFAULT NULL,
  `REMARKS` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`DICT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Table structure for table `oss_dictionary_static` */

DROP TABLE IF EXISTS `oss_dictionary_static`;

CREATE TABLE `oss_dictionary_static` (
  `STATIC_ID` bigint(12) NOT NULL COMMENT 'ID',
  `DICT_ID` bigint(12) NOT NULL COMMENT '字典主表ID',
  `STATIC_CODE` varchar(128) DEFAULT NULL,
  `STATIC_NAME` varchar(128) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL COMMENT '1:可用   0:删除',
  `DISPLAY_ORDER` bigint(12) DEFAULT NULL,
  `TENANT_ID` varchar(36) DEFAULT NULL,
  `REGION_ID` varchar(36) DEFAULT NULL,
  `REMARKS` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`STATIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Table structure for table `oss_rule` */

DROP TABLE IF EXISTS `oss_rule`;

CREATE TABLE `oss_rule` (
  `RULE_ID` bigint(12) NOT NULL DEFAULT '0',
  `RULE_CODE` varchar(100) DEFAULT NULL,
  `RULE_TYPE` varchar(32) DEFAULT NULL,
  `RULE_NAME` varchar(100) DEFAULT NULL,
  `EXT1` varchar(256) DEFAULT NULL,
  `EXT2` varchar(256) DEFAULT NULL,
  `SORT_NUMBER` bigint(12) DEFAULT NULL,
  `OWN_SYSTEM` varchar(32) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_addr_attr_type` */

DROP TABLE IF EXISTS `res_addr_attr_type`;

CREATE TABLE `res_addr_attr_type` (
  `ID` bigint(12) NOT NULL COMMENT 'ID',
  `NAME` varchar(200) DEFAULT NULL,
  `CODE` varchar(200) DEFAULT NULL,
  `CREATE_DATA` datetime DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `REMARK` varchar(400) DEFAULT NULL,
  `SHORT_NAME` varchar(20) DEFAULT NULL,
  `SPELL` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_addr_import_coax` */

DROP TABLE IF EXISTS `res_addr_import_coax`;

CREATE TABLE `res_addr_import_coax` (
  `IMPORT_ID` bigint(12) DEFAULT NULL,
  `IMPORT_SERIAL` varchar(384) DEFAULT NULL,
  `IMPORT_ROW` bigint(12) DEFAULT NULL,
  `IMPORT_KVHX` varchar(765) DEFAULT NULL,
  `IMPORT_TDC_KVHX` varchar(765) DEFAULT NULL,
  `IMPORT_CMTS_NAVN` varchar(765) DEFAULT NULL,
  `IMPORT_CMTS_ID` varchar(765) DEFAULT NULL,
  `IMPORT_CMTS_CO_GROUP_ID` varchar(765) DEFAULT NULL,
  `IMPORT_GADENAVN` varchar(765) DEFAULT NULL,
  `IMPORT_HUSNUMMER` varchar(765) DEFAULT NULL,
  `IMPORT_HUSBOGSTAV` varchar(6) DEFAULT NULL,
  `IMPORT_ETAGE` varchar(765) DEFAULT NULL,
  `IMPORT_DOOR` varchar(765) DEFAULT NULL,
  `IMPORT_POSTNUMMER` varchar(765) DEFAULT NULL,
  `IMPORT_INSTALLATIONSSTATUS` varchar(765) DEFAULT NULL,
  `IMPORT_TV_STATUS` varchar(765) DEFAULT NULL,
  `IMPORT_TOPGRUPPEKODE` varchar(765) DEFAULT NULL,
  `IMPORT_OTHER_BROADBAND` varchar(765) DEFAULT NULL,
  `IMPORT_DOWNLOAD` varchar(765) DEFAULT NULL,
  `IMPORT_UPLOAD` varchar(765) DEFAULT NULL,
  `IMPORT_STAFF_ID` bigint(16) DEFAULT NULL,
  `IMPORT_STAFF_CODE` varchar(384) DEFAULT NULL,
  `IMPORT_STAFF_NAME` varchar(384) DEFAULT NULL,
  `IMPORT_DATE` datetime DEFAULT NULL,
  `STATE` char(3) DEFAULT NULL,
  `IMPORT_RESULT` varchar(765) DEFAULT NULL,
  `EXT1` varchar(765) DEFAULT NULL,
  `EXT2` varchar(765) DEFAULT NULL,
  `EXT3` varchar(765) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_addr_import_dsl` */

DROP TABLE IF EXISTS `res_addr_import_dsl`;

CREATE TABLE `res_addr_import_dsl` (
  `IMPORT_ID` bigint(12) DEFAULT NULL,
  `IMPORT_SERIAL` varchar(384) DEFAULT NULL,
  `IMPORT_ROW` bigint(12) DEFAULT NULL,
  `IMPORT_KVH` varchar(765) DEFAULT NULL,
  `IMPORT_TDC_KVH` varchar(765) DEFAULT NULL,
  `IMPORT_GADENAVN` varchar(765) DEFAULT NULL,
  `IMPORT_HUSNR` varchar(765) DEFAULT NULL,
  `IMPORT_POSTNR` varchar(765) DEFAULT NULL,
  `IMPORT_DSLNODE` varchar(765) DEFAULT NULL,
  `IMPORT_SHAPING` varchar(765) DEFAULT NULL,
  `IMPORT_VECTORING` varchar(765) DEFAULT NULL,
  `IMPORT_DB` varchar(765) DEFAULT NULL,
  `IMPORT_PBMULIGT` varchar(765) DEFAULT NULL,
  `IMPORT_DSVDSL` varchar(765) DEFAULT NULL,
  `IMPORT_USVDSL` varchar(765) DEFAULT NULL,
  `IMPORT_DSADSL2PLUSA` varchar(765) DEFAULT NULL,
  `IMPORT_USADSL2PLUSA` varchar(765) DEFAULT NULL,
  `IMPORT_DSADSL2PLUSM` varchar(765) DEFAULT NULL,
  `IMPORT_USADSL2PLUSM` varchar(765) DEFAULT NULL,
  `IMPORT_GHDSL` varchar(765) DEFAULT NULL,
  `IMPORT_GHDSLPAIRS` varchar(765) DEFAULT NULL,
  `IMPORT_ANTALBBRLEJEMAL` varchar(765) DEFAULT NULL,
  `IMPORT_ANTALDSLMAALINGER` varchar(765) DEFAULT NULL,
  `IMPORT_CTRNODE` varchar(765) DEFAULT NULL,
  `IMPORT_DBCTRLUFTLINJE` varchar(765) DEFAULT NULL,
  `IMPORT_STAFF_ID` bigint(16) DEFAULT NULL,
  `IMPORT_STAFF_CODE` varchar(384) DEFAULT NULL,
  `IMPORT_STAFF_NAME` varchar(384) DEFAULT NULL,
  `IMPORT_DATE` datetime DEFAULT NULL,
  `STATE` char(3) DEFAULT NULL,
  `IMPORT_RESULT` varchar(768) DEFAULT NULL,
  `EXT1` varchar(765) DEFAULT NULL,
  `EXT2` varchar(765) DEFAULT NULL,
  `EXT3` varchar(765) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_addr_import_fiber` */

DROP TABLE IF EXISTS `res_addr_import_fiber`;

CREATE TABLE `res_addr_import_fiber` (
  `IMPORT_ID` bigint(12) DEFAULT NULL,
  `IMPORT_SERIAL` varchar(384) DEFAULT NULL,
  `IMPORT_ROW` bigint(12) DEFAULT NULL,
  `IMPORT_KVHX` varchar(765) DEFAULT NULL,
  `IMPORT_TDC_KVHX` varchar(765) DEFAULT NULL,
  `IMPORT_KOMMUNENR` varchar(765) DEFAULT NULL,
  `IMPORT_VEJKODE` varchar(765) DEFAULT NULL,
  `IMPORT_GADENAVN` varchar(765) DEFAULT NULL,
  `IMPORT_HUSNUMMER` varchar(765) DEFAULT NULL,
  `IMPORT_HUSBOGSTAV` varchar(765) DEFAULT NULL,
  `IMPORT_ETAGE` varchar(765) DEFAULT NULL,
  `IMPORT_SIDE` varchar(765) DEFAULT NULL,
  `IMPORT_POSTNUMMER` varchar(765) DEFAULT NULL,
  `IMPORT_POSTDISTRIKT` varchar(765) DEFAULT NULL,
  `IMPORT_ADGANGSADRESSE_BBRID` varchar(765) DEFAULT NULL,
  `IMPORT_RAA_FIBER_PUNKT` varchar(765) DEFAULT NULL,
  `IMPORT_FBSA_PUNKT` varchar(765) DEFAULT NULL,
  `IMPORT_GRAVE_LAENGDE_M` varchar(765) DEFAULT NULL,
  `IMPORT_KAPSTIK` varchar(765) DEFAULT NULL,
  `IMPORT_INITIAL_INSTALLATION_CODE` varchar(765) DEFAULT NULL,
  `IMPORT_BBRKODE_TXT` varchar(765) DEFAULT NULL,
  `IMPORT_MAX_DOWNLOAD` varchar(765) DEFAULT NULL,
  `IMPORT_MAX_UPLOAD` varchar(765) DEFAULT NULL,
  `IMPORT_STAFF_ID` bigint(16) DEFAULT NULL,
  `IMPORT_STAFF_CODE` varchar(384) DEFAULT NULL,
  `IMPORT_STAFF_NAME` varchar(384) DEFAULT NULL,
  `IMPORT_DATE` datetime DEFAULT NULL,
  `STATE` char(3) DEFAULT NULL,
  `IMPORT_RESULT` varchar(765) DEFAULT NULL,
  `EXT1` varchar(765) DEFAULT NULL,
  `EXT2` varchar(765) DEFAULT NULL,
  `EXT3` varchar(765) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_addr_import_log` */

DROP TABLE IF EXISTS `res_addr_import_log`;

CREATE TABLE `res_addr_import_log` (
  `IMPORT_ID` bigint(12) DEFAULT NULL,
  `IMPORT_SERIAL` varchar(384) DEFAULT NULL,
  `COUNT` bigint(12) DEFAULT NULL,
  `IMPORT_TYPE` varchar(300) DEFAULT NULL,
  `IMPORT_FILE_NAME` varchar(765) DEFAULT NULL,
  `STATE` char(3) DEFAULT NULL,
  `IMPORT_RESULT` varchar(6300) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `LAST_UPDATED_DATE` datetime DEFAULT NULL,
  `STAFF_ID` bigint(16) DEFAULT NULL,
  `STAFF_CODE` varchar(384) DEFAULT NULL,
  `STAFF_NAME` varchar(384) DEFAULT NULL,
  `EXT1` varchar(765) DEFAULT NULL,
  `EXT2` varchar(765) DEFAULT NULL,
  `EXT3` varchar(765) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_addr_temp_attr_rel` */

DROP TABLE IF EXISTS `res_addr_temp_attr_rel`;

CREATE TABLE `res_addr_temp_attr_rel` (
  `ID` bigint(12) NOT NULL COMMENT 'ID',
  `ADDRTEMP_ID` bigint(12) NOT NULL,
  `ATTR_ID` bigint(12) NOT NULL,
  `ATTR_CODE` varchar(100) DEFAULT NULL,
  `STATE` char(1) NOT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_address` */

DROP TABLE IF EXISTS `res_address`;

CREATE TABLE `res_address` (
  `ADDRESS_ID` bigint(12) DEFAULT NULL,
  `ADDRESS_TYPE` varchar(900) DEFAULT NULL,
  `DISTRICT_ID` bigint(12) DEFAULT NULL,
  `ADDR_DESC` varchar(1000) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(54) DEFAULT NULL,
  `STATE` char(9) DEFAULT NULL,
  `BLACK_STATE` char(9) DEFAULT NULL,
  `DELIVERY_STATE` char(9) DEFAULT NULL,
  `REMARK` varchar(1000) DEFAULT NULL,
  `CREATED_BY` varchar(1800) DEFAULT NULL,
  `LAST_UPDATED_BY` varchar(1800) DEFAULT NULL,
  `LAST_UPDATED_DATE` datetime DEFAULT NULL,
  `ZIPCODE` varchar(900) DEFAULT NULL,
  `COUNTRY` varchar(1800) DEFAULT NULL,
  `DIRECTION` varchar(900) DEFAULT NULL,
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
  `EXT14` varchar(100) DEFAULT NULL,
  `EXT15` varchar(100) DEFAULT NULL,
  `EXT16` varchar(100) DEFAULT NULL,
  `EXT17` varchar(100) DEFAULT NULL,
  `EXT18` varchar(100) DEFAULT NULL,
  `EXT19` varchar(100) DEFAULT NULL,
  `EXT20` varchar(100) DEFAULT NULL,
  `SOURCE` varchar(900) DEFAULT NULL,
  `CREATE_TYPE` varchar(900) DEFAULT NULL,
  `MUNICIPALITY` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_std_addr_attr` */

DROP TABLE IF EXISTS `res_std_addr_attr`;

CREATE TABLE `res_std_addr_attr` (
  `ATTR_INS_ID` bigint(12) NOT NULL,
  `ADDR_ID` bigint(12) NOT NULL,
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_NAME` varchar(128) DEFAULT NULL,
  `ATTR_VAL` varchar(256) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ATTR_INS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_std_addr_template` */

DROP TABLE IF EXISTS `res_std_addr_template`;

CREATE TABLE `res_std_addr_template` (
  `TEMPLATE_ID` bigint(12) NOT NULL,
  `CODE` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `TEMPLATE_TYPE` varchar(100) DEFAULT NULL,
  `VERSION` varchar(10) DEFAULT NULL,
  `STATE` char(1) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_std_addr_type` */

DROP TABLE IF EXISTS `res_std_addr_type`;

CREATE TABLE `res_std_addr_type` (
  `ID` bigint(12) NOT NULL DEFAULT '0',
  `NAME` varchar(200) DEFAULT NULL,
  `CODE` varchar(200) DEFAULT NULL,
  `CREATE_DATA` datetime DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `REMARK` varchar(400) DEFAULT NULL,
  `SHORT_NAME` varchar(20) DEFAULT NULL,
  `SPELL` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_std_address` */

DROP TABLE IF EXISTS `res_std_address`;

CREATE TABLE `res_std_address` (
  `ADDR_ID` bigint(12) NOT NULL COMMENT 'µŘÖ·id',
  `PARENT_ID` bigint(12) DEFAULT NULL,
  `DISTRICT_PATH` varchar(100) DEFAULT NULL COMMENT 'ĐĐŐţÇřÓňpath',
  `NAME` varchar(200) DEFAULT NULL COMMENT 'µŘÖ·ĂűłĆ',
  `ALIASES` varchar(200) DEFAULT NULL COMMENT 'µŘÖ·±đĂű',
  `SPELL` varchar(200) DEFAULT NULL COMMENT 'ĽňĆ´',
  `STD_ADDR_TEMP_ID` bigint(12) DEFAULT NULL COMMENT 'µŘÖ·ÄŁ°ĺID',
  `DETAIL_NAME` varchar(400) DEFAULT NULL COMMENT 'µŘÖ·Č«ĂűĂčĘö',
  `DETAIL_SPELL` varchar(400) DEFAULT NULL COMMENT 'µŘÖ·Č«ĂűĽňĆ´',
  `TOPIC_WORD` varchar(255) DEFAULT NULL COMMENT 'ąŘĽü´Ę',
  `STATE` char(1) NOT NULL COMMENT '×´Ě¬',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '±¸×˘',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '´´˝¨Ę±Ľä',
  `MODIFY_DATE` datetime DEFAULT NULL COMMENT 'ĐŢ¸ÄĘ±Ľä',
  `MODIFIED_BY` varchar(200) DEFAULT NULL COMMENT 'ĐŢ¸ÄČË',
  `SOURCE` varchar(100) DEFAULT NULL COMMENT 'µŘÖ·Ŕ´Ô´',
  `ADDR_TYPE` varchar(100) DEFAULT NULL COMMENT 'µŘÖ·ŔŕĐÍ',
  `REGION_ID` varchar(100) DEFAULT NULL COMMENT '×â»§id',
  `TENANT_ID` varchar(100) DEFAULT NULL,
  `SYNC_STATE` varchar(32) DEFAULT NULL COMMENT 'µŘÖ·´¦Ŕí/Í¬˛˝±ęĽÇ',
  `COUNTRY` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL,
  `ZIPCODE` varchar(12) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(500) DEFAULT NULL,
  `UPSPEED` int(12) DEFAULT NULL,
  `DOWNSPEED` int(12) DEFAULT NULL,
  `TECHNOLOGY` varchar(100) DEFAULT NULL,
  `TYPE` char(1) DEFAULT '0',
  PRIMARY KEY (`ADDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_std_address_job_request` */

DROP TABLE IF EXISTS `res_std_address_job_request`;

CREATE TABLE `res_std_address_job_request` (
  `REQ_ID` bigint(12) NOT NULL COMMENT 'ID',
  `ADDRESS_ID` bigint(12) NOT NULL,
  `REQ_ACTION` varchar(100) DEFAULT NULL,
  `BUSINESS_IMPL` varchar(500) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `REMARK` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`REQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_std_address_log` */

DROP TABLE IF EXISTS `res_std_address_log`;

CREATE TABLE `res_std_address_log` (
  `H_ID` bigint(12) NOT NULL,
  `ADDR_ID` bigint(12) NOT NULL,
  `DISTRICT_PATH` varchar(100) DEFAULT NULL,
  `NAME` varchar(200) DEFAULT NULL,
  `ALIASES` varchar(200) DEFAULT NULL,
  `SPELL` varchar(200) DEFAULT NULL,
  `STD_ADDR_TEMP_ID` bigint(12) DEFAULT NULL,
  `DETAIL_NAME` varchar(400) DEFAULT NULL,
  `DETAIL_SPELL` varchar(400) DEFAULT NULL,
  `TOPIC_WORD` varchar(255) DEFAULT NULL,
  `STATE` char(1) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `MODIFY_DATE` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(200) DEFAULT NULL,
  `SOURCE` varchar(100) DEFAULT NULL,
  `ADDR_TYPE` varchar(100) DEFAULT NULL,
  `REGION_ID` varchar(100) DEFAULT NULL,
  `DEAL_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_std_address_pre` */

DROP TABLE IF EXISTS `res_std_address_pre`;

CREATE TABLE `res_std_address_pre` (
  `ADDR_ID` bigint(12) NOT NULL COMMENT '地址id',
  `NAME` varchar(200) DEFAULT NULL COMMENT '地址名称',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_DATE` datetime DEFAULT NULL COMMENT '修改时间',
  `MODIFIED_BY` varchar(200) DEFAULT NULL COMMENT '修改人',
  `SOURCE` varchar(100) DEFAULT NULL COMMENT '地址来源',
  `REGION_ID` char(10) DEFAULT NULL,
  `TENANT_ID` varchar(100) DEFAULT NULL COMMENT '租户ID',
  `REMARK` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ADDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址预处理表';

/*Table structure for table `res_std_address_pre_history` */

DROP TABLE IF EXISTS `res_std_address_pre_history`;

CREATE TABLE `res_std_address_pre_history` (
  `ADDR_ID` bigint(12) NOT NULL COMMENT '地址id',
  `NAME` varchar(200) DEFAULT NULL COMMENT '地址名称',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_DATE` datetime DEFAULT NULL COMMENT '修改时间',
  `MODIFIED_BY` varchar(200) DEFAULT NULL COMMENT '修改人',
  `SOURCE` varchar(100) DEFAULT NULL COMMENT '地址来源',
  `REGION_ID` char(10) DEFAULT NULL,
  `TENANT_ID` varchar(100) DEFAULT NULL COMMENT '租户ID',
  `REMARK` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ADDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址预处理历史表';

/*Table structure for table `res_std_type_temp_rel` */

DROP TABLE IF EXISTS `res_std_type_temp_rel`;

CREATE TABLE `res_std_type_temp_rel` (
  `ID` bigint(12) NOT NULL COMMENT 'ID',
  `TEMPLATE_ID` bigint(12) DEFAULT '-1',
  `ADDR_TYPE_ID` bigint(12) DEFAULT '-1',
  `LEVEL` varchar(2) DEFAULT '1',
  `VERSION` varchar(10) DEFAULT NULL,
  `UPDATE_RULE` varchar(100) DEFAULT NULL,
  `QUERY_RULE` varchar(100) DEFAULT NULL,
  `STATE` char(1) NOT NULL,
  `DISPALY` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_tenant` */

DROP TABLE IF EXISTS `res_tenant`;

CREATE TABLE `res_tenant` (
  `TENANT_ID` varchar(36) DEFAULT NULL COMMENT '租户ID',
  `REGION_ID` varchar(36) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL COMMENT '租户说明',
  `REMARK` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_tenant_addrtemp_rel` */

DROP TABLE IF EXISTS `res_tenant_addrtemp_rel`;

CREATE TABLE `res_tenant_addrtemp_rel` (
  `ID` bigint(12) NOT NULL COMMENT 'ID',
  `TENANT_ID` varchar(12) NOT NULL,
  `TEMP_ID` bigint(12) NOT NULL,
  `SPLITTER` char(1) NOT NULL,
  `VERSION` varchar(10) NOT NULL,
  `STATE` char(1) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `stub_addr_val` */

DROP TABLE IF EXISTS `stub_addr_val`;

CREATE TABLE `stub_addr_val` (
  `house_no` varchar(30) DEFAULT NULL,
  `is_addr_right` varchar(24) DEFAULT NULL,
  `is_has_choice_list` varchar(24) DEFAULT NULL,
  `is_tdc_error` varchar(24) DEFAULT NULL,
  `error_msg` varchar(9000) DEFAULT NULL,
  `addr_list_id` bigint(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `stub_addrs` */

DROP TABLE IF EXISTS `stub_addrs`;

CREATE TABLE `stub_addrs` (
  `addr_id` bigint(12) DEFAULT NULL,
  `addr_list_id` bigint(12) DEFAULT NULL,
  `street_name` varchar(192) DEFAULT NULL,
  `zipcode` varchar(48) DEFAULT NULL,
  `houseno` varchar(24) DEFAULT NULL,
  `maindoor` varchar(24) DEFAULT NULL,
  `floor` varchar(24) DEFAULT NULL,
  `doorno` varchar(24) DEFAULT NULL,
  `city` varchar(192) DEFAULT NULL,
  `municipality` varchar(30) DEFAULT NULL,
  KEY `INX_ADDRESS_ID` (`addr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `stub_online_node` */

DROP TABLE IF EXISTS `stub_online_node`;

CREATE TABLE `stub_online_node` (
  `node_id` bigint(12) DEFAULT NULL,
  `node_list_id` bigint(12) DEFAULT NULL,
  `co_description` varchar(30) DEFAULT NULL,
  `has_pstn` varchar(30) DEFAULT NULL,
  `pstn_number` varchar(60) DEFAULT NULL,
  `gds_evaluation` varchar(30) DEFAULT NULL,
  `technology` varchar(6000) DEFAULT NULL,
  `node_name` varchar(96) DEFAULT NULL,
  `node_type` varchar(96) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `stub_online_route` */

DROP TABLE IF EXISTS `stub_online_route`;

CREATE TABLE `stub_online_route` (
  `house_no` varchar(30) DEFAULT NULL,
  `equip_type` varchar(30) DEFAULT NULL,
  `route_number` varchar(6) DEFAULT NULL,
  `free_route_number` varchar(6) DEFAULT NULL,
  `node_list_id` bigint(12) DEFAULT NULL,
  `lock_speed` varchar(30) DEFAULT NULL,
  `product_info` varchar(9000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_sequences` */

DROP TABLE IF EXISTS `sys_sequences`;

CREATE TABLE `sys_sequences` (
  `SEQUENCE_NAME` varchar(60) NOT NULL,
  `START_BY` bigint(20) unsigned NOT NULL,
  `INCREMENT_BY` bigint(10) unsigned NOT NULL,
  `LAST_NUMBER` bigint(20) unsigned NOT NULL,
  `JVM_STEP_BY` bigint(10) DEFAULT '1',
  PRIMARY KEY (`SEQUENCE_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
