/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log : Database - loyalty
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`loyalty` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `loyalty`;

/*Table structure for table `integral_account` */

DROP TABLE IF EXISTS `integral_account`;

CREATE TABLE `integral_account` (
  `integral_account_id` bigint(14) NOT NULL COMMENT '积分账户标识',
  `integral_account_type` bigint(2) NOT NULL COMMENT '积分账户类型 10:网内用户',
  `integral_account_name` varchar(256) DEFAULT NULL COMMENT '积分账户名称',
  `cust_id` bigint(14) NOT NULL COMMENT '积分归属的客户标识',
  `status` bigint(2) NOT NULL COMMENT '账户状态 0：失效 1：生效',
  `current_cycle` varchar(6) NOT NULL COMMENT '当前积分周期',
  `amount` bigint(8) DEFAULT NULL COMMENT '当前可用积分值，只有当check_code和缓存中一致时才是可用的准确的值',
  `check_code` varchar(64) DEFAULT NULL COMMENT '验证码，用于快速获取当前积分值',
  `create_date` datetime DEFAULT NULL COMMENT '记录创建时间',
  `valid_date` datetime DEFAULT NULL COMMENT '生效时间',
  `expire_date` datetime DEFAULT NULL COMMENT '失效时间',
  `done_date` datetime DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `notes` varchar(256) DEFAULT NULL COMMENT '备注',
  `tenant_id` varchar(6) DEFAULT NULL COMMENT '租户标识',
  PRIMARY KEY (`integral_account_id`),
  KEY `index_integral_account_1` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分账户表';

/*Table structure for table `integral_account_his` */

DROP TABLE IF EXISTS `integral_account_his`;

CREATE TABLE `integral_account_his` (
  `h_id` bigint(14) NOT NULL,
  `integral_account_id` bigint(14) NOT NULL COMMENT '积分账户标识',
  `integral_account_type` bigint(2) NOT NULL COMMENT '积分账户类型',
  `integral_account_name` varchar(256) DEFAULT NULL COMMENT '积分账户名称',
  `cust_id` bigint(14) NOT NULL COMMENT '积分归属的客户标识',
  `status` bigint(2) NOT NULL COMMENT '账户状态 0：失效 1：生效',
  `current_cycle` varchar(6) NOT NULL,
  `amount` bigint(8) DEFAULT NULL,
  `check_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '验证码，用于快速获取当前积分值',
  `create_date` datetime DEFAULT NULL COMMENT '记录创建时间',
  `valid_date` datetime DEFAULT NULL COMMENT '生效时间',
  `expire_date` datetime DEFAULT NULL COMMENT '失效时间',
  `done_date` datetime DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `notes` varchar(256) DEFAULT NULL COMMENT '备注',
  `tenant_id` varchar(6) DEFAULT NULL COMMENT '租户标识',
  PRIMARY KEY (`h_id`),
  KEY `index_integral_account_his_1` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分账户历史表';

/*Table structure for table `integral_book` */

DROP TABLE IF EXISTS `integral_book`;

CREATE TABLE `integral_book` (
  `integral_book_id` bigint(14) NOT NULL COMMENT '积分账本标识',
  `integral_account_id` bigint(14) NOT NULL COMMENT '积分账户标识',
  `outer_id` varchar(32) NOT NULL COMMENT '外部标识id，如用户id，登陆id等',
  `outer_type` varchar(2) NOT NULL COMMENT '外部标识类型 1：用户 2：eshop注册用户',
  `init_amount` bigint(8) NOT NULL COMMENT '当前积分账期的初始积分值',
  `status` bigint(2) NOT NULL COMMENT '账户状态 0：失效 1：生效',
  `current_cycle` varchar(6) NOT NULL COMMENT '当前计算周期，如201807',
  `deal_state` varchar(2) DEFAULT NULL COMMENT '当前计算状态 1：计算中 2：计算完成',
  `create_date` datetime DEFAULT NULL COMMENT '记录创建时间',
  `valid_date` datetime DEFAULT NULL COMMENT '生效时间',
  `expire_date` datetime DEFAULT NULL COMMENT '失效时间',
  `done_date` datetime DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `notes` varchar(256) DEFAULT NULL COMMENT '备注',
  `tenant_id` varchar(6) DEFAULT NULL COMMENT '租户标识',
  PRIMARY KEY (`integral_book_id`),
  KEY `index_integral_book_1` (`integral_account_id`),
  KEY `index_integral_book_2` (`outer_id`,`outer_type`),
  KEY `index_integral_book_3` (`current_cycle`,`deal_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分账本';

/*Table structure for table `integral_book_his` */

DROP TABLE IF EXISTS `integral_book_his`;

CREATE TABLE `integral_book_his` (
  `h_id` bigint(14) NOT NULL,
  `integral_book_id` bigint(14) NOT NULL COMMENT '积分账本标识',
  `integral_account_id` bigint(14) NOT NULL COMMENT '积分账户标识',
  `outer_id` varchar(32) NOT NULL COMMENT '外部标识id，如用户id，登陆id等',
  `outer_type` varchar(2) NOT NULL COMMENT '外部标识类型 1：用户 2：eshop注册用户',
  `init_amount` bigint(8) NOT NULL COMMENT '当前积分账期的初始积分值',
  `status` bigint(2) NOT NULL COMMENT '账户状态 0：失效 1：生效',
  `current_cycle` varchar(6) NOT NULL COMMENT '当前计算周期，如201807',
  `deal_state` varchar(2) DEFAULT NULL COMMENT '当前计算状态 1：计算中 2：计算完成',
  `create_date` datetime DEFAULT NULL COMMENT '记录创建时间',
  `valid_date` datetime DEFAULT NULL COMMENT '生效时间',
  `expire_date` datetime DEFAULT NULL COMMENT '失效时间',
  `done_date` datetime DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `notes` varchar(256) DEFAULT NULL COMMENT '备注',
  `tenant_id` varchar(6) DEFAULT NULL COMMENT '租户标识',
  PRIMARY KEY (`h_id`),
  KEY `index_integral_book_his_1` (`integral_account_id`),
  KEY `index_integral_book_his_2` (`outer_id`,`outer_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分账本历史表';

/*Table structure for table `integral_book_record` */

DROP TABLE IF EXISTS `integral_book_record`;

CREATE TABLE `integral_book_record` (
  `integral_book_record_id` bigint(14) NOT NULL COMMENT '积分变更记录标识',
  `integral_book_id` bigint(14) NOT NULL COMMENT '积分账本标识',
  `integral_account_id` bigint(14) NOT NULL COMMENT '积分账户标识',
  `integral_type_id` varchar(4) NOT NULL COMMENT '积分类型标识',
  `busi_id` varchar(16) DEFAULT NULL COMMENT '业务标识，如参与的营销活动标识',
  `integral_plan_rule_id` bigint(14) DEFAULT NULL,
  `current_cycle` varchar(6) NOT NULL COMMENT '当前计算周期，如201807',
  `change_amount` bigint(8) NOT NULL COMMENT '本次变化值，数值不足1的向上取整',
  `oper_date` datetime NOT NULL COMMENT '操作时间',
  `valid_date` datetime DEFAULT NULL COMMENT '生效时间',
  `expire_date` datetime DEFAULT NULL COMMENT '失效时间',
  `done_date` datetime DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `notes` varchar(256) DEFAULT NULL COMMENT '备注',
  `tenant_id` varchar(6) DEFAULT NULL COMMENT '租户标识',
  PRIMARY KEY (`integral_book_record_id`),
  KEY `index_integral_book_record_1` (`integral_book_id`),
  KEY `index_integral_book_record_2` (`integral_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分账本新增变更记录';

/*Table structure for table `integral_book_record_bak` */

DROP TABLE IF EXISTS `integral_book_record_bak`;

CREATE TABLE `integral_book_record_bak` (
  `h_id` bigint(14) NOT NULL,
  `integral_book_record_id` bigint(14) NOT NULL COMMENT '积分变更记录标识',
  `integral_book_id` bigint(14) NOT NULL COMMENT '积分账本标识',
  `integral_account_id` bigint(14) NOT NULL COMMENT '积分账户标识',
  `integral_type` varchar(4) NOT NULL COMMENT '积分类型标识',
  `busi_id` varchar(16) DEFAULT NULL COMMENT '业务标识，如参与的营销活动标识',
  `integral_plan_rule_id` bigint(14) DEFAULT NULL,
  `current_cycle` varchar(6) NOT NULL COMMENT '当前计算周期，如201807',
  `change_amount` bigint(8) NOT NULL COMMENT '本次变化值，数值不足1的向上取整',
  `oper_date` datetime NOT NULL COMMENT '操作时间',
  `valid_date` datetime DEFAULT NULL COMMENT '生效时间',
  `expire_date` datetime DEFAULT NULL COMMENT '失效时间',
  `done_date` datetime DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `notes` varchar(256) DEFAULT NULL COMMENT '备注',
  `tenant_id` varchar(6) DEFAULT NULL COMMENT '租户标识',
  PRIMARY KEY (`h_id`),
  KEY `index_integral_book_record_bak_1` (`integral_book_id`),
  KEY `index_integral_book_record_bak_2` (`integral_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分账本新增变更记录备份表，存6个月前的数据';

/*Table structure for table `integral_book_record_his` */

DROP TABLE IF EXISTS `integral_book_record_his`;

CREATE TABLE `integral_book_record_his` (
  `integral_book_record_id` bigint(14) NOT NULL COMMENT '积分变更记录标识',
  `integral_book_id` bigint(14) NOT NULL COMMENT '积分账本标识',
  `integral_account_id` bigint(14) NOT NULL COMMENT '积分账户标识',
  `integral_type` varchar(4) NOT NULL COMMENT '积分类型标识',
  `busi_id` varchar(16) DEFAULT NULL COMMENT '业务标识，如参与的营销活动标识',
  `integral_plan_rule_id` bigint(14) DEFAULT NULL,
  `current_cycle` varchar(6) NOT NULL COMMENT '当前计算周期，如201807',
  `change_amount` bigint(8) NOT NULL COMMENT '本次变化值，数值不足1的向上取整',
  `oper_date` datetime NOT NULL COMMENT '操作时间',
  `valid_date` datetime DEFAULT NULL COMMENT '生效时间',
  `expire_date` datetime DEFAULT NULL COMMENT '失效时间',
  `done_time` datetime DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `notes` varchar(256) DEFAULT NULL COMMENT '备注',
  `tenant_id` varchar(6) DEFAULT NULL COMMENT '租户标识',
  PRIMARY KEY (`integral_book_record_id`),
  UNIQUE KEY `index_integral_book_record_his_0` (`integral_book_record_id`),
  KEY `index_integral_book_record_his_1` (`integral_book_id`),
  KEY `index_integral_book_record_his_2` (`integral_account_id`),
  KEY `index_integral_book_record_his_3` (`current_cycle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分账本新增变更记录历史表，只存最近6个月的数据';

/*Table structure for table `integral_plan` */

DROP TABLE IF EXISTS `integral_plan`;

CREATE TABLE `integral_plan` (
  `integral_plan_id` bigint(14) NOT NULL COMMENT '积分计划标识',
  `integral_plan_type` bigint(2) NOT NULL COMMENT '积分计划类型 10：基础积分计划 20：定制积分计划',
  `integral_plan_name` varchar(64) NOT NULL COMMENT '积分计划名称',
  `priority` bigint(3) DEFAULT NULL COMMENT '优先级',
  `status` bigint(2) NOT NULL COMMENT '状态 0：失效 1：生效',
  `create_date` datetime DEFAULT NULL COMMENT '记录创建时间',
  `valid_date` datetime NOT NULL COMMENT '生效时间',
  `expire_date` datetime NOT NULL COMMENT '失效时间',
  `done_date` datetime DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `notes` varchar(256) DEFAULT NULL COMMENT '备注',
  `tenant_id` varchar(6) DEFAULT NULL COMMENT '租户标识',
  PRIMARY KEY (`integral_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分计划';

/*Table structure for table `integral_plan_instance` */

DROP TABLE IF EXISTS `integral_plan_instance`;

CREATE TABLE `integral_plan_instance` (
  `integral_plan_instance_id` bigint(14) NOT NULL COMMENT '积分计划实例标识，基础积分计划不实例化',
  `integral_account_id` bigint(14) NOT NULL COMMENT '积分账户标识',
  `integral_plan_id` bigint(14) NOT NULL COMMENT '积分计划标识',
  `create_date` datetime DEFAULT NULL COMMENT '记录创建时间',
  `valid_date` datetime NOT NULL COMMENT '生效时间',
  `expire_date` datetime NOT NULL COMMENT '失效时间',
  `done_date` datetime DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `notes` varchar(256) DEFAULT NULL COMMENT '备注',
  `tenant_id` varchar(6) DEFAULT NULL COMMENT '租户标识',
  PRIMARY KEY (`integral_plan_instance_id`),
  KEY `index_integral_plan_instance_1` (`integral_account_id`),
  KEY `index_integral_plan_instance_2` (`integral_plan_id`),
  KEY `index_integral_plan_instance_3` (`valid_date`,`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分计划订购实例';

/*Table structure for table `integral_plan_instance_his` */

DROP TABLE IF EXISTS `integral_plan_instance_his`;

CREATE TABLE `integral_plan_instance_his` (
  `h_id` bigint(14) NOT NULL,
  `integral_plan_instance_id` bigint(14) NOT NULL COMMENT '积分计划实例标识，基础积分计划不实例化',
  `integral_account_id` bigint(14) NOT NULL COMMENT '积分账户标识',
  `integral_plan_id` bigint(14) NOT NULL COMMENT '积分计划标识',
  `create_date` datetime DEFAULT NULL COMMENT '记录创建时间',
  `valid_date` datetime NOT NULL COMMENT '生效时间',
  `expire_date` datetime NOT NULL COMMENT '失效时间',
  `done_date` datetime DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `notes` varchar(256) DEFAULT NULL COMMENT '备注',
  `tenant_id` varchar(6) DEFAULT NULL COMMENT '租户标识',
  PRIMARY KEY (`h_id`),
  KEY `index_integral_plan_instance_his_1` (`integral_account_id`),
  KEY `index_integral_plan_instance_his_2` (`integral_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分计划订购实例历史表';

/*Table structure for table `integral_type` */

DROP TABLE IF EXISTS `integral_type`;

CREATE TABLE `integral_type` (
  `integral_type_id` varchar(4) NOT NULL COMMENT '积分类型标识',
  `integral_type_name` varchar(64) DEFAULT NULL COMMENT '积分类型名称',
  `status` bigint(2) NOT NULL COMMENT '账户状态 0：失效 1：生效',
  `create_date` datetime DEFAULT NULL COMMENT '记录创建时间',
  `valid_date` datetime NOT NULL COMMENT '生效时间',
  `expire_date` datetime NOT NULL COMMENT '失效时间',
  `done_date` datetime DEFAULT NULL,
  `done_code` bigint(12) DEFAULT NULL,
  `op_id` bigint(12) DEFAULT NULL,
  `org_id` bigint(12) DEFAULT NULL,
  `notes` varchar(256) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`integral_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分类型';

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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
