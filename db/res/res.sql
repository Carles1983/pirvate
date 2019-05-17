/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log : Database - res
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`res` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `res`;

/*Table structure for table `broad_band_month_card` */

DROP TABLE IF EXISTS `broad_band_month_card`;

CREATE TABLE `broad_band_month_card` (
  `CARD_ID` bigint(12) NOT NULL COMMENT '包月卡ID',
  `COUNTY_CODE` varchar(10) DEFAULT NULL COMMENT '暂时未用',
  `CARD_NUM` varchar(30) DEFAULT NULL COMMENT '卡号',
  `BROAD_BAND_ACCOUNT` varchar(30) DEFAULT NULL COMMENT '宽带账号',
  `PASSWD` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `BAND_WIDTH` bigint(20) DEFAULT NULL COMMENT '带宽',
  `MARKET` bigint(20) DEFAULT NULL COMMENT '暂时未用',
  `PRICE` bigint(12) DEFAULT NULL COMMENT '单位：分',
  `FAILURE_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `VALID_TIME_LEN` bigint(20) DEFAULT NULL COMMENT '单位：天',
  `VLAN1` bigint(20) DEFAULT NULL COMMENT '开始VLAN',
  `VLAN2` bigint(20) DEFAULT NULL COMMENT '结束VLAN',
  `IMP_STAFF` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `USE_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `USE_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `STATE` char(1) NOT NULL COMMENT '状态:U有效、E无效',
  `REMARKS` varchar(512) DEFAULT NULL COMMENT '备注',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  PRIMARY KEY (`CARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表用于保存固网宽带包月卡的导入数据';

/*Table structure for table `broad_band_month_card_his` */

DROP TABLE IF EXISTS `broad_band_month_card_his`;

CREATE TABLE `broad_band_month_card_his` (
  `CARD_ID` bigint(12) NOT NULL COMMENT '包月卡ID',
  `COUNTY_CODE` varchar(10) DEFAULT NULL COMMENT '暂时未用',
  `CARD_NUM` varchar(30) DEFAULT NULL COMMENT '卡号',
  `BROAD_BAND_ACCOUNT` varchar(30) DEFAULT NULL COMMENT '宽带账号',
  `PASSWD` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `BAND_WIDTH` bigint(20) DEFAULT NULL COMMENT '带宽',
  `MARKET` bigint(20) DEFAULT NULL COMMENT '暂时未用',
  `PRICE` bigint(12) DEFAULT NULL COMMENT '单位：分',
  `FAILURE_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `VALID_TIME_LEN` bigint(20) DEFAULT NULL COMMENT '单位：天',
  `VLAN1` bigint(20) DEFAULT NULL COMMENT '开始VLAN',
  `VLAN2` bigint(20) DEFAULT NULL COMMENT '结束VLAN',
  `IMP_STAFF` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `USE_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `USE_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `BAK_DATE` datetime DEFAULT NULL COMMENT '数据备份时间',
  `BAK_STAFF` bigint(12) DEFAULT NULL COMMENT '备份员工',
  `STATE` char(1) NOT NULL COMMENT '状态:U有效、E无效',
  `REMARKS` varchar(512) DEFAULT NULL COMMENT '备注',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  PRIMARY KEY (`CARD_ID`),
  KEY `IDX_BBAND_MOTH_CRD_2` (`CARD_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表用于保存固网宽带包月卡的导入数据';

/*Table structure for table `entiy_card_busi_pkg` */

DROP TABLE IF EXISTS `entiy_card_busi_pkg`;

CREATE TABLE `entiy_card_busi_pkg` (
  `PKG_ID` varchar(32) NOT NULL COMMENT '暂时未用',
  `PKG_NAME` varchar(64) DEFAULT NULL COMMENT '暂时未用',
  `PKG_PRICE` bigint(10) DEFAULT NULL COMMENT '业务包面值金额，单位：厘\n最长10位数字',
  `TOTAL_BAL_FEE` bigint(10) DEFAULT NULL COMMENT '暂时未用',
  `TOTAL_COUNT` bigint(10) DEFAULT NULL COMMENT '该包的业务总条数',
  `TOTAL_AVAIL` bigint(10) DEFAULT NULL COMMENT '暂时未用',
  `EFF_DATE` bigint(8) DEFAULT NULL COMMENT '8位数字，格式：YYYYMMDD',
  `EXP_DATE` bigint(8) DEFAULT NULL COMMENT '8位数字，格式：YYYYMMDD',
  PRIMARY KEY (`PKG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='本表记录指定业务包下所能承载的业务';

/*Table structure for table `entiy_card_busi_pkg_detail` */

DROP TABLE IF EXISTS `entiy_card_busi_pkg_detail`;

CREATE TABLE `entiy_card_busi_pkg_detail` (
  `PKG_ID` varchar(32) DEFAULT NULL COMMENT '业务包ID',
  `CLASS_ID` varchar(2) DEFAULT NULL COMMENT '业务类别ID',
  `DR_TYPE` bigint(6) DEFAULT NULL COMMENT '业务类别编码',
  `SP_CODE` varchar(20) DEFAULT NULL COMMENT 'SP代码',
  `OPER_CODE` varchar(20) DEFAULT NULL COMMENT '业务代码',
  `SERV_TYPE` char(2) DEFAULT NULL COMMENT '01：开通类\n02：下载安装类\n03：充值类',
  `CHRG_TYPE` varchar(2) DEFAULT NULL COMMENT '计费类型，最长2位数字，取值如下：\n1：免费\n2：按次/按条计费\n3：包月计费',
  `INFO_FEE` varchar(10) DEFAULT NULL COMMENT '单位：厘',
  `LIMIT_COUNT` varchar(10) DEFAULT NULL COMMENT '使用限制',
  `SERV_DESC` varchar(64) DEFAULT NULL COMMENT '业务描述',
  `SERV_NUM` varchar(10) DEFAULT NULL COMMENT '业务序号',
  `RESERVED` varchar(256) DEFAULT NULL COMMENT '保留字段',
  KEY `IDX_ENTI_PKG_DETAIL_1` (`PKG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `entiy_card_busi_pkg_type_info` */

DROP TABLE IF EXISTS `entiy_card_busi_pkg_type_info`;

CREATE TABLE `entiy_card_busi_pkg_type_info` (
  `PKG_ID` varchar(32) DEFAULT NULL COMMENT '业务包ID\n5位数字，递增ID',
  `CLASS_ID` varchar(2) DEFAULT NULL COMMENT '暂时未用',
  `AVAIL_COUNT` bigint(10) DEFAULT NULL COMMENT '该业务类别可使用的最大业务数量，最长10位数字',
  KEY `IDX_ENTI_TYPE_INFO_1` (`PKG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='实体卡业务包相关业务类别信息';

/*Table structure for table `entiy_card_busi_type` */

DROP TABLE IF EXISTS `entiy_card_busi_type`;

CREATE TABLE `entiy_card_busi_type` (
  `CLASS_ID` varchar(2) NOT NULL COMMENT '暂时未用',
  `CLASS_NAME` varchar(64) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`CLASS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `entiy_card_detail` */

DROP TABLE IF EXISTS `entiy_card_detail`;

CREATE TABLE `entiy_card_detail` (
  `CARD_NO` varchar(32) NOT NULL COMMENT '卡号',
  `PKG_ID` varchar(32) DEFAULT NULL COMMENT '业务包ID同实体卡业务包数据表（ENTIY_CARD_BUSI_PKG）关联',
  `PROVINCE_ID` varchar(32) DEFAULT NULL COMMENT '号码归属省代码',
  `ROAM_FLAG` char(1) DEFAULT NULL COMMENT '0——不可漫游\n1——可漫游',
  `VALID_DATE` datetime DEFAULT NULL COMMENT '卡的生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '卡的失效时间',
  `CARD_TYPE` varchar(2) DEFAULT NULL COMMENT '卡状态',
  `CARD_STATES` varchar(2) DEFAULT NULL COMMENT '卡号',
  `CARD_MONEY` bigint(10) DEFAULT NULL COMMENT '暂时未用',
  `STORAGE_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `ACTIVE_DATE` datetime DEFAULT NULL COMMENT '激活时间',
  `BUSINESS_CODE` varchar(256) DEFAULT NULL COMMENT '制卡商代码',
  `SALE_MONEY` bigint(10) DEFAULT NULL COMMENT '暂时未用',
  `PASSWD` varchar(256) DEFAULT NULL COMMENT '暂时未用',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  PRIMARY KEY (`CARD_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录实体卡所承载的业务信息\nENTIY_CARD_DETAIL';

/*Table structure for table `entiy_card_pkg_busi_mutex` */

DROP TABLE IF EXISTS `entiy_card_pkg_busi_mutex`;

CREATE TABLE `entiy_card_pkg_busi_mutex` (
  `PKG_ID` varchar(32) DEFAULT NULL COMMENT '暂时未用',
  `CLASS_ID` varchar(2) DEFAULT NULL COMMENT '暂时未用',
  `DR_TYPE` bigint(6) DEFAULT NULL COMMENT '暂时未用',
  `SP_CODE` varchar(20) DEFAULT NULL COMMENT '暂时未用',
  `OPRE_CODE` varchar(20) DEFAULT NULL COMMENT '暂时未用',
  `CHRG_TYPE` varchar(2) DEFAULT NULL COMMENT '计费类型，最长2位数字，取值如下：\n1：免费\n2：按次/按条计费\n3：包月计费',
  `EX_DR_TYPE` bigint(6) DEFAULT NULL COMMENT '暂时未用',
  `EX_SP_CODE` varchar(20) DEFAULT NULL COMMENT '暂时未用',
  `EX_OPER_CODE` varchar(20) DEFAULT NULL COMMENT '暂时未用',
  `EX_CHRG_TYPE` varchar(2) DEFAULT NULL COMMENT '计费类型，最长2位数字，取值如下：\n1：免费\n2：按次/按条计费\n3：包月计费',
  KEY `IDX_ENTI_BUSI_MTEX_1` (`PKG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='实体卡业务包子业务互斥';

/*Table structure for table `group_wlan_card_info` */

DROP TABLE IF EXISTS `group_wlan_card_info`;

CREATE TABLE `group_wlan_card_info` (
  `CARD_NO` varchar(32) NOT NULL COMMENT '暂时未用',
  `CARD_TYPE` varchar(4) DEFAULT NULL COMMENT '02- WLAN包时长资费30元/15小时； \n03- WLAN包时长资费50元/40小时；\n\n04- WLAN包时长资费100元/200小时\n\n05- WLAN包单位时间资费包小时；\n\n06- WLAN包单位时间资费包天；\n\n07- WLAN包单位时间资费包周；\n\n08- WLAN包单位时间资费包月',
  `VALID_DATE` datetime DEFAULT NULL COMMENT '由集团公司数据下发文件中导出',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '由集团公司数据下发文件中导出',
  `STORAGE_DATE` datetime DEFAULT NULL COMMENT '制卡商交付卡给BOSS系统的时间',
  `FILE_NAME` varchar(32) DEFAULT NULL COMMENT '由集团公司数据下发文件中导出',
  `ACTIVE_DATE` datetime DEFAULT NULL COMMENT '激活时间',
  `CARD_STS` varchar(2) DEFAULT NULL COMMENT '0:初始 1:预销售 9:已出库',
  `EXT1` varchar(32) DEFAULT NULL COMMENT '暂时未用',
  `EXT2` varchar(32) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`CARD_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='WLAN电子预付费卡信息表';

/*Table structure for table `gsm_hlr_info` */

DROP TABLE IF EXISTS `gsm_hlr_info`;

CREATE TABLE `gsm_hlr_info` (
  `HLR_CODE` varchar(10) NOT NULL COMMENT '号段',
  `AREA_CODE` varchar(5) DEFAULT NULL COMMENT '区域标识',
  `REGION_CODE` varchar(6) DEFAULT NULL COMMENT '地州编码',
  `PROV_CODE` varchar(5) DEFAULT NULL COMMENT '省代码',
  `BUREAU_CODE` varchar(5) DEFAULT NULL COMMENT '局方标识',
  `HLR_TYPE` bigint(3) DEFAULT NULL COMMENT '局向类型',
  `VALID_DATE` datetime NOT NULL COMMENT '启用时间',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '结束时间',
  `MODIFY_DATE` datetime DEFAULT NULL COMMENT '修改时间',
  `USER_FLAG` varchar(8) DEFAULT NULL COMMENT '用户标识',
  PRIMARY KEY (`HLR_CODE`,`VALID_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全国号码归属：包括移动、电信、联通号段';

/*Table structure for table `h_res_bat_deal` */

DROP TABLE IF EXISTS `h_res_bat_deal`;

CREATE TABLE `h_res_bat_deal` (
  `H_ID` bigint(14) NOT NULL COMMENT '暂时未用',
  `DATA_ID` bigint(14) NOT NULL COMMENT '暂时未用',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次号',
  `BUSINESS_ID` varchar(8) DEFAULT NULL COMMENT '业务代码',
  `RES_ID` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `IS_SMS` bigint(1) DEFAULT NULL COMMENT '暂时未用',
  `TRADE_ID` bigint(4) DEFAULT NULL COMMENT '暂时未用',
  `PLAN_ID` bigint(8) DEFAULT NULL COMMENT '暂时未用',
  `SN` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `IMSI` varchar(20) DEFAULT NULL COMMENT 'IMEI编号',
  `PIN1` varchar(8) DEFAULT NULL COMMENT 'PIN1',
  `PIN2` varchar(8) DEFAULT NULL COMMENT 'PIN2',
  `PUK1` varchar(8) DEFAULT NULL COMMENT 'PUK1',
  `PUK2` varchar(8) DEFAULT NULL COMMENT 'PUK2',
  `OPC` varchar(32) DEFAULT NULL COMMENT 'OPC',
  `KI` varchar(40) DEFAULT NULL COMMENT 'KI',
  `RES_NUMBER_HLR` varchar(7) DEFAULT NULL COMMENT '暂时未用',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `PS_STATUS` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `CARD_DATA_TYPE` varchar(3) DEFAULT NULL COMMENT '卡数据类型',
  `CARD_MAKE_TYPE` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `IS_BAK_CARD` varchar(2) DEFAULT NULL COMMENT '暂时未用',
  `DOMAIN_TYPE` varchar(2) DEFAULT NULL COMMENT '暂时未用',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `STATE_DATE` datetime DEFAULT NULL COMMENT '状态时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `EXT1` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT4` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT5` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`H_ID`,`DATA_ID`),
  KEY `IDX_H_RES_BAT_DEAL` (`BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录资源批处理历史';

/*Table structure for table `ict_sale_event` */

DROP TABLE IF EXISTS `ict_sale_event`;

CREATE TABLE `ict_sale_event` (
  `BUSI_NBR` bigint(12) NOT NULL COMMENT '由渠道系统产生',
  `PROVINCE_ID` varchar(3) NOT NULL COMMENT '暂时未用',
  `BUSI_DATE` datetime NOT NULL COMMENT 'BUSI_DATE',
  `OP_ID` bigint(8) NOT NULL COMMENT '操作员',
  `ORG_ID` bigint(8) NOT NULL COMMENT '组织编号',
  `DONE_DATE` datetime NOT NULL COMMENT '受理编号',
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `OPR_NUMB` varchar(32) NOT NULL COMMENT 'OPEN_OFFICE',
  `EVENT_TYPE` bigint(2) NOT NULL COMMENT '0-终端销售\n1—终端销售退货\n2—终端销售换货',
  `SOLD_IMEI` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `RETURN_IMEI` varchar(30) DEFAULT NULL COMMENT 'RETURN_IMEI',
  `EVENT_TIME` varchar(14) NOT NULL COMMENT 'YYYYMMDDHHMMSS (24小时制)',
  `SHOP_CODE` varchar(15) DEFAULT NULL COMMENT '从省BOSS中移动营业厅店编码中取值',
  `SALES_KIND` bigint(4) NOT NULL COMMENT '是否有销售酬金\n0－ 没有\n1－ 有',
  `MARKET_PRICE` bigint(10) DEFAULT NULL COMMENT '单位：分',
  `ACTUAL_SALES_PRICE` bigint(10) DEFAULT NULL COMMENT '实际售价(减去补贴或者减收部份)',
  `PROMOTION_CODE` varchar(32) DEFAULT NULL COMMENT 'PROMOTION_CODE',
  `PROMOTION_TYPE` bigint(2) DEFAULT NULL COMMENT '1- 全网营销方案\n2- 省公司自定营销方案',
  `MOBILE_NO` varchar(11) DEFAULT NULL COMMENT '如果是捆绑销售，请给出手机号码',
  `MATERIAL_CODE` varchar(30) DEFAULT NULL COMMENT 'MATERIAL_CODE',
  PRIMARY KEY (`BUSI_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `ict_sale_event_err` */

DROP TABLE IF EXISTS `ict_sale_event_err`;

CREATE TABLE `ict_sale_event_err` (
  `BUSI_NBR` bigint(12) NOT NULL COMMENT 'BUSI_NBR',
  `PROVINCE_ID` varchar(3) NOT NULL COMMENT '暂时未用',
  `BUSI_DATE` datetime NOT NULL COMMENT 'BUSI_DATE',
  `OP_ID` bigint(8) NOT NULL COMMENT '操作员',
  `ORG_ID` bigint(8) NOT NULL COMMENT '组织编号',
  `DONE_DATE` datetime NOT NULL COMMENT '受理编号',
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `OPR_NUMB` varchar(32) NOT NULL COMMENT 'OPR_NUMB',
  `EVENT_TYPE` bigint(2) NOT NULL COMMENT '暂时未用',
  `SOLD_IMEI` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `RETURN_IMEI` varchar(30) DEFAULT NULL COMMENT 'RETURN_IMEI',
  `EVENT_TIME` varchar(14) NOT NULL COMMENT 'EVENT_TIME',
  `SHOP_CODE` varchar(15) DEFAULT NULL COMMENT '暂时未用',
  `SALES_KIND` bigint(4) NOT NULL COMMENT 'SALES_KIND',
  `MARKET_PRICE` bigint(10) DEFAULT NULL COMMENT 'MARKET_PRICE',
  `ACTUAL_SALES_PRICE` bigint(10) DEFAULT NULL COMMENT 'ACTUAL_SALES_PRICE',
  `PROMOTION_CODE` varchar(32) DEFAULT NULL COMMENT 'PROMOTION_CODE',
  `PROMOTION_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `MOBILE_NO` varchar(11) DEFAULT NULL COMMENT 'MOBILE_NO',
  `MATERIAL_CODE` varchar(30) DEFAULT NULL COMMENT 'MATERIAL_CODE',
  `ERR_DATE` datetime DEFAULT NULL COMMENT 'ERR_DATE',
  `ERR_MSG` varchar(4000) DEFAULT NULL COMMENT 'ERR_MSG'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `ict_sale_event_h` */

DROP TABLE IF EXISTS `ict_sale_event_h`;

CREATE TABLE `ict_sale_event_h` (
  `BUSI_NBR` bigint(12) NOT NULL COMMENT 'BUSI_NBR',
  `PROVINCE_ID` varchar(3) NOT NULL COMMENT '暂时未用',
  `BUSI_DATE` datetime NOT NULL COMMENT 'BUSI_DATE',
  `OP_ID` bigint(8) NOT NULL COMMENT '操作员',
  `ORG_ID` bigint(8) NOT NULL COMMENT '组织编号',
  `DONE_DATE` datetime NOT NULL COMMENT '受理编号',
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `OPR_NUMB` varchar(32) NOT NULL COMMENT 'OPR_NUMB',
  `EVENT_TYPE` bigint(2) NOT NULL COMMENT '暂时未用',
  `SOLD_IMEI` varchar(30) DEFAULT NULL COMMENT 'SOLD_IMEI',
  `RETURN_IMEI` varchar(30) DEFAULT NULL COMMENT 'RETURN_IMEI',
  `EVENT_TIME` varchar(14) NOT NULL COMMENT 'EVENT_TIME',
  `SHOP_CODE` varchar(15) DEFAULT NULL COMMENT 'SHOP_CODE',
  `SALES_KIND` bigint(4) NOT NULL COMMENT 'SALES_KIND',
  `MARKET_PRICE` bigint(10) DEFAULT NULL COMMENT 'MARKET_PRICE',
  `ACTUAL_SALES_PRICE` bigint(10) DEFAULT NULL COMMENT 'ACTUAL_SALES_PRICE',
  `PROMOTION_CODE` varchar(32) DEFAULT NULL COMMENT 'PROMOTION_CODE',
  `PROMOTION_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `MOBILE_NO` varchar(11) DEFAULT NULL COMMENT 'MOBILE_NO',
  `MATERIAL_CODE` varchar(30) DEFAULT NULL COMMENT 'MATERIAL_CODE',
  `TF_DATE` datetime DEFAULT NULL COMMENT 'TF_DATE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='历史表';

/*Table structure for table `mr_inventory_alarm_rem` */

DROP TABLE IF EXISTS `mr_inventory_alarm_rem`;

CREATE TABLE `mr_inventory_alarm_rem` (
  `MR_INVENTORY_ALARM_REMIND_ID` char(10) NOT NULL,
  `INVENTORY_ALARM_RULE_ID` decimal(12,0) NOT NULL,
  `STAFF_ID` decimal(12,0) DEFAULT NULL,
  `REMIND_METHOD_ID` decimal(12,0) DEFAULT NULL,
  `REMIND_MEDIUM` varchar(128) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `DONE_DATE` date DEFAULT NULL,
  `EFFECTIVE_DATE` date DEFAULT NULL,
  `EXPIRE_DATE` date DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`MR_INVENTORY_ALARM_REMIND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_inventory_alarmrule` */

DROP TABLE IF EXISTS `mr_inventory_alarmrule`;

CREATE TABLE `mr_inventory_alarmrule` (
  `INVENTORY_ALARM_RULE_ID` decimal(12,0) NOT NULL,
  `MKT_RES_STORAGE_ID` decimal(12,0) DEFAULT NULL,
  `MKT_RES_INVENTORY_ID` decimal(12,0) DEFAULT NULL,
  `QUANTITY` varchar(128) DEFAULT NULL,
  `ROUND_TIME` varchar(512) DEFAULT NULL COMMENT '预留',
  `UNIT` varchar(64) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '10完成 20接触中',
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `DONE_DATE` date DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`INVENTORY_ALARM_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_inventory_check` */

DROP TABLE IF EXISTS `mr_inventory_check`;

CREATE TABLE `mr_inventory_check` (
  `INVENTORY_CHECK_ID` decimal(12,0) NOT NULL,
  `CHECK_ORG_ID` decimal(12,0) DEFAULT NULL,
  `CHECK_DATE` date DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '10完成 20接触中',
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `DONE_DATE` date DEFAULT NULL,
  `EFFECTIVE_DATE` date DEFAULT NULL,
  `EXPIRE_DATE` date DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`INVENTORY_CHECK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_inventory_detail` */

DROP TABLE IF EXISTS `mr_inventory_detail`;

CREATE TABLE `mr_inventory_detail` (
  `INVENTORY_CHECK_DETAIL_ID` decimal(12,0) NOT NULL,
  `MKT_RES_INVENTORY_ID` decimal(12,0) DEFAULT NULL,
  `INVENTORY_CHECK_ID` decimal(12,0) DEFAULT NULL,
  `SUM_AMOUNT` decimal(12,0) DEFAULT NULL,
  `REAL_AMOUNT` decimal(12,0) DEFAULT NULL,
  `DIFF_AMOUNT` decimal(12,0) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '10完成 20接触中',
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `DONE_DATE` date DEFAULT NULL,
  `EFFECTIVE_DATE` date DEFAULT NULL,
  `EXPIRE_DATE` date DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`INVENTORY_CHECK_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_level_pattern` */

DROP TABLE IF EXISTS `mr_level_pattern`;

CREATE TABLE `mr_level_pattern` (
  `LEVEL_PATTERN_ID` decimal(12,0) NOT NULL,
  `LEVEL_RULE_ID` decimal(12,0) DEFAULT NULL,
  `PARENT_LEVEL_PATTERN_ID` decimal(12,0) DEFAULT NULL,
  `PATTERN_NAME` varchar(128) DEFAULT NULL,
  `FORMAT` varchar(128) DEFAULT NULL,
  `PRIORTY` decimal(4,0) DEFAULT NULL,
  `MATCH_POS_TYPE` varchar(64) DEFAULT NULL,
  `MATCH_POS` decimal(4,0) DEFAULT NULL,
  `RESULT_TYPE` varchar(8) DEFAULT NULL,
  `IS_COMPOSE_TYPE` varchar(8) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '10完成 20接触中',
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`LEVEL_PATTERN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_level_price` */

DROP TABLE IF EXISTS `mr_level_price`;

CREATE TABLE `mr_level_price` (
  `LEVEL_PRICE_ID` decimal(12,0) NOT NULL,
  `SERVICE_NUMBER_LEVEL_ID` decimal(12,0) DEFAULT NULL,
  `PRICE` decimal(12,0) DEFAULT NULL,
  `PRESENT_MONTH` decimal(12,0) DEFAULT NULL,
  `DEPOSIT_MONTH` decimal(12,0) DEFAULT NULL,
  `DEPOSIT_AMOUNT` decimal(12,0) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '10完成 20接触中',
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`LEVEL_PRICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_level_rule` */

DROP TABLE IF EXISTS `mr_level_rule`;

CREATE TABLE `mr_level_rule` (
  `LEVEL_RULE_ID` decimal(12,0) NOT NULL,
  `SERVICE_NUMBER_LEVEL_ID` decimal(12,0) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `PRIORTY` decimal(4,0) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '10完成 20接触中',
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`LEVEL_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_materiel_inst` */

DROP TABLE IF EXISTS `mr_materiel_inst`;

CREATE TABLE `mr_materiel_inst` (
  `MATERIEL_INST_ID` decimal(12,0) NOT NULL,
  `RES_INST_ID` decimal(12,0) DEFAULT NULL,
  `RES_CODE` varchar(32) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '10完成 20接触中',
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `DONE_DATE` date DEFAULT NULL,
  `EFFECTIVE_DATE` date DEFAULT NULL,
  `EXPIRE_DATE` date DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_mkt_res_batch` */

DROP TABLE IF EXISTS `mr_mkt_res_batch`;

CREATE TABLE `mr_mkt_res_batch` (
  `MKT_RES_BATCH_ID` decimal(12,0) NOT NULL,
  `MKT_RES_INVENTORY_ID` decimal(12,0) DEFAULT NULL,
  `AMOUNT` decimal(12,0) DEFAULT NULL,
  `PRICE` decimal(12,0) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`MKT_RES_BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_mkt_res_inst_char` */

DROP TABLE IF EXISTS `mr_mkt_res_inst_char`;

CREATE TABLE `mr_mkt_res_inst_char` (
  `MKT_RES_INST_CHAR_ID` decimal(12,0) NOT NULL,
  `RES_INST_ID` decimal(12,0) DEFAULT NULL,
  `CHAR_SPEC_ID` decimal(12,0) DEFAULT NULL,
  `CHAR_VALUE_ID` decimal(12,0) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL COMMENT '预留',
  `VALUE` varchar(512) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '10完成 20接触中',
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `DONE_DATE` date DEFAULT NULL,
  `EFFECTIVE_DATE` date DEFAULT NULL,
  `EXPIRE_DATE` date DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`MKT_RES_INST_CHAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_mkt_res_inventory` */

DROP TABLE IF EXISTS `mr_mkt_res_inventory`;

CREATE TABLE `mr_mkt_res_inventory` (
  `MKT_RES_INVENTORY_ID` bigint(12) NOT NULL,
  `AMOUNT` bigint(12) DEFAULT NULL,
  `MKT_RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `MKT_RES_STORAGE_ID` bigint(12) DEFAULT NULL,
  `AVAILABLE_AMOUNT` bigint(12) DEFAULT NULL,
  `USED_AMOUNT` bigint(12) DEFAULT NULL COMMENT '预留',
  `OPEN_DATE` datetime DEFAULT NULL,
  `CLOSE_DATE` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '10完成 20接触中',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`MKT_RES_INVENTORY_ID`),
  UNIQUE KEY `RES_STORE_ID` (`MKT_RES_SPEC_ID`,`MKT_RES_STORAGE_ID`),
  KEY `IDX_STORE_ID` (`MKT_RES_STORAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_mkt_res_price` */

DROP TABLE IF EXISTS `mr_mkt_res_price`;

CREATE TABLE `mr_mkt_res_price` (
  `MKT_RES_PRICE_ID` decimal(12,0) NOT NULL,
  `MKT_RES_SPEC_ID` decimal(12,0) DEFAULT NULL,
  `SALE_PRICE` decimal(12,0) DEFAULT NULL,
  `PRICE_UNIT` varchar(64) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '10完成 20接触中',
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`MKT_RES_PRICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_mkt_res_spec` */

DROP TABLE IF EXISTS `mr_mkt_res_spec`;

CREATE TABLE `mr_mkt_res_spec` (
  `MKT_RES_SPEC_ID` bigint(12) NOT NULL COMMENT '资源规格',
  `MKT_RES_SPEC_TYPE_ID` bigint(12) DEFAULT NULL,
  `MKT_RES_TYPE_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `SPEC_CODE` varchar(64) NOT NULL,
  `SPEC_NAME` varchar(256) NOT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL COMMENT '描述',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '事务编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `IS_HOMOGENEOUS` int(11) DEFAULT NULL COMMENT '是否同质',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '变更日期',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(20) DEFAULT NULL COMMENT '创建操作员组织',
  `REGION_ID` bigint(6) DEFAULT NULL COMMENT '租户片段标识',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `STATE` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`MKT_RES_SPEC_ID`),
  UNIQUE KEY `IDX_SPEC_ID` (`MKT_RES_SPEC_ID`),
  UNIQUE KEY `IDX_SPEC_CODE` (`SPEC_CODE`),
  KEY `IDX_TYPE_ID` (`MKT_RES_SPEC_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_mkt_res_spec_char` */

DROP TABLE IF EXISTS `mr_mkt_res_spec_char`;

CREATE TABLE `mr_mkt_res_spec_char` (
  `MKT_RES_SPEC_CHAR_REL_ID` bigint(12) NOT NULL COMMENT '服务特征规格关系编码',
  `MKT_RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `CHAR_SPEC_ID` bigint(12) NOT NULL,
  `CHAR_NAME` varchar(256) DEFAULT NULL,
  `CHAR_SPEC_VALUE_ID` bigint(12) DEFAULT NULL,
  `CHAR_VALUE_NAME` varchar(256) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '事务编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `VALUE` varchar(256) DEFAULT NULL COMMENT '特征值',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `STATE` varchar(8) DEFAULT NULL,
  `IS_CUSTOMIZED` int(11) DEFAULT NULL,
  PRIMARY KEY (`MKT_RES_SPEC_CHAR_REL_ID`),
  UNIQUE KEY `IDX_ID` (`MKT_RES_SPEC_CHAR_REL_ID`),
  KEY `IDX_CHAR_SPEC` (`CHAR_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_mkt_res_spec_type` */

DROP TABLE IF EXISTS `mr_mkt_res_spec_type`;

CREATE TABLE `mr_mkt_res_spec_type` (
  `MKT_RES_SPEC_TYPE_ID` bigint(12) NOT NULL COMMENT '资源类型',
  `PARENT_MKT_RES_SPEC_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '上级资源类型',
  `NAME` varchar(128) DEFAULT NULL COMMENT '名称',
  `CODE` varchar(128) DEFAULT NULL COMMENT '编码',
  `DESCRIPTION` varchar(512) DEFAULT NULL COMMENT '描述',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '事务编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `STATE` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`MKT_RES_SPEC_TYPE_ID`),
  UNIQUE KEY `IDX_TYPE_ID` (`MKT_RES_SPEC_TYPE_ID`),
  KEY `IDX_CODE` (`CODE`),
  KEY `IDX_NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_mkt_res_storage` */

DROP TABLE IF EXISTS `mr_mkt_res_storage`;

CREATE TABLE `mr_mkt_res_storage` (
  `MKT_RES_STORAGE_ID` decimal(12,0) NOT NULL,
  `MKT_RES_STORE_TYPE_ID` decimal(12,0) NOT NULL,
  `PARENT_MKT_RES_STORAGE_ID` decimal(12,0) DEFAULT NULL,
  `CODE` varchar(32) DEFAULT NULL,
  `NAME` varchar(128) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL COMMENT '预留',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '10完成 20接触中',
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `DONE_DATE` date DEFAULT NULL,
  `EFFECTIVE_DATE` date DEFAULT NULL,
  `EXPIRE_DATE` date DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`MKT_RES_STORAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_mkt_res_store_type` */

DROP TABLE IF EXISTS `mr_mkt_res_store_type`;

CREATE TABLE `mr_mkt_res_store_type` (
  `MKT_RES_STORE_TYPE_ID` decimal(12,0) NOT NULL,
  `NAME` varchar(128) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL COMMENT '预留',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '10完成 20接触中',
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `DONE_DATE` date DEFAULT NULL,
  `EFFECTIVE_DATE` date DEFAULT NULL,
  `EXPIRE_DATE` date DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`MKT_RES_STORE_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_mkt_res_type_attr_val` */

DROP TABLE IF EXISTS `mr_mkt_res_type_attr_val`;

CREATE TABLE `mr_mkt_res_type_attr_val` (
  `DONE_CODE` decimal(12,0) DEFAULT NULL COMMENT '事务编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL COMMENT '创建操作员',
  `MKT_RES_TYPE_CHAR_REL_ID` decimal(12,0) NOT NULL,
  `REL_ID` decimal(12,0) DEFAULT NULL COMMENT '关联ID',
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL COMMENT '创建操作员组织',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `ORG_ID` decimal(12,0) DEFAULT NULL COMMENT '组织单元',
  `CHAR_VALUE_ID` decimal(12,0) DEFAULT NULL,
  `OP_ID` decimal(12,0) DEFAULT NULL COMMENT '操作员',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `STATE` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`MKT_RES_TYPE_CHAR_REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_mkt_res_type_template` */

DROP TABLE IF EXISTS `mr_mkt_res_type_template`;

CREATE TABLE `mr_mkt_res_type_template` (
  `RES_TYPE_TEMPLATE_ID` bigint(12) NOT NULL COMMENT '服务特征规格关系编码',
  `RES_TYPE_TEMPLATE_NAME` varchar(64) NOT NULL,
  `RES_TYPE_TEMPLATE_CODE` varchar(64) NOT NULL,
  `MKT_RES_TYPE_ID` bigint(12) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '事务编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `IS_CUSTOMIZED` int(11) DEFAULT NULL,
  PRIMARY KEY (`RES_TYPE_TEMPLATE_ID`),
  KEY `IDX_ID` (`RES_TYPE_TEMPLATE_ID`),
  KEY `IDX_TYPE_ID` (`RES_TYPE_TEMPLATE_ID`,`MKT_RES_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_mkt_res_type_template_attr` */

DROP TABLE IF EXISTS `mr_mkt_res_type_template_attr`;

CREATE TABLE `mr_mkt_res_type_template_attr` (
  `RES_TYPE_TEMPLATE_ATTR_ID` bigint(12) NOT NULL COMMENT '关联ID',
  `RES_TYPE_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `CHAR_SPEC_ID` bigint(12) DEFAULT NULL,
  `CHAR_SPEC_NAME` varchar(64) DEFAULT NULL,
  `VALUE` varchar(256) DEFAULT NULL COMMENT '特征值',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '事务编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `STATE` varchar(8) DEFAULT NULL,
  `IS_CUSTOMIZED` int(11) DEFAULT NULL,
  PRIMARY KEY (`RES_TYPE_TEMPLATE_ATTR_ID`),
  UNIQUE KEY `IDX_ID` (`RES_TYPE_TEMPLATE_ATTR_ID`),
  KEY `IDX_TEMPLATE_ID` (`RES_TYPE_TEMPLATE_ID`),
  KEY `IDX_CHAR_SPEC_ID` (`CHAR_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_mkt_res_type_template_attr_val` */

DROP TABLE IF EXISTS `mr_mkt_res_type_template_attr_val`;

CREATE TABLE `mr_mkt_res_type_template_attr_val` (
  `RES_TYPE_TEMPLATE_ATTR_VAL_ID` bigint(12) NOT NULL COMMENT '关联ID',
  `RES_TYPE_TEMPLATE_ATTR_ID` bigint(12) DEFAULT NULL,
  `CHAR_VALUE_ID` bigint(12) DEFAULT NULL,
  `VALUE` varchar(256) DEFAULT NULL COMMENT '特征值',
  `DISPLAY_VALUE` varchar(256) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '事务编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `STATE` varchar(8) DEFAULT NULL,
  `IS_CUSTOMIZED` int(11) DEFAULT NULL,
  PRIMARY KEY (`RES_TYPE_TEMPLATE_ATTR_VAL_ID`),
  UNIQUE KEY `IDX_ID` (`RES_TYPE_TEMPLATE_ATTR_VAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mr_mtkres_charspec_val` */

DROP TABLE IF EXISTS `mr_mtkres_charspec_val`;

CREATE TABLE `mr_mtkres_charspec_val` (
  `REL_ID` decimal(12,0) NOT NULL,
  `CHAR_VALUE_ID` decimal(12,0) DEFAULT NULL,
  `MKT_RES_SPEC_CHAR_REL_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_OP_ID` decimal(12,0) DEFAULT NULL,
  `CREATE_ORG_ID` decimal(12,0) DEFAULT NULL,
  `STATE` varchar(8) DEFAULT NULL COMMENT '10完成 20接触中',
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `ORG_ID` decimal(12,0) DEFAULT NULL,
  `DONE_CODE` decimal(12,0) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `org_op_rel` */

DROP TABLE IF EXISTS `org_op_rel`;

CREATE TABLE `org_op_rel` (
  `REL_ID` bigint(12) NOT NULL COMMENT 'REL_ID',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `DONE_OP_ID` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `LOGIN_ORG` bigint(12) DEFAULT NULL COMMENT 'LOGIN_ORG',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理编号',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` bigint(12) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`REL_ID`),
  KEY `IDX_ORG_OP_REL_1` (`ORG_ID`,`OP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自助服务终端配置';

/*Table structure for table `rb_char_spec` */

DROP TABLE IF EXISTS `rb_char_spec`;

CREATE TABLE `rb_char_spec` (
  `CHAR_SPEC_ID` bigint(12) NOT NULL COMMENT '特征规格编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '事务编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `CAN_MODIFY` int(11) DEFAULT NULL COMMENT '是否可修改',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `VALUE_TYPE` varchar(8) DEFAULT NULL COMMENT '特征规格值类型',
  `MIN_CARDINALITY` bigint(4) DEFAULT NULL COMMENT '特征值最小基数',
  `CHAR_SPEC_TYPE` varchar(8) DEFAULT NULL COMMENT '特征规格类型',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `CHAR_SPEC_NAME` varchar(128) DEFAULT NULL COMMENT '特征规格名称',
  `DERIVATION_FORMULA` varchar(1024) DEFAULT NULL COMMENT '取值计算公式',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `MAX_CARDINALITY` bigint(4) DEFAULT NULL COMMENT '特征值最大基数',
  `STATE` varchar(8) DEFAULT NULL,
  `IS_CUSTOMIZED` int(11) DEFAULT NULL COMMENT '是否客户定制化特征',
  `IS_COMPOSITE` int(11) DEFAULT NULL COMMENT '是否复合特征规格',
  `DESCRIPTION` varchar(512) DEFAULT NULL COMMENT '描述',
  `CODE` varchar(32) DEFAULT NULL,
  `IS_MULTI` int(11) DEFAULT NULL COMMENT '是否多值',
  PRIMARY KEY (`CHAR_SPEC_ID`),
  UNIQUE KEY `IDX_ID` (`CHAR_SPEC_ID`),
  KEY `IDX_CODE` (`CODE`),
  KEY `IDX_NAME` (`CHAR_SPEC_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `rb_char_spec_h` */

DROP TABLE IF EXISTS `rb_char_spec_h`;

CREATE TABLE `rb_char_spec_h` (
  `CHAR_SPEC_ID` bigint(12) NOT NULL COMMENT '特征规格编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '事务编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `CAN_MODIFY` int(11) DEFAULT NULL COMMENT '是否可修改',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `VALUE_TYPE` varchar(8) DEFAULT NULL COMMENT '特征规格值类型',
  `MIN_CARDINALITY` bigint(4) DEFAULT NULL COMMENT '特征值最小基数',
  `CHAR_SPEC_TYPE` varchar(8) DEFAULT NULL COMMENT '特征规格类型',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `CHAR_SPEC_NAME` varchar(128) DEFAULT NULL COMMENT '特征规格名称',
  `DERIVATION_FORMULA` varchar(1024) DEFAULT NULL COMMENT '取值计算公式',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `MAX_CARDINALITY` bigint(4) DEFAULT NULL COMMENT '特征值最大基数',
  `STATE` varchar(8) DEFAULT NULL,
  `IS_CUSTOMIZED` int(11) DEFAULT NULL COMMENT '是否客户定制化特征',
  `IS_COMPOSITE` int(11) DEFAULT NULL COMMENT '是否复合特征规格',
  `DESCRIPTION` varchar(512) DEFAULT NULL COMMENT '描述',
  `CODE` varchar(32) DEFAULT NULL,
  `IS_MULTI` int(11) DEFAULT NULL COMMENT '是否多值',
  PRIMARY KEY (`CHAR_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `rb_char_spec_value` */

DROP TABLE IF EXISTS `rb_char_spec_value`;

CREATE TABLE `rb_char_spec_value` (
  `CHAR_VALUE_ID` bigint(12) NOT NULL COMMENT '特征规格值编码',
  `CHAR_SPEC_ID` bigint(12) DEFAULT NULL,
  `DISPLAY_VALUE` varchar(256) DEFAULT NULL COMMENT '显示值',
  `VALUE` varchar(256) DEFAULT NULL COMMENT '特征值',
  `VALUE_FROM` bigint(12) DEFAULT NULL COMMENT '取值下限',
  `VALUE_TO` bigint(12) DEFAULT NULL COMMENT '取值上限',
  `CODE` varchar(32) DEFAULT NULL COMMENT '编码',
  `STATE` varchar(8) DEFAULT NULL,
  `RANGE_INTERVAL` bigint(12) DEFAULT NULL COMMENT '取值间隔',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '事务编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `IS_DEFAULT` int(11) DEFAULT NULL COMMENT '是否默认值',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  PRIMARY KEY (`CHAR_VALUE_ID`),
  KEY `IDX_ID` (`CHAR_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

/*Table structure for table `res_access_num_origin` */

DROP TABLE IF EXISTS `res_access_num_origin`;

CREATE TABLE `res_access_num_origin` (
  `RES_ID` varchar(30) NOT NULL COMMENT '号码',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '资源规格编号',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT 'res_code的前两位为res_type。后四位为资源的编号，由系统自动据各类别序列号得出。在安装系统时已填写【资源型号定义表】）GSM手机号码100001，SIM卡200001，STK卡为200002，全系统统一且不能修改，故在资源型号定义模块中不提供资源类别为手机号码及SIM卡的维护。',
  `RES_USED_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `PRE_DATE` datetime DEFAULT NULL COMMENT '预约时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '1营业2代理3租机租卡4数据用5传真用\n6预付费可充值用7测试用8公务用9禁用10局内保留 \n11经营保留12 预付费一次性卡用13神州卡号码用14模转数专用',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1-封存；\n2-开放；\n3-选中;\n4-预约；\n5－占用；\n6－冷冻 ；\n7-空闲；\n8－废弃；',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '0-未匹配未开通1-已匹配已开通2-已匹配未开通',
  `RES_NUMBER_HLR` varchar(7) DEFAULT NULL COMMENT '对应与RES_NUMBER_HLR 的res_number_hlr',
  `TRADE_ID` bigint(4) DEFAULT NULL COMMENT '暂时未用',
  `PLAN_ID` bigint(8) DEFAULT NULL COMMENT '暂时未用',
  `CHOOSE_LEVEL` bigint(2) DEFAULT NULL COMMENT '1-10：减费号码\n11－20：普通号码\n21－30：优选号码',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`RES_ID`),
  KEY `IDX_RES_ANUM_ORI_1` (`ORG_ID`),
  KEY `IDX_RES_ANUM_ORI_2` (`RES_NUMBER_HLR`),
  KEY `IDX_RES_ANUM_ORI_3` (`DONE_CODE`),
  KEY `IDX_RES_ANUM_ORI_4` (`RES_STORE_ID`),
  KEY `IDX_RES_ANUM_ORI_9` (`RES_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表存储的是短信或彩信接入号码明细信息；';

/*Table structure for table `res_access_num_origin_his` */

DROP TABLE IF EXISTS `res_access_num_origin_his`;

CREATE TABLE `res_access_num_origin_his` (
  `RES_ID` varchar(30) NOT NULL COMMENT '号码',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT 'res_code的前两位为res_type。后四位为资源的编号，由系统自动据各类别序列号得出。在安装系统时已填写【资源型号定义表】）GSM手机号码100001，SIM卡200001，STK卡为200002，全系统统一且不能修改，故在资源型号定义模块中不提供资源类别为手机号码及SIM卡的维护。',
  `RES_USED_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '1营业2代理3租机租卡4数据用5传真用\n6预付费可充值用7测试用8公务用9禁用10局内保留 \n11经营保留12 预付费一次性卡用13神州卡号码用14模转数专用',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1-封存；\n2-开放；\n3-选中;\n4-预约；\n5－占用；\n6－冷冻 ；\n7-空闲；\n8－废弃；',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '0-未匹配未开通1-已匹配已开通2-已匹配未开通',
  `RES_NUMBER_HLR` varchar(7) DEFAULT NULL COMMENT '对应与RES_NUMBER_HLR 的res_number_hlr',
  `TRADE_ID` bigint(4) DEFAULT NULL COMMENT '暂时未用',
  `PLAN_ID` bigint(8) DEFAULT NULL COMMENT '暂时未用',
  `CHOOSE_LEVEL` bigint(2) DEFAULT NULL COMMENT '1-10：减费号码\n11－20：普通号码\n21－30：优选号码',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  PRIMARY KEY (`RES_ID`),
  KEY `IDX_RES_ANUM_ORI_5` (`ORG_ID`),
  KEY `IDX_RES_ANUM_ORI_6` (`RES_NUMBER_HLR`),
  KEY `IDX_RES_ANUM_ORI_7` (`DONE_CODE`),
  KEY `IDX_RES_ANUM_ORI_8` (`RES_STORE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表存储的是短信或彩信接入号码明细信息；';

/*Table structure for table `res_approve_dtl_num` */

DROP TABLE IF EXISTS `res_approve_dtl_num`;

CREATE TABLE `res_approve_dtl_num` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `RES_ID` varchar(30) NOT NULL COMMENT '号码',
  `RES_INST_ID` varchar(25) NOT NULL COMMENT '暂时未用',
  `RES_EVENT_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `BUSI_ID` varchar(8) DEFAULT NULL COMMENT '出入库操作类型',
  `BUSI_NAME` varchar(64) DEFAULT NULL COMMENT '业务操作名称',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作日期',
  `APPROVER_ID` bigint(12) DEFAULT NULL COMMENT '审批者编号',
  `APPROVER_NAME` varchar(20) DEFAULT NULL COMMENT '审批者名称',
  `APPROVER_TYPE` varchar(20) DEFAULT NULL COMMENT '审批者类型暂时未用',
  `PATTERN_ID` bigint(10) DEFAULT NULL COMMENT '号码模式编号',
  `PATTERN_NAME` varchar(100) DEFAULT NULL COMMENT '号码模式名称',
  `APPROVE_DATE` datetime DEFAULT NULL COMMENT '审批时间',
  `APPROVE_FORM_ID` bigint(12) DEFAULT NULL COMMENT '审批单编号',
  `APPROVE_NOTE` varchar(100) DEFAULT NULL COMMENT '审批备注',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_APPR_DTL_NUM_1` (`RES_ID`),
  KEY `IDX_RES_APPR_DTL_NUM_2` (`RES_STORE_ID`),
  KEY `IDX_RES_APPR_DTL_NUM_3` (`RES_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='号码审批操作记录明细，用于开户时特殊号码的审批；目前主要针对GSM号码';

/*Table structure for table `res_approve_person` */

DROP TABLE IF EXISTS `res_approve_person`;

CREATE TABLE `res_approve_person` (
  `SEQ_ID` bigint(12) NOT NULL COMMENT '序列',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `OP_DESC` varchar(255) DEFAULT NULL COMMENT '操作员姓名',
  `IS_SMS` varchar(1) DEFAULT NULL COMMENT '1有效、0无效',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `VERIFYTYPE` bigint(18) DEFAULT NULL COMMENT '审批人类型暂时未用',
  `VERIFY_REQ_TYPE` varchar(50) DEFAULT NULL COMMENT '可以审批的审批单:\n0:配送需求申请单, 1退货申请单 2 库存调整申请单 3个人库存申请单 4 个人退货申请单',
  PRIMARY KEY (`SEQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设定实物部分审批人信息（按照租户分表）';

/*Table structure for table `res_assess_manage` */

DROP TABLE IF EXISTS `res_assess_manage`;

CREATE TABLE `res_assess_manage` (
  `ASSESS_MANAGE_ID` bigint(12) NOT NULL COMMENT '主键',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '考核单位，登入用户所属的归属组织，市场部可以选择其他组织',
  `SEC_ORG_NAME` varchar(200) DEFAULT NULL COMMENT '考核单位，登入用户所属的归属组织，市场部可以选择其他组织',
  `PARTNER_ID` bigint(12) DEFAULT NULL COMMENT '第三方平台',
  `PARTNER_NAME` varchar(200) DEFAULT NULL COMMENT '第三方平台',
  `YEAR` bigint(6) DEFAULT NULL COMMENT '考评年月 yyyyMM',
  `MONTH` bigint(6) DEFAULT NULL COMMENT '考评年月 yyyyMM',
  `QUARTER` bigint(6) DEFAULT NULL COMMENT '考评年月 yyyyMM',
  `COUNT_POINT` bigint(6) DEFAULT NULL COMMENT '月度考评得分：月度平台考核记录表',
  `SERVICE_RATE` bigint(12) DEFAULT NULL COMMENT '季度服务费费率*10000：季度服务费费率表',
  `COUNT_PEOPLE` bigint(6) DEFAULT NULL COMMENT '人数：属地平台考核管理',
  `SERVE_POINT` decimal(4,1) DEFAULT NULL COMMENT 'servePoint\n人员保底服务费考核得分 (最多保留1位小数)：属地平台考核管理',
  `SELL_POINT` decimal(4,1) DEFAULT NULL COMMENT 'sellPoint\n销售考核得分(最多保留1位小数)：属地平台考核管理',
  `VALID_DATE` varchar(100) DEFAULT NULL COMMENT '记录的有效月份：属地平台考核管理',
  `ASSESS_TYPE` varchar(3) NOT NULL COMMENT '1月度平台考核记录表\n2季度服务费费率表\n3属地平台考核管理',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '组织代码',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `EX1` varchar(200) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`ASSESS_MANAGE_ID`),
  KEY `IDX_RES_ASSESS_MANAGE_1` (`SEC_ORG_ID`,`PARTNER_ID`),
  KEY `IDX_RES_ASSESS_MANAGE_2` (`DONE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='季度服务费费率表GTERMI_QUARTER_SERVICE_RATE\n月度服务费费率表GTERMI_AREA_COUNT\n属地平台考核管理GTERMI_ORG_PARTNER_IMPORT';

/*Table structure for table `res_attr` */

DROP TABLE IF EXISTS `res_attr`;

CREATE TABLE `res_attr` (
  `ATTR_ID` bigint(12) NOT NULL COMMENT '属性定义ID',
  `ATTR_CODE` varchar(250) DEFAULT NULL COMMENT '编码',
  `ATTR_NAME` varchar(200) DEFAULT NULL COMMENT '属性名称',
  `ATTR_NAME_DESC` varchar(200) DEFAULT NULL COMMENT '属性描述',
  `PARENT_ATTR_ID` bigint(12) DEFAULT NULL COMMENT '上级属性数据',
  `ATTR_TYPE_ID` varchar(50) DEFAULT NULL COMMENT '包括开通属性-OPEN,SLA指标项-SLA\n10号码、11SIM卡、16终端',
  `JAVA_FIELD_TYPE` varchar(50) DEFAULT NULL COMMENT '属性字段类型(JAVA)',
  `ORACLE_FIELD_TYPE` varchar(50) DEFAULT NULL COMMENT '属性字段类型(ORACLE)',
  `ATTRIBUTE_KIND` varchar(50) DEFAULT NULL COMMENT '属性分类\nATTRIBUTE_SINGLE-单个属性\nATTRIBUTE_GROUP-组合属性',
  `ATTR_SRC_TYPE` bigint(12) DEFAULT NULL COMMENT '属性类型由单独实体定义，包括标准的类型，枚举类型，以及每个类型的获取手段',
  `ATTR_UNIT` varchar(50) DEFAULT NULL COMMENT 'H－小时\nM－分钟\nS－秒\nBit－Bit\nByte－Byte\nKByte－KByte\nMByte－MByte',
  `DEFAULT_VALUE` varchar(80) DEFAULT NULL COMMENT '属性缺省值',
  `VALUE_LIST_ID` varchar(1000) DEFAULT NULL COMMENT '属性值列表',
  `INTERFACE_CLASS` varchar(255) DEFAULT NULL COMMENT '接口类',
  `VALUE_LENGTH` bigint(3) DEFAULT NULL COMMENT '属性长度',
  `DISPLAY_VALUE_LENGTH` bigint(20) DEFAULT NULL COMMENT '显示属性长度',
  `DISPLAY_TYPE` bigint(20) DEFAULT NULL COMMENT '显示类型\n属性值规格\n1 显示标签\n2 单行编辑框(可用)\n3 下拉列表框(可用)\n4 多选框\n5 单选框\n6 日期(带时分秒)(可用)\n7 文件\n8 多维表单\n9 资源选号\n10 隐藏\n11 调用类和方法从后台服务获取值\n12 隐藏，但从后台服务获取值\n13 弹出窗口\n14 TextArea\n15 密码框\n16 日期(不带时分秒)(可用)\n32 可编辑的下拉列表框',
  `COL_SPAN` bigint(2) DEFAULT NULL COMMENT '列跨度',
  `IS_EDIT` varchar(1) DEFAULT NULL COMMENT '1-可以编辑\n0-不可编辑',
  `VALID_MODE` bigint(2) DEFAULT NULL COMMENT '可抵积分',
  `DATA_VALIDATOR` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `DISPLAY_PARAM_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `DISPLAY_PARAM_VALUE` varchar(400) DEFAULT NULL COMMENT '暂时未用',
  `MUTI_VALUE_FLAG` varchar(1) DEFAULT NULL COMMENT '多值标记\nY-非多值标记\nN-多值标记',
  `MUTI_FLAG` varchar(1) DEFAULT NULL COMMENT '批量标记\nY－批量标记\nN－非批量标记',
  `KEY_TYPE` varchar(50) DEFAULT NULL COMMENT '主要用于定义属性的常量标识用于对纵向结构数据抽取处理，在代码中对这些常量进行引用',
  `CHECK_DESC` varchar(1000) DEFAULT NULL COMMENT '校验表达式',
  `PWD_FLAG` varchar(1) DEFAULT NULL COMMENT '密码标记',
  `NULLABLE` varchar(1) DEFAULT NULL COMMENT 'Y－可空\nN－不可空',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `ORDER_NUM` bigint(12) DEFAULT NULL COMMENT '排列顺序',
  `IS_VALUE_ATTR` varchar(12) DEFAULT NULL COMMENT '是否是子属性\nY-子属性\nN-非子属性',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '对应员工表',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `MODIFIER` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `MODIFY_DATE` datetime DEFAULT NULL COMMENT '修改日期',
  `DEL_FLAG` varchar(1) DEFAULT NULL COMMENT '删除标记：\n0-删除\n1-正常',
  PRIMARY KEY (`ATTR_ID`),
  KEY `IDX_RES_ATTR` (`ATTR_CODE`,`ATTR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源属性表，属性定义（按照租户分表）\n定义 厂家、品牌、内存、颜色、等等';

/*Table structure for table `res_attr_21` */

DROP TABLE IF EXISTS `res_attr_21`;

CREATE TABLE `res_attr_21` (
  `ATTR_ID` bigint(12) NOT NULL,
  `ATTR_CODE` varchar(250) DEFAULT NULL,
  `ATTR_NAME` varchar(200) DEFAULT NULL,
  `ATTR_NAME_DESC` varchar(200) DEFAULT NULL,
  `PARENT_ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_TYPE_ID` varchar(50) DEFAULT NULL,
  `JAVA_FIELD_TYPE` varchar(50) DEFAULT NULL,
  `ORACLE_FIELD_TYPE` varchar(50) DEFAULT NULL,
  `ATTRIBUTE_KIND` varchar(50) DEFAULT NULL,
  `ATTR_SRC_TYPE` bigint(12) DEFAULT NULL,
  `ATTR_UNIT` varchar(50) DEFAULT NULL,
  `DEFAULT_VALUE` varchar(80) DEFAULT NULL,
  `VALUE_LIST_ID` varchar(1000) DEFAULT NULL,
  `INTERFACE_CLASS` varchar(255) DEFAULT NULL,
  `VALUE_LENGTH` bigint(3) DEFAULT NULL,
  `DISPLAY_VALUE_LENGTH` bigint(20) DEFAULT NULL,
  `DISPLAY_TYPE` bigint(20) DEFAULT NULL,
  `COL_SPAN` bigint(2) DEFAULT NULL,
  `IS_EDIT` varchar(1) DEFAULT NULL,
  `VALID_MODE` bigint(2) DEFAULT NULL,
  `DATA_VALIDATOR` bigint(2) DEFAULT NULL,
  `DISPLAY_PARAM_TYPE` bigint(2) DEFAULT NULL,
  `DISPLAY_PARAM_VALUE` varchar(400) DEFAULT NULL,
  `MUTI_VALUE_FLAG` varchar(1) DEFAULT NULL,
  `MUTI_FLAG` varchar(1) DEFAULT NULL,
  `KEY_TYPE` varchar(50) DEFAULT NULL,
  `CHECK_DESC` varchar(1000) DEFAULT NULL,
  `PWD_FLAG` varchar(1) DEFAULT NULL,
  `NULLABLE` varchar(1) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `ORDER_NUM` bigint(12) DEFAULT NULL,
  `IS_VALUE_ATTR` varchar(12) DEFAULT NULL,
  `CREATER` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `MODIFIER` bigint(12) DEFAULT NULL,
  `MODIFY_DATE` datetime DEFAULT NULL,
  `DEL_FLAG` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ATTR_ID`),
  KEY `IDX_RES_ATTR_21` (`ATTR_CODE`,`ATTR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_attr_value` */

DROP TABLE IF EXISTS `res_attr_value`;

CREATE TABLE `res_attr_value` (
  `ATTR_VALUE_ID` bigint(12) NOT NULL COMMENT '属性值ID',
  `ATTR_ID` bigint(12) DEFAULT NULL COMMENT '属性定义ID',
  `VALUE_CODE` varchar(250) DEFAULT NULL COMMENT '属性值编码',
  `VALUE_NAME` varchar(200) DEFAULT NULL COMMENT '属性值名称',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '创建用户:对应员工表',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `MODIFIER` bigint(12) DEFAULT NULL COMMENT '修改用户',
  `MODIFY_DATE` datetime DEFAULT NULL COMMENT '修改日期',
  `DEL_FLAG` varchar(1) DEFAULT NULL COMMENT '删除标记：\n0-删除\n1-正常',
  `ORDER_NUM` bigint(12) DEFAULT NULL COMMENT '排列顺序',
  PRIMARY KEY (`ATTR_VALUE_ID`),
  KEY `IDX_RES_ATTR_VALUE_1` (`ATTR_ID`),
  KEY `IDX_RES_ATTR_VALUE_2` (`VALUE_CODE`,`VALUE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源属性值（按照租户分表）\n定义各个属性的值是多少';

/*Table structure for table `res_attr_value_21` */

DROP TABLE IF EXISTS `res_attr_value_21`;

CREATE TABLE `res_attr_value_21` (
  `ATTR_VALUE_ID` bigint(12) NOT NULL,
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `VALUE_CODE` varchar(250) DEFAULT NULL,
  `VALUE_NAME` varchar(200) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATER` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `MODIFIER` bigint(12) DEFAULT NULL,
  `MODIFY_DATE` datetime DEFAULT NULL,
  `DEL_FLAG` varchar(1) DEFAULT NULL,
  `ORDER_NUM` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`ATTR_VALUE_ID`),
  KEY `IDX_RES_ATTR_VALUE_1_21` (`ATTR_ID`),
  KEY `IDX_RES_ATTR_VALUE_2_21` (`VALUE_CODE`,`VALUE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_barcode_origin` */

DROP TABLE IF EXISTS `res_barcode_origin`;

CREATE TABLE `res_barcode_origin` (
  `BAR_ID` bigint(16) NOT NULL COMMENT '记录标识',
  `BAR_CODE` varchar(50) NOT NULL COMMENT '二维编码',
  `RES_STATE` char(1) NOT NULL COMMENT '二维码状态:1-初始，2-预售，3-选中，4-预占，5-占用，6-空闲，7-废弃',
  `MANAGE_STATUS` char(1) NOT NULL COMMENT '管理状态:1-入库，2-在途，3-出库',
  `SALE_BILL` varchar(30) DEFAULT NULL COMMENT '销售号码',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类型',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格',
  `BAR_PRICE` bigint(8) DEFAULT NULL COMMENT '资源价值',
  `SEC_ORG_ID` bigint(12) NOT NULL COMMENT '归属组织',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地市',
  `RES_STORE_ID` bigint(12) NOT NULL COMMENT '归属仓库',
  `DONE_CODE` bigint(25) NOT NULL COMMENT '操作编码',
  `DONE_DATE` datetime NOT NULL COMMENT '操作时间',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员工',
  `NOTE` varchar(100) DEFAULT NULL COMMENT '备注',
  `RSRV_STR1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_STR4` varchar(100) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_STR5` varchar(100) DEFAULT NULL COMMENT '备用字段5',
  `RSRV_TAG1` char(1) DEFAULT NULL COMMENT '备用字段6',
  `RSRV_NUM1` bigint(16) DEFAULT NULL COMMENT '备用字段7',
  `RSRV_NUM2` bigint(16) DEFAULT NULL COMMENT '备用字段8',
  `RSRV_NUM3` bigint(16) DEFAULT NULL COMMENT '备用字段9',
  `RSRV_DATE` datetime DEFAULT NULL COMMENT '备用字段10',
  PRIMARY KEY (`BAR_ID`),
  KEY `IDX_RES_BARCODE_ORIGIN_1` (`BAR_CODE`,`SALE_BILL`),
  KEY `IDX_RES_BARCODE_ORIGIN_2` (`SEC_ORG_ID`,`RES_STORE_ID`),
  KEY `IDX_RES_BARCODE_ORIGIN_3` (`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='二维码明细表：二维码兑换明细';

/*Table structure for table `res_bat_deal` */

DROP TABLE IF EXISTS `res_bat_deal`;

CREATE TABLE `res_bat_deal` (
  `DATA_ID` bigint(14) NOT NULL COMMENT '数据编号',
  `BATCH_ID` varchar(40) NOT NULL COMMENT '批次号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `BUSINESS_ID` varchar(8) DEFAULT NULL COMMENT '业务操作编码',
  `RES_ID` varchar(30) DEFAULT NULL COMMENT '资源代码',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格ID',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '库存编号',
  `IS_SMS` bigint(1) DEFAULT NULL COMMENT '是否短信 1是 0否',
  `TRADE_ID` bigint(4) DEFAULT NULL COMMENT '品牌编号',
  `PLAN_ID` bigint(8) DEFAULT NULL COMMENT '套餐编号',
  `SN` varchar(30) DEFAULT NULL COMMENT '空卡序列号',
  `IMSI` varchar(20) DEFAULT NULL COMMENT 'IMSI',
  `PIN1` varchar(8) DEFAULT NULL COMMENT 'PIN1',
  `PIN2` varchar(8) DEFAULT NULL COMMENT 'PIN2',
  `PUK1` varchar(8) DEFAULT NULL COMMENT 'PUK1',
  `PUK2` varchar(8) DEFAULT NULL COMMENT 'PUK2',
  `OPC` varchar(32) DEFAULT NULL COMMENT 'OPC',
  `KI` varchar(40) DEFAULT NULL COMMENT 'KI',
  `RES_NUMBER_HLR` varchar(7) DEFAULT NULL COMMENT '局向网号',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型:1营业、2代销',
  `PS_STATUS` varchar(3) DEFAULT NULL COMMENT '鉴权状态：1未鉴权 2鉴权成功 3鉴权失败',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态:\n0-未匹配未开通\n1-已匹配未开通\n2-已匹配已开通',
  `MANAGE_STATUS` varchar(6) DEFAULT NULL COMMENT '管理状态:\n1-初始;2-激活;3-预占;4-拆除; 5-占用;6-冷冻;7-报废;8-在途;9-丢失',
  `CARD_DATA_TYPE` varchar(3) DEFAULT NULL COMMENT '卡数据类型:\n1批量制卡;2远程写卡;3.空选写卡',
  `CARD_MAKE_TYPE` varchar(3) DEFAULT NULL COMMENT '制卡类型:1普通SIM卡 2 TD USIM卡',
  `IS_BAK_CARD` varchar(2) DEFAULT NULL COMMENT '是否为备卡:\n1 不是备卡\n2 是备卡',
  `DOMAIN_TYPE` varchar(2) DEFAULT NULL COMMENT '归属域类型:\n1集团公司\n2省公司',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `STATE_DATE` datetime DEFAULT NULL COMMENT '状态时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '处理时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '启用时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `EXT1` varchar(255) DEFAULT NULL COMMENT '扩展1',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '扩展2',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '扩展3',
  `EXT4` varchar(255) DEFAULT NULL COMMENT '扩展4',
  `EXT5` varchar(255) DEFAULT NULL COMMENT '扩展5',
  `EXT6` varchar(255) DEFAULT NULL COMMENT '扩展6',
  PRIMARY KEY (`DATA_ID`,`BATCH_ID`),
  KEY `IDX_RES_BAT_DEAL_1` (`BATCH_ID`),
  KEY `IDX_RES_BAT_DEAL_2` (`RES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录资源批处理信息（按租户分表）';

/*Table structure for table `res_bat_deal_21` */

DROP TABLE IF EXISTS `res_bat_deal_21`;

CREATE TABLE `res_bat_deal_21` (
  `DATA_ID` bigint(14) NOT NULL,
  `BATCH_ID` varchar(40) NOT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `BUSINESS_ID` varchar(8) DEFAULT NULL,
  `RES_ID` varchar(30) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `IS_SMS` bigint(1) DEFAULT NULL,
  `TRADE_ID` bigint(4) DEFAULT NULL,
  `PLAN_ID` bigint(8) DEFAULT NULL,
  `SN` varchar(30) DEFAULT NULL,
  `IMSI` varchar(20) DEFAULT NULL,
  `PIN1` varchar(8) DEFAULT NULL,
  `PIN2` varchar(8) DEFAULT NULL,
  `PUK1` varchar(8) DEFAULT NULL,
  `PUK2` varchar(8) DEFAULT NULL,
  `OPC` varchar(32) DEFAULT NULL,
  `KI` varchar(40) DEFAULT NULL,
  `RES_NUMBER_HLR` varchar(7) DEFAULT NULL,
  `USE_TYPE` bigint(2) DEFAULT NULL,
  `PS_STATUS` varchar(3) DEFAULT NULL,
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `MANAGE_STATUS` varchar(6) DEFAULT NULL,
  `CARD_DATA_TYPE` varchar(3) DEFAULT NULL,
  `CARD_MAKE_TYPE` varchar(3) DEFAULT NULL,
  `IS_BAK_CARD` varchar(2) DEFAULT NULL,
  `DOMAIN_TYPE` varchar(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `STATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  `EXT3` varchar(255) DEFAULT NULL,
  `EXT4` varchar(255) DEFAULT NULL,
  `EXT5` varchar(255) DEFAULT NULL,
  `EXT6` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DATA_ID`,`BATCH_ID`),
  KEY `IDX_RES_BAT_DEAL_2_21` (`RES_ID`),
  KEY `IDX_RES_BAT_DEAL_1_21` (`BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_bat_deal_err` */

DROP TABLE IF EXISTS `res_bat_deal_err`;

CREATE TABLE `res_bat_deal_err` (
  `DATA_ID` bigint(14) NOT NULL COMMENT '暂时未用',
  `BATCH_ID` varchar(40) NOT NULL COMMENT '批次号',
  `BUSINESS_ID` varchar(8) DEFAULT NULL COMMENT '业务代码',
  `RES_ID` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `IS_SMS` bigint(1) DEFAULT NULL COMMENT '暂时未用',
  `TRADE_ID` bigint(4) DEFAULT NULL COMMENT '暂时未用',
  `PLAN_ID` bigint(8) DEFAULT NULL COMMENT '暂时未用',
  `SN` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `IMSI` varchar(20) DEFAULT NULL COMMENT 'IMEI编号',
  `PIN1` varchar(8) DEFAULT NULL COMMENT 'PIN1',
  `PIN2` varchar(8) DEFAULT NULL COMMENT 'PIN2',
  `PUK1` varchar(8) DEFAULT NULL COMMENT 'PUK1',
  `PUK2` varchar(8) DEFAULT NULL COMMENT 'PUK2',
  `OPC` varchar(32) DEFAULT NULL COMMENT 'OPC',
  `KI` varchar(40) DEFAULT NULL COMMENT 'KI',
  `RES_NUMBER_HLR` varchar(7) DEFAULT NULL COMMENT '暂时未用',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `PS_STATUS` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `MANAGE_STATUS` varchar(6) DEFAULT NULL COMMENT '暂时未用',
  `CARD_DATA_TYPE` varchar(3) DEFAULT NULL COMMENT '卡数据类型:\n1批量制卡\n2远程写卡\n3空选写卡（预置KI型写卡）\n4重个人化',
  `CARD_MAKE_TYPE` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `IS_BAK_CARD` varchar(2) DEFAULT NULL COMMENT '暂时未用',
  `DOMAIN_TYPE` varchar(2) DEFAULT NULL COMMENT '暂时未用',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `STATE_DATE` datetime DEFAULT NULL COMMENT '状态时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `EXT1` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT4` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT5` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT6` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`DATA_ID`,`BATCH_ID`),
  KEY `IDX_RES_BAT_DEAL_ERR_1` (`BATCH_ID`),
  KEY `IDX_RES_BAT_DEAL_ERR_DONECODE` (`DONE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录资源批处理错误信息（按租户分表）';

/*Table structure for table `res_bat_deal_err_21` */

DROP TABLE IF EXISTS `res_bat_deal_err_21`;

CREATE TABLE `res_bat_deal_err_21` (
  `DATA_ID` bigint(14) NOT NULL,
  `BATCH_ID` varchar(40) NOT NULL,
  `BUSINESS_ID` varchar(8) DEFAULT NULL,
  `RES_ID` varchar(30) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `IS_SMS` bigint(1) DEFAULT NULL,
  `TRADE_ID` bigint(4) DEFAULT NULL,
  `PLAN_ID` bigint(8) DEFAULT NULL,
  `SN` varchar(30) DEFAULT NULL,
  `IMSI` varchar(20) DEFAULT NULL,
  `PIN1` varchar(8) DEFAULT NULL,
  `PIN2` varchar(8) DEFAULT NULL,
  `PUK1` varchar(8) DEFAULT NULL,
  `PUK2` varchar(8) DEFAULT NULL,
  `OPC` varchar(32) DEFAULT NULL,
  `KI` varchar(40) DEFAULT NULL,
  `RES_NUMBER_HLR` varchar(7) DEFAULT NULL,
  `USE_TYPE` bigint(2) DEFAULT NULL,
  `PS_STATUS` varchar(3) DEFAULT NULL,
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `MANAGE_STATUS` varchar(6) DEFAULT NULL,
  `CARD_DATA_TYPE` varchar(3) DEFAULT NULL,
  `CARD_MAKE_TYPE` varchar(3) DEFAULT NULL,
  `IS_BAK_CARD` varchar(2) DEFAULT NULL,
  `DOMAIN_TYPE` varchar(2) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `STATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  `EXT3` varchar(255) DEFAULT NULL,
  `EXT4` varchar(255) DEFAULT NULL,
  `EXT5` varchar(255) DEFAULT NULL,
  `EXT6` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DATA_ID`,`BATCH_ID`),
  KEY `IDX_RES_BAT_DEAL_ERR_1_21` (`BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_bat_deal_err_temi` */

DROP TABLE IF EXISTS `res_bat_deal_err_temi`;

CREATE TABLE `res_bat_deal_err_temi` (
  `DATA_ID` bigint(14) NOT NULL COMMENT '数据编号',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次号',
  `BUSINESS_ID` varchar(8) DEFAULT NULL COMMENT '业务操作编码',
  `RES_ID` varchar(30) DEFAULT NULL COMMENT '资源代码',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源代码',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '库存编号',
  `IS_SMS` bigint(1) DEFAULT NULL COMMENT '是否短信 1有效、0无效',
  `FACTORY_ID` varchar(30) DEFAULT NULL COMMENT '生产厂商',
  `COLOR_ID` bigint(12) DEFAULT NULL COMMENT '1黑色\n2红色\n3黄色\n4灰色\n5默认',
  `CONFIG_ID` bigint(12) DEFAULT NULL COMMENT '1标准\n2豪华\n3简配',
  `USE_RANGE` bigint(12) DEFAULT NULL COMMENT '如果是终端的是时候：1601.本地1602.集团',
  `SALES_CHANNEL` varchar(3) DEFAULT NULL COMMENT '销售渠道：1营业厅 2代理商',
  `SUPPLIER` bigint(12) DEFAULT NULL COMMENT '可以从res_partner 中调取',
  `TRADE_ID` bigint(4) DEFAULT NULL COMMENT '品牌编号',
  `PLAN_ID` bigint(8) DEFAULT NULL COMMENT '套餐编号',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型 1营业、2代销',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态 1000完好',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '如果是普通资源：\n1.初始，2预售，3选中，4占用，5冷冻，6空闲，7废弃，8保留，9在途，10可用 （可能没有2，6，8）\n\n如果是租机资源：\n2可使用\n3已预约\n4已租\n5暂停租用',
  `DOMAIN_TYPE` varchar(2) DEFAULT NULL COMMENT '归属域类型暂时未用',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `STATE_DATE` datetime DEFAULT NULL COMMENT '状态时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '处理时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '启用时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '停用时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `EXT1` varchar(255) DEFAULT NULL COMMENT '扩展1',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '扩展2',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '扩展3',
  `EXT4` varchar(255) DEFAULT NULL COMMENT '扩展4',
  `EXT5` varchar(255) DEFAULT NULL COMMENT '扩展5',
  `EXT6` varchar(255) DEFAULT NULL COMMENT '扩展6',
  PRIMARY KEY (`DATA_ID`),
  KEY `IDX_RES_BAT_DEAL_ERR_TEMI_1` (`RES_ID`),
  KEY `IDX_RES_BAT_DEAL_ERR_TEMI_2` (`BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端资源批处理错误表（按照租户分表）';

/*Table structure for table `res_bat_deal_temi` */

DROP TABLE IF EXISTS `res_bat_deal_temi`;

CREATE TABLE `res_bat_deal_temi` (
  `DATA_ID` bigint(14) NOT NULL COMMENT '数据编号',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次号',
  `BUSINESS_ID` varchar(8) DEFAULT NULL COMMENT '业务操作编码',
  `RES_ID` varchar(30) DEFAULT NULL COMMENT '资源代码',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格ID',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '库存编号',
  `IS_SMS` bigint(1) DEFAULT NULL COMMENT '是否短信1有效、0无效',
  `FACTORY_ID` varchar(30) DEFAULT NULL COMMENT '生产厂商',
  `COLOR_ID` bigint(12) DEFAULT NULL COMMENT '1黑色\n2红色\n3黄色\n4灰色\n5默认',
  `CONFIG_ID` bigint(12) DEFAULT NULL COMMENT '1标准\n2豪华\n3简配',
  `USE_RANGE` bigint(12) DEFAULT NULL COMMENT '如果是终端的是时候：1601.本地1602.集团',
  `SALES_CHANNEL` varchar(3) DEFAULT NULL COMMENT '销售渠道：1营业厅 2代理商',
  `SUPPLIER` bigint(12) DEFAULT NULL COMMENT '可以从res_partner 中调取',
  `TRADE_ID` bigint(4) DEFAULT NULL COMMENT '品牌编号',
  `PLAN_ID` bigint(8) DEFAULT NULL COMMENT '套餐编号',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型:1营业、2代销',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态 1002 完好',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '如果是普通资源：\n1.初始，2预售，3选中，4占用，5冷冻，6空闲，7废弃，8保留，9在途，10可用 （可能没有2，6，8）\n\n如果是租机资源：\n2可使用\n3已预约\n4已租\n5暂停租用',
  `DOMAIN_TYPE` varchar(2) DEFAULT NULL COMMENT '归属域类型暂时未用',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `STATE_DATE` datetime DEFAULT NULL COMMENT '状态时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '处理时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `EXT1` varchar(255) DEFAULT NULL COMMENT '扩展1',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '扩展2',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '扩展3',
  `EXT4` varchar(255) DEFAULT NULL COMMENT '扩展4',
  `EXT5` varchar(255) DEFAULT NULL COMMENT '扩展5',
  `EXT6` varchar(255) DEFAULT NULL COMMENT '扩展6',
  PRIMARY KEY (`DATA_ID`),
  KEY `IDX_RES_BAT_DEAL_TEMI_1` (`RES_ID`),
  KEY `IDX_RES_BAT_DEAL_TEMI_2` (`BATCH_ID`),
  KEY `IDX_RES_BAT_DEAL_TEMI_3` (`RES_SPEC_ID`),
  KEY `IDX_RES_BAT_DEAL_TEMI_4` (`SEC_ORG_ID`),
  KEY `IDX_RES_BAT_DEAL_TEMI_5` (`DONE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端资源批处理表（按照租户分表）';

/*Table structure for table `res_better_num_apply_log` */

DROP TABLE IF EXISTS `res_better_num_apply_log`;

CREATE TABLE `res_better_num_apply_log` (
  `ORDER_ID` bigint(25) NOT NULL COMMENT '暂时未用',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '服务号码',
  `APPLICANT` bigint(12) DEFAULT NULL COMMENT '申请人',
  `APPROVER` bigint(12) DEFAULT NULL COMMENT '审批人',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `CUST_NAME` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `CERT_TYPE` varchar(8) DEFAULT NULL COMMENT '暂时未用',
  `CERT_NO` varchar(40) DEFAULT NULL COMMENT '暂时未用',
  `STATUS` bigint(8) DEFAULT NULL COMMENT '审批状态:\n0待审批,\n1审批通过,\n2审批不通过,\n3已经开通',
  `NOTES` varchar(1000) DEFAULT NULL COMMENT '备注',
  `RESERVE_FEE` bigint(10) DEFAULT NULL COMMENT '暂时未用',
  `DEPOSIT_AMOUNT` bigint(10) DEFAULT NULL COMMENT '暂时未用',
  `DEPOSIT_MONTH` bigint(10) DEFAULT NULL COMMENT '暂时未用',
  `PRESENT_MONTH` bigint(4) DEFAULT NULL COMMENT '暂时未用',
  `SEL_NUM_FEE` bigint(4) DEFAULT NULL COMMENT '暂时未用',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `APPLY_DATE` datetime DEFAULT NULL COMMENT '申请时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `APPROVE_NOTES` varchar(1000) DEFAULT NULL COMMENT '审批意见',
  PRIMARY KEY (`ORDER_ID`),
  KEY `IDX_RES_BETTER_LOG_2` (`APPROVER`),
  KEY `IDX_RES_BETTER_LOG_1` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='吉祥号码审批表（按租户分表）';

/*Table structure for table `res_better_num_apply_log_21` */

DROP TABLE IF EXISTS `res_better_num_apply_log_21`;

CREATE TABLE `res_better_num_apply_log_21` (
  `ORDER_ID` bigint(25) NOT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `APPLICANT` bigint(12) DEFAULT NULL,
  `APPROVER` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_NAME` varchar(100) DEFAULT NULL,
  `CERT_TYPE` varchar(8) DEFAULT NULL,
  `CERT_NO` varchar(40) DEFAULT NULL,
  `STATUS` bigint(8) DEFAULT NULL,
  `NOTES` varchar(1000) DEFAULT NULL,
  `RESERVE_FEE` bigint(10) DEFAULT NULL,
  `DEPOSIT_AMOUNT` bigint(10) DEFAULT NULL,
  `DEPOSIT_MONTH` bigint(10) DEFAULT NULL,
  `PRESENT_MONTH` bigint(4) DEFAULT NULL,
  `SEL_NUM_FEE` bigint(4) DEFAULT NULL,
  `DONE_CODE` bigint(25) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `APPLY_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `APPROVE_NOTES` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`),
  KEY `IDX_RES_BETTER_LOG_2_21` (`APPROVER`),
  KEY `IDX_RES_BETTER_LOG_1_21` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_busi_attr_relat` */

DROP TABLE IF EXISTS `res_busi_attr_relat`;

CREATE TABLE `res_busi_attr_relat` (
  `RES_BUSI_RELAT_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `BUSINESS_ID` varchar(8) DEFAULT NULL COMMENT '业务代码',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '失效时间',
  `STATE` varchar(3) NOT NULL COMMENT '状态:U有效、E无效',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '对应员工表',
  PRIMARY KEY (`RES_BUSI_RELAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `res_busi_record_invoice` */

DROP TABLE IF EXISTS `res_busi_record_invoice`;

CREATE TABLE `res_busi_record_invoice` (
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `ASSIGN_TYPE` bigint(2) DEFAULT NULL COMMENT '分配类型暂时未用',
  `BUSI_ID` varchar(8) NOT NULL COMMENT '业务编码',
  `DONE_DATE` datetime NOT NULL COMMENT '受理日期',
  `ORG_ID` bigint(12) NOT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) NOT NULL COMMENT '操作员',
  `SRC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '如果此次只是入库，则源组织填成-1\n如果是分配、回收、调配，则源组织填成数据源所在组织\n\n如果只是组织内部变迁源组织=目的组织',
  `DEST_ORG_ID` bigint(12) DEFAULT NULL COMMENT '填入数据源到达的目的组织\n如果是出库、删除，则填入-1\n\n如果只是组织内部变迁，源组织=目的组织',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `BEG_ID` varchar(30) DEFAULT NULL COMMENT '起始编号',
  `END_ID` varchar(30) DEFAULT NULL COMMENT '终止编号',
  `AMOUNT` bigint(12) NOT NULL COMMENT '记录一个进出数量\n进：正\n出：负',
  `CONFIRM_OP_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='（按租户分表）\n原 RES_MANAGE_RECORD \n在票据生成、管理、修改、作废的工单表';

/*Table structure for table `res_business` */

DROP TABLE IF EXISTS `res_business`;

CREATE TABLE `res_business` (
  `BUSINESS_ID` varchar(8) NOT NULL COMMENT '业务代码',
  `BUSINESS_NAME` varchar(255) DEFAULT NULL COMMENT '业务操作名称',
  `OPERATE_TYPE` varchar(50) DEFAULT NULL COMMENT '暂时未用',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `USER_STATE_CONFIG` varchar(120) DEFAULT NULL COMMENT '暂时未用',
  `IS_STATE_UPDATE` varchar(3) DEFAULT NULL COMMENT 'Y－N',
  `COMMIT_STATE` varchar(50) DEFAULT NULL COMMENT '暂时未用',
  `SO_STATE` varchar(50) DEFAULT NULL COMMENT '暂时未用',
  `BATCH_SIGN` varchar(3) DEFAULT NULL COMMENT '批量标志\n0-非批量标志\n1-是批量标志',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '对应员工表',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `MODIFIER` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `MODIFY_DATE` datetime DEFAULT NULL COMMENT '修改日期',
  `DEL_FLAG` varchar(3) DEFAULT NULL COMMENT '删除标记：\n0-删除\n1-正常',
  PRIMARY KEY (`BUSINESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定义对资源的操作，如出库、入库等。（按照租户分表）';

/*Table structure for table `res_business_type` */

DROP TABLE IF EXISTS `res_business_type`;

CREATE TABLE `res_business_type` (
  `OPERATE_TYPE` varchar(50) NOT NULL COMMENT '业务操作类型编码',
  `OPERATE_TYPE_SORT` varchar(50) DEFAULT NULL COMMENT 'G－通用类\nP－受理产品类\nO－受理订单类\nAO－帐务订单类\nAA－帐务帐户类\nAP－帐务产品类\n……\n数据通过基础表维护，code_id = OPERATE_TYPE_SORT',
  `DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '业务类型描述',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '对应员工表',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `MODIFIER` bigint(12) DEFAULT NULL COMMENT '修改用户',
  `MODIFY_DATE` datetime DEFAULT NULL COMMENT '修改日期',
  `DEL_FLAG` char(1) DEFAULT NULL COMMENT '删除标记：\n0-删除\n1-正常',
  PRIMARY KEY (`OPERATE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对业务操作的分类：\nCREATE-新装,\nPRESALE－售前开通,\nLOGOUT-销户，\nMOVE－移机，\nLOCK－停机，\nUNLOCK－开机，\nUPDATE－业务变更，\nTRANSLATE－过户，\nPASSWORD－改密码，\nORDER－订单类,\nACCOUNT-改帐务，\nNAME－改名，\nSERVICE－改服务，\nATTRIBUTE－改属性，\nNUMBER－改号，\nCONTROL－改程控，\nCUSTOMER－改客户';

/*Table structure for table `res_card_discount` */

DROP TABLE IF EXISTS `res_card_discount`;

CREATE TABLE `res_card_discount` (
  `RES_TYPE` bigint(12) NOT NULL COMMENT '资源类型',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '资源规格',
  `SALE_TYPE` char(1) NOT NULL COMMENT '销售类型：1、营业销售，2、员工赔偿',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地州编码',
  `DISCOUNT` bigint(8) NOT NULL COMMENT '折扣率:百分比形式配置',
  `ENT_ID` char(1) DEFAULT NULL COMMENT 'ENT_ID',
  `DISCOUNT_DEF` varchar(100) DEFAULT NULL COMMENT '折扣描述',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  `RSRV_STR1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_NUM1` bigint(16) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM2` bigint(16) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_RAG1` char(1) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`RES_TYPE`,`RES_SPEC_ID`,`SALE_TYPE`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='有价卡销售折扣表';

/*Table structure for table `res_card_pro_order` */

DROP TABLE IF EXISTS `res_card_pro_order`;

CREATE TABLE `res_card_pro_order` (
  `MANU_ID` bigint(16) NOT NULL COMMENT '生产标识',
  `BEG_ID` varchar(50) DEFAULT NULL COMMENT '开始号码',
  `END_ID` varchar(50) DEFAULT NULL COMMENT '结束号段',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市编码',
  `RES_TYPE` bigint(12) DEFAULT NULL COMMENT '资源类型',
  `RES_SPEC_ID` bigint(16) DEFAULT NULL COMMENT '资源规格',
  `RES_AMOUNT` bigint(10) DEFAULT NULL COMMENT '资源数量',
  `RES_PRICE` bigint(10) DEFAULT NULL COMMENT '资源价格',
  `MANU_FLAG` varchar(2) NOT NULL COMMENT '有效标识:1、下发；2、验收；3、审核；4、取消；',
  `FACTORY_ID` varchar(20) DEFAULT NULL COMMENT '厂商编码',
  `RES_EFFECT` datetime DEFAULT NULL COMMENT '资源有效期',
  `C_ORG_ID` bigint(18) DEFAULT NULL COMMENT '发货单位',
  `D_ORG_ID` bigint(18) DEFAULT NULL COMMENT '收货单位',
  `D_DATE` datetime DEFAULT NULL COMMENT '收货日期',
  `BOX_NUM` bigint(8) DEFAULT NULL COMMENT '总箱数',
  `CARD_NUM` bigint(8) DEFAULT NULL COMMENT '卡数量',
  `PACK_INFO` varchar(2) DEFAULT NULL COMMENT '包装情况：1、完好，2、破损',
  `BAD_BOX_NUM` bigint(8) DEFAULT NULL COMMENT '损坏箱数',
  `BAD_CARD_NUM` bigint(8) DEFAULT NULL COMMENT '损坏数量',
  `DEFECT_NUM` bigint(8) DEFAULT NULL COMMENT '未到数量',
  `DEFECT_ID` varchar(50) DEFAULT NULL COMMENT '未到卡号',
  `CHECK_FLAG` varchar(2) DEFAULT NULL COMMENT '抽检标识:1、是.2、否',
  `CHECK_BOX_NUM` varchar(20) DEFAULT NULL COMMENT '抽检箱号',
  `CHECK_CASE_NUM` varchar(20) DEFAULT NULL COMMENT '抽检盒号',
  `CHECK_PRICE` bigint(8) DEFAULT NULL COMMENT '抽检面值',
  `CHECK_CARD_NO` varchar(50) DEFAULT NULL COMMENT '抽检卡号',
  `CARD_CLEAN` varchar(2) DEFAULT NULL COMMENT '卡片光整度:1、卡面光洁，平整 .2、卡面变形弯曲，有异物突起',
  `CARD_ADHIBITE` varchar(2) DEFAULT NULL COMMENT '卡片粘合度:1、层间粘合牢固 。2、已分层或开裂',
  `CARD_FONT` varchar(2) DEFAULT NULL COMMENT '卡片字体：1、印刷字迹清晰2、 印刷字迹模糊不清',
  `FAKE_FLAG` varchar(2) DEFAULT NULL COMMENT '防伪标识:1-符合标准,2-不符合标准',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用用效期',
  `TICKET_OP` bigint(12) DEFAULT NULL COMMENT '验收人',
  `TICKET_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `APPROVE_OP_ID` bigint(12) DEFAULT NULL COMMENT '审批人',
  `APPROVE_DATE` datetime DEFAULT NULL COMMENT '审批日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员工',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `RSRV_STR1` varchar(50) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR2` varchar(50) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(50) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_STR4` varchar(50) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_STR5` varchar(50) DEFAULT NULL COMMENT '备用字段5',
  `RSRV_NUM1` bigint(16) DEFAULT NULL COMMENT '备用字段6',
  `RSRV_NUM2` bigint(16) DEFAULT NULL COMMENT '备用字段7',
  `RSRV_NUM3` bigint(16) DEFAULT NULL COMMENT '备用字段8',
  `RSRV_DATE1` datetime DEFAULT NULL COMMENT '备用字段9',
  `RSRV_DATE2` datetime DEFAULT NULL COMMENT '备用字段10',
  PRIMARY KEY (`MANU_ID`,`MANU_FLAG`),
  KEY `IDX_RES_CARD_PRO_ORDER_1` (`BEG_ID`,`END_ID`),
  KEY `IDX_RES_CARD_PRO_ORDER_2` (`REGION_ID`,`RES_TYPE`,`RES_SPEC_ID`),
  KEY `IDX_RES_CARD_PRO_ORDER_3` (`C_ORG_ID`,`D_ORG_ID`),
  KEY `IDX_RES_CARD_PRO_ORDER_4` (`DONE_DATE`,`MANU_FLAG`,`DONE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='卡类实物单据';

/*Table structure for table `res_cardlost_reg` */

DROP TABLE IF EXISTS `res_cardlost_reg`;

CREATE TABLE `res_cardlost_reg` (
  `RES_TYPE` bigint(12) NOT NULL COMMENT '资源类型11SIM卡、12有价卡',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '资源规格',
  `RES_ID` varchar(40) NOT NULL COMMENT '资源编号',
  `RES_PRICE` bigint(12) DEFAULT NULL COMMENT '资源价格',
  `LOSE_OP_ID` bigint(12) DEFAULT NULL COMMENT '丢失员工标识',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员工',
  `ORG_ID` bigint(8) DEFAULT NULL COMMENT '组织编码',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市编码',
  `DONE_CODE` bigint(16) DEFAULT NULL COMMENT '操作标识',
  `DONE_DATE` datetime NOT NULL COMMENT '受理日期',
  `BUSI_ID` bigint(16) DEFAULT NULL COMMENT '营业标识',
  `RES_ORDER_ID` bigint(16) DEFAULT NULL COMMENT '资源工单标识',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `RSRV_STR1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`RES_TYPE`,`RES_SPEC_ID`,`RES_ID`,`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工丢失卡登录（按照租户分表）';

/*Table structure for table `res_cardlost_reg_21` */

DROP TABLE IF EXISTS `res_cardlost_reg_21`;

CREATE TABLE `res_cardlost_reg_21` (
  `RES_TYPE` bigint(12) NOT NULL,
  `RES_SPEC_ID` bigint(12) NOT NULL,
  `RES_ID` varchar(40) NOT NULL,
  `RES_PRICE` bigint(12) DEFAULT NULL,
  `LOSE_OP_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(8) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(16) DEFAULT NULL,
  `DONE_DATE` datetime NOT NULL,
  `BUSI_ID` bigint(16) DEFAULT NULL,
  `RES_ORDER_ID` bigint(16) DEFAULT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `RSRV_STR1` varchar(100) DEFAULT NULL,
  `RSRV_STR2` varchar(100) DEFAULT NULL,
  `RSRV_STR3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RES_TYPE`,`RES_SPEC_ID`,`RES_ID`,`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_cardlost_reg_his` */

DROP TABLE IF EXISTS `res_cardlost_reg_his`;

CREATE TABLE `res_cardlost_reg_his` (
  `RES_TYPE` bigint(12) NOT NULL COMMENT '资源类型11SIM卡、12有价卡',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '资源规格',
  `RES_ID` varchar(40) NOT NULL COMMENT '资源编号',
  `RES_PRICE` bigint(12) DEFAULT NULL COMMENT '资源价格',
  `LOSE_OP_ID` bigint(12) DEFAULT NULL COMMENT '丢失员工标识',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员工',
  `ORG_ID` bigint(8) DEFAULT NULL COMMENT '组织编码',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市编码',
  `DONE_CODE` bigint(16) DEFAULT NULL COMMENT '操作标识',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `BUSI_ID` bigint(16) DEFAULT NULL COMMENT '营业标识',
  `RES_ORDER_ID` bigint(16) DEFAULT NULL COMMENT '资源工单标识',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `RSRV_STR1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`RES_TYPE`,`RES_SPEC_ID`,`RES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工丢失卡登录历史（按照租户分表）';

/*Table structure for table `res_channel_spec_relation` */

DROP TABLE IF EXISTS `res_channel_spec_relation`;

CREATE TABLE `res_channel_spec_relation` (
  `CHANNEL_ID` varchar(10) NOT NULL COMMENT '渠道标识',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织标识',
  `RES_TYPE_ID` bigint(12) NOT NULL COMMENT '资源类型编码,取值RES_TYPE',
  `START_DATE` datetime NOT NULL COMMENT '开始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '操作编码',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `RSRV_STR1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_TAG1` char(1) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_TAG2` char(1) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`CHANNEL_ID`,`RES_TYPE_ID`,`START_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='维护渠道商能批发资源关系表';

/*Table structure for table `res_contact_cfg` */

DROP TABLE IF EXISTS `res_contact_cfg`;

CREATE TABLE `res_contact_cfg` (
  `CONTACT_ID` bigint(12) NOT NULL COMMENT '联络人ID',
  `BUSI_TYPE` varchar(3) DEFAULT NULL COMMENT '联络人业务类型：1SAP联络人，2XX联络人',
  `SUPP_NAME` varchar(255) DEFAULT NULL COMMENT '供应商名称',
  `SUPP_ADDR` varchar(255) DEFAULT NULL COMMENT '供应商地址',
  `CONTACT_INFO` varchar(64) DEFAULT NULL COMMENT '联系信息 描述',
  `CONTACT_NAME` varchar(64) DEFAULT NULL COMMENT '联系人姓名',
  `CONTACT_EMAIL` varchar(255) DEFAULT NULL COMMENT '供应商邮箱',
  `CONTACT_PHONE` varchar(255) DEFAULT NULL COMMENT '联系人手机号码',
  `PRIMER_TYPE` varchar(3) DEFAULT NULL COMMENT '偏好联络方式:\n1.手机\n2,邮箱\n3,手机+邮箱',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `OPER_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DONE_CODE` varchar(8) DEFAULT NULL COMMENT '流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`CONTACT_ID`),
  KEY `IDX_RES_CONTACT_CFG_1` (`SUPP_NAME`),
  KEY `IDX_RES_CONTACT_CFG_2` (`CONTACT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='联系人信息维护表';

/*Table structure for table `res_coupon` */

DROP TABLE IF EXISTS `res_coupon`;

CREATE TABLE `res_coupon` (
  `SEQ_ID` varchar(30) NOT NULL COMMENT '主键',
  `COUPON_CODE` varchar(128) DEFAULT NULL COMMENT 'COUPON编码',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '数量',
  `AVAIL_AMOUNT` bigint(12) DEFAULT NULL COMMENT '可用数量',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态(MANAGE_STATUS):   1 初始 GENERATED、   2 激活 AVAILABLE、   5 在用实占 USED、   7 作废 CANCELLED ,BLOCKED',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT 'EFFECTIVE_DATE',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT 'EXPIRE_DATE',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '号码所属仓库',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态',
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '存储客户管理编号CUST_ID',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用日期',
  `USE_DONE_CODE` bigint(25) DEFAULT NULL COMMENT '使用流水号',
  `BUSI_CODE` bigint(12) DEFAULT NULL COMMENT '业务编码',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(20) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(20) DEFAULT NULL COMMENT '备用字段5',
  `STOCK_IN_DATE` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_COUPON_1` (`COUPON_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='（按租户分表）  COUPON实例表信息；  该表存储的是VOUCHER资源明细信息  管';

/*Table structure for table `res_coupon_21` */

DROP TABLE IF EXISTS `res_coupon_21`;

CREATE TABLE `res_coupon_21` (
  `SEQ_ID` varchar(30) NOT NULL COMMENT '主键',
  `COUPON_CODE` varchar(128) DEFAULT NULL COMMENT 'COUPON编码',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '数量',
  `AVAIL_AMOUNT` bigint(12) DEFAULT NULL COMMENT '可用数量',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态(MANAGE_STATUS):   1 初始 GENERATED、   2 激活 AVAILABLE、   5 在用实占 USED、   7 作废 CANCELLED ,BLOCKED',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT 'EFFECTIVE_DATE',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT 'EXPIRE_DATE',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '号码所属仓库',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态',
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '存储客户管理编号CUST_ID',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用日期',
  `USE_DONE_CODE` bigint(25) DEFAULT NULL COMMENT '使用流水号',
  `BUSI_CODE` bigint(12) DEFAULT NULL COMMENT '业务编码',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(20) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(20) DEFAULT NULL COMMENT '备用字段5',
  `STOCK_IN_DATE` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_COUPON_1` (`COUPON_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='（按租户分表）  COUPON实例表信息；  该表存储的是VOUCHER资源明细信息  管';

/*Table structure for table `res_coupon_dtl` */

DROP TABLE IF EXISTS `res_coupon_dtl`;

CREATE TABLE `res_coupon_dtl` (
  `DTL_SEQ_ID` varchar(30) NOT NULL COMMENT '主键',
  `SEQ_ID` varchar(30) NOT NULL COMMENT '主键',
  `COUPON_CODE` varchar(128) DEFAULT NULL COMMENT 'COUPON编码',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '数量',
  `AVAIL_AMOUNT` bigint(12) DEFAULT NULL COMMENT '可用数量',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态(MANAGE_STATUS):   1 初始 GENERATED、   2 激活 AVAILABLE、   5 在用实占 USED、   7 作废 CANCELLED ,BLOCKED',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT 'EFFECTIVE_DATE',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT 'EXPIRE_DATE',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '号码所属仓库',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态',
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '存储客户管理编号CUST_ID',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用日期',
  `USE_DONE_CODE` bigint(25) DEFAULT NULL COMMENT '使用流水号',
  `BUSI_CODE` bigint(12) DEFAULT NULL COMMENT '业务编码',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(20) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(20) DEFAULT NULL COMMENT '备用字段5',
  `STOCK_IN_DATE` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`DTL_SEQ_ID`),
  KEY `IDX_RES_COUPON_DTL_1` (`SEQ_ID`),
  KEY `IDX_RES_COUPON_DTL_2` (`COUPON_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='（按租户分表）  COUPON实例表明细  该表存储的是VOUCHER资源明细信息  管理';

/*Table structure for table `res_coupon_dtl_21` */

DROP TABLE IF EXISTS `res_coupon_dtl_21`;

CREATE TABLE `res_coupon_dtl_21` (
  `DTL_SEQ_ID` varchar(30) NOT NULL COMMENT '主键',
  `SEQ_ID` varchar(30) NOT NULL COMMENT '主键',
  `COUPON_CODE` varchar(128) DEFAULT NULL COMMENT 'COUPON编码',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '数量',
  `AVAIL_AMOUNT` bigint(12) DEFAULT NULL COMMENT '可用数量',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态(MANAGE_STATUS):   1 初始 GENERATED、   2 激活 AVAILABLE、   5 在用实占 USED、   7 作废 CANCELLED ,BLOCKED',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT 'EFFECTIVE_DATE',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT 'EXPIRE_DATE',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '号码所属仓库',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态',
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '存储客户管理编号CUST_ID',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用日期',
  `USE_DONE_CODE` bigint(25) DEFAULT NULL COMMENT '使用流水号',
  `BUSI_CODE` bigint(12) DEFAULT NULL COMMENT '业务编码',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(20) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(20) DEFAULT NULL COMMENT '备用字段5',
  `STOCK_IN_DATE` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`DTL_SEQ_ID`),
  KEY `IDX_RES_COUPON_DTL_1` (`SEQ_ID`),
  KEY `IDX_RES_COUPON_DTL_2` (`COUPON_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='（按租户分表）  COUPON实例表明细  该表存储的是VOUCHER资源明细信息  管理';

/*Table structure for table `res_deposite_fee` */

DROP TABLE IF EXISTS `res_deposite_fee`;

CREATE TABLE `res_deposite_fee` (
  `DEPOSIT_ID` bigint(12) NOT NULL COMMENT '资源配置ID',
  `RES_TYPE` bigint(12) DEFAULT NULL COMMENT '资源类型',
  `RES_CODE` bigint(12) DEFAULT NULL COMMENT '资源规格',
  `REGION_ID` varchar(8) DEFAULT NULL COMMENT '地市',
  `CITY_ID` varchar(8) DEFAULT NULL COMMENT '县市',
  `PART_ID` varchar(8) DEFAULT NULL COMMENT '片区',
  `AGENT_TYPE` bigint(5) DEFAULT NULL COMMENT '渠道类型',
  `CHECK_LEVEL` bigint(2) DEFAULT NULL COMMENT 'CHECK_LEVEL',
  `DEPOSIT_BASE` bigint(10) DEFAULT NULL COMMENT 'DEPOSIT_BASE',
  `DEPOSIT_UNIT` bigint(10) DEFAULT NULL COMMENT 'DEPOSIT_UNIT',
  `MAX_RES` bigint(8) DEFAULT NULL COMMENT '最大数量',
  `MIN_RES` bigint(8) DEFAULT NULL COMMENT '最小数量',
  `SALE_CYCLE` bigint(8) DEFAULT NULL COMMENT '销售和周期',
  `ON_PREPAY` bigint(2) DEFAULT NULL COMMENT 'ON_PREPAY',
  `VALID_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `TYPE_USED` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `REC_STATUS` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '流水号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员ID',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `AGENT_TYPE_DTL` bigint(5) DEFAULT NULL COMMENT '渠道子类型',
  `BRAND` bigint(12) DEFAULT NULL COMMENT '品牌',
  `SUB_BRAND` bigint(12) DEFAULT NULL COMMENT '子品牌',
  `PLAN_ID` bigint(12) DEFAULT NULL COMMENT '营销策划',
  `PREPAY_FEE` bigint(10) DEFAULT NULL COMMENT '预付费',
  `FEE_SEPARATE` bigint(2) DEFAULT NULL COMMENT 'FEE_SEPARATE',
  PRIMARY KEY (`DEPOSIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='渠道资源配置表';

/*Table structure for table `res_done_sms` */

DROP TABLE IF EXISTS `res_done_sms`;

CREATE TABLE `res_done_sms` (
  `RES_SMS_ID` bigint(10) NOT NULL COMMENT '由seq_res_id自增序列产生',
  `ORG_ID` bigint(12) NOT NULL COMMENT '组织编号',
  `RES_TYPE` bigint(18) NOT NULL COMMENT '资源类型:号码10、SIM卡11、有价卡12',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '0：该类型的所有资源\n其它具体资源型号',
  `ACTION_TYPE` bigint(2) NOT NULL COMMENT '动作类型\n0：all（所有动作）\n1：资源分配（包括订单、申请单、主动分配）\n2：资源回收\n3：资源调配',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '维护流水号',
  PRIMARY KEY (`RES_SMS_ID`),
  KEY `IDX_RES_DONE_SMS_1` (`ACTION_TYPE`,`RES_SPEC_ID`,`RES_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表定义了资源发放、回收、调配流程中需要发送短信通知的人员信息\n（按照租户分表）';

/*Table structure for table `res_done_sms_phone` */

DROP TABLE IF EXISTS `res_done_sms_phone`;

CREATE TABLE `res_done_sms_phone` (
  `RES_SMS_ID` bigint(10) NOT NULL COMMENT 'RES_SMS_ID',
  `RES_ALARM_RULE` bigint(12) DEFAULT NULL COMMENT 'RES_ALARM_RULE',
  `BILL_ID` varchar(12) DEFAULT NULL COMMENT 'BILL_ID',
  `NAME` varchar(30) DEFAULT NULL COMMENT 'NAME',
  `ACTION_STATUS` bigint(2) DEFAULT NULL COMMENT 'ACTION_STATUS 1有效、0无效',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT 'RES_STORE_ID',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '处理时间',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '流水号',
  PRIMARY KEY (`RES_SMS_ID`),
  KEY `IDX_RES_SMS_PHONE_1` (`NAME`),
  KEY `IDX_RES_SMS_PHONE_2` (`RES_ALARM_RULE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源预警联系表（按租户分表）';

/*Table structure for table `res_event_type` */

DROP TABLE IF EXISTS `res_event_type`;

CREATE TABLE `res_event_type` (
  `EVENT_TYPE_ID` varchar(25) NOT NULL COMMENT '事件类型',
  `EVENT_TYPE_NAME` varchar(100) DEFAULT NULL COMMENT '事件类型名称',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '对应员工表',
  `EVENT_TYPEDESC` varchar(100) DEFAULT NULL COMMENT '事件描述',
  PRIMARY KEY (`EVENT_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='如采购、报废、订购等；\n其中，事件类型名称枚举值为：\n提交待审批,审批已通过,审批未通过,等待发货,部分发货,全部发货,已发货,未发货,等待接收,全部接收,部分接收\n（按照租户分表）';

/*Table structure for table `res_exchange_config` */

DROP TABLE IF EXISTS `res_exchange_config`;

CREATE TABLE `res_exchange_config` (
  `SEQ_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区编码',
  `ORG_LEVEL` bigint(2) NOT NULL COMMENT 'ORG_LEVEL',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT 'RES_SPEC_ID',
  `SAFE_STOCK` bigint(6) NOT NULL COMMENT 'SAFE_STOCK',
  `STD_STOCK` bigint(6) NOT NULL COMMENT '暂时未用',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`SEQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设定库存组织级别1，2，3，4';

/*Table structure for table `res_export_list` */

DROP TABLE IF EXISTS `res_export_list`;

CREATE TABLE `res_export_list` (
  `EXPORT_ID` bigint(16) NOT NULL COMMENT '导出编码',
  `TABLE_INFO` varchar(4000) NOT NULL COMMENT '详细信息',
  `FILE_NAME` varchar(100) NOT NULL COMMENT '文件名',
  `FTP_FILE_NAME` varchar(100) NOT NULL COMMENT 'ftp文件名',
  `COLUMN_TITLES` varchar(2000) NOT NULL COMMENT '导出列',
  `CONDITION_STR` varchar(2000) NOT NULL COMMENT '查询条件',
  `STATE` varchar(2) NOT NULL COMMENT '1:初始化;2:正在导出;3:导出失败;4:导出成功',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REMARKS` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`EXPORT_ID`),
  KEY `IDX_RES_EXPORT_LIST_1` (`CREATE_DATE`),
  KEY `IDX_RES_EXPORT_LIST_2` (`CREATE_OP_ID`),
  KEY `IDX_RES_EXPORT_LIST_3` (`FILE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源管理导出信息表（按照租户分表）';

/*Table structure for table `res_export_list_21` */

DROP TABLE IF EXISTS `res_export_list_21`;

CREATE TABLE `res_export_list_21` (
  `EXPORT_ID` bigint(16) NOT NULL COMMENT '导出编码',
  `TABLE_INFO` varchar(4000) NOT NULL COMMENT '详细信息',
  `FILE_NAME` varchar(100) NOT NULL COMMENT '文件名',
  `FTP_FILE_NAME` varchar(100) NOT NULL COMMENT 'ftp文件名',
  `COLUMN_TITLES` varchar(2000) NOT NULL COMMENT '导出列',
  `CONDITION_STR` varchar(2000) NOT NULL COMMENT '查询条件',
  `STATE` varchar(2) NOT NULL COMMENT '1:初始化;2:正在导出;3:导出失败;4:导出成功',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '创建操作员组织',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REMARKS` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`EXPORT_ID`),
  KEY `IDX_RES_EXPORT_LIST_1` (`CREATE_DATE`),
  KEY `IDX_RES_EXPORT_LIST_2` (`CREATE_OP_ID`),
  KEY `IDX_RES_EXPORT_LIST_3` (`FILE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源管理导出信息表（按照租户分表）';

/*Table structure for table `res_file_manage` */

DROP TABLE IF EXISTS `res_file_manage`;

CREATE TABLE `res_file_manage` (
  `FILE_ID` bigint(16) NOT NULL COMMENT '文件编号',
  `FILE_NAME` varchar(128) DEFAULT NULL COMMENT '文件名',
  `FILE_TYPE` bigint(2) DEFAULT NULL COMMENT '文件类型：1.PO文件导入、2.output文件导入',
  `FILE_KEY` varchar(128) DEFAULT NULL COMMENT '文件密钥',
  `DATA_KEY` varchar(128) DEFAULT NULL COMMENT '字段密钥',
  `RES_TYPE` bigint(12) DEFAULT NULL COMMENT '资源类型',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格',
  `CRT_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EXE_DATE` datetime DEFAULT NULL COMMENT '执行时间',
  `EXE_INFO` varchar(1000) DEFAULT NULL COMMENT '执行信息',
  `EXE_STATE` varchar(2) DEFAULT NULL,
  `BIND_MSISDN` varchar(3) DEFAULT NULL COMMENT '是否绑定号码： Y绑定号码、N不绑定号码',
  `BUSI_CODE` bigint(16) DEFAULT NULL COMMENT '处理标识',
  `FILE_SIZE` bigint(15) DEFAULT NULL COMMENT '文件大小',
  `ROW_NUM` bigint(15) DEFAULT NULL COMMENT '文件行数',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '操作地州',
  `OPER_TYPE` bigint(2) DEFAULT NULL COMMENT '操作类型：1、入库',
  `FILE_SOURCE` varchar(2) DEFAULT NULL COMMENT '文件来源:1、界面导入;2、后台进程同步',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DONE_CODE` bigint(15) DEFAULT NULL COMMENT '操作编码',
  `ORG_ID` bigint(8) DEFAULT NULL COMMENT '组织组织',
  `OP_ID` bigint(10) DEFAULT NULL COMMENT '操作员',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `RSRV_STR1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_DATE` datetime DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM1` bigint(16) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_RES_FILE_MANAGE_1` (`DONE_DATE`),
  KEY `IDX_RES_FILE_MANAGE_2` (`BUSI_CODE`),
  KEY `IDX_RES_FILE_MANAGE_3` (`FILE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源文件入库信息';

/*Table structure for table `res_file_manage_21` */

DROP TABLE IF EXISTS `res_file_manage_21`;

CREATE TABLE `res_file_manage_21` (
  `FILE_ID` bigint(16) NOT NULL,
  `FILE_NAME` varchar(128) DEFAULT NULL,
  `FILE_TYPE` bigint(2) DEFAULT NULL,
  `FILE_KEY` varchar(128) DEFAULT NULL,
  `DATA_KEY` varchar(128) DEFAULT NULL,
  `RES_TYPE` bigint(12) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `CRT_DATE` datetime DEFAULT NULL,
  `EXE_DATE` datetime DEFAULT NULL,
  `EXE_INFO` varchar(1000) DEFAULT NULL,
  `EXE_STATE` varchar(2) DEFAULT NULL,
  `BIND_MSISDN` varchar(3) DEFAULT NULL,
  `BUSI_CODE` bigint(16) DEFAULT NULL,
  `FILE_SIZE` bigint(15) DEFAULT NULL,
  `ROW_NUM` bigint(15) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OPER_TYPE` bigint(2) DEFAULT NULL,
  `FILE_SOURCE` varchar(2) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(15) DEFAULT NULL,
  `ORG_ID` bigint(8) DEFAULT NULL,
  `OP_ID` bigint(10) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `RSRV_STR1` varchar(100) DEFAULT NULL,
  `RSRV_STR2` varchar(100) DEFAULT NULL,
  `RSRV_STR3` varchar(100) DEFAULT NULL,
  `RSRV_DATE` datetime DEFAULT NULL,
  `RSRV_NUM1` bigint(16) DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_RES_FILE_MANAGE_1_21` (`DONE_DATE`),
  KEY `IDX_RES_FILE_MANAGE_2_21` (`BUSI_CODE`),
  KEY `IDX_RES_FILE_MANAGE_3_21` (`FILE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_file_part` */

DROP TABLE IF EXISTS `res_file_part`;

CREATE TABLE `res_file_part` (
  `FILE_ID` bigint(16) NOT NULL COMMENT '明细标识',
  `FILE_NAME` varchar(128) DEFAULT NULL COMMENT '明细名称',
  `FILE_TYPE` bigint(2) DEFAULT NULL COMMENT '文件类型',
  `CRT_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `EXE_DATE` datetime DEFAULT NULL COMMENT '执行时间',
  `EXE_STATE` varchar(2) DEFAULT NULL COMMENT '执行状态',
  `FILE_MANAGE_ID` bigint(16) DEFAULT NULL COMMENT '主文件标识',
  `NOTES` varchar(100) DEFAULT NULL COMMENT '备注',
  `RSRV_STR1` varchar(100) DEFAULT NULL COMMENT '备用字段1 \nRSRV_STR1      VARCHAR2(100),\n  RSRV_STR2      VARCHAR2(100),\n  RSRV_STR3      VARCHAR2(100),\n  RSRV_DATE      DATE,\n  RSRV_NUM1      NUMBER(16)',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_DATE` datetime DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM1` bigint(16) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_RES_FILE_PART_1` (`FILE_MANAGE_ID`),
  KEY `IDX_RES_FILE_PART_2` (`FILE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源文件入库拆分明细';

/*Table structure for table `res_free_choose_org` */

DROP TABLE IF EXISTS `res_free_choose_org`;

CREATE TABLE `res_free_choose_org` (
  `FREE_ORG_ID` bigint(12) NOT NULL COMMENT '编码',
  `ORG_ID` bigint(12) NOT NULL COMMENT '组织编号',
  `FREE_ORG_NAME` varchar(40) DEFAULT NULL COMMENT '编码',
  `FREE_ORG_DESC` varchar(100) DEFAULT NULL COMMENT '组织代码',
  `BUSI_ID` varchar(8) DEFAULT NULL COMMENT '业务编码',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `CHOOSE_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `LIMIT_NUM` bigint(8) DEFAULT NULL COMMENT '暂时未用',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `EXT1` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`FREE_ORG_ID`,`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于存储选号区组织信息';

/*Table structure for table `res_free_choose_org_his` */

DROP TABLE IF EXISTS `res_free_choose_org_his`;

CREATE TABLE `res_free_choose_org_his` (
  `FREE_ORG_NAME` varchar(40) DEFAULT NULL COMMENT '编码',
  `FREE_ORG_DESC` varchar(100) DEFAULT NULL COMMENT '组织代码',
  `BUSI_ID` varchar(8) DEFAULT NULL COMMENT '业务编码',
  `FREE_ORG_ID` bigint(12) NOT NULL COMMENT '编码',
  `ORG_ID` bigint(12) NOT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `CHOOSE_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `LIMIT_NUM` bigint(8) DEFAULT NULL COMMENT '暂时未用',
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `DONE_DATE` datetime NOT NULL COMMENT '受理日期',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `EXT1` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`FREE_ORG_ID`,`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于存储选号区组织信息';

/*Table structure for table `res_hlr_mgnt` */

DROP TABLE IF EXISTS `res_hlr_mgnt`;

CREATE TABLE `res_hlr_mgnt` (
  `HLR_ID` varchar(20) NOT NULL COMMENT 'HLR号',
  `HLR_NAME` varchar(60) NOT NULL COMMENT 'HLR名称',
  `HLR_STATUS` varchar(3) DEFAULT NULL COMMENT '0：有效\n1：无效',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码 \nX全省',
  `IS_COMBILE` bigint(2) DEFAULT NULL COMMENT '是否三号合一',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作者',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '停用时间',
  PRIMARY KEY (`HLR_ID`),
  KEY `IDX_HLR_MGNT_REGION` (`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表用于管理各地市HLR资源，标注各地区HLR的名称，及状态。\n维护HLR的管理\n（按照租户分表）';

/*Table structure for table `res_hlr_mgnt_21` */

DROP TABLE IF EXISTS `res_hlr_mgnt_21`;

CREATE TABLE `res_hlr_mgnt_21` (
  `HLR_ID` varchar(20) NOT NULL,
  `HLR_NAME` varchar(60) NOT NULL,
  `HLR_STATUS` varchar(3) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `IS_COMBILE` bigint(2) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`HLR_ID`),
  KEY `IDX_HLR_MGNT_REGION_21` (`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_hlr_mgnt_his` */

DROP TABLE IF EXISTS `res_hlr_mgnt_his`;

CREATE TABLE `res_hlr_mgnt_his` (
  `H_ID` bigint(14) NOT NULL COMMENT '备份编号',
  `HLR_ID` varchar(20) DEFAULT NULL COMMENT 'HLR号',
  `HLR_NAME` varchar(60) DEFAULT NULL COMMENT 'HLR名称',
  `HLR_STATUS` varchar(3) DEFAULT NULL COMMENT '0：有效\n1：无效',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码 \nX全省',
  `IS_COMBILE` bigint(2) DEFAULT NULL COMMENT '是否三号合一',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作者',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '停用时间',
  PRIMARY KEY (`H_ID`),
  KEY `IDX_HLR_MGNT_HIS` (`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表用于管理各地市HLR资源，标注各地区HLR的名称，及状态。\n维护HLR的管理';

/*Table structure for table `res_iccid_range` */

DROP TABLE IF EXISTS `res_iccid_range`;

CREATE TABLE `res_iccid_range` (
  `REC_ID` bigint(12) NOT NULL COMMENT '主键',
  `CPS_CODE` varchar(25) DEFAULT NULL COMMENT '5 DIGITS：SERVICE OPERATOR CODE, DROP DOWN LIST',
  `SEC_ORG_ID` varchar(25) DEFAULT NULL COMMENT '归属组织，CPS和SECORGID 的对应关系配置在RES_STATIC_DATA 中。',
  `HLR_ID` varchar(25) DEFAULT NULL COMMENT 'HLR_ID',
  `ACCESSGRP_ID` varchar(25) DEFAULT NULL COMMENT 'ACCESSGRP_ID：WHAT ORGANISATION HAVE ACCES FOR LOOKUP IN HLR GUI, MANUAL INPUT',
  `STATUS` varchar(6) DEFAULT NULL COMMENT 'OPEN/CLOSED:   OPEN- STILL POSSIBLE TO CHOOSE IMSI FROM THIS RANGES.    CLOSED - THIS RANGE IS CLOSED FOR FURTHER USE    ',
  `ICCID_HEAD` varchar(25) DEFAULT NULL COMMENT 'ICCID头:例如 89450201 或者 894502018 。带8的表示WHOLESALE数据',
  `ICCID_RANGE` varchar(25) DEFAULT NULL COMMENT 'ICCID段。ICCID RANGE：一个2位的数字',
  `ICCID_MIDDLE` varchar(25) DEFAULT NULL COMMENT 'ICCID中间值 MIDDLE   RETAIL 是 第11～13 位   WHOLESALE 是 第12位',
  `ICCID_SEQ` varchar(25) DEFAULT NULL COMMENT 'ICCID序列:   RETAIL 是 一个5位数字： 第14～18位   WHOLESALE 是6位数字 ： 第13～18位   ',
  `HIGHEST_ICCID` varchar(25) DEFAULT NULL COMMENT '最大ICCID值，注意最后一位 是LUHN算法的校验位',
  `ORG_ID` bigint(8) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `TENANT_ID` varchar(6) DEFAULT NULL COMMENT '租户代码。例如:21,91,22',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码,默认和当前租户保持一致。例如:21,91,22',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '操作流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(255) DEFAULT NULL COMMENT 'EXT1',
  `EXT2` varchar(255) DEFAULT NULL COMMENT 'EXT2',
  `EXT3` varchar(255) DEFAULT NULL COMMENT 'EXT3',
  PRIMARY KEY (`REC_ID`),
  KEY `IDX_RES_ICCID_RANGE_1` (`CPS_CODE`),
  KEY `IDX_RES_ICCID_RANGE_2` (`SEC_ORG_ID`),
  KEY `IDX_RES_ICCID_RANGE_3` (`ICCID_HEAD`,`ICCID_RANGE`,`ICCID_MIDDLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ICCID数据配置表（暂时不分表，用租户字段来区分）';

/*Table structure for table `res_imsi_num_segment` */

DROP TABLE IF EXISTS `res_imsi_num_segment`;

CREATE TABLE `res_imsi_num_segment` (
  `RES_NUMBER_HLR` varchar(15) NOT NULL COMMENT '网号局向:号段',
  `RES_IMSI_SEGMENT` varchar(10) NOT NULL COMMENT 'IMSI段',
  `HLR_CODE` varchar(10) DEFAULT NULL COMMENT 'HLR编码',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地市',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '停用时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `RSRV_STR1` varchar(50) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR2` varchar(50) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(50) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_TAG1` char(1) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_TAG2` char(1) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`RES_NUMBER_HLR`,`RES_IMSI_SEGMENT`,`REGION_ID`),
  KEY `IDX_IMSI_NUM_SEGME_1` (`RES_IMSI_SEGMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='无线固话IMSI段与号码段对应关系，具体细分到县市\n（按照租户分表）';

/*Table structure for table `res_imsi_num_segment_21` */

DROP TABLE IF EXISTS `res_imsi_num_segment_21`;

CREATE TABLE `res_imsi_num_segment_21` (
  `RES_NUMBER_HLR` varchar(15) NOT NULL,
  `RES_IMSI_SEGMENT` varchar(10) NOT NULL,
  `HLR_CODE` varchar(10) DEFAULT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `RSRV_STR1` varchar(50) DEFAULT NULL,
  `RSRV_STR2` varchar(50) DEFAULT NULL,
  `RSRV_STR3` varchar(50) DEFAULT NULL,
  `RSRV_TAG1` char(1) DEFAULT NULL,
  `RSRV_TAG2` char(1) DEFAULT NULL,
  PRIMARY KEY (`RES_NUMBER_HLR`,`RES_IMSI_SEGMENT`,`REGION_ID`),
  KEY `IDX_IMSI_NUM_SEGME_1_21` (`RES_IMSI_SEGMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_imsi_range` */

DROP TABLE IF EXISTS `res_imsi_range`;

CREATE TABLE `res_imsi_range` (
  `REC_ID` bigint(12) NOT NULL COMMENT '主键',
  `CPS_CODE` varchar(25) DEFAULT NULL COMMENT '5 DIGITS：SERVICE OPERATOR CODE, DROP DOWN LIST',
  `SEC_ORG_ID` varchar(25) DEFAULT NULL COMMENT '归属组织，CPS和SECORGID 的对应关系配置在RES_STATIC_DATA 中。',
  `IMSI_RANGE` varchar(25) DEFAULT NULL COMMENT 'IMSI段。IMSI RANGE：23802XXXXX',
  `HLR_ID` varchar(25) DEFAULT NULL COMMENT 'HLR_ID',
  `ACCESSGRP_ID` varchar(25) DEFAULT NULL COMMENT 'ACCESSGRP_ID：WHAT ORGANISATION HAVE ACCES FOR LOOKUP IN HLR GUI, MANUAL INPUT',
  `STATUS` varchar(6) DEFAULT NULL COMMENT 'OPEN/CLOSED:   OPEN- STILL POSSIBLE TO CHOOSE IMSI FROM THIS RANGES.    CLOSED - THIS RANGE IS CLOSED FOR FURTHER USE    ',
  `HIGHEST_IMSI` varchar(25) DEFAULT NULL COMMENT '最大IMSI值',
  `ORG_ID` bigint(8) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `TENANT_ID` varchar(6) DEFAULT NULL COMMENT '租户代码。例如:21,91,22',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码,默认和当前租户保持一致。例如:21,91,22',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '操作流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(255) DEFAULT NULL COMMENT 'EXT1',
  `EXT2` varchar(255) DEFAULT NULL COMMENT 'EXT2',
  `EXT3` varchar(255) DEFAULT NULL COMMENT 'EXT3',
  PRIMARY KEY (`REC_ID`),
  KEY `IDX_RES_IMSI_RANGE_1` (`CPS_CODE`),
  KEY `IDX_RES_IMSI_RANGE_2` (`SEC_ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='IMSI数据配置表（暂时不分表，用租户字段来区分）';

/*Table structure for table `res_ins_his` */

DROP TABLE IF EXISTS `res_ins_his`;

CREATE TABLE `res_ins_his` (
  `SEQ_ID` bigint(14) NOT NULL COMMENT '增加主键',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `RES_INST_NAME` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '数量',
  `ON_WAY_AMOUNT` bigint(12) DEFAULT NULL COMMENT '在途未接受',
  `OP_ON_WAY_AMOUNT` bigint(12) DEFAULT NULL COMMENT '发送方的发出在途量、组织已分配个人未接受数量',
  `OP_USABLE_AMOUNT` bigint(12) DEFAULT NULL COMMENT '个人库存可用数量',
  `AVAIL_DISTRIBUTE` bigint(12) DEFAULT NULL COMMENT '可用库存',
  `UNIT` varchar(255) DEFAULT NULL COMMENT '单位',
  `STOCK_IN_AMOUNT` bigint(12) DEFAULT NULL COMMENT '入库数量或者订购数量（沉淀数据）一直增长\nSTOCK_IN_AMOUNT',
  `USED_AMOUNT` bigint(12) DEFAULT NULL COMMENT '已用数量（沉淀数据）一直增长',
  `ACTIVATED_AMOUNT` bigint(12) DEFAULT NULL COMMENT '激活数量（沉淀数据）一直增长\n针对号码、SIM卡 销售激活，需要有接口调用',
  `SALES_PRICE` bigint(10) DEFAULT NULL COMMENT '销售价格',
  `RES_BATCH_ID` bigint(12) DEFAULT NULL COMMENT '资源批次',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态:\n0:（卡）未配对；\n1：（卡）已配对开通；',
  `SUPP_ID` bigint(12) DEFAULT NULL COMMENT '积分实物供应商编号',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型:\n1.日报表\n2.周报表\n3.月报表',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:\n1初始, 2开放, 3选中,4预约,5占用, 6冷冻, 7空闲, 8废弃',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市组织',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `IS_PERSON` varchar(1) DEFAULT NULL COMMENT '个人库存与组织库存标志',
  `OPEN_DATE` datetime DEFAULT NULL COMMENT '库存开放时间',
  `CLOSE_DATE` datetime DEFAULT NULL COMMENT '库存下柜时间',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_INS_HIS_1` (`RES_STORE_ID`),
  KEY `IDX_RES_INS_HIS_2` (`RES_SPEC_ID`),
  KEY `IDX_RES_INS_HIS_3` (`RES_INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源管理库存信息历史表（按照地市+年月分中心、分表）';

/*Table structure for table `res_instance` */

DROP TABLE IF EXISTS `res_instance`;

CREATE TABLE `res_instance` (
  `RES_INST_ID` varchar(25) NOT NULL COMMENT '资源实例',
  `RES_INST_NAME` varchar(256) DEFAULT NULL COMMENT '资源名称',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '库存总量',
  `ON_WAY_AMOUNT` bigint(12) DEFAULT NULL COMMENT '在途未接受量',
  `OP_ON_WAY_AMOUNT` bigint(12) DEFAULT NULL COMMENT '发送方的发出在途量、组织已分配个人未接受数量',
  `OP_USABLE_AMOUNT` bigint(12) DEFAULT NULL COMMENT '个人库存可用数量',
  `AVAIL_DISTRIBUTE` bigint(12) DEFAULT NULL COMMENT '可用库存量',
  `UNIT` varchar(255) DEFAULT NULL COMMENT '单位',
  `STOCK_IN_AMOUNT` bigint(12) DEFAULT NULL COMMENT '入库数量或者订购数量（沉淀数据）一直增长\nSTOCK_IN_AMOUNT',
  `USED_AMOUNT` bigint(12) DEFAULT NULL COMMENT '已用数量',
  `ACTIVATED_AMOUNT` bigint(12) DEFAULT NULL COMMENT '激活数量（沉淀数据）一直增长\n针对号码、SIM卡 销售激活，需要有接口调用',
  `SALES_PRICE` bigint(10) DEFAULT NULL COMMENT '销售价格',
  `RES_BATCH_ID` bigint(9) DEFAULT NULL COMMENT '资源状态',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态\n0:（卡）未配对;\n1;（卡）已配对开通',
  `SUPP_ID` bigint(12) DEFAULT NULL COMMENT '积分实物供应商编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型:\n1普通开户SIM卡;\n2代销用sim卡;\n8神州行SIM卡;\nCODE_TYPE=83012',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:\n1-封存;\n2-开放;\n3-选中;\n4-预约;\n5-占用;\n6-冷冻;\n7-空闲;\n8-废弃',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `IS_PERSON` varchar(1) DEFAULT NULL COMMENT '个人库存与组织库存标志',
  `OPEN_DATE` datetime DEFAULT NULL COMMENT '库存开放时间',
  `CLOSE_DATE` datetime DEFAULT NULL COMMENT '库存下柜时间',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`RES_INST_ID`),
  KEY `IDX_RES_INSTANCE_1` (`RES_STORE_ID`),
  KEY `IDX_RES_INSTANCE_2` (`RES_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源管理库存信息表（按租户分表）';

/*Table structure for table `res_instance_21` */

DROP TABLE IF EXISTS `res_instance_21`;

CREATE TABLE `res_instance_21` (
  `RES_INST_ID` varchar(25) NOT NULL,
  `RES_INST_NAME` varchar(256) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `AMOUNT` bigint(12) DEFAULT NULL,
  `ON_WAY_AMOUNT` bigint(12) DEFAULT NULL,
  `OP_ON_WAY_AMOUNT` bigint(12) DEFAULT NULL,
  `OP_USABLE_AMOUNT` bigint(12) DEFAULT NULL,
  `AVAIL_DISTRIBUTE` bigint(12) DEFAULT NULL,
  `UNIT` varchar(255) DEFAULT NULL,
  `STOCK_IN_AMOUNT` bigint(12) DEFAULT NULL,
  `USED_AMOUNT` bigint(12) DEFAULT NULL,
  `ACTIVATED_AMOUNT` bigint(12) DEFAULT NULL,
  `SALES_PRICE` bigint(10) DEFAULT NULL,
  `RES_BATCH_ID` bigint(9) DEFAULT NULL,
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `SUPP_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `USE_TYPE` bigint(2) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `RECEIVER` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `IS_PERSON` varchar(1) DEFAULT NULL,
  `OPEN_DATE` datetime DEFAULT NULL,
  `CLOSE_DATE` datetime DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RES_INST_ID`),
  KEY `IDX_RES_INSTANCE_2_21` (`RES_SPEC_ID`),
  KEY `IDX_RES_INSTANCE_1_21` (`RES_STORE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_instance_bak_list` */

DROP TABLE IF EXISTS `res_instance_bak_list`;

CREATE TABLE `res_instance_bak_list` (
  `TABLE_ID` bigint(8) DEFAULT NULL COMMENT '编码',
  `TABLE_NAME` varchar(50) DEFAULT NULL COMMENT '编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `res_inter_comp_load` */

DROP TABLE IF EXISTS `res_inter_comp_load`;

CREATE TABLE `res_inter_comp_load` (
  `SEQ_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `BATCH_ID` varchar(50) DEFAULT NULL COMMENT '批次号',
  `OPR_NUMB` varchar(50) DEFAULT NULL COMMENT 'OPR_NUMB',
  `IMEI` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `OPR_CODE` varchar(3) DEFAULT NULL COMMENT '授权操作\n0—退出比对库，不使用二码合一激活鉴权\n1—导入比对库，使用二码合一激活鉴权',
  `OPR_DATE` varchar(30) DEFAULT NULL COMMENT '授权操作时间\nYYMMDDHHMMSS（24小时）',
  `RESULT_CODE` varchar(20) DEFAULT NULL COMMENT '处理结果代码 RESULT_CODE\n1001	导入比对库成功\n1002	比对库中已有此终端，导入比对库失败\n1003	此终端窜货，导入比对库失败\n1004	此终端省仓未到货，导入比对库失败\n2001	退出比对库成功\n2002	此终端不在比对库中，退出比对库失败\n2003	此终端窜货，退出比对库失败',
  `MATERIAL_CODE` varchar(25) DEFAULT NULL COMMENT 'TAC码对应机型的物料编码',
  `OUT_BUSINESS_CODE` varchar(30) DEFAULT NULL COMMENT '业务编码：BIP2B483\n交易编码：T2002183',
  `LOAD_STATUE` varchar(3) DEFAULT NULL COMMENT '0未上传\n1已上传\n2已得到响应',
  `USE_TYPE` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `OPERATE_REASON` varchar(255) DEFAULT NULL COMMENT '操作原因',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT 'OP_ORG',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_COMP_UPLOAD_1` (`OPR_NUMB`),
  KEY `IDX_COMP_UPLOAD_2` (`MATERIAL_CODE`),
  KEY `IDX_COMP_UPLOAD_3` (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='省公司授权终端导入比对库上报';

/*Table structure for table `res_inter_dtl_attr` */

DROP TABLE IF EXISTS `res_inter_dtl_attr`;

CREATE TABLE `res_inter_dtl_attr` (
  `DTL_ATTR_SEQ_ID` bigint(12) NOT NULL COMMENT '明细属性主键',
  `DTL_SEQ_ID` bigint(20) DEFAULT NULL COMMENT '明细主键',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `EXT1` varchar(3) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(3) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(3) DEFAULT NULL COMMENT '扩展字段',
  `EXT4` varchar(3) DEFAULT NULL COMMENT '扩展字段',
  `EXT5` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT6` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT7` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT8` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT9` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT10` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT11` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT12` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT13` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT14` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT15` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT16` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT17` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT18` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT19` varchar(1000) DEFAULT NULL COMMENT '扩展字段',
  `EXT21` varchar(1000) DEFAULT NULL COMMENT '扩展字段',
  `EXT20` varchar(1000) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`DTL_ATTR_SEQ_ID`),
  KEY `IDX_RES_INTER_DTL_ATTR_1` (`DTL_SEQ_ID`),
  KEY `IDX_RES_INTER_DTL_ATTR_2` (`DONE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源接口接收记录明细属性表（按照租户分表）';

/*Table structure for table `res_inter_price_notice` */

DROP TABLE IF EXISTS `res_inter_price_notice`;

CREATE TABLE `res_inter_price_notice` (
  `SEQ_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `BATCH_ID` varchar(50) DEFAULT NULL COMMENT '批次号',
  `OPR_NUMB` varchar(50) DEFAULT NULL COMMENT 'OPR_NUMB',
  `MATERIAL_CODE` varchar(25) DEFAULT NULL COMMENT 'TAC码对应机型的物料编码',
  `AIM_PRICE` bigint(12) DEFAULT NULL COMMENT '调整目标价 AIM_PRICE',
  `PROTECT_VALUE` bigint(12) DEFAULT NULL COMMENT '价保金额：如采用差额价保，价保金额可为空',
  `START_DATE` varchar(20) DEFAULT NULL COMMENT '调价生效时间：YYYYMMDDHHMMSS（24小时）',
  `OUT_BUSINESS_CODE` varchar(30) DEFAULT NULL COMMENT '业务编码：BIP2B481\n交易编码：T2002181',
  `LOAD_STATUE` varchar(3) DEFAULT NULL COMMENT '0未上传\n1已上传\n2已得到响应',
  `USE_TYPE` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `OPERATE_REASON` varchar(255) DEFAULT NULL COMMENT '操作原因',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT 'DONE_DOCE',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT 'OP_ORG',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `EXT1` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_PRICE_NOTICE_1` (`OPR_NUMB`),
  KEY `IDX_PRICE_NOTICE_2` (`MATERIAL_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集采终端调价通知 暂时未用';

/*Table structure for table `res_inter_tac_download` */

DROP TABLE IF EXISTS `res_inter_tac_download`;

CREATE TABLE `res_inter_tac_download` (
  `SEQ_ID` bigint(12) NOT NULL COMMENT '主键',
  `BATCH_ID` varchar(50) DEFAULT NULL COMMENT '批次号',
  `OPR_NUMB` varchar(50) DEFAULT NULL COMMENT '本次操作的流水号',
  `TAC` varchar(20) DEFAULT NULL COMMENT 'TAC',
  `MATERIAL_CODE` varchar(25) DEFAULT NULL COMMENT 'TAC码对应机型的物料编码',
  `TERMINAL_VENDER` varchar(25) DEFAULT NULL COMMENT '供应商编码 TERMINAL_VENDER',
  `TERMINAL_NAME` varchar(50) DEFAULT NULL COMMENT '机型名称 TERMINAL_NAME',
  `TERMINAL_TYPE` varchar(50) DEFAULT NULL COMMENT 'TAC码对应机型的终端类型\n0-2G手机\n1-3G手机\n2-3G数据卡\n3-家庭网关\n4-无线固话\n5-上网本\n6-阅读器',
  `TRANS_TYPE` varchar(3) DEFAULT NULL COMMENT '条目变更类型\n1－新增\n2－变更\n3－停用',
  `OUT_BUSINESS_CODE` varchar(30) DEFAULT NULL COMMENT '业务编码：BIP2B471\n交易编码：T2002171',
  `LOAD_STATUE` varchar(3) DEFAULT NULL COMMENT '装载状态:\n0未上传\n1已上传\n2已得到响应',
  `USE_TYPE` varchar(3) DEFAULT NULL COMMENT '类别:暂时未用',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态暂时未用',
  `OPERATE_REASON` varchar(255) DEFAULT NULL COMMENT '操作原因',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(25) DEFAULT NULL COMMENT '扩展字段1',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '扩展字段2',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '扩展字段3',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_TAC_DOWNLOAD_1` (`OPR_NUMB`),
  KEY `IDX_RES_TAC_DOWNLOAD_2` (`TAC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端TAC码数据下发 （按照租户分表）';

/*Table structure for table `res_interface_load` */

DROP TABLE IF EXISTS `res_interface_load`;

CREATE TABLE `res_interface_load` (
  `SEQ_ID` bigint(20) NOT NULL COMMENT '主键',
  `RES_TYPE_ID` varchar(3) DEFAULT NULL COMMENT '类别:\n10号码\n11SIM卡\n12有价卡\n15实物\n16终端',
  `OPR_NUMB` varchar(50) DEFAULT NULL COMMENT '外部流水',
  `RET_OPR_NUMB` varchar(50) DEFAULT NULL COMMENT '对应上次操作流水',
  `BATCH_ID` varchar(50) DEFAULT NULL COMMENT '批次号',
  `BIP_CODE` varchar(50) DEFAULT NULL COMMENT '业务编码',
  `ACTIVITY_CODE` varchar(50) DEFAULT NULL COMMENT '交易编码',
  `LOAD_STATUS` varchar(3) DEFAULT NULL COMMENT '加载状态:\n0未上传\n1已上传',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `OPERATE_REASON` varchar(255) DEFAULT NULL COMMENT '操作原因',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `EXT_DONE1` datetime DEFAULT NULL COMMENT '扩展字段',
  `EXT_DONE2` datetime DEFAULT NULL COMMENT '扩展字段',
  `EXT_DONE3` datetime DEFAULT NULL COMMENT '扩展字段',
  `EXT_DONE4` datetime DEFAULT NULL COMMENT '扩展字段',
  `EXT_DONE5` datetime DEFAULT NULL COMMENT '扩展字段',
  `EXT_DONE6` datetime DEFAULT NULL COMMENT '扩展字段',
  `EXT1` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT4` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT5` varchar(3) DEFAULT NULL COMMENT '扩展字段',
  `EXT6` varchar(3) DEFAULT NULL COMMENT '扩展字段',
  `EXT7` varchar(3) DEFAULT NULL COMMENT '扩展字段',
  `EXT8` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT9` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT10` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT11` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT12` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT13` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT14` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT15` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT16` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT17` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT18` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT19` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT20` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT21` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT22` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT23` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT24` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT25` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT26` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT27` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT28` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT29` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT30` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT31` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT32` varchar(1000) DEFAULT NULL COMMENT '扩展字段',
  `EXT33` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT34` varchar(1000) DEFAULT NULL COMMENT '扩展字段',
  `EXT35` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT36` varchar(1000) DEFAULT NULL COMMENT '扩展字段',
  `EXT37` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT38` varchar(1000) DEFAULT NULL COMMENT '扩展字段',
  `EXT39` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT40` varchar(1000) DEFAULT NULL COMMENT '扩展字段',
  `EXT41` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT42` varchar(1000) DEFAULT NULL COMMENT '扩展字段',
  `EXT43` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT44` varchar(1000) DEFAULT NULL COMMENT '扩展字段',
  `EXT45` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT46` varchar(1000) DEFAULT NULL COMMENT '扩展字段',
  `EXT47` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT48` varchar(1000) DEFAULT NULL COMMENT '扩展字段',
  `EXT49` text COMMENT '扩展字段',
  `EXT50` text COMMENT '扩展字段',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_INTERFACE_DOWNLOAD_1` (`BIP_CODE`),
  KEY `IDX_RES_INTERFACE_DOWNLOAD_2` (`ACTIVITY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源接口接收记录表 RES_INTERFACE_LOAD\n（按照租户分表）';

/*Table structure for table `res_interface_load_dtl` */

DROP TABLE IF EXISTS `res_interface_load_dtl`;

CREATE TABLE `res_interface_load_dtl` (
  `DTL_SEQ_ID` bigint(20) NOT NULL COMMENT '明细主键',
  `SEQ_ID` bigint(20) NOT NULL COMMENT '外键',
  `IMEI` varchar(30) DEFAULT NULL COMMENT '终端IEMI号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `HOLD_CODE1` bigint(20) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_CODE2` bigint(20) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_CODE3` bigint(20) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_CODE4` bigint(20) DEFAULT NULL COMMENT '暂时未用',
  `EXT1` varchar(3) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(3) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(3) DEFAULT NULL COMMENT '扩展字段',
  `EXT4` varchar(3) DEFAULT NULL COMMENT '扩展字段',
  `EXT5` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT6` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT7` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT8` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT9` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT10` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT11` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT12` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT13` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT14` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT15` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT16` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT17` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT18` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT19` varchar(1000) DEFAULT NULL COMMENT '扩展字段',
  `EXT20` text COMMENT '扩展字段',
  `EXT21` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT22` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT23` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT24` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT25` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT26` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT27` varchar(50) DEFAULT NULL COMMENT '扩展字段',
  `EXT28` varchar(1000) DEFAULT NULL COMMENT '扩展字段',
  `EXT29` varchar(500) DEFAULT NULL COMMENT '扩展字段',
  `EXT30` varchar(1000) DEFAULT NULL COMMENT '扩展字段',
  `EXT31` varchar(500) DEFAULT NULL COMMENT '扩展字段',
  `EXT32` varchar(500) DEFAULT NULL COMMENT '扩展字段',
  `EXT33` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT34` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT35` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT36` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT37` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT38` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT39` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT40` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT41` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT42` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT43` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT44` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT45` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT46` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT47` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT48` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT49` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT50` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT_DONE1` datetime DEFAULT NULL COMMENT '扩展字段',
  `EXT_DONE2` datetime DEFAULT NULL COMMENT '扩展字段',
  `EXT_DONE3` datetime DEFAULT NULL COMMENT '扩展字段',
  `EXT_DONE4` datetime DEFAULT NULL COMMENT '扩展字段',
  `EXT_DONE5` datetime DEFAULT NULL COMMENT '扩展字段',
  `EXT_DONE6` datetime DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`DTL_SEQ_ID`),
  KEY `IDX_RES_INTER_DOWNLOAD_DTL_1` (`SEQ_ID`),
  KEY `IDX_RES_INTER_DOWNLOAD_DTL_2` (`HOLD_CODE1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源接口接收记录明细表 RES_INTERFACE_LOAD_DTL（按租户分表）';

/*Table structure for table `res_inventory_alarm` */

DROP TABLE IF EXISTS `res_inventory_alarm`;

CREATE TABLE `res_inventory_alarm` (
  `ALARM_ID` bigint(12) NOT NULL COMMENT '关联关系标识',
  `ALARM_RULE_ID` bigint(12) DEFAULT NULL,
  `RES_ALARM_NAME` varchar(256) DEFAULT NULL,
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别',
  `RES_TYPE_TEMPLATE_ID` bigint(12) DEFAULT NULL COMMENT '资源规格标识',
  `WARN_VALUE` int(11) DEFAULT NULL,
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '数据状态\n            0--无效\n            1--有效',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ALARM_ID`),
  KEY `IDX_SPEC_ID` (`RES_TYPE_TEMPLATE_ID`),
  KEY `IDX_TYPE_ID` (`RES_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存预警';

/*Table structure for table `res_inventory_alarm_org` */

DROP TABLE IF EXISTS `res_inventory_alarm_org`;

CREATE TABLE `res_inventory_alarm_org` (
  `REL_ID` bigint(12) NOT NULL COMMENT '关联关系标识',
  `ALARM_ID` bigint(12) DEFAULT NULL,
  `RES_ORG_ID` bigint(12) DEFAULT NULL,
  `RES_ORG_NAME` varchar(255) DEFAULT NULL,
  `RES_STOCK_ID` bigint(12) DEFAULT NULL,
  `MKT_RES_INVENTORY_ID` bigint(12) DEFAULT NULL,
  `WARN_MEDIU_TYPE` int(11) DEFAULT NULL,
  `WARN_MEDIU` varchar(256) DEFAULT NULL,
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '数据状态\n            0--无效\n            1--有效',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`REL_ID`),
  KEY `IDX_STORE_ID` (`RES_STOCK_ID`),
  KEY `IDX_ALARM_ID` (`ALARM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预警对象关系配置';

/*Table structure for table `res_inventory_alarm_rule` */

DROP TABLE IF EXISTS `res_inventory_alarm_rule`;

CREATE TABLE `res_inventory_alarm_rule` (
  `RULE_ID` bigint(12) NOT NULL COMMENT '关联关系标识',
  `RES_ALARM_NAME` varchar(256) DEFAULT NULL,
  `RES_CATELOG` bigint(12) DEFAULT NULL COMMENT '资源类别',
  `WARN_VALUE` int(11) DEFAULT NULL,
  `REMIND_METHOD_ID` varchar(12) DEFAULT NULL COMMENT '1、短信\n            2、邮件',
  `REMIND_MEDIUM` varchar(128) DEFAULT NULL,
  `IS_GLOBLE` varchar(1) DEFAULT NULL COMMENT '1，是，0，否',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '数据状态\n            0--无效\n            1--有效',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`RULE_ID`),
  KEY `IDX_RES_OBJ_ALARM_REL_01` (`RULE_ID`),
  KEY `IDX_RES_CATELOG` (`RES_CATELOG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预警规则组';

/*Table structure for table `res_invoice_book` */

DROP TABLE IF EXISTS `res_invoice_book`;

CREATE TABLE `res_invoice_book` (
  `BOOK_ID` bigint(10) NOT NULL COMMENT '版本号',
  `VERSION` varchar(20) NOT NULL COMMENT '版本名称',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `INVOICE_BOOK_NAME` varchar(30) DEFAULT NULL COMMENT '发票版本名称',
  `INVOICE_TYPE` bigint(2) NOT NULL COMMENT '暂时未用',
  `MANAGE_STATUS` varchar(3) NOT NULL COMMENT '管理状态(MANAGE_STATUS)枚举值为：\n1封存	\n2开放',
  `FEE_LIMIT` bigint(10) NOT NULL COMMENT '限额',
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `DONE_DATE` datetime NOT NULL COMMENT '受理日期',
  `ORG_ID` bigint(12) NOT NULL COMMENT '组织单元',
  `OP_ID` bigint(12) NOT NULL COMMENT '操作员ID',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '失效时间',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '接收人',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区编号',
  PRIMARY KEY (`BOOK_ID`),
  KEY `IDX_RES_INVOICE_BOOK_1` (`VERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='其中，字段管理状态(MANAGE_STATUS)枚举值为：\n1封存	\n2开放	\n使用类型(USE_TYPE)枚举值为：\n1营业\n2代销\n使用方式(ACT_TYPE)枚举值为：\n1正常\n2作废\n3遗失\n发票类型(INVOICE_TYPE)枚举值为：\n1定额\n2活动\n（按照租户分表）';

/*Table structure for table `res_invoice_origin` */

DROP TABLE IF EXISTS `res_invoice_origin`;

CREATE TABLE `res_invoice_origin` (
  `BOOK_ID` bigint(10) NOT NULL COMMENT '版本号',
  `RES_ID` varchar(30) NOT NULL COMMENT '发票编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '资源规格编号',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库',
  `ORG_ID` bigint(12) NOT NULL COMMENT '组织单元',
  `OP_ID` bigint(12) NOT NULL COMMENT '操作员ID',
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `DONE_DATE` datetime NOT NULL COMMENT '受理日期',
  `USE_TYPE` bigint(2) NOT NULL COMMENT '使用类型(USE_TYPE)枚举值为：\n1营业\n2代销',
  `RES_STATUS` varchar(3) NOT NULL COMMENT '资源状态枚举值为：\n1正常\n2作废\n3遗失',
  `MANAGE_STATUS` varchar(3) NOT NULL COMMENT '管理状态',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `RECEIVER_ORG_ID` bigint(12) DEFAULT NULL COMMENT '领用人组织',
  `IS_CONFIRM` bigint(1) DEFAULT NULL COMMENT '确认标记:1是 0否',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用时间',
  `USE_DONE_CODE` varchar(8) DEFAULT NULL COMMENT '使用受理编号',
  `USE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '使用组织单元',
  `USE_OP_ID` bigint(12) DEFAULT NULL COMMENT '使用操作员ID',
  `VERIFY_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '核实操作工单',
  `ITEM_ID` bigint(10) DEFAULT NULL COMMENT '项目编号',
  `INVOICE_FEE` bigint(10) DEFAULT NULL COMMENT '金额',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '手机号码',
  `CUST_NAME` varchar(60) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`BOOK_ID`,`RES_ID`),
  KEY `IDX_RES_INVOICE_ORIGIN_1` (`RES_STORE_ID`),
  KEY `IDX_RES_INVOICE_ORIGIN_2` (`BOOK_ID`),
  KEY `IDX_RES_INVOICE_ORIGIN_3` (`RES_ID`),
  KEY `IDX_RES_INVOICE_ORIGIN_4` (`RECEIVER_ORG_ID`),
  KEY `IDX_RES_INVOICE_ORIGIN_5` (`RECEIVER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='其中，字段管理状态(MANAGE_STATUS)枚举值为：\n1封存	\n2开放	\n使用类型(USE_TYPE)枚举值为：\n1营业\n2代销\n发票类型(INVOICE_TYPE)枚举值为：\n1定额\n2活动\n（按租户分表）';

/*Table structure for table `res_invoice_record` */

DROP TABLE IF EXISTS `res_invoice_record`;

CREATE TABLE `res_invoice_record` (
  `RES_RECORD_ID` varchar(25) NOT NULL COMMENT '暂时未用',
  `DONE_CODE` bigint(12) NOT NULL COMMENT '由seq_res_done_code自增序号产生',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `BOOK_ID` bigint(10) DEFAULT NULL COMMENT '版本号',
  `RES_ID` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `OP_ID` bigint(12) NOT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区编码',
  `DONE_DATE` datetime NOT NULL COMMENT '受理日期',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `STATE` varchar(3) NOT NULL COMMENT '1：初始分配\n2：分配确认\ncode_type=83017',
  `BUSINESS_ID` varchar(8) DEFAULT NULL COMMENT '出入库操作类型',
  `BUSI_NAME` varchar(64) DEFAULT NULL COMMENT '业务操作名称',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `AUDIT_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '审批工单号',
  `AUDIT_OP_ID` bigint(12) DEFAULT NULL COMMENT '审批人',
  `AUDIT_DATE` datetime DEFAULT NULL COMMENT '审批时间',
  `AUDIT_ORG_ID` bigint(12) DEFAULT NULL COMMENT '审批人组织',
  `AUDIT_NOTES` varchar(255) DEFAULT NULL COMMENT '审批意见',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  PRIMARY KEY (`RES_RECORD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='(按地市)对已开具的票据，即RES_INVOICE_USED中的数据\n进行作废申请';

/*Table structure for table `res_invoice_used` */

DROP TABLE IF EXISTS `res_invoice_used`;

CREATE TABLE `res_invoice_used` (
  `BOOK_ID` bigint(10) NOT NULL COMMENT '版本号',
  `RES_ID` varchar(30) NOT NULL COMMENT '发票编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '资源规格编号',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库',
  `ORG_ID` bigint(12) NOT NULL COMMENT '组织单元',
  `OP_ID` bigint(12) NOT NULL COMMENT '操作员ID',
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `DONE_DATE` datetime NOT NULL COMMENT '受理日期',
  `USE_TYPE` bigint(2) NOT NULL COMMENT '使用类型(USE_TYPE)枚举值为：\n1营业\n2代销',
  `RES_STATUS` varchar(3) NOT NULL COMMENT '资源状态枚举值为：\n1正常\n2作废\n3遗失\n4红字冲销',
  `MANAGE_STATUS` varchar(3) NOT NULL COMMENT '管理状态',
  `RECEIVER` bigint(12) NOT NULL COMMENT '领用人',
  `RECEIVER_ORG_ID` bigint(12) DEFAULT NULL COMMENT '领用人组织',
  `IS_CONFIRM` bigint(1) DEFAULT NULL COMMENT '确认标记 1是 0否',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用时间',
  `USE_DONE_CODE` varchar(8) DEFAULT NULL COMMENT '使用受理编号',
  `USE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '使用组织单元',
  `USE_OP_ID` bigint(12) DEFAULT NULL COMMENT '使用操作员ID',
  `VERIFY_DONE_CODE` bigint(12) DEFAULT NULL COMMENT '核实操作工单',
  `ITEM_ID` bigint(10) DEFAULT NULL COMMENT '项目编号',
  `INVOICE_FEE` bigint(10) DEFAULT NULL COMMENT '金额',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '手机号码',
  `CUST_NAME` varchar(60) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`BOOK_ID`,`RES_ID`),
  KEY `IDX_RES_INVOICE_USED_1` (`USE_DATE`),
  KEY `IDX_RES_INVOICE_USED_2` (`RES_ID`),
  KEY `IDX_RES_INVOICE_USED_3` (`RECEIVER_ORG_ID`),
  KEY `IDX_RES_INVOICE_USED_4` (`RECEIVER`),
  KEY `IDX_RES_INVOICE_USED_5` (`BOOK_ID`,`USE_DATE`),
  KEY `IDX_RES_INVOICE_USED_6` (`USE_OP_ID`,`USE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='为开具已使用过的发票信息\n其中，字段管理状态(MANAGE_STATUS)枚举值为：\n1 封存\n2 开放使用\n5 正式占用\n8 票据缴销\n9 税务缴销	\n发票类型(INVOICE_TYPE)枚举值为：\n1定额\n2活动\n（按租户分表）';

/*Table structure for table `res_invoice_used_dtl` */

DROP TABLE IF EXISTS `res_invoice_used_dtl`;

CREATE TABLE `res_invoice_used_dtl` (
  `BOOK_ID` bigint(10) NOT NULL COMMENT '版本号',
  `RES_ID` varchar(30) NOT NULL COMMENT 'RES_ID',
  `USE_DONE_CODE` bigint(25) NOT NULL COMMENT '暂时未用',
  `ACC_CODE` bigint(10) NOT NULL COMMENT 'ACC_CODE',
  `ITEM_FEE` bigint(10) NOT NULL COMMENT 'ITEM_FEE',
  `DISCOUNT_FEE` bigint(10) NOT NULL COMMENT 'DISCOUNT_FEE',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区编码',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`BOOK_ID`,`RES_ID`,`ACC_CODE`),
  KEY `IDX_RES_INV_USD_DTL_1` (`USE_DONE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源请求对于资源的分解和记录(按地市)';

/*Table structure for table `res_leading_number` */

DROP TABLE IF EXISTS `res_leading_number`;

CREATE TABLE `res_leading_number` (
  `SEQ_ID` bigint(14) NOT NULL COMMENT '数据编号',
  `CUST_ID` varchar(20) DEFAULT NULL,
  `CUST_NAME` varchar(255) DEFAULT NULL COMMENT '企业名称',
  `LEADING_NUM` varchar(20) DEFAULT NULL COMMENT '总机号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '0失效、1有效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县区',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `NOTES` varchar(60) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_LEADING_NUMBER_1` (`LEADING_NUM`),
  KEY `IDX_RES_LEADING_NUMBER_2` (`CUST_NAME`),
  KEY `IDX_RES_LEADING_NUMBER_3` (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='总机号码维护表，维护企业leading number数据\n（按租户分表）';

/*Table structure for table `res_leading_number_21` */

DROP TABLE IF EXISTS `res_leading_number_21`;

CREATE TABLE `res_leading_number_21` (
  `SEQ_ID` bigint(14) NOT NULL,
  `CUST_ID` varchar(20) DEFAULT NULL,
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `LEADING_NUM` varchar(20) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `NOTES` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_LEADING_NUMBER_3_21` (`CUST_ID`),
  KEY `IDX_RES_LEADING_NUMBER_2_21` (`CUST_NAME`),
  KEY `IDX_RES_LEADING_NUMBER_1_21` (`LEADING_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_lock_time_cfg` */

DROP TABLE IF EXISTS `res_lock_time_cfg`;

CREATE TABLE `res_lock_time_cfg` (
  `LOCK_BUSI_TYPE` bigint(2) NOT NULL COMMENT '锁定类型:\n0-营业厅普通开户预占\n1-网上选号--4天\n2-自助选号预占-- 1天\n3-电子商务选号预占----4天\n4-重入网预占\n5-号码实时投放扫描时长\n6-手机终端预占\n7-有价卡预占\n8-物品预占\n9-吉祥号码审批预占 8天\n10-集团扩展码预占时长\n11-免费资源预占\n12-SIM卡预占\n13-退号封存\n14-预提号批发预占时长\n15-有线固话号码新装普通预占时长\n16-批量有线固话号码新装预占时长\n17-渠道号码包预约预占时长\n18-营业厅长流程开户预占时长\n19-有线固话号码新装长流程预占时长\n20-行业应用号码开户预占时长\n21-传真号码实占类型\n99-集团号码预占 15分钟\n98-个人预留15天\n97-部门预留 15天',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地市',
  `LOCK_TIME` bigint(14) DEFAULT NULL COMMENT '锁定时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '锁定时间',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `STATUS` bigint(1) DEFAULT NULL COMMENT '1有效、0无效',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LOCK_BUSI_TYPE`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='（按租户分表）';

/*Table structure for table `res_lock_time_cfg_21` */

DROP TABLE IF EXISTS `res_lock_time_cfg_21`;

CREATE TABLE `res_lock_time_cfg_21` (
  `LOCK_BUSI_TYPE` bigint(2) NOT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `LOCK_TIME` bigint(14) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `STATUS` bigint(1) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `NOTES` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`LOCK_BUSI_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_log` */

DROP TABLE IF EXISTS `res_log`;

CREATE TABLE `res_log` (
  `LOG_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `BUSI_ID` varchar(8) NOT NULL COMMENT '选号费模式类型在【系统基础表】中定义，指如“七位数同号”等的模式中文描述。目前分为以下几类，具体参见“资源管理.需求分析说明书”附件C的说明。：1－七位数同号2－七位数正顺号3－七位数反顺号4－四组两位数成对号5－前后四位数对应号6－前后四位数顺对应号7－六位数同号8－六位数顺号9－三组二位数成对号10－三组二位数对应号11－五位数同号12－五位数顺号13－前后三位数对应号14－前后三位数同号15－三位数成对号16－四位数同号17－四位数顺号18－两位数成对号19－两位数对应号20－后三位数同号21－普通',
  `BUSI_NAME` varchar(50) NOT NULL COMMENT '业务操作名称',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '0-表示不启用，1-表示可启用',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于存储资源配置管理业务操作日志信息';

/*Table structure for table `res_log_dtl` */

DROP TABLE IF EXISTS `res_log_dtl`;

CREATE TABLE `res_log_dtl` (
  `LOG_DTL_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `LOG_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `DESCRIPTION` varchar(1000) DEFAULT NULL COMMENT 'describe',
  `BUSI_ID` varchar(8) NOT NULL COMMENT '选号费模式类型在【系统基础表】中定义，指如“七位数同号”等的模式中文描述。目前分为以下几类，具体参见“资源管理.需求分析说明书”附件C的说明。：1－七位数同号2－七位数正顺号3－七位数反顺号4－四组两位数成对号5－前后四位数对应号6－前后四位数顺对应号7－六位数同号8－六位数顺号9－三组二位数成对号10－三组二位数对应号11－五位数同号12－五位数顺号13－前后三位数对应号14－前后三位数同号15－三位数成对号16－四位数同号17－四位数顺号18－两位数成对号19－两位数对应号20－后三位数同号21－普通',
  `BUSI_NAME` varchar(50) NOT NULL COMMENT '业务操作名称',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '0-表示不启用，1-表示可启用',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`LOG_DTL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用来存储实际操作了哪些表，和操作SQL。';

/*Table structure for table `res_net_info` */

DROP TABLE IF EXISTS `res_net_info`;

CREATE TABLE `res_net_info` (
  `NET_INFO_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `RES_NET_CODE` varchar(10) DEFAULT NULL COMMENT '网元设备代码',
  `RES_NET_NAME` varchar(25) DEFAULT NULL COMMENT '网元设备名称',
  `RES_NET_TYPE` varchar(3) DEFAULT NULL COMMENT '网元设备类型\n0未知;1HLR;2短信网关;3小额支付平台;4SCP平台',
  `RES_RATE` bigint(12) DEFAULT NULL COMMENT '单位(次/分钟)',
  `NET_NUMBER_TYPE` varchar(3) DEFAULT NULL COMMENT '设备制式\n0单号制；1多号制',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `CHANNEL_ID` bigint(12) DEFAULT NULL COMMENT 'CHANNEL_ID',
  `ENCP` bigint(12) DEFAULT NULL COMMENT 'ENCP',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`NET_INFO_ID`),
  KEY `IDX_RES_NET_INFO_1` (`RES_NET_CODE`),
  KEY `IDX_RES_NET_INFO_2` (`RES_NET_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='本表记录了所有网元信息';

/*Table structure for table `res_net_sel_record_h` */

DROP TABLE IF EXISTS `res_net_sel_record_h`;

CREATE TABLE `res_net_sel_record_h` (
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `ORG_ID` bigint(12) NOT NULL COMMENT 'ORG_ID',
  `CARD_TYPE` bigint(2) DEFAULT NULL COMMENT 'CARD_TYPE暂时未用',
  `CARD_CODE` varchar(20) NOT NULL COMMENT 'CARD_CODE',
  `BILL_ID` varchar(15) NOT NULL COMMENT '服务号码',
  `USE_ORG_ID` bigint(12) DEFAULT NULL COMMENT 'USE_ORG_ID',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `RECORD_STATUS` bigint(1) NOT NULL COMMENT '记录状态：1-预约选中；2-开户；3-超时',
  `DONE_DATE` datetime NOT NULL COMMENT '受理日期',
  `TRANSFER_DATE` datetime DEFAULT NULL COMMENT '转移时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `PHONE_TYPE` bigint(2) DEFAULT NULL COMMENT '2：188号段\n0：其它号段',
  `OLD_BILL_ID` varchar(15) DEFAULT NULL COMMENT '预约老号码',
  `ORDER_ID` varchar(32) DEFAULT NULL COMMENT '预约订单号',
  `INTF_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `CHECK_TYPE` bigint(2) DEFAULT NULL COMMENT 'CHECK_TYPE暂时未用',
  `EX_USE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`DONE_CODE`),
  KEY `IDX_RES_NET_SEL_REC_H_1` (`CARD_CODE`),
  KEY `IDX_RES_NET_SEL_REC_H_2` (`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='RES_NET_SEL_RECORD_H';

/*Table structure for table `res_net_tmp_sel_record_h` */

DROP TABLE IF EXISTS `res_net_tmp_sel_record_h`;

CREATE TABLE `res_net_tmp_sel_record_h` (
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区编码',
  `BILL_ID` varchar(15) NOT NULL COMMENT '服务号码',
  `OP_ID` bigint(12) NOT NULL COMMENT '操作员',
  `RECORD_STATUS` bigint(2) NOT NULL COMMENT 'RECORD_STATUS',
  `DONE_DATE` datetime NOT NULL COMMENT '受理编号',
  `CREATE_DATE` datetime NOT NULL COMMENT '创建日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '失效时间',
  `INTF_TYPE` bigint(2) NOT NULL COMMENT '暂时未用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `res_number_hlr` */

DROP TABLE IF EXISTS `res_number_hlr`;

CREATE TABLE `res_number_hlr` (
  `NET_ID` varchar(4) NOT NULL COMMENT '指手机号码的前三位，如139',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格',
  `HLR_SEGMENT` varchar(8) NOT NULL COMMENT '局向:指手机号码的第四至第七位， 如0571',
  `GSM_SEGMENT` bigint(1) DEFAULT NULL COMMENT '制式 :指GSM手机号码的频率， DCS 1800, gsm 900, 缺省0 为gsm , 即为900，＝1， 为dcs,',
  `NUMBER_HLR_HFLAG` varchar(10) DEFAULT NULL COMMENT 'H组标志:H标志长度为3位，可由局方定义为若干号段为一H组，用户可在其手机号码同一H组中选择某一号码作为传真、数据号码；在同一H组中选择补卡。',
  `HLR_NAME` varchar(60) DEFAULT NULL COMMENT '指RES_NUMHLR_MGR中的hlr_name， 对应于交换机名',
  `GENERATION_TYPE` varchar(3) DEFAULT NULL COMMENT '号码类别.暂时未用',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `AREA_CODE` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `PROV_CODE` varchar(6) DEFAULT NULL COMMENT '省份编码 例如25',
  `BUREAU_CODE` varchar(6) DEFAULT NULL COMMENT '类似于地市编码 250',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作者',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`NET_ID`,`HLR_SEGMENT`,`REGION_ID`),
  KEY `IDX_RES_NUMBER_HLR_1` (`NUMBER_HLR_HFLAG`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定义手机号码的号段与交换机的对应关系\nhlr_name对应与开通模中ps_net_info的ps_net_code\n（按照租户分表）';

/*Table structure for table `res_number_hlr_21` */

DROP TABLE IF EXISTS `res_number_hlr_21`;

CREATE TABLE `res_number_hlr_21` (
  `NET_ID` varchar(4) NOT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `HLR_SEGMENT` varchar(8) NOT NULL,
  `GSM_SEGMENT` bigint(1) DEFAULT NULL,
  `NUMBER_HLR_HFLAG` varchar(10) DEFAULT NULL,
  `HLR_NAME` varchar(60) DEFAULT NULL,
  `GENERATION_TYPE` varchar(3) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `AREA_CODE` varchar(6) DEFAULT NULL,
  `PROV_CODE` varchar(6) DEFAULT NULL,
  `BUREAU_CODE` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NET_ID`,`HLR_SEGMENT`,`REGION_ID`),
  KEY `IDX_RES_NUMBER_HLR_1_21` (`NUMBER_HLR_HFLAG`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_number_hlr_his` */

DROP TABLE IF EXISTS `res_number_hlr_his`;

CREATE TABLE `res_number_hlr_his` (
  `H_ID` bigint(14) NOT NULL COMMENT '暂时未用',
  `HLR_SEGMENT` varchar(8) NOT NULL COMMENT '指手机号码的第四至第七位， 如0571',
  `NET_ID` varchar(4) NOT NULL COMMENT '指手机号码的前三位，如139',
  `GSM_SEGMENT` bigint(1) DEFAULT NULL COMMENT '指GSM手机号码的频率， DCS 1800, gsm 900, 缺省0 为gsm , 即为900，＝1， 为dcs,',
  `NUMBER_HLR_HFLAG` varchar(4) DEFAULT NULL COMMENT 'H标志长度为3位，可由局方定义为若干号段为一H组，用户可在其手机号码同一H组中选择某一号码作为传真、数据号码；在同一H组中选择补卡。',
  `HLR_NAME` varchar(60) DEFAULT NULL COMMENT '指RES_NUMHLR_MGR中的hlr_name， 对应于交换机名',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`H_ID`,`NET_ID`,`HLR_SEGMENT`),
  KEY `IDX_RES_NUMBER_HLR_HFLAG` (`NUMBER_HLR_HFLAG`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定义手机号码的号段与交换机的对应关系\nhlr_name对应与开通模中ps_net_info的ps_net_code';

/*Table structure for table `res_obj_alarm_rel` */

DROP TABLE IF EXISTS `res_obj_alarm_rel`;

CREATE TABLE `res_obj_alarm_rel` (
  `REL_ID` bigint(12) NOT NULL COMMENT '关联关系标识',
  `ALARM_ID` bigint(12) NOT NULL COMMENT '预警规则标识',
  `RES_STOCK_ID` bigint(12) DEFAULT NULL,
  `MKT_RES_INVENTORY_ID` bigint(12) DEFAULT NULL,
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格标识',
  `RES_OBJ_ID` varchar(32) DEFAULT NULL COMMENT '资源对象标识',
  `ALARM_DATE` datetime DEFAULT NULL COMMENT '上次预警时间',
  `REMIND_METHOD_ID` varchar(12) DEFAULT NULL COMMENT '1、短信\n            2、邮件',
  `REMIND_MEDIUM` varchar(128) DEFAULT NULL,
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `DATA_STATUS` varchar(3) DEFAULT NULL COMMENT '数据状态\n            0--无效\n            1--有效',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`REL_ID`),
  KEY `IDX_RES_OBJ_ALARM_REL_01` (`ALARM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预警对象关系配置';

/*Table structure for table `res_oper_bat_task` */

DROP TABLE IF EXISTS `res_oper_bat_task`;

CREATE TABLE `res_oper_bat_task` (
  `BATCH_ID` bigint(16) NOT NULL COMMENT '批量标识',
  `BATCH_NAME` varchar(50) NOT NULL COMMENT '批量名称',
  `BATCH_TYPE` varchar(50) NOT NULL COMMENT '批量类型',
  `BATCH_TYPE_NAME` varchar(50) DEFAULT NULL COMMENT '批量类型名称',
  `START_DATE` datetime NOT NULL COMMENT '起始时间',
  `END_DATE` datetime NOT NULL COMMENT '终止时间',
  `DONE_DATE` datetime NOT NULL COMMENT '受理时间',
  `DONE_CODE` bigint(25) NOT NULL COMMENT '受理编号',
  `OP_ID` bigint(12) NOT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) NOT NULL COMMENT '操作员组织',
  `SMS_FLAG` char(1) DEFAULT '0' COMMENT '短信发送标志：0-不需要，1-需要',
  `AUDIT_NO` varchar(50) DEFAULT NULL COMMENT '核批文号',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `CODING_STR1` varchar(2000) DEFAULT NULL COMMENT '数据拼串1',
  `CODING_STR2` varchar(2000) DEFAULT NULL COMMENT '数据拼串1',
  `CODING_STR3` varchar(2000) DEFAULT NULL COMMENT '数据拼串1',
  `CODING_STR4` varchar(2000) DEFAULT NULL COMMENT '数据拼串1',
  `CODING_STR5` varchar(2000) DEFAULT NULL COMMENT '数据拼串1',
  `CONDITION1` varchar(2000) DEFAULT NULL COMMENT '条件描述1',
  `CONDITION2` varchar(2000) DEFAULT NULL COMMENT '条件描述2',
  `CONDITION3` varchar(2000) DEFAULT NULL COMMENT '条件描述3',
  `CONDITION4` varchar(2000) DEFAULT NULL COMMENT '条件描述4',
  `CONDITION5` varchar(2000) DEFAULT NULL COMMENT '条件描述5',
  PRIMARY KEY (`BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='批量订单主表';

/*Table structure for table `res_oper_batdeal` */

DROP TABLE IF EXISTS `res_oper_batdeal`;

CREATE TABLE `res_oper_batdeal` (
  `BATCH_ID` bigint(16) NOT NULL COMMENT '批量标识',
  `OPERATE_ID` bigint(16) NOT NULL COMMENT '处理流水号',
  `BATCH_TYPE` varchar(20) NOT NULL COMMENT '批量类型',
  `PRIORITY` bigint(4) NOT NULL COMMENT '优先级：越小越优先',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市编码',
  `BEG_ID` varchar(50) DEFAULT NULL COMMENT '开始标识',
  `END_ID` varchar(50) DEFAULT NULL COMMENT '结束标识',
  `DATA1` varchar(50) DEFAULT NULL COMMENT '数据1',
  `DATA2` varchar(50) DEFAULT NULL COMMENT '数据2',
  `DATA3` varchar(50) DEFAULT NULL COMMENT '数据3',
  `DATA4` varchar(50) DEFAULT NULL COMMENT '数据4',
  `DATA5` varchar(50) DEFAULT NULL COMMENT '数据5',
  `DATA6` varchar(50) DEFAULT NULL COMMENT '数据6',
  `DATA7` varchar(50) DEFAULT NULL COMMENT '数据7',
  `DATA8` varchar(50) DEFAULT NULL COMMENT '数据8',
  `DATA9` varchar(50) DEFAULT NULL COMMENT '数据9',
  `DATA10` varchar(50) DEFAULT NULL COMMENT '数据10',
  `DATA11` varchar(200) DEFAULT NULL COMMENT '数据11',
  `DATA12` varchar(200) DEFAULT NULL COMMENT '数据12',
  `DATA13` varchar(200) DEFAULT NULL COMMENT '数据13',
  `DATA14` varchar(200) DEFAULT NULL COMMENT '数据14',
  `DATA15` varchar(200) DEFAULT NULL COMMENT '数据15',
  `DATA16` varchar(500) DEFAULT NULL COMMENT '数据16',
  `DATA17` varchar(500) DEFAULT NULL COMMENT '数据17',
  `DATA18` varchar(500) DEFAULT NULL COMMENT '数据18',
  `DATA19` varchar(500) DEFAULT NULL COMMENT '数据19',
  `DATA20` varchar(500) DEFAULT NULL COMMENT '数据20',
  `DEAL_STATE` char(1) NOT NULL DEFAULT '0' COMMENT '处理状态：0-批次未启动，1-等待预处理，2-正在预处理，3-预处理失败，4-正在调用接口处理，5-接口调用处理成功，6-接口调用处理失败，7-等待订单完工，8-订单完工执行失败，9-处理完成，A-等待依赖批次完成',
  `DEAL_TIME` datetime DEFAULT NULL COMMENT '最后处理时间',
  `DEAL_RESULT` varchar(500) DEFAULT NULL COMMENT '处理结果',
  `DEAL_DESC` varchar(1024) DEFAULT NULL COMMENT '处理详细描述',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '生成订单流水号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='批量订单详细表';

/*Table structure for table `res_oper_logistics` */

DROP TABLE IF EXISTS `res_oper_logistics`;

CREATE TABLE `res_oper_logistics` (
  `RES_LOGISTICS_ID` bigint(12) NOT NULL COMMENT '物流单编号',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '配送货或调拨单源组织编号',
  `TARGET_ORG_ID` bigint(12) DEFAULT NULL COMMENT '配送货或调拨单目标组织编号',
  `REQ_ID` bigint(12) DEFAULT NULL COMMENT '配送货或调拨单对应需求单编号',
  `OPER_ID` bigint(12) DEFAULT NULL COMMENT '配送货或调拨单建单操作员编号',
  `OPER_OWN_ORG_ID` bigint(12) DEFAULT NULL COMMENT '配送货或调拨单建单操作员归属组织',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '配送货或调拨单建单时间',
  `SEND_NAME` varchar(100) DEFAULT NULL COMMENT '发货人名字',
  `SEND_TEL` varchar(32) DEFAULT NULL COMMENT '发货人联系方式',
  `RCV_NAME` varchar(100) DEFAULT NULL COMMENT '接货人名字',
  `RCV_TEL` varchar(32) DEFAULT NULL COMMENT '接货人联系方式',
  `RCV_ADDR` varchar(256) DEFAULT NULL COMMENT '接货地址',
  `TRANS_ID` varchar(60) DEFAULT NULL COMMENT '物流编号',
  `DISTR_PSN_NAME` varchar(100) DEFAULT NULL COMMENT '物流供应商联系人',
  `DISTR_MOB_PHONE` varchar(32) DEFAULT NULL COMMENT '物流供应商联系电话',
  `DISTR_ORG_NAME` varchar(256) DEFAULT NULL COMMENT '物流供应商单位名称',
  `PROCUREMENT_ID` varchar(60) DEFAULT NULL COMMENT '配送采购货单编号',
  `SEND_DATE` datetime DEFAULT NULL COMMENT '配送单发货时间',
  `RCV_DATE` datetime DEFAULT NULL COMMENT '配送单收货时间',
  `NOTIFY_STATE` char(1) DEFAULT NULL COMMENT '配送通知单确认状态 ： 0:已发货   1:完全接收  2:部分接收\n调拨：调拨通知单确认状态  0:新建 1:待发货 2:已发货 3:全部接收  4:部分接收 5:废弃',
  `CONFIRM_OPER_ID` bigint(12) DEFAULT NULL COMMENT '配送或调拨单确认操作员工号',
  `CONFIRM_ORG_ID` bigint(12) DEFAULT NULL COMMENT '配送或调拨单确认操作员组织',
  `LOCAL_MAT` char(1) DEFAULT NULL COMMENT '配送通知单的出库组织，是否为本地组织\n0：是本地库存\n1：非本地库存',
  `FST_PR_TYPE_ID` bigint(15) DEFAULT NULL COMMENT '暂时未用',
  `FST_REQ_TYPE` varchar(32) DEFAULT NULL COMMENT '物流平台返回',
  `OPER_NAME` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `SEND_ORG_NAME` varchar(100) DEFAULT NULL COMMENT '配送方',
  `SEND_ADDR` varchar(256) DEFAULT NULL COMMENT '配送地址',
  `SCM_STATE` varchar(3) DEFAULT NULL COMMENT '物流状态',
  `DISTR_METHOD` varchar(32) DEFAULT NULL COMMENT '配送方式',
  `SND_REQ_TYPE` varchar(32) DEFAULT NULL COMMENT '二级需求方向',
  `DELY_SATIS_DEG` varchar(32) DEFAULT NULL COMMENT '对发货满意度',
  `DELY_UNSATIS_DESC` varchar(256) DEFAULT NULL COMMENT '对发货不满意原因',
  `DISTR_SATIS_DEG` varchar(32) DEFAULT NULL COMMENT '对配送满意度',
  `DISTR_UNSATIS_DESC` varchar(256) DEFAULT NULL COMMENT '对配送不满意原因',
  `DELY_PKGS` bigint(12) DEFAULT NULL COMMENT '实发总箱数',
  `RCPT_PKGS` bigint(12) DEFAULT NULL COMMENT '实收总箱数',
  `VEH_ARR_DATE` datetime DEFAULT NULL COMMENT '车辆到达时间',
  `VEH_DEP_DATE` datetime DEFAULT NULL COMMENT '车辆离开时间',
  `SCM_PROJ_ID` bigint(15) DEFAULT NULL COMMENT '编码',
  `INVOICE_TYPE` char(1) DEFAULT NULL COMMENT '0为配送通知单 1为调拨通知',
  `INVOICE_RES_ID` bigint(12) DEFAULT NULL COMMENT '申请通知单唯一编号',
  `ALCT_ORG_ID` bigint(12) DEFAULT NULL COMMENT '调拨单建单组织编号',
  `EVENT_TYPE_ID` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `DONE_CODE` varchar(8) DEFAULT NULL COMMENT '受理编号',
  `NOTES` varchar(1024) DEFAULT NULL COMMENT '备注',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  PRIMARY KEY (`RES_LOGISTICS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='（按地市分表）管理实物部分资源配送通知，调拨 等信息';

/*Table structure for table `res_oper_logistics_21` */

DROP TABLE IF EXISTS `res_oper_logistics_21`;

CREATE TABLE `res_oper_logistics_21` (
  `RES_LOGISTICS_ID` bigint(12) NOT NULL,
  `RES_EVENT_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `TARGET_ORG_ID` bigint(12) DEFAULT NULL,
  `REQ_ID` bigint(12) DEFAULT NULL,
  `OPER_ID` bigint(12) DEFAULT NULL,
  `OPER_OWN_ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `SEND_NAME` varchar(100) DEFAULT NULL,
  `SEND_TEL` varchar(32) DEFAULT NULL,
  `RCV_NAME` varchar(100) DEFAULT NULL,
  `RCV_TEL` varchar(32) DEFAULT NULL,
  `RCV_ADDR` varchar(256) DEFAULT NULL,
  `TRANS_ID` varchar(60) DEFAULT NULL,
  `DISTR_PSN_NAME` varchar(100) DEFAULT NULL,
  `DISTR_MOB_PHONE` varchar(32) DEFAULT NULL,
  `DISTR_ORG_NAME` varchar(256) DEFAULT NULL,
  `PROCUREMENT_ID` varchar(60) DEFAULT NULL,
  `SEND_DATE` datetime DEFAULT NULL,
  `RCV_DATE` datetime DEFAULT NULL,
  `NOTIFY_STATE` char(1) DEFAULT NULL,
  `CONFIRM_OPER_ID` bigint(12) DEFAULT NULL,
  `CONFIRM_ORG_ID` bigint(12) DEFAULT NULL,
  `LOCAL_MAT` char(1) DEFAULT NULL,
  `FST_PR_TYPE_ID` bigint(15) DEFAULT NULL,
  `FST_REQ_TYPE` varchar(32) DEFAULT NULL,
  `OPER_NAME` varchar(100) DEFAULT NULL,
  `SEND_ORG_NAME` varchar(100) DEFAULT NULL,
  `SEND_ADDR` varchar(256) DEFAULT NULL,
  `SCM_STATE` varchar(3) DEFAULT NULL,
  `DISTR_METHOD` varchar(32) DEFAULT NULL,
  `SND_REQ_TYPE` varchar(32) DEFAULT NULL,
  `DELY_SATIS_DEG` varchar(32) DEFAULT NULL,
  `DELY_UNSATIS_DESC` varchar(256) DEFAULT NULL,
  `DISTR_SATIS_DEG` varchar(32) DEFAULT NULL,
  `DISTR_UNSATIS_DESC` varchar(256) DEFAULT NULL,
  `DELY_PKGS` bigint(12) DEFAULT NULL,
  `RCPT_PKGS` bigint(12) DEFAULT NULL,
  `VEH_ARR_DATE` datetime DEFAULT NULL,
  `VEH_DEP_DATE` datetime DEFAULT NULL,
  `SCM_PROJ_ID` bigint(15) DEFAULT NULL,
  `INVOICE_TYPE` char(1) DEFAULT NULL,
  `INVOICE_RES_ID` bigint(12) DEFAULT NULL,
  `ALCT_ORG_ID` bigint(12) DEFAULT NULL,
  `EVENT_TYPE_ID` varchar(3) DEFAULT NULL,
  `DONE_CODE` varchar(8) DEFAULT NULL,
  `NOTES` varchar(1024) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`RES_LOGISTICS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_oper_order` */

DROP TABLE IF EXISTS `res_oper_order`;

CREATE TABLE `res_oper_order` (
  `RES_EVENT_ID` bigint(12) NOT NULL COMMENT '事件工单编号',
  `EVENT_TYPE_ID` varchar(25) DEFAULT NULL COMMENT '事件类型',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '如果是终端的时候：\n9016001 调拨申请单 具体参见ResConst.java',
  `OUT_DONECODE` varchar(50) DEFAULT NULL COMMENT '外部流水号',
  `RES_REQUIRE_ID` varchar(15) DEFAULT NULL COMMENT '申请编号',
  `RES_OA_ORDER_ID` varchar(40) DEFAULT NULL COMMENT 'OA单号',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '源组织编号',
  `TARGET_ORG_ID` bigint(12) DEFAULT NULL COMMENT '目的组织',
  `CREATE_STORE_ID` bigint(12) DEFAULT NULL COMMENT '源仓库编号',
  `TARGET_STORE_ID` bigint(12) DEFAULT NULL COMMENT '目的仓库',
  `USE_RANGE` bigint(12) DEFAULT NULL COMMENT '如果是终端的是时候：1601.本地1602.集团',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '10号码\n11SIM\n12有价卡\n16终端',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `STATE` varchar(3) DEFAULT NULL COMMENT '0.初始，1.全部入库，2.部分入库',
  `BEG_ID` varchar(30) DEFAULT NULL COMMENT '起始编号',
  `END_ID` varchar(30) DEFAULT NULL COMMENT '结束编号',
  `MAT_CODE` varchar(50) DEFAULT NULL COMMENT '物料编码',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '0初始\n1不可取消\n2已经取消',
  `ALLOCATE_TYPE` bigint(12) DEFAULT NULL COMMENT '调配类型:\n 1订单流程\n 2申请单流程\n 3主动流程',
  `ORDER_STATUS` varchar(3) DEFAULT NULL COMMENT '工单状态:1新建，2提交待审批，3审批中，4审批通过，5部分审批通过，6审批拒绝，7废弃',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '数量',
  `PLAN_AMOUNT` bigint(12) DEFAULT NULL COMMENT '计划到货数量',
  `IS_FEE_CONFIRM` varchar(3) DEFAULT NULL COMMENT '资金到位状态:\n0.未付1.已付2部分已付',
  `GOODS_STATUS` varchar(3) DEFAULT NULL COMMENT '货物到货状态:\n0未供完，1已供完',
  `ARRIVAL_DATE` datetime DEFAULT NULL COMMENT '实际到货时间',
  `LAST_DATE` datetime DEFAULT NULL COMMENT '最迟到货时间',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `SUPP_ID` bigint(12) DEFAULT NULL COMMENT '供应商',
  `CREATER` varchar(40) DEFAULT NULL COMMENT '制单人',
  `CHECKER` varchar(40) DEFAULT NULL COMMENT '稽核人',
  `SIGN_NAME` varchar(40) DEFAULT NULL COMMENT '签收人',
  `HAS_LOGISTICS` varchar(1) DEFAULT NULL COMMENT '是否有物流信息:\n0无，1有',
  `DONEFILE_NAME` varchar(100) DEFAULT NULL COMMENT '处理文件名',
  `HOLD_COL` varchar(100) DEFAULT NULL COMMENT '保留字段',
  `HOLD_COL2` varchar(100) DEFAULT NULL COMMENT '保留字段2',
  `HOLD_COL3` varchar(100) DEFAULT NULL COMMENT '保留字段3',
  `HOLD_COL4` varchar(100) DEFAULT NULL COMMENT '保留字段4',
  `HOLD_COL5` varchar(100) DEFAULT NULL COMMENT '保留字段5',
  `HOLD_COL6` varchar(100) DEFAULT NULL COMMENT '保留字段6',
  `HOLD_COL7` varchar(100) DEFAULT NULL COMMENT '保留字段7',
  `HOLD_COL8` varchar(100) DEFAULT NULL COMMENT '保留字段8',
  `HOLD_COL9` varchar(100) DEFAULT NULL COMMENT '保留字段9',
  `HOLD_COL10` varchar(100) DEFAULT NULL COMMENT '保留字段10',
  `HOLD_DATE1` datetime DEFAULT NULL COMMENT '保留时间1',
  `HOLD_DATE2` datetime DEFAULT NULL COMMENT '保留时间2',
  PRIMARY KEY (`RES_EVENT_ID`),
  KEY `IDX_RES_OPER_ORDER_1` (`BEG_ID`,`END_ID`),
  KEY `IDX_RES_OPER_ORDER_2` (`DONE_DATE`),
  KEY `IDX_RES_OPER_ORDER_3` (`ORG_ID`),
  KEY `IDX_RES_OPER_ORDER_4` (`OP_ID`),
  KEY `IDX_RES_OPER_ORDER_5` (`BUSINESS_ID`),
  KEY `IDX_RES_OPER_ORDER_6` (`RES_OA_ORDER_ID`),
  KEY `IDX_RES_OPER_ORDER_8` (`HOLD_COL8`),
  KEY `IDX_RES_OPER_ORDER_9` (`HOLD_COL9`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源请求事件工单（订单表）（按照租户分表）';

/*Table structure for table `res_oper_order_21` */

DROP TABLE IF EXISTS `res_oper_order_21`;

CREATE TABLE `res_oper_order_21` (
  `RES_EVENT_ID` bigint(12) NOT NULL,
  `EVENT_TYPE_ID` varchar(25) DEFAULT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `OUT_DONECODE` varchar(50) DEFAULT NULL,
  `RES_REQUIRE_ID` varchar(15) DEFAULT NULL,
  `RES_OA_ORDER_ID` varchar(40) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `TARGET_ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_STORE_ID` bigint(12) DEFAULT NULL,
  `TARGET_STORE_ID` bigint(12) DEFAULT NULL,
  `USE_RANGE` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `RES_TYPE_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `BEG_ID` varchar(30) DEFAULT NULL,
  `END_ID` varchar(30) DEFAULT NULL,
  `MAT_CODE` varchar(50) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `ALLOCATE_TYPE` bigint(12) DEFAULT NULL,
  `ORDER_STATUS` varchar(3) DEFAULT NULL,
  `AMOUNT` bigint(12) DEFAULT NULL,
  `PLAN_AMOUNT` bigint(12) DEFAULT NULL,
  `IS_FEE_CONFIRM` varchar(3) DEFAULT NULL,
  `GOODS_STATUS` varchar(3) DEFAULT NULL,
  `ARRIVAL_DATE` datetime DEFAULT NULL,
  `LAST_DATE` datetime DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `SUPP_ID` bigint(12) DEFAULT NULL,
  `CREATER` varchar(40) DEFAULT NULL,
  `CHECKER` varchar(40) DEFAULT NULL,
  `SIGN_NAME` varchar(40) DEFAULT NULL,
  `HAS_LOGISTICS` varchar(1) DEFAULT NULL,
  `DONEFILE_NAME` varchar(100) DEFAULT NULL,
  `HOLD_COL` varchar(100) DEFAULT NULL,
  `HOLD_COL2` varchar(100) DEFAULT NULL,
  `HOLD_COL3` varchar(100) DEFAULT NULL,
  `HOLD_COL4` varchar(100) DEFAULT NULL,
  `HOLD_COL5` varchar(100) DEFAULT NULL,
  `HOLD_COL6` varchar(100) DEFAULT NULL,
  `HOLD_COL7` varchar(100) DEFAULT NULL,
  `HOLD_COL8` varchar(100) DEFAULT NULL,
  `HOLD_COL9` varchar(100) DEFAULT NULL,
  `HOLD_COL10` varchar(100) DEFAULT NULL,
  `HOLD_DATE1` datetime DEFAULT NULL,
  `HOLD_DATE2` datetime DEFAULT NULL,
  PRIMARY KEY (`RES_EVENT_ID`),
  KEY `IDX_RES_OPER_ORDER_2_21` (`DONE_DATE`),
  KEY `IDX_RES_OPER_ORDER_4_21` (`OP_ID`),
  KEY `IDX_RES_OPER_ORDER_1_21` (`BEG_ID`,`END_ID`),
  KEY `IDX_RES_OPER_ORDER_5_21` (`BUSINESS_ID`),
  KEY `IDX_RES_OPER_ORDER_3_21` (`ORG_ID`),
  KEY `IDX_RES_OPER_ORDER_6` (`RES_OA_ORDER_ID`),
  KEY `IDX_RES_OPER_ORDER_8` (`HOLD_COL8`),
  KEY `IDX_RES_OPER_ORDER_9` (`HOLD_COL9`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_oper_order_bar` */

DROP TABLE IF EXISTS `res_oper_order_bar`;

CREATE TABLE `res_oper_order_bar` (
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单标识',
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '明细标识',
  `START_CODE` varchar(50) NOT NULL COMMENT '二维编码开始',
  `END_CODE` varchar(50) DEFAULT NULL COMMENT '二维码结束 可以为空',
  `RES_STATE` char(1) DEFAULT NULL COMMENT '二维码状态:1-初始，2-预售，3-选中，4-预占，5-占用，6-空闲，7-废弃',
  `MANAGE_STATUS` char(1) DEFAULT NULL COMMENT '管理状态:1-入库，2-在途，3-出库',
  `SALE_BILL` varchar(30) DEFAULT NULL COMMENT '销售号码',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类型',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格',
  `BAR_PRICE` bigint(8) DEFAULT NULL COMMENT '资源价值',
  `SEC_ORG_ID` bigint(12) NOT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) NOT NULL COMMENT '归属仓库',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地市',
  `DONE_CODE` bigint(25) NOT NULL COMMENT '操作编码',
  `DONE_DATE` datetime NOT NULL COMMENT '操作时间',
  `ORG_ID` bigint(12) NOT NULL COMMENT '操作组织',
  `OP_ID` bigint(12) NOT NULL COMMENT '操作员工',
  `NOTE` varchar(100) DEFAULT NULL COMMENT '备注',
  `RSRV_STR1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_STR4` varchar(100) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_STR5` varchar(100) DEFAULT NULL COMMENT '备用字段5',
  `RSRV_TAG1` char(1) DEFAULT NULL COMMENT '备用字段6',
  `RSRV_NUM1` bigint(16) DEFAULT NULL COMMENT '备用字段7',
  `RSRV_NUM2` bigint(16) DEFAULT NULL COMMENT '备用字段8',
  `RSRV_NUM3` bigint(16) DEFAULT NULL COMMENT '备用字段9',
  `RSRV_DATE` datetime DEFAULT NULL COMMENT '备用字段10',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPERORD_BAR_1` (`RES_EVENT_ID`),
  KEY `IDX_RES_OPERORD_BAR_2` (`START_CODE`,`END_CODE`),
  KEY `IDX_RES_OPERORD_BAR_3` (`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='二维码明工单明细表';

/*Table structure for table `res_oper_order_coupon` */

DROP TABLE IF EXISTS `res_oper_order_coupon`;

CREATE TABLE `res_oper_order_coupon` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '操作明细编号',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '事件工单编号',
  `BEG_ID` varchar(30) NOT NULL COMMENT '起始编号',
  `END_ID` varchar(30) NOT NULL COMMENT '结束编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务代码',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别:10号码、11SIM卡',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `SERVICE_ID` bigint(12) DEFAULT NULL COMMENT '服务编号',
  `SRC_RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `DEST_RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `SRC_MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1 初始 OPEN、   2 激活 AVAILABLE、   5 在用实占 IN-USED、   7 作废。',
  `DEST_MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1 初始 OPEN、   2 激活 AVAILABLE、   5 在用实占 IN-USED、   7 作废。',
  `SRC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '如果此次只是入库，则源组织填成-1   如果是分配、回收、调配，则源组织填成数据源所在组织   如果只是组织内部变迁源组织=目的组织',
  `DEST_ORG_ID` bigint(12) DEFAULT NULL COMMENT '填入数据源到达的目的组织   如果是出库、删除，则填入-1   如果只是组织内部变迁，源组织=目的组织',
  `SRC_STORE_ID` bigint(12) DEFAULT NULL COMMENT '如果是分配、回收、调配，则源组织填成数据源所在组织   如果只是组织内部变迁源组织=目的组织',
  `DEST_STORE_ID` bigint(12) DEFAULT NULL COMMENT '目的仓库',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT 'ORG_ID',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型：暂时未用',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态：暂时未用',
  `AMOUNT` bigint(12) NOT NULL COMMENT '数量',
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL COMMENT '配送数量',
  `RCV_AMOUNT` varchar(25) DEFAULT NULL COMMENT '实际接收数量',
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL COMMENT '拒绝数量',
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '领用人',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `HOLD_COL` varchar(40) DEFAULT NULL COMMENT '保留字段',
  `HOLD_COL2` varchar(40) DEFAULT NULL COMMENT '保留字段',
  `HOLD_COL3` varchar(40) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPER_ORD_COUPON_1` (`BEG_ID`),
  KEY `IDX_RES_OPER_ORD_COUPON_2` (`BUSINESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源请求对于资源的分解和记录（按租户分表）';

/*Table structure for table `res_oper_order_coupon_21` */

DROP TABLE IF EXISTS `res_oper_order_coupon_21`;

CREATE TABLE `res_oper_order_coupon_21` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '操作明细编号',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '事件工单编号',
  `BEG_ID` varchar(30) NOT NULL COMMENT '起始编号',
  `END_ID` varchar(30) NOT NULL COMMENT '结束编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务代码',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别:10号码、11SIM卡',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `SERVICE_ID` bigint(12) DEFAULT NULL COMMENT '服务编号',
  `SRC_RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `DEST_RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `SRC_MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1 初始 OPEN、   2 激活 AVAILABLE、   5 在用实占 IN-USED、   7 作废。',
  `DEST_MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1 初始 OPEN、   2 激活 AVAILABLE、   5 在用实占 IN-USED、   7 作废。',
  `SRC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '如果此次只是入库，则源组织填成-1   如果是分配、回收、调配，则源组织填成数据源所在组织   如果只是组织内部变迁源组织=目的组织',
  `DEST_ORG_ID` bigint(12) DEFAULT NULL COMMENT '填入数据源到达的目的组织   如果是出库、删除，则填入-1   如果只是组织内部变迁，源组织=目的组织',
  `SRC_STORE_ID` bigint(12) DEFAULT NULL COMMENT '如果是分配、回收、调配，则源组织填成数据源所在组织   如果只是组织内部变迁源组织=目的组织',
  `DEST_STORE_ID` bigint(12) DEFAULT NULL COMMENT '目的仓库',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT 'ORG_ID',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型：暂时未用',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态：暂时未用',
  `AMOUNT` bigint(12) NOT NULL COMMENT '数量',
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL COMMENT '配送数量',
  `RCV_AMOUNT` varchar(25) DEFAULT NULL COMMENT '实际接收数量',
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL COMMENT '拒绝数量',
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '领用人',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `HOLD_COL` varchar(40) DEFAULT NULL COMMENT '保留字段',
  `HOLD_COL2` varchar(40) DEFAULT NULL COMMENT '保留字段',
  `HOLD_COL3` varchar(40) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPER_ORD_COUPON_1` (`BEG_ID`),
  KEY `IDX_RES_OPER_ORD_COUPON_2` (`BUSINESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源请求对于资源的分解和记录（按租户分表）';

/*Table structure for table `res_oper_order_dtl` */

DROP TABLE IF EXISTS `res_oper_order_dtl`;

CREATE TABLE `res_oper_order_dtl` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '操作明细编号',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '事件工单编号',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `SRC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '如果此次只是入库，则源组织填成-1\n如果是分配、回收、调配，则源组织填成数据源所在组织\n\n如果只是组织内部变迁源组织=目的组织',
  `DEST_ORG_ID` bigint(12) DEFAULT NULL COMMENT '填入数据源到达的目的组织\n如果是出库、删除，则填入-1\n\n如果只是组织内部变迁，源组织=目的组织',
  `SRC_STORE_ID` bigint(12) DEFAULT NULL COMMENT '如果是分配、回收、调配，则源组织填成数据源所在组织\n\n如果只是组织内部变迁源组织=目的组织',
  `DEST_STORE_ID` bigint(12) DEFAULT NULL COMMENT '目的仓库',
  `CARD_FEE` bigint(10) DEFAULT NULL COMMENT '卡的金额',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `BEG_ID` varchar(30) DEFAULT NULL COMMENT '起始编号',
  `END_ID` varchar(30) DEFAULT NULL COMMENT '结束编号',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态',
  `DTL_STATUS` varchar(3) DEFAULT NULL COMMENT '订单明细状态:0-初始;1-执行中;2-完成',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '记录一个进出数量\n进：正\n出：负',
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL COMMENT '配送数量',
  `RCV_AMOUNT` varchar(25) DEFAULT NULL COMMENT '实际接收数量',
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL COMMENT '拒绝数量',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `HOLD_COL` varchar(40) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL2` varchar(100) DEFAULT NULL COMMENT '保留字段2',
  `HOLD_COL3` varchar(100) DEFAULT NULL COMMENT '保留字段3',
  `HOLD_COL4` varchar(100) DEFAULT NULL COMMENT '保留字段4',
  `HOLD_COL5` varchar(100) DEFAULT NULL COMMENT '保留字段5',
  `HOLD_COL6` varchar(100) DEFAULT NULL COMMENT '保留字段6',
  `HOLD_COL7` varchar(100) DEFAULT NULL COMMENT '保留字段7',
  `HOLD_COL8` varchar(100) DEFAULT NULL COMMENT '保留字段8',
  `HOLD_COL9` varchar(100) DEFAULT NULL COMMENT '保留字段9',
  `HOLD_COL10` varchar(100) DEFAULT NULL COMMENT '保留字段10',
  `HOLD_DATE1` datetime DEFAULT NULL COMMENT '保留时间1',
  `HOLD_DATE2` datetime DEFAULT NULL COMMENT '保留时间2',
  `HOLD_COL11` varchar(100) DEFAULT NULL COMMENT '保留字段11',
  `HOLD_COL12` varchar(100) DEFAULT NULL COMMENT '保留字段12',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPER_ORDDTL_1` (`RES_INST_ID`),
  KEY `IDX_RES_OPER_ORDDTL_2` (`SRC_ORG_ID`,`DEST_ORG_ID`),
  KEY `IDX_RES_OPER_ORDDTL_3` (`DONE_DATE`),
  KEY `IDX_RES_OPER_ORDDTL_4` (`SRC_STORE_ID`,`DEST_STORE_ID`),
  KEY `IDX_RES_OPER_ORDDTL_5` (`RES_TYPE_ID`,`RES_SPEC_ID`),
  KEY `IDX_RES_OPER_ORDDTL_6` (`BEG_ID`,`END_ID`),
  KEY `IDX_RES_OPER_ORDDTL_7` (`RES_EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源请求对于资源的分解和记录（按租户分表）';

/*Table structure for table `res_oper_order_dtl_21` */

DROP TABLE IF EXISTS `res_oper_order_dtl_21`;

CREATE TABLE `res_oper_order_dtl_21` (
  `ORDER_DTL_ID` bigint(12) NOT NULL,
  `RES_EVENT_ID` bigint(12) DEFAULT NULL,
  `RES_TYPE_ID` bigint(12) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `RES_INST_ID` varchar(25) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `SRC_ORG_ID` bigint(12) DEFAULT NULL,
  `DEST_ORG_ID` bigint(12) DEFAULT NULL,
  `SRC_STORE_ID` bigint(12) DEFAULT NULL,
  `DEST_STORE_ID` bigint(12) DEFAULT NULL,
  `CARD_FEE` bigint(10) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `BEG_ID` varchar(30) DEFAULT NULL,
  `END_ID` varchar(30) DEFAULT NULL,
  `USE_TYPE` bigint(2) DEFAULT NULL,
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `DTL_STATUS` varchar(3) DEFAULT NULL,
  `AMOUNT` bigint(12) DEFAULT NULL,
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL,
  `RCV_AMOUNT` varchar(25) DEFAULT NULL,
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL,
  `RECEIVER` bigint(12) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `HOLD_COL` varchar(40) DEFAULT NULL,
  `HOLD_COL2` varchar(100) DEFAULT NULL,
  `HOLD_COL3` varchar(100) DEFAULT NULL,
  `HOLD_COL4` varchar(100) DEFAULT NULL,
  `HOLD_COL5` varchar(100) DEFAULT NULL,
  `HOLD_COL6` varchar(100) DEFAULT NULL,
  `HOLD_COL7` varchar(100) DEFAULT NULL,
  `HOLD_COL8` varchar(100) DEFAULT NULL,
  `HOLD_COL9` varchar(100) DEFAULT NULL,
  `HOLD_COL10` varchar(100) DEFAULT NULL,
  `HOLD_DATE1` datetime DEFAULT NULL,
  `HOLD_DATE2` datetime DEFAULT NULL,
  `HOLD_COL11` varchar(100) DEFAULT NULL COMMENT '保留字段11',
  `HOLD_COL12` varchar(100) DEFAULT NULL COMMENT '保留字段12',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPER_ORDDTL_2_21` (`SRC_ORG_ID`,`DEST_ORG_ID`),
  KEY `IDX_RES_OPER_ORDDTL_6_21` (`BEG_ID`,`END_ID`),
  KEY `IDX_RES_OPER_ORDDTL_5_21` (`RES_TYPE_ID`,`RES_SPEC_ID`),
  KEY `IDX_RES_OPER_ORDDTL_1_21` (`RES_INST_ID`),
  KEY `IDX_RES_OPER_ORDDTL_4_21` (`SRC_STORE_ID`,`DEST_STORE_ID`),
  KEY `IDX_RES_OPER_ORDDTL_7_21` (`RES_EVENT_ID`),
  KEY `IDX_RES_OPER_ORDDTL_3_21` (`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_oper_order_goods` */

DROP TABLE IF EXISTS `res_oper_order_goods`;

CREATE TABLE `res_oper_order_goods` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `BEG_ID` varchar(30) DEFAULT NULL COMMENT '起始编号',
  `END_ID` varchar(30) DEFAULT NULL COMMENT '结束号段',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `SRC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '如果此次只是入库，则源组织填成-1\n如果是分配、回收、调配，则源组织填成数据源所在组织\n\n如果只是组织内部变迁源组织=目的组织',
  `DEST_ORG_ID` bigint(12) DEFAULT NULL COMMENT '填入数据源到达的目的组织\n如果是出库、删除，则填入-1\n\n如果只是组织内部变迁，源组织=目的组织',
  `SRC_STORE_ID` bigint(12) DEFAULT NULL COMMENT '编码',
  `DEST_STORE_ID` bigint(12) DEFAULT NULL COMMENT '编码',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `RES_STATUS` varchar(30) DEFAULT NULL COMMENT '��ʱδ��',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1-封存；\n2-开放；\n3-选中;\n4-预约；\n5－占用；\n6－冷冻 ；\n7-空闲；\n8－废弃；',
  `CARD_FEE` bigint(10) DEFAULT NULL COMMENT '卡的金额',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '记录一个进出数量\n进：正\n出：负',
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `RCV_AMOUNT` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `HOLD_COL` varchar(40) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPER_ORD_GOODS_1` (`RES_SPEC_ID`,`RES_TYPE_ID`),
  KEY `IDX_RES_OPER_ORD_GOODS_2` (`SRC_ORG_ID`,`DEST_ORG_ID`),
  KEY `IDX_RES_OPER_ORD_GOODS_3` (`DONE_DATE`),
  KEY `IDX_RES_OPER_ORD_GOODS_4` (`SRC_STORE_ID`,`DEST_STORE_ID`),
  KEY `IDX_RES_OPER_ORD_GOODS_5` (`RES_EVENT_ID`),
  KEY `IDX_RES_OPER_ORD_GOODS_6` (`RES_INST_ID`),
  KEY `IDX_RES_OPER_ORD_GOODS_7` (`BEG_ID`,`END_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源请求对于资源的分解和记录（按租户分表）';

/*Table structure for table `res_oper_order_goods_21` */

DROP TABLE IF EXISTS `res_oper_order_goods_21`;

CREATE TABLE `res_oper_order_goods_21` (
  `ORDER_DTL_ID` bigint(12) NOT NULL,
  `BEG_ID` varchar(30) DEFAULT NULL,
  `END_ID` varchar(30) DEFAULT NULL,
  `RES_EVENT_ID` bigint(12) DEFAULT NULL,
  `RES_TYPE_ID` bigint(12) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `RES_INST_ID` varchar(25) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `SRC_ORG_ID` bigint(12) DEFAULT NULL,
  `DEST_ORG_ID` bigint(12) DEFAULT NULL,
  `SRC_STORE_ID` bigint(12) DEFAULT NULL,
  `DEST_STORE_ID` bigint(12) DEFAULT NULL,
  `USE_TYPE` bigint(2) DEFAULT NULL,
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `CARD_FEE` bigint(10) DEFAULT NULL,
  `AMOUNT` bigint(12) DEFAULT NULL,
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL,
  `RCV_AMOUNT` varchar(25) DEFAULT NULL,
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `RECEIVER` bigint(12) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `EXT` varchar(25) DEFAULT NULL,
  `HOLD_COL` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPER_ORD_GOODS_5_21` (`RES_EVENT_ID`),
  KEY `IDX_RES_OPER_ORD_GOODS_7_21` (`BEG_ID`,`END_ID`),
  KEY `IDX_RES_OPER_ORD_GOODS_2_21` (`SRC_ORG_ID`,`DEST_ORG_ID`),
  KEY `IDX_RES_OPER_ORD_GOODS_3_21` (`DONE_DATE`),
  KEY `IDX_RES_OPER_ORD_GOODS_1_21` (`RES_SPEC_ID`,`RES_TYPE_ID`),
  KEY `IDX_RES_OPER_ORD_GOODS_4_21` (`SRC_STORE_ID`,`DEST_STORE_ID`),
  KEY `IDX_RES_OPER_ORD_GOODS_6_21` (`RES_INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_oper_order_invoice` */

DROP TABLE IF EXISTS `res_oper_order_invoice`;

CREATE TABLE `res_oper_order_invoice` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '操作明细编号',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '事件工单编号',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别:10号码、11SIM卡',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `SRC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '如果此次只是入库，则源组织填成-1\n如果是分配、回收、调配，则源组织填成数据源所在组织\n\n如果只是组织内部变迁源组织=目的组织',
  `DEST_ORG_ID` bigint(12) DEFAULT NULL COMMENT '填入数据源到达的目的组织\n如果是出库、删除，则填入-1\n\n如果只是组织内部变迁，源组织=目的组织',
  `SRC_STORE_ID` bigint(12) DEFAULT NULL COMMENT '编码',
  `DEST_STORE_ID` bigint(12) DEFAULT NULL COMMENT '目的仓库',
  `CARD_FEE` bigint(10) DEFAULT NULL COMMENT '卡的金额',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `BEG_ID` varchar(30) DEFAULT NULL COMMENT '起始编号',
  `END_ID` varchar(30) DEFAULT NULL COMMENT '结束编号',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型:10号码、11SIM卡',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态:1002完好',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:1-封存 2-开放 3-选中 4-预约 5－占用 6－冷冻 7-空闲 8－废弃',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '数量',
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL COMMENT '配送数量',
  `RCV_AMOUNT` varchar(25) DEFAULT NULL COMMENT '实际接收数量',
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL COMMENT '拒绝数量',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `HOLD_COL` varchar(40) DEFAULT NULL COMMENT '保留字段',
  `BOOK_ID` bigint(10) DEFAULT NULL COMMENT '发票薄号',
  `FLOW_TYPE` bigint(12) DEFAULT NULL COMMENT '流转类型:暂时未用',
  `FLOW_SE_TYPE` bigint(12) DEFAULT NULL COMMENT '流转子类型暂时未用',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPER_ORDNVOICE_1` (`RES_EVENT_ID`),
  KEY `IDX_RES_OPER_ORDNVOICE_2` (`RES_TYPE_ID`,`RES_SPEC_ID`),
  KEY `IDX_RES_OPER_ORDNVOICE_3` (`RES_INST_ID`),
  KEY `IDX_RES_OPER_ORDNVOICE_4` (`DONE_DATE`),
  KEY `IDX_RES_OPER_ORDNVOICE_5` (`SRC_ORG_ID`,`DEST_ORG_ID`),
  KEY `IDX_RES_OPER_ORDNVOICE_6` (`SRC_STORE_ID`,`DEST_STORE_ID`),
  KEY `IDX_RES_OPER_ORDNVOICE_7` (`BEG_ID`,`END_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源请求对于资源的分解和记录（按租户分表）';

/*Table structure for table `res_oper_order_paycard` */

DROP TABLE IF EXISTS `res_oper_order_paycard`;

CREATE TABLE `res_oper_order_paycard` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '操作明细编号',
  `BEG_ID` varchar(30) DEFAULT NULL COMMENT '起始编号',
  `END_ID` varchar(30) DEFAULT NULL COMMENT '结束编号',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '操作工单编号',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别:10号码、11SIM卡',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `SRC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '如果此次只是入库，则源组织填成-1\n如果是分配、回收、调配，则源组织填成数据源所在组织\n\n如果只是组织内部变迁源组织=目的组织',
  `DEST_ORG_ID` bigint(12) DEFAULT NULL COMMENT '填入数据源到达的目的组织\n如果是出库、删除，则填入-1\n\n如果只是组织内部变迁，源组织=目的组织',
  `SRC_STORE_ID` bigint(12) DEFAULT NULL COMMENT '如果是分配、回收、调配，则源组织填成数据源所在组织\n\n如果只是组织内部变迁源组织=目的组织',
  `DEST_STORE_ID` bigint(12) DEFAULT NULL COMMENT '目的仓库',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型:1营业、2代销',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态:1002完好',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:1-封存2-开放3-选中4-预约5－占用6－冷冻7-空闲8－废弃',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务代码',
  `CARD_FEE` bigint(10) DEFAULT NULL COMMENT '卡的金额',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '数量',
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL COMMENT '配送数量',
  `RCV_AMOUNT` varchar(25) DEFAULT NULL COMMENT '实际接收数量',
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL COMMENT '拒绝数量',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `HOLD_COL` varchar(40) DEFAULT NULL COMMENT '保留字段',
  `CARD_PROM_TYPE` bigint(12) DEFAULT NULL COMMENT '充值卡优惠类型暂时未用',
  `CARD_PROM_VALUE` varchar(12) DEFAULT NULL COMMENT '后定义卡： 充值卡优惠值 \nCHARGE_CARD_PROM_VALUE',
  `DATA_CARD_NO` varchar(200) DEFAULT NULL COMMENT '后定义卡：数据卡编号\nDATA_CARD_NO',
  `DATA_CARD_TYPE` varchar(12) DEFAULT NULL COMMENT '后定义卡：数据卡类型\nDATA_CARD_TYPE暂时未用',
  `DATA_CARD_FEE` varchar(12) DEFAULT NULL COMMENT '后定义卡：数据卡面额\nDATA_CARD_DENOM',
  `DATA_CARD_PROM_TYPE` bigint(12) DEFAULT NULL COMMENT '后定义卡：数据卡优惠类型\nDATA_CARD_PROM_TYPE暂时未用',
  `DATA_CARD_PROM_VALUE` varchar(12) DEFAULT NULL COMMENT '后定义卡： 数据卡优惠值\nDATA_CARD_PROM_VALUE',
  `REVERSE_FLAG` varchar(3) DEFAULT NULL COMMENT '后定义卡：是否回退\nREVERSE_FLAG\n\n是否回退 \n0 未回退；1 已回退',
  `REVERSE_DONE_CODE` varchar(12) DEFAULT NULL COMMENT '后定义卡：回退业务流水\nREVERSE_DONE_CODE',
  `RSRV_STR1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(16) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(16) DEFAULT NULL COMMENT '备用字段5',
  `FACTORY_ID` bigint(12) DEFAULT NULL COMMENT '卡商编码',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPER_PAYCARD_1` (`BEG_ID`),
  KEY `IDX_RES_OPER_PAYCARD_2` (`DONE_DATE`),
  KEY `IDX_RES_OPER_PAYCARD_3` (`RES_TYPE_ID`,`RES_SPEC_ID`),
  KEY `IDX_RES_OPER_PAYCARD_4` (`SRC_ORG_ID`,`DEST_ORG_ID`),
  KEY `IDX_RES_OPER_PAYCARD_5` (`SRC_STORE_ID`,`DEST_STORE_ID`),
  KEY `IDX_RES_OPER_PAYCARD_6` (`RES_EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='有价卡业务操作明细记录（按租户分表）';

/*Table structure for table `res_oper_order_phone` */

DROP TABLE IF EXISTS `res_oper_order_phone`;

CREATE TABLE `res_oper_order_phone` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '操作明细编号',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '事件工单编号',
  `BEG_ID` varchar(30) NOT NULL COMMENT '起始编号',
  `END_ID` varchar(30) NOT NULL COMMENT '结束编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务代码',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别:10号码、11SIM卡',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `SERVICE_ID` bigint(12) DEFAULT NULL COMMENT '服务编号',
  `SRC_RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `DEST_RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `SRC_MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:\n1 空号 Open、\n2 激活 Available、\n3 预占 B2C预占 B2C Reserved、\n4 预留  B2B预占 B2B Reserved、\n5 在用实占 In-Used、\n6 冷冻 Ageing、\n7 作废、\n8 号码查询锁定状态 Locked、\n9 在途、\n10 号码回收后：阻塞 Block、\n20 号码生成初始状态 for Telenor、\n21 Under Assignment [UAS]待分配、\n22 Under Cancel Assignment [UCA]待取消分配、\n23 Canceled Assignment [CAS]已取消分配、\n24 Binded [BIN]手机号码已经和SIM卡绑定等待SIM卡发给制卡商、\n25 Pre-activated [PAC]预激活的后付费卡\n26 Under Port In [UPI]待携入\n27 Ported In [PIN]已经携入\n28 Under Port Out [UPO]待携出\n29 Ported Out [POU]已经携出',
  `DEST_MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:\n1 空号 Open、\n2 激活 Available、\n3 预占 B2C预占 B2C Reserved、\n4 预留  B2B预占 B2B Reserved、\n5 在用实占 In-Used、\n6 冷冻 Ageing、\n7 作废、\n8 号码查询锁定状态 Locked、\n9 在途、\n10 号码回收后：阻塞 Block、\n20 号码生成初始状态 for Telenor、\n21 Under Assignment [UAS]待分配、\n22 Under Cancel Assignment [UCA]待取消分配、\n23 Canceled Assignment [CAS]已取消分配、\n24 Binded [BIN]手机号码已经和SIM卡绑定等待SIM卡发给制卡商、\n25 Pre-activated [PAC]预激活的后付费卡\n26 Under Port In [UPI]待携入\n27 Ported In [PIN]已经携入\n28 Under Port Out [UPO]待携出\n29 Ported Out [POU]已经携出',
  `SRC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '如果此次只是入库，则源组织填成-1\n如果是分配、回收、调配，则源组织填成数据源所在组织\n\n如果只是组织内部变迁源组织=目的组织',
  `DEST_ORG_ID` bigint(12) DEFAULT NULL COMMENT '填入数据源到达的目的组织\n如果是出库、删除，则填入-1\n\n如果只是组织内部变迁，源组织=目的组织',
  `SRC_STORE_ID` bigint(12) DEFAULT NULL COMMENT '如果是分配、回收、调配，则源组织填成数据源所在组织\n\n如果只是组织内部变迁源组织=目的组织',
  `DEST_STORE_ID` bigint(12) DEFAULT NULL COMMENT '目的仓库',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `RES_BATCH_ID` bigint(12) DEFAULT NULL COMMENT '资源受理批次号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT 'ORG_ID',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型:1营业、2代销',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态:1002完好',
  `AMOUNT` bigint(12) NOT NULL COMMENT '数量',
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL COMMENT '配送数量',
  `RCV_AMOUNT` varchar(25) DEFAULT NULL COMMENT '实际接收数量',
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL COMMENT '拒绝数量',
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '领用人',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `HOLD_COL` varchar(40) DEFAULT NULL COMMENT '保留字段',
  `HOLD_COL2` varchar(40) DEFAULT NULL COMMENT '保留字段',
  `HOLD_COL3` varchar(40) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPER_ORD_PHONE_1` (`RES_EVENT_ID`),
  KEY `IDX_RES_OPER_ORD_PHONE_2` (`SRC_ORG_ID`,`DEST_ORG_ID`),
  KEY `IDX_RES_OPER_ORD_PHONE_3` (`BEG_ID`,`END_ID`),
  KEY `IDX_RES_OPER_ORD_PHONE_4` (`SRC_STORE_ID`,`DEST_STORE_ID`),
  KEY `IDX_RES_OPER_ORD_PHONE_5` (`DEST_RES_SPEC_ID`,`RES_TYPE_ID`),
  KEY `IDX_RES_OPER_ORD_PHONE_6` (`RES_INST_ID`),
  KEY `IDX_RES_OPER_ORD_PHONE_7` (`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源请求对于资源的分解和记录（按租户分表）';

/*Table structure for table `res_oper_order_phone_21` */

DROP TABLE IF EXISTS `res_oper_order_phone_21`;

CREATE TABLE `res_oper_order_phone_21` (
  `ORDER_DTL_ID` bigint(12) NOT NULL,
  `RES_EVENT_ID` bigint(12) DEFAULT NULL,
  `BEG_ID` varchar(30) NOT NULL,
  `END_ID` varchar(30) NOT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `RES_TYPE_ID` bigint(12) DEFAULT NULL,
  `RES_INST_ID` varchar(25) DEFAULT NULL,
  `SERVICE_ID` bigint(12) DEFAULT NULL,
  `SRC_RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `DEST_RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `SRC_MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `DEST_MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `SRC_ORG_ID` bigint(12) DEFAULT NULL,
  `DEST_ORG_ID` bigint(12) DEFAULT NULL,
  `SRC_STORE_ID` bigint(12) DEFAULT NULL,
  `DEST_STORE_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `USE_TYPE` bigint(2) DEFAULT NULL,
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `AMOUNT` bigint(12) NOT NULL,
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL,
  `RCV_AMOUNT` varchar(25) DEFAULT NULL,
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL,
  `RECEIVER` varchar(50) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `EXT` varchar(25) DEFAULT NULL,
  `HOLD_COL` varchar(40) DEFAULT NULL,
  `HOLD_COL2` varchar(40) DEFAULT NULL,
  `HOLD_COL3` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPER_ORD_PHONE_5_21` (`DEST_RES_SPEC_ID`,`RES_TYPE_ID`),
  KEY `IDX_RES_OPER_ORD_PHONE_3_21` (`BEG_ID`,`END_ID`),
  KEY `IDX_RES_OPER_ORD_PHONE_6_21` (`RES_INST_ID`),
  KEY `IDX_RES_OPER_ORD_PHONE_1_21` (`RES_EVENT_ID`),
  KEY `IDX_RES_OPER_ORD_PHONE_4_21` (`SRC_STORE_ID`,`DEST_STORE_ID`),
  KEY `IDX_RES_OPER_ORD_PHONE_2_21` (`SRC_ORG_ID`,`DEST_ORG_ID`),
  KEY `IDX_RES_OPER_ORD_PHONE_7_21` (`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_oper_order_sim` */

DROP TABLE IF EXISTS `res_oper_order_sim`;

CREATE TABLE `res_oper_order_sim` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '操作明细编号',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '事件工单编号',
  `BEG_ID` varchar(30) DEFAULT NULL COMMENT '起始编号',
  `END_ID` varchar(30) DEFAULT NULL COMMENT '结束编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务代码',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别:10号码、11SIM卡',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `SRC_MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:',
  `DEST_MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:',
  `SRC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '如果此次只是入库，则源组织填成-1\n如果是分配、回收、调配，则源组织填成数据源所在组织\n\n如果只是组织内部变迁源组织=目的组织',
  `DEST_ORG_ID` bigint(12) DEFAULT NULL COMMENT '填入数据源到达的目的组织\n如果是出库、删除，则填入-1\n\n如果只是组织内部变迁，源组织=目的组织',
  `SRC_STORE_ID` bigint(12) DEFAULT NULL COMMENT '编码',
  `DEST_STORE_ID` bigint(12) DEFAULT NULL COMMENT '目的仓库',
  `CARD_FEE` bigint(10) DEFAULT NULL COMMENT '卡的金额',
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '领用人',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT 'ORG_ID',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `SERVICE_ID` bigint(12) DEFAULT NULL COMMENT '服务编号',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型:1营业、2代销',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态:1002完好',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '数量',
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL COMMENT '配送数量',
  `RCV_AMOUNT` varchar(25) DEFAULT NULL COMMENT '实际接收数量',
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL COMMENT '拒绝数量',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `HOLD_COL` varchar(40) DEFAULT NULL COMMENT '保留字段',
  `HOLD_COL2` varchar(40) DEFAULT NULL COMMENT '保留字段',
  `HOLD_COL3` varchar(40) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPER_ORD_SIM_1` (`RES_SPEC_ID`,`RES_TYPE_ID`),
  KEY `IDX_RES_OPER_ORD_SIM_2` (`RES_EVENT_ID`),
  KEY `IDX_RES_OPER_ORD_SIM_3` (`RES_INST_ID`),
  KEY `IDX_RES_OPER_ORD_SIM_4` (`BEG_ID`,`END_ID`),
  KEY `IDX_RES_OPER_ORD_SIM_5` (`SRC_ORG_ID`,`DEST_ORG_ID`),
  KEY `IDX_RES_OPER_ORD_SIM_6` (`SRC_STORE_ID`,`DEST_STORE_ID`),
  KEY `IDX_RES_OPER_ORD_SIM_7` (`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SIM卡操作明细（按租户分表）';

/*Table structure for table `res_oper_order_sim_21` */

DROP TABLE IF EXISTS `res_oper_order_sim_21`;

CREATE TABLE `res_oper_order_sim_21` (
  `ORDER_DTL_ID` bigint(12) NOT NULL,
  `RES_EVENT_ID` bigint(12) DEFAULT NULL,
  `BEG_ID` varchar(30) DEFAULT NULL,
  `END_ID` varchar(30) DEFAULT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `RES_TYPE_ID` bigint(12) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `RES_INST_ID` varchar(25) DEFAULT NULL,
  `SRC_MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `DEST_MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `SRC_ORG_ID` bigint(12) DEFAULT NULL,
  `DEST_ORG_ID` bigint(12) DEFAULT NULL,
  `SRC_STORE_ID` bigint(12) DEFAULT NULL,
  `DEST_STORE_ID` bigint(12) DEFAULT NULL,
  `CARD_FEE` bigint(10) DEFAULT NULL,
  `RECEIVER` varchar(50) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `SERVICE_ID` bigint(12) DEFAULT NULL,
  `USE_TYPE` bigint(2) DEFAULT NULL,
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `AMOUNT` bigint(12) DEFAULT NULL,
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL,
  `RCV_AMOUNT` varchar(25) DEFAULT NULL,
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `EXT` varchar(25) DEFAULT NULL,
  `HOLD_COL` varchar(40) DEFAULT NULL,
  `HOLD_COL2` varchar(40) DEFAULT NULL,
  `HOLD_COL3` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPER_ORD_SIM_4_21` (`BEG_ID`,`END_ID`),
  KEY `IDX_RES_OPER_ORD_SIM_5_21` (`SRC_ORG_ID`,`DEST_ORG_ID`),
  KEY `IDX_RES_OPER_ORD_SIM_7_21` (`DONE_DATE`),
  KEY `IDX_RES_OPER_ORD_SIM_6_21` (`SRC_STORE_ID`,`DEST_STORE_ID`),
  KEY `IDX_RES_OPER_ORD_SIM_3_21` (`RES_INST_ID`),
  KEY `IDX_RES_OPER_ORD_SIM_1_21` (`RES_SPEC_ID`,`RES_TYPE_ID`),
  KEY `IDX_RES_OPER_ORD_SIM_2_21` (`RES_EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_oper_order_terminal` */

DROP TABLE IF EXISTS `res_oper_order_terminal`;

CREATE TABLE `res_oper_order_terminal` (
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单编号',
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '操作明细编号',
  `BEG_ID` varchar(30) DEFAULT NULL COMMENT '起始编号',
  `END_ID` varchar(30) DEFAULT NULL COMMENT '结束号段',
  `NEW_SERIES_CODE` varchar(25) DEFAULT NULL COMMENT '新串号',
  `OLD_SERIES_CODE` varchar(25) DEFAULT NULL COMMENT '老串号',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别 10 号码、16终端',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `TERMINAL_NAME` varchar(200) DEFAULT NULL COMMENT '机型名称',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `SRC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '源组织:\n如果此次只是入库，则源组织填成-1\n如果是分配、回收、调配，则源组织填成数据源所在组织\n\n如果只是组织内部变迁源组织=目的组织',
  `DEST_ORG_ID` bigint(12) DEFAULT NULL COMMENT '目的组织:\n填入数据源到达的目的组织\n如果是出库、删除，则填入-1\n\n如果只是组织内部变迁，源组织=目的组织',
  `SRC_STORE_ID` bigint(12) DEFAULT NULL COMMENT '源仓库:\n如果是分配、回收、调配，则源组织填成数据源所在组织\n\n如果只是组织内部变迁源组织=目的组织',
  `DEST_STORE_ID` bigint(12) DEFAULT NULL COMMENT '目的仓库',
  `FACTORY_ID` varchar(30) DEFAULT NULL COMMENT '生产厂商',
  `COLOR_ID` bigint(12) DEFAULT NULL COMMENT '1黑色\n2红色\n3黄色\n4灰色\n5默认',
  `CONFIG_ID` bigint(12) DEFAULT NULL COMMENT '1标准\n2豪华\n3简配',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务代码',
  `USE_RANGE` bigint(12) DEFAULT NULL COMMENT '如果是终端的是时候：1601.本地1602.集团',
  `CHANGE_SALE` bigint(20) DEFAULT NULL COMMENT '拆扣价格',
  `SALES_CHANNEL` varchar(3) DEFAULT NULL COMMENT '销售渠道：1营业厅 2代理商',
  `SUPPLIER` bigint(12) DEFAULT NULL COMMENT '可以从res_partner 中调取',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型:1营业、2代销',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态:\n0初始、1已入库、2强制入库、3串货、4重复数据、5已删除',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态 0初始、1生成',
  `TERMINAL_FEE` bigint(10) DEFAULT NULL COMMENT '终端金额',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '数量',
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL COMMENT '配送数量',
  `RCV_AMOUNT` varchar(25) DEFAULT NULL COMMENT '实际接收数量',
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL COMMENT '拒绝数量',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `PHONE_NUM` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `IS_OUT` varchar(2) DEFAULT NULL COMMENT '是否出库:\n0：出库，1：入库',
  `IS_CHANGE` varchar(2) DEFAULT NULL COMMENT '0：换机，1：不是换机',
  `ACCESSORIES` varchar(255) DEFAULT NULL COMMENT '配件信息',
  `DEPRECIATION_MONEY` bigint(10) DEFAULT NULL COMMENT '折旧费',
  `SALE_OP_ID` bigint(12) DEFAULT NULL COMMENT '促销员',
  `AREA_ID` bigint(12) DEFAULT NULL COMMENT '分公司',
  `PARTNER_ID` bigint(12) DEFAULT NULL COMMENT '第三方平台  partner_id',
  `AGENT_NAME` varchar(25) DEFAULT NULL COMMENT '代理商名称  agent_name',
  `SALE_PRICE` bigint(12) DEFAULT NULL COMMENT '标价             sale_price          number',
  `REBATE_PRICE` bigint(12) DEFAULT NULL COMMENT '折扣价          rebate_price     number',
  `VALID_MONEY` bigint(12) DEFAULT NULL COMMENT '应收             valid_money     number',
  `SALETOTAL_MONEY` bigint(12) DEFAULT NULL COMMENT '实收',
  `PAY_TYPE` bigint(12) DEFAULT NULL COMMENT '缴费方式',
  `USEPOINTS` bigint(12) DEFAULT NULL COMMENT '适用积分      usepoints           number',
  `EXT` varchar(25) DEFAULT NULL COMMENT 'EXT',
  `HOLD_COL1` varchar(100) DEFAULT NULL COMMENT '保留字段1:\n客户绑定营销案编码\n系统处理结果',
  `HOLD_COL2` varchar(100) DEFAULT NULL COMMENT '保留字段2:\n客户绑定营销案类型:客户绑定营销案类型，当PromotionCode有值时\n1- 全网营销方案\n2- 省公司自定营销方案\n\n处理不成功原因',
  `HOLD_COL3` varchar(100) DEFAULT NULL COMMENT '保留字段3:\n不成功原因说明',
  `HOLD_COL4` varchar(100) DEFAULT NULL COMMENT '保留字段4',
  `HOLD_COL5` varchar(200) DEFAULT NULL COMMENT '保留字段5',
  `HOLD_COL6` varchar(200) DEFAULT NULL COMMENT '保留字段6',
  `HOLD_COL7` varchar(200) DEFAULT NULL COMMENT '保留字段7',
  `HOLD_COL8` varchar(200) DEFAULT NULL COMMENT '保留字段8',
  `HOLD_COL9` varchar(200) DEFAULT NULL COMMENT '保留字段9',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPER_ORDER_TERMINAL_1` (`BEG_ID`),
  KEY `IDX_RES_OPER_ORDER_TERMINAL_2` (`RES_SPEC_ID`),
  KEY `IDX_RES_OPER_ORDER_TERMINAL_3` (`RES_EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端订单明细表（按照地市分表、分中心）';

/*Table structure for table `res_oper_order_voucher` */

DROP TABLE IF EXISTS `res_oper_order_voucher`;

CREATE TABLE `res_oper_order_voucher` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '操作明细编号',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '事件工单编号',
  `BEG_ID` varchar(30) NOT NULL COMMENT '起始编号',
  `END_ID` varchar(30) NOT NULL COMMENT '结束编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务代码',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别:10号码、11SIM卡',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `SERVICE_ID` bigint(12) DEFAULT NULL COMMENT '服务编号',
  `SRC_RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `DEST_RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `SRC_MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1 初始 Open、   2 激活 Available、   5 在用实占 In-Used、   7 作废。',
  `DEST_MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1 初始 Open、   2 激活 Available、   5 在用实占 In-Used、   7 作废。',
  `SRC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '如果此次只是入库，则源组织填成-1   如果是分配、回收、调配，则源组织填成数据源所在组织   如果只是组织内部变迁源组织=目的组织',
  `DEST_ORG_ID` bigint(12) DEFAULT NULL COMMENT '填入数据源到达的目的组织   如果是出库、删除，则填入-1   如果只是组织内部变迁，源组织=目的组织',
  `SRC_STORE_ID` bigint(12) DEFAULT NULL COMMENT '如果是分配、回收、调配，则源组织填成数据源所在组织   如果只是组织内部变迁源组织=目的组织',
  `DEST_STORE_ID` bigint(12) DEFAULT NULL COMMENT '目的仓库',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT 'ORG_ID',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型：暂时未用',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态：暂时未用',
  `AMOUNT` bigint(12) NOT NULL COMMENT '数量',
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL COMMENT '配送数量',
  `RCV_AMOUNT` varchar(25) DEFAULT NULL COMMENT '实际接收数量',
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL COMMENT '拒绝数量',
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '领用人',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `HOLD_COL` varchar(40) DEFAULT NULL COMMENT '保留字段',
  `HOLD_COL2` varchar(40) DEFAULT NULL COMMENT '保留字段',
  `HOLD_COL3` varchar(40) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPER_ORD_VOUCHER_1` (`BEG_ID`),
  KEY `IDX_RES_OPER_ORD_VOUCHER_2` (`BUSINESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源请求对于资源的分解和记录（按租户分表）';

/*Table structure for table `res_oper_order_voucher_21` */

DROP TABLE IF EXISTS `res_oper_order_voucher_21`;

CREATE TABLE `res_oper_order_voucher_21` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '操作明细编号',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '事件工单编号',
  `BEG_ID` varchar(30) NOT NULL COMMENT '起始编号',
  `END_ID` varchar(30) NOT NULL COMMENT '结束编号',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务代码',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别:10号码、11SIM卡',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `SERVICE_ID` bigint(12) DEFAULT NULL COMMENT '服务编号',
  `SRC_RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `DEST_RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `SRC_MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1 初始 Open、   2 激活 Available、   5 在用实占 In-Used、   7 作废。',
  `DEST_MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1 初始 Open、   2 激活 Available、   5 在用实占 In-Used、   7 作废。',
  `SRC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '如果此次只是入库，则源组织填成-1   如果是分配、回收、调配，则源组织填成数据源所在组织   如果只是组织内部变迁源组织=目的组织',
  `DEST_ORG_ID` bigint(12) DEFAULT NULL COMMENT '填入数据源到达的目的组织   如果是出库、删除，则填入-1   如果只是组织内部变迁，源组织=目的组织',
  `SRC_STORE_ID` bigint(12) DEFAULT NULL COMMENT '如果是分配、回收、调配，则源组织填成数据源所在组织   如果只是组织内部变迁源组织=目的组织',
  `DEST_STORE_ID` bigint(12) DEFAULT NULL COMMENT '目的仓库',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT 'ORG_ID',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型：暂时未用',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态：暂时未用',
  `AMOUNT` bigint(12) NOT NULL COMMENT '数量',
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL COMMENT '配送数量',
  `RCV_AMOUNT` varchar(25) DEFAULT NULL COMMENT '实际接收数量',
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL COMMENT '拒绝数量',
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '领用人',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `HOLD_COL` varchar(40) DEFAULT NULL COMMENT '保留字段',
  `HOLD_COL2` varchar(40) DEFAULT NULL COMMENT '保留字段',
  `HOLD_COL3` varchar(40) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_OPER_ORD_VOUCHER_1` (`BEG_ID`),
  KEY `IDX_RES_OPER_ORD_VOUCHER_2` (`BUSINESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源请求对于资源的分解和记录（按租户分表）';

/*Table structure for table `res_oper_order_wlancard` */

DROP TABLE IF EXISTS `res_oper_order_wlancard`;

CREATE TABLE `res_oper_order_wlancard` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `BEG_ID` varchar(30) NOT NULL COMMENT '起始编号',
  `END_ID` varchar(30) NOT NULL COMMENT '暂时未用',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `DONE_DATE` datetime NOT NULL COMMENT '受理日期',
  `SRC_ORG_ID` bigint(12) NOT NULL COMMENT '如果此次只是入库，则源组织填成-1\n如果是分配、回收、调配，则源组织填成数据源所在组织\n\n如果只是组织内部变迁源组织=目的组织',
  `DEST_ORG_ID` bigint(12) DEFAULT NULL COMMENT '填入数据源到达的目的组织\n如果是出库、删除，则填入-1\n\n如果只是组织内部变迁，源组织=目的组织',
  `SRC_STORE_ID` bigint(12) NOT NULL COMMENT '编码',
  `DEST_STORE_ID` bigint(12) DEFAULT NULL COMMENT '编码',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1-封存；\n2-开放；\n3-选中;\n4-预约；\n5－占用；\n6－冷冻 ；\n7-空闲；\n8－废弃；',
  `CARD_FEE` bigint(10) NOT NULL COMMENT '卡的金额',
  `AMOUNT` bigint(12) NOT NULL COMMENT '记录一个进出数量\n进：正\n出：负',
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `RCV_AMOUNT` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `REGION_ID` varchar(6) NOT NULL COMMENT '暂时未用',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '暂时未用',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `EXT` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL` varchar(40) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_BUSI_WLANCARD_1` (`BEG_ID`,`END_ID`),
  KEY `IDX_RES_BUSI_WLANCARD_2` (`DONE_DATE`),
  KEY `IDX_RES_BUSI_WLANCARD_3` (`RES_TYPE_ID`,`RES_SPEC_ID`),
  KEY `IDX_RES_BUSI_WLANCARD_4` (`SRC_ORG_ID`,`DEST_ORG_ID`),
  KEY `IDX_RES_BUSI_WLANCARD_5` (`SRC_STORE_ID`,`DEST_STORE_ID`),
  KEY `IDX_RES_BUSI_WLANCARD_6` (`RES_INST_ID`),
  KEY `IDX_RES_BUSI_WLANCARD_7` (`RES_EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='WLAN卡业务操作明细记录';

/*Table structure for table `res_order_attr` */

DROP TABLE IF EXISTS `res_order_attr`;

CREATE TABLE `res_order_attr` (
  `ATTR_ID` varchar(30) NOT NULL COMMENT '主键',
  `ATTR_CODE` varchar(30) DEFAULT NULL COMMENT '属性编码',
  `ATTR_VALUE` varchar(30) DEFAULT NULL COMMENT '属性值',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单ID',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '流水号',
  `DODE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `EXP_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成时间',
  `REMARKS` varchar(25) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ATTR_ID`),
  KEY `IDX_RES_ORDER_ATTR_1` (`ATTR_CODE`),
  KEY `IDX_RES_ORDER_ATTR_2` (`RES_EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单属性实例表';

/*Table structure for table `res_partner` */

DROP TABLE IF EXISTS `res_partner`;

CREATE TABLE `res_partner` (
  `PARTNER_ID` bigint(12) NOT NULL COMMENT '合作伙伴编号',
  `PARTNER_NAME` varchar(200) NOT NULL COMMENT '合作伙伴中文名称',
  `PARTNER_SHORT_NAME` varchar(100) DEFAULT NULL COMMENT '合作伙伴简称',
  `COOPERATE_TYPE` varchar(3) NOT NULL COMMENT '合作伙伴类型:\n            00 非承诺销售指标型\n            01 承诺销售指标型\n            10 平台商\n            11 厂商\n            12  sp服务商\n            13 特约商户\n            14  应用提供商\n            15 代理商\n            16 供应商\n            20 其他\n            \n            ',
  `COOPERATE_LEVEL` varchar(3) DEFAULT NULL COMMENT '合作伙伴等级1~99',
  `COOPERATE_MODE` varchar(3) DEFAULT NULL COMMENT '合作方式:\n            1   关系代理\n            2   产品代理\n            3   关系、产品代理\n            4   采集网点发布\n            没有填0',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `CONFINE_NUM` bigint(12) DEFAULT NULL COMMENT '记录数',
  `COOPERATE_REGION` varchar(3) DEFAULT NULL COMMENT '合作区域类型:\n            00 全市\n            01 南郊\n            02 北郊\n            03 市区\n            10   省级\n            20   全国\n            30   全球',
  `SUPP_ADDR` varchar(255) DEFAULT NULL COMMENT '地址',
  `CONTACT_INFO` varchar(64) DEFAULT NULL COMMENT '联系信息',
  `CONTACT_NAME` varchar(64) DEFAULT NULL COMMENT '联系人姓名',
  `SUPP_OP_ID` bigint(12) DEFAULT NULL COMMENT '法人ID',
  `SALE_TYPE` varchar(3) DEFAULT NULL COMMENT '销售方式:\n            0 其他\n            1 零售\n            2 批发\n            3 批发兼售\n            \n            代理商系统中保留不用',
  `VOCATION` bigint(12) NOT NULL COMMENT '1农、林、牧、渔业\n            2采矿业\n            3制造业\n            4电力、燃气及水的生产和供应业\n            5建筑业\n            6交通运输、仓储和邮政业\n            7信息传输、计算机服务和软件业\n            8批发和零售业\n            9住宿和餐饮业\n            10金融业\n            11房地产业\n            12租赁和商务服务业\n            13科学研究、技术服务和地质勘查业\n            14水利、环境和公共设施管理业\n            15居民服务和其他服务业\n            16教育\n            17卫生、社会保障和社会福利业\n            18文化、体育和娱乐业\n            18公共管理和社会组织\n            19国际组织\n            20园区\n            99其他',
  `PROVINCE` varchar(6) DEFAULT NULL COMMENT '省份',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `CITY` bigint(12) DEFAULT NULL COMMENT '城市',
  `COUNTRY` bigint(12) DEFAULT NULL COMMENT '国家',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `DONE_CODE` varchar(8) DEFAULT NULL COMMENT '流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `RES_TYPE` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`PARTNER_ID`),
  KEY `IDX_RES_PARNTER_1` (`PARTNER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合作伙伴基本信息表（按照租户分表）';

/*Table structure for table `res_partner_attr_ins` */

DROP TABLE IF EXISTS `res_partner_attr_ins`;

CREATE TABLE `res_partner_attr_ins` (
  `EXT_ID` bigint(12) NOT NULL COMMENT '扩展属性主键',
  `ID` varchar(30) NOT NULL COMMENT '关联主键',
  `ATTR_ID` varchar(30) DEFAULT NULL COMMENT '属性编号',
  `FIELD_NAME` varchar(250) DEFAULT NULL COMMENT '编码',
  `ATTR_VALUE` varchar(30) DEFAULT NULL COMMENT '属性值',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '操作流水',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作日期',
  `EFF_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXP_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `REMARKS` varchar(25) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`EXT_ID`),
  KEY `IDX_RES_PARNTER_ATR_INS_1` (`ID`),
  KEY `IDX_RES_PARNTER_ATR_INS_2` (`ATTR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合作伙伴扩展属性值表（按照租户分表）';

/*Table structure for table `res_partner_org_relat` */

DROP TABLE IF EXISTS `res_partner_org_relat`;

CREATE TABLE `res_partner_org_relat` (
  `SEQ_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `PARTNER_ID` bigint(12) DEFAULT NULL COMMENT '8个平台商',
  `AREA_ID` bigint(12) DEFAULT NULL COMMENT '地区ID',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '操作组织编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '流水号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EX1` bigint(12) DEFAULT NULL COMMENT 'EX1',
  `EX2` varchar(500) DEFAULT NULL COMMENT 'EX2',
  `EX3` varchar(500) DEFAULT NULL COMMENT 'EX3',
  `EX4` varchar(500) DEFAULT NULL COMMENT 'EX4',
  `EX5` varchar(500) DEFAULT NULL COMMENT 'EX4',
  `EX6` varchar(500) DEFAULT NULL COMMENT 'EX6',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_PAR_ORG_RELAT_1` (`PARTNER_ID`),
  KEY `IDX_RES_PAR_ORG_RELAT_2` (`SEC_ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='平台商与营业厅关系（按照租户分表）\n对应 老系统表GTERMI_PARTNER_AREA';

/*Table structure for table `res_pattern_all_rule` */

DROP TABLE IF EXISTS `res_pattern_all_rule`;

CREATE TABLE `res_pattern_all_rule` (
  `PATTERN_ID` bigint(10) NOT NULL COMMENT '模式编号',
  `PATTERN_SEG_ID` bigint(10) NOT NULL COMMENT '模式号段编号',
  `PATTERN_DEF_ID` bigint(10) NOT NULL COMMENT '模式分类定义编号',
  `RES_TYPE` bigint(3) DEFAULT NULL COMMENT '资源类型 10号码',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `PRIORTY` bigint(5) DEFAULT NULL COMMENT '优先级0~99',
  PRIMARY KEY (`PATTERN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于存储全省号码模式规则信息（按租户分表）';

/*Table structure for table `res_pattern_all_rule_21` */

DROP TABLE IF EXISTS `res_pattern_all_rule_21`;

CREATE TABLE `res_pattern_all_rule_21` (
  `PATTERN_ID` bigint(10) NOT NULL,
  `PATTERN_SEG_ID` bigint(10) NOT NULL,
  `PATTERN_DEF_ID` bigint(10) NOT NULL,
  `RES_TYPE` bigint(3) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `PRIORTY` bigint(5) DEFAULT NULL,
  PRIMARY KEY (`PATTERN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_pattern_approve` */

DROP TABLE IF EXISTS `res_pattern_approve`;

CREATE TABLE `res_pattern_approve` (
  `PATTERN_ID` bigint(10) NOT NULL COMMENT '选号费模式类型在【系统基础表】中定义，指如“七位数同号”等的模式中文描述。目前分为以下几类，具体参见“资源管理.需求分析说明书”附件C的说明。：1－七位数同号2－七位数正顺号3－七位数反顺号4－四组两位数成对号5－前后四位数对应号6－前后四位数顺对应号7－六位数同号8－六位数顺号9－三组二位数成对号10－三组二位数对应号11－五位数同号12－五位数顺号13－前后三位数对应号14－前后三位数同号15－三位数成对号16－四位数同号17－四位数顺号18－两位数成对号19－两位数对应号20－后三位数同号21－普通',
  `PATTERN_NAME` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `IS_APPROVE` bigint(1) NOT NULL COMMENT '0-表示不启用，1-表示可启用',
  `APPROVER_LEVEL` bigint(12) DEFAULT NULL COMMENT '以分为单位',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `APPROVER_NAME` varchar(30) DEFAULT NULL COMMENT '审批人姓名',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PATTERN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于存储号码模式审批配置信息';

/*Table structure for table `res_pattern_define` */

DROP TABLE IF EXISTS `res_pattern_define`;

CREATE TABLE `res_pattern_define` (
  `PATTERN_DEF_ID` bigint(10) NOT NULL COMMENT '模式分类定义编号',
  `PATTERN_DEF_NAME` varchar(50) DEFAULT NULL COMMENT '模式名称',
  `BIT_REL` varchar(4000) DEFAULT NULL COMMENT '位之间关系',
  `BIT_ORDER` bigint(2) DEFAULT NULL COMMENT '位之间变化关系',
  `BIT_RESTRICT_EXP` varchar(4000) DEFAULT NULL COMMENT '位限制关系',
  `BIT_RESTRICT_RPN` varchar(4000) DEFAULT NULL COMMENT '位限制关系逆波兰式',
  `PRIORTY` bigint(10) DEFAULT NULL COMMENT '模式优先级别1~99',
  `RES_TYPE` bigint(3) DEFAULT NULL COMMENT '资源类型 10号码',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '启用时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '停用时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `IPRICE_MODE` varchar(12) DEFAULT NULL COMMENT '费用模式',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PATTERN_DEF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='号码模式分类定义（按租户分表）';

/*Table structure for table `res_pattern_define_21` */

DROP TABLE IF EXISTS `res_pattern_define_21`;

CREATE TABLE `res_pattern_define_21` (
  `PATTERN_DEF_ID` bigint(10) NOT NULL,
  `PATTERN_DEF_NAME` varchar(50) DEFAULT NULL,
  `BIT_REL` varchar(4000) DEFAULT NULL,
  `BIT_ORDER` bigint(2) DEFAULT NULL,
  `BIT_RESTRICT_EXP` varchar(4000) DEFAULT NULL,
  `BIT_RESTRICT_RPN` varchar(4000) DEFAULT NULL,
  `PRIORTY` bigint(10) DEFAULT NULL,
  `RES_TYPE` bigint(3) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `IPRICE_MODE` varchar(12) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PATTERN_DEF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_pattern_rule` */

DROP TABLE IF EXISTS `res_pattern_rule`;

CREATE TABLE `res_pattern_rule` (
  `PATTERN_ID` bigint(10) NOT NULL COMMENT '模式编号',
  `PATTERN_CODE` bigint(12) DEFAULT NULL COMMENT '模式编码',
  `PATTERN_SEG_ID` bigint(10) DEFAULT NULL COMMENT '模式号段编号',
  `PATTERN_DEF_ID` bigint(10) DEFAULT NULL COMMENT '模式分类定义编号',
  `RES_TYPE` bigint(3) DEFAULT NULL COMMENT '资源类型 10号码',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区编码',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '启用时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '停用时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PATTERN_ID`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于存储各地市对应号码模式规则信息（按租户分表）';

/*Table structure for table `res_pattern_rule_21` */

DROP TABLE IF EXISTS `res_pattern_rule_21`;

CREATE TABLE `res_pattern_rule_21` (
  `PATTERN_ID` bigint(10) NOT NULL,
  `PATTERN_CODE` bigint(12) DEFAULT NULL,
  `PATTERN_SEG_ID` bigint(10) DEFAULT NULL,
  `PATTERN_DEF_ID` bigint(10) DEFAULT NULL,
  `RES_TYPE` bigint(3) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PATTERN_ID`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_pattern_rule_group` */

DROP TABLE IF EXISTS `res_pattern_rule_group`;

CREATE TABLE `res_pattern_rule_group` (
  `PATTERN_ID` bigint(10) NOT NULL COMMENT '模式编码',
  `GROUP_ID` bigint(5) NOT NULL COMMENT '组别',
  `SEL_ORDER` bigint(5) NOT NULL COMMENT '选择顺序',
  `EXT_NUM` bigint(10) DEFAULT NULL COMMENT 'EXT_NUM',
  `EXT_NUM1` bigint(10) DEFAULT NULL COMMENT 'EXT_NUM1',
  `EXT_NUM2` bigint(10) DEFAULT NULL COMMENT 'EXT_NUM2',
  `EXT_STR` varchar(500) DEFAULT NULL COMMENT 'EXT_STR',
  `EXT_STR1` varchar(500) DEFAULT NULL COMMENT 'EXT_STR1',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  PRIMARY KEY (`PATTERN_ID`,`GROUP_ID`,`SEL_ORDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模式分组（按租户分表）';

/*Table structure for table `res_pattern_segment` */

DROP TABLE IF EXISTS `res_pattern_segment`;

CREATE TABLE `res_pattern_segment` (
  `PATTERN_SEG_ID` bigint(10) NOT NULL COMMENT '模式号段编号',
  `PATTERN_SEG_NAME` varchar(50) NOT NULL COMMENT '模式号段名称',
  `NET_ID` varchar(4) DEFAULT NULL COMMENT '网号',
  `SEG_EXP` varchar(4000) DEFAULT NULL COMMENT '号段表达式',
  `SEG_RPN_EXP` varchar(4000) DEFAULT NULL COMMENT '号段逆波兰式',
  `PRIORTY` bigint(10) DEFAULT NULL COMMENT '优先级别0~99',
  `RES_TYPE` bigint(3) DEFAULT NULL COMMENT '资源类型 10号码',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '启用时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '停用时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `IPRICE_MODE` varchar(12) DEFAULT NULL COMMENT '费用模式',
  `BIT_REL` varchar(4000) DEFAULT NULL COMMENT '表达式内容',
  `BIT_ORDER` bigint(2) DEFAULT NULL COMMENT '步长类型暂时未用',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PATTERN_SEG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置号段模式信息（按租户分表）';

/*Table structure for table `res_pattern_segment_21` */

DROP TABLE IF EXISTS `res_pattern_segment_21`;

CREATE TABLE `res_pattern_segment_21` (
  `PATTERN_SEG_ID` bigint(10) NOT NULL,
  `PATTERN_SEG_NAME` varchar(50) NOT NULL,
  `NET_ID` varchar(4) DEFAULT NULL,
  `SEG_EXP` varchar(4000) DEFAULT NULL,
  `SEG_RPN_EXP` varchar(4000) DEFAULT NULL,
  `PRIORTY` bigint(10) DEFAULT NULL,
  `RES_TYPE` bigint(3) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `IPRICE_MODE` varchar(12) DEFAULT NULL,
  `BIT_REL` varchar(4000) DEFAULT NULL,
  `BIT_ORDER` bigint(2) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PATTERN_SEG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_pay_card` */

DROP TABLE IF EXISTS `res_pay_card`;

CREATE TABLE `res_pay_card` (
  `RES_ID` bigint(12) NOT NULL COMMENT '资源标识：序列生成',
  `PAYCARD_ID` varchar(40) NOT NULL COMMENT '充值卡号',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_NAME` varchar(256) DEFAULT NULL COMMENT '资源名称',
  `CARD_PASSWORD` varchar(34) DEFAULT NULL COMMENT '10位随机数加密后的密码,md5',
  `PKG_ID` varchar(40) DEFAULT NULL COMMENT '业务包ID',
  `CARD_TYPE` varchar(12) DEFAULT NULL COMMENT '类型',
  `CARD_FEE` bigint(10) DEFAULT NULL COMMENT '现有30、50、100、200、300等面值,以分为单位',
  `USE_TYPE` varchar(3) DEFAULT NULL COMMENT '使用类型\n7-渠道',
  `CARD_STATE` varchar(3) DEFAULT NULL COMMENT '1-未生成；2-生成；3-可销售；5-销售；8-废弃；9-充值；10-在途',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '0-完整；1-坏卡；2-退卡；3-换卡；',
  `LOCK_STATUS` varchar(3) DEFAULT NULL COMMENT '1加锁状态\n0解锁状态',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `OUT_DONE_CODE` varchar(50) DEFAULT NULL COMMENT '外部流水号:比如营业售卡流水号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '停用时间',
  `VALID_DAY` bigint(6) DEFAULT NULL COMMENT '延长天数',
  `SALE_FEE` bigint(10) DEFAULT NULL COMMENT '销售价格',
  `SALE_OBJ` bigint(12) DEFAULT NULL COMMENT '销售对象',
  `PRESENT_OBJ` bigint(4) DEFAULT NULL COMMENT '赠送对象',
  `SALE_DATE` datetime DEFAULT NULL COMMENT '销售日期',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '号码',
  `CHARGE_DATE` datetime DEFAULT NULL COMMENT '充值时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `FACTORY_ID` bigint(12) DEFAULT NULL COMMENT '卡商编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `RSRV_STR1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(16) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(16) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`RES_ID`),
  KEY `IDX_RES_PAY_CARD_1` (`PAYCARD_ID`),
  KEY `IDX_RES_PAY_CARD_2` (`RES_SPEC_ID`),
  KEY `IDX_RES_PAY_CARD_3` (`BATCH_ID`),
  KEY `IDX_RES_PAY_CARD_4` (`OUT_DONE_CODE`),
  KEY `IDX_RES_PAY_CARD_5` (`SEC_ORG_ID`),
  KEY `IDX_RES_PAY_CARD_11` (`RES_STORE_ID`),
  KEY `IDX_RES_PAY_CARD_12` (`CARD_STATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='有价卡资源实例：\n字段卡状态(CARD_STATE)的枚举值为：1.未生成;2.生成;3.可销售(待激活);4.激活(暂不用);5.销售(占用);6.锁定;7.挂失;8.废弃;9.已使用;10.在途;11.更换；\n字段锁状态(LOCK_STATUS)枚举值为：1加锁状态，0解锁状态；\n（按照租户分表）';

/*Table structure for table `res_pay_card_pay` */

DROP TABLE IF EXISTS `res_pay_card_pay`;

CREATE TABLE `res_pay_card_pay` (
  `PAYCARD_ID` varchar(30) NOT NULL COMMENT 'PAYCARD_ID',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT 'RES_INST_ID',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT 'RES_STORE_ID',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT 'RES_SPEC_ID',
  `RES_NAME` varchar(256) DEFAULT NULL COMMENT 'RES_NAME',
  `CARD_PASSWORD` varchar(34) DEFAULT NULL COMMENT 'CARD_PASSWORD',
  `CARD_TYPE` varchar(2) DEFAULT NULL COMMENT '暂时未用',
  `CARD_FEE` bigint(10) DEFAULT NULL COMMENT 'CARD_FEE',
  `INPUT_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `CARD_STATE` varchar(3) DEFAULT NULL COMMENT 'CARD_STATE暂时未用',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT 'MANAGE_STATUS',
  `VALID_DAY` bigint(6) DEFAULT NULL COMMENT 'VALID_DAY',
  `SALE_FEE` bigint(10) DEFAULT NULL COMMENT 'SALE_FEE',
  `SALE_OBJ` bigint(12) DEFAULT NULL COMMENT 'SALE_OBJ',
  `PRESENT_OBJ` bigint(4) DEFAULT NULL COMMENT 'PRESENT_OBJ',
  `SALE_DATE` datetime DEFAULT NULL COMMENT 'SALE_DATE',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '服务号码',
  `CHARGE_DATE` datetime DEFAULT NULL COMMENT 'CHARGE_DATE',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  PRIMARY KEY (`PAYCARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时不用了';

/*Table structure for table `res_pay_card_used` */

DROP TABLE IF EXISTS `res_pay_card_used`;

CREATE TABLE `res_pay_card_used` (
  `RES_ID` bigint(12) NOT NULL COMMENT '资源标识：序列生成',
  `PAYCARD_ID` varchar(40) NOT NULL COMMENT '充值卡号',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_NAME` varchar(256) DEFAULT NULL COMMENT '资源名称',
  `CARD_PASSWORD` varchar(34) DEFAULT NULL COMMENT '10位随机数加密后的密码,md5',
  `PKG_ID` varchar(40) DEFAULT NULL COMMENT '业务包ID',
  `CARD_TYPE` varchar(12) DEFAULT NULL COMMENT '类型',
  `CARD_FEE` bigint(10) DEFAULT NULL COMMENT '现有30、50、100、200、300等面值,以分为单位',
  `USE_TYPE` varchar(3) DEFAULT NULL COMMENT '使用类型',
  `CARD_STATE` varchar(3) DEFAULT NULL COMMENT '1-未生成；2-生成；3-可销售；5-销售；8-废弃；9-充值；10-在途',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '0-完整；1-坏卡；2-退卡；3-换卡；',
  `LOCK_STATUS` varchar(3) DEFAULT NULL COMMENT '1加锁状态\n0解锁状态',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `OUT_DONE_CODE` varchar(50) DEFAULT NULL COMMENT '外部流水号:比如营业售卡流水号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '启用时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `VALID_DAY` bigint(6) DEFAULT NULL COMMENT '延长天数',
  `SALE_FEE` bigint(10) DEFAULT NULL COMMENT '销售价格',
  `SALE_OBJ` bigint(12) DEFAULT NULL COMMENT '销售对象',
  `PRESENT_OBJ` bigint(4) DEFAULT NULL COMMENT '赠送对象',
  `SALE_DATE` datetime DEFAULT NULL COMMENT '销售日期',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '号码',
  `CHARGE_DATE` datetime DEFAULT NULL COMMENT '充值时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`RES_ID`),
  KEY `IDX_RES_PAY_CARD_6` (`PAYCARD_ID`),
  KEY `IDX_RES_PAY_CARD_7` (`RES_SPEC_ID`),
  KEY `IDX_RES_PAY_CARD_8` (`BATCH_ID`),
  KEY `IDX_RES_PAY_CARD_9` (`OUT_DONE_CODE`),
  KEY `IDX_RES_PAY_CARD_10` (`SEC_ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='有价卡资源实例：\n字段卡状态(CARD_STATE)的枚举值为：1.未生成;2.生成;3.可销售(待激活);4.激活(暂不用);5.销售(占用);6.锁定;7.挂失;8.废弃;9.已使用;10.在途;11.更换；\n字段锁状态(LOCK_STATUS)枚举值为：1加锁状态，0解锁状态；\n（按照租户分表）';

/*Table structure for table `res_paycard_acct_relation` */

DROP TABLE IF EXISTS `res_paycard_acct_relation`;

CREATE TABLE `res_paycard_acct_relation` (
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '资源规格',
  `AVCS_TYPE` bigint(12) NOT NULL COMMENT '鉴权卡类型',
  `OPER_TYPE` bigint(12) DEFAULT NULL COMMENT '操作编码:账务充值业务操作编码',
  `ACCT_CODE` bigint(12) DEFAULT NULL COMMENT '账本标识',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '业务标识',
  `PROD_EFFECT` bigint(2) DEFAULT NULL COMMENT '有效期：单位月，空代表无限期',
  `MON_PROD_ID` bigint(12) DEFAULT NULL COMMENT '全月业务标识',
  `MON_EFFECT` bigint(2) DEFAULT NULL COMMENT '全月业务有效期',
  `HALF_PROD_ID` bigint(12) DEFAULT NULL COMMENT '半月业务标识',
  `HALF_EFFECT` bigint(2) DEFAULT NULL COMMENT '半月业务有效期',
  `SERVICE_ID` bigint(12) DEFAULT NULL COMMENT '服务标识：程控产品标识',
  `SP_CODE` varchar(20) DEFAULT NULL COMMENT '企业代码：平台企业代码',
  `SERVICE_CODE` varchar(20) DEFAULT NULL COMMENT '业务代码：平台业务代码',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作流水',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `REGION_ID` bigint(12) DEFAULT NULL COMMENT '地市',
  `REMARK` varchar(256) DEFAULT NULL COMMENT '备注',
  `RSRV_STR1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(16) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(16) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`RES_SPEC_ID`,`AVCS_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='有价卡账本关系:本地卡和账本业务对应关系';

/*Table structure for table `res_paycard_compara` */

DROP TABLE IF EXISTS `res_paycard_compara`;

CREATE TABLE `res_paycard_compara` (
  `COMPARA_ID` bigint(16) NOT NULL COMMENT '对账序列号',
  `ACCOUNT_NUMBER` varchar(40) DEFAULT NULL COMMENT '记录序列号',
  `PAYCARD_ID` varchar(30) DEFAULT NULL COMMENT '有价卡号',
  `ACTIVE_DAYS` bigint(4) DEFAULT NULL COMMENT '有价卡有效期',
  `VC_OPER_DATE` varchar(20) DEFAULT NULL COMMENT 'VC操作时间',
  `BATCH_ID` varchar(10) DEFAULT NULL COMMENT '有价卡批次（此字段不使用可以填空）',
  `CARD_FEE` bigint(8) DEFAULT NULL COMMENT '有价卡面额',
  `FEE_START` datetime DEFAULT NULL COMMENT '费用开始时间,暂不使用',
  `FEE_STOP` datetime DEFAULT NULL COMMENT '有价卡结束暂不使用',
  `HOT_CARD_FLAG` char(1) DEFAULT NULL COMMENT '有价卡失效标识:1：无效（已使用）',
  `MSISDN` varchar(20) DEFAULT NULL COMMENT '充值手机号码',
  `CALL_NUMBER` varchar(20) DEFAULT NULL COMMENT '呼叫号码',
  `ROW_SEQUENCE` varchar(40) DEFAULT NULL COMMENT '预充值时，该号码为“序号（在预充值额度发行时确定）＋手机号码的后10位”。\n对于普通充值等情况则是在有价卡发行时生成。\n（此字段不使用可以填空',
  `TRADE_TIME` datetime DEFAULT NULL COMMENT '交易时间',
  `TRADE_TYPE` char(1) DEFAULT NULL COMMENT '充值方式 \n1：智能网预付费用户本机充值\n2：智能网预付费用户他机充值\n3：智能预付费用户CRM渠道充值\n4：固定电话充值(预留)\n5：预留\n6：用户预充值\n7：BOSS用户CRM渠道充值 \n8：银行卡充值\n9：BOSS用户语音充值\nA~Z,a~z由厂家进行扩展：\nA：PPIP电话充值（PPIP品牌有价卡充值）\nB：PPIPCRM渠道充值\nC：IUSER品牌有价卡充值\nE：17951电话充值\nF：17951CRM渠道充值\nS：短信充值\nd：BOSS发MML命令直接置位有价卡\ns: BOSS网营充值\nCRM渠道充值CRM渠道充值CRM渠道充值CRM渠道充值CRM渠道充值CRM渠道充值',
  `USER_ID` bigint(20) DEFAULT NULL COMMENT '用户标识,可为空',
  `COM_TYPE` char(1) DEFAULT NULL COMMENT '对账类型根据不同对账文件记录值，1、充值卡使用对账；2、激活文件对账；3-去激活文件对账',
  `COM_STATE` char(1) DEFAULT NULL COMMENT '对账状态，0、初始；1、正在对账;  2、成功；3、失败',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DONE_CODE` bigint(20) DEFAULT NULL COMMENT '操作记录',
  `RSRV_STR1` varchar(50) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR2` varchar(50) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_DATE1` datetime DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(20) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(20) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`COMPARA_ID`),
  KEY `IDX_RES_PAYCRD_COMPAR_1` (`PAYCARD_ID`),
  KEY `IDX_RES_PAYCRD_COMPAR_2` (`DONE_DATE`),
  KEY `IDX_RES_PAYCRD_COMPAR_3` (`DONE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='有价卡对账表，VC平台去激活、激活、充值对账文件入库';

/*Table structure for table `res_paycard_in_rec` */

DROP TABLE IF EXISTS `res_paycard_in_rec`;

CREATE TABLE `res_paycard_in_rec` (
  `SEQ_ID` bigint(12) NOT NULL COMMENT '主键',
  `BEG_ID` varchar(30) NOT NULL COMMENT '起始卡号',
  `END_ID` varchar(30) NOT NULL COMMENT '终止卡号',
  `BATCH_ID` varchar(30) DEFAULT NULL COMMENT '批次号',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格',
  `CARD_TYPE` varchar(2) DEFAULT NULL COMMENT '卡类型 12有价卡',
  `SEND_SMS` varchar(3) DEFAULT NULL COMMENT '是否发送短信：1有效、0无效',
  `IS_IMMEDIATELY` varchar(3) DEFAULT NULL COMMENT '是否立即执行\n0否\n1是',
  `TOTAL_NUM` bigint(12) DEFAULT NULL COMMENT '总数量',
  `DONE_NUM` bigint(12) DEFAULT NULL COMMENT '已处理数量',
  `BGN_DATE` datetime DEFAULT NULL COMMENT '处理开始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '处理结束时间',
  `DEAL_FLAG` bigint(1) DEFAULT NULL COMMENT '处理标志是针对可能出现中间异常的情况进行标识的。\n0：已经完成；\n1：程序执行中',
  `BUY_FLAG` varchar(40) DEFAULT NULL COMMENT '购买标识\n【0】无\n【1】现金\n【2】承兑\n【3】保函',
  `CARD_FEE` bigint(10) DEFAULT NULL COMMENT '面值',
  `CARD_HEAD` varchar(10) DEFAULT NULL COMMENT '卡头信息',
  `FILE_NAME` varchar(40) DEFAULT NULL COMMENT '处理文件名',
  `ORG_ID` bigint(8) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '操作流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `VALID_DAY` bigint(6) DEFAULT NULL COMMENT '有效天数',
  `HOLD_COL1` varchar(40) DEFAULT NULL COMMENT '保留字段1:\n1.未完成\n2.已完成',
  `HOLD_COL2` varchar(255) DEFAULT NULL COMMENT '保留字段2',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_PAYCARD_IN_REC_1` (`BEG_ID`,`END_ID`),
  KEY `IDX_RES_PAYCARD_IN_REC_2` (`BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录缴费卡录入时的处理进度情况,\n处理标识为 1.未完成、2.已完成（按照租户分表）';

/*Table structure for table `res_paycard_open` */

DROP TABLE IF EXISTS `res_paycard_open`;

CREATE TABLE `res_paycard_open` (
  `OPEN_ID` bigint(16) NOT NULL COMMENT '开通流水',
  `BEG_ID` varchar(40) NOT NULL COMMENT '充值卡号',
  `END_ID` varchar(40) DEFAULT NULL COMMENT '卡号结束',
  `RES_TYPE` bigint(12) DEFAULT NULL COMMENT '资源类型',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格',
  `RES_EVENT_ID` bigint(16) DEFAULT NULL COMMENT '订单号',
  `OPEN_TYPE` char(1) NOT NULL COMMENT '开通类型:1、激活；2、去激活；3、延期；4、锁定；5、作废；',
  `OPEN_STATE` char(1) NOT NULL COMMENT '开通状态:0-初始；1-正在执行；2-成功；3-失败',
  `OPEN_MODE` char(1) DEFAULT NULL COMMENT '开通方式：1、明细；2、号段',
  `DATA_MODE` char(1) DEFAULT NULL COMMENT '数据来源:1-对账；2-业务；',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `OPEN_INFO` varchar(100) DEFAULT NULL COMMENT '开通描述',
  `DONE_CODE` bigint(20) DEFAULT NULL COMMENT '操作编码',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `RSRV_STR1` varchar(50) DEFAULT NULL COMMENT '备份字段1',
  `RSRV_STR2` varchar(50) DEFAULT NULL COMMENT '备份字段2',
  `RSRV_TAG1` char(1) DEFAULT NULL COMMENT '备份字段3',
  `RSRV_DATE1` datetime DEFAULT NULL COMMENT '备份字段4',
  `RSRV_NUM1` bigint(16) DEFAULT NULL COMMENT '备份字段5',
  PRIMARY KEY (`OPEN_ID`),
  KEY `IDX_RES_PAYCARD_OPEN_1` (`OPEN_STATE`),
  KEY `IDX_RES_PAYCARD_OPEN_2` (`BEG_ID`,`END_ID`),
  KEY `IDX_RES_PAYCARD_OPEN_3` (`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='有价卡开通表，主要完成有价卡激活，去激活，废弃，延期';

/*Table structure for table `res_paycard_rec` */

DROP TABLE IF EXISTS `res_paycard_rec`;

CREATE TABLE `res_paycard_rec` (
  `DONE_CODE` bigint(12) NOT NULL COMMENT '流水号',
  `BUSI_ID` varchar(8) NOT NULL COMMENT '业务代码：\n卡录入\n卡省级下发\n卡到货确认\n卡入库确认\n卡地市级下发\n卡激活\n卡注销\n卡注销激活\n卡状态修改',
  `BEG_ID` varchar(30) NOT NULL COMMENT '起始卡号',
  `END_ID` varchar(30) NOT NULL COMMENT '终止卡号',
  `VALID_COUNT` bigint(12) NOT NULL COMMENT '有效处理张数',
  `CARD_FEE` bigint(10) DEFAULT NULL COMMENT '单张缴费卡面值，单位为分',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '处理日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `PRESENT_ID` bigint(4) DEFAULT NULL COMMENT '赠送对象',
  `SALE_ID` bigint(12) DEFAULT NULL COMMENT '销售对象',
  `REBATE` bigint(14) DEFAULT NULL COMMENT '折扣',
  `DISMONEY` bigint(12) DEFAULT NULL COMMENT '减免金额',
  `BACK_PROCESSNO` varchar(10) DEFAULT NULL COMMENT '回退编号',
  `SALETOTALMONEY` bigint(12) DEFAULT NULL COMMENT '销售总价',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '关联手机号',
  `ORG_ID` bigint(8) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员代码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '说明',
  `DONEFILE_NAME` varchar(40) DEFAULT NULL COMMENT '处理的文件名',
  `IS_LOG` varchar(40) DEFAULT NULL COMMENT '是否记录日志:1有效、0无效',
  `HOLD_COL1` varchar(40) DEFAULT NULL COMMENT '保留字段1',
  `HOLD_COL2` varchar(40) DEFAULT NULL COMMENT '保留字段2',
  PRIMARY KEY (`DONE_CODE`),
  KEY `IDX_RES_PAYCARD_REC_1` (`BEG_ID`,`END_ID`,`CARD_FEE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='（按照租户分表）';

/*Table structure for table `res_paycard_seginfo` */

DROP TABLE IF EXISTS `res_paycard_seginfo`;

CREATE TABLE `res_paycard_seginfo` (
  `BEG_ID` varchar(30) NOT NULL COMMENT '起始号码',
  `END_ID` varchar(30) NOT NULL COMMENT '起始号码',
  `FIN_STATUS` varchar(3) NOT NULL COMMENT '对应卡资源表中的卡状态\n1初始、2已生成、3待售、4已激活',
  `STATE_DATE` datetime DEFAULT NULL COMMENT '状态时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '对于刚生成的号段，此字段为空',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `PRE_STATUS` varchar(3) DEFAULT NULL COMMENT '前次状态、暂时未用',
  `HOLD_COL1` varchar(40) DEFAULT NULL COMMENT '保留字段1',
  `HOLD_COL2` varchar(40) DEFAULT NULL COMMENT '保留字段2',
  `HOLD_COL3` varchar(40) DEFAULT NULL COMMENT '保留字段3',
  `HOLD_COL4` varchar(40) DEFAULT NULL COMMENT '保留字段4',
  PRIMARY KEY (`BEG_ID`,`END_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录当前卡段的状态，主要用来控制当前的操作号段是否正确，防止出现误用误领的情况\n要求号段维持唯一性，可以考虑2年内的数据保存（按照租户分表）';

/*Table structure for table `res_paycard_used` */

DROP TABLE IF EXISTS `res_paycard_used`;

CREATE TABLE `res_paycard_used` (
  `LOG_ID` bigint(16) NOT NULL COMMENT '交易流水',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '充值时间',
  `RES_ID` varchar(22) DEFAULT NULL COMMENT '资源标识',
  `ACCT_ID` bigint(16) DEFAULT NULL COMMENT '充值流水',
  `BUSINESS_ID` bigint(16) DEFAULT NULL COMMENT '业务流水',
  `BILL_ID` varchar(15) DEFAULT NULL COMMENT '服务号码',
  `PAY_FEE` bigint(10) DEFAULT NULL COMMENT '充值金额',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `SP_CODE` varchar(15) DEFAULT NULL COMMENT '业务编码',
  `REMARK` varchar(256) DEFAULT NULL COMMENT '备注',
  `RSRV_STR1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(16) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(16) DEFAULT NULL COMMENT '备用字段5',
  PRIMARY KEY (`LOG_ID`),
  KEY `IDX_RES_PAYCRDUSD_1` (`DONE_DATE`,`RES_ID`,`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='有价卡账本关系:本地卡和账本业务对应关系,按月分表';

/*Table structure for table `res_phone_batch` */

DROP TABLE IF EXISTS `res_phone_batch`;

CREATE TABLE `res_phone_batch` (
  `BATCH_ID` bigint(12) NOT NULL COMMENT '批次号',
  `FILE_NAME` varchar(255) NOT NULL COMMENT '文件名:\n多文件用 “，”号分开',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `PHONE_COUNT` bigint(8) DEFAULT NULL COMMENT '号码数量',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库编号',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '规格编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '修改时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市编码',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `NOTES` varchar(100) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL COMMENT 'EXT1',
  `EXT2` varchar(100) DEFAULT NULL COMMENT 'EXT2',
  `EXT3` varchar(100) DEFAULT NULL COMMENT 'EXT3',
  PRIMARY KEY (`BATCH_ID`),
  KEY `IDX_RES_PHONE_BATCH_1` (`REGION_ID`),
  KEY `IDX_RES_PHONE_BATCH_2` (`FILE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='号码文件导入批次表（按租户分表）';

/*Table structure for table `res_phone_batch_21` */

DROP TABLE IF EXISTS `res_phone_batch_21`;

CREATE TABLE `res_phone_batch_21` (
  `BATCH_ID` bigint(12) NOT NULL,
  `FILE_NAME` varchar(255) NOT NULL,
  `STATUS` varchar(3) DEFAULT NULL,
  `PHONE_COUNT` bigint(8) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(25) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `NOTES` varchar(100) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`BATCH_ID`),
  KEY `IDX_RES_PHONE_BATCH_1_21` (`REGION_ID`),
  KEY `IDX_RES_PHONE_BATCH_2_21` (`FILE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_phone_level_define` */

DROP TABLE IF EXISTS `res_phone_level_define`;

CREATE TABLE `res_phone_level_define` (
  `RES_LEVEL` bigint(4) NOT NULL COMMENT '号码档次编号',
  `REGION_ID` varchar(6) NOT NULL DEFAULT '21' COMMENT '地区编码',
  `LEVEL_NAME` varchar(100) DEFAULT NULL COMMENT '档次名称',
  `RESERVE_FEE` bigint(10) DEFAULT NULL COMMENT '预存费',
  `SIM_FEE` bigint(8) DEFAULT NULL COMMENT 'SIM卡费',
  `FERRULE_FEE` bigint(8) DEFAULT NULL COMMENT '包装费',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`RES_LEVEL`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='号码档次（按租户分表）';

/*Table structure for table `res_phone_level_define_21` */

DROP TABLE IF EXISTS `res_phone_level_define_21`;

CREATE TABLE `res_phone_level_define_21` (
  `RES_LEVEL` bigint(4) NOT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `LEVEL_NAME` varchar(100) DEFAULT NULL,
  `RESERVE_FEE` bigint(10) DEFAULT NULL,
  `SIM_FEE` bigint(8) DEFAULT NULL,
  `FERRULE_FEE` bigint(8) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RES_LEVEL`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_phone_num_agent_prepay` */

DROP TABLE IF EXISTS `res_phone_num_agent_prepay`;

CREATE TABLE `res_phone_num_agent_prepay` (
  `RES_ID` varchar(15) DEFAULT NULL COMMENT '资源标识',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `AGENT_ID` bigint(12) DEFAULT NULL COMMENT '渠道编码',
  `FEE_ITEM` bigint(9) DEFAULT NULL COMMENT '费用项目',
  `FEE` bigint(9) DEFAULT NULL COMMENT '费用',
  `STS` bigint(2) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `STS_DATE` datetime DEFAULT NULL COMMENT '状态变更时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '操作员',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作日期',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  `IMSI` varchar(20) DEFAULT NULL COMMENT 'IMSI',
  `SIM_ID` varchar(25) DEFAULT NULL COMMENT 'ICC_ID',
  `PROD_ID` bigint(16) DEFAULT NULL COMMENT '产品标识',
  `COND_ID` bigint(16) DEFAULT NULL COMMENT 'COND_ID',
  `HOLD_COL` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `HOLD_COL2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `HOLD_DATE1` datetime DEFAULT NULL COMMENT '备用字段3',
  KEY `IDX_RES_PHONE_AGT_PRPAY_1` (`REGION_ID`,`AGENT_ID`),
  KEY `IDX_RES_PHONE_AGT_PRPAY_2` (`RES_ID`,`ORG_ID`,`DONE_CODE`,`DONE_DATE`),
  KEY `IDX_RES_PHONE_AGT_PRPAY_3` (`SIM_ID`,`STS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='渠道订购号码明细（按租户分表）';

/*Table structure for table `res_phone_num_agent_prod` */

DROP TABLE IF EXISTS `res_phone_num_agent_prod`;

CREATE TABLE `res_phone_num_agent_prod` (
  `RES_ID` varchar(15) DEFAULT NULL COMMENT '资源标识',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `AGENT_ID` bigint(12) DEFAULT NULL COMMENT '渠道编码',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '操作员',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作日期',
  `PROD_ID` bigint(8) DEFAULT NULL COMMENT '产品标识',
  `PROD_TYPE` bigint(2) DEFAULT NULL COMMENT '产品类型',
  `SERVICE_ID` bigint(12) DEFAULT NULL COMMENT '服务标识',
  `BUSI_TYPE` bigint(6) DEFAULT NULL COMMENT '业务类型',
  `FUNC_PARAM` varchar(32) DEFAULT NULL COMMENT '参数方法',
  `PROPERTY` varchar(20) DEFAULT NULL COMMENT 'PROPERTY',
  `ACT_TYPE` bigint(2) DEFAULT NULL COMMENT '账本类型',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  `VALID_CYCLE` bigint(8) DEFAULT NULL COMMENT 'VALID_CYCLE',
  `HOLD_COL` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `HOLD_COL2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `HOLD_DATE1` datetime DEFAULT NULL COMMENT '备用字段3',
  KEY `IDX_RES_PHO_NUM_AGT_PRD_1` (`RES_ID`),
  KEY `IDX_RES_PHO_NUM_AGT_PRD_2` (`REGION_ID`,`ORG_ID`,`OP_ID`,`DONE_CODE`,`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='渠道订购号码业务明细表（按租户分表）';

/*Table structure for table `res_phone_num_freeze_his` */

DROP TABLE IF EXISTS `res_phone_num_freeze_his`;

CREATE TABLE `res_phone_num_freeze_his` (
  `ID` varchar(30) NOT NULL COMMENT 'ID',
  `RES_ID` varchar(30) DEFAULT NULL COMMENT '号码',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '此处可引用对象（资源规格或其他参考对象）的属性。',
  `RES_USED_ID` bigint(12) DEFAULT NULL COMMENT '资源使用',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `USE_TYPE` bigint(12) DEFAULT NULL COMMENT '使用类型:1营业、2代销',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:\n1-初始,2.激活,3.预占,4.预约,5.占用,6.冷冻,7.作废, 8预留',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态:\n0-未匹配未开通\n1-已匹配未开通\n2-已匹配已开通',
  `RES_NUMBER_HLR` varchar(17) DEFAULT NULL COMMENT '号段',
  `TRADE_ID` bigint(12) DEFAULT NULL COMMENT '业务品牌',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '套餐',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `SELECT_PRICE_MODE` bigint(10) DEFAULT NULL COMMENT '选号费模式编号',
  `RESERVE_FEE` bigint(10) DEFAULT NULL COMMENT '预存费',
  `RES_LEVEL` bigint(4) DEFAULT NULL COMMENT '号码档次',
  `CHOOSE_LEVEL` bigint(2) DEFAULT NULL COMMENT '选号类型 0普通号码\n\nleaf',
  `RES_CLASS` bigint(4) DEFAULT NULL COMMENT '号码类型,编号',
  `PRESENT_MONTH` bigint(4) DEFAULT NULL COMMENT '预存返冲时限',
  `DEPOSIT_MONTH` bigint(10) DEFAULT NULL COMMENT '保底期限',
  `DEPOSIT_AMOUNT` bigint(10) DEFAULT NULL COMMENT '月保底金额',
  `IS_CONFIRM` bigint(1) DEFAULT NULL COMMENT '确认标记 1有效、0无效',
  `ICC_ID` varchar(25) DEFAULT NULL COMMENT 'SIM卡号',
  `IMSI` varchar(20) DEFAULT NULL COMMENT 'IMSI号',
  `PRE_DATE` datetime DEFAULT NULL COMMENT '预占日期',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用日期',
  `USE_DONE_CODE` bigint(25) DEFAULT NULL COMMENT '使用流水号',
  `USE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '备份组织',
  `BUSI_CODE` bigint(12) DEFAULT NULL COMMENT '业务编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `SEGMENT_TAG` varchar(20) DEFAULT NULL COMMENT '号段标签',
  `BEAUTIFUAL_TAG` varchar(20) DEFAULT NULL COMMENT '靓号标签',
  `HOT_POINT_TAG` varchar(20) DEFAULT NULL COMMENT '热点标签',
  `DIGTIAL_TAG` varchar(20) DEFAULT NULL COMMENT '数位标签',
  `BIRTHDAY_TAG` varchar(20) DEFAULT NULL COMMENT '生日标签',
  `CHARACTER_TAG` varchar(20) DEFAULT NULL COMMENT '特点标签',
  `REUSE_FLAG` varchar(1) DEFAULT NULL COMMENT '重启标识:\n0 否（初始）\n1 是（冷号重用）',
  `OUT_LEVEL` varchar(20) DEFAULT NULL COMMENT '外部档次',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `GENERATION_TYPE` varchar(3) DEFAULT NULL COMMENT '号码类别暂时未用',
  `PASSWORD` varchar(20) DEFAULT NULL COMMENT '密码',
  `IFEETYPE` varchar(20) DEFAULT NULL COMMENT '资费包类型暂时未用',
  `AGENT_LEVEL` varchar(20) DEFAULT NULL COMMENT '代理商级别',
  PRIMARY KEY (`ID`),
  KEY `IDX_RES_PHONE_FREEZE_HIS_1` (`RES_INST_ID`),
  KEY `IDX_RES_PHONE_FREEZE_HIS_2` (`RES_STORE_ID`),
  KEY `IDX_RES_PHONE_FREEZE_HIS_3` (`RES_ID`),
  KEY `IDX_RES_PHONE_FREEZE_HIS_4` (`ICC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='冷冻号码历史（按照租户分表）';

/*Table structure for table `res_phone_num_freeze_his_21` */

DROP TABLE IF EXISTS `res_phone_num_freeze_his_21`;

CREATE TABLE `res_phone_num_freeze_his_21` (
  `ID` varchar(30) NOT NULL,
  `RES_ID` varchar(30) DEFAULT NULL,
  `RES_INST_ID` varchar(25) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `RES_USED_ID` bigint(12) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `USE_TYPE` bigint(12) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `RES_NUMBER_HLR` varchar(17) DEFAULT NULL,
  `TRADE_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `RECEIVER` bigint(12) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `SELECT_PRICE_MODE` bigint(10) DEFAULT NULL,
  `RESERVE_FEE` bigint(10) DEFAULT NULL,
  `RES_LEVEL` bigint(4) DEFAULT NULL,
  `CHOOSE_LEVEL` bigint(2) DEFAULT NULL,
  `RES_CLASS` bigint(4) DEFAULT NULL,
  `PRESENT_MONTH` bigint(4) DEFAULT NULL,
  `DEPOSIT_MONTH` bigint(10) DEFAULT NULL,
  `DEPOSIT_AMOUNT` bigint(10) DEFAULT NULL,
  `IS_CONFIRM` bigint(1) DEFAULT NULL,
  `ICC_ID` varchar(25) DEFAULT NULL,
  `IMSI` varchar(20) DEFAULT NULL,
  `PRE_DATE` datetime DEFAULT NULL,
  `USE_DATE` datetime DEFAULT NULL,
  `USE_DONE_CODE` bigint(25) DEFAULT NULL,
  `USE_ORG_ID` bigint(12) DEFAULT NULL,
  `BUSI_CODE` bigint(12) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `SEGMENT_TAG` varchar(20) DEFAULT NULL,
  `BEAUTIFUAL_TAG` varchar(20) DEFAULT NULL,
  `HOT_POINT_TAG` varchar(20) DEFAULT NULL,
  `DIGTIAL_TAG` varchar(20) DEFAULT NULL,
  `BIRTHDAY_TAG` varchar(20) DEFAULT NULL,
  `CHARACTER_TAG` varchar(20) DEFAULT NULL,
  `REUSE_FLAG` varchar(1) DEFAULT NULL,
  `OUT_LEVEL` varchar(20) DEFAULT NULL,
  `RES_EVENT_ID` bigint(12) DEFAULT NULL,
  `GENERATION_TYPE` varchar(3) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `IFEETYPE` varchar(20) DEFAULT NULL,
  `AGENT_LEVEL` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_RES_PHONE_FREEZE_HIS_4_21` (`ICC_ID`),
  KEY `IDX_RES_PHONE_FREEZE_HIS_1_21` (`RES_INST_ID`),
  KEY `IDX_RES_PHONE_FREEZE_HIS_2_21` (`RES_STORE_ID`),
  KEY `IDX_RES_PHONE_FREEZE_HIS_3_21` (`RES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_phone_num_limit` */

DROP TABLE IF EXISTS `res_phone_num_limit`;

CREATE TABLE `res_phone_num_limit` (
  `ORG_CHANNEL_TYPE` bigint(8) NOT NULL COMMENT '组织代码',
  `ORG_ID` bigint(12) NOT NULL COMMENT '组织编号',
  `LIMIT_NUM` bigint(8) NOT NULL COMMENT '暂时未用',
  `REC_STATUS` varchar(3) NOT NULL COMMENT '暂时未用',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `DONE_DATE` datetime NOT NULL COMMENT '受理日期',
  `OP_ORG_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `EXT1` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`ORG_ID`,`LIMIT_NUM`),
  KEY `IDX_RES_PHONE_NUM_LIMIT_1` (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='号码库存限制';

/*Table structure for table `res_phone_num_origin` */

DROP TABLE IF EXISTS `res_phone_num_origin`;

CREATE TABLE `res_phone_num_origin` (
  `RES_ID` varchar(30) NOT NULL COMMENT '号码资源',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例,丹麦项目暂存 号码类型1000.GSM and 1001.FIXED',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '号码所属仓库',
  `RES_USED_ID` bigint(12) DEFAULT NULL COMMENT '资源使用',
  `SEC_ORG_ID` bigint(12) NOT NULL DEFAULT '0' COMMENT '归属组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '1        营业用\n2        代理用\n3        租机租卡用\n4        数据用\n5        传真用\n6        预付费可充值用\n7        测试用\n8        公务用\n9        禁用\n10       局内保留\n11       经营保留\n12       预付费一次性卡用\n13       冷号重用\n14       模转数专用\n15       IP直通车虚拟号码\n16       移动商务电话\n17       一卡两号\n18       大客户免费换号\n19       网上营业厅预约换号\n20       号码随意换(副号码)\n21       空中选号业务用\n22       集团用（免费）\n23       集团用（收费）\n24       集团业务用\n25       集团业务用(特殊)\n26       网上营业厅员工预约\n27       社会化测试转商用\n28       畅享计划赠号用\n29       188活动专用\n30       中高端关怀(润迅)\n31       中高端关怀(亚信)\n32       员工套餐专用\n33       内部使用\n34       代理专用\n35       动感地带新人网上选号\n36       中高端关怀（携和）\n37       固话营业用\n38       电商中心用\n39       合作外包用\n40       国际一卡多号来访副号码\n41       服务专用',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:  1 Open [OPE]空号、 --未用表状态  2 Available [AVA]可售、 --未用表状态  3 预占/普通预占（正常预占包括B2C、B2B） Temporarily Reserved、 --未用表状态  4 预留 B2B预留 Reserved、 --未用表状态  5 在用/实占 In-Used、 --已用表状态  6 冷冻 Ageing、 --已用表状态  7 作废、 -- PSTN号码销户后状态  8 号码查询锁定状态 Locked、 --未用表状态  9 在途、 -- 暂无  10 Block [BOL]号码回收后：阻塞、--未用表状态  20 Selected [SEL]号码生成初始状态、 --未用表状态  21 Under Assignment [UAS]待分配、 --未用表状态  22 Under Cancel Assignment [UCA]待取消分配、 --未用表状态  23 Canceled Assignment [CAS]已取消分配、 --未用表状态  24 Binded [BIN]手机号码已经和SIM卡绑定等待SIM卡发给制卡商、 --未用表状态  25 Pre-activated [PAC]预激活的后付费卡 --未用表状态',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态:\n0-未匹配未开通\n1-已匹配未开通\n2-已匹配已开通',
  `res_type_id` bigint(12) DEFAULT NULL,
  `RES_NUMBER_HLR` varchar(17) DEFAULT NULL COMMENT '对应与RES_NUMBER_HLR 的RES_NUMBER_HLR',
  `TRADE_ID` bigint(12) DEFAULT NULL COMMENT '业务品牌',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '基本套餐',
  `SUB_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '增值套餐',
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '领用人',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `SELECT_PRICE_MODE` bigint(10) DEFAULT NULL COMMENT '选号费模式编号',
  `RESERVE_FEE` bigint(10) DEFAULT NULL COMMENT '预存费',
  `RES_LEVEL` bigint(4) DEFAULT NULL COMMENT '号码档次',
  `CHOOSE_LEVEL` bigint(2) DEFAULT NULL COMMENT '选号类型 0普通号码\n\nleaf',
  `RES_CLASS` bigint(4) DEFAULT NULL COMMENT '号码类型',
  `PRESENT_MONTH` bigint(4) DEFAULT NULL COMMENT '预存返充时限',
  `DEPOSIT_MONTH` bigint(10) DEFAULT NULL COMMENT '保底期限',
  `DEPOSIT_AMOUNT` bigint(10) DEFAULT NULL COMMENT '月保底金额',
  `IS_CONFIRM` bigint(1) DEFAULT NULL COMMENT '号码发送NP 告知RICI信息情况:   0 尚未发送NP，   1 已经发送NP 通知RI、CI，   2 发送NP成功，   3 发送NP失败，',
  `ICC_ID` varchar(25) DEFAULT NULL COMMENT 'SIM卡号',
  `IMSI` varchar(20) DEFAULT NULL COMMENT 'IMSI号',
  `PRE_DATE` datetime DEFAULT NULL COMMENT '预占时间',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用日期',
  `USE_DONE_CODE` bigint(25) DEFAULT NULL COMMENT '使用流水号',
  `USE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '备份组织',
  `BUSI_CODE` bigint(12) DEFAULT NULL COMMENT '业务编码',
  `ROUTING_INFO` varchar(20) DEFAULT NULL COMMENT '号段标签',
  `BEAUTIFUAL_TAG` varchar(255) DEFAULT NULL COMMENT '靓号标签',
  `HOT_POINT_TAG` varchar(20) DEFAULT NULL COMMENT '热点标签',
  `DIGITAL_TAG` varchar(255) DEFAULT NULL COMMENT '数位标签',
  `BIRTHDAY_TAG` varchar(20) DEFAULT NULL COMMENT '生日标签',
  `CHARGING_INFO` varchar(20) DEFAULT NULL COMMENT '特点标签',
  `REUSE_FLAG` varchar(1) DEFAULT NULL COMMENT '重启标识:\n0 否（初始）\n1 是（冷号重用）',
  `OUT_LEVEL` varchar(20) DEFAULT NULL COMMENT '外部档次',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `PASSWORD` varchar(20) DEFAULT NULL COMMENT '密码',
  `IFEETYPE` varchar(20) DEFAULT NULL COMMENT '资费包类型',
  `AGENT_PHONE` varchar(30) DEFAULT NULL COMMENT '重要：如果是集团购买号码，对应有leading number的话，记录其对应的leading number信息',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `PORT_STATUS` varchar(100) DEFAULT NULL COMMENT ' 携号转网状态 号码表：PORT_STATUS   10本网号码：初始 INIT   11本网号码：待携出 Under Port Out [UPO]   12本网号码：已经携出 Ported Out [POU]   13本网号码：待携入 Under Port In [UPI]   20他网号码：初始 INIT   21他网号码：待携出 Under Port Out [UPO]   22他网号码：已经携出 Ported Out [POU]   23他网号码：待携入 Under Port In [UPI]   24他网号码：已经携入 Ported In [PIN]   25他网号码：携转入错误 ERROR （中间状态）   26他网号码：携转入反悔 REGRET （中间状态）   27他网号码：转售业务 RESOLD （中间状态）   28他网号码：已经返回 Returned',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(20) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(20) DEFAULT NULL COMMENT '备用字段5',
  `STOCK_IN_DATE` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`RES_ID`),
  KEY `IDX_PHONE_NUM_ORIG_1` (`RES_SPEC_ID`,`RES_ID`),
  KEY `IDX_PHONE_NUM_ORIG_2` (`MANAGE_STATUS`,`PRE_DATE`),
  KEY `IDX_PHONE_NUM_ORIG_3` (`RECEIVER`),
  KEY `IDX_PHONE_NUM_ORIG_4` (`DIGITAL_TAG`),
  KEY `IDX_PHONE_NUM_ORIG_5` (`AGENT_PHONE`),
  KEY `IDX_PHONE_NUM_ORIG_SPEC` (`RES_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='（按租户分表）\n号码实例未用表信息；\n该表存储的是号码资源明细信息，包含GSM号码、无线铁通号码、有线铁通固话号码和行业应用号码，\n管理状态(manage_status):\n1 空号 Open、\n2 激活 Available、\n3 预占 B2C预占 B2C Reserved、\n4 预留  B2B预占 B2B Reserved、\n5 在用实占 In-Used、\n6 冷冻 Ageing、\n7 作废、\n8 号码查询锁定状态 Locked、\n9 在途、\n10 号码回收后：阻塞 Block、\n20 号码生成初始状态 for Telenor、\n21 Under Assignment [UAS]待分配、\n22 Under Cancel Assignment [UCA]待取消分配、\n23 Canceled Assignment [CAS]已取消分配、\n24 Binded [BIN]手机号码已经和SIM卡绑定等待SIM卡发给制卡商、\n25 Pre-activated [PAC]预激活的后付费卡\n资源状态(res_status):\n0-未匹配未开通\n2-已匹配未开通\n使用类型(USE_TYPE)枚举值为：\n营业用、代销用';

/*Table structure for table `res_phone_num_origin_21` */

DROP TABLE IF EXISTS `res_phone_num_origin_21`;

CREATE TABLE `res_phone_num_origin_21` (
  `RES_ID` varchar(30) NOT NULL,
  `BATCH_ID` varchar(40) DEFAULT NULL,
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例,丹麦项目暂存 号码类型1000.GSM and 1001.FIXED',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `RES_USED_ID` bigint(12) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) NOT NULL DEFAULT '0',
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `USE_TYPE` bigint(2) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:   1 Open [OPE]空号、 --未用表状态   2 Available [AVA]可售、 --未用表状态   3 预占/普通预占（页面正常预占包括B2C、B2B）Normal Reserved、 --未用表状态   4 预留 B2B预占 B2B Reserved、 --未用表状态   5 在用/实占 In-Used、 --已用表状态   6 冷冻 Ageing、 --已用表状态   7 作废、 -- 暂无   8 号码查询锁定状态 Locked、 --未用表状态   9 在途、 -- 暂无   10 Block [BOL]号码回收后：阻塞、--未用表状态   20 Selected [SEL]号码生成初始状态、 --未用表状态   21 Under Assignment [UAS]待分配、 --未用表状态   22 Under Cancel Assignment [UCA]待取消分配、 --未用表状态   23 Canceled Assignment [CAS]已取消分配、 --未用表状态   24 Binded [BIN]手机号码已经和SIM卡绑定等待SIM卡发给制卡商、 --未用表状态   25 Pre-activated [PAC]预激活的后付费卡 --未用表状态',
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `res_type_id` bigint(12) DEFAULT NULL,
  `RES_NUMBER_HLR` varchar(17) DEFAULT NULL,
  `TRADE_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `SUB_OFFER_ID` bigint(12) DEFAULT NULL,
  `RECEIVER` varchar(50) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `SELECT_PRICE_MODE` bigint(10) DEFAULT NULL,
  `RESERVE_FEE` bigint(10) DEFAULT NULL,
  `RES_LEVEL` bigint(4) DEFAULT NULL,
  `CHOOSE_LEVEL` bigint(2) DEFAULT NULL,
  `RES_CLASS` bigint(4) DEFAULT NULL,
  `PRESENT_MONTH` bigint(4) DEFAULT NULL,
  `DEPOSIT_MONTH` bigint(10) DEFAULT NULL,
  `DEPOSIT_AMOUNT` bigint(10) DEFAULT NULL,
  `IS_CONFIRM` bigint(1) DEFAULT NULL COMMENT '号码发送NP 告知RICI信息情况:   0 尚未发送NP，   1 已经发送NP 通知RI、CI，   2 发送NP成功，   3 发送NP失败，',
  `ICC_ID` varchar(25) DEFAULT NULL,
  `IMSI` varchar(20) DEFAULT NULL,
  `PRE_DATE` datetime DEFAULT NULL,
  `USE_DATE` datetime DEFAULT NULL,
  `USE_DONE_CODE` bigint(25) DEFAULT NULL,
  `USE_ORG_ID` bigint(12) DEFAULT NULL,
  `BUSI_CODE` bigint(12) DEFAULT NULL,
  `ROUTING_INFO` varchar(20) DEFAULT NULL,
  `BEAUTIFUAL_TAG` varchar(255) DEFAULT NULL,
  `HOT_POINT_TAG` varchar(20) DEFAULT NULL,
  `DIGITAL_TAG` varchar(255) DEFAULT NULL,
  `BIRTHDAY_TAG` varchar(20) DEFAULT NULL,
  `CHARGING_INFO` varchar(20) DEFAULT NULL,
  `REUSE_FLAG` varchar(1) DEFAULT NULL,
  `OUT_LEVEL` varchar(20) DEFAULT NULL,
  `RES_EVENT_ID` bigint(12) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `IFEETYPE` varchar(20) DEFAULT NULL,
  `AGENT_PHONE` varchar(30) DEFAULT NULL COMMENT '重要：如果是集团购买号码，对应有leading number的话，记录其对应的leading number信息',
  `NOTES` varchar(255) DEFAULT NULL,
  `PORT_STATUS` varchar(100) DEFAULT NULL COMMENT ' 携号转网状态 号码表：PORT_STATUS   10本网号码：初始 INIT   11本网号码：待携出 Under Port Out [UPO]   12本网号码：已经携出 Ported Out [POU]   13本网号码：待携入 Under Port In [UPI]   20他网号码：初始 INIT   21他网号码：待携出 Under Port Out [UPO]   22他网号码：已经携出 Ported Out [POU]   23他网号码：待携入 Under Port In [UPI]   24他网号码：已经携入 Ported In [PIN]   25他网号码：携转入错误 ERROR （中间状态）   26他网号码：携转入反悔 REGRET （中间状态）   27他网号码：转售业务 RESOLD （中间状态）',
  `RSRV_STR2` varchar(100) DEFAULT NULL,
  `RSRV_STR3` varchar(100) DEFAULT NULL,
  `RSRV_NUM1` bigint(20) DEFAULT NULL,
  `RSRV_NUM2` bigint(20) DEFAULT NULL,
  `STOCK_IN_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`RES_ID`,`SEC_ORG_ID`),
  KEY `IDX_PHONE_NUM_ORIG_1` (`RES_SPEC_ID`,`RES_ID`),
  KEY `IDX_PHONE_NUM_ORIG_2` (`MANAGE_STATUS`,`PRE_DATE`),
  KEY `IDX_PHONE_NUM_ORIG_3` (`RECEIVER`),
  KEY `IDX_PHONE_NUM_ORIG_4` (`DIGITAL_TAG`),
  KEY `IDX_PHONE_NUM_ORIG_5` (`AGENT_PHONE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_phone_num_recycle_log` */

DROP TABLE IF EXISTS `res_phone_num_recycle_log`;

CREATE TABLE `res_phone_num_recycle_log` (
  `LOG_ID` bigint(25) NOT NULL COMMENT '暂时未用',
  `BEG_ID` varchar(30) DEFAULT NULL COMMENT '批次号',
  `END_ID` varchar(40) DEFAULT NULL COMMENT '结束号段',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `DEST_RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `DEST_MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '回收数量',
  `EXE_STAT` bigint(5) DEFAULT NULL COMMENT '暂时未用',
  `RECYCLE_DAYS` bigint(5) DEFAULT NULL COMMENT '销户后天数',
  `FINISH_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `TRADE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `DEST_TRADE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `DEST_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EXE_DATE` datetime DEFAULT NULL COMMENT '预留',
  PRIMARY KEY (`LOG_ID`),
  KEY `IDX_RES_NUM_RECYC_LOG_1` (`EXE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录每一次号码回收任务的具体信息（按租户分表）';

/*Table structure for table `res_phone_num_recycle_log_21` */

DROP TABLE IF EXISTS `res_phone_num_recycle_log_21`;

CREATE TABLE `res_phone_num_recycle_log_21` (
  `LOG_ID` bigint(25) NOT NULL,
  `BEG_ID` varchar(30) DEFAULT NULL,
  `END_ID` varchar(40) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) DEFAULT NULL,
  `DEST_RES_STORE_ID` bigint(12) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `DEST_MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `AMOUNT` bigint(12) DEFAULT NULL,
  `EXE_STAT` bigint(5) DEFAULT NULL,
  `RECYCLE_DAYS` bigint(5) DEFAULT NULL,
  `FINISH_DATE` datetime DEFAULT NULL,
  `TRADE_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `DEST_TRADE_ID` bigint(12) DEFAULT NULL,
  `DEST_OFFER_ID` bigint(12) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `DONE_CODE` bigint(25) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EXE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`),
  KEY `IDX_RES_NUM_RECYC_LOG_1_21` (`EXE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_phone_num_segment` */

DROP TABLE IF EXISTS `res_phone_num_segment`;

CREATE TABLE `res_phone_num_segment` (
  `BEG_ID` varchar(30) NOT NULL COMMENT '起始号段',
  `END_ID` varchar(30) NOT NULL COMMENT '结束号段',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '选号费模式类型在【系统基础表】中定义，指如“七位数同号”等的模式中文描述。目前分为以下几类，具体参见“资源管理.需求分析说明书”附件C的说明。：1－七位数同号2－七位数正顺号3－七位数反顺号4－四组两位数成对号5－前后四位数对应号6－前后四位数顺对应号7－六位数同号8－六位数顺号9－三组二位数成对号10－三组二位数对应号11－五位数同号12－五位数顺号13－前后三位数对应号14－前后三位数同号15－三位数成对号16－四位数同号17－四位数顺号18－两位数成对号19－两位数对应号20－后三位数同号21－普通',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '0-表示不启用，1-表示可启用',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  PRIMARY KEY (`BEG_ID`,`END_ID`),
  KEY `IDX_RES_PHONE_NUM_SEG` (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于记录号码生成时号段历史信息（号码生成操作成功才记录）';

/*Table structure for table `res_phone_num_used` */

DROP TABLE IF EXISTS `res_phone_num_used`;

CREATE TABLE `res_phone_num_used` (
  `RES_ID` varchar(30) NOT NULL COMMENT '号码资源',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例,丹麦项目暂存 号码类型1000.GSM and 1001.FIXED',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '号码所属仓库',
  `RES_USED_ID` bigint(12) DEFAULT NULL COMMENT '资源使用',
  `SEC_ORG_ID` bigint(12) NOT NULL DEFAULT '0' COMMENT '归属组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:  1 Open [OPE]空号、 --未用表状态  2 Available [AVA]可售、 --未用表状态  3 预占/普通预占（正常预占包括B2C、B2B） Temporarily Reserved、 --未用表状态  4 预留 B2B预留 Reserved、 --未用表状态  5 在用/实占 In-Used、 --已用表状态  6 冷冻 Ageing、 --已用表状态  7 作废、 -- PSTN号码销户后状态  8 号码查询锁定状态 Locked、 --未用表状态  9 在途、 -- 暂无  10 Block [BOL]号码回收后：阻塞、--未用表状态  20 Selected [SEL]号码生成初始状态、 --未用表状态  21 Under Assignment [UAS]待分配、 --未用表状态  22 Under Cancel Assignment [UCA]待取消分配、 --未用表状态  23 Canceled Assignment [CAS]已取消分配、 --未用表状态  24 Binded [BIN]手机号码已经和SIM卡绑定等待SIM卡发给制卡商、 --未用表状态  25 Pre-activated [PAC]预激活的后付费卡 --未用表状态',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT 'CORE - 现在的资源状态\n0-未匹配未开通\n1-已匹配未开通\n2-已匹配已开通',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '号码类别:比如3G号码2G号码',
  `RES_NUMBER_HLR` varchar(17) DEFAULT NULL COMMENT '对应与RES_NUMBER_HLR 的RES_NUMBER_HLR',
  `TRADE_ID` bigint(12) DEFAULT NULL COMMENT '业务品牌',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '基本套餐',
  `SUB_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '增值套餐',
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '领用人',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `SELECT_PRICE_MODE` bigint(10) DEFAULT NULL COMMENT '选号费模式编号',
  `RESERVE_FEE` bigint(10) DEFAULT NULL COMMENT '预存费',
  `RES_LEVEL` bigint(4) DEFAULT NULL COMMENT '号码档次',
  `CHOOSE_LEVEL` bigint(2) DEFAULT NULL COMMENT '选号类型',
  `RES_CLASS` bigint(4) DEFAULT NULL COMMENT '号码类型',
  `PRESENT_MONTH` bigint(4) DEFAULT NULL COMMENT '预存返充时限',
  `DEPOSIT_MONTH` bigint(10) DEFAULT NULL COMMENT '保底期限',
  `DEPOSIT_AMOUNT` bigint(10) DEFAULT NULL COMMENT '月保底金额',
  `IS_CONFIRM` bigint(1) DEFAULT NULL COMMENT '号码发送NP 告知RICI信息情况:   0 尚未发送NP，   1 已经发送NP 通知RI、CI，   2 发送NP成功，   3 发送NP失败，',
  `ICC_ID` varchar(25) DEFAULT NULL COMMENT 'SIM卡号',
  `IMSI` varchar(20) DEFAULT NULL COMMENT 'IMSI号',
  `PRE_DATE` datetime DEFAULT NULL COMMENT '预占时间',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用日期',
  `USE_DONE_CODE` bigint(25) DEFAULT NULL COMMENT '使用流水号',
  `USE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '备份组织',
  `BUSI_CODE` bigint(12) DEFAULT NULL COMMENT '业务编码',
  `ROUTING_INFO` varchar(20) DEFAULT NULL COMMENT '号段标签',
  `BEAUTIFUAL_TAG` varchar(255) DEFAULT NULL COMMENT '靓号标签',
  `HOT_POINT_TAG` varchar(20) DEFAULT NULL COMMENT '热点标签',
  `DIGITAL_TAG` varchar(255) DEFAULT NULL COMMENT '数位标签',
  `BIRTHDAY_TAG` varchar(20) DEFAULT NULL COMMENT '生日标签',
  `CHARGING_INFO` varchar(20) DEFAULT NULL COMMENT '特点标签',
  `REUSE_FLAG` varchar(1) DEFAULT NULL COMMENT '0 否（初始）\n1 是（冷号重用）',
  `OUT_LEVEL` varchar(20) DEFAULT NULL COMMENT '外部档次',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `PASSWORD` varchar(20) DEFAULT NULL COMMENT '密码',
  `IFEETYPE` varchar(20) DEFAULT NULL COMMENT '资费包类型',
  `AGENT_PHONE` varchar(30) DEFAULT NULL COMMENT '重要：如果是集团购买号码，对应有leading number的话，记录其对应的leading number信息',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `PORT_STATUS` varchar(100) DEFAULT NULL COMMENT ' 携号转网状态 号码表：PORT_STATUS   10本网号码：初始 INIT   11本网号码：待携出 Under Port Out [UPO]   12本网号码：已经携出 Ported Out [POU]   13本网号码：待携入 Under Port In [UPI]   20他网号码：初始 INIT   21他网号码：待携出 Under Port Out [UPO]   22他网号码：已经携出 Ported Out [POU]   23他网号码：待携入 Under Port In [UPI]   24他网号码：已经携入 Ported In [PIN]   25他网号码：携转入错误 ERROR （中间状态）   26他网号码：携转入反悔 REGRET （中间状态）   27他网号码：转售业务 RESOLD （中间状态）   28他网号码：已经返回 Returned',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(20) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(20) DEFAULT NULL COMMENT '备用字段5',
  `STOCK_IN_DATE` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`RES_ID`,`SEC_ORG_ID`),
  KEY `IDX_PHONE_NUM_USED_1` (`RES_STORE_ID`),
  KEY `IDX_PHONE_NUM_USED_2` (`RES_NUMBER_HLR`),
  KEY `IDX_PHONE_NUM_USED_3` (`ICC_ID`),
  KEY `IDX_PHONE_NUM_USED_4` (`COUNTY_ID`,`REGION_ID`),
  KEY `IDX_PHONE_NUM_USED_5` (`AGENT_PHONE`),
  KEY `IDX_PHONE_NUM_USED_6` (`ICC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='（按租户分表）\n号码实例已用表信息；\n该表存储的是号码资源明细信息，包含GSM号码、无线铁通号码、有线铁通固话号码和行业应用号码，\n管理状态(manage_status):\n1 空号 Open、\n2 激活 Available、\n3 预占 B2C预占 B2C Reserved、\n4 预留  B2B预占 B2B Reserved、\n5 在用实占 In-Used、\n6 冷冻 Ageing、\n7 作废、\n8 号码查询锁定状态 Locked、\n9 在途、\n10 号码回收后：阻塞 Block、\n20 号码生成初始状态 for Telenor、\n21 Under Assignment [UAS]待分配、\n22 Under Cancel Assignment [UCA]待取消分配、\n23 Canceled Assignment [CAS]已取消分配、\n24 Binded [BIN]手机号码已经和SIM卡绑定等待SIM卡发给制卡商、\n25 Pre-activated [PAC]预激活的后付费卡\n资源状态(res_status):\n1-已匹配已开通\n使用类型(USE_TYPE)枚举值为：\n营业用、代销用';

/*Table structure for table `res_phone_num_used_21` */

DROP TABLE IF EXISTS `res_phone_num_used_21`;

CREATE TABLE `res_phone_num_used_21` (
  `RES_ID` varchar(30) NOT NULL,
  `BATCH_ID` varchar(40) DEFAULT NULL,
  `RES_INST_ID` varchar(25) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `RES_USED_ID` bigint(12) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) NOT NULL DEFAULT '0',
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `USE_TYPE` bigint(2) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:   1 Open [OPE]空号、 --未用表状态   2 Available [AVA]可售、 --未用表状态   3 预占/普通预占（页面正常预占包括B2C、B2B）Normal Reserved、 --未用表状态   4 预留 B2B预占 B2B Reserved、 --未用表状态   5 在用/实占 In-Used、 --已用表状态   6 冷冻 Ageing、 --已用表状态   7 作废、 -- 暂无   8 号码查询锁定状态 Locked、 --未用表状态   9 在途、 -- 暂无   10 Block [BOL]号码回收后：阻塞、--未用表状态   20 Selected [SEL]号码生成初始状态、 --未用表状态   21 Under Assignment [UAS]待分配、 --未用表状态   22 Under Cancel Assignment [UCA]待取消分配、 --未用表状态   23 Canceled Assignment [CAS]已取消分配、 --未用表状态   24 Binded [BIN]手机号码已经和SIM卡绑定等待SIM卡发给制卡商、 --未用表状态   25 Pre-activated [PAC]预激活的后付费卡 --未用表状态',
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `GENERATION_TYPE` varchar(3) DEFAULT NULL,
  `RES_NUMBER_HLR` varchar(17) DEFAULT NULL,
  `TRADE_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `SUB_OFFER_ID` bigint(12) DEFAULT NULL,
  `RECEIVER` varchar(50) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `SELECT_PRICE_MODE` bigint(10) DEFAULT NULL,
  `RESERVE_FEE` bigint(10) DEFAULT NULL,
  `RES_LEVEL` bigint(4) DEFAULT NULL,
  `CHOOSE_LEVEL` bigint(2) DEFAULT NULL,
  `RES_CLASS` bigint(4) DEFAULT NULL,
  `PRESENT_MONTH` bigint(4) DEFAULT NULL,
  `DEPOSIT_MONTH` bigint(10) DEFAULT NULL,
  `DEPOSIT_AMOUNT` bigint(10) DEFAULT NULL,
  `IS_CONFIRM` bigint(1) DEFAULT NULL COMMENT '号码发送NP 告知RICI信息情况:   0 尚未发送NP，   1 已经发送NP 通知RI、CI，   2 发送NP成功，   3 发送NP失败，',
  `ICC_ID` varchar(25) DEFAULT NULL,
  `IMSI` varchar(20) DEFAULT NULL,
  `PRE_DATE` datetime DEFAULT NULL,
  `USE_DATE` datetime DEFAULT NULL,
  `USE_DONE_CODE` bigint(25) DEFAULT NULL,
  `USE_ORG_ID` bigint(12) DEFAULT NULL,
  `BUSI_CODE` bigint(12) DEFAULT NULL,
  `ROUTING_INFO` varchar(20) DEFAULT NULL,
  `BEAUTIFUAL_TAG` varchar(255) DEFAULT NULL,
  `HOT_POINT_TAG` varchar(20) DEFAULT NULL,
  `DIGITAL_TAG` varchar(255) DEFAULT NULL,
  `BIRTHDAY_TAG` varchar(20) DEFAULT NULL,
  `CHARGING_INFO` varchar(20) DEFAULT NULL,
  `REUSE_FLAG` varchar(1) DEFAULT NULL,
  `OUT_LEVEL` varchar(20) DEFAULT NULL,
  `RES_EVENT_ID` bigint(12) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `IFEETYPE` varchar(20) DEFAULT NULL,
  `AGENT_PHONE` varchar(30) DEFAULT NULL COMMENT '重要：如果是集团购买号码，对应有leading number的话，记录其对应的leading number信息',
  `NOTES` varchar(255) DEFAULT NULL,
  `PORT_STATUS` varchar(100) DEFAULT NULL COMMENT ' 携号转网状态 号码表：PORT_STATUS   10本网号码：初始 INIT   11本网号码：待携出 Under Port Out [UPO]   12本网号码：已经携出 Ported Out [POU]   13本网号码：待携入 Under Port In [UPI]   20他网号码：初始 INIT   21他网号码：待携出 Under Port Out [UPO]   22他网号码：已经携出 Ported Out [POU]   23他网号码：待携入 Under Port In [UPI]   24他网号码：已经携入 Ported In [PIN]   25他网号码：携转入错误 ERROR （中间状态）   26他网号码：携转入反悔 REGRET （中间状态）   27他网号码：转售业务 RESOLD （中间状态）',
  `RSRV_STR2` varchar(100) DEFAULT NULL,
  `RSRV_STR3` varchar(100) DEFAULT NULL,
  `RSRV_NUM1` bigint(20) DEFAULT NULL,
  `RSRV_NUM2` bigint(20) DEFAULT NULL,
  `STOCK_IN_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`RES_ID`,`SEC_ORG_ID`),
  KEY `IDX_PHONE_NUM_USED_1_21` (`RES_STORE_ID`),
  KEY `IDX_PHONE_NUM_USED_2_21` (`RES_NUMBER_HLR`),
  KEY `IDX_PHONE_NUM_USED_4_21` (`COUNTY_ID`,`REGION_ID`),
  KEY `IDX_PHONE_NUM_USED_3_21` (`ICC_ID`),
  KEY `IDX_PHONE_NUM_USED_5` (`AGENT_PHONE`),
  KEY `IDX_PHONE_NUM_USED_6` (`ICC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_phone_num_used_callbak` */

DROP TABLE IF EXISTS `res_phone_num_used_callbak`;

CREATE TABLE `res_phone_num_used_callbak` (
  `RES_ID` varchar(30) NOT NULL COMMENT '号码',
  `RECYCLE_LOG_ID` bigint(16) NOT NULL COMMENT '回收标识',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '号码所属仓库',
  `RES_USED_ID` bigint(12) DEFAULT NULL COMMENT '资源使用',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '1        营业用\n2        代理用\n3        租机租卡用\n4        数据用\n5        传真用\n6        预付费可充值用\n7        测试用\n8        公务用\n9        禁用\n10       局内保留\n11       经营保留\n12       预付费一次性卡用\n13       冷号重用\n14       模转数专用\n15       IP直通车虚拟号码\n16       移动商务电话\n17       一卡两号\n18       大客户免费换号\n19       网上营业厅预约换号\n20       号码随意换(副号码)\n21       空中选号业务用\n22       集团用（免费）\n23       集团用（收费）\n24       集团业务用\n25       集团业务用(特殊)\n26       网上营业厅员工预约\n27       社会化测试转商用\n28       畅享计划赠号用\n29       188活动专用\n30       中高端关怀(润迅)\n31       中高端关怀(亚信)\n32       员工套餐专用\n33       内部使用\n34       代理专用\n35       动感地带新人网上选号\n36       中高端关怀（携和）\n37       固话营业用\n38       电商中心用\n39       合作外包用\n40       国际一卡多号来访副号码\n41       服务专用',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:\n1 空号 Open、\n2 激活 Available、\n3 预占 B2C预占 B2C Reserved、\n4 预留  B2B预占 B2B Reserved、\n5 在用实占 In-Used、\n6 冷冻 Ageing、\n7 作废、\n8 号码查询锁定状态 Locked、\n9 在途、\n10 号码回收后：阻塞 Block、\n20 号码生成初始状态 for Telenor、\n21 Under Assignment [UAS]待分配、\n22 Under Cancel Assignment [UCA]待取消分配、\n23 Canceled Assignment [CAS]已取消分配、\n24 Binded [BIN]手机号码已经和SIM卡绑定等待SIM卡发给制卡商、\n25 Pre-activated [PAC]预激活的后付费卡\n26 Under Port In [UPI]待携入\n27 Ported In [PIN]已经携入\n28 Under Port Out [UPO]待携出\n29 Ported Out [POU]已经携出',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态:\n0-未匹配未开通\n1-已匹配未开通\n2-已匹配已开通\n3-预销户状态',
  `GENERATION_TYPE` varchar(3) DEFAULT NULL COMMENT '号码类别:比如3G号码2G号码',
  `RES_NUMBER_HLR` varchar(17) DEFAULT NULL COMMENT '对应与RES_NUMBER_HLR 的RES_NUMBER_HLR',
  `TRADE_ID` bigint(12) DEFAULT NULL COMMENT '业务品牌',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '基本套餐',
  `SUB_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '增值套餐',
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '存储客户管理编号CUST_ID',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `SELECT_PRICE_MODE` bigint(10) DEFAULT NULL COMMENT '选号费模式编号',
  `RESERVE_FEE` bigint(10) DEFAULT NULL COMMENT '预存费',
  `RES_LEVEL` bigint(4) DEFAULT NULL COMMENT '号码档次.0、1、2、3档，目前配置在表里面。\n号码新生成时，默认-1，后面会跑TASK，来匹配号码模式。匹配完毕该字段改成对应的号码档次。--- 请注意',
  `CHOOSE_LEVEL` bigint(2) DEFAULT NULL COMMENT '选号类型:\n0. 普通号码,\n1.优选号码',
  `RES_CLASS` bigint(4) DEFAULT NULL COMMENT '号码类型',
  `PRESENT_MONTH` bigint(4) DEFAULT NULL COMMENT '预存返充时限',
  `DEPOSIT_MONTH` bigint(10) DEFAULT NULL COMMENT '保底期限',
  `DEPOSIT_AMOUNT` bigint(10) DEFAULT NULL COMMENT '月保底金额',
  `IS_CONFIRM` bigint(1) DEFAULT NULL COMMENT '确认标记',
  `ICC_ID` varchar(25) DEFAULT NULL COMMENT 'SIM卡号',
  `IMSI` varchar(20) DEFAULT NULL COMMENT 'IMSI号',
  `PRE_DATE` datetime DEFAULT NULL COMMENT '预占时间',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用日期',
  `USE_DONE_CODE` bigint(25) DEFAULT NULL COMMENT '使用流水号',
  `USE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '备份组织',
  `BUSI_CODE` bigint(12) DEFAULT NULL COMMENT '业务编码',
  `ROUTING_INFO` varchar(20) DEFAULT NULL COMMENT 'RI值：ROUTING_INFO',
  `CHARGING_INFO` varchar(20) DEFAULT NULL COMMENT 'CI值：CHARGING_INFO',
  `DIGITAL_TAG` varchar(255) DEFAULT NULL COMMENT '数位标签，号码分段的标签，重要',
  `BEAUTIFUAL_TAG` varchar(255) DEFAULT NULL COMMENT '靓号标签，BEAUTIFUAL_TAG字段 存储 号段分类名称，永久存储',
  `HOT_POINT_TAG` varchar(20) DEFAULT NULL COMMENT '热点标签',
  `BIRTHDAY_TAG` varchar(20) DEFAULT NULL COMMENT '生日标签',
  `REUSE_FLAG` varchar(1) DEFAULT NULL COMMENT '重启标识:\n0 否（初始）\n1 是（冷号重用）',
  `OUT_LEVEL` varchar(20) DEFAULT NULL COMMENT '外部档次',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `PASSWORD` varchar(20) DEFAULT NULL COMMENT '密码',
  `IFEETYPE` varchar(20) DEFAULT NULL COMMENT '资费包类型',
  `AGENT_PHONE` varchar(30) DEFAULT NULL COMMENT '代理商号码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `PORT_STATUS` varchar(100) DEFAULT NULL COMMENT '携转状态:\n0.初始\n1.携转出\n2.携转入\n3.携入错误',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '携号转网时，临时存放号码管理状态',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(20) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(20) DEFAULT NULL COMMENT '备用字段5',
  `STOCK_IN_DATE` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`RES_ID`,`RECYCLE_LOG_ID`),
  KEY `IDX_NUMUSED_CALBAK_1` (`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录具体被回收的号码实例（按租户分表）';

/*Table structure for table `res_phone_num_used_callbak_21` */

DROP TABLE IF EXISTS `res_phone_num_used_callbak_21`;

CREATE TABLE `res_phone_num_used_callbak_21` (
  `RES_ID` varchar(30) NOT NULL,
  `RECYCLE_LOG_ID` bigint(16) NOT NULL,
  `BATCH_ID` varchar(40) DEFAULT NULL,
  `RES_INST_ID` varchar(25) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `RES_USED_ID` bigint(12) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `USE_TYPE` bigint(2) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `GENERATION_TYPE` varchar(3) DEFAULT NULL,
  `RES_NUMBER_HLR` varchar(17) DEFAULT NULL,
  `TRADE_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `SUB_OFFER_ID` bigint(12) DEFAULT NULL,
  `RECEIVER` varchar(50) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `SELECT_PRICE_MODE` bigint(10) DEFAULT NULL,
  `RESERVE_FEE` bigint(10) DEFAULT NULL,
  `RES_LEVEL` bigint(4) DEFAULT NULL,
  `CHOOSE_LEVEL` bigint(2) DEFAULT NULL,
  `RES_CLASS` bigint(4) DEFAULT NULL,
  `PRESENT_MONTH` bigint(4) DEFAULT NULL,
  `DEPOSIT_MONTH` bigint(10) DEFAULT NULL,
  `DEPOSIT_AMOUNT` bigint(10) DEFAULT NULL,
  `IS_CONFIRM` bigint(1) DEFAULT NULL,
  `ICC_ID` varchar(25) DEFAULT NULL,
  `IMSI` varchar(20) DEFAULT NULL,
  `PRE_DATE` datetime DEFAULT NULL,
  `USE_DATE` datetime DEFAULT NULL,
  `USE_DONE_CODE` bigint(25) DEFAULT NULL,
  `USE_ORG_ID` bigint(12) DEFAULT NULL,
  `BUSI_CODE` bigint(12) DEFAULT NULL,
  `ROUTING_INFO` varchar(20) DEFAULT NULL,
  `CHARGING_INFO` varchar(20) DEFAULT NULL,
  `DIGITAL_TAG` varchar(255) DEFAULT NULL,
  `BEAUTIFUAL_TAG` varchar(255) DEFAULT NULL,
  `HOT_POINT_TAG` varchar(20) DEFAULT NULL,
  `BIRTHDAY_TAG` varchar(20) DEFAULT NULL,
  `REUSE_FLAG` varchar(1) DEFAULT NULL,
  `OUT_LEVEL` varchar(20) DEFAULT NULL,
  `RES_EVENT_ID` bigint(12) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `IFEETYPE` varchar(20) DEFAULT NULL,
  `AGENT_PHONE` varchar(30) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `PORT_STATUS` varchar(100) DEFAULT NULL,
  `RSRV_STR2` varchar(100) DEFAULT NULL,
  `RSRV_STR3` varchar(100) DEFAULT NULL,
  `RSRV_NUM1` bigint(20) DEFAULT NULL,
  `RSRV_NUM2` bigint(20) DEFAULT NULL,
  `STOCK_IN_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`RES_ID`,`RECYCLE_LOG_ID`),
  KEY `IDX_NUMUSED_CALBAK_1_21` (`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_phone_offer_rel` */

DROP TABLE IF EXISTS `res_phone_offer_rel`;

CREATE TABLE `res_phone_offer_rel` (
  `OFFER_REL_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `SOURCE_TYPE` varchar(3) DEFAULT NULL COMMENT '1.号段，2号码，3资费包',
  `SOURCE_OBJ` varchar(40) DEFAULT NULL COMMENT '号段信息，号码信息，资费包信息',
  `OFFER_ID` varchar(40) DEFAULT NULL COMMENT '暂时未用',
  `CONSTRAINT_TYPE` varchar(3) DEFAULT NULL COMMENT '约束类型，或者是优先等级',
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `DONE_DATE` datetime NOT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) NOT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `STATE` varchar(3) NOT NULL COMMENT '状态:U有效、E无效',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `EXT1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`OFFER_REL_ID`),
  KEY `IDX_RES_PHO_OFFER_REL_1` (`SOURCE_TYPE`),
  KEY `IDX_RES_PHO_OFFER_REL_2` (`SOURCE_OBJ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='号码模式匹配套餐';

/*Table structure for table `res_phone_offer_rel_param` */

DROP TABLE IF EXISTS `res_phone_offer_rel_param`;

CREATE TABLE `res_phone_offer_rel_param` (
  `OFFER_REL_PARAM_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `OFFER_REL_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `OFFER_CODE` bigint(12) DEFAULT NULL COMMENT '参数代码',
  `OFFER_VALUE` varchar(40) DEFAULT NULL COMMENT '暂时未用',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `EXT1` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(64) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`OFFER_REL_PARAM_ID`),
  KEY `IDX_RES_OFFER_PARAM_1` (`OFFER_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='号码模式匹配套餐参数';

/*Table structure for table `res_phone_partner` */

DROP TABLE IF EXISTS `res_phone_partner`;

CREATE TABLE `res_phone_partner` (
  `RES_ID` varchar(30) NOT NULL COMMENT '号码',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT 'res_code的前两位为res_type。后四位为资源的编号，由系统自动据各类别序列号得出。在安装系统时已填写【资源型号定义表】）GSM手机号码100001，SIM卡200001，STK卡为200002，全系统统一且不能修改，故在资源型号定义模块中不提供资源类别为手机号码及SIM卡的维护。',
  `RES_USED_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '1营业2代理3租机租卡4数据用5传真用\n6预付费可充值用7测试用8公务用9禁用10局内保留 \n11经营保留12 预付费一次性卡用13神州卡号码用14模转数专用',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1-封存；\n2-开放；\n3-选中;\n4-预约；\n5－占用；\n6－冷冻 ；\n7-空闲；\n8－废弃；',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '0-未匹配未开通1-已匹配已开通2-已匹配未开通',
  `CHOOSE_LEVEL` bigint(2) DEFAULT NULL COMMENT '1-10：减费号码\n11－20：普通号码\n21－30：优选号码',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `PARTNER_ID` bigint(5) DEFAULT NULL COMMENT '暂时未用',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `PARTNER_COUNTRY` varchar(20) DEFAULT NULL COMMENT '暂时未用',
  `PARTNER_NETWORK` varchar(20) DEFAULT NULL COMMENT '暂时未用',
  `PARTNER_MSISDN` varchar(20) DEFAULT NULL COMMENT '暂时未用',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`RES_ID`),
  KEY `IDX_RES_PHONE_PARTNER_1` (`ORG_ID`),
  KEY `IDX_RES_PHONE_PARTNER_2` (`DONE_CODE`),
  KEY `IDX_RES_PHONE_PARTNER_3` (`RES_STORE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表存储的是副卡号码明细信息；';

/*Table structure for table `res_phone_partner_21` */

DROP TABLE IF EXISTS `res_phone_partner_21`;

CREATE TABLE `res_phone_partner_21` (
  `RES_ID` varchar(30) NOT NULL,
  `RES_INST_ID` varchar(25) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `RES_USED_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `USE_TYPE` bigint(2) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `CHOOSE_LEVEL` bigint(2) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `PARTNER_ID` bigint(5) DEFAULT NULL,
  `PRODUCT_ID` bigint(12) DEFAULT NULL,
  `PARTNER_COUNTRY` varchar(20) DEFAULT NULL,
  `PARTNER_NETWORK` varchar(20) DEFAULT NULL,
  `PARTNER_MSISDN` varchar(20) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RES_ID`),
  KEY `IDX_RES_PHONE_PARTNER_1_21` (`ORG_ID`),
  KEY `IDX_RES_PHONE_PARTNER_2_21` (`DONE_CODE`),
  KEY `IDX_RES_PHONE_PARTNER_3_21` (`RES_STORE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_phone_pattern_class` */

DROP TABLE IF EXISTS `res_phone_pattern_class`;

CREATE TABLE `res_phone_pattern_class` (
  `PATTERN_ID` bigint(10) NOT NULL COMMENT '模式编号',
  `RES_CLASS` bigint(4) NOT NULL COMMENT '号码类型编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PATTERN_ID`,`RES_CLASS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='号码模式与类型配置（按租户分表）';

/*Table structure for table `res_phone_pattern_level` */

DROP TABLE IF EXISTS `res_phone_pattern_level`;

CREATE TABLE `res_phone_pattern_level` (
  `PATTERN_ID` bigint(10) NOT NULL COMMENT '模式编号',
  `RES_LEVEL` bigint(12) DEFAULT NULL COMMENT '号码档次编号',
  `RES_CLASS` bigint(4) DEFAULT NULL COMMENT '模式编码',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PATTERN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='号码档次与类型配置（按租户分表）';

/*Table structure for table `res_phone_pattern_level_21` */

DROP TABLE IF EXISTS `res_phone_pattern_level_21`;

CREATE TABLE `res_phone_pattern_level_21` (
  `PATTERN_ID` bigint(10) NOT NULL,
  `RES_LEVEL` bigint(12) DEFAULT NULL,
  `RES_CLASS` bigint(4) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PATTERN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_phone_purchase` */

DROP TABLE IF EXISTS `res_phone_purchase`;

CREATE TABLE `res_phone_purchase` (
  `DATA_ID` bigint(14) NOT NULL COMMENT '数据编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '流水号',
  `RES_ID` varchar(20) DEFAULT NULL COMMENT '号码',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源型号',
  `CUST_CARD_TYPE` varchar(6) DEFAULT NULL COMMENT '证件类型:\n0 身份证\n1 工商登记证\n2 护照（旧）\n3 军人证\n4 社保卡(旧)\n5 企业代码证\n6 蓝印户口（旧）\n9 单位证明\n10 港澳居民来往内地通行证\n11 台胞\n12 外籍人士\n98 其它证件',
  `CUST_CARD_NO` varchar(50) DEFAULT NULL COMMENT '证件号码',
  `LEADING_NUM` varchar(20) DEFAULT NULL COMMENT '总机号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '0为初始、1已购买，2为已取消',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态\n2.未用\n4.已用',
  `BUSI_TYPE` varchar(12) DEFAULT NULL COMMENT '选号业务类型:\n1-网上放号,2-自助选号,3-电子商务营业厅（虚拟）,4-188号码抢注,下发到营业厅',
  `PRE_OCCUPY_DATE` datetime NOT NULL COMMENT '预占时间',
  `OCCUPY_DATE` datetime DEFAULT NULL COMMENT '实占时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县区',
  `NOTES` varchar(60) DEFAULT NULL COMMENT '备注',
  `ICC_ID` varchar(25) DEFAULT NULL COMMENT 'SIM卡号',
  `IMSI` varchar(20) DEFAULT NULL COMMENT 'IMSI号',
  `EXT_STR` varchar(60) DEFAULT NULL COMMENT '备用字段1',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库编码',
  PRIMARY KEY (`DATA_ID`),
  KEY `IDX_RES_SEL_NUM_CUST_LOG_1` (`RES_ID`,`MANAGE_STATUS`),
  KEY `IDX_RES_SEL_NUM_CUST_LOG_2` (`RES_STORE_ID`),
  KEY `IDX_RES_SEL_NUM_CUST_LOG_3` (`CUST_CARD_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='号码购买记录表\nfor Telenor，B2B选号、集团购买号码，会有一个协议期。\n在协议期内销户回收的号码，还要能被原集团预占。\n（按租户分表）';

/*Table structure for table `res_phone_segment_config` */

DROP TABLE IF EXISTS `res_phone_segment_config`;

CREATE TABLE `res_phone_segment_config` (
  `PHONE_SEGMENT_ID` bigint(12) NOT NULL COMMENT '操作明细编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别',
  `RES_SPEC_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `SEGMENT` varchar(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT 'ORG_ID',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PHONE_SEGMENT_ID`),
  KEY `IDX_RES_PHONE_SEMGENT_1` (`REGION_ID`,`COUNTY_ID`),
  KEY `IDX_RES_PHONE_SEMGENT_2` (`RES_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='号段配置表';

/*Table structure for table `res_phone_segment_industry` */

DROP TABLE IF EXISTS `res_phone_segment_industry`;

CREATE TABLE `res_phone_segment_industry` (
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `RES_NUMBER_SEG` varchar(20) NOT NULL COMMENT '号段',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区编码',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `TRADE_TYPE` varchar(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  PRIMARY KEY (`RES_NUMBER_SEG`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置行业应用号码号段、地市、品牌类型的对应关系；\n如果号码为全省通用类型，则地市值默认为0；\n品牌明细信息由产品侧维护';

/*Table structure for table `res_phone_segment_industry_his` */

DROP TABLE IF EXISTS `res_phone_segment_industry_his`;

CREATE TABLE `res_phone_segment_industry_his` (
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `RES_NUMBER_SEG` varchar(20) NOT NULL COMMENT '号段',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区编码',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `TRADE_TYPE` varchar(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置行业应用号码号段、地市、品牌类型的对应关系；\n如果号码为全省通用类型，则地市值默认为0；\n品牌明细信息由产品侧维护';

/*Table structure for table `res_port_hlr` */

DROP TABLE IF EXISTS `res_port_hlr`;

CREATE TABLE `res_port_hlr` (
  `SEQ_ID` varchar(30) NOT NULL COMMENT '号码资源',
  `RES_ID` varchar(30) NOT NULL COMMENT '号码资源',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:  1 Open [OPE]空号、 --未用表状态  2 Available [AVA]可售、 --未用表状态  3 预占/普通预占（正常预占包括B2C、B2B） Temporarily Reserved、 --未用表状态  4 预留 B2B预留 Reserved、 --未用表状态  5 在用/实占 In-Used、 --已用表状态  6 冷冻 Ageing、 --已用表状态  7 作废、 -- PSTN号码销户后状态  8 号码查询锁定状态 Locked、 --未用表状态  9 在途、 -- 暂无  10 Block [BOL]号码回收后：阻塞、--未用表状态  20 Selected [SEL]号码生成初始状态、 --未用表状态  21 Under Assignment [UAS]待分配、 --未用表状态  22 Under Cancel Assignment [UCA]待取消分配、 --未用表状态  23 Canceled Assignment [CAS]已取消分配、 --未用表状态  24 Binded [BIN]手机号码已经和SIM卡绑定等待SIM卡发给制卡商、 --未用表状态  25 Pre-activated [PAC]预激活的后付费卡 --未用表状态',
  `STOCK_IN_DATE` datetime DEFAULT NULL COMMENT '入库时间',
  `PORT_STATUS` varchar(100) DEFAULT NULL COMMENT ' 携号转网状态 号码表：PORT_STATUS   10本网号码：初始 INIT   11本网号码：待携出 Under Port Out [UPO]   12本网号码：已经携出 Ported Out [POU]   13本网号码：待携入 Under Port In [UPI]   20他网号码：初始 INIT   21他网号码：待携出 Under Port Out [UPO]   22他网号码：已经携出 Ported Out [POU]   23他网号码：待携入 Under Port In [UPI]   24他网号码：已经携入 Ported In [PIN]   25他网号码：携转入错误 ERROR （中间状态）   26他网号码：携转入反悔 REGRET （中间状态）   27他网号码：转售业务 RESOLD （中间状态）   28他网号码：已经返回 Returned',
  `OTHER_OPERATOR` varchar(100) DEFAULT NULL,
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `REGION_ID` varchar(12) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `ROUTING_INFO` varchar(100) DEFAULT NULL COMMENT 'ROUTING_INFO',
  `CHARGING_INFO` varchar(100) DEFAULT NULL COMMENT 'CHARGING_INFO',
  `RECIPIENT_SERVICE_OPERATOR_CPS` varchar(100) DEFAULT NULL,
  `RECIPIENT_SERVICE_OPERATOR_NAM` varchar(100) DEFAULT NULL,
  `RECIPIENT_NETWORK_OPERATOR_CPS` varchar(100) DEFAULT NULL,
  `RECIPIENT_NETWORK_OPERATOR_NAM` varchar(100) DEFAULT NULL COMMENT 'RECIPIENT_NETWORK_OPERATOR_NAME',
  `RANGE_HOLDER_CPS` varchar(100) DEFAULT NULL COMMENT 'RANGE_HOLDER_CPS',
  `RANGE_HOLDER_NAME` varchar(100) DEFAULT NULL,
  `NUMBER_TYPE` varchar(100) DEFAULT NULL COMMENT 'NUMBER_TYPE',
  `MUNICIPALITY` varchar(100) DEFAULT NULL,
  `SPC` varchar(100) DEFAULT NULL,
  `OCH_ORDER_NUMBER` varchar(100) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL COMMENT 'EXT1',
  `EXT2` varchar(100) DEFAULT NULL COMMENT 'EXT2',
  `EXT3` varchar(100) DEFAULT NULL COMMENT 'EXT3',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_PORT_HLR_1` (`RES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='携入号码地市归属表（不分表）';

/*Table structure for table `res_price` */

DROP TABLE IF EXISTS `res_price`;

CREATE TABLE `res_price` (
  `RES_PRICE_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `RES_PRICE_RULE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `FACTORY_ID` bigint(12) DEFAULT NULL COMMENT 'FACTORY_ID',
  `COLOR_ID` bigint(12) DEFAULT NULL COMMENT '1黑色\n2红色\n3黄色\n4灰色\n5默认',
  `CONFIG_ID` bigint(12) DEFAULT NULL COMMENT '1标准\n2豪华\n3简配',
  `TYPE_ID` bigint(12) DEFAULT NULL COMMENT '如果是终端的是时候：1601.本地1602.集团',
  `MARKET_PRICE` bigint(12) DEFAULT NULL COMMENT '市场价',
  `BUY_PRICE` bigint(12) DEFAULT NULL COMMENT 'BUY_PRICE',
  `RES_COST` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `OUT_DONE_CODE` varchar(40) DEFAULT NULL COMMENT '外部流水号',
  `PURCHASE_PROJECT_NO` varchar(50) DEFAULT NULL COMMENT 'PURCHASE_PROJECT_NO',
  `SETTLE_PRICE` bigint(12) DEFAULT NULL COMMENT '结算价格',
  `SETTLE_RATE` varchar(10) DEFAULT NULL COMMENT '结算费率',
  `PLANT_SETTLE_PRICE` bigint(12) DEFAULT NULL COMMENT '平台结算价格',
  `BUY_EFF_DATE` datetime DEFAULT NULL COMMENT 'BUY_EFF_DATE',
  `BUY_EXP_DATE` datetime DEFAULT NULL COMMENT '采购价失效时间',
  `SALE_PRICE` bigint(12) DEFAULT NULL COMMENT 'SALE_PRICE==MARKED_PRICE',
  `SALE_EFF_DATE` datetime DEFAULT NULL COMMENT '销售价生效时间',
  `SALE_EXP_DATE` datetime DEFAULT NULL COMMENT '销售价失效时间',
  `CHECK_PRICE` bigint(12) DEFAULT NULL COMMENT 'lower_price',
  `POINTS` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `POINTS_FEE` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `BATCH_SALE_PRICE` bigint(12) DEFAULT NULL COMMENT '批量销售标价',
  `BATCH_SALE_EFF_DATE` datetime DEFAULT NULL COMMENT '批量销售价生效时间',
  `BATCH_SALE_EXP_DATE` datetime DEFAULT NULL COMMENT '批量销售价失效时间',
  `DISCOUNT_PRICE` bigint(12) DEFAULT NULL COMMENT 'loss_price=DISCOUNT_PRICE',
  `RES_STATUS` bigint(2) DEFAULT NULL COMMENT '0 无效\n1 有效',
  `DONE_CODE` varchar(255) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '组织代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '填0时全省统一',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '预留',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '预留',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '预留',
  `EXT4` varchar(100) DEFAULT NULL COMMENT '预留',
  PRIMARY KEY (`RES_PRICE_ID`),
  KEY `IDX_RES_PRICE_1` (`RES_SPEC_ID`),
  KEY `IDX_RES_PRICE_2` (`FACTORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源价格信息表（按照租户分表）';

/*Table structure for table `res_price_21` */

DROP TABLE IF EXISTS `res_price_21`;

CREATE TABLE `res_price_21` (
  `RES_PRICE_ID` bigint(12) NOT NULL,
  `RES_SPEC_ID` bigint(12) NOT NULL,
  `RES_PRICE_RULE_ID` bigint(12) DEFAULT NULL,
  `FACTORY_ID` bigint(12) DEFAULT NULL,
  `COLOR_ID` bigint(12) DEFAULT NULL,
  `CONFIG_ID` bigint(12) DEFAULT NULL,
  `TYPE_ID` bigint(12) DEFAULT NULL,
  `MARKET_PRICE` bigint(12) DEFAULT NULL,
  `BUY_PRICE` bigint(12) DEFAULT NULL,
  `RES_COST` bigint(12) DEFAULT NULL,
  `OUT_DONE_CODE` varchar(40) DEFAULT NULL,
  `PURCHASE_PROJECT_NO` varchar(50) DEFAULT NULL,
  `SETTLE_PRICE` bigint(12) DEFAULT NULL,
  `SETTLE_RATE` varchar(10) DEFAULT NULL,
  `PLANT_SETTLE_PRICE` bigint(12) DEFAULT NULL,
  `BUY_EFF_DATE` datetime DEFAULT NULL,
  `BUY_EXP_DATE` datetime DEFAULT NULL,
  `SALE_PRICE` bigint(12) DEFAULT NULL,
  `SALE_EFF_DATE` datetime DEFAULT NULL,
  `SALE_EXP_DATE` datetime DEFAULT NULL,
  `CHECK_PRICE` bigint(12) DEFAULT NULL,
  `POINTS` bigint(12) DEFAULT NULL,
  `POINTS_FEE` bigint(12) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `BATCH_SALE_PRICE` bigint(12) DEFAULT NULL,
  `BATCH_SALE_EFF_DATE` datetime DEFAULT NULL,
  `BATCH_SALE_EXP_DATE` datetime DEFAULT NULL,
  `DISCOUNT_PRICE` bigint(12) DEFAULT NULL,
  `RES_STATUS` bigint(2) DEFAULT NULL,
  `DONE_CODE` varchar(255) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `OP_ORG` bigint(12) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT4` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RES_PRICE_ID`),
  KEY `IDX_RES_PRICE_1_21` (`RES_SPEC_ID`),
  KEY `IDX_RES_PRICE_2_21` (`FACTORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_price_his` */

DROP TABLE IF EXISTS `res_price_his`;

CREATE TABLE `res_price_his` (
  `H_ID` bigint(14) NOT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `SALE_PRICE` bigint(10) DEFAULT NULL COMMENT '以分为单位。',
  `POINTS` bigint(12) DEFAULT NULL COMMENT '可抵积分',
  `RES_COST` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_STORE_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '填0时全省统一',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`H_ID`,`RES_SPEC_ID`,`RES_STORE_ID`),
  KEY `IDX_RES_PRICE_HIS` (`RES_STORE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='本表定义资源在某个组织结点上的销售价格。（对成本价格不需管理）\n资源定义为全局的，即尊重无个性时以共性为主，有个性时共性服从个性的规则。如：若当前有A、B两个组织单元，其中A是B的上级。当A定义了一个资源型号，则B同时可用，价格也与A一致。若又另定义了B点该资源的价格，则B点该资源的价格为新定义的；A的其余下属组织单元的该资源的价格仍同A价格一致。举例：SIM卡在A的统一价格为100元，而B又定义了SIM卡价格为50元，则除B点SIM卡价格为50元外，其他A下属组织单元的SIM卡价格都为100元。若一个资源型号在【价格定义表】中未定义，则其对应的价格为0。即说明对手机号码、全球呼号码等与个性相关的资源价格在预定义时不必在资源价格定义表中定义。预定义时必须就【资源型号表】中is_modify<>0 的作出对应的价格定义信息。\n\n该表是所有时间段表的集合，时间段集合是一个开闭区间\n(valid_date,expire_date]';

/*Table structure for table `res_price_package` */

DROP TABLE IF EXISTS `res_price_package`;

CREATE TABLE `res_price_package` (
  `NUMBER_TYPE` varchar(20) NOT NULL COMMENT 'NUMBER_TYPE',
  `PRESTORE_FEE` bigint(10) DEFAULT NULL COMMENT 'PRESTORE_FEE',
  `MONTHS` bigint(10) DEFAULT NULL COMMENT 'MONTHS',
  `PERMONTH_FEE` bigint(10) DEFAULT NULL COMMENT 'PERMONTH_FEE',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态：U有效、E无效',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`NUMBER_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资费包';

/*Table structure for table `res_price_rebate` */

DROP TABLE IF EXISTS `res_price_rebate`;

CREATE TABLE `res_price_rebate` (
  `RES_PRICE_REBATE_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `RES_PRICE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_REBATE_REL_ID` bigint(12) DEFAULT NULL COMMENT 'REBATE_ID',
  `TYPE_ID` bigint(12) DEFAULT NULL COMMENT '终端类型',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `FACTORY_ID` bigint(12) DEFAULT NULL COMMENT 'FACTORY_ID',
  `COLOR_ID` bigint(12) DEFAULT NULL COMMENT '1黑色\n2红色\n3黄色\n4灰色\n5默认',
  `CONFIG_ID` bigint(12) DEFAULT NULL COMMENT '1标准\n2豪华\n3简配',
  `REBATE_NAME` varchar(50) DEFAULT NULL COMMENT 'REBATE_NAME',
  `REBATE_USE_TYPE` varchar(3) DEFAULT NULL COMMENT '1.普通折扣\n2.限时特价折扣\n3.减量\n4.手工输入',
  `REBATE_DATE_TYPE` varchar(3) DEFAULT NULL COMMENT '特价时间方式：1周末，2每天',
  `CM_RANGE` varchar(3) DEFAULT NULL COMMENT '适用客户群：1.上海，2.手机俱乐部会员',
  `CM_AMOUNT` bigint(12) DEFAULT NULL COMMENT '适用客户群：手机俱乐部',
  `REBATE_TYPE` varchar(50) DEFAULT NULL COMMENT '1.现金 2.积分',
  `REBATE_RATE` bigint(12) DEFAULT NULL COMMENT '折扣率',
  `REBATE_PRICE` bigint(12) DEFAULT NULL COMMENT 'REBATE_PRICE',
  `USE_SCORE` varchar(3) DEFAULT NULL COMMENT 'USE_SCORE',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT 'DONE_DOCE',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT 'OP_ORG',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '填0时全省统一',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '预留',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '预留',
  PRIMARY KEY (`RES_PRICE_REBATE_ID`),
  KEY `IDX_RES_PRICE_REBATE_1` (`RES_PRICE_ID`),
  KEY `IDX_RES_PRICE_REBATE_2` (`RES_REBATE_REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='gtermi_rebate_info = RES_TEMI_REBATE';

/*Table structure for table `res_prod_channel` */

DROP TABLE IF EXISTS `res_prod_channel`;

CREATE TABLE `res_prod_channel` (
  `PROD_ID` bigint(12) NOT NULL COMMENT '渠道商品ID',
  `DEPOSIT_ID` bigint(12) DEFAULT NULL COMMENT '资源配置ID',
  `PROD_NAME` varchar(50) DEFAULT NULL COMMENT '渠道商品名称',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '渠道系列ID',
  `CHECK_TYPE` bigint(2) DEFAULT NULL COMMENT 'CHECK_TYPE',
  `IS_PREFEE` bigint(2) DEFAULT NULL COMMENT '是否是预付费',
  `SALE_MODE` bigint(4) DEFAULT NULL COMMENT 'SALE_MODE',
  `RE_PRICE` bigint(10) DEFAULT NULL COMMENT '预付费',
  `IN_PRICE` bigint(10) DEFAULT NULL COMMENT '单价',
  `SAME_FLAG` bigint(2) DEFAULT NULL COMMENT 'SAME_FLAG',
  `PRICE` bigint(10) DEFAULT NULL COMMENT '销售价格',
  `RATE_FLAG` bigint(1) DEFAULT NULL COMMENT '是否有折扣',
  `RATE_VALUE` bigint(10) DEFAULT NULL COMMENT 'RATE_VALUE',
  `DISCOUNT_VALUE` bigint(3) DEFAULT NULL COMMENT 'DISCOUNT_VALUE',
  `RES_TYPE` bigint(12) DEFAULT NULL COMMENT '资源类型',
  `RES_CODE` bigint(12) DEFAULT NULL COMMENT '资源规格',
  `IS_BIND` bigint(2) DEFAULT NULL COMMENT '是否绑定',
  `RES_STS` varchar(8) DEFAULT NULL COMMENT 'RES_STS',
  `STOCK_STS` varchar(8) DEFAULT NULL COMMENT '暂时未用',
  `IS_DETAIL` bigint(1) DEFAULT NULL COMMENT '暂时未用',
  `VALID_DATE` datetime DEFAULT NULL COMMENT '有效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `PROD_STATUS` bigint(2) DEFAULT NULL COMMENT '商品状态',
  `REC_STATUS` bigint(2) DEFAULT NULL COMMENT '资源状态',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员ID',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '流水号',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `IS_SCHEME` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `IS_PREOPEN` bigint(1) DEFAULT NULL COMMENT '是否预开通',
  `IS_ALTERPRICE` bigint(1) DEFAULT NULL COMMENT '暂时未用',
  `BIND_RES_TYPE` bigint(2) DEFAULT NULL COMMENT '绑定资源型号',
  `BIND_RES_CODE` bigint(6) DEFAULT NULL COMMENT '绑定资源规格',
  `MIN_STORE` bigint(6) DEFAULT NULL COMMENT 'MIN_STORE',
  `MAX_STORE` bigint(6) DEFAULT NULL COMMENT 'MAX_STORE',
  `EXT_FIELD1` varchar(128) DEFAULT NULL COMMENT '备注字段1',
  `EXT_FIELD2` varchar(128) DEFAULT NULL COMMENT '备注字段2',
  `EXT_FIELD3` varchar(128) DEFAULT NULL COMMENT '备注字段3',
  `EXT_FIELD4` varchar(128) DEFAULT NULL COMMENT '备注字段4',
  `EXT_FIELD5` varchar(128) DEFAULT NULL COMMENT '备注字段5',
  `EXT_FIELD6` varchar(128) DEFAULT NULL COMMENT '备注字段6',
  `EXT_FIELD7` varchar(128) DEFAULT NULL COMMENT '备注字段7',
  `EXT_FIELD8` varchar(128) DEFAULT NULL COMMENT '备注字段8',
  `EXT_FIELD9` varchar(128) DEFAULT NULL COMMENT '备注字段9',
  `EXT_FIELD10` varchar(128) DEFAULT NULL COMMENT '备注字段10',
  `IS_PROMO` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `IS_BLANK` bigint(2) DEFAULT NULL COMMENT '是否是空卡',
  `IS_PREFEE_BOOK` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `IS_SPECI_DISCOUNT` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`PROD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='渠道商品表';

/*Table structure for table `res_promactivity_cfg` */

DROP TABLE IF EXISTS `res_promactivity_cfg`;

CREATE TABLE `res_promactivity_cfg` (
  `ACTIVITY_ID` bigint(12) NOT NULL COMMENT '主键',
  `ACTIVITY_NAME` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '活动组织',
  `SEC_ORG_NAME` bigint(12) DEFAULT NULL COMMENT '活动组织名称',
  `BUSI_TYPE` varchar(3) DEFAULT NULL COMMENT '1：转品牌 2：功能变更 3：新入网 0：跟业务无关',
  `BUSI_RULE` varchar(512) DEFAULT NULL COMMENT '对应Busi_type 1:  可转入的品牌id Exp: (100, 102, 103) 2:  产品id  0: [格式可定义为T(***);P(***);M(***);C T:代表当前必须参加某些终活动才能参加该促销活动；P:代表当前必须参加某些新业务预缴费活动才能参加该促销活动；M:代表当前必须参加某些动感地带活动才能参加该促销活；C:代表当前促销活动的促销品一旦发放是否可以回退;具有C则代表可以回退;] 3 则填null。ONE=X 表达式必须是大写而且其中不能有空格.4: R(可以重复导入)',
  `ACTIVITY_TYPE` varchar(3) DEFAULT NULL COMMENT '1: 固定失效时间 2: 存续期(当月也算) 3: 存续期(下月开始算)',
  `PERIOD` char(2) DEFAULT NULL COMMENT '单位：月',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ACTIVITY_ID`),
  KEY `IDX_RES_PRO_CFG_1` (`ACTIVITY_NAME`),
  KEY `IDX_RES_PRO_CFG_2` (`SEC_ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源促销活动配置信息';

/*Table structure for table `res_promactivity_goods` */

DROP TABLE IF EXISTS `res_promactivity_goods`;

CREATE TABLE `res_promactivity_goods` (
  `DTL_ID` bigint(12) NOT NULL COMMENT '主键',
  `ACTIVITY_ID` varchar(200) DEFAULT NULL COMMENT '活动ID',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '规格编号',
  `MAX_NUM` bigint(12) DEFAULT NULL COMMENT '最大可发放卡数量',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '操作流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`DTL_ID`),
  KEY `IDX_RES_PROMACTIVITY_GOODS_1` (`ACTIVITY_ID`),
  KEY `IDX_RES_PROMACTIVITY_GOODS_2` (`RES_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='促销活动和促销品之间的对应';

/*Table structure for table `res_rebate_rel` */

DROP TABLE IF EXISTS `res_rebate_rel`;

CREATE TABLE `res_rebate_rel` (
  `RES_REBATE_REL_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `CM_TYPE` varchar(3) DEFAULT NULL COMMENT '1.银卡，2.金卡，3.钻石卡，4.白玉兰卡，5.手机俱乐部会员，6.普通',
  `CM_DESC` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `REBATE_TYPE` varchar(3) DEFAULT NULL COMMENT '1.现金 ，2.积分',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '0无效，1有效',
  `EFF_DATE` datetime DEFAULT NULL COMMENT 'EFF_DATE',
  `EXP_DATE` datetime DEFAULT NULL COMMENT 'EXP_DATE',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT 'DONE_DOCE',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT 'OP_ORG',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '填0时全省统一',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '预留',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '预留',
  PRIMARY KEY (`RES_REBATE_REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `res_report_export` */

DROP TABLE IF EXISTS `res_report_export`;

CREATE TABLE `res_report_export` (
  `EXPORT_ID` bigint(16) NOT NULL,
  `FILE_NAME` varchar(100) DEFAULT NULL,
  `FTP_FILE_NAME` varchar(100) DEFAULT NULL,
  `TITLE` varchar(400) DEFAULT NULL,
  `SET_NAMAE` varchar(4000) DEFAULT NULL,
  `SV_NAME` varchar(4000) DEFAULT NULL,
  `CROSS_CENTER` int(11) DEFAULT NULL,
  `QUERY_METHOD` varchar(400) DEFAULT NULL,
  `COUNT_METHOD` varchar(400) DEFAULT NULL,
  `MAX_SHEET_SIZE` int(11) DEFAULT NULL,
  `MAX_QUERY_SIZE` int(11) DEFAULT NULL COMMENT 'QUERY需要小于SHEET',
  `VALID_PERIOD` int(11) DEFAULT NULL,
  PRIMARY KEY (`EXPORT_ID`),
  KEY `INDEX_RES_REPORT_EXPORT_1` (`FILE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导出配置表（按照租户分表）';

/*Table structure for table `res_report_export_21` */

DROP TABLE IF EXISTS `res_report_export_21`;

CREATE TABLE `res_report_export_21` (
  `EXPORT_ID` bigint(16) NOT NULL,
  `FILE_NAME` varchar(100) DEFAULT NULL,
  `FTP_FILE_NAME` varchar(100) DEFAULT NULL,
  `TITLE` varchar(400) DEFAULT NULL,
  `SET_NAMAE` varchar(4000) DEFAULT NULL,
  `SV_NAME` varchar(4000) DEFAULT NULL,
  `CROSS_CENTER` int(11) DEFAULT NULL,
  `QUERY_METHOD` varchar(400) DEFAULT NULL,
  `COUNT_METHOD` varchar(400) DEFAULT NULL,
  `MAX_SHEET_SIZE` int(11) DEFAULT NULL,
  `MAX_QUERY_SIZE` int(11) DEFAULT NULL COMMENT 'QUERY需要小于SHEET',
  `VALID_PERIOD` int(11) DEFAULT NULL,
  PRIMARY KEY (`EXPORT_ID`),
  KEY `INDEX_RES_REPORT_EXPORT_1` (`FILE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导出配置表（按照租户分表）';

/*Table structure for table `res_report_export_column` */

DROP TABLE IF EXISTS `res_report_export_column`;

CREATE TABLE `res_report_export_column` (
  `COLUMN_ID` bigint(16) NOT NULL,
  `EXPORT_ID` bigint(16) DEFAULT NULL,
  `COLUMN_NAME` varchar(100) DEFAULT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `SEQ` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  PRIMARY KEY (`COLUMN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导出配置表COLUMN（按照租户分表）';

/*Table structure for table `res_report_export_column_21` */

DROP TABLE IF EXISTS `res_report_export_column_21`;

CREATE TABLE `res_report_export_column_21` (
  `COLUMN_ID` bigint(16) NOT NULL,
  `EXPORT_ID` bigint(16) DEFAULT NULL,
  `COLUMN_NAME` varchar(100) DEFAULT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `SEQ` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  PRIMARY KEY (`COLUMN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导出配置表COLUMN（按照租户分表）';

/*Table structure for table `res_report_export_list` */

DROP TABLE IF EXISTS `res_report_export_list`;

CREATE TABLE `res_report_export_list` (
  `OPER_ID` bigint(16) NOT NULL,
  `EXPORT_ID` bigint(16) DEFAULT NULL,
  `FILE_NAME` varchar(200) DEFAULT NULL,
  `COND` varchar(4000) DEFAULT NULL,
  `STATE` varchar(2) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`OPER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导出配置表LIST（按照租户分表）';

/*Table structure for table `res_report_export_list_21` */

DROP TABLE IF EXISTS `res_report_export_list_21`;

CREATE TABLE `res_report_export_list_21` (
  `OPER_ID` bigint(16) NOT NULL,
  `EXPORT_ID` bigint(16) DEFAULT NULL,
  `FILE_NAME` varchar(200) DEFAULT NULL,
  `COND` varchar(4000) DEFAULT NULL,
  `STATE` varchar(2) DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`OPER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导出配置表LIST（按照租户分表）';

/*Table structure for table `res_report_export_param` */

DROP TABLE IF EXISTS `res_report_export_param`;

CREATE TABLE `res_report_export_param` (
  `PARAM_ID` bigint(20) NOT NULL,
  `EXPORT_ID` bigint(16) DEFAULT NULL,
  `METHOD_TYPE` varchar(1) DEFAULT NULL,
  `PARAM_NAME` varchar(40) DEFAULT NULL,
  `PARAM_TYPE` varchar(40) DEFAULT NULL,
  `DEFAULT_VALUE` varchar(10) DEFAULT NULL,
  `SEQ` int(11) DEFAULT NULL,
  PRIMARY KEY (`PARAM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导出配置表（按照租户分表）';

/*Table structure for table `res_report_export_param_21` */

DROP TABLE IF EXISTS `res_report_export_param_21`;

CREATE TABLE `res_report_export_param_21` (
  `PARAM_ID` bigint(20) NOT NULL,
  `EXPORT_ID` bigint(16) DEFAULT NULL,
  `METHOD_TYPE` varchar(1) DEFAULT NULL,
  `PARAM_NAME` varchar(40) DEFAULT NULL,
  `PARAM_TYPE` varchar(40) DEFAULT NULL,
  `DEFAULT_VALUE` varchar(10) DEFAULT NULL,
  `SEQ` int(11) DEFAULT NULL,
  PRIMARY KEY (`PARAM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导出配置表（按照租户分表）';

/*Table structure for table `res_request_order` */

DROP TABLE IF EXISTS `res_request_order`;

CREATE TABLE `res_request_order` (
  `INVOICE_RES_ID` bigint(12) NOT NULL COMMENT '申请通知单唯一编号',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '申请通知单源头组织编号',
  `TARGET_ORG_ID` bigint(12) DEFAULT NULL COMMENT '申请通知单目的组织编号',
  `SMS_NOTICE` varchar(10) DEFAULT NULL COMMENT '暂时未用',
  `OPER_ID` bigint(12) DEFAULT NULL COMMENT '建单操作员工号',
  `OPER_OWN_ORG_ID` bigint(12) DEFAULT NULL COMMENT '建单操作员归属组织',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '建单时间',
  `SEND_NAME` varchar(60) DEFAULT NULL COMMENT '发货联系人                                          (该字段退货用)',
  `SEND_TEL` varchar(20) DEFAULT NULL COMMENT '发货联系人联系电话                      (该字段退货用)',
  `RCV_NAME` varchar(60) DEFAULT NULL COMMENT '接收联系人',
  `RCV_TEL` varchar(32) DEFAULT NULL COMMENT '接收联系人联系电话',
  `RCV_ADDR` varchar(256) DEFAULT NULL COMMENT '接收地点',
  `TRANS_ID` varchar(60) DEFAULT NULL COMMENT '物流编号                                               (该字段退货用)',
  `TRANS_NAME` varchar(60) DEFAULT NULL COMMENT '物流供应商联系人                           (该字段退货用)',
  `TRANS_TEL` varchar(20) DEFAULT NULL COMMENT '物流供应商联系电话                      (该字段退货用)',
  `TRANS_ORG_NAME` varchar(256) DEFAULT NULL COMMENT '物流供应商单位名称                      (该字段退货用)',
  `SEND_DATE` datetime DEFAULT NULL COMMENT '发货时间                                               (该字段退货用)',
  `RCV_DATE` datetime DEFAULT NULL COMMENT '收货时间                                               (该字段如果是需求申请单，则为要求到货时间)',
  `INVOICE_STATE` varchar(3) DEFAULT NULL COMMENT '申请通知单状态：0:新建 1:提交待审批 2:通过审批 3:完成配送 4:部分配送 5:审批拒绝  6:废弃     退货通知单确认状态：0:新建 1:提交  2:审批通过 3:发货 4:全部\n\n接收 5:部分接收 6:审批拒绝 7:废弃 8:退供应商',
  `LOCAL_MAT` char(1) DEFAULT NULL COMMENT '退货通知单是否退货到本地库存\n0：是本地库存\n1：非本地库存                                               (该字段退货用)',
  `CONFIRM_OPER_ID` bigint(12) DEFAULT NULL COMMENT '退货通知单确认操作员工号',
  `CONFIRM_ORG_ID` bigint(12) DEFAULT NULL COMMENT '退货通知单确认操作员归属组织',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '通知单归属地市',
  `DISTR_METHOD` varchar(32) DEFAULT NULL COMMENT '退货通知单(物流)',
  `INVOICE_TYPE` char(1) DEFAULT NULL COMMENT '通知单类型   0:配送需求申请单  1:退货需求申请单',
  `REQ_LEVEL` char(1) DEFAULT NULL COMMENT '配送需求单请求等级  0代表一般 1代表紧急 2代表非常紧急',
  `TOTAL_AVBL` bigint(10) DEFAULT NULL COMMENT '原需求申请单中(物流系统对接,暂保留)',
  `SCM_PROJ_ID` bigint(15) DEFAULT NULL COMMENT '原需求申请单中,营销活动项目(物流系统对接,暂保留)',
  `FST_PR_TYPE_ID` bigint(15) DEFAULT NULL COMMENT '原需求申请单中(物流系统对接,暂保留)',
  `FST_PR_TYPE` varchar(100) DEFAULT NULL COMMENT '原需求申请单中(物流系统对接,暂保留)',
  `NEXT_ORG_ID` bigint(12) DEFAULT NULL COMMENT '配送需求转提交给操作组织,继续提交给上级组织的编号',
  `ASSIGN_TYPE` bigint(2) DEFAULT NULL COMMENT '1:定单流程\n2:申请单流程\n3:主动流程\ncode_type=83015',
  `URGENT_LEVEL` bigint(8) DEFAULT NULL COMMENT '暂时未用',
  `IO_TYPE` char(1) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`INVOICE_RES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内部管理对于资源的需求\n（按租户分表）';

/*Table structure for table `res_request_order_21` */

DROP TABLE IF EXISTS `res_request_order_21`;

CREATE TABLE `res_request_order_21` (
  `INVOICE_RES_ID` bigint(12) NOT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `TARGET_ORG_ID` bigint(12) DEFAULT NULL,
  `SMS_NOTICE` varchar(10) DEFAULT NULL,
  `OPER_ID` bigint(12) DEFAULT NULL,
  `OPER_OWN_ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `SEND_NAME` varchar(60) DEFAULT NULL,
  `SEND_TEL` varchar(20) DEFAULT NULL,
  `RCV_NAME` varchar(60) DEFAULT NULL,
  `RCV_TEL` varchar(32) DEFAULT NULL,
  `RCV_ADDR` varchar(256) DEFAULT NULL,
  `TRANS_ID` varchar(60) DEFAULT NULL,
  `TRANS_NAME` varchar(60) DEFAULT NULL,
  `TRANS_TEL` varchar(20) DEFAULT NULL,
  `TRANS_ORG_NAME` varchar(256) DEFAULT NULL,
  `SEND_DATE` datetime DEFAULT NULL,
  `RCV_DATE` datetime DEFAULT NULL,
  `INVOICE_STATE` varchar(3) DEFAULT NULL,
  `LOCAL_MAT` char(1) DEFAULT NULL,
  `CONFIRM_OPER_ID` bigint(12) DEFAULT NULL,
  `CONFIRM_ORG_ID` bigint(12) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `DISTR_METHOD` varchar(32) DEFAULT NULL,
  `INVOICE_TYPE` char(1) DEFAULT NULL,
  `REQ_LEVEL` char(1) DEFAULT NULL,
  `TOTAL_AVBL` bigint(10) DEFAULT NULL,
  `SCM_PROJ_ID` bigint(15) DEFAULT NULL,
  `FST_PR_TYPE_ID` bigint(15) DEFAULT NULL,
  `FST_PR_TYPE` varchar(100) DEFAULT NULL,
  `NEXT_ORG_ID` bigint(12) DEFAULT NULL,
  `ASSIGN_TYPE` bigint(2) DEFAULT NULL,
  `URGENT_LEVEL` bigint(8) DEFAULT NULL,
  `IO_TYPE` char(1) DEFAULT NULL,
  PRIMARY KEY (`INVOICE_RES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_request_order_dtl` */

DROP TABLE IF EXISTS `res_request_order_dtl`;

CREATE TABLE `res_request_order_dtl` (
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `INVOICE_RES_ID` bigint(12) NOT NULL COMMENT '申请通知单唯一编号',
  `INVOICE_TYPE` char(1) DEFAULT NULL COMMENT '通知单类型   0:配送需求申请单  1:退货需求申请单',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '通知单归属地市',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `VERIFY_ORG_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `REAL_AMOUNT` bigint(12) DEFAULT NULL COMMENT '退货通知单中实际接收数量',
  `SEND_AMOUNT` bigint(12) DEFAULT NULL COMMENT '退货已发货数量、需求申请已配送数量',
  `ORL_AMOUNT` bigint(12) DEFAULT NULL COMMENT '原始数量',
  `APPROVE_OP` varchar(50) DEFAULT NULL COMMENT '审批人',
  `APPROVE_AMOUNT` bigint(12) DEFAULT NULL COMMENT '审批数量',
  `CONFIRM_OP_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '本次发生数量',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '1：初始分配\n2：分配确认\ncode_type=83017',
  `RETURN_STORE_TYPE` varchar(3) DEFAULT NULL COMMENT '1 退本公司 2 退供应商',
  `MAT_CODE` varchar(40) DEFAULT NULL COMMENT '暂时未用',
  `FEATURES_STATE` varchar(3) DEFAULT NULL COMMENT '特性状态',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`DONE_CODE`),
  KEY `IDX_RES_REQ_ORDER_DTL` (`INVOICE_RES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对于资源需求工单操作记录（按租户分表）';

/*Table structure for table `res_request_order_dtl_21` */

DROP TABLE IF EXISTS `res_request_order_dtl_21`;

CREATE TABLE `res_request_order_dtl_21` (
  `DONE_CODE` bigint(12) NOT NULL,
  `INVOICE_RES_ID` bigint(12) NOT NULL,
  `INVOICE_TYPE` char(1) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `VERIFY_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `REAL_AMOUNT` bigint(12) DEFAULT NULL,
  `SEND_AMOUNT` bigint(12) DEFAULT NULL,
  `ORL_AMOUNT` bigint(12) DEFAULT NULL,
  `APPROVE_OP` varchar(50) DEFAULT NULL,
  `APPROVE_AMOUNT` bigint(12) DEFAULT NULL,
  `CONFIRM_OP_ID` bigint(12) DEFAULT NULL,
  `AMOUNT` bigint(12) DEFAULT NULL,
  `STATUS` varchar(3) DEFAULT NULL,
  `RETURN_STORE_TYPE` varchar(3) DEFAULT NULL,
  `MAT_CODE` varchar(40) DEFAULT NULL,
  `FEATURES_STATE` varchar(3) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DONE_CODE`),
  KEY `IDX_RES_REQ_ORDER_DTL_21` (`INVOICE_RES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_request_record` */

DROP TABLE IF EXISTS `res_request_record`;

CREATE TABLE `res_request_record` (
  `RES_REQUIRE_ID` varchar(15) NOT NULL COMMENT '申请编号',
  `RES_BATCH_ID` bigint(9) DEFAULT NULL COMMENT '资源批次',
  `BATCH_ID` bigint(14) NOT NULL COMMENT '制作批号',
  `DONE_CODE` bigint(12) NOT NULL COMMENT '由seq_res_done_code自增序号产生',
  `RES_TYPE_ID` bigint(12) NOT NULL COMMENT '资源类别;10号码、11SIM卡',
  `ASSIGN_TYPE` bigint(2) NOT NULL COMMENT '调配类型:\n1:定单流程\n2:申请单流程\n3:主动流程',
  `BUSI_ID` varchar(8) NOT NULL COMMENT '业务代码',
  `DONE_DATE` datetime NOT NULL COMMENT '操作时间',
  `ORG_ID` bigint(12) NOT NULL COMMENT '操作组织单元',
  `OP_ID` bigint(12) NOT NULL COMMENT '操作员工号',
  `SRC_ORG_ID` bigint(12) NOT NULL COMMENT '如入库生成时，源组织填-1',
  `DES_ORG_ID` bigint(12) DEFAULT NULL COMMENT '如果入库后同时发放，填入发放组织编号\n如果入库后不发放，填入就是入库组织编号',
  `AMOUNT` bigint(12) NOT NULL COMMENT '指个数，如果是卡，是指卡的张数不是面值总和',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态:主要对修改资源的记录修改后的一个状态\n0初始、1生成\n\nleaf',
  `APPROVE_OP` varchar(50) DEFAULT NULL COMMENT '审批人',
  `APPROVE_AMOUNT` bigint(12) DEFAULT NULL COMMENT '审批数量',
  `CONFIRM_OP_ID` bigint(12) DEFAULT NULL COMMENT '确认人',
  `STATE` varchar(3) NOT NULL COMMENT '工单状态:\n1：初始分配\n2：分配确认',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区代码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`RES_REQUIRE_ID`),
  KEY `IDX_RES_REQUEST_REC` (`RES_BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对于资源需求工单操作记录（按租户分表）';

/*Table structure for table `res_request_record_21` */

DROP TABLE IF EXISTS `res_request_record_21`;

CREATE TABLE `res_request_record_21` (
  `RES_REQUIRE_ID` varchar(15) NOT NULL,
  `RES_BATCH_ID` bigint(9) DEFAULT NULL,
  `BATCH_ID` bigint(14) NOT NULL,
  `DONE_CODE` bigint(12) NOT NULL,
  `RES_TYPE_ID` bigint(12) NOT NULL,
  `ASSIGN_TYPE` bigint(2) NOT NULL,
  `BUSI_ID` varchar(8) NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `ORG_ID` bigint(12) NOT NULL,
  `OP_ID` bigint(12) NOT NULL,
  `SRC_ORG_ID` bigint(12) NOT NULL,
  `DES_ORG_ID` bigint(12) DEFAULT NULL,
  `AMOUNT` bigint(12) NOT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `APPROVE_OP` varchar(50) DEFAULT NULL,
  `APPROVE_AMOUNT` bigint(12) DEFAULT NULL,
  `CONFIRM_OP_ID` bigint(12) DEFAULT NULL,
  `STATE` varchar(3) NOT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RES_REQUIRE_ID`),
  KEY `IDX_RES_REQUEST_REC_21` (`RES_BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_requirement` */

DROP TABLE IF EXISTS `res_requirement`;

CREATE TABLE `res_requirement` (
  `RES_REQUIRE_ID` varchar(15) NOT NULL COMMENT '申请编号',
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `RES_BATCH_ID` bigint(9) NOT NULL COMMENT '资源批次',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `PARENT_ORD` varchar(50) DEFAULT NULL COMMENT '上级单号',
  `STATE` varchar(3) NOT NULL COMMENT '状态:U有效、E无效',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '对应员工表',
  PRIMARY KEY (`RES_REQUIRE_ID`),
  KEY `IDX_RES_REQUIREMENT` (`RES_BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内部管理对于资源的需求（按租户分表）';

/*Table structure for table `res_requirement_21` */

DROP TABLE IF EXISTS `res_requirement_21`;

CREATE TABLE `res_requirement_21` (
  `RES_REQUIRE_ID` varchar(15) NOT NULL,
  `DONE_CODE` bigint(12) NOT NULL,
  `RES_BATCH_ID` bigint(9) NOT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `PARENT_ORD` varchar(50) DEFAULT NULL,
  `STATE` varchar(3) NOT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATER` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`RES_REQUIRE_ID`),
  KEY `IDX_RES_REQUIREMENT_21` (`RES_BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_resume_ins` */

DROP TABLE IF EXISTS `res_resume_ins`;

CREATE TABLE `res_resume_ins` (
  `SEQ_ID` bigint(12) NOT NULL COMMENT '主键',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别:10号码,11SIM卡',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_ID` varchar(30) DEFAULT NULL COMMENT '号码资源',
  `ICC_ID` varchar(25) DEFAULT NULL COMMENT 'SIM卡号',
  `IMSI` varchar(20) DEFAULT NULL COMMENT 'IMSI号',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '号码所属仓库',
  `RES_USED_ID` bigint(12) DEFAULT NULL COMMENT '资源使用',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `USE_TYPE` bigint(12) DEFAULT NULL COMMENT '1        营业用\n2        代理用\n3        租机租卡用\n4        数据用\n5        传真用\n6        预付费可充值用\n7        测试用\n8        公务用\n9        禁用\n10       局内保留\n11       经营保留\n12       预付费一次性卡用\n13       冷号重用\n14       模转数专用\n15       IP直通车虚拟号码\n16       移动商务电话\n17       一卡两号\n18       大客户免费换号\n19       网上营业厅预约换号\n20       号码随意换(副号码)\n21       空中选号业务用\n22       集团用（免费）\n23       集团用（收费）\n24       集团业务用\n25       集团业务用(特殊)\n26       网上营业厅员工预约\n27       社会化测试转商用\n28       畅享计划赠号用\n29       188活动专用\n30       中高端关怀(润迅)\n31       中高端关怀(亚信)\n32       员工套餐专用\n33       内部使用\n34       代理专用\n35       动感地带新人网上选号\n36       中高端关怀（携和）\n37       固话营业用\n38       电商中心用\n39       合作外包用\n40       国际一卡多号来访副号码\n41       服务专用',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:1-初始,2.激活,3.预占,4.预约,5.占用,6.冷冻,7.作废, 8预留',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态:\n0-未匹配未开通\n1-已匹配未开通\n2-已匹配已开通',
  `GENERATION_TYPE` varchar(3) DEFAULT NULL COMMENT '号码类别:比如3G号码2G号码',
  `RES_NUMBER_HLR` varchar(17) DEFAULT NULL COMMENT '对应与RES_NUMBER_HLR 的RES_NUMBER_HLR',
  `SUB_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '增值套餐',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `IS_CONFIRM` bigint(1) DEFAULT NULL COMMENT '确认标记.暂时未用',
  `PRE_DATE` datetime DEFAULT NULL COMMENT '预占时间',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用日期',
  `USE_DONE_CODE` bigint(25) DEFAULT NULL COMMENT '使用流水号',
  `USE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '备份组织',
  `BUSI_CODE` bigint(12) DEFAULT NULL COMMENT '业务编码',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `PASSWORD` varchar(20) DEFAULT NULL COMMENT '密码',
  `AGENT_PHONE` varchar(30) DEFAULT NULL COMMENT '代理商号码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `STOCK_IN_DATE` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_RESUME_INS_1` (`RES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源待回收数据 \n管理状态(manage_status):\nLN:1-初始,2.激活,3.预占,4.预约,5.占用,6.冷冻,7.作废, 8预留\n资源状态(res_status):\n0-未匹配未开通\n2-已匹配未开通\n使用类型(USE_TYPE)枚举值为：\n营业用、代销用\n（按租户分表）';

/*Table structure for table `res_resume_ins_21` */

DROP TABLE IF EXISTS `res_resume_ins_21`;

CREATE TABLE `res_resume_ins_21` (
  `SEQ_ID` bigint(12) NOT NULL,
  `RES_TYPE_ID` bigint(12) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `RES_ID` varchar(30) DEFAULT NULL,
  `ICC_ID` varchar(25) DEFAULT NULL,
  `IMSI` varchar(20) DEFAULT NULL,
  `BATCH_ID` varchar(40) DEFAULT NULL,
  `RES_INST_ID` varchar(25) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `RES_USED_ID` bigint(12) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(25) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `USE_TYPE` bigint(12) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `GENERATION_TYPE` varchar(3) DEFAULT NULL,
  `RES_NUMBER_HLR` varchar(17) DEFAULT NULL,
  `SUB_OFFER_ID` bigint(12) DEFAULT NULL,
  `RECEIVER` bigint(12) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `IS_CONFIRM` bigint(1) DEFAULT NULL,
  `PRE_DATE` datetime DEFAULT NULL,
  `USE_DATE` datetime DEFAULT NULL,
  `USE_DONE_CODE` bigint(25) DEFAULT NULL,
  `USE_ORG_ID` bigint(12) DEFAULT NULL,
  `BUSI_CODE` bigint(12) DEFAULT NULL,
  `RES_EVENT_ID` bigint(12) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `AGENT_PHONE` varchar(30) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `STOCK_IN_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_RESUME_INS_1_21` (`RES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_rule` */

DROP TABLE IF EXISTS `res_rule`;

CREATE TABLE `res_rule` (
  `RES_RULE_ID` bigint(12) NOT NULL COMMENT '编码',
  `FACTORY_ID` bigint(12) DEFAULT NULL COMMENT 'FACTORY_ID',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `COLOR_ID` bigint(12) DEFAULT NULL COMMENT '1黑色\n2红色\n3黄色\n4灰色\n5默认',
  `CONFIG_ID` bigint(12) DEFAULT NULL COMMENT '1标准\n2豪华\n3简配',
  `RULE_TYPE` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态：U有效、E无效',
  `EFF_DATE` datetime DEFAULT NULL COMMENT 'EFF_DATE',
  `EXP_DATE` datetime DEFAULT NULL COMMENT 'EXP_DATE',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT 'DONE_DOCE',
  `DONE_DATE` datetime DEFAULT NULL COMMENT 'DONE_DATE',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT 'OP_ORG',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '填0时全省统一',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '预留',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '预留',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '预留',
  PRIMARY KEY (`RES_RULE_ID`),
  KEY `IDX_RES_RULE_1` (`RES_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `res_rule_dtl` */

DROP TABLE IF EXISTS `res_rule_dtl`;

CREATE TABLE `res_rule_dtl` (
  `RES_RULE_DTL_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `RES_RULE_ID` bigint(12) DEFAULT NULL COMMENT '编码',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RULE_TYPE` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `RULE_ATTR` bigint(12) DEFAULT NULL COMMENT '此处可引用对象（资源规格或其他参考对象）的属性。',
  `RULE_ATTR_VALUE` varchar(250) DEFAULT NULL COMMENT '暂时未用',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态：U有效、E无效',
  `EFF_DATE` datetime DEFAULT NULL COMMENT 'EFF_DATE',
  `EXP_DATE` datetime DEFAULT NULL COMMENT 'EXP_DATE',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT 'DONE_DOCE',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT 'OP_ORG',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '填0时全省统一',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '预留',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '预留',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '预留',
  PRIMARY KEY (`RES_RULE_DTL_ID`),
  KEY `IDX_RES_RULE_DTL_1` (`RES_SPEC_ID`),
  KEY `IDX_RES_RULE_DTL_2` (`RULE_ATTR`),
  KEY `IDX_RES_RULE_DTL_3` (`RULE_ATTR_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `res_sale_reward` */

DROP TABLE IF EXISTS `res_sale_reward`;

CREATE TABLE `res_sale_reward` (
  `SALE_REWARD_ID` bigint(13) NOT NULL COMMENT '主键',
  `REWARD_CODE` varchar(50) DEFAULT NULL COMMENT '酬金标准全网统一编码',
  `MATERIAL_CODE` varchar(15) DEFAULT NULL COMMENT '终端机型物料编码',
  `COMPANY_CODE` varchar(4) DEFAULT NULL COMMENT '渠道机构编码',
  `CONTRACT_TYPE` varchar(30) DEFAULT NULL COMMENT '合约类型：\n00—裸机销售\n01—全网统一预存购机\n02—全网统一购机送费',
  `REWARD_FEE` bigint(14) DEFAULT NULL COMMENT 'ContractType=00时，表示酬金金额\nContractType=01或02时，表示客户有效月保底消费金额封顶值（每月酬金计算标准上限）',
  `REWARD_DURATION` bigint(10) DEFAULT NULL COMMENT '酬金发放时长\nContractType=01或02时，填写\n单位：月',
  `TRANS_TYPE` bigint(10) DEFAULT NULL COMMENT '条目变更类型：\n1－新增\n2－修改',
  `ACTIVATE_TIME` datetime DEFAULT NULL COMMENT 'ACTIVATE_TIME',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效起始日期，格式：YYYYMMDDHH24MMSS',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '生效截止日期，格式：YYYYMMDDHH24MMSS\n为空，表示未填入截止日期，表明价格折让规则从起始日期开始一直生效',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT_1` varchar(255) DEFAULT NULL COMMENT '备用字段',
  `EXT_2` varchar(255) DEFAULT NULL COMMENT '备用字段',
  `EXT_3` varchar(255) DEFAULT NULL COMMENT '备用字段',
  `EXT_4` varchar(255) DEFAULT NULL COMMENT '备用字段',
  `EXT_5` varchar(255) DEFAULT NULL COMMENT '备用字段'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `res_sale_reward_attr` */

DROP TABLE IF EXISTS `res_sale_reward_attr`;

CREATE TABLE `res_sale_reward_attr` (
  `REWARD_ATTR_ID` bigint(13) NOT NULL COMMENT '暂时未用',
  `REWARD_CODE` varchar(50) DEFAULT NULL COMMENT '酬金标准全网统一编码',
  `PROMISE_DURATION` bigint(13) DEFAULT NULL COMMENT '合约期（客户承诺捆绑时长）\n单位：月',
  `FIR_STRATIO` bigint(13) DEFAULT NULL COMMENT '首月支付比例\n单位*100%',
  `SUCCEDING_DURATION` bigint(13) DEFAULT NULL COMMENT '支付月数（不含首月）\n单位：月',
  `SUCCEDING_RATIO` bigint(13) DEFAULT NULL COMMENT '每月支付比例（不含首月）\n单位：*100%',
  `TRANS_TYPE` bigint(10) DEFAULT NULL COMMENT '条目变更类型：\n1－新增\n2－修改',
  `ACTIVATE_TIME` datetime DEFAULT NULL COMMENT 'ACTIVATE_TIME',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态：U有效、E无效',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员ID',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效起始日期，格式：YYYYMMDDHH24MMSS',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '生效截止日期，格式：YYYYMMDDHH24MMSS\n为空，表示未填入截止日期，表明价格折让规则从起始日期开始一直生效',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT_1` varchar(255) DEFAULT NULL COMMENT '备用字段',
  `EXT_2` varchar(255) DEFAULT NULL COMMENT '备用字段',
  `EXT_3` varchar(255) DEFAULT NULL COMMENT '备用字段',
  `EXT_4` varchar(255) DEFAULT NULL COMMENT '备用字段',
  `EXT_5` varchar(255) DEFAULT NULL COMMENT '备用字段'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `res_sel_cust_log` */

DROP TABLE IF EXISTS `res_sel_cust_log`;

CREATE TABLE `res_sel_cust_log` (
  `DATA_ID` bigint(14) NOT NULL COMMENT '主键，sequence',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '流水号，代码获取',
  `RES_ID` varchar(20) DEFAULT NULL COMMENT '资源id',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '规格',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库编码',
  `CUST_CARD_TYPE` varchar(6) DEFAULT NULL COMMENT '证件类型或者客户编号类型。\n            目前CRM订单侧就都传的是1000，表示客户编号类型。\n            OSE侧可能会传30（OSE basketId购物车ID类型）',
  `CUST_CARD_NO` varchar(50) DEFAULT NULL COMMENT '证件号码或者CRM侧客户编号。目前都存储的是CRM侧cust_id值',
  `RELA_TYPE` bigint(2) DEFAULT NULL COMMENT '关系类型\n            1：使用关系 USER\n            2：拥有关系 OWNER。\n            ',
  `STATE` bigint(2) DEFAULT NULL COMMENT ' 0已取消，1初始，2受理待提交，4预占已开通',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态',
  `BUSI_TYPE` varchar(12) DEFAULT NULL COMMENT '业务类型',
  `PRE_OCCUPY_DATE` datetime DEFAULT NULL COMMENT '预占时间',
  `OCCUPY_DATE` datetime DEFAULT NULL COMMENT '实占时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县区',
  `NOTES` varchar(60) DEFAULT NULL COMMENT '备注',
  `EXT_ID` bigint(16) DEFAULT NULL COMMENT '备用字段2',
  `PBX_NUMBER` varchar(20) DEFAULT NULL,
  `HOLD_COL1` varchar(32) DEFAULT NULL,
  `HOLD_COL2` varchar(32) DEFAULT NULL,
  `HOLD_COL3` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`DATA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源销售记录表（按租户分表）';

/*Table structure for table `res_sel_num_cust_log` */

DROP TABLE IF EXISTS `res_sel_num_cust_log`;

CREATE TABLE `res_sel_num_cust_log` (
  `DATA_ID` bigint(14) NOT NULL COMMENT '数据编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '流水号',
  `RES_ID` varchar(20) DEFAULT NULL COMMENT '号码',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源型号',
  `CUST_CARD_TYPE` varchar(6) DEFAULT NULL COMMENT '证件类型:\n0 身份证\n1 工商登记证\n2 护照（旧）\n3 军人证\n4 社保卡(旧)\n5 企业代码证\n6 蓝印户口（旧）\n9 单位证明\n10 港澳居民来往内地通行证\n11 台胞\n12 外籍人士\n98 其它证件',
  `CUST_CARD_NO` varchar(50) DEFAULT NULL COMMENT '证件号码',
  `DEPT_ID` varchar(50) DEFAULT NULL COMMENT '集团组织机构唯一标识。',
  `RELA_TYPE` bigint(2) DEFAULT NULL COMMENT '关系类型\n1：使用关系 USER\n2：拥有关系 OWNER',
  `LEADING_NUM` varchar(20) DEFAULT NULL COMMENT '总机号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '0已取消、1初始，4预占已开通',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态\n2.未用、3.B2C预占、4.B2B预留、5.已用',
  `BUSI_TYPE` varchar(12) DEFAULT NULL COMMENT '选号业务类型:\n1-网上放号,2-自助选号,3-电子商务营业厅（虚拟）,4-188号码抢注,下发到营业厅',
  `PRE_OCCUPY_DATE` datetime NOT NULL COMMENT '预占时间',
  `OCCUPY_DATE` datetime DEFAULT NULL COMMENT '实占时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县区',
  `NOTES` varchar(60) DEFAULT NULL COMMENT '备注',
  `ICC_ID` varchar(25) DEFAULT NULL COMMENT 'SIM卡号',
  `IMSI` varchar(20) DEFAULT NULL COMMENT 'IMSI号',
  `EXT_STR` varchar(60) DEFAULT NULL COMMENT '备用字段1',
  `EXT_ID` bigint(16) DEFAULT NULL COMMENT '备用字段2',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库编码',
  PRIMARY KEY (`DATA_ID`),
  KEY `IDX_RES_SEL_LOG_1` (`RES_ID`,`MANAGE_STATUS`),
  KEY `IDX_RES_SEL_LOG_2` (`CUST_CARD_TYPE`,`CUST_CARD_NO`),
  KEY `IDX_RES_SEL_LOG_3` (`BUSI_TYPE`,`PRE_OCCUPY_DATE`),
  KEY `IDX_RES_SEL_LOG_4` (`LEADING_NUM`),
  KEY `IDX_RES_SEL_LOG_5` (`EXT_STR`),
  KEY `IDX_RES_SEL_LOG_6` (`DEPT_ID`),
  KEY `IDX_RES_SEL_LOG_7` (`SEC_ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='选号信息记录表（按租户分表）';

/*Table structure for table `res_sel_num_cust_log_21` */

DROP TABLE IF EXISTS `res_sel_num_cust_log_21`;

CREATE TABLE `res_sel_num_cust_log_21` (
  `DATA_ID` bigint(14) NOT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `RES_ID` varchar(20) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `CUST_CARD_TYPE` varchar(6) DEFAULT NULL,
  `CUST_CARD_NO` varchar(50) DEFAULT NULL,
  `DEPT_ID` varchar(50) DEFAULT NULL,
  `RELA_TYPE` bigint(2) DEFAULT NULL,
  `LEADING_NUM` varchar(20) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `BUSI_TYPE` varchar(12) DEFAULT NULL,
  `PRE_OCCUPY_DATE` datetime NOT NULL,
  `OCCUPY_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `NOTES` varchar(60) DEFAULT NULL,
  `ICC_ID` varchar(25) DEFAULT NULL,
  `IMSI` varchar(20) DEFAULT NULL,
  `EXT_STR` varchar(60) DEFAULT NULL,
  `EXT_ID` bigint(16) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`DATA_ID`),
  KEY `IDX_RES_SEL_LOG_1` (`RES_ID`,`MANAGE_STATUS`),
  KEY `IDX_RES_SEL_LOG_2` (`CUST_CARD_TYPE`,`CUST_CARD_NO`),
  KEY `IDX_RES_SEL_LOG_3` (`BUSI_TYPE`,`PRE_OCCUPY_DATE`),
  KEY `IDX_RES_SEL_LOG_6` (`DEPT_ID`),
  KEY `IDX_RES_SEL_LOG_4` (`LEADING_NUM`),
  KEY `IDX_RES_SEL_LOG_5` (`EXT_STR`),
  KEY `IDX_RES_SEL_LOG_7` (`SEC_ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_sel_num_cust_log_his` */

DROP TABLE IF EXISTS `res_sel_num_cust_log_his`;

CREATE TABLE `res_sel_num_cust_log_his` (
  `DATA_ID` bigint(14) NOT NULL COMMENT '数据编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '流水号',
  `RES_ID` varchar(20) DEFAULT NULL COMMENT '号码',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源型号',
  `CUST_CARD_TYPE` varchar(6) DEFAULT NULL COMMENT '证件类型:\n0 身份证\n1 工商登记证\n2 护照（旧）\n3 军人证\n4 社保卡(旧)\n5 企业代码证\n6 蓝印户口（旧）\n9 单位证明\n10 港澳居民来往内地通行证\n11 台胞\n12 外籍人士\n98 其它证件',
  `CUST_CARD_NO` varchar(50) DEFAULT NULL COMMENT '证件号码',
  `DEPT_ID` varchar(50) DEFAULT NULL COMMENT '集团组织机构唯一标识。',
  `RELA_TYPE` bigint(2) DEFAULT NULL COMMENT '关系类型\n1：使用关系 USER\n2：拥有关系 OWNER',
  `LEADING_NUM` varchar(20) DEFAULT NULL COMMENT '总机号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '0已取消、1初始，4预占已开通',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态\n2.未用、3.B2C预占、4.B2B预留、5.已用',
  `BUSI_TYPE` varchar(12) DEFAULT NULL COMMENT '选号业务类型:\n1-网上放号,2-自助选号,3-电子商务营业厅（虚拟）,4-188号码抢注,下发到营业厅',
  `PRE_OCCUPY_DATE` datetime DEFAULT NULL COMMENT '预占时间',
  `OCCUPY_DATE` datetime DEFAULT NULL COMMENT '实占时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县区',
  `NOTES` varchar(60) DEFAULT NULL COMMENT '备注',
  `ICC_ID` varchar(25) DEFAULT NULL COMMENT 'SIM卡号',
  `IMSI` varchar(20) DEFAULT NULL COMMENT 'IMSI号',
  `EXT_STR` varchar(60) DEFAULT NULL COMMENT '备用字段1',
  `EXT_ID` bigint(16) DEFAULT NULL COMMENT '备用字段2',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库编码',
  PRIMARY KEY (`DATA_ID`),
  KEY `IDX_RES_SEL_NUM_C_L_H_1` (`RES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='（按租户分表）';

/*Table structure for table `res_sel_num_cust_log_his_21` */

DROP TABLE IF EXISTS `res_sel_num_cust_log_his_21`;

CREATE TABLE `res_sel_num_cust_log_his_21` (
  `DATA_ID` bigint(14) NOT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `RES_ID` varchar(20) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `CUST_CARD_TYPE` varchar(6) DEFAULT NULL,
  `CUST_CARD_NO` varchar(50) DEFAULT NULL,
  `DEPT_ID` varchar(50) DEFAULT NULL,
  `RELA_TYPE` bigint(2) DEFAULT NULL,
  `LEADING_NUM` varchar(20) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `BUSI_TYPE` varchar(12) DEFAULT NULL,
  `PRE_OCCUPY_DATE` datetime DEFAULT NULL,
  `OCCUPY_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `NOTES` varchar(60) DEFAULT NULL,
  `ICC_ID` varchar(25) DEFAULT NULL,
  `IMSI` varchar(20) DEFAULT NULL,
  `EXT_STR` varchar(60) DEFAULT NULL,
  `EXT_ID` bigint(16) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`DATA_ID`),
  KEY `IDX_RES_SEL_NUM_C_L_H_1_21` (`RES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_sel_sim_check_log` */

DROP TABLE IF EXISTS `res_sel_sim_check_log`;

CREATE TABLE `res_sel_sim_check_log` (
  `DATA_ID` bigint(14) NOT NULL COMMENT '主键',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '流水号',
  `ICC_ID` varchar(25) DEFAULT NULL COMMENT 'ICC_ID',
  `IMSI` varchar(20) DEFAULT NULL COMMENT 'IMSI',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库编号',
  `RES_NUMBER_HLR` varchar(7) DEFAULT NULL COMMENT 'HLR编号',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态 1初始、2激活',
  `SIM_CHECK_ID` varchar(3) DEFAULT NULL COMMENT 'SIM盘点类别:0代表盘赢   1代表盘亏',
  `BUSI_TYPE` varchar(12) DEFAULT NULL COMMENT '操作类别.暂时不用',
  `SIM_CHECK_DATE` datetime DEFAULT NULL COMMENT '确认时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县区编号',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`DATA_ID`),
  KEY `IDX_RES_SEL_SIM_CHK_LOG_1` (`ICC_ID`),
  KEY `IDX_RES_SEL_SIM_CHK_LOG_2` (`SIM_CHECK_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='盘点SIM卡记录（暂无分表）';

/*Table structure for table `res_selprice_mode` */

DROP TABLE IF EXISTS `res_selprice_mode`;

CREATE TABLE `res_selprice_mode` (
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '制式指通讯网络的类型，‘G’表示制式为GSM网；‘C’表示制式为CDMA网',
  `PATTERN_ID` bigint(10) NOT NULL COMMENT '选号费模式类型在【系统基础表】中定义，指如“七位数同号”等的模式中文描述。目前分为以下几类，具体参见“资源管理.需求分析说明书”附件C的说明。：1－七位数同号2－七位数正顺号3－七位数反顺号4－四组两位数成对号5－前后四位数对应号6－前后四位数顺对应号7－六位数同号8－六位数顺号9－三组二位数成对号10－三组二位数对应号11－五位数同号12－五位数顺号13－前后三位数对应号14－前后三位数同号15－三位数成对号16－四位数同号17－四位数顺号18－两位数成对号19－两位数对应号20－后三位数同号21－普通',
  `MODE_DESC` varchar(255) DEFAULT NULL COMMENT '模式描述',
  `IS_USED` bigint(1) DEFAULT NULL COMMENT '是否启用:0-表示不启用，1-表示可启用',
  `RESERVE_FEE` bigint(10) DEFAULT NULL COMMENT '预存话费:以分为单位',
  `POINTS` bigint(10) DEFAULT NULL COMMENT '可抵积分',
  `ORDER_FEE` bigint(10) DEFAULT NULL COMMENT '预定费:以分为单位',
  `ORDER_DAYS` bigint(3) DEFAULT NULL COMMENT '可预定天数',
  `CHOOSE_LEVEL` bigint(2) DEFAULT NULL COMMENT '号码类型0普通号码，非0优选号码',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地市代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '启用时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `PRESENT_MONTH` bigint(4) DEFAULT NULL COMMENT '预存返充时限',
  `DEPOSIT_MONTH` bigint(10) DEFAULT NULL COMMENT '保底期限',
  `DEPOSIT_AMOUNT` bigint(10) DEFAULT NULL COMMENT '月保底金额',
  `PATTERN_NAME` varchar(100) DEFAULT NULL COMMENT 'PATTERN_NAME',
  `IFEE_TYPE` varchar(12) DEFAULT NULL COMMENT '资费包类型.是seq,不是枚举值.暂时未用',
  PRIMARY KEY (`RES_SPEC_ID`,`PATTERN_ID`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='根据用户号码的模式的不同，定义该号码的预存话费、预定费及对应的权限实体。（按租户分表）';

/*Table structure for table `res_selprice_mode_21` */

DROP TABLE IF EXISTS `res_selprice_mode_21`;

CREATE TABLE `res_selprice_mode_21` (
  `RES_SPEC_ID` bigint(12) NOT NULL,
  `PATTERN_ID` bigint(10) NOT NULL,
  `MODE_DESC` varchar(255) DEFAULT NULL,
  `IS_USED` bigint(1) DEFAULT NULL,
  `RESERVE_FEE` bigint(10) DEFAULT NULL,
  `POINTS` bigint(10) DEFAULT NULL,
  `ORDER_FEE` bigint(10) DEFAULT NULL,
  `ORDER_DAYS` bigint(3) DEFAULT NULL,
  `CHOOSE_LEVEL` bigint(2) DEFAULT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `PRESENT_MONTH` bigint(4) DEFAULT NULL,
  `DEPOSIT_MONTH` bigint(10) DEFAULT NULL,
  `DEPOSIT_AMOUNT` bigint(10) DEFAULT NULL,
  `PATTERN_NAME` varchar(100) DEFAULT NULL,
  `IFEE_TYPE` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`RES_SPEC_ID`,`PATTERN_ID`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_selprice_mode_his` */

DROP TABLE IF EXISTS `res_selprice_mode_his`;

CREATE TABLE `res_selprice_mode_his` (
  `H_ID` bigint(14) NOT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '制式指通讯网络的类型，‘G’表示制式为GSM网；‘C’表示制式为CDMA网',
  `PATTERN_ID` bigint(10) NOT NULL COMMENT '选号费模式类型在【系统基础表】中定义，指如“七位数同号”等的模式中文描述。目前分为以下几类，具体参见“资源管理.需求分析说明书”附件C的说明。：1－七位数同号2－七位数正顺号3－七位数反顺号4－四组两位数成对号5－前后四位数对应号6－前后四位数顺对应号7－六位数同号8－六位数顺号9－三组二位数成对号10－三组二位数对应号11－五位数同号12－五位数顺号13－前后三位数对应号14－前后三位数同号15－三位数成对号16－四位数同号17－四位数顺号18－两位数成对号19－两位数对应号20－后三位数同号21－普通',
  `MODE_DESC` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `IS_USED` bigint(1) DEFAULT NULL COMMENT '0-表示不启用，1-表示可启用',
  `RESERVE_FEE` bigint(10) DEFAULT NULL COMMENT '以分为单位',
  `POINTS` bigint(10) DEFAULT NULL COMMENT '暂时未用',
  `ORDER_FEE` bigint(10) DEFAULT NULL COMMENT '以分为单位',
  `ORDER_DAYS` bigint(3) DEFAULT NULL COMMENT '暂时未用',
  `CHOOSE_LEVEL` bigint(2) DEFAULT NULL COMMENT '号码类型',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `PRESENT_MONTH` bigint(4) DEFAULT NULL COMMENT '暂时未用',
  `DEPOSIT_MONTH` bigint(10) DEFAULT NULL COMMENT '暂时未用',
  `DEPOSIT_AMOUNT` bigint(10) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`H_ID`,`RES_SPEC_ID`,`PATTERN_ID`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于存储不同号码模式对应的选号费用信息，其中包含号码预存话费、预定费等属性';

/*Table structure for table `res_sim_batch` */

DROP TABLE IF EXISTS `res_sim_batch`;

CREATE TABLE `res_sim_batch` (
  `FILE_ID` bigint(16) NOT NULL COMMENT '文件编号',
  `FILE_NAME` varchar(255) DEFAULT NULL COMMENT '文件名',
  `PO_NUMBER` varchar(30) DEFAULT NULL COMMENT 'PO编号',
  `FILE_TYPE` varchar(3) DEFAULT NULL COMMENT '文件类型:\n1.PO file\n2.Output file',
  `OPER_STATUS` varchar(3) DEFAULT NULL COMMENT '执行状态：\n当为PO file的时候******************************\n1)文件录入数据库，解析文件内容，将头文件字段录入属性表。文件状态为：Initial\n2)Task获取Init状态的文件，生成ICCID和IMSI数据。文件状态为：Generated\n3)Task获取Generated的数据，绑定ICCID、IMSI或MSISDN。文件状态为：Binded\n4)Task获取Binded状态的文件，生成Input file。文件状态为：Success\n5)若过程有失败，则状态为失败：Fail 。若过程有失败，则状态为失败（需要自动触发流程，通知SAP侧人员PO文件错误 ）。\n0Initial、1Generated、2Binded、3Success、9Failed \n当为output file的时候******************************\n文件的状态有4种，在SIM卡未生成时为初始，生成SIM卡后为已生成，上传文件至服务器状态改为已上传，若过程有失败，则状态为失败。\n0Initial、1Generated、2Success、9Failed',
  `FILE_SOURCE` varchar(2) DEFAULT NULL COMMENT '文件来源:1、界面导入;2、后台进程同步 FTP',
  `FILE_SIZE` bigint(15) DEFAULT NULL COMMENT '文件大小',
  `ROW_NUM` bigint(15) DEFAULT NULL COMMENT '文件行数',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EXE_DATE` datetime DEFAULT NULL COMMENT '执行时间',
  `EXE_INFO` varchar(1000) DEFAULT NULL COMMENT '执行信息',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `NOTES` varchar(100) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_RES_SIM_BATCH_1` (`FILE_NAME`),
  KEY `IDX_RES_SIM_BATCH_2` (`PO_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表用于记录SIM卡的生产批次信息，帮助操作员以批次为单位进行管理SIM卡数据。\n（按租户分表）';

/*Table structure for table `res_sim_batch_21` */

DROP TABLE IF EXISTS `res_sim_batch_21`;

CREATE TABLE `res_sim_batch_21` (
  `FILE_ID` bigint(16) NOT NULL,
  `FILE_NAME` varchar(255) DEFAULT NULL,
  `PO_NUMBER` varchar(30) DEFAULT NULL,
  `FILE_TYPE` varchar(3) DEFAULT NULL,
  `OPER_STATUS` varchar(3) DEFAULT NULL,
  `FILE_SOURCE` varchar(2) DEFAULT NULL,
  `FILE_SIZE` bigint(15) DEFAULT NULL,
  `ROW_NUM` bigint(15) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EXE_DATE` datetime DEFAULT NULL,
  `EXE_INFO` varchar(1000) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `NOTES` varchar(100) DEFAULT NULL,
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_RES_SIM_BATCH_2_21` (`PO_NUMBER`),
  KEY `IDX_RES_SIM_BATCH_1_21` (`FILE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_sim_batch_dtl` */

DROP TABLE IF EXISTS `res_sim_batch_dtl`;

CREATE TABLE `res_sim_batch_dtl` (
  `FILE_DTL_ID` bigint(16) NOT NULL COMMENT '文件编号',
  `FILE_ID` bigint(16) DEFAULT NULL COMMENT '文件编号',
  `BATCH_ID` varchar(255) DEFAULT NULL COMMENT '批次号',
  `PO_NUMBER` varchar(30) DEFAULT NULL COMMENT 'PO编号',
  `PO_ITEM_NO` varchar(20) DEFAULT NULL COMMENT 'ITEM编号',
  `ARTICLE_NUMBER` varchar(20) DEFAULT NULL COMMENT '物料号',
  `REQUIRED_QUANTITY` varchar(20) DEFAULT NULL COMMENT '需求数量',
  `BIND_FLAG` varchar(3) DEFAULT NULL COMMENT '是否绑定号码： \n1, if the article binding relevant\n0, if the article not binding relevant',
  `COUNTRY_CODE` varchar(6) DEFAULT NULL COMMENT '国家编码: 45,36',
  `SIM_PROFILE` varchar(20) DEFAULT NULL COMMENT '暂时没有枚举',
  `ARTWORK` varchar(20) DEFAULT NULL COMMENT '暂时没有枚举',
  `IMSI_TYPE` varchar(20) DEFAULT NULL,
  `SIM_TYPE` varchar(20) DEFAULT NULL COMMENT 'V1:\n1x – 6x = Telenor		       \n7x = Fictive Simcards\n8x = Service Provider Simcards (see below)',
  `SUPPLIER_ID` varchar(6) DEFAULT NULL COMMENT 'vendor:\n1 = Gemalto (1Gemplus+3Axalto)\n2 = G&D\n3 = (Axalto/Schlumberger)\n4 = Oberthur , DZCard (4Xponcard+6 Oberthur)\n5 = Morpho (Setec)\n6 = ?vrige – TaiSys (Oberthur)						\n7 = Bluefish, NiteCrest og Watchdata (ST Incard)\n8 = DZCard (SCard)',
  `APPLICATION_ID` varchar(6) DEFAULT NULL COMMENT 'V2V3:\n10	NONE\n11	TEST\n12	GISMO\n13	MINTRA\n14	Sonofon.dk\n15	Seamless Roaming\n16	Kombi\n17	NESA\n18	Sonofon.dk II, TN\n19	Sonofon.dk II, G&D\n20	Mobile Computing \n21	Sonofon.,SSC,WIB1.3 (Test)\n22	Sonofon.,SSC,WIB1.3\n23	Telenor DK  USIM 2ff/3ff Mix\n24	Telenor DK Usim SMD\n25	Telenor DK Usim 4FF Nano\n26 	Telenor DK Usim 2+3+4FF Multi',
  `IMSI_HLR_CODE` varchar(20) DEFAULT NULL COMMENT '暂时没有枚举',
  `SPECIAL_INDICATOR` varchar(20) DEFAULT NULL COMMENT '特殊编码：\nSpecial indicator, to show which algorithm is used in the network. \n		F=0 the algorithm is Comp128 (-1)\n		F=1 the algorithm is HMAC \n		F=2 the algorithm is HMAC (Reserved For Use)\n		F=3 the algorithm is Milenage\n		F=9 indicates fictive imsi.',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `NOTES` varchar(255) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL COMMENT 'KDB_ID ID',
  `EXT2` varchar(255) DEFAULT NULL COMMENT 'ALGO_ID',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '备用',
  PRIMARY KEY (`FILE_DTL_ID`),
  KEY `IDX_RES_SIM_BATCH_DTL_1` (`FILE_ID`),
  KEY `IDX_RES_SIM_BATCH_DTL_2` (`BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SIM卡批次明细表\n（按租户分表）';

/*Table structure for table `res_sim_batch_dtl_21` */

DROP TABLE IF EXISTS `res_sim_batch_dtl_21`;

CREATE TABLE `res_sim_batch_dtl_21` (
  `FILE_DTL_ID` bigint(16) NOT NULL,
  `FILE_ID` bigint(16) DEFAULT NULL,
  `BATCH_ID` varchar(255) DEFAULT NULL,
  `PO_NUMBER` varchar(30) DEFAULT NULL,
  `PO_ITEM_NO` varchar(20) DEFAULT NULL,
  `ARTICLE_NUMBER` varchar(20) DEFAULT NULL,
  `REQUIRED_QUANTITY` varchar(20) DEFAULT NULL,
  `BIND_FLAG` varchar(3) DEFAULT NULL,
  `COUNTRY_CODE` varchar(6) DEFAULT NULL,
  `SIM_PROFILE` varchar(20) DEFAULT NULL,
  `ARTWORK` varchar(20) DEFAULT NULL,
  `IMSI_TYPE` varchar(20) DEFAULT NULL,
  `SIM_TYPE` varchar(20) DEFAULT NULL,
  `SUPPLIER_ID` varchar(6) DEFAULT NULL,
  `APPLICATION_ID` varchar(6) DEFAULT NULL,
  `IMSI_HLR_CODE` varchar(20) DEFAULT NULL,
  `SPECIAL_INDICATOR` varchar(20) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL COMMENT 'KDB_ID ID',
  `EXT2` varchar(255) DEFAULT NULL COMMENT 'ALGO_ID',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '备用',
  PRIMARY KEY (`FILE_DTL_ID`),
  KEY `IDX_RES_SIM_BATCH_DTL_2_21` (`BATCH_ID`),
  KEY `IDX_RES_SIM_BATCH_DTL_1_21` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_sim_callback` */

DROP TABLE IF EXISTS `res_sim_callback`;

CREATE TABLE `res_sim_callback` (
  `ICC_ID` varchar(25) NOT NULL COMMENT 'SIM卡号',
  `IMSI` varchar(20) DEFAULT NULL COMMENT 'IMSI号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `NOTES` varchar(100) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(20) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(40) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`ICC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表用于记录回收的IMSI信息（暂无分表）';

/*Table structure for table `res_sim_card_origin` */

DROP TABLE IF EXISTS `res_sim_card_origin`;

CREATE TABLE `res_sim_card_origin` (
  `ICC_ID` varchar(25) DEFAULT NULL COMMENT '对应RES_SIM_CARD.res_id\n唯一索引',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `IMSI` varchar(20) NOT NULL COMMENT 'IMSI号',
  `SN` varchar(30) DEFAULT NULL COMMENT '空卡序列号',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `PIN1` varchar(8) DEFAULT NULL COMMENT 'PIN1码',
  `PUK1` varchar(8) DEFAULT NULL COMMENT 'PUK1码',
  `PIN2` varchar(8) DEFAULT NULL COMMENT 'PIN2码',
  `PUK2` varchar(8) DEFAULT NULL COMMENT 'PUK2码',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '套餐',
  `RES_NUMBER_HLR` varchar(7) DEFAULT NULL COMMENT '编码',
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '领用人',
  `PRE_DATE` datetime DEFAULT NULL COMMENT '预占时间',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:\n1-初始;2-激活;3-预占;4-拆除; 5-占用;6-冷冻;7-报废;8-在途;9-丢失',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态:\n0-未匹配未开通\n1-已匹配未开通\n2-已匹配已开通',
  `PS_STATUS` varchar(3) DEFAULT NULL COMMENT '鉴权状态:\n1未鉴权 2鉴权成功 3鉴权失败\nPS_STATUS枚举值为：(特殊)\n1 表示：社会渠道开户价格可变，SIM卡费用取自\n2 表示：社会渠道开户价格不可变，SIM卡费用取自',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型:\n1营业用\n2代销用\n8神州行SIM卡(废弃)',
  `CARD_TYPE` varchar(6) DEFAULT NULL COMMENT '卡类型--远程写卡的结束后，回传数据\n0 -- 8k\n1 -- 16k     \n2 -- 32k\n3 -- 64k\n4 -- 128K\n10 --白卡\n11 --预置KI型空卡',
  `CARD_DATA_TYPE` varchar(3) DEFAULT NULL COMMENT '卡数据类型:\n1批量制卡\n2远程写卡\n3空选写卡（预置KI型写卡）\n4重个人化',
  `CARD_MAKE_TYPE` varchar(3) DEFAULT NULL COMMENT '制卡类型:\n1普通SIM卡\n2 TD USIM卡',
  `IS_BAK_CARD` varchar(2) DEFAULT NULL COMMENT '是否为备卡:\n1 不是备卡、2 是备卡',
  `DOMAIN_TYPE` varchar(2) DEFAULT NULL COMMENT '归属域类型:\n1集团公司、2省公司',
  `IS_KI_LOGIN` varchar(3) DEFAULT NULL COMMENT 'KI是否登录:\n0否 1是',
  `OPC` varchar(256) DEFAULT NULL COMMENT '2G\n3G',
  `KI` varchar(256) DEFAULT NULL COMMENT 'KI',
  `ENC_KI` varchar(40) DEFAULT NULL COMMENT 'ENC_KI',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '绑定号码',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `EXT1` varchar(20) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(40) DEFAULT NULL COMMENT '扩展字段',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `RES_PRICE` bigint(20) DEFAULT NULL COMMENT '卡价格',
  `SALE_STATUS` bigint(2) DEFAULT NULL COMMENT '出售状态:\n0未出售\n1已出售',
  `WRITE_TYPE` varchar(3) DEFAULT NULL COMMENT '写卡状态：\n1未写卡 2正写卡 3写卡成功 4写卡失败 5已开通 6换卡回收\n\n\nSH\n10 表示可写白卡、11 表示可写白卡被选定\n12 普通卡写卡成功、13 普通卡写卡失败\n22 预置KI卡写卡成功、23 预置KI卡写卡失败\n32 写卡成功（空中选号）\n42 重格式化白卡写卡成功、43 重格式化白卡写卡失败\n\n\n普通写卡SN没有值；\n预置KI的看SN有值；',
  `STOCK_IN_DATE` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`IMSI`),
  UNIQUE KEY `IDX_RES_SIM_CARD_ORIGIN_1` (`ICC_ID`),
  KEY `IDX_RES_SIM_CARD_ORIGIN_4` (`BILL_ID`),
  KEY `IDX_RES_SIM_CARD_ORIGIN_5` (`RES_STORE_ID`),
  KEY `IDX_RES_SIM_CARD_ORIGIN_7` (`SN`),
  KEY `IDX_RES_SIM_CARD_ORIGIN_8` (`DONE_CODE`),
  KEY `IDX_RES_SIM_CARD_ORIGIN_2` (`ICC_ID`,`SEC_ORG_ID`),
  KEY `IDX_RES_SIM_CARD_ORIGIN_3` (`BILL_ID`),
  KEY `IDX_RES_SIM_CARD_ORIGIN_6` (`RES_SPEC_ID`,`CARD_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SIM卡资源实例未用表信息：\n该表存储的是未用SIM卡资源明细信息\n其中，字段管理状态MANAGE_STATUS枚举值为：\nLN:1-初始;2-激活;3-预占;4-拆除; 5-占用；6-冷冻;7-报废;8-在途;9-丢失\n 资源状态RES_STATUS枚举值为：\n1未写卡 2正写卡 3写卡成功 4写卡失败 5已开通 6换卡回收\n使用类型USE_TYPE枚举值为：\n1营业用 2代销用\n卡数据类型CARD_DATA_TYPE枚举值为：\n1批量制卡 2远程写卡\n制卡类型CARD_MAKE_TYPE枚举值为：\n1普通SIM卡 2TD USIM卡\n（按租户分表）';

/*Table structure for table `res_sim_card_origin_21` */

DROP TABLE IF EXISTS `res_sim_card_origin_21`;

CREATE TABLE `res_sim_card_origin_21` (
  `ICC_ID` varchar(25) NOT NULL,
  `BATCH_ID` varchar(40) DEFAULT NULL,
  `RES_INST_ID` varchar(25) DEFAULT NULL,
  `IMSI` varchar(20) DEFAULT NULL,
  `SN` varchar(30) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `PIN1` varchar(8) DEFAULT NULL,
  `PUK1` varchar(8) DEFAULT NULL,
  `PIN2` varchar(8) DEFAULT NULL,
  `PUK2` varchar(8) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `RES_NUMBER_HLR` varchar(7) DEFAULT NULL,
  `RECEIVER` varchar(50) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `PS_STATUS` varchar(3) DEFAULT NULL,
  `USE_TYPE` bigint(2) DEFAULT NULL,
  `CARD_TYPE` varchar(6) DEFAULT NULL,
  `CARD_DATA_TYPE` varchar(3) DEFAULT NULL,
  `CARD_MAKE_TYPE` varchar(3) DEFAULT NULL,
  `IS_BAK_CARD` varchar(2) DEFAULT NULL,
  `DOMAIN_TYPE` varchar(2) DEFAULT NULL,
  `IS_KI_LOGIN` varchar(3) DEFAULT NULL,
  `OPC` varchar(256) DEFAULT NULL,
  `KI` varchar(256) DEFAULT NULL,
  `ENC_KI` varchar(40) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `EXT1` varchar(20) DEFAULT NULL,
  `EXT2` varchar(40) DEFAULT NULL,
  `RES_EVENT_ID` bigint(12) DEFAULT NULL,
  `RES_PRICE` bigint(20) DEFAULT NULL,
  `SALE_STATUS` bigint(2) DEFAULT NULL,
  `WRITE_TYPE` varchar(3) DEFAULT NULL,
  `STOCK_IN_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ICC_ID`),
  KEY `IDX_RES_SIM_CARD_ORIGIN_5_21` (`RES_STORE_ID`),
  KEY `IDX_RES_SIM_CARD_ORIGIN_7_21` (`SN`),
  KEY `IDX_RES_SIM_CARD_ORIGIN_8_21` (`DONE_CODE`),
  KEY `IDX_RES_SIM_CARD_ORIGIN_6_21` (`RES_SPEC_ID`,`RES_NUMBER_HLR`),
  KEY `IDX_RES_SIM_CARD_ORIGIN_4_21` (`BILL_ID`),
  KEY `IDX_RES_SIM_CARD_ORIGIN_1` (`IMSI`),
  KEY `IDX_RES_SIM_CARD_ORIGIN_2` (`ICC_ID`,`SEC_ORG_ID`),
  KEY `IDX_RES_SIM_CARD_ORIGIN_3` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_sim_card_used` */

DROP TABLE IF EXISTS `res_sim_card_used`;

CREATE TABLE `res_sim_card_used` (
  `ICC_ID` varchar(25) DEFAULT NULL COMMENT '对应RES_SIM_CARD.res_id\n唯一索引',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `IMSI` varchar(20) NOT NULL COMMENT 'IMSI号',
  `SN` varchar(30) DEFAULT NULL COMMENT '白卡序列号',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `PIN1` varchar(8) DEFAULT NULL COMMENT 'PIN1码',
  `PUK1` varchar(8) DEFAULT NULL COMMENT 'PUK1码',
  `PIN2` varchar(8) DEFAULT NULL COMMENT 'PIN2码',
  `PUK2` varchar(8) DEFAULT NULL COMMENT 'PUK2码',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '套餐',
  `RES_NUMBER_HLR` varchar(7) DEFAULT NULL COMMENT 'IMSI所对应的号段（号码的前七位）',
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '领用人',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态:\n1-初始;2-激活;3-预占;4-拆除; 5-占用；6-冷冻;7-报废;8-在途;9-丢失',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态:\n0-未匹配未开通\n1-已匹配未开通\n2-已匹配已开通',
  `PS_STATUS` varchar(3) DEFAULT NULL COMMENT '鉴权状态：1未鉴权 2鉴权成功 3鉴权失败',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型\n1营业用\n2代销用\n8神州行SIM卡（废弃）\n\n普通开户SIM卡\n普通补卡SIM卡\n预付费可充值卡\n神州行活卡\n神州行死卡\n神州行补卡\n手机银行STK卡\nM_ZONE\n国内一卡多号（副号码）',
  `CARD_TYPE` varchar(6) DEFAULT NULL COMMENT '卡实物类型: --远程写卡的结束后，回传数据\n0 -- 8k\n1 -- 16k     \n2 -- 32k\n3 -- 64k\n4 -- 128K\n10 --白卡\n11 --预置KI型空卡',
  `CARD_DATA_TYPE` varchar(3) DEFAULT NULL COMMENT '卡数据类型:\n1批量制卡;2远程写卡;3.空选写卡',
  `CARD_MAKE_TYPE` varchar(3) DEFAULT NULL COMMENT '制卡类型:1普通SIM卡 2 TD USIM卡',
  `IS_BAK_CARD` varchar(2) DEFAULT NULL COMMENT '是否为备卡:\n1 不是备卡\n2 是备卡',
  `DOMAIN_TYPE` varchar(2) DEFAULT NULL COMMENT '归属域类型:\n1集团公司\n2省公司',
  `IS_KI_LOGIN` varchar(3) DEFAULT NULL COMMENT 'KI是否登录\n0否 1是',
  `OPC` varchar(256) DEFAULT NULL COMMENT 'OPC',
  `KI` varchar(256) DEFAULT NULL COMMENT 'KI',
  `ENC_KI` varchar(40) DEFAULT NULL COMMENT 'ENC_KI',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '号码',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `EXT1` varchar(20) DEFAULT NULL COMMENT 'EXT1',
  `EXT2` varchar(40) DEFAULT NULL COMMENT 'EXT2',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `RES_PRICE` bigint(20) DEFAULT NULL COMMENT '卡价格',
  `SALE_STATUS` bigint(2) DEFAULT NULL COMMENT '出售状态:\n0未出售\n1已出售',
  `WRITE_TYPE` varchar(3) DEFAULT NULL COMMENT '写卡状态:\n1未写卡 2正写卡 3写卡成功 4写卡失败 5已开通 6换卡回收\n\n\nSH\n10 表示可写白卡、11 表示可写白卡被选定\n12 普通卡写卡成功、13 普通卡写卡失败\n22 预置KI卡写卡成功、23 预置KI卡写卡失败\n32 写卡成功（空中选号）\n42 重格式化白卡写卡成功、43 重格式化白卡写卡失败\n\n\n普通写卡SN没有值；\n预置KI的看SN有值；',
  `STOCK_IN_DATE` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`IMSI`),
  KEY `IDX_RES_SIM_CARD_USED_1` (`BILL_ID`),
  KEY `IDX_RES_SIM_CARD_USED_3` (`SEC_ORG_ID`),
  KEY `IDX_RES_SIM_CARD_USED_4` (`RES_STORE_ID`),
  KEY `IDX_RES_SIM_CARD_USED_5` (`SN`),
  KEY `IDX_RES_SIM_CARD_USED_2` (`ICC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SIM卡资源实例已用表信息：\n该表存储的是已用SIM卡资源明细信息，其中，字段管理状态MANAGE_STATUS枚举值为：\nLN:1-初始;2-激活;3-预占;4-拆除; 5-占用；6-冷冻;7-报废;8-在途;9-丢失\n写卡状态WRITE_TYPE枚举值为：\n1未写卡 2正写卡 3写卡成功 4写卡失败 5已开通 6换卡回收\n使用类型USE_TYPE枚举值为：\n1营业用 2代销用\nPS_STATUS枚举值为：\n1 表示：社会渠道开户价格可变，SIM卡费用取自\n2 表示：社会渠道开户价格不可变，SIM卡费用取自\n卡数据类型CARD_DATA_TYPE枚举值为：\n1批量制卡 2远程写卡\n制卡类型CARD_MAKE_TYPE枚举值为：\n1普通SIM卡 2TD USIM卡\n（按租户分表）';

/*Table structure for table `res_sim_card_used_21` */

DROP TABLE IF EXISTS `res_sim_card_used_21`;

CREATE TABLE `res_sim_card_used_21` (
  `ICC_ID` varchar(25) NOT NULL,
  `BATCH_ID` varchar(40) DEFAULT NULL,
  `RES_INST_ID` varchar(25) DEFAULT NULL,
  `IMSI` varchar(20) DEFAULT NULL,
  `SN` varchar(30) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `PIN1` varchar(8) DEFAULT NULL,
  `PUK1` varchar(8) DEFAULT NULL,
  `PIN2` varchar(8) DEFAULT NULL,
  `PUK2` varchar(8) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `RES_NUMBER_HLR` varchar(7) DEFAULT NULL,
  `RECEIVER` varchar(50) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `PS_STATUS` varchar(3) DEFAULT NULL,
  `USE_TYPE` bigint(2) DEFAULT NULL,
  `CARD_TYPE` varchar(6) DEFAULT NULL,
  `CARD_DATA_TYPE` varchar(3) DEFAULT NULL,
  `CARD_MAKE_TYPE` varchar(3) DEFAULT NULL,
  `IS_BAK_CARD` varchar(2) DEFAULT NULL,
  `DOMAIN_TYPE` varchar(2) DEFAULT NULL,
  `IS_KI_LOGIN` varchar(3) DEFAULT NULL,
  `OPC` varchar(256) DEFAULT NULL,
  `KI` varchar(256) DEFAULT NULL,
  `ENC_KI` varchar(40) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `EXT1` varchar(20) DEFAULT NULL,
  `EXT2` varchar(40) DEFAULT NULL,
  `RES_EVENT_ID` bigint(12) DEFAULT NULL,
  `RES_PRICE` bigint(20) DEFAULT NULL,
  `SALE_STATUS` bigint(2) DEFAULT NULL,
  `WRITE_TYPE` varchar(3) DEFAULT NULL,
  `STOCK_IN_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ICC_ID`),
  KEY `IDX_RES_SIM_CARD_USED_1_21` (`BILL_ID`),
  KEY `IDX_RES_SIM_CARD_USED_3_21` (`SEC_ORG_ID`),
  KEY `IDX_RES_SIM_CARD_USED_5_21` (`SN`),
  KEY `IDX_RES_SIM_CARD_USED_2_21` (`IMSI`),
  KEY `IDX_RES_SIM_CARD_USED_4_21` (`RES_STORE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_sim_empty` */

DROP TABLE IF EXISTS `res_sim_empty`;

CREATE TABLE `res_sim_empty` (
  `ROW_ID` bigint(12) NOT NULL COMMENT '空白卡编码',
  `SIM_TYPE` varchar(40) DEFAULT NULL COMMENT '卡类型(0 普通SIM卡、1 USIM卡)',
  `ICC_ID` varchar(25) DEFAULT NULL COMMENT '对应RES_SIM_CARD.res_id\n唯一索引',
  `IMSI` varchar(20) DEFAULT NULL COMMENT 'IMSI号',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源型号',
  `EMPTY_TYPE` varchar(8) DEFAULT NULL COMMENT '空白卡类型   （0= 有序列号无KI、1=有序列号有KI）',
  `SN` varchar(30) DEFAULT NULL COMMENT '空卡序列号',
  `KI` varchar(100) DEFAULT NULL COMMENT 'KI',
  `ENC_KI` varchar(40) DEFAULT NULL COMMENT 'ENC_KI',
  `FIRMID` varchar(60) DEFAULT NULL COMMENT '厂商代码',
  `WRITE_STATUS` varchar(3) DEFAULT NULL COMMENT '写卡状态:\n1未写卡 2正写卡 3写卡成功 4写卡失败 5已开通 6换卡回收',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态\n2.未用\n4.已用',
  `TRADE_ID` bigint(4) DEFAULT NULL COMMENT '业务品牌',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DONE_CODE` varchar(25) DEFAULT NULL COMMENT '流水号',
  `PASS_FLAG` varchar(2) DEFAULT NULL COMMENT '暂时未用',
  `PASS` varchar(16) DEFAULT NULL COMMENT 'PASS',
  `OPC` varchar(256) DEFAULT NULL COMMENT 'OPC',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '归属仓库',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `USE_DONE_CODE` varchar(25) DEFAULT NULL COMMENT '业务流水号\n营业，积分 ，资源销售 产生的流水号',
  `USE_DATE` datetime DEFAULT NULL COMMENT '资源出库时间',
  `USE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '业务使用组织',
  `REMARKS` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ROW_ID`),
  KEY `IDX_RES_SIM_EMPTY_1` (`SN`),
  KEY `IDX_RES_SIM_EMPTY_2` (`KI`),
  KEY `IDX_RES_SIM_EMPTY_3` (`ENC_KI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SIM卡空卡表（暂无分表）';

/*Table structure for table `res_sim_empty_21` */

DROP TABLE IF EXISTS `res_sim_empty_21`;

CREATE TABLE `res_sim_empty_21` (
  `ROW_ID` bigint(12) NOT NULL,
  `SIM_TYPE` varchar(40) DEFAULT NULL,
  `ICC_ID` varchar(25) DEFAULT NULL,
  `IMSI` varchar(20) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `EMPTY_TYPE` varchar(8) DEFAULT NULL,
  `SN` varchar(30) DEFAULT NULL,
  `KI` varchar(100) DEFAULT NULL,
  `ENC_KI` varchar(40) DEFAULT NULL,
  `FIRMID` varchar(60) DEFAULT NULL,
  `WRITE_STATUS` varchar(3) DEFAULT NULL,
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `TRADE_ID` bigint(4) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(25) DEFAULT NULL,
  `PASS_FLAG` varchar(2) DEFAULT NULL,
  `PASS` varchar(16) DEFAULT NULL,
  `OPC` varchar(256) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) DEFAULT NULL,
  `RECEIVER` bigint(12) DEFAULT NULL,
  `USE_DONE_CODE` varchar(25) DEFAULT NULL,
  `USE_DATE` datetime DEFAULT NULL,
  `USE_ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ROW_ID`),
  KEY `IDX_RES_SIM_EMPTY_1_21` (`SN`),
  KEY `IDX_RES_SIM_EMPTY_2_21` (`KI`),
  KEY `IDX_RES_SIM_EMPTY_3_21` (`ENC_KI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_sim_iccid` */

DROP TABLE IF EXISTS `res_sim_iccid`;

CREATE TABLE `res_sim_iccid` (
  `REC_ID` bigint(12) NOT NULL COMMENT '主键',
  `BATCH_ID` varchar(255) DEFAULT NULL COMMENT '批次号',
  `ICC_TYPE` varchar(10) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格 暂时未用',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '归属库存',
  `RES_SEC_ID` bigint(12) DEFAULT NULL COMMENT '资源归属组织',
  `PO_FILE` varchar(255) DEFAULT NULL,
  `ICC_ID` varchar(30) DEFAULT NULL COMMENT 'ICC_ID',
  `IMSI` varchar(30) DEFAULT NULL COMMENT 'IMSI',
  `MSISDN` varchar(30) DEFAULT NULL COMMENT 'MSISDN手机号码',
  `ICC_PREFIX` varchar(20) DEFAULT NULL COMMENT 'ICC号头',
  `VENDOR` varchar(10) DEFAULT NULL,
  `APP_ID` varchar(10) DEFAULT NULL,
  `ICC_SEQ` bigint(12) DEFAULT NULL COMMENT 'ICC_SEQ 的 随机数',
  `DEAL_STATUS` varchar(3) DEFAULT NULL COMMENT '处理标志是针对可能出现中间异常的情况进行标识的。\n0初始Open、\n1已绑定Preparing Manufacture(即ICCID和IMSI已经绑定)、\n2已实例化Free(已经导入到SIM卡实例表中)',
  `ORG_ID` bigint(8) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市 暂时未用',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '操作流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  PRIMARY KEY (`REC_ID`),
  UNIQUE KEY `IDX_RES_SIM_ICCID_1` (`ICC_ID`),
  UNIQUE KEY `IDX_RES_SIM_ICCID_2` (`IMSI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ICCID数据表（按租户分表）';

/*Table structure for table `res_sim_iccid_21` */

DROP TABLE IF EXISTS `res_sim_iccid_21`;

CREATE TABLE `res_sim_iccid_21` (
  `REC_ID` bigint(12) NOT NULL,
  `BATCH_ID` varchar(255) DEFAULT NULL,
  `PO_FILE` varchar(255) DEFAULT NULL,
  `ICC_ID` varchar(30) DEFAULT NULL,
  `IMSI` varchar(30) DEFAULT NULL,
  `MSISDN` varchar(30) DEFAULT NULL,
  `ICC_PREFIX` varchar(20) DEFAULT NULL,
  `ICC_TYPE` varchar(10) DEFAULT NULL,
  `VENDOR` varchar(10) DEFAULT NULL,
  `APP_ID` varchar(10) DEFAULT NULL,
  `ICC_SEQ` bigint(12) DEFAULT NULL,
  `DEAL_STATUS` varchar(3) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(8) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(14) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`REC_ID`),
  KEY `IDX_RES_SIM_ICCID_1_21` (`ICC_ID`),
  KEY `IDX_RES_SIM_ICCID_2_21` (`IMSI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_sim_imsi` */

DROP TABLE IF EXISTS `res_sim_imsi`;

CREATE TABLE `res_sim_imsi` (
  `REC_ID` bigint(12) NOT NULL COMMENT '主键',
  `BATCH_ID` varchar(255) DEFAULT NULL COMMENT '批次号',
  `PO_FILE` varchar(255) DEFAULT NULL,
  `IMSI` varchar(30) DEFAULT NULL COMMENT 'IMSI',
  `ICC_ID` varchar(30) DEFAULT NULL COMMENT 'ICC_ID',
  `MSISDN` varchar(30) DEFAULT NULL COMMENT 'MSISDN手机号码',
  `IMSI_PREFIX` varchar(20) DEFAULT NULL COMMENT 'IMSI号头',
  `HLR_CODE` varchar(30) DEFAULT NULL COMMENT 'HLR_CODE',
  `SPECIAL_ID` varchar(30) DEFAULT NULL COMMENT 'SPECIAL_ID',
  `PROVIDER` varchar(30) DEFAULT NULL COMMENT 'PROVIDER 暂时未用',
  `IMSI_SEQ` bigint(12) DEFAULT NULL COMMENT 'IMSI_SEQ 的 随机数',
  `DEAL_STATUS` varchar(3) DEFAULT NULL COMMENT '处理标志是针对可能出现中间异常的情况进行标识的。\n0初始Open、\n1已绑定Preparing Manufacture(即ICCID和IMSI已经绑定)、\n2已实例化Free(已经导入到SIM卡实例表中)',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格',
  `ORG_ID` bigint(8) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '操作流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  PRIMARY KEY (`REC_ID`),
  KEY `IDX_RES_SIM_IMSI_1` (`IMSI`),
  KEY `IDX_RES_SIM_IMSI_2` (`ICC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='IMSI数据表（按租户分表）';

/*Table structure for table `res_sim_imsi_21` */

DROP TABLE IF EXISTS `res_sim_imsi_21`;

CREATE TABLE `res_sim_imsi_21` (
  `REC_ID` bigint(12) NOT NULL,
  `BATCH_ID` varchar(255) DEFAULT NULL,
  `PO_FILE` varchar(255) DEFAULT NULL,
  `IMSI` varchar(30) DEFAULT NULL,
  `ICC_ID` varchar(30) DEFAULT NULL,
  `MSISDN` varchar(30) DEFAULT NULL,
  `IMSI_PREFIX` varchar(20) DEFAULT NULL,
  `HLR_CODE` varchar(30) DEFAULT NULL,
  `SPECIAL_ID` varchar(30) DEFAULT NULL,
  `PROVIDER` varchar(30) DEFAULT NULL,
  `IMSI_SEQ` bigint(12) DEFAULT NULL,
  `DEAL_STATUS` varchar(3) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(8) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(14) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`REC_ID`),
  KEY `IDX_RES_SIM_IMSI_1_21` (`IMSI`),
  KEY `IDX_RES_SIM_IMSI_2_21` (`ICC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_sim_offer_rel` */

DROP TABLE IF EXISTS `res_sim_offer_rel`;

CREATE TABLE `res_sim_offer_rel` (
  `SEQ_ID` bigint(12) NOT NULL COMMENT '主键',
  `SIM_TYPE_ID` bigint(12) DEFAULT NULL COMMENT 'SIM卡类别编号',
  `SIM_SPEC_ID` bigint(12) DEFAULT NULL COMMENT 'SIM卡规格编号',
  `DEVICE_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '终端类别编号',
  `DEVICE_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '终端规格编号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '处理时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '创建用户:对应员工表',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_SIM_OFFER_REL_1` (`DEVICE_SPEC_ID`,`OFFER_ID`),
  KEY `IDX_RES_SIM_OFFER_REL_2` (`SIM_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='卡类型和策划机型对应关系表:\noffer+终端 确定 SIM卡。需要订单确认实现方案。（按照租户分表）';

/*Table structure for table `res_sim_rec` */

DROP TABLE IF EXISTS `res_sim_rec`;

CREATE TABLE `res_sim_rec` (
  `REC_ID` bigint(12) NOT NULL COMMENT '主键',
  `IMSI` varchar(30) NOT NULL COMMENT 'IMSI',
  `ICC_ID` varchar(30) NOT NULL COMMENT 'ICC_ID',
  `MSISDN` varchar(30) DEFAULT NULL COMMENT 'MSISDN手机号码',
  `DEAL_FLAG` bigint(1) DEFAULT NULL COMMENT '处理标志是针对可能出现中间异常的情况进行标识的。\n0初始、1已经上传、2已转实例',
  `BATCH_ID` varchar(30) DEFAULT NULL COMMENT '批次号',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格',
  `SEND_SMS` varchar(3) DEFAULT NULL COMMENT '是否发送短信：1有效、0无效',
  `IS_IMMEDIATELY` varchar(3) DEFAULT NULL COMMENT '是否立即执行\n0否\n1是',
  `BGN_DATE` datetime DEFAULT NULL COMMENT '处理开始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '处理结束时间',
  `ORG_ID` bigint(8) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '操作流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `HOLD_COL1` varchar(40) DEFAULT NULL COMMENT '保留字段1:\n1.未完成\n2.已完成',
  `HOLD_COL2` varchar(255) DEFAULT NULL COMMENT '保留字段2',
  PRIMARY KEY (`REC_ID`),
  KEY `IDX_RES_SIM_REC_1` (`IMSI`,`ICC_ID`),
  KEY `IDX_RES_SIM_REC_2` (`BATCH_ID`),
  KEY `IDX_RES_SIM_REC_3` (`MSISDN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录缴费卡录入时的处理进度情况（按租户分表）';

/*Table structure for table `res_sim_rec_21` */

DROP TABLE IF EXISTS `res_sim_rec_21`;

CREATE TABLE `res_sim_rec_21` (
  `REC_ID` bigint(12) NOT NULL,
  `IMSI` varchar(30) NOT NULL,
  `ICC_ID` varchar(30) NOT NULL,
  `MSISDN` varchar(30) DEFAULT NULL,
  `DEAL_FLAG` bigint(1) DEFAULT NULL,
  `BATCH_ID` varchar(30) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `SEND_SMS` varchar(3) DEFAULT NULL,
  `IS_IMMEDIATELY` varchar(3) DEFAULT NULL,
  `BGN_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(8) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `DONE_CODE` bigint(14) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `HOLD_COL1` varchar(40) DEFAULT NULL,
  `HOLD_COL2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`REC_ID`),
  KEY `IDX_RES_SIM_REC_2_21` (`BATCH_ID`),
  KEY `IDX_RES_SIM_REC_3_21` (`MSISDN`),
  KEY `IDX_RES_SIM_REC_1_21` (`IMSI`,`ICC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_spec` */

DROP TABLE IF EXISTS `res_spec`;

CREATE TABLE `res_spec` (
  `RES_SPEC_ID` bigint(12) NOT NULL DEFAULT '0' COMMENT '资源规格编号，SIM卡则存放对应的SAP侧 Material_Id',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别，从RES_TYPE表中获取',
  `RES_SPEC_NAME` varchar(256) DEFAULT NULL COMMENT '资源名称',
  `OLD_CODE` varchar(50) DEFAULT NULL COMMENT '老系统编码',
  `RES_CODE` varchar(50) DEFAULT NULL COMMENT '资源编码',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '停用时间',
  `VALID_DAYS` bigint(10) NOT NULL COMMENT '有效期:以天为单位',
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `DONE_DATE` datetime NOT NULL COMMENT '操作时间',
  `OP_ID` bigint(12) NOT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织',
  `RES_COST` bigint(12) DEFAULT NULL COMMENT '成本',
  `STATE` varchar(3) NOT NULL,
  `RES_DESC` varchar(100) DEFAULT NULL COMMENT '资源描述',
  `ACC_CODE` bigint(8) DEFAULT NULL COMMENT '发票科目',
  `IS_REAL_STOCK` bigint(1) DEFAULT NULL COMMENT '是否存在真实库存\n0否\n1是',
  `HEAD_RULE` varchar(30) DEFAULT NULL COMMENT '头号规则',
  `IS_NEED_CONFIRM` bigint(1) DEFAULT NULL COMMENT '是否需要到库确认\n0.不需要 1需要',
  `IS_PERSON_ALLOCATE` bigint(1) DEFAULT NULL COMMENT '是否需要发放到个人',
  `IS_MODIFY` varchar(3) DEFAULT NULL COMMENT '是否可修改资源定义0-表示前台界面不可修改1-表示前台界面可修改',
  `SEC_FACTORY` varchar(30) DEFAULT NULL COMMENT '生产厂商，终端相关，暂时未用',
  `UNIT` varchar(256) DEFAULT NULL COMMENT '单位（单元）',
  `USE_RANGE` bigint(12) DEFAULT NULL,
  `MAT_CODE` varchar(25) DEFAULT NULL COMMENT '物料编码',
  `INST_TYPE` varchar(3) DEFAULT NULL COMMENT '资源实例类型：\n1表示同质（数量统计：如油、矿泉水）\n2表示异构（数据统计：如手机号码、SIM卡卡号）',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `TERMI_UP_NAME` varchar(256) DEFAULT NULL COMMENT '上报机型名称',
  `TERMI_TYPE` varchar(3) DEFAULT NULL COMMENT '终端类型\n1.2G手机\n2.3G上网版\n3.3G手机\n4.3G数据卡\n5.3G无线固话',
  `SERVICE_TYPE` varchar(3) DEFAULT NULL COMMENT '平台选择\n1.移动平台\n2.非移动平台\n3.全部平台',
  `REGION_ID` varchar(10) DEFAULT NULL COMMENT '地市编码,填0全省',
  `TRADE_ID` varchar(12) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`RES_SPEC_ID`),
  KEY `IDX_RES_SPEC` (`RES_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源规格：需要能够区分是否需要细分或者只管数量等不同类型的资源（按照租户分表）';

/*Table structure for table `res_spec_21` */

DROP TABLE IF EXISTS `res_spec_21`;

CREATE TABLE `res_spec_21` (
  `RES_SPEC_ID` bigint(12) NOT NULL,
  `RES_TYPE_ID` bigint(12) DEFAULT NULL,
  `RES_SPEC_NAME` varchar(256) DEFAULT NULL,
  `OLD_CODE` varchar(50) DEFAULT NULL,
  `RES_CODE` varchar(50) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `VALID_DAYS` bigint(10) NOT NULL,
  `DONE_CODE` bigint(12) NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) NOT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `RES_COST` bigint(12) DEFAULT NULL,
  `STATE` varchar(3) NOT NULL,
  `RES_DESC` varchar(100) DEFAULT NULL,
  `ACC_CODE` bigint(8) DEFAULT NULL,
  `IS_REAL_STOCK` bigint(1) DEFAULT NULL,
  `HEAD_RULE` varchar(30) DEFAULT NULL,
  `IS_NEED_CONFIRM` bigint(1) DEFAULT NULL,
  `IS_PERSON_ALLOCATE` bigint(1) DEFAULT NULL,
  `IS_MODIFY` varchar(3) DEFAULT NULL,
  `SEC_FACTORY` varchar(30) DEFAULT NULL,
  `UNIT` varchar(256) DEFAULT NULL,
  `USE_RANGE` bigint(12) DEFAULT NULL,
  `MAT_CODE` varchar(25) DEFAULT NULL,
  `INST_TYPE` varchar(3) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `TERMI_UP_NAME` varchar(256) DEFAULT NULL,
  `TERMI_TYPE` varchar(3) DEFAULT NULL,
  `SERVICE_TYPE` varchar(3) DEFAULT NULL,
  `REGION_ID` varchar(10) DEFAULT NULL,
  `TRADE_ID` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`RES_SPEC_ID`),
  KEY `IDX_RES_SPEC_21` (`RES_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_spec_attr_rel` */

DROP TABLE IF EXISTS `res_spec_attr_rel`;

CREATE TABLE `res_spec_attr_rel` (
  `RES_ATTR_RELAT_ID` bigint(12) NOT NULL COMMENT '资源属性关系编号',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `ATTR_VALUE_ID` bigint(12) DEFAULT NULL COMMENT '属性值ID',
  `ATTR_ID` bigint(12) DEFAULT NULL COMMENT '属性定义ID',
  `VALUE_CODE` varchar(250) DEFAULT NULL COMMENT '属性值编码',
  `VALUE_NAME` varchar(200) DEFAULT NULL COMMENT '属性值名称',
  `STATE` varchar(3) NOT NULL COMMENT '状态:U有效、E无效',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '启用时间',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '失效日期',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '创建者:对应员工表',
  PRIMARY KEY (`RES_ATTR_RELAT_ID`),
  KEY `IDX_SPEC_ATTR_REL_1` (`RES_SPEC_ID`),
  KEY `IDX_SPEC_ATTR_REL_2` (`ATTR_VALUE_ID`),
  KEY `IDX_SPEC_ATTR_REL_3` (`ATTR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源规格和属性的关联关系（按照租户分表）';

/*Table structure for table `res_spec_attr_rel_21` */

DROP TABLE IF EXISTS `res_spec_attr_rel_21`;

CREATE TABLE `res_spec_attr_rel_21` (
  `RES_ATTR_RELAT_ID` bigint(12) NOT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE_ID` bigint(12) DEFAULT NULL,
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `VALUE_CODE` varchar(250) DEFAULT NULL,
  `VALUE_NAME` varchar(200) DEFAULT NULL,
  `STATE` varchar(3) NOT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `CREATER` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`RES_ATTR_RELAT_ID`),
  KEY `IDX_SPEC_ATTR_REL_2_21` (`ATTR_VALUE_ID`),
  KEY `IDX_SPEC_ATTR_REL_3_21` (`ATTR_ID`),
  KEY `IDX_SPEC_ATTR_REL_1_21` (`RES_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_spec_channel` */

DROP TABLE IF EXISTS `res_spec_channel`;

CREATE TABLE `res_spec_channel` (
  `RES_TYPE_ID` bigint(12) NOT NULL COMMENT '渠道系列编码',
  `PROD_ID` bigint(12) DEFAULT NULL COMMENT '渠道商品ID',
  `RES_TYPE_NAME` varchar(30) DEFAULT NULL COMMENT '渠道系列名称',
  `TYPE_MODE` bigint(2) DEFAULT NULL COMMENT '渠道系列类型',
  `RES_TYPE_DESC` varchar(100) DEFAULT NULL COMMENT '渠道系列描述',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `REGION_TYPE` bigint(8) DEFAULT NULL COMMENT '地市类型',
  `REGION_DETAIL` varchar(8) DEFAULT NULL COMMENT '地市编码',
  `PROD_STATUS` bigint(2) DEFAULT NULL COMMENT '产品状态',
  `REC_STATUS` bigint(2) DEFAULT NULL COMMENT '资源状态',
  `REGION_LEVEL` bigint(2) DEFAULT NULL COMMENT '地市等级',
  `CHANNEL_CITY` bigint(8) DEFAULT NULL COMMENT '渠道类型',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `HOLD_COL` varchar(100) DEFAULT NULL COMMENT '备注字段',
  `HOLD_COL2` varchar(100) DEFAULT NULL COMMENT '备注字段2',
  `HOLD_COL3` varchar(100) DEFAULT NULL COMMENT '备注字段3',
  `HOLD_COL4` varchar(100) DEFAULT NULL COMMENT '备注字段4',
  `HOLD_DATE` datetime DEFAULT NULL COMMENT '备注字段5',
  `HOLD_DATE2` datetime DEFAULT NULL COMMENT '备注字段6',
  PRIMARY KEY (`RES_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='渠道系列表';

/*Table structure for table `res_spec_ext_info` */

DROP TABLE IF EXISTS `res_spec_ext_info`;

CREATE TABLE `res_spec_ext_info` (
  `RES_SEQ_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `NUMBER_LENGTH` varchar(255) DEFAULT NULL COMMENT '号码长度：号码生成时使用。号码可能有3、8、9、10、11位',
  `MAX_QTY` bigint(12) DEFAULT NULL COMMENT '最大号码数量:号码生成的时候会有最大值限制',
  `MIN_QTY` bigint(12) DEFAULT NULL COMMENT '最小号码数量：号码预警，号码最低阀值',
  `RANGE_QTY` bigint(12) DEFAULT NULL COMMENT '号码段数量：B2B号码段控制数量',
  `RECYCLED_DAYS` bigint(12) DEFAULT NULL COMMENT '冷冻时间：进入冷冻后的时间',
  `RECYCLED_SPEC_ID` varchar(255) DEFAULT NULL COMMENT '回收后规格',
  `RECYCLED_MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '回收后状态',
  `PORT_FLAG` varchar(3) DEFAULT NULL COMMENT '是否可携转：1可以携转，0不能携转',
  `STATE` varchar(3) NOT NULL COMMENT '状态:U有效、E无效',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '组织代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '填0时全省统一',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  PRIMARY KEY (`RES_SEQ_ID`),
  KEY `IDX_RES_SPEC_EXT_INFO_1` (`RES_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='规格扩展信息（按照租户分表）';

/*Table structure for table `res_spec_ext_info_21` */

DROP TABLE IF EXISTS `res_spec_ext_info_21`;

CREATE TABLE `res_spec_ext_info_21` (
  `RES_SEQ_ID` bigint(12) NOT NULL,
  `RES_SPEC_ID` bigint(12) NOT NULL,
  `NUMBER_LENGTH` varchar(255) DEFAULT NULL,
  `MAX_QTY` bigint(12) DEFAULT NULL,
  `MIN_QTY` bigint(12) DEFAULT NULL,
  `RANGE_QTY` bigint(12) DEFAULT NULL,
  `RECYCLED_DAYS` bigint(12) DEFAULT NULL,
  `RECYCLED_SPEC_ID` varchar(255) DEFAULT NULL,
  `RECYCLED_MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `PORT_FLAG` varchar(3) DEFAULT NULL,
  `STATE` varchar(3) NOT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `OP_ORG` bigint(12) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`RES_SEQ_ID`),
  KEY `IDX_RES_SPEC_EXT_INFO_1_21` (`RES_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_spec_itema` */

DROP TABLE IF EXISTS `res_spec_itema`;

CREATE TABLE `res_spec_itema` (
  `RES_SPEC_ID` bigint(16) NOT NULL COMMENT '资源规格标识',
  `ATTR_CODE` varchar(20) NOT NULL COMMENT '属性编码',
  `ATTR_OBJ` varchar(5) DEFAULT NULL COMMENT '属性作用对象',
  `ATTR_TYPE_CODE` char(1) DEFAULT NULL COMMENT '参数显示类型：0-普通数据库编辑框dbedit，1-优惠下拉框TwwdbLookupCombo，2-时间输入框TwwdbTimerPicker，3-普通下拉框TwwdbLookupCombo，4-连续值，5-离散值，6-CheckBox，7-动态Sql',
  `ATTR_LABLE` varchar(50) DEFAULT NULL COMMENT '参数显示标签：对应界面的Label',
  `ATTR_HINT` varchar(100) DEFAULT NULL COMMENT '参数提示：对应属性hint',
  `ATTR_INIT_VALUE` varchar(1000) DEFAULT NULL COMMENT '属性初始值',
  `ATTR_CAN_NULL` char(1) DEFAULT NULL COMMENT '参数是否可为空：1或者NULL-可以为空，0-不能为空，2-有值开通服务，无值取消服务(呼转类)',
  `ATTR_CAN_EDIT` char(1) DEFAULT NULL COMMENT '属性是否可编辑：0-不可编辑，1或者NULL-可编辑，一般适用于根据某些条件计算得到值',
  `ATTR_FIELD_MIN` bigint(8) DEFAULT NULL COMMENT '属性字段最小值',
  `ATTR_FIELD_MAX` bigint(8) DEFAULT NULL COMMENT '属性字段最大值',
  `ATTR_FIELD_STEP` decimal(5,2) DEFAULT NULL COMMENT '属性字段步长',
  `ATTR_FIELD_TYPE` varchar(3) DEFAULT NULL COMMENT '属性字段类型：numeric（数字），integer（整数），pinteger（正整数），ninteger（负整数），nature（自然数）',
  `START_DATE` datetime NOT NULL COMMENT '暂时未用',
  `END_DATE` datetime NOT NULL COMMENT '暂时未用',
  `REGION_ID` char(4) NOT NULL COMMENT '地市编码：若为ZZZZ，则全省有效',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '操作编码',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员工',
  `NOTES` varchar(100) DEFAULT NULL COMMENT '备注',
  `RSRV_STR1` varchar(100) DEFAULT NULL COMMENT '预留',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '预留字段',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '预留字段',
  `RSRV_STR4` varchar(100) DEFAULT NULL COMMENT '预留字段',
  `RSRV_STR5` varchar(100) DEFAULT NULL COMMENT '预留字段',
  PRIMARY KEY (`RES_SPEC_ID`,`ATTR_CODE`,`START_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源规格属性表A';

/*Table structure for table `res_spec_itemb` */

DROP TABLE IF EXISTS `res_spec_itemb`;

CREATE TABLE `res_spec_itemb` (
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '资源规格标识',
  `ATTR_CODE` varchar(20) NOT NULL COMMENT '属性编码',
  `ATTR_FIELD_CODE` varchar(100) NOT NULL COMMENT '属性字段值',
  `ATTR_FIELD_NAME` varchar(200) DEFAULT NULL COMMENT '属性字段说明',
  `ATTR_FIELD_MIN` bigint(8) DEFAULT NULL COMMENT '属性字段最小值',
  `ATTR_FIELD_MAX` bigint(8) DEFAULT NULL COMMENT '属性字段最大值',
  `ATTR_FIELD_STEP` bigint(5) DEFAULT NULL COMMENT '属性字段步长',
  `ATTR_FIELD_TYPE` varchar(3) DEFAULT NULL COMMENT '属性字段类型暂时未用',
  `START_DATE` datetime NOT NULL COMMENT '暂时未用',
  `END_DATE` datetime NOT NULL COMMENT '暂时未用',
  `REGION_ID` char(4) NOT NULL COMMENT '地市编码：若为ZZZZ，则全省有效',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '操作编码',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `NOTES` varchar(100) DEFAULT NULL COMMENT '备注',
  `RSRV_STR1` varchar(100) DEFAULT NULL COMMENT '预留',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '预留',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '预留字段',
  `RSRV_STR4` varchar(100) DEFAULT NULL COMMENT '预留字段',
  `RSRV_STR5` varchar(100) DEFAULT NULL COMMENT '预留字段',
  PRIMARY KEY (`RES_SPEC_ID`,`ATTR_CODE`,`ATTR_FIELD_CODE`,`START_DATE`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源规格属性表B';

/*Table structure for table `res_spec_relat` */

DROP TABLE IF EXISTS `res_spec_relat`;

CREATE TABLE `res_spec_relat` (
  `RELAT_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RELATED_RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '编码',
  `RELAT_TYPE` varchar(3) DEFAULT NULL COMMENT '1.ProvinceToLocal 集团和本地\n2.',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '对应员工表',
  `STATE` varchar(3) NOT NULL COMMENT '状态:U有效、E无效',
  `NOTES` varchar(1000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`RELAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `res_spec_relat_rule` */

DROP TABLE IF EXISTS `res_spec_relat_rule`;

CREATE TABLE `res_spec_relat_rule` (
  `RELAT_RULE_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `RELAT_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RULE_TYPE` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `RULE_ATTR` bigint(12) DEFAULT NULL COMMENT '此处可引用对象（资源规格或其他参考对象）的属性。',
  `RULE_ATTR_VALUE` varchar(250) DEFAULT NULL COMMENT '暂时未用',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态：U有效、E无效',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT 'DONE_DOCE',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT 'OP_ORG',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '填0时全省统一',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '预留',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '预留',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '预留',
  PRIMARY KEY (`RELAT_RULE_ID`),
  KEY `IDX_RES_RULE_DTL_4` (`RES_SPEC_ID`),
  KEY `IDX_RES_RULE_DTL_5` (`RULE_ATTR`),
  KEY `IDX_RES_RULE_DTL_6` (`RULE_ATTR_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `res_spec_score` */

DROP TABLE IF EXISTS `res_spec_score`;

CREATE TABLE `res_spec_score` (
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `USE_RANGE` bigint(3) DEFAULT NULL COMMENT '暂时未用',
  `SYS_EXCHANGE_ADDR` varchar(10) DEFAULT NULL COMMENT '暂时未用',
  `VALID_TRADEMARK` varchar(10) DEFAULT NULL COMMENT '暂时未用',
  `EXCHANGE_NUM` bigint(6) DEFAULT NULL COMMENT '暂时未用',
  `SMS_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `POINT_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `PROD_NUM` bigint(6) DEFAULT NULL COMMENT '暂时未用',
  `PROM_ID` bigint(6) DEFAULT NULL COMMENT '暂时未用',
  `EQUAL_POINT` bigint(10) DEFAULT NULL COMMENT '暂时未用',
  `INFACT_VAL` bigint(10) DEFAULT NULL COMMENT '暂时未用',
  `VALID_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `EXT1` varchar(40) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(40) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(40) DEFAULT NULL COMMENT '扩展字段',
  `EXT4` varchar(40) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`RES_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理实物部分资源配送通知，调拨 等信息';

/*Table structure for table `res_static_data` */

DROP TABLE IF EXISTS `res_static_data`;

CREATE TABLE `res_static_data` (
  `CODE_TYPE` varchar(255) NOT NULL COMMENT 'CODE_TYPE',
  `CODE_VALUE` varchar(255) NOT NULL COMMENT 'CODE_VALUE',
  `CODE_NAME` varchar(255) DEFAULT NULL COMMENT 'CODE_NAME',
  `CODE_DESC` varchar(255) DEFAULT NULL COMMENT 'CODE_DESC',
  `CODE_TYPE_ALIAS` varchar(255) DEFAULT NULL COMMENT 'CODE_TYPE_ALIAS',
  `SORT_ID` varchar(30) DEFAULT NULL COMMENT 'SORT_ID',
  `STATE` char(1) DEFAULT NULL COMMENT '有效U、失效E',
  `EXTERN_CODE_TYPE` varchar(2000) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作者',
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '停用时间',
  KEY `IDX_RES_STATIC_DATA_1` (`CODE_TYPE`),
  KEY `IDX_RES_STATIC_DATA_2` (`CODE_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源静态数据表，参考BS_STATIC_DATA （按照租户分表）';

/*Table structure for table `res_static_data_21` */

DROP TABLE IF EXISTS `res_static_data_21`;

CREATE TABLE `res_static_data_21` (
  `CODE_TYPE` varchar(255) NOT NULL COMMENT 'CODE_TYPE',
  `CODE_VALUE` varchar(255) NOT NULL COMMENT 'CODE_VALUE',
  `CODE_NAME` varchar(255) DEFAULT NULL COMMENT 'CODE_NAME',
  `CODE_DESC` varchar(255) DEFAULT NULL COMMENT 'CODE_DESC',
  `CODE_TYPE_ALIAS` varchar(255) DEFAULT NULL COMMENT 'CODE_TYPE_ALIAS',
  `SORT_ID` varchar(30) DEFAULT NULL COMMENT 'SORT_ID',
  `STATE` char(1) DEFAULT NULL COMMENT '有效U、失效E',
  `EXTERN_CODE_TYPE` varchar(2000) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作者',
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '停用时间',
  KEY `IDX_RES_STATIC_DATA_1` (`CODE_TYPE`),
  KEY `IDX_RES_STATIC_DATA_2` (`CODE_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源静态数据表，参考BS_STATIC_DATA （按照租户分表）';

/*Table structure for table `res_stock_alarm` */

DROP TABLE IF EXISTS `res_stock_alarm`;

CREATE TABLE `res_stock_alarm` (
  `RES_ALARM_RULE` bigint(12) NOT NULL COMMENT '预警规则编号',
  `RES_TYPE_ID` varchar(17) DEFAULT NULL COMMENT '类型编号',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库',
  `MAX_QUANTITY` bigint(12) DEFAULT NULL COMMENT '上限阀值',
  `MIN_QUANTITY` bigint(12) DEFAULT NULL COMMENT '下限阀值',
  `DELIVER_QUANTITY` bigint(12) DEFAULT NULL COMMENT '已经发放量',
  `UNNORMAL_SALE` varchar(50) DEFAULT NULL COMMENT '异常销量告警',
  `GOODS_NEED` varchar(50) DEFAULT NULL COMMENT '缺货总量告警',
  `AVERAGE_NEED` varchar(50) DEFAULT NULL COMMENT '缺货平均量告警',
  `SCALE_NEED` varchar(50) DEFAULT NULL COMMENT '缺货占比告警(%)',
  `ROUND_TIME` bigint(2) DEFAULT NULL COMMENT '预警周期',
  `UNIT` varchar(3) DEFAULT NULL COMMENT '预警周期单位',
  `END_DATE` datetime DEFAULT NULL COMMENT '预警配置有效期',
  `REMIND_METHOD_ID` bigint(9) DEFAULT NULL COMMENT '提醒方式 1短讯，2Email',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '预警接收人员',
  `BUSI_TYPE` varchar(40) DEFAULT NULL COMMENT '操作类型:\n0按仓库预警\n1.按号段（SIM卡或者号码）预警',
  `RES_NUMBER_HLR` varchar(17) DEFAULT NULL COMMENT 'HLR',
  `STATE` varchar(3) NOT NULL COMMENT '状态:U有效、E无效',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源型号',
  `RES_STORE_TYPE_ID` varchar(5) DEFAULT NULL COMMENT '仓库类型 0基本仓、1号码仓',
  `RES_STORE_NAME` varchar(40) DEFAULT NULL COMMENT '仓库名称',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `PARENT_STORE_ID` bigint(12) DEFAULT NULL COMMENT '上级库存',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '启用时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '创建者',
  `NOTES` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`RES_ALARM_RULE`),
  KEY `IDX_RES_STOCK_ALARM_1` (`RES_STORE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='为了及时全面掌握库存情况，发现库存短缺问题并及时补货，需要对库存进行预警管理。预警管理包括：预警阈值、周期设定和预警监控处理。（按照租户分表）';

/*Table structure for table `res_stock_chk` */

DROP TABLE IF EXISTS `res_stock_chk`;

CREATE TABLE `res_stock_chk` (
  `CHK_ID` bigint(12) NOT NULL COMMENT '库存盘点标识',
  `STORAGE_ID` bigint(12) DEFAULT NULL COMMENT '库存ID',
  `INVENTORY_ID` bigint(12) DEFAULT NULL COMMENT '盘点库存标识',
  `STORE_NAME` varchar(256) DEFAULT NULL COMMENT '盘点仓库名称',
  `SC_OP_ID` bigint(12) DEFAULT NULL COMMENT '盘点人',
  `SC_OP_NAME` varchar(256) DEFAULT NULL COMMENT '盘点人名称',
  `RESULT` char(1) DEFAULT NULL COMMENT '盘点结果:\n            W.有误差.(W)\n            R.无误差.(R)',
  `STATE` char(1) DEFAULT NULL COMMENT '盘点记录状态:\n            1.生成.(C)\n            2.申请变更审批.(R)\n            3.申请审批结束.(O)\n            4.失效.(E)',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `OP_ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织',
  `MGMT_DISTRICT` varchar(6) DEFAULT NULL COMMENT '管理地区',
  `MGMT_COUNTY` varchar(6) DEFAULT NULL COMMENT '管理县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '数据归属地区',
  PRIMARY KEY (`CHK_ID`),
  KEY `IDX_RES_STOCK_CHK_01` (`INVENTORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存盘点表';

/*Table structure for table `res_stock_chk_dtl` */

DROP TABLE IF EXISTS `res_stock_chk_dtl`;

CREATE TABLE `res_stock_chk_dtl` (
  `STOCK_COUNT_LIST_DTL_ID` bigint(12) NOT NULL COMMENT '资源盘点明细标识',
  `STOCK_COUNT_LIST_ID` bigint(12) DEFAULT NULL COMMENT '盘点清单标识',
  `RES_KIND_ID` bigint(12) DEFAULT NULL COMMENT '资源类别',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格标识',
  `OBJ_ID` bigint(12) DEFAULT NULL COMMENT '资源ID',
  `OBJ_IDENTIFY` varchar(256) DEFAULT NULL COMMENT '资源标识',
  `ORI_OBJ_STATE` char(1) DEFAULT NULL COMMENT '原资源状态',
  `TAR_OBJ_STATE` varchar(32) DEFAULT NULL COMMENT '变更资源状态',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `DATA_STATUS` varchar(8) DEFAULT NULL COMMENT '数据状态\n            0--无效\n            1--有效',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `OP_ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织',
  `MGMT_DISTRICT` varchar(6) DEFAULT NULL COMMENT '管理地区',
  `MGMT_COUNTY` varchar(6) DEFAULT NULL COMMENT '管理县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '数据归属地区',
  PRIMARY KEY (`STOCK_COUNT_LIST_DTL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源盘点清单明细表';

/*Table structure for table `res_stock_chk_item` */

DROP TABLE IF EXISTS `res_stock_chk_item`;

CREATE TABLE `res_stock_chk_item` (
  `STOCK_COUNT_LIST_DTL_ID` bigint(12) NOT NULL COMMENT '资源盘点明细标识',
  `STOCK_CHK_ID` bigint(12) DEFAULT NULL COMMENT '库存盘点标识',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格标识',
  `STOCK_AMOUNT` bigint(12) DEFAULT NULL COMMENT '库存量',
  `STOCK_COUNT_AMOUNT` bigint(12) DEFAULT NULL COMMENT '盘点量',
  `DIFF_AMOUNT` bigint(12) DEFAULT NULL COMMENT '差异量',
  `APPRO_AMOUNT` bigint(12) DEFAULT NULL COMMENT '审批量',
  `ADJUST_AMOUNT` bigint(12) DEFAULT NULL COMMENT '已调整量',
  `COM_TIME` datetime DEFAULT NULL COMMENT '完成时间',
  `EXP_TIME` datetime DEFAULT NULL COMMENT '过期时间',
  `STATE` char(1) DEFAULT NULL COMMENT '盘点记录状态:\n            1.生成.(C)\n            2.申请变更审批.(R)\n            3.申请审批结束.(O)\n            4.失效.(E)',
  `REMARKS` varchar(4000) DEFAULT NULL COMMENT '备注',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `OP_ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织',
  `MGMT_DISTRICT` varchar(6) DEFAULT NULL COMMENT '管理地区',
  `MGMT_COUNTY` varchar(6) DEFAULT NULL COMMENT '管理县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '数据归属地区',
  PRIMARY KEY (`STOCK_COUNT_LIST_DTL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存盘点清单表';

/*Table structure for table `res_store` */

DROP TABLE IF EXISTS `res_store`;

CREATE TABLE `res_store` (
  `RES_STORE_ID` bigint(12) NOT NULL COMMENT '仓库编号',
  `PARENT_STORE_ID` bigint(12) DEFAULT NULL COMMENT '上级仓库编号',
  `RES_STORE_TYPE_ID` varchar(5) NOT NULL COMMENT '仓库类型:表示0总仓、1号码仓、2SIM卡仓、3虚拟仓等等',
  `RES_STORE_TYPE_NAME` varchar(100) DEFAULT NULL COMMENT '仓库类型名称',
  `RES_STORE_NAME` varchar(255) NOT NULL COMMENT '仓库名称',
  `RES_STORE_CODE` varchar(255) DEFAULT NULL COMMENT '仓库编码',
  `ATTACH_TYPE` varchar(3) DEFAULT NULL COMMENT '归属类型:\n0.表示组织仓\n2.表示个人仓',
  `USE_TYPE` varchar(3) DEFAULT NULL COMMENT '使用类型暂时未用',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织',
  `CHANNEL_ID` bigint(12) DEFAULT NULL COMMENT '渠道',
  `STATE` varchar(3) NOT NULL COMMENT '状态:U有效、E无效',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '对应员工表',
  `RES_STORE_DESC` varchar(60) DEFAULT NULL COMMENT '仓库说明',
  `WEARHOUSE_TYPE` varchar(3) DEFAULT NULL COMMENT '仓库状态暂时未用',
  `BUSI_TYPE` varchar(60) DEFAULT NULL COMMENT '业务类型状态暂时未用',
  `RECEIVER_PHONE` varchar(20) DEFAULT NULL COMMENT '领用人联系方式',
  PRIMARY KEY (`RES_STORE_ID`,`RES_STORE_TYPE_ID`,`RES_STORE_NAME`),
  KEY `IDX_RES_STORE_1` (`ORG_ID`),
  KEY `IDX_RES_STORE_2` (`PARENT_STORE_ID`),
  KEY `IDX_RES_STORE_3` (`RES_STORE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仓库信息 （按照租户分表）';

/*Table structure for table `res_store_21` */

DROP TABLE IF EXISTS `res_store_21`;

CREATE TABLE `res_store_21` (
  `RES_STORE_ID` bigint(12) NOT NULL,
  `PARENT_STORE_ID` bigint(12) DEFAULT NULL,
  `RES_STORE_TYPE_ID` varchar(5) NOT NULL,
  `RES_STORE_TYPE_NAME` varchar(100) DEFAULT NULL,
  `RES_STORE_NAME` varchar(255) NOT NULL,
  `RES_STORE_CODE` varchar(255) DEFAULT NULL,
  `ATTACH_TYPE` varchar(3) DEFAULT NULL,
  `USE_TYPE` varchar(3) DEFAULT NULL,
  `RECEIVER` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CHANNEL_ID` bigint(12) DEFAULT NULL,
  `STATE` varchar(3) NOT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATER` bigint(12) DEFAULT NULL,
  `RES_STORE_DESC` varchar(60) DEFAULT NULL,
  `WEARHOUSE_TYPE` varchar(3) DEFAULT NULL,
  `BUSI_TYPE` varchar(60) DEFAULT NULL,
  `RECEIVER_PHONE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`RES_STORE_ID`,`RES_STORE_TYPE_ID`,`RES_STORE_NAME`),
  KEY `IDX_RES_STORE_1_21` (`ORG_ID`),
  KEY `IDX_RES_STORE_2_21` (`PARENT_STORE_ID`),
  KEY `IDX_RES_STORE_3_21` (`RES_STORE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_store_alarm` */

DROP TABLE IF EXISTS `res_store_alarm`;

CREATE TABLE `res_store_alarm` (
  `STORE_ALARM_ID` bigint(12) NOT NULL COMMENT '预警规则标识',
  `STORE_ALARM_OBJ_TYPE` varchar(1) DEFAULT NULL COMMENT '预警类型:\n            1.省份(P)\n            2.地市(D)\n            3.县区(C)\n            4.大区(A)\n            5.组织(O)\n            6.仓库(S)',
  `MKT_RES_STOCK_ID` bigint(12) DEFAULT NULL,
  `MKT_RES_INVENTORY_ID` bigint(12) DEFAULT NULL COMMENT '预警对象标识',
  `STORE_OWNER_TYPE` varchar(1) DEFAULT NULL COMMENT '仓库归属类型:\n            0.个人(P)\n            1.组织(O)\n            2.渠道(C)',
  `QUANTITY` bigint(12) DEFAULT NULL COMMENT '下限阀值',
  `ROUND_TIME` varchar(64) DEFAULT NULL,
  `UNITS` varchar(64) DEFAULT NULL,
  `REMARKS` varchar(200) DEFAULT NULL COMMENT '备注',
  `DATA_STATUS` varchar(8) DEFAULT NULL COMMENT '数据状态\n            0--无效\n            1--有效',
  `CREATE_DATE` date DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作者',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `MGMT_DISTRICT` varchar(6) DEFAULT NULL COMMENT '管理地区',
  `MGMT_COUNTY` varchar(6) DEFAULT NULL COMMENT '管理县市',
  PRIMARY KEY (`STORE_ALARM_ID`),
  KEY `IDX_RES_STORE_ALARM_01` (`MKT_RES_INVENTORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预警规则配置';

/*Table structure for table `res_store_attr` */

DROP TABLE IF EXISTS `res_store_attr`;

CREATE TABLE `res_store_attr` (
  `RES_STORE_ATTR_ID` bigint(12) NOT NULL COMMENT 'RES_STORE_ATTR_ID',
  `STORE_ATTR_CODE` bigint(12) NOT NULL COMMENT 'STORE_ATTR_CODE',
  `STORE_ATTR_VALUE` varchar(26) NOT NULL COMMENT 'STORE_ATTR_VALUE',
  `RES_STORE_ID` bigint(12) NOT NULL COMMENT 'RES_STORE_ID',
  `REMARK` varchar(26) DEFAULT NULL COMMENT 'REMARK',
  PRIMARY KEY (`RES_STORE_ATTR_ID`),
  KEY `IDX_RES_STORE_ATTR_1` (`STORE_ATTR_CODE`),
  KEY `IDX_RES_STORE_ATTR_2` (`RES_STORE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仓库属性表';

/*Table structure for table `res_store_attr_cfg` */

DROP TABLE IF EXISTS `res_store_attr_cfg`;

CREATE TABLE `res_store_attr_cfg` (
  `RES_ATTR_ID` bigint(12) NOT NULL COMMENT 'RES_ATTR_ID',
  `RES_STORE_ATTR_ID` bigint(12) DEFAULT NULL COMMENT 'RES_STORE_ATTR_ID',
  `RES_ATTR_NAME` varchar(26) NOT NULL COMMENT 'RES_ATTR_NAME',
  `RES_ATTR_CODE` bigint(12) NOT NULL COMMENT 'RES_ATTR_CODE',
  `STATUS` varchar(2) NOT NULL COMMENT '状态：U有效、E无效',
  `REMARK` varchar(26) DEFAULT NULL COMMENT 'REMARK',
  `RES_STORE_TYPE` varchar(5) NOT NULL COMMENT 'RES_STORE_TYPE',
  PRIMARY KEY (`RES_ATTR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仓库属性配置表';

/*Table structure for table `res_store_list` */

DROP TABLE IF EXISTS `res_store_list`;

CREATE TABLE `res_store_list` (
  `LIST_ID` bigint(12) NOT NULL COMMENT '清单',
  `IO_OP_ID` bigint(12) DEFAULT NULL COMMENT '盘点员工ID',
  `CHECK_TIME` datetime DEFAULT NULL COMMENT '盘点时间',
  `OPER_OWN_ORG_ID` bigint(12) DEFAULT NULL COMMENT '盘点员工归属组织',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市编号',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `LIQ_ORG_ID` bigint(12) DEFAULT NULL COMMENT '盘点组织',
  PRIMARY KEY (`LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对于资源规格在仓库的盘点结果（按租户分表）';

/*Table structure for table `res_store_list_21` */

DROP TABLE IF EXISTS `res_store_list_21`;

CREATE TABLE `res_store_list_21` (
  `LIST_ID` bigint(12) NOT NULL,
  `IO_OP_ID` bigint(12) DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `OPER_OWN_ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `LIQ_ORG_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_store_list_dtl` */

DROP TABLE IF EXISTS `res_store_list_dtl`;

CREATE TABLE `res_store_list_dtl` (
  `LIST_ID` bigint(12) NOT NULL COMMENT '库存盘点记录单',
  `RES_LIST_ID` bigint(12) NOT NULL COMMENT '库存盘点记录明细单编号',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `ON_WAY_AMOUNT` bigint(12) DEFAULT NULL COMMENT '在途量',
  `USED_AMOUNT` bigint(12) DEFAULT NULL COMMENT 'USED_AMOUNT',
  `SUM_AMOUNT` bigint(12) DEFAULT NULL COMMENT 'SUM_AMOUNT',
  `REAL_AMOUNT` bigint(12) DEFAULT NULL COMMENT 'REAL_AMOUNT',
  `DIFF_AMOUNT` bigint(12) DEFAULT NULL COMMENT 'DIFF_AMOUNT',
  `RES_STORE_ID` bigint(12) NOT NULL COMMENT '资源仓库编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市编号',
  PRIMARY KEY (`RES_LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存盘点清单详情（按租户分表）';

/*Table structure for table `res_store_list_dtl_21` */

DROP TABLE IF EXISTS `res_store_list_dtl_21`;

CREATE TABLE `res_store_list_dtl_21` (
  `LIST_ID` bigint(12) NOT NULL,
  `RES_LIST_ID` bigint(12) NOT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `ON_WAY_AMOUNT` bigint(12) DEFAULT NULL,
  `USED_AMOUNT` bigint(12) DEFAULT NULL,
  `SUM_AMOUNT` bigint(12) DEFAULT NULL,
  `REAL_AMOUNT` bigint(12) DEFAULT NULL,
  `DIFF_AMOUNT` bigint(12) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) NOT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`RES_LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_store_org_rel` */

DROP TABLE IF EXISTS `res_store_org_rel`;

CREATE TABLE `res_store_org_rel` (
  `SEQ_ID` bigint(12) NOT NULL COMMENT '主键',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '有权使用组织',
  `OPER_RULE_TYPE` varchar(3) DEFAULT NULL COMMENT '操作权限类型:\n1可查看\n2可使用（预占、实占）\n3可操作（调配、下发、收回）',
  `ORG_TYPE` varchar(3) DEFAULT NULL COMMENT '组织类型.暂时未用',
  `POOL_ORG_NAME` varchar(40) DEFAULT NULL COMMENT '共享池名称',
  `POOL_ORG_DESC` varchar(100) DEFAULT NULL COMMENT '共享池描述',
  `RES_TYPE` varchar(3) DEFAULT NULL COMMENT '资源类型\n10号码\n11SIM卡\n12有价卡\n16终端',
  `USE_TYPE` varchar(3) DEFAULT NULL COMMENT '使用类型.暂时未用',
  `BUSI_ID` varchar(8) DEFAULT NULL COMMENT '业务代码',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '生成日期 CREATE_DATE',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `EXT1` varchar(25) DEFAULT NULL COMMENT '扩展字段1',
  `EXT2` varchar(25) DEFAULT NULL COMMENT '扩展字段2',
  `EXT3` varchar(25) DEFAULT NULL COMMENT '扩展字段3',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_STORE_ORG_REL_1` (`RES_STORE_ID`),
  KEY `IDX_RES_STORE_ORG_REL_2` (`SEC_ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仓库组织对应关系表\nRES_STORE_ORG_REL\n（按照租户分表）';

/*Table structure for table `res_store_org_rel_21` */

DROP TABLE IF EXISTS `res_store_org_rel_21`;

CREATE TABLE `res_store_org_rel_21` (
  `SEQ_ID` bigint(12) NOT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) DEFAULT NULL,
  `OPER_RULE_TYPE` varchar(3) DEFAULT NULL,
  `ORG_TYPE` varchar(3) DEFAULT NULL,
  `POOL_ORG_NAME` varchar(40) DEFAULT NULL,
  `POOL_ORG_DESC` varchar(100) DEFAULT NULL,
  `RES_TYPE` varchar(3) DEFAULT NULL,
  `USE_TYPE` varchar(3) DEFAULT NULL,
  `BUSI_ID` varchar(8) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(25) DEFAULT NULL,
  `EXT2` varchar(25) DEFAULT NULL,
  `EXT3` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_STORE_ORG_REL_2_21` (`SEC_ORG_ID`),
  KEY `IDX_RES_STORE_ORG_REL_1_21` (`RES_STORE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_store_type` */

DROP TABLE IF EXISTS `res_store_type`;

CREATE TABLE `res_store_type` (
  `RES_STORE_TYPE_ID` varchar(5) NOT NULL COMMENT '仓库类型',
  `RES_STORE_TYPE_NAME` varchar(100) NOT NULL COMMENT '仓库类型名称',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '说明',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作流水',
  `STATE` varchar(3) NOT NULL COMMENT '状态:U有效、E无效',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '创建者',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理时间',
  PRIMARY KEY (`RES_STORE_TYPE_ID`,`RES_STORE_TYPE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理实物部分仓库类型信息（按照租户分表）';

/*Table structure for table `res_table_mapping` */

DROP TABLE IF EXISTS `res_table_mapping`;

CREATE TABLE `res_table_mapping` (
  `RES_CODE` varchar(30) NOT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `TABLE_NAME` varchar(200) DEFAULT NULL COMMENT '物理表名',
  `ROUTE_PARAM1` varchar(50) DEFAULT NULL COMMENT '如地市编码571',
  `ROUTE_PARAM2` varchar(50) DEFAULT NULL COMMENT '如资源类型编码。对于多个类型要使用一张物理表的，使用同一个资源类型即可。',
  `STATE` varchar(3) NOT NULL COMMENT '状态:U有效、E无效',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '对应员工表',
  PRIMARY KEY (`RES_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `res_take_stock` */

DROP TABLE IF EXISTS `res_take_stock`;

CREATE TABLE `res_take_stock` (
  `RES_TAKE_STOCK_ID` bigint(14) NOT NULL COMMENT '暂时未用',
  `RES_ID` varchar(50) DEFAULT NULL COMMENT '暂时未用',
  `RES_RELAT_ID` varchar(50) DEFAULT NULL COMMENT '暂时未用',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_NUMBER_HLR` varchar(7) DEFAULT NULL COMMENT '暂时未用',
  `CHECK_TYPE` varchar(3) DEFAULT NULL COMMENT '0正常、1代表盘赢、2代表盘亏',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `BUSI_ID` varchar(12) DEFAULT NULL COMMENT '业务编码',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`RES_TAKE_STOCK_ID`),
  KEY `IDX_RES_TAKE_STOCK_1` (`RES_ID`),
  KEY `IDX_RES_TAKE_STOCK_2` (`RES_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源盘点记录表';

/*Table structure for table `res_tem_apply_order` */

DROP TABLE IF EXISTS `res_tem_apply_order`;

CREATE TABLE `res_tem_apply_order` (
  `APPLY_ORDER_ID` bigint(12) NOT NULL COMMENT '申请单号',
  `ORDER_TYPE` bigint(2) DEFAULT NULL COMMENT '订单类型,根据business_id区分',
  `PARENT_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '父结点单号',
  `START_DATE` datetime NOT NULL COMMENT '开始时间',
  `END_DATE` datetime NOT NULL COMMENT '结束时间',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格',
  `CON_AMOUNT` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `REAL_AMOUNT` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '申请数量',
  `TRADE_ID` bigint(12) DEFAULT NULL COMMENT '品牌编码',
  `PROVIDER` varchar(30) DEFAULT NULL COMMENT '供应商',
  `MANAGE_STATUS` varchar(3) NOT NULL COMMENT '订单状态 1初始、2完成',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '操作流水',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '组织编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地州编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `EXT4` varchar(100) DEFAULT NULL COMMENT '备用字段4',
  `EXT5` varchar(100) DEFAULT NULL COMMENT '备用字段5',
  `EXT6` datetime DEFAULT NULL COMMENT '备用字段6',
  `EXT7` datetime DEFAULT NULL COMMENT '备用字段7',
  PRIMARY KEY (`APPLY_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端需求申请表（按租户分表）';

/*Table structure for table `res_tem_apply_order_dtl` */

DROP TABLE IF EXISTS `res_tem_apply_order_dtl`;

CREATE TABLE `res_tem_apply_order_dtl` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '需求明细标识',
  `APPLY_ORDER_ID` bigint(12) NOT NULL COMMENT '需求订单标识',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '操作流水',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态 1初始 2完成',
  `CON_AMOUNT` bigint(12) DEFAULT NULL COMMENT '确认供货量',
  `REAL_AMOUNT` bigint(12) DEFAULT NULL COMMENT '实际供货量',
  `AMOUNT` bigint(12) NOT NULL COMMENT '申请数量',
  `PROVIDER_ID` varchar(20) DEFAULT NULL COMMENT '供应商标识',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地州编码',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '资源接收',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `EXT4` varchar(100) DEFAULT NULL COMMENT '备用字段4',
  `EXT5` varchar(100) DEFAULT NULL COMMENT '备用字段5',
  `EXT6` datetime DEFAULT NULL COMMENT '备用字段6',
  `EXT7` datetime DEFAULT NULL COMMENT '备用字段7',
  PRIMARY KEY (`ORDER_DTL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端需求申请明细（按租户分表）';

/*Table structure for table `res_tem_fee_type` */

DROP TABLE IF EXISTS `res_tem_fee_type`;

CREATE TABLE `res_tem_fee_type` (
  `FEE_TYPE_ID` bigint(12) NOT NULL COMMENT '标识',
  `PARTNER_ID` bigint(12) NOT NULL COMMENT '平台商标识',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '资源规格',
  `FEE_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员工',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作编码',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '开始时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `EXT4` varchar(100) DEFAULT NULL COMMENT '备用字段4',
  PRIMARY KEY (`FEE_TYPE_ID`),
  KEY `IDX_RES_TEM_FEE_TYPE_1` (`RES_SPEC_ID`),
  KEY `IDX_RES_TEM_FEE_TYPE_2` (`PARTNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='平台商和终端型号关系';

/*Table structure for table `res_tem_partner_rel` */

DROP TABLE IF EXISTS `res_tem_partner_rel`;

CREATE TABLE `res_tem_partner_rel` (
  `ID` bigint(12) NOT NULL COMMENT '标识',
  `PARTNER_ID` bigint(12) NOT NULL COMMENT '平台商标识',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '资源规格',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员工',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作编码',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '开始时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `EXT4` varchar(100) DEFAULT NULL COMMENT '备用字段4',
  `EXT5` varchar(100) DEFAULT NULL COMMENT '备用字段5',
  `EXT6` datetime DEFAULT NULL COMMENT '备用字段6',
  `EXT7` datetime DEFAULT NULL COMMENT '备用字段7',
  PRIMARY KEY (`ID`),
  KEY `IDX_RES_TEM_PARTNER_REAL_1` (`RES_SPEC_ID`),
  KEY `IDX_RES_TEM_PARTNER_REAL_2` (`PARTNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='平台商和终端型号关系\n（按租户分表）';

/*Table structure for table `res_temi_child_order` */

DROP TABLE IF EXISTS `res_temi_child_order`;

CREATE TABLE `res_temi_child_order` (
  `CHILD_ORDER_ID` bigint(12) NOT NULL COMMENT 'CHILD_ORDER_ID',
  `PARENT_ORDER_ID` bigint(12) NOT NULL COMMENT 'order_id = PARENT_ORDER_ID',
  `FACTORY_ID` bigint(12) DEFAULT NULL COMMENT 'FACTORY_ID',
  `TEMINAL_TYPE` varchar(20) DEFAULT NULL COMMENT 'TEMINAL_TYPE',
  `COLOR_ID` varchar(3) DEFAULT NULL COMMENT '1黑色\n2红色\n3黄色\n4灰色\n5默认',
  `CONFIG_TYPE` varchar(3) DEFAULT NULL COMMENT 'CONFIG_TYPE',
  `PER_NUM` bigint(12) DEFAULT NULL COMMENT 'PER_NUM',
  `PLAN_NUM` bigint(12) DEFAULT NULL COMMENT 'PLAN_NUM',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT 'MANAGE_STATUS\n记录关联资源，0：终端手机；1：零配件；',
  `FUNDS_STATUS` varchar(3) DEFAULT NULL COMMENT 'FUNDS_STATUS',
  `ARRIVE_STATUS` varchar(3) DEFAULT NULL COMMENT 'ARRIVE_STATUS',
  `ARRIVE_DATE` datetime DEFAULT NULL COMMENT 'ARRIVE_DATE',
  `LATEST_DATE` datetime DEFAULT NULL COMMENT 'LATEST_DATE',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `RES_STATUS` varchar(3) NOT NULL COMMENT '暂时未用',
  `DONE_CODE` bigint(14) NOT NULL COMMENT '受理编号',
  `DONE_DATE` datetime NOT NULL COMMENT 'DONE_DATE',
  `OP_ID` bigint(12) NOT NULL COMMENT 'OP_ID',
  `OP_ORG` bigint(12) NOT NULL COMMENT 'OP_ORG',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '预留',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '预留',
  PRIMARY KEY (`CHILD_ORDER_ID`,`PARENT_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='RES_TEMI_CHILD_ORDER\ngtermi_child_order';

/*Table structure for table `res_temi_function` */

DROP TABLE IF EXISTS `res_temi_function`;

CREATE TABLE `res_temi_function` (
  `ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `FACTORY_ID` bigint(12) NOT NULL COMMENT 'FACTORY_ID',
  `TYPE_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `FUNCTION_ID` bigint(12) NOT NULL COMMENT 'FUNCTION_ID',
  `REC_STATUS` varchar(3) NOT NULL COMMENT 'REC_STATUS',
  `EFF_DATE` datetime NOT NULL COMMENT 'EFF_DATE',
  `EXP_DATE` datetime NOT NULL COMMENT '暂时未用',
  `DONE_DATE` datetime NOT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) NOT NULL COMMENT '操作员',
  `OP_ORG` bigint(12) NOT NULL COMMENT '组织代码',
  `DONE_CODE` bigint(12) NOT NULL COMMENT '受理编号',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '预留',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '预留',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='RES_TEMI_FUNCTION';

/*Table structure for table `res_temi_itf_log` */

DROP TABLE IF EXISTS `res_temi_itf_log`;

CREATE TABLE `res_temi_itf_log` (
  `ID` bigint(30) NOT NULL COMMENT '报文标识',
  `ACTIVITY_CODE` varchar(50) NOT NULL COMMENT '报文编码',
  `IN_MESSAGE` text COMMENT '下发内容',
  `OUT_MESSAGE` text COMMENT '上发内容',
  `DONE_CODE` bigint(30) DEFAULT NULL COMMENT '操作编码',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `NOTES` varchar(256) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(256) DEFAULT NULL COMMENT '备用字段1',
  `EXT2` varchar(256) DEFAULT NULL COMMENT '备用字段2',
  `EXT3` varchar(256) DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`ID`,`ACTIVITY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端报文日志表（按照租户分表）';

/*Table structure for table `res_temi_order_info` */

DROP TABLE IF EXISTS `res_temi_order_info`;

CREATE TABLE `res_temi_order_info` (
  `ORDER_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `ORDER_TYPE` varchar(20) DEFAULT NULL COMMENT '暂时未用',
  `ORDER_ATTRIBUTE` varchar(20) DEFAULT NULL COMMENT '暂时未用',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `REC_STATUS` varchar(3) NOT NULL COMMENT '暂时未用',
  `DONE_DATE` datetime NOT NULL COMMENT '受理日期',
  `OP_ID` bigint(12) NOT NULL COMMENT '操作员',
  `OP_ORG` bigint(12) NOT NULL COMMENT '组织代码',
  `DONE_CODE` bigint(14) NOT NULL COMMENT '受理编号',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '预留',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '预留',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='gtermi_order_info = RES_TEMI_ORDER_INFO';

/*Table structure for table `res_temi_order_relat` */

DROP TABLE IF EXISTS `res_temi_order_relat`;

CREATE TABLE `res_temi_order_relat` (
  `RELATE_ID` bigint(12) NOT NULL COMMENT 'RELATE_ID',
  `ORDER_ID` bigint(12) DEFAULT NULL COMMENT 'activity_no = ORDER_ID',
  `RELATED_ID` bigint(12) DEFAULT NULL COMMENT 'RELATED_ID',
  `RELATE_TYPE` varchar(20) DEFAULT NULL COMMENT 'RELATE_TYPE',
  `REC_STATUS` varchar(3) DEFAULT NULL COMMENT 'REC_STATUS',
  `DONE_DATE` datetime NOT NULL COMMENT 'DONE_DATE',
  `OP_ID` bigint(12) NOT NULL COMMENT '操作员',
  `OP_ORG` bigint(12) NOT NULL COMMENT '组织代码',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '预留',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '预留',
  PRIMARY KEY (`RELATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='RES_TEMI_ORDER_RELAT\n描述订单的关系信息，订单与组织的关系，订单与机型的关系，\ngtermi_order_relat';

/*Table structure for table `res_temi_purchase_plan` */

DROP TABLE IF EXISTS `res_temi_purchase_plan`;

CREATE TABLE `res_temi_purchase_plan` (
  `PURCHASE_INFO_ID` bigint(12) NOT NULL COMMENT 'PURCHASE_INFO_ID',
  `START_DATE` datetime NOT NULL COMMENT '采购开始日期\nsales_date = BUY_DATE',
  `END_DATE` datetime NOT NULL COMMENT '采购结束日期\nexchange_time = EXCHANGE_DATE',
  `PURCHASE_TYPE` varchar(3) DEFAULT NULL COMMENT '采购方式:1集采、 2自采',
  `PURCHASE_EXPLAIN` varchar(50) DEFAULT NULL COMMENT '采购说明',
  `TEMI_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '监控机型\ngtermi_type_id = TEMI_TYPE_ID',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '规格编号',
  `STATUS` varchar(3) NOT NULL COMMENT '状态:U有效、E无效',
  `CATEGORY_CODE` varchar(20) DEFAULT NULL COMMENT '集采类别编码',
  `CATEGORY_NAME` varchar(200) DEFAULT NULL COMMENT '集采类别名称',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `OUT_DONECODE` varchar(50) DEFAULT NULL COMMENT '外部流水号:\n4位平台代码+8位业务编码（BIPCode）+14位组包时间YYYYMMDDHH24MMSS+6位流水号（定长），序号从000001开始，增量步长为1',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '修改日期:\nmodification_date = DONE_DATE',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '组织代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县区',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '预留1',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '预留2',
  `EXT3` varchar(100) DEFAULT NULL COMMENT '预留3',
  `EXT4` varchar(100) DEFAULT NULL COMMENT '预留4',
  `EXT5` varchar(100) DEFAULT NULL COMMENT '预留5',
  `EXT6` varchar(100) DEFAULT NULL COMMENT '预留6',
  `EXT7` varchar(100) DEFAULT NULL COMMENT '预留7',
  `EXT8` varchar(100) DEFAULT NULL COMMENT '预留8',
  `EXT_DATE1` datetime DEFAULT NULL COMMENT '预留日期1 modification_date = DONE_DATE',
  `EXT_DATE2` datetime DEFAULT NULL COMMENT '预留日期2 modification_date = DONE_DATE',
  PRIMARY KEY (`PURCHASE_INFO_ID`),
  KEY `IDX_RES_TEMI_PLAN_1` (`START_DATE`,`END_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端申请计划信息（按照租户分表）\ngtermi_purchase_info = RES_TEMI_PURCHASE_PLAN';

/*Table structure for table `res_temi_purchase_plan_dtl` */

DROP TABLE IF EXISTS `res_temi_purchase_plan_dtl`;

CREATE TABLE `res_temi_purchase_plan_dtl` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '操作明细编号',
  `PURCHASE_INFO_ID` bigint(12) NOT NULL COMMENT '采购信息ID',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `MATERIAL_CODE` varchar(20) DEFAULT NULL COMMENT '机型物料编码',
  `TERMINAL_NAME` varchar(200) DEFAULT NULL COMMENT '机型名称',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `USE_TYPE` varchar(3) DEFAULT NULL COMMENT '使用类型:1营业、2代销',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态 1002 完好',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '管理状态 1初始',
  `TERMINAL_FEE` bigint(12) DEFAULT NULL COMMENT '采购价格=PurchasePrice',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '数量:\nMission=如无任务量或机型为非指定机型，填0。',
  `DISTR_AMOUNT` varchar(25) DEFAULT NULL COMMENT '申请数量',
  `RCV_AMOUNT` varchar(25) DEFAULT NULL COMMENT '实际申请数量',
  `REJECT_AMOUNT` varchar(25) DEFAULT NULL COMMENT '拒绝数量',
  `TAKE_DATE` datetime DEFAULT NULL COMMENT '计划提货日期',
  `QUOTAION` bigint(12) DEFAULT NULL COMMENT '提货数量',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `RECEIVER` bigint(12) DEFAULT NULL COMMENT '领用人',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT` varchar(100) DEFAULT NULL COMMENT '扩展字段1',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`ORDER_DTL_ID`),
  KEY `IDX_RES_TEMI_PLAN_DTL_1` (`PURCHASE_INFO_ID`),
  KEY `IDX_RES_TEMI_PLAN_DTL_2` (`RES_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端采购计划明细信息（按照租户分表）';

/*Table structure for table `res_temi_trade` */

DROP TABLE IF EXISTS `res_temi_trade`;

CREATE TABLE `res_temi_trade` (
  `TRADE_ID` bigint(12) NOT NULL COMMENT '品牌标识',
  `TRADE_NAME` varchar(30) NOT NULL COMMENT '品牌名称',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '开始时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '操作流水',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '操作组织',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地州编码',
  `EXT1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `EXT2` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  PRIMARY KEY (`TRADE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端品牌表';

/*Table structure for table `res_temp_sim_ki` */

DROP TABLE IF EXISTS `res_temp_sim_ki`;

CREATE TABLE `res_temp_sim_ki` (
  `IMSI` varchar(20) NOT NULL COMMENT 'IMSI号',
  `KI` varchar(256) DEFAULT NULL COMMENT 'KI值',
  `ENC_KI` varchar(40) DEFAULT NULL COMMENT 'ENC_KI',
  `KI_STS` bigint(2) DEFAULT NULL COMMENT 'KI状态 1有效，0无效',
  `OPC` varchar(256) DEFAULT NULL COMMENT '1-2G;2-3G',
  `RSRV_STR1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `RSRV_TAG3` char(1) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_TAG2` char(1) DEFAULT NULL COMMENT '备用字段4',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '批次号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地州编码',
  PRIMARY KEY (`IMSI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='作用:存入CR3文件数据,（按地市分表）';

/*Table structure for table `res_temp_sim_ki_21` */

DROP TABLE IF EXISTS `res_temp_sim_ki_21`;

CREATE TABLE `res_temp_sim_ki_21` (
  `IMSI` varchar(20) NOT NULL,
  `KI` varchar(256) DEFAULT NULL,
  `ENC_KI` varchar(40) DEFAULT NULL,
  `KI_STS` bigint(2) DEFAULT NULL,
  `OPC` varchar(256) DEFAULT NULL,
  `RSRV_STR1` varchar(100) DEFAULT NULL,
  `RSRV_STR2` varchar(100) DEFAULT NULL,
  `RSRV_TAG3` char(1) DEFAULT NULL,
  `RSRV_TAG2` char(1) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `DONE_CODE` bigint(25) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`IMSI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_term_prperties_jingfen` */

DROP TABLE IF EXISTS `res_term_prperties_jingfen`;

CREATE TABLE `res_term_prperties_jingfen` (
  `IMEI_CODE` varchar(64) DEFAULT NULL COMMENT 'IMEI编号',
  `FACTROY_NAME` varchar(64) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_NAME` varchar(64) DEFAULT NULL COMMENT 'RES_SPEC_NAME',
  `FUNC_STR` varchar(128) DEFAULT NULL COMMENT '暂时未用',
  `IMPORT_DATE` datetime DEFAULT NULL COMMENT 'IMEI编号',
  `EXT1` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  KEY `IDX_RES_PRPERTIES_JINGFEN` (`RES_SPEC_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对应 老系统表 TERM_PRPERTIES_FROM_JINGFEN\n对功能点：CBOSS接口';

/*Table structure for table `res_termi_contract` */

DROP TABLE IF EXISTS `res_termi_contract`;

CREATE TABLE `res_termi_contract` (
  `CONTRACT_ID` bigint(14) NOT NULL COMMENT '操作类型：0－客户激活指令下发 1－客户赠费指令下发',
  `CONTRACT_CODE` varchar(60) DEFAULT NULL COMMENT '激活客户手机号',
  `MATERIAL_CODE` varchar(20) DEFAULT NULL COMMENT '激活绑定终端IMEI',
  `CUSTOMER_BRAND` varchar(2) DEFAULT NULL COMMENT '终端发货归属省编码：从省编码表中取值',
  `COMPANY_CODE` varchar(3) DEFAULT NULL COMMENT '终端机型对应物料编码：从定制终端信息数据下发文件接口的MaterialCode中取值',
  `CONTRACT_TYPE` varchar(2) DEFAULT NULL COMMENT '激活的密码卡序列号',
  `RESOURCE_TYPE` varchar(3) DEFAULT NULL COMMENT '编码',
  `IS_MANDATORY` varchar(3) DEFAULT NULL COMMENT '密码导入一级系统的时间',
  `IS_SINGLECHOICE` varchar(3) DEFAULT NULL COMMENT '赠费优惠方案编码：从激活优惠方案数据接口的PackageCode中取值',
  `CHOICE_MAXNUM` varchar(5) DEFAULT NULL COMMENT '申请时间',
  `RESOURCE_CODE` varchar(15) DEFAULT NULL COMMENT '编码',
  `IS_VALID` varchar(2) DEFAULT NULL COMMENT '暂时未用',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市编码！',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT4` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT5` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`CONTRACT_ID`),
  KEY `IDX_RES_TERMI_CONTRACT_1` (`CONTRACT_CODE`),
  KEY `IDX_RES_TERMI_CONTRACT_2` (`MATERIAL_CODE`),
  KEY `IDX_RES_TERMI_CONTRACT_3` (`RESOURCE_TYPE`),
  KEY `IDX_RES_TERMI_CONTRACT_4` (`RESOURCE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合约计划数据';

/*Table structure for table `res_termi_mark_resource` */

DROP TABLE IF EXISTS `res_termi_mark_resource`;

CREATE TABLE `res_termi_mark_resource` (
  `RESOURCE_CODE` varchar(15) NOT NULL COMMENT '操作类型：0－客户激活指令下发 1－客户赠费指令下发',
  `TARIFF_CODE` varchar(18) DEFAULT NULL COMMENT '激活客户手机号',
  `RESOURCE_TYPE` varchar(3) DEFAULT NULL COMMENT '激活绑定终端IMEI',
  `CUSTOMER_BRAND` varchar(2) DEFAULT NULL COMMENT '终端发货归属省编码：从省编码表中取值',
  `RESOURCE_NAME` varchar(255) DEFAULT NULL COMMENT '终端机型对应物料编码：从定制终端信息数据下发文件接口的MaterialCode中取值',
  `RESOURCE_DESCRIPTION` varchar(1000) DEFAULT NULL COMMENT '激活的密码卡序列号',
  `RESOURCE_PIC` varchar(255) DEFAULT NULL COMMENT '密码导入一级系统的时间',
  `RESOURCE_DEMO` varchar(200) DEFAULT NULL COMMENT '赠费优惠方案编码：从激活优惠方案数据接口的PackageCode中取值',
  `RESOURCE_TAB` varchar(200) DEFAULT NULL COMMENT '申请时间',
  `RESOURCE_RESTRICTION` varchar(1000) DEFAULT NULL COMMENT '暂时未用',
  `IS_VALID` varchar(2) DEFAULT NULL COMMENT '暂时未用',
  `RESOURCE_ORIGIN` varchar(3) DEFAULT NULL COMMENT '暂时未用',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '序列号！',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市编码！',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT4` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT5` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`RESOURCE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `res_termi_pay_regulation` */

DROP TABLE IF EXISTS `res_termi_pay_regulation`;

CREATE TABLE `res_termi_pay_regulation` (
  `REGULATION_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `REGULATION_CODE` varchar(60) DEFAULT NULL COMMENT '规则全网统一编码',
  `MATERIAL_CODE` varchar(20) DEFAULT NULL COMMENT '终端机型物料编码',
  `COMPANY_CODE` varchar(10) DEFAULT NULL COMMENT '渠道 编码表中取值:渠道机构编码',
  `GRADE_LOW_LIMIT` bigint(20) DEFAULT NULL COMMENT '暂时未用',
  `CONTRACT_TYPE` varchar(10) DEFAULT NULL COMMENT '暂时未用',
  `COMPENSATE_FEE` bigint(12) DEFAULT NULL COMMENT '单位：元',
  `DEPOSIT_FEE` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `LAST_RETURN` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `TRANS_TYPE` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `AVERAGE_RETURN` bigint(12) DEFAULT NULL COMMENT '单位：元',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `PROMISED_URATION` bigint(12) DEFAULT NULL COMMENT '客户承诺捆绑时长',
  `EXT1` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT4` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT5` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`REGULATION_ID`),
  KEY `IDX_RES_TER_REGULATION_1` (`REGULATION_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `res_termi_prestock_fail` */

DROP TABLE IF EXISTS `res_termi_prestock_fail`;

CREATE TABLE `res_termi_prestock_fail` (
  `SEQ_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `IMEI` varchar(30) DEFAULT NULL COMMENT 'IMEI编号',
  `OPR_NUMB` varchar(50) DEFAULT NULL COMMENT 'OPR_NUMB',
  `RET_OPR_NUMB` varchar(50) DEFAULT NULL COMMENT 'RET_OPR_NUMB',
  `BATCH_ID` varchar(50) DEFAULT NULL COMMENT '批次号',
  `BIP_CODE` varchar(50) DEFAULT NULL COMMENT '业务编码',
  `ACTIVITY_CODE` varchar(50) DEFAULT NULL COMMENT '交易编码',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `TERMINAL_NAME` varchar(200) DEFAULT NULL COMMENT '暂时未用',
  `FACTORY_ID` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `COLOR_ID` bigint(12) DEFAULT NULL COMMENT '1黑色\n2红色\n3黄色\n4灰色\n5默认',
  `CONFIG_ID` bigint(12) DEFAULT NULL COMMENT '1标准\n2豪华\n3简配',
  `TERMI_SRC_ID` bigint(12) DEFAULT NULL COMMENT 'TERMI_SRC_ID',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务代码',
  `USE_RANGE` bigint(12) DEFAULT NULL COMMENT '如果是终端的是时候：1601.本地1602.集团',
  `SALES_CHANNEL` varchar(3) DEFAULT NULL COMMENT '销售渠道：1营业厅 2代理商',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT 'IMEI_STATUS\n  imei_status = 3 and error_code=1111 上报成功，imei_status=1是初始状态，imei_status=2，到货文件文件上报之后更新预入库表中的状态，已上报， imei_status = 3 是省公司下发',
  `UPLOAD_FILE` varchar(250) DEFAULT NULL COMMENT '上传文件名',
  `ERROR_CODE` varchar(50) DEFAULT NULL COMMENT 'ERROR_CODE',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '数量',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT 'DONE_DOCE',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT 'OP_ORG',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `HOLD_COL1` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL2` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL3` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL4` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL5` varchar(200) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL6` varchar(200) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_PRESTOCK_FAIL_1` (`IMEI`),
  KEY `IDX_RES_PRESTOCK_FAIL_2` (`CREATE_DATE`,`OP_ID`),
  KEY `IDX_RES_PRESTOCK_FAIL_3` (`DONE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端预入库失败表（按照租户分表）';

/*Table structure for table `res_termi_prestock_success` */

DROP TABLE IF EXISTS `res_termi_prestock_success`;

CREATE TABLE `res_termi_prestock_success` (
  `SEQ_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `IMEI` varchar(30) DEFAULT NULL COMMENT 'IMEI编号',
  `OPR_NUMB` varchar(50) DEFAULT NULL COMMENT 'OPR_NUMB',
  `RET_OPR_NUMB` varchar(50) DEFAULT NULL COMMENT 'RET_OPR_NUMB',
  `BATCH_ID` varchar(50) DEFAULT NULL COMMENT '批次号',
  `BIP_CODE` varchar(50) DEFAULT NULL COMMENT '业务编码',
  `ACTIVITY_CODE` varchar(50) DEFAULT NULL COMMENT '交易编码',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `TERMINAL_NAME` varchar(200) DEFAULT NULL COMMENT '暂时未用',
  `FACTORY_ID` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `COLOR_ID` bigint(12) DEFAULT NULL COMMENT '1黑色\n2红色\n3黄色\n4灰色\n5默认',
  `CONFIG_ID` bigint(12) DEFAULT NULL COMMENT '1标准\n2豪华\n3简配',
  `TERMI_SRC_ID` bigint(12) DEFAULT NULL COMMENT 'TERMI_SRC_ID',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务代码',
  `USE_RANGE` bigint(12) DEFAULT NULL COMMENT '如果是终端的是时候：1601.本地1602.集团',
  `SALES_CHANNEL` varchar(3) DEFAULT NULL COMMENT '销售渠道：1营业厅 2代理商',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT 'IMEI_STATUS\n  imei_status = 3 and error_code=1111 上报成功，imei_status=1是初始状态，imei_status=2，到货文件文件上报之后更新预入库表中的状态，已上报， imei_status = 3 是省公司下发',
  `UPLOAD_FILE` varchar(250) DEFAULT NULL COMMENT '上传文件名',
  `ERROR_CODE` varchar(50) DEFAULT NULL COMMENT 'ERROR_CODE',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '数量',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT 'DONE_DOCE',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT 'OP_ORG',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL1` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL2` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL3` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL4` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL5` varchar(200) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL6` varchar(200) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_PRESTOCK_SUCC_1` (`IMEI`),
  KEY `IDX_RES_PRESTOCK_SUCC_2` (`CREATE_DATE`,`OP_ID`),
  KEY `IDX_RES_PRESTOCK_SUCC_3` (`DONE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端预入库成功表（按照租户分表）';

/*Table structure for table `res_termi_prestock_upload` */

DROP TABLE IF EXISTS `res_termi_prestock_upload`;

CREATE TABLE `res_termi_prestock_upload` (
  `SEQ_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `IMEI` varchar(30) DEFAULT NULL COMMENT 'IMEI编号',
  `OPR_NUMB` varchar(50) DEFAULT NULL COMMENT 'OPR_NUMB',
  `RET_OPR_NUMB` varchar(50) DEFAULT NULL COMMENT 'RET_OPR_NUMB',
  `BATCH_ID` varchar(50) DEFAULT NULL COMMENT '批次号',
  `BIP_CODE` varchar(50) DEFAULT NULL COMMENT '业务编码',
  `ACTIVITY_CODE` varchar(50) DEFAULT NULL COMMENT '交易编码',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `TERMINAL_NAME` varchar(200) DEFAULT NULL COMMENT '暂时未用',
  `FACTORY_ID` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `COLOR_ID` bigint(12) DEFAULT NULL COMMENT '1黑色\n2红色\n3黄色\n4灰色\n5默认',
  `CONFIG_ID` bigint(12) DEFAULT NULL COMMENT '1标准\n2豪华\n3简配',
  `TERMI_SRC_ID` bigint(12) DEFAULT NULL COMMENT 'TERMI_SRC_ID',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '业务代码',
  `USE_RANGE` bigint(12) DEFAULT NULL COMMENT '如果是终端的是时候：1601.本地1602.集团',
  `SALES_CHANNEL` varchar(3) DEFAULT NULL COMMENT '销售渠道：1营业厅 2代理商',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '暂时未用',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT 'IMEI_STATUS\n  imei_status = 3 and error_code=1111 上报成功，imei_status=1是初始状态，imei_status=2，到货文件文件上报之后更新预入库表中的状态，已上报， imei_status = 3 是省公司下发',
  `UPLOAD_FILE` varchar(250) DEFAULT NULL COMMENT '上传文件名',
  `ERROR_CODE` varchar(50) DEFAULT NULL COMMENT 'ERROR_CODE',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '数量',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT 'DONE_DOCE',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT 'OP_ORG',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `HOLD_COL1` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL2` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL3` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL4` varchar(100) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL5` varchar(200) DEFAULT NULL COMMENT '暂时未用',
  `HOLD_COL6` varchar(200) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_RES_PRESTOCK_UL_1` (`IMEI`),
  KEY `IDX_RES_PRESTOCK_UL_2` (`CREATE_DATE`,`OP_ID`),
  KEY `IDX_RES_PRESTOCK_UL_3` (`DONE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端预入库上报表\n对应 老系统表Gtermi_Imei_Prestock_Upload\n\nimei_status = 3 and error_code=1111 上报成功，\nimei_status=1是初始状态，\nimei_status=2，到货文件文件上报之后更新预入库表中的状态，已上报，\nimei_status = 3 是省公司下发\n（按照租户分表）';

/*Table structure for table `res_termi_price_attr` */

DROP TABLE IF EXISTS `res_termi_price_attr`;

CREATE TABLE `res_termi_price_attr` (
  `CUSTOMER_ATTRIBUTE_ID` bigint(12) NOT NULL COMMENT '主键',
  `MEASURE_CODE` varchar(60) DEFAULT NULL COMMENT '终端机型物料编码',
  `ATTRIBUTE_NAME` varchar(20) DEFAULT NULL COMMENT '属性名称',
  `ATTRIBUTE_VALUE` bigint(10) DEFAULT NULL COMMENT '属性值',
  `TRANS_TYPE` bigint(20) DEFAULT NULL COMMENT '条目变更类型：1－新增   2－修改',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '订单流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市编码',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员ID',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效起始日期，格式：YYYYMMDDHH24MMSS',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '生效截止日期，格式：YYYYMMDDHH24MMSS\n为空，表示未填入截止日期，表明零售价从起始日期开始一直生效',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`CUSTOMER_ATTRIBUTE_ID`),
  KEY `IDX_RES_TERMI_PRICE_ATTR_1` (`MEASURE_CODE`,`ATTRIBUTE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合约机零售价格属性';

/*Table structure for table `res_termi_retail_price` */

DROP TABLE IF EXISTS `res_termi_retail_price`;

CREATE TABLE `res_termi_retail_price` (
  `RETAIL_PRICE_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `MEASURECODE` varchar(60) DEFAULT NULL COMMENT '规则全网统一编码',
  `MATERIAL_CODE` varchar(20) DEFAULT NULL COMMENT '终端机型物料编码',
  `COMPANY_CODE` varchar(10) DEFAULT NULL COMMENT '暂时未用',
  `NET_PRICE` bigint(20) DEFAULT NULL COMMENT '单位：元',
  `CONTRACT_PRICE` bigint(20) DEFAULT NULL COMMENT '单位：元',
  `AGSETTLE_PRICE` bigint(12) DEFAULT NULL COMMENT '单位：元',
  `WSSETTLE_PRICE` bigint(12) DEFAULT NULL COMMENT '省买断结算价',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT4` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT5` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`RETAIL_PRICE_ID`),
  KEY `IDX_RES_TERMI_PRICE_1` (`MATERIAL_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂时未用';

/*Table structure for table `res_termi_storage_config` */

DROP TABLE IF EXISTS `res_termi_storage_config`;

CREATE TABLE `res_termi_storage_config` (
  `STORAGE_CONFIG_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `FACTORY_ID` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `MODEL_NAME` varchar(50) DEFAULT NULL COMMENT '上报机型',
  `COLOR_ID` bigint(12) DEFAULT NULL COMMENT '1黑色\n2红色\n3黄色\n4灰色\n5默认',
  `CONFIG_ID` bigint(12) DEFAULT NULL COMMENT '1标准\n2豪华\n3简配',
  `USE_RANGE` bigint(12) DEFAULT NULL COMMENT '如果是终端的是时候：1601.本地1602.集团',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '组织代码',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `EX1` bigint(12) DEFAULT NULL COMMENT '扩展字段',
  `EX2` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EX4` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EX3` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EX6` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EX5` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EX7` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EX8` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`STORAGE_CONFIG_ID`),
  KEY `IDX_RES_TERMI_STORAGE_CONFIG_1` (`RES_SPEC_ID`),
  KEY `IDX_RES_TERMI_STORAGE_CONFIG_2` (`MODEL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对应 老系统表CTERMI_STORAGE_CONFIG\n对功能点：跨省终端的汇总上报配置管理';

/*Table structure for table `res_termi_syn_framework` */

DROP TABLE IF EXISTS `res_termi_syn_framework`;

CREATE TABLE `res_termi_syn_framework` (
  `VENDORID` bigint(12) NOT NULL COMMENT '暂时未用',
  `FILEID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `FILE_NAME` varchar(255) DEFAULT NULL COMMENT '暂时未用',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `EX1` bigint(12) DEFAULT NULL COMMENT '扩展字段',
  `EX2` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `EX3` varchar(100) DEFAULT NULL COMMENT '扩展字段',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT '组织代码',
  `DONE_CODE` varchar(8) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`VENDORID`),
  KEY `IDX_RES_TERMI_SYN_FRAMEWORK_1` (`FILEID`),
  KEY `IDX_RES_TERMI_SYN_FRAMEWORK_2` (`FILE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端框架协议';

/*Table structure for table `res_terminal_cross` */

DROP TABLE IF EXISTS `res_terminal_cross`;

CREATE TABLE `res_terminal_cross` (
  `RES_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `BATCH_ID` varchar(50) DEFAULT NULL COMMENT '批次号',
  `FACTORY_ID` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `OLD_IMEI` varchar(50) DEFAULT NULL COMMENT '编码',
  `NEW_IMEI` varchar(50) DEFAULT NULL COMMENT '暂时未用',
  `USE_TYPE` varchar(3) DEFAULT NULL COMMENT '类别：1—到货窜货 2—销售窜货 3-退货 4-换货',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态: 1生成，2已上发，3待确认',
  `OPERATE_REASON` varchar(255) DEFAULT NULL COMMENT '操作原因',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT 'DONE_DOCE',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT 'OP_ID',
  `OP_ORG` bigint(12) DEFAULT NULL COMMENT 'OP_ORG',
  `REAL_REGION` varchar(6) DEFAULT NULL COMMENT '暂时未用',
  `SRC_REGION` varchar(6) DEFAULT NULL COMMENT '原归属地市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '区域编码',
  `EXT1` varchar(25) DEFAULT NULL COMMENT '扩展字段',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`RES_ID`),
  KEY `IDX_RES_TERMINAL_CROSS_1` (`OLD_IMEI`),
  KEY `IDX_RES_TERMINAL_CROSS_2` (`NEW_IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端库存异动管理表\n类别：\n1到货窜货 \n2销售窜货 \n3退货 \n4换货';

/*Table structure for table `res_terminal_his` */

DROP TABLE IF EXISTS `res_terminal_his`;

CREATE TABLE `res_terminal_his` (
  `ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次号',
  `IMEI` varchar(30) DEFAULT NULL COMMENT 'IMEI编号',
  `RES_CODE` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `MAT_CODE` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `FACTORY_ID` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `RES_RULE_ID` bigint(12) DEFAULT NULL COMMENT '编码',
  `COLOR_ID` bigint(12) DEFAULT NULL COMMENT '1黑色\n2红色\n3黄色\n4灰色\n5默认',
  `CONFIG_ID` bigint(12) DEFAULT NULL COMMENT '1标准\n2豪华\n3简配',
  `USE_RANGE` bigint(12) DEFAULT NULL COMMENT '如果是终端的是时候：1601.本地1602.集团',
  `SALES_CHANNEL` varchar(3) DEFAULT NULL COMMENT '销售渠道：1营业厅 2代理商',
  `SUPPLIER` bigint(12) DEFAULT NULL COMMENT '可以从res_partner 中调取',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '如果是普通资源：\nSH:1.初始，2预售，3选中，4占用，5冷冻，6空闲，7废弃，8保留，9在途，10可用 （可能没有2，6，8）\n\n\n如果是租机资源：\n2：可使用4：已租3：已预约5：暂停租用',
  `IS_TENANCY` varchar(8) DEFAULT NULL COMMENT '0.普通资源\n8:日韩美租机\n3：美洲漫游租机\n2：韩国漫游租机(日租金)\n1：日本漫游租机(日租金)、日本漫游租机(月租金)\n5：WCDMA3G日本漫游租机(日租金)、WCDMA3G日本漫游租机(月租金)\n9：世博租机TD号段\n7：世博租机普通号段',
  `TERMINAL_PRICE` bigint(20) DEFAULT NULL COMMENT '暂时未用',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '服务号码',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编码',
  `RES_STATUS` varchar(8) DEFAULT NULL COMMENT '10001--完好\n10002--损坏  \n10003--售出 \n10004--退机  \n10006--历史坏机  \n10007--开箱坏机',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '初始状态：0在库,1可预约',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '如果是终端数量就为1\n如果是配件数量不一定为1',
  `SN` varchar(50) DEFAULT NULL COMMENT '终端序列号',
  `ICC_ID` varchar(50) DEFAULT NULL COMMENT '终端ICCID号',
  `CHECK_RESULT` varchar(3) DEFAULT NULL COMMENT '终端IMEI校验结果\n0——校验失败，无法同步\n1——校验通过，同步成功',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `BUSINESS_ID` bigint(12) DEFAULT NULL COMMENT '如果是终端的时候：\n9016001 调拨申请单 具体参见ResConst.java',
  PRIMARY KEY (`ID`),
  KEY `IDX_RES_TERMINAL_HIS_1` (`RES_SPEC_ID`),
  KEY `IDX_RES_TERMINAL_HIS_2` (`RES_STORE_ID`),
  KEY `IDX_RES_TERMINAL_HIS_3` (`IMEI`),
  KEY `IDX_RES_TERMINAL_HIS_4` (`COLOR_ID`,`CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端信息历史表';

/*Table structure for table `res_terminal_offer` */

DROP TABLE IF EXISTS `res_terminal_offer`;

CREATE TABLE `res_terminal_offer` (
  `ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `TRANS_TYPE` bigint(20) DEFAULT NULL COMMENT '暂时未用',
  `PACKAGE_CODE` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `PACKAGE_TYPE` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `SALESPRICE` bigint(20) DEFAULT NULL COMMENT '暂时未用',
  `DEPOSIT` bigint(20) DEFAULT NULL COMMENT '暂时未用',
  `USED_LOYAL_NUM` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `FLOAT_LOYAL_NUM` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `CONSUME_LIMIT` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `JOIN_MONTH` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `COSTPMTMONEY` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `FLOAT_COST` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `COSTPMT_MONTH` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `FAREPMTMONEY` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `FLOAT_FARE` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `FAREPMT_MONTH` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `IS_VALUE_ADD` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `PACKAGE_NAME` varchar(100) DEFAULT NULL COMMENT '全网优惠方案名称',
  `IS_HQOPERATION` char(1) DEFAULT NULL COMMENT '全网统一操盘合约机方案标志',
  `LAST_FARE` bigint(12) DEFAULT NULL COMMENT '末月话费返还额',
  `AVERAGE_FARE` bigint(12) DEFAULT NULL COMMENT '每月平均话费返还额（除末月外）',
  `VALUE_ADD_COMMENT` varchar(200) DEFAULT NULL COMMENT '暂时未用',
  `PROMOTION_COMMENT` varchar(500) DEFAULT NULL COMMENT 'PROMOTION_CODE',
  `MATERIALCODE` varchar(2000) DEFAULT NULL COMMENT 'MATERIAL_CODE',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态：U有效、E无效',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(40) DEFAULT NULL COMMENT '备用字段',
  `EXT2` varchar(40) DEFAULT NULL COMMENT '备用字段',
  `EXT3` varchar(40) DEFAULT NULL COMMENT '备用字段',
  `EXT4` varchar(40) DEFAULT NULL COMMENT '备用字段',
  `EXT5` varchar(40) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端集团优惠方案下发表';

/*Table structure for table `res_terminal_origin` */

DROP TABLE IF EXISTS `res_terminal_origin`;

CREATE TABLE `res_terminal_origin` (
  `TERM_ID` bigint(12) NOT NULL COMMENT '主键标识',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次编号',
  `IMEI` varchar(30) DEFAULT NULL COMMENT 'IMEI编号',
  `RES_CODE` varchar(30) DEFAULT NULL COMMENT '资源编码',
  `RES_INVENTORY_ID` varchar(25) DEFAULT NULL COMMENT '库存编号',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '仓库编号',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `FACTORY_ID` varchar(30) DEFAULT NULL COMMENT '生产厂商',
  `RES_RULE_ID` bigint(12) DEFAULT NULL COMMENT '规则ID',
  `COLOR_ID` bigint(12) DEFAULT NULL COMMENT '1黑色\n            2红色\n            3黄色\n            4灰色\n            5默认',
  `CONFIG_ID` bigint(12) DEFAULT NULL COMMENT '1标准\n            2豪华\n            3简配',
  `USE_RANGE` bigint(12) DEFAULT NULL COMMENT '''用途：0: 普通设备、1: 备用设备、2：展示设备'';',
  `SALES_CHANNEL` varchar(3) DEFAULT NULL COMMENT '销售渠道：\n            1营业厅 \n            2代理商',
  `SUPPLIER` bigint(12) DEFAULT NULL COMMENT '可以从res_partner 中调取',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '如果是普通资源：\n            ''核心版本：0初始；1待售；3预占；4销售；5遗失；6报废；7保留；8损坏；9删除'';\n            \n            如果是租机资源：\n            2可使用\n            3已预约\n            4已租\n            5暂停租用',
  `IS_TENANCY` varchar(8) DEFAULT NULL COMMENT '是否租机资源:\n            0.普通资源\n            8日韩美租机\n            3美洲漫游租机\n            2韩国漫游租机(日租金)\n            1日本漫游租机(日租金)、日本漫游租机(月租金)\n            5WCDMA3G日本漫游租机(日租金)、WCDMA3G日本漫游租机(月租金)\n            9世博租机TD号段\n            7世博租机普通号段\n            ',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '号码',
  `TERMINAL_PRICE` bigint(20) DEFAULT NULL COMMENT '终端价格',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编码',
  `RES_STATUS` varchar(8) DEFAULT NULL COMMENT '资源状态:\n            1--完好\n            2--损坏  \n            3--售出 \n            4--退机  \n            6--历史坏机  \n            7--开箱坏机',
  `INSTORE_PRICE` bigint(20) DEFAULT NULL COMMENT '入库价格',
  `PAY_PRICE` bigint(20) DEFAULT NULL COMMENT '结算价格',
  `SALE_PRICE` bigint(20) DEFAULT NULL COMMENT '销售价格',
  `USE_TYPE` bigint(2) DEFAULT NULL COMMENT '使用类型：0在库,1可预约',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '如果是终端数量就为1\n            如果是配件数量不一定为1',
  `SN` varchar(50) DEFAULT NULL COMMENT '终端序列号',
  `PRE_DATE` datetime DEFAULT NULL COMMENT '预留时长',
  `ICC_ID` varchar(50) DEFAULT NULL COMMENT '终端ICCID号',
  `CHECK_RESULT` varchar(3) DEFAULT NULL COMMENT '终端IMEI校验结果:\n            0——校验失败，无法同步\n            1——校验通过，同步成功',
  `IN_TIME` datetime DEFAULT NULL,
  `IN_OP_ID` bigint(12) DEFAULT NULL,
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态1有效、0无效',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '操作流水号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TERM_ID`),
  UNIQUE KEY `IDX_RES_TERMINAL_ORIGIN_3` (`IMEI`),
  KEY `IDX_RES_TERMINAL_ORIGIN_1` (`RES_SPEC_ID`),
  KEY `IDX_RES_TERMINAL_ORIGIN_2` (`RES_STORE_ID`),
  KEY `IDX_RES_TERMINAL_ORIGIN_4` (`COLOR_ID`,`CONFIG_ID`),
  KEY `IDX_RES_TERMINAL_ORIGIN_5` (`SEC_ORG_ID`),
  KEY `IDX_RES_TERMINAL_ORIGIN_6` (`DONE_CODE`),
  KEY `IDX_RES_TERMINAL_ORIGIN_7` (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端未用信息表（按照租户分表）\n';

/*Table structure for table `res_terminal_origin_attr` */

DROP TABLE IF EXISTS `res_terminal_origin_attr`;

CREATE TABLE `res_terminal_origin_attr` (
  `EXT_ID` bigint(12) NOT NULL COMMENT '扩展字段',
  `ID` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `ATTR_ID` varchar(30) DEFAULT NULL COMMENT '属性编号',
  `FIELD_NAME` varchar(250) DEFAULT NULL COMMENT '编码',
  `ATTR_VALUE` varchar(30) DEFAULT NULL COMMENT '属性值',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFF_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `EXP_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `REMARKS` varchar(25) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`EXT_ID`),
  KEY `IDX_RES_TERMINAL_ORIGIN_ATTR_1` (`ID`),
  KEY `IDX_RES_TERMINAL_ORIGIN_ATTR_2` (`ATTR_ID`,`ATTR_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端扩展属性值未用表';

/*Table structure for table `res_terminal_used` */

DROP TABLE IF EXISTS `res_terminal_used`;

CREATE TABLE `res_terminal_used` (
  `TERM_ID` bigint(12) NOT NULL,
  `BATCH_ID` varchar(120) DEFAULT NULL,
  `IMEI` varchar(90) NOT NULL,
  `RES_CODE` varchar(90) DEFAULT NULL,
  `RES_INVENTORY_ID` varchar(75) DEFAULT NULL,
  `RES_TYPE_ID` bigint(12) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) DEFAULT NULL,
  `RES_STORE_ID` bigint(12) DEFAULT NULL,
  `SEC_ORG_ID` bigint(12) DEFAULT NULL,
  `FACTORY_ID` varchar(90) DEFAULT NULL,
  `RES_RULE_ID` bigint(12) DEFAULT NULL,
  `COLOR_ID` bigint(12) DEFAULT NULL,
  `CONFIG_ID` bigint(12) DEFAULT NULL,
  `USE_RANGE` bigint(12) DEFAULT NULL,
  `SALES_CHANNEL` varchar(9) DEFAULT NULL,
  `SUPPLIER` bigint(12) DEFAULT NULL,
  `MANAGE_STATUS` varchar(9) DEFAULT NULL,
  `IS_TENANCY` varchar(24) DEFAULT NULL,
  `BILL_ID` varchar(90) DEFAULT NULL,
  `TERMINAL_PRICE` bigint(20) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `RES_STATUS` varchar(24) DEFAULT NULL,
  `INSTORE_PRICE` bigint(20) DEFAULT NULL,
  `PAY_PRICE` bigint(20) DEFAULT NULL,
  `SALE_PRICE` bigint(20) DEFAULT NULL,
  `USE_TYPE` bigint(2) DEFAULT NULL,
  `AMOUNT` bigint(12) DEFAULT NULL,
  `SN` varchar(150) DEFAULT NULL,
  `PRE_DATE` datetime DEFAULT NULL,
  `ICC_ID` varchar(150) DEFAULT NULL,
  `CHECK_RESULT` varchar(9) DEFAULT NULL,
  `IN_TIME` datetime DEFAULT NULL,
  `IN_OP_ID` bigint(12) DEFAULT NULL,
  `STATUS` varchar(9) DEFAULT NULL,
  `DONE_CODE` bigint(14) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(18) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(765) DEFAULT NULL,
  PRIMARY KEY (`TERM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_terminal_used_attr` */

DROP TABLE IF EXISTS `res_terminal_used_attr`;

CREATE TABLE `res_terminal_used_attr` (
  `EXT_ID` bigint(12) NOT NULL COMMENT '扩展字段',
  `ID` varchar(30) DEFAULT NULL COMMENT '暂时未用',
  `ATTR_ID` varchar(30) DEFAULT NULL COMMENT '属性编号',
  `FIELD_NAME` varchar(250) DEFAULT NULL COMMENT '编码',
  `ATTR_VALUE` varchar(30) DEFAULT NULL COMMENT '属性值',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `DONE_CODE` bigint(25) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `EFF_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `EXP_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `REMARKS` varchar(25) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`EXT_ID`),
  KEY `IDX_RES_TERMINAL_USED_ATTR_1` (`ID`),
  KEY `IDX_RES_TERMINAL_USED_ATTR_2` (`ATTR_ID`,`ATTR_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端扩展属性值已用表';

/*Table structure for table `res_type` */

DROP TABLE IF EXISTS `res_type`;

CREATE TABLE `res_type` (
  `RES_TYPE_ID` bigint(12) NOT NULL COMMENT '资源类别',
  `RES_TYPE_NAME` varchar(32) DEFAULT NULL COMMENT '资源类别名称',
  `RES_TYPE_DESC` varchar(2048) DEFAULT NULL COMMENT '资源类别描述',
  `PARENT_TYPE_ID` bigint(9) DEFAULT NULL COMMENT '上级类别',
  `STATE` varchar(3) NOT NULL COMMENT '状态:U有效、E无效',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '创建者:对应员工表',
  PRIMARY KEY (`RES_TYPE_ID`),
  KEY `IDX_RES_TYPE` (`PARENT_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源分类:例如号码10、SIM11、有价卡12\n（按照租户分表）';

/*Table structure for table `res_type_21` */

DROP TABLE IF EXISTS `res_type_21`;

CREATE TABLE `res_type_21` (
  `RES_TYPE_ID` bigint(12) NOT NULL,
  `RES_TYPE_NAME` varchar(32) DEFAULT NULL,
  `RES_TYPE_DESC` varchar(2048) DEFAULT NULL,
  `PARENT_TYPE_ID` bigint(9) DEFAULT NULL,
  `STATE` varchar(3) NOT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATER` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`RES_TYPE_ID`),
  KEY `IDX_RES_TYPE_21` (`PARENT_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_use_type` */

DROP TABLE IF EXISTS `res_use_type`;

CREATE TABLE `res_use_type` (
  `RES_ID` bigint(12) NOT NULL COMMENT '暂时未用',
  `USED_TYPE_ID` varchar(15) DEFAULT NULL COMMENT '暂时未用',
  `USED_TYPE_NAME` varchar(250) DEFAULT NULL COMMENT '暂时未用',
  `PARENT_TYPE_ID` varchar(15) DEFAULT NULL COMMENT '父类型',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '状态:U有效、E无效',
  `RES_TYPE` varchar(3) DEFAULT NULL COMMENT '类型',
  `CREATER` bigint(12) DEFAULT NULL COMMENT '对应员工表',
  `DONE_CODE` bigint(14) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`RES_ID`),
  KEY `IDX_RES_USE_TYPE_1` (`USED_TYPE_ID`),
  KEY `IDX_RES_USE_TYPE_2` (`PARENT_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源使用类型';

/*Table structure for table `res_used_record` */

DROP TABLE IF EXISTS `res_used_record`;

CREATE TABLE `res_used_record` (
  `RES_USED_ID` bigint(12) NOT NULL COMMENT '资源记录ID',
  `RES_ID` varchar(25) DEFAULT NULL COMMENT '主键ID',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作编号',
  `EVENT_TYPE_ID` varchar(3) DEFAULT NULL COMMENT '事件类型,暂时未用',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `LOCAL_MAT` char(1) DEFAULT NULL COMMENT '是否为本地库.暂时未用',
  `TARGET_STORE_TYPE` varchar(3) DEFAULT NULL COMMENT '目标库类型,暂时未用',
  `TARGET_TYPE_ID` varchar(25) DEFAULT NULL COMMENT '记录目标类型:\n1,手机号码2，身份证3客户编码',
  `TARGET_ID` varchar(40) DEFAULT NULL COMMENT '记录目标ID',
  `SRC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '如果此次只是入库，则源组织填成-1\n如果是分配、回收、调配，则源组织填成数据源所在组织\n\n如果只是组织内部变迁源组织=目的组织',
  `USED_TYPE_ID` varchar(15) DEFAULT NULL COMMENT '资源业务类型,暂时未用',
  `BUSI_TYPE_ID` varchar(3) DEFAULT NULL COMMENT '出库入库',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '归属地区',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`RES_USED_ID`),
  KEY `IDX_RES_USED_RECORD_1` (`DONE_CODE`),
  KEY `IDX_RES_USED_RECORD_2` (`DONE_DATE`),
  KEY `IDX_RES_USED_RECORD_3` (`ORG_ID`,`OP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源实例使用情况的记录信息 （按租户分表）';

/*Table structure for table `res_used_record_21` */

DROP TABLE IF EXISTS `res_used_record_21`;

CREATE TABLE `res_used_record_21` (
  `RES_USED_ID` bigint(12) NOT NULL,
  `RES_ID` varchar(25) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `EVENT_TYPE_ID` varchar(3) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `LOCAL_MAT` char(1) DEFAULT NULL,
  `TARGET_STORE_TYPE` varchar(3) DEFAULT NULL,
  `TARGET_TYPE_ID` varchar(25) DEFAULT NULL,
  `TARGET_ID` varchar(40) DEFAULT NULL,
  `SRC_ORG_ID` bigint(12) DEFAULT NULL,
  `USED_TYPE_ID` varchar(15) DEFAULT NULL,
  `BUSI_TYPE_ID` varchar(3) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `COUNTY_ID` varchar(6) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RES_USED_ID`),
  KEY `IDX_RES_USED_RECORD_3_21` (`ORG_ID`,`OP_ID`),
  KEY `IDX_RES_USED_RECORD_2_21` (`DONE_DATE`),
  KEY `IDX_RES_USED_RECORD_1_21` (`DONE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_used_record_dtl` */

DROP TABLE IF EXISTS `res_used_record_dtl`;

CREATE TABLE `res_used_record_dtl` (
  `RECORD_DTL_ID` varchar(25) NOT NULL COMMENT '操作记录明细编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '与busi_code组成与外部关联的操作记录',
  `RES_SPEC_ID` bigint(12) NOT NULL COMMENT '资源规格编号',
  `RES_USED_ID` bigint(12) DEFAULT NULL COMMENT '资源记录ID',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作日期',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '数量',
  `MAT_CODE` varchar(40) DEFAULT NULL COMMENT '实物编号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '归属地市',
  `TARGET_ID` varchar(40) DEFAULT NULL COMMENT '记录目标ID',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT4` varchar(25) DEFAULT NULL COMMENT '扩展信息4',
  `EXT3` varchar(25) DEFAULT NULL COMMENT '扩展信息3',
  `EXT2` varchar(25) DEFAULT NULL COMMENT '扩展信息2',
  `EXT1` varchar(25) DEFAULT NULL COMMENT '扩展信息1',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  PRIMARY KEY (`RECORD_DTL_ID`),
  KEY `IDX_RES_USED_REC_DTL_1` (`RES_USED_ID`),
  KEY `IDX_RES_USED_REC_DTL_2` (`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源使用记录明细（按租户分表）';

/*Table structure for table `res_used_record_dtl_21` */

DROP TABLE IF EXISTS `res_used_record_dtl_21`;

CREATE TABLE `res_used_record_dtl_21` (
  `RECORD_DTL_ID` varchar(25) NOT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `RES_SPEC_ID` bigint(12) NOT NULL,
  `RES_USED_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `AMOUNT` bigint(12) DEFAULT NULL,
  `MAT_CODE` varchar(40) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TARGET_ID` varchar(40) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `EXT4` varchar(25) DEFAULT NULL,
  `EXT3` varchar(25) DEFAULT NULL,
  `EXT2` varchar(25) DEFAULT NULL,
  `EXT1` varchar(25) DEFAULT NULL,
  `RES_INST_ID` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`RECORD_DTL_ID`),
  KEY `IDX_RES_USED_REC_DTL_2_21` (`DONE_DATE`),
  KEY `IDX_RES_USED_REC_DTL_1_21` (`RES_USED_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_viaplay_voucher` */

DROP TABLE IF EXISTS `res_viaplay_voucher`;

CREATE TABLE `res_viaplay_voucher` (
  `SEQ_ID` varchar(30) NOT NULL COMMENT '号码资源',
  `VOUCHER_CODE` varchar(1024) NOT NULL COMMENT '号码资源',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '号码所属仓库',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '存储客户管理编号CUST_ID',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用日期',
  `USE_DONE_CODE` bigint(25) DEFAULT NULL COMMENT '使用流水号',
  `BUSI_CODE` bigint(12) DEFAULT NULL COMMENT '业务编码',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '携号转网时，临时存放号码管理状态',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(20) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(20) DEFAULT NULL COMMENT '备用字段5',
  `STOCK_IN_DATE` datetime DEFAULT NULL COMMENT '入库时间',
  `STATE` varchar(10) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`SEQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_viaplay_voucher_21` */

DROP TABLE IF EXISTS `res_viaplay_voucher_21`;

CREATE TABLE `res_viaplay_voucher_21` (
  `SEQ_ID` varchar(30) NOT NULL COMMENT '号码资源',
  `VOUCHER_CODE` varchar(1024) NOT NULL COMMENT '号码资源',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '号码所属仓库',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL,
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '存储客户管理编号CUST_ID',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用日期',
  `USE_DONE_CODE` bigint(25) DEFAULT NULL COMMENT '使用流水号',
  `BUSI_CODE` bigint(12) DEFAULT NULL COMMENT '业务编码',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '携号转网时，临时存放号码管理状态',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(20) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(20) DEFAULT NULL COMMENT '备用字段5',
  `STOCK_IN_DATE` datetime DEFAULT NULL COMMENT '入库时间',
  `STATE` varchar(10) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`SEQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `res_voucher` */

DROP TABLE IF EXISTS `res_voucher`;

CREATE TABLE `res_voucher` (
  `SEQ_ID` varchar(30) NOT NULL COMMENT '号码资源',
  `VOUCHER_CODE` varchar(1024) NOT NULL COMMENT '号码资源',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '号码所属仓库',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1 初始 Open、   2 激活 Available、   5 在用实占 In-Used、   7 作废。',
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '存储客户管理编号CUST_ID',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用日期',
  `USE_DONE_CODE` bigint(25) DEFAULT NULL COMMENT '使用流水号',
  `BUSI_CODE` bigint(12) DEFAULT NULL COMMENT '业务编码',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '携号转网时，临时存放号码管理状态',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(20) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(20) DEFAULT NULL COMMENT '备用字段5',
  `STOCK_IN_DATE` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`SEQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='（按租户分表）  VOUCHER实例表信息；  该表存储的是VOUCHER资源明细信息：包含one ';

/*Table structure for table `res_voucher_21` */

DROP TABLE IF EXISTS `res_voucher_21`;

CREATE TABLE `res_voucher_21` (
  `SEQ_ID` varchar(30) NOT NULL COMMENT '号码资源',
  `VOUCHER_CODE` varchar(1024) NOT NULL COMMENT '号码资源',
  `BATCH_ID` varchar(40) DEFAULT NULL COMMENT '批次编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '号码所属仓库',
  `SEC_ORG_ID` bigint(12) DEFAULT NULL COMMENT '归属组织',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '号码归属组织',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1 初始 Open、   2 激活 Available、   5 在用实占 In-Used、   7 作废。',
  `RES_STATUS` varchar(3) DEFAULT NULL,
  `RECEIVER` varchar(50) DEFAULT NULL COMMENT '存储客户管理编号CUST_ID',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市代码',
  `USE_DATE` datetime DEFAULT NULL COMMENT '使用日期',
  `USE_DONE_CODE` bigint(25) DEFAULT NULL COMMENT '使用流水号',
  `BUSI_CODE` bigint(12) DEFAULT NULL COMMENT '业务编码',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '订单',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `RSRV_STR2` varchar(100) DEFAULT NULL COMMENT '携号转网时，临时存放号码管理状态',
  `RSRV_STR3` varchar(100) DEFAULT NULL COMMENT '备用字段3',
  `RSRV_NUM1` bigint(20) DEFAULT NULL COMMENT '备用字段4',
  `RSRV_NUM2` bigint(20) DEFAULT NULL COMMENT '备用字段5',
  `STOCK_IN_DATE` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`SEQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='（按租户分表）  VOUCHER实例表信息；  该表存储的是VOUCHER资源明细信息：包含one ';

/*Table structure for table `res_wlan_card` */

DROP TABLE IF EXISTS `res_wlan_card`;

CREATE TABLE `res_wlan_card` (
  `CARD_ID` varchar(30) NOT NULL COMMENT '卡号',
  `PACKAGE_CODE` bigint(2) NOT NULL COMMENT '暂时未用',
  `CARD_TYPE` varchar(2) NOT NULL COMMENT '【00】实体卡\n【07】航天电子\n【06】浙江纵横\n【05】施乐事达\n【03】恒基伟业\n【02】正和通信\n【01】促销\n【09】老卡(9打头）\n【10】连连科技',
  `CARD_FEE` bigint(10) NOT NULL COMMENT '现有30、50、100、200、300等面值,以分为单位',
  `VALID_DATE` varchar(8) DEFAULT NULL COMMENT '暂时未用',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '暂时未用',
  `RES_STORE_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `RES_NAME` varchar(256) DEFAULT NULL COMMENT '暂时未用',
  `CARD_PASSWORD` varchar(34) DEFAULT NULL COMMENT '10位随机数加密后的密码,md5',
  `INPUT_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '日期格式:yyyymmdd',
  `CARD_STATE` varchar(3) DEFAULT NULL COMMENT '1：导入\n2：到货\n3：入库\n4：销售',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1加锁状态\n2解锁状态',
  `SALE_FEE` bigint(10) DEFAULT NULL COMMENT '暂时未用',
  `SALE_OBJ` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  `PRESENT_OBJ` bigint(4) DEFAULT NULL COMMENT '暂时未用',
  `SALE_DATE` datetime DEFAULT NULL COMMENT '暂时未用',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '暂时未用',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '暂时未用',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '暂时未用',
  PRIMARY KEY (`CARD_ID`),
  KEY `IDX_RES_WLAN_CARD_1` (`RES_STORE_ID`),
  KEY `IDX_RES_WLAN_CARD_2` (`CARD_TYPE`,`CARD_FEE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂WLAN卡资源实例时未用';

/*Table structure for table `res_wlancard_rec` */

DROP TABLE IF EXISTS `res_wlancard_rec`;

CREATE TABLE `res_wlancard_rec` (
  `DONE_CODE` bigint(12) NOT NULL COMMENT '流水号',
  `BUSI_ID` varchar(8) NOT NULL COMMENT '业务代码 包括：\n卡录入\n卡省级下发\n卡到货确认\n卡入库确认\n卡地市级下发\n卡激活\n卡注销\n卡注销激活\n卡状态修改',
  `BEG_ID` varchar(30) NOT NULL COMMENT '起始卡号',
  `END_ID` varchar(30) NOT NULL COMMENT '终止卡号',
  `VALID_COUNT` bigint(12) NOT NULL COMMENT '有效处理张数',
  `CARD_FEE` bigint(10) DEFAULT NULL COMMENT '缴费卡面值:\n单张缴费卡面值，单位为分',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '处理日期',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `PRESENT_ID` bigint(4) DEFAULT NULL COMMENT '赠送对象',
  `SALE_ID` bigint(12) DEFAULT NULL COMMENT '销售对象',
  `DISMONEY` bigint(12) DEFAULT NULL COMMENT '减免金额',
  `BACK_PROCESSNO` varchar(10) DEFAULT NULL COMMENT '回退编号',
  `SALETOTALMONEY` bigint(12) DEFAULT NULL COMMENT '销售总价',
  `ORG_ID` bigint(8) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员代码',
  `NOTES` varchar(255) DEFAULT NULL COMMENT '说明',
  `DONEFILE_NAME` varchar(40) DEFAULT NULL COMMENT '处理的文件名',
  `IS_LOG` varchar(40) DEFAULT NULL COMMENT '是否记录日志: 1有效、0无效',
  `HOLD_COL1` varchar(40) DEFAULT NULL COMMENT '保留字段1',
  `HOLD_COL2` varchar(40) DEFAULT NULL COMMENT '保留字段2',
  PRIMARY KEY (`DONE_CODE`),
  KEY `IDX_RES_WALNACARD_REC` (`BEG_ID`,`END_ID`,`CARD_FEE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='（按照租户分表）';

/*Table structure for table `rpt_res_ord_cardsale` */

DROP TABLE IF EXISTS `rpt_res_ord_cardsale`;

CREATE TABLE `rpt_res_ord_cardsale` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '操作明细编号',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '事件工单编号',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别暂时未用',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `CARD_FEE` bigint(10) DEFAULT NULL COMMENT '卡的金额',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县市',
  `BEG_ID` varchar(30) DEFAULT NULL COMMENT '起始编号',
  `END_ID` varchar(30) DEFAULT NULL COMMENT '结束编号',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态暂时未用',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1-封存；\n2-开放；\n3-选中;\n4-预约；\n5－占用；\n6－冷冻 ；\n7-空闲；\n8－废弃；',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '记录一个进出数量\n进：正\n出：负',
  `OWN_REGION_ID` bigint(12) DEFAULT NULL COMMENT '用户归属的地市',
  `OWN_COUNTY_ID` bigint(12) DEFAULT NULL COMMENT '用户归属的县区',
  `OWN_AREA_ID` bigint(12) DEFAULT NULL COMMENT '用户归属的区域',
  `OWN_ORG_ID` bigint(12) DEFAULT NULL COMMENT '用户归属组织',
  `OP_REGION_ID` bigint(12) DEFAULT NULL COMMENT '操作员地市',
  `OP_COUNTY_ID` bigint(12) DEFAULT NULL COMMENT '操作员县区',
  `OP_AREA_ID` bigint(12) DEFAULT NULL COMMENT '操作员AREA',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `TOTAL_FEE` bigint(14) DEFAULT NULL COMMENT '总金额',
  `IS_UNDO_ORDER` bigint(1) DEFAULT '0' COMMENT '0 不是撤单\n1 是撤单',
  `SALE_FEE` bigint(10) DEFAULT NULL COMMENT '销售价格'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='卡销售工单表';

/*Table structure for table `rpt_res_ord_cardsale_err` */

DROP TABLE IF EXISTS `rpt_res_ord_cardsale_err`;

CREATE TABLE `rpt_res_ord_cardsale_err` (
  `ORDER_DTL_ID` bigint(12) NOT NULL COMMENT '操作明细编号',
  `RES_EVENT_ID` bigint(12) DEFAULT NULL COMMENT '事件工单编号',
  `RES_TYPE_ID` bigint(12) DEFAULT NULL COMMENT '资源类别',
  `RES_SPEC_ID` bigint(12) DEFAULT NULL COMMENT '资源规格编号',
  `RES_INST_ID` varchar(25) DEFAULT NULL COMMENT '资源实例',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理日期',
  `CARD_FEE` bigint(10) DEFAULT NULL COMMENT '卡的金额',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区代码',
  `COUNTY_ID` varchar(6) DEFAULT NULL COMMENT '县区',
  `BEG_ID` varchar(30) DEFAULT NULL COMMENT '起始编号',
  `END_ID` varchar(30) DEFAULT NULL COMMENT '结束编号',
  `RES_STATUS` varchar(3) DEFAULT NULL COMMENT '资源状态',
  `MANAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1-封存；\n2-开放；\n3-选中;\n4-预约；\n5－占用；\n6－冷冻 ；\n7-空闲；\n8－废弃；',
  `AMOUNT` bigint(12) DEFAULT NULL COMMENT '记录一个进出数量\n进：正\n出：负',
  `OWN_REGION_ID` bigint(12) DEFAULT NULL COMMENT '用户归属的地市',
  `OWN_COUNTY_ID` bigint(12) DEFAULT NULL COMMENT '用户归属的县区',
  `OWN_AREA_ID` bigint(12) DEFAULT NULL COMMENT '用户归属的区域',
  `OWN_ORG_ID` bigint(12) DEFAULT NULL COMMENT '用户归属组织',
  `OP_REGION_ID` bigint(12) DEFAULT NULL COMMENT '操作员地市',
  `OP_COUNTY_ID` bigint(12) DEFAULT NULL COMMENT '操作员县区',
  `OP_AREA_ID` bigint(12) DEFAULT NULL COMMENT '操作员AREA',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `TOTAL_FEE` bigint(14) DEFAULT NULL COMMENT '总金额',
  `IS_UNDO_ORDER` bigint(1) DEFAULT '0' COMMENT '0 不是撤单\n1 是撤单',
  `SALE_FEE` bigint(10) DEFAULT NULL COMMENT '销售价格',
  `ERR_DATE` datetime DEFAULT NULL COMMENT '错误日期',
  `ERR_DESC` varchar(64) DEFAULT NULL COMMENT '错误描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='卡销售工单错误表';

/*Table structure for table `sec_organize` */

DROP TABLE IF EXISTS `sec_organize`;

CREATE TABLE `sec_organize` (
  `ORGANIZE_ID` bigint(12) NOT NULL,
  `ORG_ROLE_TYPE_ID` bigint(12) DEFAULT NULL,
  `ORGANIZE_NAME` varchar(200) NOT NULL COMMENT '即集团单位名称，由销售经理输和修改，集团单位名称应与该集团客户工商管理部门登记注册的名称一致，集团名称须进行唯一性判别。',
  `CODE` varchar(100) DEFAULT NULL,
  `PARENT_ORGANIZE_ID` bigint(12) DEFAULT NULL,
  `DISTRICT_ID` varchar(40) NOT NULL COMMENT '所属地区',
  `SHORT_NAME` varchar(200) DEFAULT NULL,
  `ENGLISH_NAME` varchar(200) DEFAULT NULL,
  `MEMBER_NUM` bigint(6) DEFAULT NULL,
  `MANAGER_NAME` varchar(40) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_ID` varchar(50) DEFAULT NULL,
  `FAX_ID` varchar(50) DEFAULT NULL,
  `ORG_ADDRESS` varchar(255) DEFAULT NULL,
  `CONTACT_NAME` varchar(100) DEFAULT NULL,
  `CONTACT_CARD_TYPE` bigint(2) DEFAULT NULL,
  `CONTACT_CARD_ID` varchar(40) DEFAULT NULL,
  `CONTACT_BILL_ID` varchar(50) DEFAULT NULL,
  `POSTCODE` bigint(6) DEFAULT NULL,
  `POST_PROVINCE` bigint(12) DEFAULT NULL,
  `POST_CITY` bigint(12) DEFAULT NULL,
  `POST_ADDRESS` varchar(255) DEFAULT NULL,
  `POST_POSTCOD` bigint(6) DEFAULT NULL,
  `COUNTY_ID` bigint(12) NOT NULL COMMENT '区县编号',
  `IS_LEAF` varchar(1) DEFAULT NULL,
  `ORG_LEVEL` bigint(2) DEFAULT NULL,
  `ORG_AREA_TYPE` bigint(2) DEFAULT NULL,
  `ORG_COOP_TYPE` bigint(2) DEFAULT NULL,
  `IS_CHANNEL` bigint(2) DEFAULT NULL COMMENT '1 是渠道组织\n0 不是渠道组织',
  `NOTES` varchar(255) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1-正常\n0-注销',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL COMMENT '当前业务受理日期',
  `VALID_DATE` datetime DEFAULT NULL COMMENT '客户生日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `EXT1` varchar(200) DEFAULT NULL,
  `EXT2` varchar(200) DEFAULT NULL,
  `EXT3` varchar(200) DEFAULT NULL,
  `EXT4` varchar(200) DEFAULT NULL,
  `EXT5` varchar(200) DEFAULT NULL,
  `EXT6` varchar(200) DEFAULT NULL,
  `OWNER_AREA` bigint(12) DEFAULT NULL,
  `SUB_ORG_ROLE_TYPE_ID` bigint(12) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`ORGANIZE_ID`),
  KEY `IDX_SEC_ORGANIZE_ORGANIZE_NAME` (`ORGANIZE_NAME`),
  KEY `IDX_SEC_ORGANIZE_PARENT_ID` (`PARENT_ORGANIZE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集团部门、组织结构、营业网等\n\n对应各个表中的org_id';

/*Table structure for table `sec_staff` */

DROP TABLE IF EXISTS `sec_staff`;

CREATE TABLE `sec_staff` (
  `STAFF_ID` bigint(12) NOT NULL COMMENT '唯一标识。来源于系统序列号，取自统一权限系统的sys_oper_u表的oper_id',
  `STAFF_NAME` varchar(200) NOT NULL COMMENT '员工名',
  `ORGANIZE_ID` bigint(12) NOT NULL,
  `PARENT_STAFF_ID` bigint(12) DEFAULT NULL,
  `SHORT_NAME` varchar(200) DEFAULT NULL,
  `ENGLISH_NAME` varchar(200) DEFAULT NULL,
  `CARD_TYPE_ID` bigint(2) DEFAULT NULL,
  `CARD_NO` varchar(40) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `HEAD_URL` varchar(255) DEFAULT NULL,
  `MARRY_STATUS` bigint(2) DEFAULT NULL,
  `GENDER` bigint(2) DEFAULT NULL COMMENT '1男\n2女',
  `RELIGION` bigint(2) DEFAULT NULL,
  `NATIONAL_TYPE` bigint(2) DEFAULT NULL,
  `EDUCATION_LEVEL` bigint(2) DEFAULT NULL COMMENT '1高中\n2大学',
  `INCOME_LEVEL` bigint(16) DEFAULT NULL,
  `POLITICS_FACE` bigint(2) DEFAULT NULL COMMENT '1无\n2团员\n3党员',
  `JOB_POSITION` varchar(40) DEFAULT NULL,
  `JOB_COMPANY` varchar(255) DEFAULT NULL,
  `JOB_DESC` varchar(200) DEFAULT NULL,
  `HOME_TEL` varchar(60) DEFAULT NULL,
  `OFFICE_TEL` varchar(60) DEFAULT NULL,
  `BILL_ID` varchar(50) DEFAULT NULL,
  `WIRELESS_CALL` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `FAMILY_INFO` varchar(100) DEFAULT NULL,
  `CONTACT_ADDRESS` varchar(60) DEFAULT NULL,
  `POSTCODE` bigint(6) DEFAULT NULL,
  `SECURITY_ID` varchar(30) DEFAULT NULL,
  `CAR_NO` varchar(40) DEFAULT NULL,
  `CHARACTER_DESC` varchar(100) DEFAULT NULL,
  `ALARM_BILL_ID` varchar(60) DEFAULT NULL,
  `FAX_ID` varchar(60) DEFAULT NULL COMMENT '传真号',
  `STAFF_LEVEL` bigint(2) DEFAULT NULL,
  `STAFF_TYPE` bigint(2) DEFAULT NULL,
  `BC_MGR` varchar(20) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1 正常',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `VALID_DATE` datetime DEFAULT NULL COMMENT '客户生日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `FIRST_NAME` varchar(200) DEFAULT NULL,
  `LAST_NAME` varchar(200) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`STAFF_ID`),
  KEY `IDX_SEC_STAFF_NAME_1` (`STAFF_NAME`),
  KEY `IDX_ORGANIZE_ID` (`ORGANIZE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `STAFF_ID` decimal(12,0) NOT NULL,
  PRIMARY KEY (`STAFF_ID`)
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

/*Table structure for table `viaplay_21` */

DROP TABLE IF EXISTS `viaplay_21`;

CREATE TABLE `viaplay_21` (
  `CUST_ID` bigint(14) DEFAULT NULL,
  `VOUCHER_TYPE` varchar(2) DEFAULT NULL,
  `VOUCHER_ID` varchar(50) DEFAULT NULL,
  `SEQ_ID` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
