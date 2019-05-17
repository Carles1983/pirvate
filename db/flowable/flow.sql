/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log : Database - csflowable
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`flowable` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `flowable`;

/*Table structure for table `act_app_appdef` */

DROP TABLE IF EXISTS `act_app_appdef`;

CREATE TABLE `act_app_appdef` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REV_` int(11) NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_app_databasechangelog` */

DROP TABLE IF EXISTS `act_app_databasechangelog`;

CREATE TABLE `act_app_databasechangelog` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHOR` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FILENAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MD5SUM` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIQUIBASE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LABELS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_app_deployment` */

DROP TABLE IF EXISTS `act_app_deployment`;

CREATE TABLE `act_app_deployment` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOY_TIME_` datetime DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_app_deployment_resource` */

DROP TABLE IF EXISTS `act_app_deployment_resource`;

CREATE TABLE `act_app_deployment_resource` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESOURCE_BYTES_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_cmmn_casedef` */

DROP TABLE IF EXISTS `act_cmmn_casedef`;

CREATE TABLE `act_cmmn_casedef` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REV_` int(11) NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` bit(1) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_START_FORM_KEY_` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_cmmn_databasechangelog` */

DROP TABLE IF EXISTS `act_cmmn_databasechangelog`;

CREATE TABLE `act_cmmn_databasechangelog` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHOR` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FILENAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MD5SUM` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIQUIBASE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LABELS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_cmmn_deployment` */

DROP TABLE IF EXISTS `act_cmmn_deployment`;

CREATE TABLE `act_cmmn_deployment` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOY_TIME_` datetime DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_cmmn_deployment_resource` */

DROP TABLE IF EXISTS `act_cmmn_deployment_resource`;

CREATE TABLE `act_cmmn_deployment_resource` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESOURCE_BYTES_` longblob,
  `GENERATED_` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_cmmn_hi_case_inst` */

DROP TABLE IF EXISTS `act_cmmn_hi_case_inst`;

CREATE TABLE `act_cmmn_hi_case_inst` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REV_` int(11) NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CASE_DEF_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATE_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_cmmn_hi_mil_inst` */

DROP TABLE IF EXISTS `act_cmmn_hi_mil_inst`;

CREATE TABLE `act_cmmn_hi_mil_inst` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REV_` int(11) NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TIME_STAMP_` datetime NOT NULL,
  `CASE_INST_ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CASE_DEF_ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_cmmn_hi_plan_item_inst` */

DROP TABLE IF EXISTS `act_cmmn_hi_plan_item_inst`;

CREATE TABLE `act_cmmn_hi_plan_item_inst` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REV_` int(11) NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATE_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CASE_DEF_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CASE_INST_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAGE_INST_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_STAGE_` bit(1) DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_DEFINITION_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_DEFINITION_TYPE_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_TIME_` datetime DEFAULT NULL,
  `LAST_AVAILABLE_TIME_` datetime DEFAULT NULL,
  `LAST_ENABLED_TIME_` datetime DEFAULT NULL,
  `LAST_DISABLED_TIME_` datetime DEFAULT NULL,
  `LAST_STARTED_TIME_` datetime DEFAULT NULL,
  `LAST_SUSPENDED_TIME_` datetime DEFAULT NULL,
  `COMPLETED_TIME_` datetime DEFAULT NULL,
  `OCCURRED_TIME_` datetime DEFAULT NULL,
  `TERMINATED_TIME_` datetime DEFAULT NULL,
  `EXIT_TIME_` datetime DEFAULT NULL,
  `ENDED_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REFERENCE_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_cmmn_ru_case_inst` */

DROP TABLE IF EXISTS `act_cmmn_ru_case_inst`;

CREATE TABLE `act_cmmn_ru_case_inst` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REV_` int(11) NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CASE_DEF_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATE_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_TIME_` datetime DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `LOCK_TIME_` datetime DEFAULT NULL,
  `IS_COMPLETEABLE_` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_cmmn_ru_mil_inst` */

DROP TABLE IF EXISTS `act_cmmn_ru_mil_inst`;

CREATE TABLE `act_cmmn_ru_mil_inst` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TIME_STAMP_` datetime NOT NULL,
  `CASE_INST_ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CASE_DEF_ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_cmmn_ru_plan_item_inst` */

DROP TABLE IF EXISTS `act_cmmn_ru_plan_item_inst`;

CREATE TABLE `act_cmmn_ru_plan_item_inst` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REV_` int(11) NOT NULL,
  `CASE_DEF_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CASE_INST_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAGE_INST_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_STAGE_` bit(1) DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATE_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_TIME_` datetime DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REFERENCE_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `ITEM_DEFINITION_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_DEFINITION_TYPE_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_COMPLETEABLE_` bit(1) DEFAULT NULL,
  `IS_COUNT_ENABLED_` bit(1) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `SENTRY_PART_INST_COUNT_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_cmmn_ru_sentry_part_inst` */

DROP TABLE IF EXISTS `act_cmmn_ru_sentry_part_inst`;

