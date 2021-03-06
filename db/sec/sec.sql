/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log : Database - sec
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sec` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sec`;

/*Table structure for table `oauth_client_details` */

DROP TABLE IF EXISTS `oauth_client_details`;

CREATE TABLE `oauth_client_details` (
  `client_id` varchar(64) NOT NULL,
  `resource_ids` varchar(64) DEFAULT NULL,
  `client_secret` varchar(64) DEFAULT NULL,
  `authorized_grant_types` varchar(64) DEFAULT NULL,
  `web_server_redirect_uri` varchar(64) DEFAULT NULL,
  `access_token_validity` double DEFAULT NULL,
  `refresh_token_validity` double DEFAULT NULL,
  `additional_information` blob,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_button` */

DROP TABLE IF EXISTS `sec_button`;

CREATE TABLE `sec_button` (
  `BUTTON_ID` bigint(12) NOT NULL,
  `BUTTON_CODE` varchar(80) NOT NULL,
  `BUTTON_NAME` varchar(80) NOT NULL,
  `NOTES` varchar(100) DEFAULT NULL,
  `BUTTON_LEVEL` bigint(2) NOT NULL COMMENT '1 一级\n            2 二级\n            3 三糪n�',
  `BUTTON_SEQ` bigint(3) DEFAULT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停覾n�            ',
  `EXT1` varchar(20) DEFAULT NULL,
  `EXT2` varchar(20) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATOR_ID` bigint(12) DEFAULT NULL,
  `ASCRIPTION_SYSTEM` bigint(2) DEFAULT NULL COMMENT '1 agentView\n            2 后台管理系统',
  PRIMARY KEY (`BUTTON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_button_restful_rel` */

DROP TABLE IF EXISTS `sec_button_restful_rel`;

CREATE TABLE `sec_button_restful_rel` (
  `RELA_ID` bigint(12) NOT NULL,
  `BUTTON_ID` bigint(12) NOT NULL,
  `RESTFUL_ID` bigint(12) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 鍦ㄧ敤\n            2 鍋滅敤',
  `NOTES` varchar(300) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_cost_derate` */

DROP TABLE IF EXISTS `sec_cost_derate`;

CREATE TABLE `sec_cost_derate` (
  `DERATE_ID` bigint(12) NOT NULL,
  `DERATE_NAME` varchar(100) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `NOTES` varchar(300) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  `DERATE_LIMIT` bigint(12) NOT NULL,
  `DERATE_STANDARD` bigint(12) DEFAULT NULL,
  `DERATE_TYPE` bigint(2) NOT NULL,
  PRIMARY KEY (`DERATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_ent_class` */

DROP TABLE IF EXISTS `sec_ent_class`;

CREATE TABLE `sec_ent_class` (
  `ENT_CLASS_ID` bigint(12) NOT NULL,
  `ROLE_ID` bigint(12) NOT NULL,
  `ENT_MENU_IDS` varchar(1000) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `NOTES` varchar(300) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ENT_CLASS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂留不覾n\n�';

/*Table structure for table `sec_favorite` */

DROP TABLE IF EXISTS `sec_favorite`;

CREATE TABLE `sec_favorite` (
  `FAVORITE_ID` bigint(12) NOT NULL,
  `FUNC_ID` bigint(12) NOT NULL,
  `STATE` char(1) NOT NULL COMMENT '1 在覾n�            2 停用',
  `FUNC_NAME` varchar(80) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`FAVORITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_func_button_rel` */

DROP TABLE IF EXISTS `sec_func_button_rel`;

CREATE TABLE `sec_func_button_rel` (
  `RELA_ID` bigint(12) NOT NULL,
  `FUNC_ID` bigint(12) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 鍦ㄧ敤\n            2 鍋滅敤',
  `NOTES` varchar(300) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  `BUTTON_IDS` varchar(1000) DEFAULT NULL COMMENT '鏀寔鍗曚釜澶氫釜',
  `IS_INITIAL` bigint(2) NOT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_function` */

DROP TABLE IF EXISTS `sec_function`;

CREATE TABLE `sec_function` (
  `FUNC_ID` bigint(12) NOT NULL,
  `FUNC_CODE` varchar(80) NOT NULL,
  `NAME` varchar(80) NOT NULL,
  `DOMAIN_ID` bigint(6) DEFAULT NULL,
  `NOTES` varchar(100) DEFAULT NULL,
  `PARENT_ID` bigint(12) NOT NULL,
  `FUNC_LEVEL` bigint(2) NOT NULL COMMENT '1 一级\n            2 二级\n            3 三糪n�',
  `FUN_SEQ` bigint(3) DEFAULT NULL,
  `VIEWNAME` varchar(1000) DEFAULT NULL,
  `DLL_PATH` varchar(1000) DEFAULT NULL,
  `FUNC_IMG` varchar(1000) DEFAULT NULL,
  `FUNC_TYPE` char(1) DEFAULT NULL COMMENT 'H-html页肻n�            C-客户端界面',
  `VERIFY_MODE` varchar(20) DEFAULT NULL COMMENT '定义如：密码认证、身份证认证 0服务密码认证 1有效证件认证 2不认证 3证件认证，服务密码认证2选一',
  `LOGIN_MODE` bigint(4) DEFAULT NULL COMMENT '支持如指纹登录、证书登录、密码登录等，用户登录后，后台只返回当前登录方式支持的菜单',
  `BUSI_TYPE` bigint(4) DEFAULT NULL COMMENT '1:受理业务\n             2:查询业务',
  `BUSI_SCENE` bigint(4) DEFAULT NULL COMMENT '0 无场景模式\n            1 以个人客户为中心客服 \n            2 以集团客户为中心服 \n            3 普通业务场景',
  `MODULE_TYPE` bigint(3) DEFAULT NULL COMMENT '0 通用菜单 \n            1 ESHOP菜单\n            2 系统管理菜单\n            3 资源管理菜单\n            4 客户管理菜单\n            5 产品管理菜单 \n            ',
  `HELP_URL` varchar(100) DEFAULT NULL,
  `ENTRANCE` bigint(4) DEFAULT NULL COMMENT '0--允许所有\n             1--允许内网使用\n             2--允许外网使用',
  `DISP_TYPE` bigint(4) DEFAULT NULL COMMENT '1-下拉框展示 \n            2-按钮展示',
  `AUDIT_LEVEL` bigint(4) DEFAULT NULL,
  `AUDIT_FLAG` bigint(4) DEFAULT NULL COMMENT '0 筡n�            1 开',
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停覾n�            ',
  `EXT1` varchar(20) DEFAULT NULL,
  `EXT2` varchar(20) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATOR_ID` bigint(12) DEFAULT NULL,
  `ASCRIPTION_SYSTEM` bigint(2) DEFAULT NULL COMMENT '1 agentView\n            2 后台管理系统',
  PRIMARY KEY (`FUNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_function_h` */

DROP TABLE IF EXISTS `sec_function_h`;

CREATE TABLE `sec_function_h` (
  `FUNC_ID` bigint(12) NOT NULL,
  `FUNC_CODE` varchar(80) DEFAULT NULL,
  `NAME` varchar(80) NOT NULL,
  `DOMAIN_ID` bigint(6) DEFAULT NULL,
  `NOTES` varchar(100) DEFAULT NULL,
  `PARENT_ID` bigint(12) NOT NULL,
  `FUNC_LEVEL` bigint(2) DEFAULT NULL COMMENT '1 一级\n            2 二级\n            3 三糪n�',
  `FUN_SEQ` bigint(3) DEFAULT NULL,
  `VIEWNAME` varchar(1000) DEFAULT NULL,
  `DLL_PATH` varchar(1000) DEFAULT NULL,
  `FUNC_IMG` varchar(1000) DEFAULT NULL,
  `FUNC_TYPE` char(1) DEFAULT NULL COMMENT 'H-html页肻n�            C-客户端界面',
  `VERIFY_MODE` varchar(20) DEFAULT NULL COMMENT '定义如：密码认证、身份证认证 0服务密码认证 1有效证件认证 2不认证 3证件认证，服务密码认证2选一',
  `LOGIN_MODE` bigint(4) DEFAULT NULL COMMENT '支持如指纹登录、证书登录、密码登录等，用户登录后，后台只返回当前登录方式支持的菜单',
  `BUSI_TYPE` bigint(4) DEFAULT NULL COMMENT '1:受理业务\n             2:查询业务',
  `BUSI_SCENE` bigint(4) DEFAULT NULL COMMENT '0 无场景模式\n            1 以个人客户为中心客服 \n            2 以集团客户为中心服 \n            3 普通业务场景',
  `MODULE_TYPE` bigint(3) DEFAULT NULL COMMENT '0 通用菜单 \n            1 ESHOP菜单\n            2 系统管理菜单\n            3 资源管理菜单\n            4 客户管理菜单\n            5 产品管理菜单 \n            ',
  `HELP_URL` varchar(100) DEFAULT NULL,
  `ENTRANCE` bigint(4) DEFAULT NULL COMMENT '0--允许所有\n             1--允许内网使用\n             2--允许外网使用',
  `DISP_TYPE` bigint(4) DEFAULT NULL COMMENT '1-下拉框展示 \n            2-按钮展示',
  `AUDIT_LEVEL` bigint(4) DEFAULT NULL,
  `AUDIT_FLAG` bigint(4) DEFAULT NULL COMMENT '0 筡n�            1 开',
  `STATE` bigint(2) DEFAULT NULL COMMENT '1 在覾n�            2 停覾n�            ',
  `EXT1` varchar(20) DEFAULT NULL,
  `EXT2` varchar(20) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATOR_ID` bigint(12) DEFAULT NULL,
  `H_ID` bigint(12) NOT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_holiday` */

DROP TABLE IF EXISTS `sec_holiday`;

CREATE TABLE `sec_holiday` (
  `HOLIDAY_ID` bigint(12) NOT NULL,
  `HOLIDAY_DATE` varchar(1000) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `HOLIDAY_NAME` varchar(300) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`HOLIDAY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_ip_special_list` */

DROP TABLE IF EXISTS `sec_ip_special_list`;

CREATE TABLE `sec_ip_special_list` (
  `KEY_ID` bigint(12) NOT NULL,
  `IP_ADDR` varchar(1000) NOT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `STATE` char(1) NOT NULL COMMENT '1 在覾n�            2 停用',
  `IP_SECTION` char(1) DEFAULT NULL COMMENT 'Y\n            N',
  `IP_SPECIAL` char(1) NOT NULL COMMENT '1白肻n�            2黑名礬n�',
  PRIMARY KEY (`KEY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作员登录错误日志';

/*Table structure for table `sec_login_log` */

DROP TABLE IF EXISTS `sec_login_log`;

CREATE TABLE `sec_login_log` (
  `LOG_ID` bigint(12) NOT NULL,
  `OPERATOR_ID` bigint(12) NOT NULL,
  `SESSION_ID` varchar(100) DEFAULT NULL,
  `CODE` varchar(20) NOT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `LOGIN_DATE` datetime NOT NULL,
  `LOGOUT_DATE` datetime DEFAULT NULL,
  `STATE` bigint(1) NOT NULL COMMENT '1 有效\n            2 无效',
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `TOKEN_ID` varchar(200) DEFAULT NULL,
  `LOGIN_SYSTEM` varchar(20) DEFAULT NULL,
  `ERR_CODE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_mount_guard` */

DROP TABLE IF EXISTS `sec_mount_guard`;

CREATE TABLE `sec_mount_guard` (
  `RELA_ID` bigint(12) NOT NULL,
  `ORGANIZE_ID` bigint(12) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `NOTES` varchar(300) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  `STAFF_ID` bigint(12) NOT NULL,
  `STATION_ID` bigint(12) NOT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_mount_guard_h` */

DROP TABLE IF EXISTS `sec_mount_guard_h`;

CREATE TABLE `sec_mount_guard_h` (
  `RELA_ID` bigint(12) NOT NULL,
  `ORGANIZE_ID` bigint(12) NOT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1 在覾n�            2 停用',
  `NOTES` varchar(300) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  `STAFF_ID` bigint(12) NOT NULL,
  `STATION_ID` bigint(12) NOT NULL,
  `H_ID` bigint(12) NOT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_offer_function` */

DROP TABLE IF EXISTS `sec_offer_function`;

CREATE TABLE `sec_offer_function` (
  `ID` double NOT NULL,
  `FUNC_ID` double DEFAULT NULL,
  `OFFER_TYPE` varchar(300) DEFAULT NULL,
  `FUNC_NAME` varchar(765) DEFAULT NULL,
  `FUNC_URL` varchar(1500) DEFAULT NULL,
  `STATE` double DEFAULT NULL,
  `EXT` varchar(765) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_op_role_rel` */

DROP TABLE IF EXISTS `sec_op_role_rel`;

CREATE TABLE `sec_op_role_rel` (
  `RELA_ID` bigint(12) NOT NULL,
  `OPERATOR_ID` bigint(12) NOT NULL,
  `ROLE_ID` bigint(12) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `NOTES` varchar(300) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DOMAIN_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人员与角色关联表';

/*Table structure for table `sec_op_rolegroup_rel` */

DROP TABLE IF EXISTS `sec_op_rolegroup_rel`;

CREATE TABLE `sec_op_rolegroup_rel` (
  `RELA_ID` bigint(12) NOT NULL,
  `ROLE_GROUP_ID` bigint(12) NOT NULL,
  `OPERATOR_ID` bigint(12) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `NOTES` varchar(300) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_op_security` */

DROP TABLE IF EXISTS `sec_op_security`;

CREATE TABLE `sec_op_security` (
  `SECURITY_ID` bigint(12) NOT NULL,
  `OPERATOR_ID` bigint(12) NOT NULL,
  `SECURITY_DESC` varchar(50) DEFAULT NULL,
  `PASSWD_VALID` bigint(5) DEFAULT NULL,
  `PASSWD_LENGTH` bigint(5) DEFAULT NULL,
  `PASSWD_SECURITY_LEVEL` bigint(5) DEFAULT NULL COMMENT '1礬n�            2 謀n�            3 竆n�            ',
  `EFFECTIVE_DAYS` bigint(5) NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `LOCK_FLAG` char(1) DEFAULT NULL,
  PRIMARY KEY (`SECURITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_op_uppassword` */

DROP TABLE IF EXISTS `sec_op_uppassword`;

CREATE TABLE `sec_op_uppassword` (
  `UPP_ID` bigint(12) NOT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `PASSWD_LENGTH` bigint(12) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1 有效\n            2 无效',
  `NOTES` varchar(300) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DOMAIN_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  `MODIFY_PASSWORD_ONE` varchar(150) DEFAULT NULL,
  `MODIFY_PASSWORD_TWO` varchar(150) DEFAULT NULL,
  `MODIFY_PASSWORD_THREE` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`UPP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_operate_log` */

DROP TABLE IF EXISTS `sec_operate_log`;

CREATE TABLE `sec_operate_log` (
  `OPERATE_LOG_ID` bigint(12) NOT NULL,
  `CONTENT` varchar(1000) DEFAULT NULL,
  `OPERATE_TYPE` varchar(1000) DEFAULT NULL COMMENT '1 add\n            2 delete\n            3 update\n            4 query',
  `DONE_DATE` datetime NOT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `RECORD_ID` varchar(50) DEFAULT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  `FUNC_ID` bigint(12) DEFAULT NULL,
  `FUNC_CHILD_ID` bigint(12) DEFAULT NULL COMMENT '11 新增员工 12 工号启用 13 工号停用 14 修改密码 15 清除权限 16 增加员工和组织关联 17 删除员工和组织关联  21 新增岗位 22 删除岗位  31 新增组织 32 修改组织 33 删除组织 34 组织树移动  41 新增岗位类型 42 删除岗位类型',
  `IP` varchar(20) DEFAULT NULL,
  `EXT` varchar(2000) DEFAULT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 有效\n            2 无效',
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `TOKEN_ID` varchar(200) DEFAULT NULL,
  `OPERATOR_ID` bigint(12) NOT NULL,
  PRIMARY KEY (`OPERATE_LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_operator` */

DROP TABLE IF EXISTS `sec_operator`;

CREATE TABLE `sec_operator` (
  `OPERATOR_ID` bigint(12) NOT NULL,
  `CODE` varchar(60) NOT NULL,
  `IS_ADMIN` char(1) NOT NULL COMMENT 'Y\n            N',
  `PASSWORD` varchar(300) DEFAULT NULL,
  `SECURITY_ID` bigint(12) DEFAULT NULL,
  `RECENT_PASS_DATE` datetime DEFAULT NULL,
  `ACCT_EFFECTIVE_DATE` datetime NOT NULL,
  `ACCT_EXPIRE_DATE` datetime DEFAULT NULL,
  `LAST_LOGIN_LOG_ID` bigint(12) DEFAULT NULL,
  `TRY_COUNT` bigint(3) DEFAULT NULL,
  `LOCK_FLAG` bigint(2) DEFAULT NULL COMMENT '1 薥n�            2 不锁',
  `LOGIN_CHANNEL` varchar(60) DEFAULT NULL COMMENT '各个系统',
  `PASSWORD_EXPIRE_DATE` datetime DEFAULT NULL,
  `CHG_PASSWD_ALARM_DAYS` bigint(10) DEFAULT NULL,
  `IP_ADDR` varchar(60) NOT NULL,
  `IS_VPN_LOGIN_FLAG` bigint(2) DEFAULT NULL COMMENT '1 蔦n�            2 不蔦n�            ',
  `CHG_PASSWD_FLAG` bigint(2) DEFAULT NULL,
  `IS_LOGIN` bigint(2) DEFAULT NULL COMMENT '1 蔦n�            2 不是',
  `NOTES` varchar(200) DEFAULT NULL,
  `CANCEL_DAYS` bigint(3) DEFAULT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 有效\n            2 失效\n            3 冻絓n�            4 未激活',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EX1` varchar(50) DEFAULT NULL,
  `EX2` varchar(50) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `LAST_LOGIN_LOG_TIME` datetime DEFAULT NULL,
  `LOCK_DATE` datetime DEFAULT NULL,
  `ROLE_GROUP_ID` bigint(8) DEFAULT NULL,
  PRIMARY KEY (`OPERATOR_ID`),
  UNIQUE KEY `code` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_operator_h` */

DROP TABLE IF EXISTS `sec_operator_h`;

CREATE TABLE `sec_operator_h` (
  `H_ID` bigint(12) NOT NULL,
  `OPERATOR_ID` bigint(12) NOT NULL,
  `CODE` varchar(60) NOT NULL,
  `IS_ADMIN` varchar(5) NOT NULL COMMENT '1 蔦n�            2 不是',
  `PASSWORD` varchar(300) DEFAULT NULL,
  `SECURITY_ID` bigint(12) DEFAULT NULL,
  `RECENT_PASS_DATE` datetime DEFAULT NULL,
  `ACCT_EFFECTIVE_DATE` datetime NOT NULL,
  `ACCT_EXPIRE_DATE` datetime DEFAULT NULL,
  `LAST_LOGIN_LOG_ID` bigint(12) DEFAULT NULL,
  `TRY_COUNT` bigint(3) DEFAULT NULL,
  `LOCK_FLAG` bigint(2) DEFAULT NULL COMMENT '1 薥n�            2 不锁',
  `LOGIN_CHANNEL` varchar(60) DEFAULT NULL COMMENT '各个系统',
  `PASSWORD_EXPIRE_DATE` datetime DEFAULT NULL,
  `CHG_PASSWD_ALARM_DAYS` bigint(10) DEFAULT NULL,
  `IP_ADDR` varchar(60) NOT NULL,
  `IS_VPN_LOGIN_FLAG` bigint(2) DEFAULT NULL COMMENT '1 蔦n�            2 不蔦n�            ',
  `CHG_PASSWD_FLAG` bigint(2) DEFAULT NULL,
  `IS_LOGIN` bigint(2) DEFAULT NULL COMMENT '1 蔦n�            2 不是',
  `NOTES` varchar(200) DEFAULT NULL,
  `CANCEL_DAYS` bigint(3) DEFAULT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 有效\n            2 失效\n            3 冻絓n�            4 未激活',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `EFFECTIVE_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EX1` varchar(50) DEFAULT NULL,
  `EX2` varchar(50) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `LAST_LOGIN_LOG_TIME` datetime DEFAULT NULL,
  `MAC_ADDR` varchar(60) NOT NULL,
  `LOCK_DATE` datetime DEFAULT NULL,
  `ROLE_GROUP_ID` bigint(8) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_operator_mapped` */

DROP TABLE IF EXISTS `sec_operator_mapped`;

CREATE TABLE `sec_operator_mapped` (
  `OPERATOR_ID` varchar(20) NOT NULL,
  `MAPPED_OPERATOR_ID` varchar(20) NOT NULL,
  `STATE` char(1) DEFAULT NULL,
  `ASCRIPTION_SYSTEM` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_org_role_type` */

DROP TABLE IF EXISTS `sec_org_role_type`;

CREATE TABLE `sec_org_role_type` (
  `ORG_ROLE_TYPE_ID` bigint(6) NOT NULL,
  `ORG_ROLE_TYPE_NAME` varchar(100) NOT NULL,
  `PARENT_TYPE_ID` bigint(6) DEFAULT NULL,
  `CODE` varchar(20) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `NOTES` varchar(255) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`ORG_ROLE_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_org_station_rel` */

DROP TABLE IF EXISTS `sec_org_station_rel`;

CREATE TABLE `sec_org_station_rel` (
  `RELA_ID` bigint(12) NOT NULL,
  `ORGANIZE_ID` bigint(12) NOT NULL,
  `STATION_ID` bigint(12) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `NOTES` varchar(300) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_org_type` */

DROP TABLE IF EXISTS `sec_org_type`;

CREATE TABLE `sec_org_type` (
  `ORG_TYPE_ID` bigint(6) NOT NULL,
  `ORG_TYPE_NAME` varchar(100) NOT NULL,
  `PARENT_TYPE_ID` bigint(6) DEFAULT NULL,
  `CODE` varchar(20) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 鍦ㄧ敤\n            2 鍋滅敤',
  `NOTES` varchar(255) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`ORG_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_organize` */

DROP TABLE IF EXISTS `sec_organize`;

CREATE TABLE `sec_organize` (
  `ORGANIZE_ID` bigint(12) NOT NULL,
  `ORGANIZE_NAME` varchar(200) NOT NULL,
  `CODE` varchar(100) NOT NULL,
  `PARENT_ORGANIZE_ID` bigint(12) NOT NULL,
  `DISTRICT_ID` varchar(40) DEFAULT NULL,
  `SHORT_NAME` varchar(200) DEFAULT NULL,
  `ENGLISH_NAME` varchar(200) DEFAULT NULL,
  `MEMBER_NO` varchar(20) DEFAULT NULL,
  `MANAGER_NAME` varchar(40) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE` varchar(50) DEFAULT NULL,
  `FAX_ID` varchar(50) DEFAULT NULL,
  `ORG_ADDRESS` varchar(255) DEFAULT NULL,
  `CONTACT_NAME` varchar(100) DEFAULT NULL,
  `CONTACT_CARD_TYPE` bigint(2) DEFAULT NULL,
  `CONTACT_CARD_ID` varchar(40) DEFAULT NULL,
  `CONTACT_BILL_ID` varchar(50) DEFAULT NULL,
  `POSTCODE` bigint(6) DEFAULT NULL,
  `POST_PROVINCE` varchar(40) DEFAULT NULL,
  `POST_CITY` varchar(40) DEFAULT NULL,
  `POST_ADDRESS` varchar(255) DEFAULT NULL,
  `COUNTY_ID` bigint(12) DEFAULT NULL,
  `ORG_LEVEL` bigint(2) NOT NULL COMMENT '0 总部\n            1 省级\n            2 地市级\n            3 区县级\n            4 营业厅',
  `ORG_AREA_TYPE` bigint(2) DEFAULT NULL,
  `ORG_COOP_TYPE` bigint(2) DEFAULT NULL,
  `IS_CHANNEL` bigint(2) NOT NULL COMMENT '0 不是渠道组织\n            1 是渠道组织 ',
  `NOTES` varchar(255) DEFAULT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `EFFECTIVE_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `EXT1` varchar(200) DEFAULT NULL,
  `EXT2` varchar(200) DEFAULT NULL,
  `EXT3` varchar(200) DEFAULT NULL,
  `EXT4` varchar(200) DEFAULT NULL,
  `OWNER_AREA` bigint(12) DEFAULT NULL,
  `ORG_TYPE_ID` bigint(12) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `IS_ENTITY` bigint(12) NOT NULL COMMENT '0 涓嶆槸',
  PRIMARY KEY (`ORGANIZE_ID`),
  UNIQUE KEY `鍞竴缂栫爜` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_organize_h` */

DROP TABLE IF EXISTS `sec_organize_h`;

CREATE TABLE `sec_organize_h` (
  `ORGANIZE_ID` bigint(12) NOT NULL,
  `ORG_ROLE_TYPE_ID` bigint(12) DEFAULT NULL,
  `ORGANIZE_NAME` varchar(200) NOT NULL,
  `CODE` varchar(100) DEFAULT NULL,
  `PARENT_ORGANIZE_ID` bigint(12) DEFAULT NULL,
  `DISTRICT_ID` varchar(40) NOT NULL,
  `SHORT_NAME` varchar(200) DEFAULT NULL,
  `ENGLISH_NAME` varchar(200) DEFAULT NULL,
  `MEMBER_NO` bigint(6) DEFAULT NULL,
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
  `COUNTY_ID` bigint(12) NOT NULL,
  `ORG_LEVEL` bigint(2) DEFAULT NULL COMMENT '0 总部\n            1 省级\n            2 地市级\n            3 区县级\n            4 营业厅',
  `ORG_AREA_TYPE` bigint(2) DEFAULT NULL,
  `ORG_COOP_TYPE` bigint(2) DEFAULT NULL,
  `IS_CHANNEL` bigint(2) DEFAULT NULL COMMENT '0 不是渠道组织\n            1 是渠道组织 ',
  `NOTES` varchar(255) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1 在覾n�            2 停用',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `EXT1` varchar(200) DEFAULT NULL,
  `EXT2` varchar(200) DEFAULT NULL,
  `EXT3` varchar(200) DEFAULT NULL,
  `EXT4` varchar(200) DEFAULT NULL,
  `OWNER_AREA` bigint(12) DEFAULT NULL,
  `SUB_ORG_ROLE_TYPE_ID` bigint(12) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `IS_ENTITY` bigint(12) DEFAULT NULL COMMENT '0 蔦n�            1 不是',
  `H_ID` bigint(12) NOT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_organize_log` */

DROP TABLE IF EXISTS `sec_organize_log`;

CREATE TABLE `sec_organize_log` (
  `LOG_ID` decimal(16,0) NOT NULL,
  `OPER_AREA_CODE` char(4) NOT NULL,
  `CODE_TYPE_CODE` char(1) NOT NULL COMMENT '组织类型编码：0－地域，1－部门，2－员工\n            可以在TD_S_SYSPARA_DEFLIST表中配置',
  `OPERTYPE_CODE` char(1) NOT NULL COMMENT '操作类型编码：1－修改，2－插入，3－删除',
  `OPER_INFO` varchar(500) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `RSVALUE1` varchar(20) DEFAULT NULL,
  `RSVALUE2` varchar(100) DEFAULT NULL,
  `OPER_DATE` datetime NOT NULL,
  `OP_ID` char(8) DEFAULT NULL,
  `ORG_ID` char(5) DEFAULT NULL,
  `OPER_ORG_CODE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='所有组织管理的操作都记录此表';

/*Table structure for table `sec_postcode` */

DROP TABLE IF EXISTS `sec_postcode`;

CREATE TABLE `sec_postcode` (
  `POSTCODE` varchar(5) NOT NULL,
  `STATE` varchar(50) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  `REGION` varchar(20) DEFAULT NULL,
  `LATITUDE` varchar(20) DEFAULT NULL,
  `LONGITUDE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`POSTCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_restful` */

DROP TABLE IF EXISTS `sec_restful`;

CREATE TABLE `sec_restful` (
  `RESTFUL_ID` bigint(12) NOT NULL,
  `RESTFUL_NAME` varchar(50) NOT NULL,
  `RESTFUL_URL` varchar(250) NOT NULL COMMENT '1 一',
  `RESTFUL_METHOD` varchar(20) DEFAULT NULL COMMENT 'GET\n            DELETE\n            POST\n            PUT\n            HEAD',
  `STATE` char(1) NOT NULL COMMENT '1 ',
  `NOTES` varchar(200) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `RESTFUL_AUTHORITY` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RESTFUL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_role` */

DROP TABLE IF EXISTS `sec_role`;

CREATE TABLE `sec_role` (
  `ROLE_ID` bigint(8) NOT NULL,
  `ROLE_NAME` varchar(60) NOT NULL,
  `ROLE_GROUP_ID` bigint(2) DEFAULT NULL COMMENT '1 营业',
  `LOGIN_CHANNEL` bigint(2) DEFAULT NULL,
  `DOMAIN_ID` bigint(6) DEFAULT NULL,
  `NOTES` varchar(100) DEFAULT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `EFFECTIVE_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_CODE` varchar(100) DEFAULT NULL,
  `EXT1` varchar(50) DEFAULT NULL,
  `EXT2` varchar(50) DEFAULT NULL,
  `IS_ADMIN` char(1) NOT NULL COMMENT 'Y\n            N',
  `ROLE_LEVEL` bigint(2) DEFAULT NULL,
  `BUSI_TYPE` bigint(4) DEFAULT NULL,
  `ROLE_CODE` varchar(50) NOT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_role_derate_rel` */

DROP TABLE IF EXISTS `sec_role_derate_rel`;

CREATE TABLE `sec_role_derate_rel` (
  `RELA_ID` bigint(12) NOT NULL,
  `DERATE_ID` bigint(12) NOT NULL,
  `ROLE_ID` bigint(12) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `NOTES` varchar(300) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_role_ent_rel` */

DROP TABLE IF EXISTS `sec_role_ent_rel`;

CREATE TABLE `sec_role_ent_rel` (
  `RELA_ID` bigint(12) NOT NULL,
  `ENT_CLASS_ID` bigint(12) NOT NULL,
  `ROLE_ID` bigint(12) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `NOTES` varchar(300) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂留不覾n\n�';

/*Table structure for table `sec_role_group` */

DROP TABLE IF EXISTS `sec_role_group`;

CREATE TABLE `sec_role_group` (
  `ROLE_GROUP_ID` bigint(8) NOT NULL,
  `ROLE_GROUP_NAME` varchar(60) NOT NULL,
  `NOTES` varchar(100) DEFAULT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_CODE` varchar(100) DEFAULT NULL,
  `EXT1` varchar(50) DEFAULT NULL,
  `EXT2` varchar(50) DEFAULT NULL,
  `ASCRIPTION_SYSTEM` bigint(2) DEFAULT NULL COMMENT '1 agentView\n            2 后台管理系统',
  PRIMARY KEY (`ROLE_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_role_h` */

DROP TABLE IF EXISTS `sec_role_h`;

CREATE TABLE `sec_role_h` (
  `ROLE_LEVEL` bigint(2) NOT NULL,
  `ROLE_ID` bigint(8) NOT NULL,
  `ROLE_NAME` varchar(60) NOT NULL,
  `ROLE_TYPE` bigint(2) NOT NULL,
  `DOMAIN_ID` bigint(6) NOT NULL,
  `NOTES` varchar(100) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1 在覾n�            2 停用',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_CODE` varchar(100) DEFAULT NULL,
  `EXT1` varchar(50) DEFAULT NULL,
  `EXT2` varchar(50) DEFAULT NULL,
  `H_ID` bigint(12) NOT NULL,
  `IS_ADMIN` varchar(1) NOT NULL COMMENT 'Y\n            N',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_role_rolegroup_rel` */

DROP TABLE IF EXISTS `sec_role_rolegroup_rel`;

CREATE TABLE `sec_role_rolegroup_rel` (
  `RELA_ID` bigint(12) NOT NULL,
  `ROLE_GROUP_ID` bigint(12) NOT NULL,
  `ROLE_ID` bigint(12) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `NOTES` varchar(300) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_staf_op_rel` */

DROP TABLE IF EXISTS `sec_staf_op_rel`;

CREATE TABLE `sec_staf_op_rel` (
  `RELA_ID` bigint(12) NOT NULL,
  `OPERATOR_ID` bigint(12) NOT NULL,
  `STAFF_ID` bigint(12) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `NOTES` varchar(300) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_staf_org_rel` */

DROP TABLE IF EXISTS `sec_staf_org_rel`;

CREATE TABLE `sec_staf_org_rel` (
  `RELA_ID` bigint(12) NOT NULL,
  `STAFF_ID` bigint(12) NOT NULL,
  `ORGANIZE_ID` bigint(12) NOT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `NOTES` varchar(300) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EXT1` bigint(12) DEFAULT NULL,
  `EXT2` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_staff` */

DROP TABLE IF EXISTS `sec_staff`;

CREATE TABLE `sec_staff` (
  `STAFF_ID` bigint(12) NOT NULL,
  `STAFF_NAME` varchar(200) NOT NULL,
  `ORGANIZE_ID` bigint(12) NOT NULL,
  `PARENT_STAFF_ID` bigint(12) NOT NULL,
  `SHORT_NAME` varchar(200) DEFAULT NULL,
  `ENGLISH_NAME` varchar(200) DEFAULT NULL,
  `CARD_TYPE_ID` bigint(2) DEFAULT NULL COMMENT '1 信用卡\n            2 借记卡',
  `CARD_NO` varchar(40) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `MARRY_STATUS` bigint(2) DEFAULT NULL COMMENT '1 已籠n�            2 未婚',
  `GENDER` bigint(2) DEFAULT NULL COMMENT '1 腬n�            2 女',
  `RELIGION` bigint(2) DEFAULT NULL,
  `NATIONAL_TYPE` bigint(2) DEFAULT NULL,
  `EDUCATION_LEVEL` bigint(2) DEFAULT NULL COMMENT '1 初謀n�            2 高謀n�            3 大专\n            4 本縗n�            5 硕士\n            7 博士',
  `INCOME_LEVEL` varchar(100) DEFAULT NULL,
  `POLITICS_FACE` bigint(2) DEFAULT NULL,
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
  `SECURITY_ID` bigint(12) DEFAULT NULL,
  `CAR_NO` varchar(40) DEFAULT NULL,
  `CHARACTER_DESC` varchar(100) DEFAULT NULL,
  `ALARM_BILL_ID` varchar(60) DEFAULT NULL,
  `FAX_ID` varchar(60) DEFAULT NULL,
  `STAFF_LEVEL` bigint(2) DEFAULT NULL COMMENT '1 manager\n            2 admin\n            3 ordinary',
  `STAFF_TYPE` bigint(2) DEFAULT NULL COMMENT '1 clerk\n            2 sale\n            3 manage\n            4 technique',
  `NOTES` varchar(255) DEFAULT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 有效\n            2 失效\n            3 冻结',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `EFFECTIVE_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `FIRST_NAME` varchar(200) DEFAULT NULL,
  `LAST_NAME` varchar(200) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `STAFF_CODE` varchar(100) NOT NULL,
  PRIMARY KEY (`STAFF_ID`),
  UNIQUE KEY `鍞竴鍛樺伐缂栧彿` (`STAFF_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_staff_h` */

DROP TABLE IF EXISTS `sec_staff_h`;

CREATE TABLE `sec_staff_h` (
  `STAFF_ID` bigint(12) NOT NULL,
  `STAFF_NAME` varchar(200) NOT NULL,
  `ORGANIZE_ID` bigint(12) NOT NULL,
  `PARENT_STAFF_ID` bigint(12) DEFAULT NULL,
  `SHORT_NAME` varchar(200) DEFAULT NULL,
  `ENGLISH_NAME` varchar(200) DEFAULT NULL,
  `CARD_TYPE_ID` bigint(2) DEFAULT NULL COMMENT '1 信用卡\n            2 借记卡',
  `CARD_NO` varchar(40) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `MARRY_STATUS` bigint(2) DEFAULT NULL COMMENT '1 已籠n�            2 未婚',
  `GENDER` bigint(2) DEFAULT NULL COMMENT '1 腬n�            2 女',
  `RELIGION` bigint(2) DEFAULT NULL,
  `NATIONAL_TYPE` bigint(2) DEFAULT NULL,
  `EDUCATION_LEVEL` bigint(2) DEFAULT NULL COMMENT '1 初謀n�            2 高謀n�            3 大专\n            4 本縗n�            5 硕士\n            7 博士',
  `INCOME_LEVEL` varchar(100) DEFAULT NULL,
  `POLITICS_FACE` bigint(2) DEFAULT NULL,
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
  `SECURITY_ID` bigint(12) DEFAULT NULL,
  `CAR_NO` varchar(40) DEFAULT NULL,
  `CHARACTER_DESC` varchar(100) DEFAULT NULL,
  `ALARM_BILL_ID` varchar(60) DEFAULT NULL,
  `FAX_ID` varchar(60) DEFAULT NULL,
  `STAFF_LEVEL` bigint(2) DEFAULT NULL COMMENT '1 manager\n            2 admin\n            3 ordinary',
  `STAFF_TYPE` bigint(2) DEFAULT NULL COMMENT '1 clerk\n            2 sale\n            3 manage\n            4 technique',
  `NOTES` varchar(255) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1 有效\n            2 失效\n            3 冻结',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `FIRST_NAME` varchar(200) DEFAULT NULL,
  `LAST_NAME` varchar(200) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `STAFF_CODE` varchar(100) NOT NULL,
  `H_ID` bigint(12) NOT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_staff_station_rel` */

DROP TABLE IF EXISTS `sec_staff_station_rel`;

CREATE TABLE `sec_staff_station_rel` (
  `STAFF_STATION_ID` bigint(12) NOT NULL,
  `STATION_ID` bigint(12) NOT NULL,
  `STAFF_ID` bigint(12) NOT NULL,
  `IS_BASE_STATION` bigint(2) NOT NULL COMMENT '1：蔦n�            2：否',
  `NOTES` varchar(100) DEFAULT NULL,
  `EXT1` bigint(2) DEFAULT NULL,
  `EXT2` varchar(50) DEFAULT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `EFFEXTIVE_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `ORGANIZE_ID` bigint(12) DEFAULT NULL,
  `DOMAIN_ID` bigint(6) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `STAFF_STATION_EFFECTIVE_DATE` datetime NOT NULL,
  `STAFF_STATION_EXPIRE_DATE` datetime NOT NULL,
  PRIMARY KEY (`STAFF_STATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_station` */

DROP TABLE IF EXISTS `sec_station`;

CREATE TABLE `sec_station` (
  `STATION_ID` bigint(12) NOT NULL,
  `PARENT_STATION_ID` bigint(12) DEFAULT NULL,
  `ORGANIZE_ID` bigint(12) DEFAULT NULL,
  `STATION_TYPE_ID` bigint(12) DEFAULT NULL,
  `CODE` varchar(100) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `WORK_DESC` varchar(100) DEFAULT NULL,
  `NOTES` varchar(100) DEFAULT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 在覾n�            2 停用',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  `ORGANIZE_LIST` char(1) DEFAULT NULL COMMENT 'Y\n            N',
  PRIMARY KEY (`STATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_station_type` */

DROP TABLE IF EXISTS `sec_station_type`;

CREATE TABLE `sec_station_type` (
  `STATION_TYPE_ID` bigint(12) NOT NULL,
  `KIND_ID` bigint(6) DEFAULT NULL,
  `CODE` varchar(40) NOT NULL,
  `NAME` varchar(60) NOT NULL,
  `SORT_ID` bigint(3) DEFAULT NULL,
  `NOTES` varchar(100) DEFAULT NULL,
  `STATE` bigint(2) NOT NULL COMMENT '1 有效\n            2 失效',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `TENANT_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`STATION_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sec_user_function` */

DROP TABLE IF EXISTS `sec_user_function`;

CREATE TABLE `sec_user_function` (
  `ID` double NOT NULL,
  `FUNC_ID` double DEFAULT NULL,
  `USER_STATE` varchar(9) DEFAULT NULL,
  `ORG_ID` double DEFAULT NULL,
  `STATE` double DEFAULT NULL,
  `EXT` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_sequences` */

DROP TABLE IF EXISTS `sys_sequences`;

CREATE TABLE `sys_sequences` (
  `SEQUENCE_NAME` varchar(60) NOT NULL,
  `START_BY` bigint(20) NOT NULL,
  `INCREMENT_BY` bigint(10) NOT NULL,
  `LAST_NUMBER` bigint(20) NOT NULL,
  `JVM_STEP_BY` bigint(10) NOT NULL DEFAULT '200',
  PRIMARY KEY (`SEQUENCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `undo_log` */

DROP TABLE IF EXISTS `undo_log`;

CREATE TABLE `undo_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `branch_id` bigint(20) NOT NULL,
  `xid` varchar(100) NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int(11) NOT NULL,
  `log_created` datetime NOT NULL,
  `log_modified` datetime NOT NULL,
  `ext` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_unionkey` (`xid`,`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