CREATE TABLE `act_cmmn_ru_sentry_part_inst` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REV_` int(11) NOT NULL,
  `CASE_DEF_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CASE_INST_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PLAN_ITEM_INST_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ON_PART_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IF_PART_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_STAMP_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_co_content_item` */

DROP TABLE IF EXISTS `act_co_content_item`;

CREATE TABLE `act_co_content_item` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MIME_TYPE_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TASK_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROC_INST_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT_STORE_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT_STORE_NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT_AVAILABLE_` bit(1) DEFAULT b'0',
  `CREATED_` timestamp(6) NULL DEFAULT NULL,
  `CREATED_BY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED_` timestamp(6) NULL DEFAULT NULL,
  `LAST_MODIFIED_BY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT_SIZE_` bigint(20) DEFAULT '0',
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `idx_contitem_taskid` (`TASK_ID_`),
  KEY `idx_contitem_procid` (`PROC_INST_ID_`),
  KEY `idx_contitem_scope` (`SCOPE_ID_`,`SCOPE_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_co_databasechangelog` */

DROP TABLE IF EXISTS `act_co_databasechangelog`;

CREATE TABLE `act_co_databasechangelog` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHOR` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FILENAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MD5SUM` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIQUIBASE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LABELS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_dmn_databasechangelog` */

DROP TABLE IF EXISTS `act_dmn_databasechangelog`;

CREATE TABLE `act_dmn_databasechangelog` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHOR` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FILENAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MD5SUM` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIQUIBASE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LABELS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_dmn_decision_table` */

DROP TABLE IF EXISTS `act_dmn_decision_table`;

CREATE TABLE `act_dmn_decision_table` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_dmn_deployment` */

DROP TABLE IF EXISTS `act_dmn_deployment`;

CREATE TABLE `act_dmn_deployment` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOY_TIME_` datetime DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_dmn_deployment_resource` */

DROP TABLE IF EXISTS `act_dmn_deployment_resource`;

CREATE TABLE `act_dmn_deployment_resource` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESOURCE_BYTES_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_dmn_hi_decision_execution` */

DROP TABLE IF EXISTS `act_dmn_hi_decision_execution`;

CREATE TABLE `act_dmn_hi_decision_execution` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DECISION_DEFINITION_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `INSTANCE_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXECUTION_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVITY_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FAILED_` bit(1) DEFAULT b'0',
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXECUTION_JSON_` longtext COLLATE utf8_unicode_ci,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_evt_log` */

DROP TABLE IF EXISTS `act_evt_log`;

CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB AUTO_INCREMENT=106097 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_fo_databasechangelog` */

DROP TABLE IF EXISTS `act_fo_databasechangelog`;

CREATE TABLE `act_fo_databasechangelog` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHOR` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FILENAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MD5SUM` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIQUIBASE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LABELS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_fo_form_definition` */

DROP TABLE IF EXISTS `act_fo_form_definition`;

CREATE TABLE `act_fo_form_definition` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_fo_form_deployment` */

DROP TABLE IF EXISTS `act_fo_form_deployment`;

CREATE TABLE `act_fo_form_deployment` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOY_TIME_` datetime DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_fo_form_instance` */

DROP TABLE IF EXISTS `act_fo_form_instance`;

CREATE TABLE `act_fo_form_instance` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FORM_DEFINITION_ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROC_INST_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROC_DEF_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBMITTED_DATE_` datetime DEFAULT NULL,
  `SUBMITTED_BY_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORM_VALUES_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_fo_form_resource` */

DROP TABLE IF EXISTS `act_fo_form_resource`;

CREATE TABLE `act_fo_form_resource` (
  `ID_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESOURCE_BYTES_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_IDENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT '1',
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT '1',
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_EXE` (`EXECUTION_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_id_bytearray` */

DROP TABLE IF EXISTS `act_id_bytearray`;

CREATE TABLE `act_id_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_id_priv` */

DROP TABLE IF EXISTS `act_id_priv`;

CREATE TABLE `act_id_priv` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PRIV_NAME` (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_id_priv_mapping` */

DROP TABLE IF EXISTS `act_id_priv_mapping`;

CREATE TABLE `act_id_priv_mapping` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PRIV_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_id_property` */

DROP TABLE IF EXISTS `act_id_property`;

CREATE TABLE `act_id_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_id_token` */

DROP TABLE IF EXISTS `act_id_token`;

CREATE TABLE `act_id_token` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TOKEN_VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_DATE_` timestamp(3) NULL DEFAULT NULL,
  `IP_ADDRESS_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_AGENT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_DATA_` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_procdef_info` */

DROP TABLE IF EXISTS `act_procdef_info`;

CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_VERSION_` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`DERIVED_VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_ru_deadletter_job` */

DROP TABLE IF EXISTS `act_ru_deadletter_job`;

CREATE TABLE `act_ru_deadletter_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_DEADLETTER_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  KEY `ACT_IDX_DJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_DJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_DJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_MI_ROOT_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int(11) DEFAULT NULL,
  `TASK_COUNT_` int(11) DEFAULT NULL,
  `JOB_COUNT_` int(11) DEFAULT NULL,
  `TIMER_JOB_COUNT_` int(11) DEFAULT NULL,
  `SUSP_JOB_COUNT_` int(11) DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int(11) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_ru_history_job` */

DROP TABLE IF EXISTS `act_ru_history_job`;

CREATE TABLE `act_ru_history_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ADV_HANDLER_CFG_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_IDENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_IDENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  KEY `ACT_IDX_JOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_JOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_JOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_ru_suspended_job` */

DROP TABLE IF EXISTS `act_ru_suspended_job`;

CREATE TABLE `act_ru_suspended_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_SUSPENDED_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  KEY `ACT_IDX_SJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_SJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_SJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  `SUB_TASK_COUNT_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_IDX_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_ru_timer_job` */

DROP TABLE IF EXISTS `act_ru_timer_job`;

CREATE TABLE `act_ru_timer_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TIMER_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  KEY `ACT_IDX_TJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_TJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_TJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_RU_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_RU_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
