/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log : Database - msm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`msm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `msm`;

/*Table structure for table `job_config` */

DROP TABLE IF EXISTS `job_config`;

CREATE TABLE `job_config` (
  `JOB_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `JOB_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `JOB_PATH` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `JOB_CRON` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `JOB_SHARDING_COUNT` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `JOB_SHARDING_PARAMETER` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `JOB_TYPE` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '0=SimpleJob,1=DataFlowJob',
  `JOB_PARAMETER` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `JOB_DESCRIPTION` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `FAILOVER` varchar(2) COLLATE utf8_bin DEFAULT '0' COMMENT '0=false,1=true',
  `MISFIRE` varchar(2) COLLATE utf8_bin DEFAULT '1' COMMENT '0=false,1=true',
  `STREAMING_PROCESS` varchar(2) COLLATE utf8_bin DEFAULT '0' COMMENT '0=false,1=true',
  `STATE` varchar(2) COLLATE utf8_bin DEFAULT '1',
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `msm_attach` */

DROP TABLE IF EXISTS `msm_attach`;

CREATE TABLE `msm_attach` (
  `ATTACH_ID` varchar(20) NOT NULL COMMENT '附件ID',
  `BUSI_TYPE_CODE` varchar(200) DEFAULT NULL COMMENT '业务类型编码',
  `BUSI_SHEET_ID` varchar(20) DEFAULT NULL COMMENT '相关业务编号',
  `ATTACH_CODE` varchar(3) DEFAULT NULL COMMENT '附件类型\n            1.线索附件\n            3.商机附件\n            5.建议书附件\n            7.销售任务附件',
  `FILE_NAME` varchar(200) DEFAULT NULL COMMENT '附件文件名',
  `STORAGE_FILE_URI` varchar(1024) DEFAULT NULL COMMENT '附件在服务器上的存储路径，目前指服务器上的唯一文件名',
  `REMARKS` varchar(400) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ATTACH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售附件表';

/*Table structure for table `msm_competitor` */

DROP TABLE IF EXISTS `msm_competitor`;

CREATE TABLE `msm_competitor` (
  `CUST_COMPET_ID` bigint(12) NOT NULL COMMENT '记录竞争对手的唯一标识，作为主键。',
  `CUSTOMER_ID` bigint(15) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(128) DEFAULT NULL,
  `COMPETITOR_ID` bigint(15) DEFAULT NULL,
  `COMPETITOR_NAME` varchar(128) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL COMMENT '记录竞争对手描述信息。',
  `COMPETITOR_TIER` varchar(3) DEFAULT NULL COMMENT '10 一级，20 二级，30 三级，40 四级，50 五级',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '记录竞争对手信息的创建时间。',
  `EFFECT_DATE` datetime DEFAULT NULL COMMENT '记录竞争对手信息生效时间。',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '记录竞争对手信息的失效时间。',
  `COMPETITOR_STATE` varchar(3) DEFAULT NULL COMMENT '状态 10A有效 10X 无效\n            CODE_TYPE= MSM_COMPETITOR.COMPETITOR_STATE',
  `STATE_DATE` datetime DEFAULT NULL COMMENT '记录竞争对手信息状态变更的时间。',
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`CUST_COMPET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竞争对手表\n竞争者一般是指那些与本企业提供的产品或服务相似，并且所服务的目标顾客也相似的其他企业\n                                       -&#&';

/*Table structure for table `msm_competitor_prod` */

DROP TABLE IF EXISTS `msm_competitor_prod`;

CREATE TABLE `msm_competitor_prod` (
  `COMPET_PROD_ID` bigint(12) NOT NULL,
  `CUST_COMPET_ID` bigint(12) DEFAULT NULL COMMENT '记录竞争对手的唯一标识，作为主键。',
  `PROD_TYPE` bigint(15) DEFAULT NULL COMMENT '从UPC查询catalog',
  `PROD_NUMEBR` bigint(20) DEFAULT NULL,
  `PROD_REVENUE` bigint(20) DEFAULT NULL,
  `AGR_EXPIRE_DATE` datetime DEFAULT NULL,
  `PROVIDER` bigint(15) DEFAULT NULL COMMENT '即竞争者',
  `OTHER_PROVIDER` varchar(128) DEFAULT NULL,
  `PRODUCT_DESCRIPTION` varchar(128) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE2` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`COMPET_PROD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竞争者产品信息\n';

/*Table structure for table `msm_competitor_swot` */

DROP TABLE IF EXISTS `msm_competitor_swot`;

CREATE TABLE `msm_competitor_swot` (
  `COMPETITOR_SWOT_ID` bigint(15) NOT NULL,
  `CUST_COMPET_ID` bigint(12) DEFAULT NULL COMMENT '记录竞争对手的唯一标识，作为主键。',
  `IMPACT_LEVEL` char(10) DEFAULT NULL COMMENT '1 High\n            3 Low\n            5 None\n            CODE_TYPE = MSM_SALES_OPPORTUNITY.COMPETITIVES.IMPACT_LEVEL',
  `STRENGTHS` varchar(512) DEFAULT NULL,
  `WEAKNESSES` varchar(512) DEFAULT NULL,
  `OPPORTUNITIES` varchar(512) DEFAULT NULL,
  `THREATS` varchar(512) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态 10A有效 10X 无效',
  `STATE_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE2` bigint(1) DEFAULT NULL,
  `PRODUCT_NAME` varchar(3) DEFAULT NULL,
  `PRODUCT_UNIT` bigint(20) DEFAULT NULL,
  `REVENUE` bigint(20) DEFAULT NULL,
  `CONTRACT_END_DATE` datetime DEFAULT NULL,
  `REMINDER_TIME` varchar(50) DEFAULT NULL COMMENT '提前多久提醒',
  PRIMARY KEY (`COMPETITOR_SWOT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商机竞争者SWOT表\n同一个竞争对手对比优势，劣势，机遇，挑战。SWOT分析企业识别和制定发展机会的分析框架';

/*Table structure for table `msm_cust_assimt` */

DROP TABLE IF EXISTS `msm_cust_assimt`;

CREATE TABLE `msm_cust_assimt` (
  `CUST_ASSIMT_ID` bigint(15) NOT NULL,
  `CUSTOMER_ID` bigint(15) DEFAULT NULL,
  `ASSIGN_ORG_ID` bigint(12) DEFAULT NULL,
  `ASSIGN_OPERATOR_ID` bigint(12) DEFAULT NULL,
  `SALES_ORGNIZATION_ID` bigint(12) DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `ASSIGN_DATE` datetime DEFAULT NULL,
  `ASSIGN_STATE` varchar(3) DEFAULT NULL,
  `STATE_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `COMMENTS` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`CUST_ASSIMT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CUSTOMER_ASSIGNMENT';

/*Table structure for table `msm_ia_record_attach` */

DROP TABLE IF EXISTS `msm_ia_record_attach`;

CREATE TABLE `msm_ia_record_attach` (
  `INTERACTION_RECORD_ATTACHMENT_` bigint(12) NOT NULL,
  `INTERACTION_RECORD_ID` bigint(15) DEFAULT NULL,
  `ATTACH_FILE` varchar(128) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`INTERACTION_RECORD_ATTACHMENT_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='INTERACTION_RECORD_ATTACHMENT';

/*Table structure for table `msm_operator_in_org` */

DROP TABLE IF EXISTS `msm_operator_in_org`;

CREATE TABLE `msm_operator_in_org` (
  `OPERATOR_IN_ORG_ID` bigint(12) NOT NULL,
  `OPERATOR_IN_ORG_NAME` varchar(128) DEFAULT NULL,
  `SALES_ORGNIZATION_ID` bigint(12) DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `OPERATOR_NAME` varchar(128) DEFAULT NULL,
  `OPERATOR_ROLE` varchar(3) DEFAULT NULL COMMENT 'TITLE',
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OPERATOR_ID` bigint(12) DEFAULT NULL,
  `OPERATOR_IN_ORG_STATE` bigint(1) DEFAULT NULL COMMENT '0 Inactive\n            1 active\n            \n            CODE_TYPE=MSM_OPERATOR_IN_ORG.OPERATOR_IN_ORG_STATE',
  `STATE_DATE` datetime DEFAULT NULL,
  `COMMENTS` varchar(512) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`OPERATOR_IN_ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作员销售组织任职关系\n销售组织上任职的人员在人力资源组织上也有任职，具体的任职关系可能会存在交叉的。具体来';

/*Table structure for table `msm_operator_in_role` */

DROP TABLE IF EXISTS `msm_operator_in_role`;

CREATE TABLE `msm_operator_in_role` (
  `OPERATOR_IN_ROLE_ID` bigint(12) NOT NULL,
  `OPERATOR_ROLE_ID` bigint(12) DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OPERATOR_ID` bigint(12) DEFAULT NULL,
  `STATE_DATE` datetime DEFAULT NULL,
  `COMMENTS` varchar(512) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`OPERATOR_IN_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `msm_opty_compet_rela` */

DROP TABLE IF EXISTS `msm_opty_compet_rela`;

CREATE TABLE `msm_opty_compet_rela` (
  `RELA_ID` bigint(12) NOT NULL COMMENT '记录竞争对手的唯一标识，作为主键。',
  `OPPORTUNITY_ID` bigint(15) DEFAULT NULL,
  `CUST_COMPET_ID` bigint(12) DEFAULT NULL COMMENT '记录竞争对手的唯一标识，作为主键。',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '记录竞争对手信息的创建时间。',
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商机的客户竞争者\n';

/*Table structure for table `msm_sales_matrix` */

DROP TABLE IF EXISTS `msm_sales_matrix`;

CREATE TABLE `msm_sales_matrix` (
  `SALES_MATRIX_ID` bigint(12) NOT NULL,
  `SALES_MATRIX_TYPE` varchar(3) DEFAULT NULL,
  `CUSTOMER_RELATIONSHIP` bigint(12) DEFAULT NULL COMMENT '新客户、老客户',
  `CUSTOMER_TYPE` bigint(12) DEFAULT NULL COMMENT '各客户等级类型',
  `MSISDN_LEVEL` bigint(12) DEFAULT NULL COMMENT '号码级别,Normal & C5、B2、B3、A4',
  `UPPER_LIMIT` bigint(8) DEFAULT NULL,
  `LOWER_LIMIT` bigint(8) DEFAULT NULL,
  `AUTHORIZATE_POSITION` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`SALES_MATRIX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售权限矩阵\n不能级别的操作员能够允许，不同的客户类型能够订购的号码数量不同,能够订购的号码级别也不同。';

/*Table structure for table `msm_sales_org` */

DROP TABLE IF EXISTS `msm_sales_org`;

CREATE TABLE `msm_sales_org` (
  `SALES_ORGNIZATION_ID` bigint(12) NOT NULL,
  `SALES_ORGNIZATION_CODE` varchar(64) DEFAULT NULL,
  `NAME` varchar(128) DEFAULT NULL,
  `SALES_ORGNIZATION_TYPE` varchar(3) DEFAULT NULL COMMENT '1 Head of Enterprise Sales\n            2 BIZ Sr. Manager\n            ...\n            销售组织节点会划分成若干种类型，通过组织类型区分在系统中的权限，最核心的类型是客户经理，渠道经理，BST（BIZ ），HEAD等几种类型。根据业务会有所变化。\n            \n            CODE_TYPE=MSM_SALES_ORG.SALES_ORGNIZATION_TYPE',
  `SALES_CHANNEL_ID` bigint(12) DEFAULT NULL,
  `DESCRIPTION` varchar(128) DEFAULT NULL,
  `PARENT_SALES_ORGNIZATION_ID` bigint(12) NOT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OPERATOR_ID` bigint(12) NOT NULL,
  `SALES_ORGNIZATION_STATE` bigint(1) DEFAULT NULL COMMENT '0 Disable\n            1 Enable\n            销售组织有效状态\n            CODE_TYPE=MSM_SALES_ORG.SALES_ORGNIZATION_STATE',
  `STATE_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `SUB_SALES_CHANNEL_ID` bigint(12) DEFAULT NULL,
  `STATIC_CHANNEL` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`SALES_ORGNIZATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售组织 Sales Hierarchy & Position\n和系统的人力资源管理组织不同，人力资源管理组';

/*Table structure for table `msm_sales_role` */

DROP TABLE IF EXISTS `msm_sales_role`;

CREATE TABLE `msm_sales_role` (
  `SALES_ROLE_ID` bigint(12) NOT NULL,
  `SALES_ROLE_NAME` varchar(32) DEFAULT NULL,
  `SALES_ROLE_DESC` varchar(256) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OPERATOR_ID` bigint(12) DEFAULT NULL,
  `COMMENTS` varchar(512) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`SALES_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `msm_trac_log` */

DROP TABLE IF EXISTS `msm_trac_log`;

CREATE TABLE `msm_trac_log` (
  `ASSIGN_LOG_ID` bigint(12) NOT NULL,
  `RELATED_OBJECT_TYPE` varchar(30) DEFAULT NULL COMMENT '分配对象类型\n            线索、商机、Task（Activity）、客户',
  `ASSIGN_ORG_ID` bigint(12) DEFAULT NULL,
  `ASSIGN_OPERATOR_ID` bigint(12) DEFAULT NULL,
  `SALES_ORGNIZATION_ID` bigint(12) DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `RELATED_OBJECT_NAME` varchar(128) DEFAULT NULL,
  `RELATED_OBJECT_ID` varchar(30) DEFAULT NULL,
  `ASSIGN_TYPE` varchar(3) DEFAULT NULL COMMENT '0 分配 1回退（取消分配）',
  `PARENT_ASSIGN_LOG_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `REMARKS` varchar(128) DEFAULT NULL,
  `SUB_OBJECT_TYPE` varchar(30) DEFAULT NULL,
  `STATE_TRAC` bigint(2) DEFAULT NULL,
  PRIMARY KEY (`ASSIGN_LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `opt_cus_asmt_imp_log` */

DROP TABLE IF EXISTS `opt_cus_asmt_imp_log`;

CREATE TABLE `opt_cus_asmt_imp_log` (
  `LOG_ID` bigint(12) NOT NULL,
  `IMPORT_BATCH_ID` bigint(12) DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `OPERATOR_NAME` varchar(128) DEFAULT NULL,
  `CUSTOMER_ID` bigint(15) DEFAULT NULL,
  `CUST_NAME` varchar(128) DEFAULT NULL,
  `STATE` varchar(3) DEFAULT NULL COMMENT '10A 新建\n            10B 导入成功\n            10X 导入失败\n            \n            ',
  `REASON_TYPE` bigint(4) DEFAULT NULL COMMENT '0 成功\n            1 导入的客户不存在\n            2 客户ID name不匹配\n            3 导入operator不存在\n            4 导入operatorid name不匹配\n            5 导入关系已经存在\n            99 其他',
  `REASON_DESC` varchar(256) DEFAULT NULL,
  `IMP_EXCEPTION` varchar(1536) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `STATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `opt_cust_req` */

DROP TABLE IF EXISTS `opt_cust_req`;

CREATE TABLE `opt_cust_req` (
  `CUST_REQ_ID` bigint(15) NOT NULL,
  `CUST_REQ_TYPE` varchar(3) DEFAULT NULL COMMENT '*未使用',
  `PRODUCT_REQUIREMENT` varchar(512) DEFAULT NULL,
  `EXPENSE_REQUIREMENT` varchar(512) DEFAULT NULL,
  `NAME` varchar(128) DEFAULT NULL COMMENT '*未使用',
  `CUSTOMER_ID` bigint(15) DEFAULT NULL,
  `REQUIREMENT_DETAIL` varchar(512) DEFAULT NULL,
  `REQUEST_DELIVERY_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `PRODUCT_TYPE` decimal(12,0) DEFAULT NULL COMMENT '来自UPC， 对应Product Spec ID',
  `ESTIMATE_PRICE` bigint(8) DEFAULT NULL,
  `REVENUE` bigint(8) DEFAULT NULL,
  `MARGIN` bigint(8) DEFAULT NULL,
  `NET_PRICE` bigint(8) DEFAULT NULL,
  `SUBSIDY` bigint(8) DEFAULT NULL,
  `CURRENCY` varchar(3) DEFAULT NULL COMMENT '未使用，通过扩展字段实现',
  `QUANTITY` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`CUST_REQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户需求表\n按照租户分表';

/*Table structure for table `opt_cust_req_prod` */

DROP TABLE IF EXISTS `opt_cust_req_prod`;

CREATE TABLE `opt_cust_req_prod` (
  `CUST_REQ_PROD_ID` bigint(12) NOT NULL,
  `CUST_REQ_ID` bigint(15) DEFAULT NULL,
  `COMMENTS` varchar(512) DEFAULT NULL,
  `PRODUCT_QUANTITY` bigint(8) DEFAULT NULL,
  `ESTIMATE_PRICE` bigint(8) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`CUST_REQ_PROD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CUSTOMER_REQUIRE_PRODUCT_OFFERING';

/*Table structure for table `opt_ext_attr` */

DROP TABLE IF EXISTS `opt_ext_attr`;

CREATE TABLE `opt_ext_attr` (
  `EXT_ATTR_ID` bigint(15) NOT NULL,
  `SCHEMA_ID` bigint(12) DEFAULT NULL COMMENT '模式id\n            1 线索\n            2 商机\n            3 商机需求 \n            4 商机竞争者 \n            5 建议书 \n            6 销售任务 \n            7销售记录',
  `ENTITY_ID` bigint(15) DEFAULT NULL,
  `EXT64` varchar(256) DEFAULT NULL,
  `EXT63` varchar(256) DEFAULT NULL,
  `EXT62` varchar(256) DEFAULT NULL,
  `EXT61` varchar(256) DEFAULT NULL,
  `EXT60` varchar(256) DEFAULT NULL,
  `EXT59` varchar(256) DEFAULT NULL,
  `EXT58` varchar(256) DEFAULT NULL,
  `EXT57` varchar(256) DEFAULT NULL,
  `EXT56` varchar(256) DEFAULT NULL,
  `EXT55` varchar(256) DEFAULT NULL,
  `EXT54` varchar(256) DEFAULT NULL,
  `EXT53` varchar(256) DEFAULT NULL,
  `EXT52` varchar(256) DEFAULT NULL,
  `EXT51` varchar(256) DEFAULT NULL,
  `EXT50` varchar(256) DEFAULT NULL,
  `EXT49` varchar(256) DEFAULT NULL,
  `EXT48` varchar(256) DEFAULT NULL,
  `EXT47` varchar(256) DEFAULT NULL,
  `EXT46` varchar(256) DEFAULT NULL,
  `EXT45` varchar(256) DEFAULT NULL,
  `EXT44` varchar(256) DEFAULT NULL,
  `EXT43` varchar(256) DEFAULT NULL,
  `EXT42` varchar(256) DEFAULT NULL,
  `EXT41` varchar(256) DEFAULT NULL,
  `EXT40` varchar(256) DEFAULT NULL,
  `EXT39` varchar(256) DEFAULT NULL,
  `EXT38` varchar(256) DEFAULT NULL,
  `EXT37` varchar(256) DEFAULT NULL,
  `EXT36` varchar(256) DEFAULT NULL,
  `EXT35` varchar(256) DEFAULT NULL,
  `EXT34` varchar(256) DEFAULT NULL,
  `EXT33` varchar(256) DEFAULT NULL,
  `EXT32` varchar(256) DEFAULT NULL,
  `EXT31` varchar(256) DEFAULT NULL,
  `EXT30` varchar(256) DEFAULT NULL,
  `EXT29` varchar(256) DEFAULT NULL,
  `EXT28` varchar(256) DEFAULT NULL,
  `EXT27` varchar(256) DEFAULT NULL,
  `EXT26` varchar(256) DEFAULT NULL,
  `EXT25` varchar(256) DEFAULT NULL,
  `EXT24` varchar(256) DEFAULT NULL,
  `EXT23` varchar(256) DEFAULT NULL,
  `EXT22` varchar(256) DEFAULT NULL,
  `EXT21` varchar(256) DEFAULT NULL,
  `EXT20` varchar(256) DEFAULT NULL,
  `EXT19` varchar(256) DEFAULT NULL,
  `EXT18` varchar(256) DEFAULT NULL,
  `EXT17` varchar(256) DEFAULT NULL,
  `EXT16` varchar(256) DEFAULT NULL,
  `EXT15` varchar(256) DEFAULT NULL,
  `EXT14` varchar(256) DEFAULT NULL,
  `EXT13` varchar(256) DEFAULT NULL,
  `EXT12` varchar(256) DEFAULT NULL,
  `EXT11` varchar(256) DEFAULT NULL,
  `EXT10` varchar(256) DEFAULT NULL,
  `EXT9` varchar(256) DEFAULT NULL,
  `EXT8` varchar(256) DEFAULT NULL,
  `EXT7` varchar(256) DEFAULT NULL,
  `EXT6` varchar(256) DEFAULT NULL,
  `EXT5` varchar(256) DEFAULT NULL,
  `EXT4` varchar(256) DEFAULT NULL,
  `EXT3` varchar(256) DEFAULT NULL,
  `EXT1` varchar(256) DEFAULT NULL,
  `EXT2` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`EXT_ATTR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='线索、商机表分别建立统一横向扩展表，专门存储自定义字段，暂时提供64个。这样对主表暂时没有影响，如果查询线索、商机需要查';

/*Table structure for table `opt_ext_tbl_field_def` */

DROP TABLE IF EXISTS `opt_ext_tbl_field_def`;

CREATE TABLE `opt_ext_tbl_field_def` (
  `FIELD_ID` bigint(12) NOT NULL,
  `SCHEMA_ID` bigint(12) DEFAULT NULL COMMENT '模式id\n            1 线索\n            2 商机\n            3 商机需求 \n            4 商机竞争者 \n            5 建议书 \n            6 销售任务 \n            7销售记录',
  `EXT_TBL_NAME` varchar(128) DEFAULT NULL,
  `EXT_FIELD_NAME` varchar(128) DEFAULT NULL,
  `EXT_FIELD_DISPLAY_NAME` varchar(128) DEFAULT NULL,
  `DATA_TYPE` varchar(3) DEFAULT NULL COMMENT 'OPT_EXT_TBL_FIELD_DEF.DATA_TYPE',
  `IS_MANDATORY` bigint(1) DEFAULT NULL,
  `INPUT_TYPE` varchar(3) DEFAULT NULL COMMENT '1 下拉\n            2 文本\n            3 日期\n            4 弹出框',
  `IS_DISPLAY` bigint(1) DEFAULT NULL,
  `DISPLAY_SEQ` bigint(8) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `FIELD_STATUS` varchar(3) DEFAULT NULL,
  `STATUS_TIME` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `FROM_VALUE` varchar(256) DEFAULT NULL,
  `TO_VALUE` varchar(256) DEFAULT NULL,
  `VALIDATE_RULE` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `opt_funnel_layer` */

DROP TABLE IF EXISTS `opt_funnel_layer`;

CREATE TABLE `opt_funnel_layer` (
  `FUNNEL_LAYER_ID` bigint(12) NOT NULL,
  `SALES_FUNNEL_ID` bigint(12) DEFAULT NULL,
  `LAYER_NAME` varchar(128) DEFAULT NULL,
  `LAYER_COLOR` varchar(256) DEFAULT NULL,
  `LAYER_SEQUENCE` varchar(3) DEFAULT NULL,
  `LAYER_REVENUE_RATE` bigint(8) DEFAULT NULL COMMENT '*设置销售层级的转收入的成功几率，用于预测目标收入和设置总销售收入目标',
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`FUNNEL_LAYER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售漏斗层级\n定义了某一个漏斗的能够显示的层次。比如一个漏斗定义了线索创建，商机创建，建议书客户接受，开通成';

/*Table structure for table `opt_funnel_lyr_oppty` */

DROP TABLE IF EXISTS `opt_funnel_lyr_oppty`;

CREATE TABLE `opt_funnel_lyr_oppty` (
  `FUNNEL_LAYER_STATE_ID` bigint(12) NOT NULL,
  `FUNNEL_LAYER_ID` bigint(12) DEFAULT NULL,
  `OPPORTUNITY_STATE` varchar(3) DEFAULT NULL COMMENT '10 Opportunity Creation\n            15 Product Confirm\n            ....\n            \n            CODE_TYPE = MSM_SALES_FUNNEL_SHOW.STATE\n            ',
  `CREATE_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`FUNNEL_LAYER_STATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='漏斗层级对应销售状态表 FUNNEL_LAYER_OPPORTUNITY_STATE\n每一个漏斗层次对应了某';

/*Table structure for table `opt_ia_task_reminder` */

DROP TABLE IF EXISTS `opt_ia_task_reminder`;

CREATE TABLE `opt_ia_task_reminder` (
  `REMINDER_ID` bigint(12) NOT NULL,
  `INTERACTION_TASK_ID` bigint(15) DEFAULT NULL,
  `REMIND_TYPE` bigint(12) DEFAULT NULL COMMENT 'Email SMS',
  `REMIND_MESSAGE` varchar(512) DEFAULT NULL,
  `TIME_UNIT` varchar(3) DEFAULT NULL COMMENT '提前提醒时间的单位\n            1.天\n            2.小时',
  `REMIND_BEFORE_TIME` bigint(8) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `DESCRIPTION` varchar(30) DEFAULT NULL,
  `SOURCE_TYPE` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`REMINDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接触任务提醒\n按照租户分表';

/*Table structure for table `opt_ia_task_type` */

DROP TABLE IF EXISTS `opt_ia_task_type`;

CREATE TABLE `opt_ia_task_type` (
  `INTERACTION_TASK_TYPE_ID` bigint(12) NOT NULL,
  `NAME` varchar(128) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`INTERACTION_TASK_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接触任务类型\n按照租户分表 ';

/*Table structure for table `opt_interaction_record` */

DROP TABLE IF EXISTS `opt_interaction_record`;

CREATE TABLE `opt_interaction_record` (
  `INTERACTION_RECORD_ID` bigint(15) NOT NULL,
  `INTERACTION_TASK_ID` bigint(15) DEFAULT NULL,
  `CONTACT_PERSON` varchar(128) DEFAULT NULL,
  `CONTACT_RECORD` varchar(512) DEFAULT NULL,
  `INTERACTION_PLACE` varchar(128) DEFAULT NULL,
  `INTERACTION_METHOD` varchar(3) DEFAULT NULL COMMENT '具体接触的完成形式\n            1.Meeting\n            3.Email\n            5.Calls\n            7.Others',
  `INTERACTION_DETAILED_TYPE` varchar(3) DEFAULT NULL COMMENT '1 Status meeting\n            3 Negotiation Meeting\n            5 Renewal Meeting\n            7 First Meeting\n            9 Phone Meeting\n            \n            CODE_TYPE=''OPT_INTERACTION_RECORD.DETAILED_TYPE''',
  `INTERACTION_EMAIL` varchar(512) DEFAULT NULL,
  `INTERACTION_PHONE` varchar(20) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `INTERACTION_STATE` varchar(3) DEFAULT NULL,
  `CHANNEL_ID` bigint(12) DEFAULT NULL,
  `CONFIG_ID` bigint(12) DEFAULT NULL,
  `FEEDBACK_OPINION` varchar(512) DEFAULT NULL COMMENT '部分接触任务需要客户给出反馈。',
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `RESERVE_DATE` datetime DEFAULT NULL COMMENT '预约时间',
  `RESERVE_ADDRESS` datetime DEFAULT NULL COMMENT '预约地址',
  `RESERVE_PHONE` varchar(20) DEFAULT NULL COMMENT '预约联系人电话',
  `CONTACT_OBJECT_TYPE` varchar(3) DEFAULT NULL COMMENT '接触对象类型 \n            1 用户\n            2 客户\n            对象类型是1时，CONTACT_OBJECT_ID记录号码，对象类型是2是，记录客户ID',
  `CONTACT_OBJECT_ID` varchar(256) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_OPERATOR_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `OUTLOOK_ENTRY_ID` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`INTERACTION_RECORD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接触记录\n按照租户分表';

/*Table structure for table `opt_interaction_task` */

DROP TABLE IF EXISTS `opt_interaction_task`;

CREATE TABLE `opt_interaction_task` (
  `INTERACTION_TASK_ID` bigint(15) NOT NULL,
  `INTERACTION_TASK_NAME` varchar(256) DEFAULT NULL,
  `INTERACTION_TASK_TYPE_ID` bigint(12) DEFAULT NULL,
  `TASK_PRIORITY` varchar(3) DEFAULT NULL COMMENT '1 Urgent\n            3 High\n            5 MEDIUM\n            7 Low\n            SELECT * FROM bs_static_data  WHERE code_type LIKE ''%MSM_INTERACTION_TASK.PRIORITY%''\n            ',
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `UPPER_INTERACTION_TASK_ID` varchar(256) DEFAULT NULL,
  `TASK_SOURCE_OBJECT_TYPE` varchar(3) DEFAULT NULL COMMENT '1 商机\n            2 日常\n            SELECT * FROM bs_static_data  WHERE code_type LIKE ''%MSM_INTERACTIOIN_TASK.TASK_SOURCE_OBJECT_TYPE%''\n            \n            ',
  `TASK_SOURCE_OBJECT_ID` varchar(256) DEFAULT NULL COMMENT '商机ID、营销活动ID、客户ID',
  `TASK_CONTACT_OBJECT_TYPE` varchar(3) DEFAULT NULL COMMENT '用户、客户',
  `TASK_CONTACT_OBJECT_ID` varchar(256) DEFAULT NULL,
  `CONTACT_ID` bigint(12) DEFAULT NULL COMMENT '联系人ID\n            \n            带到接触任务，为了提高性能。',
  `CONTACT_PERSON` varchar(128) DEFAULT NULL,
  `ACCESS_NUMBER` varchar(20) DEFAULT NULL,
  `SCRIPT_ID` bigint(12) DEFAULT NULL,
  `CHANNEL_ID` bigint(12) DEFAULT NULL,
  `QNR_REC_ID` bigint(12) DEFAULT NULL COMMENT '问卷记录ID',
  `CHANNEL_CODE` varchar(256) DEFAULT NULL COMMENT '用于标记外渠道code',
  `CONTACT_TIME` varchar(512) DEFAULT NULL COMMENT '建议接触时间:\n            例如：9-10,14-16 多时间点用逗号分隔',
  `CONTACT_DATE` varchar(512) DEFAULT NULL,
  `INTERACTION_TASK_STATE` varchar(3) DEFAULT NULL COMMENT '\n            0 未接触\n            1 已接触\n            SELECT * FROM bs_static_data  WHERE code_type LIKE ''%MSM_INTERACTIOIN_TASK.INTERACTION_TASK_STATE%''\n            \n            ',
  `STATE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_OPERATOR_ID` bigint(12) DEFAULT NULL,
  `ASSIGNORG` bigint(12) DEFAULT NULL,
  `ASSIGN_OPERATOR_ID` bigint(12) DEFAULT NULL,
  `DEVELOPE_ORG_ID` bigint(12) DEFAULT NULL,
  `DEVELOPE_OPERATOR_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `OUTLOOK_ENTRY_ID` varchar(60) DEFAULT NULL,
  `OPPORTUNITY_ID` int(15) DEFAULT NULL,
  PRIMARY KEY (`INTERACTION_TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接触任务\n按照租户分表';

/*Table structure for table `opt_lead_assimt` */

DROP TABLE IF EXISTS `opt_lead_assimt`;

CREATE TABLE `opt_lead_assimt` (
  `ID` bigint(15) NOT NULL,
  `SALES_LEAD_ID` bigint(15) DEFAULT NULL,
  `ASSIGN_ORG_ID` bigint(12) DEFAULT NULL,
  `ASSIGN_OPERATOR_ID` bigint(12) DEFAULT NULL,
  `SALES_ORGNIZATION_ID` bigint(12) DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `ASSIGN_DATE` datetime DEFAULT NULL,
  `ASSIGN_STATE` varchar(3) DEFAULT NULL COMMENT 'N失效/U有效',
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='线索分配表\n线索的创建之后,需要进行自动分配或者手动分配.该表维护分配记录.经过多次分配之后，只有一条分配记';

/*Table structure for table `opt_lead_attach` */

DROP TABLE IF EXISTS `opt_lead_attach`;

CREATE TABLE `opt_lead_attach` (
  `OPPORTUNITY_ATTACHMENT_ID` bigint(12) NOT NULL,
  `SALES_LEAD_ID` bigint(15) DEFAULT NULL,
  `ATTACH_FILE` varchar(128) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`OPPORTUNITY_ATTACHMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='LEAD_ATTACHMENT';

/*Table structure for table `opt_opportunity` */

DROP TABLE IF EXISTS `opt_opportunity`;

CREATE TABLE `opt_opportunity` (
  `OPPORTUNITY_ID` bigint(15) NOT NULL,
  `OPPORTUNITY_NAME` varchar(256) DEFAULT NULL,
  `ESTIMATE_START_DATE` datetime DEFAULT NULL,
  `ESTIMATE_END_DATE` datetime DEFAULT NULL,
  `CUSTOMER_ID` bigint(15) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(256) DEFAULT NULL,
  `COMPANY_TYPE` varchar(3) DEFAULT NULL COMMENT '1 SOLE PROPRIETOR\n            2 SMALL\n            3 High\n            ...\n            CODE_TYPE=MSM_SALES_OPPORTUNITY.COMPANY_TYPE',
  `OPPORTUNITY_CUST_STATE` varchar(30) DEFAULT NULL COMMENT '0 New\n            1 Existed\n            由于销售过程中的矩阵审批,表示为已有的客户,在审批过程中已有客户可以申请的号码数量和号码级别和新客户经是不同的.\n            \n            CODE_TYPE=MSM_SALES_OPPORTUNITY.OPPORTUNITY_CUST_STATE',
  `LEAD_CUSTOMER_GROUP` varchar(3) DEFAULT NULL COMMENT '0  Coporate\n            1 Individual\n            \n            \n            MSM_SALES_OPPORTUNITY.CUSTOMER_TYPE',
  `OPPORTUNITY_LEVEL` varchar(3) DEFAULT NULL COMMENT '1 Vital, 3 Important, 5 Medium,  7Low\n            \n            \n            CODE_TYPE=MSM_SALES_OPPORTUNITY.LEVEL',
  `OPPORTUNITY_PRIORITY` varchar(3) DEFAULT NULL COMMENT 'Urgent, High, Medium, Low\n            \n            \n            CODE_TYPE=MSM_SALES_OPPORTUNITY.PRIORITY',
  `OPPORTUNITY_TYPE` varchar(3) DEFAULT NULL COMMENT '*',
  `CUSTOMER_EXPECTATION` varchar(512) DEFAULT NULL COMMENT '*',
  `ESTIMATE_VALUE` bigint(20) DEFAULT NULL COMMENT 'ESTIMATE AMOUNT',
  `CONVETION_RATE` bigint(8) DEFAULT NULL COMMENT '80%, 50%, 30%',
  `EVALUATE_INFO` varchar(512) DEFAULT NULL COMMENT '*',
  `DESCRIPTION` varchar(512) DEFAULT NULL COMMENT 'DESCRIPTION',
  `CREATE_DATE` datetime DEFAULT NULL,
  `IS_ACTIVE` bigint(8) DEFAULT NULL COMMENT '商机如果被抛弃（终止），原商机状态保持不变（用于漏斗统计），设置有效性为：失效',
  `OPPORTUNITY_STATE` varchar(3) DEFAULT NULL COMMENT '10 Opportunity Creation\n            15 Product Confirm\n            20 Sales Proposal Creation\n            \n            \n            CODE_TYPE=MSM_SALES_OPPORTUNITY.STATE ',
  `STATE_DATE` datetime DEFAULT NULL,
  `SALES_LEAD_ID` bigint(15) DEFAULT NULL,
  `LEAD_NAME` varchar(128) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `SALES_METHOD` varchar(3) DEFAULT NULL COMMENT '1 Corporate Hunting,2 Corporate Renewal/Farming,3 Corporate Upsell\n            CODE_TYPE = OPT_OPPORTUNITY.SALES_METHOD',
  `WINNER_COMPETITOR` varchar(256) DEFAULT NULL,
  `CLOSE_REASON` varchar(3) DEFAULT NULL COMMENT '1 Lost,2 Other',
  `CLOSE_COMMENT` varchar(512) DEFAULT NULL,
  `TYPE_OF_CONTRACT` varchar(3) DEFAULT NULL COMMENT '1 Business\n            2 Business with new gen. employee program\n            3 Business with old gen. employee program\n            4 ATR/Fleet\n            5 New gen. employee program\n            6 Old gen. employee program',
  `MODIFY_OP_ID` bigint(12) DEFAULT NULL,
  `CUST_SEGMENT` bigint(12) DEFAULT NULL,
  `COMPANY_ID` varchar(256) DEFAULT NULL COMMENT 'KOB',
  `STAGE_STATUS` varchar(3) DEFAULT NULL COMMENT '1 Open, 2 Lost, 3 Won',
  `AM_SALES_ORGNIZATION_ID` bigint(12) DEFAULT NULL,
  `ACCOUNT_MANAGER` varchar(256) DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `PRODUCT_TYPE_CODE` varchar(512) DEFAULT NULL,
  `PRODUCT_TYPE_NAME` varchar(512) DEFAULT NULL,
  `CREATE_METHOD` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`OPPORTUNITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商机表\n商机是指来源于各种渠道收集的市场销售线索信息、以及通过客户洞察分析产生的客户购买电信产品或服务的意向';

/*Table structure for table `opt_opportunity_approval` */

DROP TABLE IF EXISTS `opt_opportunity_approval`;

CREATE TABLE `opt_opportunity_approval` (
  `APPROVAL_SERIAL` bigint(15) NOT NULL,
  `OPPORTUNITY_ID` bigint(15) NOT NULL,
  `APPROVAL_OBJECT` varchar(30) DEFAULT NULL COMMENT '关联到流程环节 MATRIX,CAC、FINANCE',
  `APPROVAL_BATCH_SERIAL` bigint(12) DEFAULT NULL COMMENT '同一商机的同一审批对象多次发起审批时的序号',
  `APPROVAL_POSITION` bigint(12) DEFAULT NULL,
  `APPROVAL_STAFF` varchar(30) DEFAULT NULL,
  `APPROVAL_MESSAGE` varchar(128) DEFAULT NULL,
  `APPROVAL_RESULT` varchar(3) DEFAULT NULL COMMENT 'Y通过\n            N 不通过\n            \n            CDOE_TYPE=MSM_APPROVAL_RESULT',
  `APPROVAL_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`APPROVAL_SERIAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商机审批记录表\n维护销售流程中的各个环节的审批意见\n按照租户分表\n';

/*Table structure for table `opt_oppty_assimt` */

DROP TABLE IF EXISTS `opt_oppty_assimt`;

CREATE TABLE `opt_oppty_assimt` (
  `OPPTY_ASSIMT_ID` bigint(15) NOT NULL,
  `OPPORTUNITY_ID` bigint(15) DEFAULT NULL,
  `ASSIGN_ORG_ID` bigint(12) DEFAULT NULL,
  `ASSIGN_OPERATOR_ID` bigint(12) DEFAULT NULL,
  `SALES_ORGNIZATION_ID` bigint(12) DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `ASSIGN_DATE` datetime DEFAULT NULL,
  `ASSIGN_STATE` varchar(3) DEFAULT NULL COMMENT 'active、inactive',
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`OPPTY_ASSIMT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商机分配表\n当客户经理将线索转为商机是，客户经理将默认成为商机的负责人。\n如果商机进行重新分配，';

/*Table structure for table `opt_oppty_attach` */

DROP TABLE IF EXISTS `opt_oppty_attach`;

CREATE TABLE `opt_oppty_attach` (
  `OPPORTUNITY_ATTACHMENT_ID` bigint(12) NOT NULL,
  `OPPORTUNITY_ID` bigint(15) DEFAULT NULL,
  `ATTACH_FILE` varchar(128) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`OPPORTUNITY_ATTACHMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OPPORTUNITY_ATTACHMENT';

/*Table structure for table `opt_oppty_compet` */

DROP TABLE IF EXISTS `opt_oppty_compet`;

CREATE TABLE `opt_oppty_compet` (
  `OPPTY_COMPET_ID` bigint(12) NOT NULL,
  `OPPORTUNITY_ID` bigint(15) DEFAULT NULL,
  `COMPETITOR_SWOT_ID` bigint(15) DEFAULT NULL,
  `COMPETITOR_ID` bigint(12) DEFAULT NULL COMMENT '记录竞争对手的唯一标识，作为主键。',
  `IMPACT_LEVEL` varchar(3) DEFAULT NULL COMMENT 'NONE、High, Medium, Low',
  `CONTRACT_DEADLINE` datetime DEFAULT NULL COMMENT '竞争者合同终止日期 如2015年12月12日',
  `COMMENTS` varchar(512) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OPERATOR_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`OPPTY_COMPET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商机和竞争者信关联表\n按照租户分表';

/*Table structure for table `opt_oppty_cust_req` */

DROP TABLE IF EXISTS `opt_oppty_cust_req`;

CREATE TABLE `opt_oppty_cust_req` (
  `OPPTY_CUST_REQ_ID` bigint(15) NOT NULL,
  `CUSTOMER_REQUIREMENT_ID` bigint(15) DEFAULT NULL,
  `OPPORTUNITY_ID` bigint(15) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`OPPTY_CUST_REQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商机和客户需求关联表\nOPPORTUNITY_CUSTOMER_REQUIREMENT_RELA-&#&';

/*Table structure for table `opt_oppty_rela_info` */

DROP TABLE IF EXISTS `opt_oppty_rela_info`;

CREATE TABLE `opt_oppty_rela_info` (
  `OPPTY_RELAINFO_ID` bigint(15) NOT NULL,
  `OPPORTUNITY_ID` bigint(15) NOT NULL,
  `MNP_SOURCE_NETWORK` varchar(30) DEFAULT NULL,
  `AM_BUSCODE` varchar(128) DEFAULT NULL,
  `AM_CONTACT_NO` varchar(128) DEFAULT NULL,
  `AM_EMAIL` varchar(128) DEFAULT NULL,
  `DEALER_COMPANY` varchar(128) DEFAULT NULL,
  `DEALER_SALES_STAFF` varchar(128) DEFAULT NULL,
  `DEALER_BUSCODE` varchar(128) DEFAULT NULL,
  `DEALER_CONTACT_NO` varchar(128) DEFAULT NULL,
  `DEALER_EMAIL` varchar(128) DEFAULT NULL,
  `ACCOUNT_LEVEL` varchar(3) DEFAULT NULL COMMENT 'Large，flat\n            CODE_TYPE=MSM_SALES_OPPORTUNITY.ACCOUNT_LEVEL',
  `REGISTRATION_TYPE` varchar(3) DEFAULT NULL COMMENT 'New,Additional,Renewal，MNP，Upgrade Plan,UM Prepaid to Postpaid,Others\n            ',
  `SIMCARD_REQUEST` bigint(1) DEFAULT NULL,
  `PAYMENT_COLLECTION` bigint(1) DEFAULT NULL,
  `CREDIT_CHECK` bigint(1) DEFAULT NULL,
  `WELCOME_CALL` bigint(1) DEFAULT NULL,
  `DEPOSIT` bigint(1) DEFAULT NULL,
  `SUPPORT_DOCUMENT` bigint(1) DEFAULT NULL COMMENT 'Support Document not provided (Bank statement, Latest Utility Bill, Income tax, EPF statement, Passport)\n            ',
  `IMEI_STICKER` bigint(1) DEFAULT NULL COMMENT 'IMEI Sticker, Rubber Stamp, Billing address different from NRIC, Photocopy of NRIC not clear\n            ',
  `BERJAYA_RELATED` bigint(1) DEFAULT NULL,
  `OTHER` varchar(512) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `CREDIT_CUST_GROUP` varchar(30) DEFAULT NULL COMMENT 'CAC信用检查时参考',
  `EXT_1` varchar(256) DEFAULT NULL,
  `EXT_2` varchar(256) DEFAULT NULL,
  `EXT_3` varchar(256) DEFAULT NULL,
  `EXT_4` varchar(256) DEFAULT NULL,
  `EXT_5` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`OPPTY_RELAINFO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商机附属信息，横表，便于修改等处理。\n部分信息仅仅是需求中涉及的显示字段，没有实际意义。根据具体客户需求进行';

/*Table structure for table `opt_pre_msisdn` */

DROP TABLE IF EXISTS `opt_pre_msisdn`;

CREATE TABLE `opt_pre_msisdn` (
  `PRE_MSISDN_ID` bigint(15) NOT NULL,
  `SALES_PROPOSAL_ID` bigint(12) DEFAULT NULL,
  `MSISDN_ID` bigint(15) DEFAULT NULL,
  `MSISDN` varchar(20) DEFAULT NULL,
  `MSISDN_CATEGORY` bigint(12) DEFAULT NULL,
  `USER_NAME` varchar(128) DEFAULT NULL,
  `CREDIT_LIMIT` bigint(12) DEFAULT NULL,
  `CONTRACT_MONTH` bigint(8) DEFAULT NULL,
  `CUSTOMER_GROUP` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(15) DEFAULT NULL,
  `USIM` varchar(30) DEFAULT NULL,
  `IMEI` varchar(30) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `RESERVE_RESULT` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`PRE_MSISDN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='号码预选信息\n按照租户分表\n';

/*Table structure for table `opt_pre_propose_offer` */

DROP TABLE IF EXISTS `opt_pre_propose_offer`;

CREATE TABLE `opt_pre_propose_offer` (
  `PRE_OFFER_ID` bigint(15) NOT NULL,
  `SALES_PROPOSAL_ID` bigint(12) NOT NULL,
  `OFFER_ID` bigint(15) DEFAULT NULL COMMENT '所选择Offer的OfferId，取自产品模块\n            ',
  `OFFER_QUANTITY` bigint(8) DEFAULT NULL,
  `OFFER_DESCRIPTION` varchar(512) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `OFFER_STATUS` varchar(3) DEFAULT NULL COMMENT '10 Agreement Generated\n            20 No Agreement Generated\n            code_type = MSM_SALES_OPPORTUNITY.OFFER_STATUS',
  PRIMARY KEY (`PRE_OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Offer预选信息表\n用来记录建议书阶段运营商满足商机客户需求的OfferId。一个建议书下可以有多个Off';

/*Table structure for table `opt_pre_propose_resource` */

DROP TABLE IF EXISTS `opt_pre_propose_resource`;

CREATE TABLE `opt_pre_propose_resource` (
  `PRE_RESOURCE_ID` bigint(15) NOT NULL,
  `SALES_PROPOSAL_ID` bigint(12) DEFAULT NULL,
  `RESOURCE_ID` bigint(15) DEFAULT NULL,
  `SUM_RESOURCE_ID` varchar(256) DEFAULT NULL,
  `RESOURCE_QUANTITY` bigint(8) DEFAULT NULL,
  `RESOURCE_CODE` varchar(30) DEFAULT NULL,
  `RESOURCE_PRICE` bigint(20) DEFAULT NULL,
  `RESOURCE_WAIVER` varchar(30) DEFAULT NULL,
  `OFFER_ID` bigint(15) DEFAULT NULL,
  `TRANSACTION_CODE` varchar(30) DEFAULT NULL,
  `SUB_TRANSACTION_CODE` varchar(30) DEFAULT NULL,
  `UOM` varchar(30) DEFAULT NULL,
  `TAX` varchar(30) DEFAULT NULL,
  `TOTAL_AMOUNT` varchar(30) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`PRE_RESOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售资源预选信息表\n按照租户分表';

/*Table structure for table `opt_pre_propose_service` */

DROP TABLE IF EXISTS `opt_pre_propose_service`;

CREATE TABLE `opt_pre_propose_service` (
  `PRE_SERVICE_ID` bigint(15) NOT NULL,
  `SALES_PROPOSAL_ID` bigint(12) DEFAULT NULL,
  `SERVICE_ID` bigint(15) DEFAULT NULL COMMENT '取自产品模块，Offer下的服务Id',
  `OFFER_ID` bigint(15) DEFAULT NULL COMMENT '表示该服务从属于哪个Offer，取自产品模块',
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`PRE_SERVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务预选信息表\n记录某一个Offer下为客户提供的具体的服务，包含多个服务\n按照租户分表\n                                                -&';

/*Table structure for table `opt_proposal_approve` */

DROP TABLE IF EXISTS `opt_proposal_approve`;

CREATE TABLE `opt_proposal_approve` (
  `PROPOSAL_APPROVE_ID` bigint(12) NOT NULL,
  `SALES_PROPOSAL_INSTANCE_ID` bigint(12) DEFAULT NULL,
  `APPROVE_NODE_ID` varchar(128) DEFAULT NULL,
  `APPROVE_NODE_NAME` varchar(128) DEFAULT NULL,
  `RESPONSIBLE_PERSON_ID` bigint(12) DEFAULT NULL,
  `RESPONSIBLE_PERSON_NAME` varchar(128) DEFAULT NULL,
  `IS_CURRENT_APPROVE` bigint(2) DEFAULT NULL,
  `APPROVAL_RESULT` bigint(2) DEFAULT NULL,
  `APPROVAL_STATUS` bigint(2) DEFAULT NULL,
  `APPROVAL_OPINION` varchar(256) DEFAULT NULL,
  `APPROVAL_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`PROPOSAL_APPROVE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PROPOSAL_APPROVE';

/*Table structure for table `opt_proposal_doc` */

DROP TABLE IF EXISTS `opt_proposal_doc`;

CREATE TABLE `opt_proposal_doc` (
  `PROPOSAL_DOCUMENT_ID` bigint(12) NOT NULL,
  `SALES_PROPOSAL_INSTANCE_ID` bigint(12) NOT NULL,
  `NAME` varchar(128) DEFAULT NULL,
  `ATTACH_FILE` varchar(128) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`PROPOSAL_DOCUMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PROPOSAL_DOCUMENT';

/*Table structure for table `opt_propose_msisdn` */

DROP TABLE IF EXISTS `opt_propose_msisdn`;

CREATE TABLE `opt_propose_msisdn` (
  `PROPOSE_MSISDN_ID` bigint(15) NOT NULL,
  `SALES_PROPOSAL_INSTANCE_ID` bigint(12) DEFAULT NULL,
  `MSISDN_ID` bigint(15) DEFAULT NULL,
  `MSISDN` varchar(20) DEFAULT NULL,
  `MSISDN_CATEGORY` bigint(12) DEFAULT NULL,
  `USER_NAME` varchar(128) DEFAULT NULL,
  `CREDIT_LIMIT` bigint(12) DEFAULT NULL,
  `CONTRACT_MONTH` bigint(8) DEFAULT NULL,
  `CUSTOMER_GROUP` bigint(12) DEFAULT NULL,
  `USIM` varchar(30) DEFAULT NULL,
  `IMEI` varchar(30) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`PROPOSE_MSISDN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='建议实例号码信息\n按照租户分表 已弃用';

/*Table structure for table `opt_propose_offer` */

DROP TABLE IF EXISTS `opt_propose_offer`;

CREATE TABLE `opt_propose_offer` (
  `PROPOSE_OFFER_ID` bigint(15) NOT NULL,
  `OFFER_ID` bigint(15) DEFAULT NULL,
  `SALES_PROPOSAL_INSTANCE_ID` bigint(12) DEFAULT NULL,
  `OFFER_QUANTITY` bigint(8) DEFAULT NULL,
  `OFFER_DESCRIPTION` varchar(512) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`PROPOSE_OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='建议实例OFFER信息\n按照租户分表 已弃用';

/*Table structure for table `opt_propose_resource` */

DROP TABLE IF EXISTS `opt_propose_resource`;

CREATE TABLE `opt_propose_resource` (
  `PROPOSE_RESOURCE_ID` bigint(15) NOT NULL,
  `RESOURCE_ID` bigint(15) DEFAULT NULL,
  `SALES_PROPOSAL_INSTANCE_ID` bigint(12) DEFAULT NULL,
  `SUM_RESOURCE_ID` varchar(256) DEFAULT NULL,
  `RESOURCE_QUANTITY` bigint(8) DEFAULT NULL,
  `RESOURCE_CODE` varchar(30) DEFAULT NULL,
  `RESOURCE_PRICE` bigint(20) DEFAULT NULL,
  `RESOURCE_WAIVER` varchar(30) DEFAULT NULL,
  `TRANSACTION_CODE` varchar(30) DEFAULT NULL,
  `SUB_TRANSACTION_CODE` varchar(30) DEFAULT NULL,
  `UOM` varchar(30) DEFAULT NULL,
  `TAX` varchar(30) DEFAULT NULL,
  `TOTAL_AMOUNT` varchar(30) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`PROPOSE_RESOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='建议实例销售资源信息\n按照租户分表 已弃用';

/*Table structure for table `opt_propose_service` */

DROP TABLE IF EXISTS `opt_propose_service`;

CREATE TABLE `opt_propose_service` (
  `PROPOSE_SERVICE_ID` bigint(15) NOT NULL,
  `SERVICE_ID` bigint(15) DEFAULT NULL,
  `SALES_PROPOSAL_INSTANCE_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(15) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`PROPOSE_SERVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='建议实例服务信息\n按照租户分表 已弃用';

/*Table structure for table `opt_salelead_imp_log` */

DROP TABLE IF EXISTS `opt_salelead_imp_log`;

CREATE TABLE `opt_salelead_imp_log` (
  `LOG_ID` bigint(12) NOT NULL,
  `IMPORT_BATCH_ID` bigint(12) DEFAULT NULL,
  `LEAD_CUSTOMER` varchar(128) DEFAULT NULL,
  `CUSTOMER_ID` bigint(15) DEFAULT NULL,
  `LEAD_CUSTOMER_GROUP` varchar(3) DEFAULT NULL COMMENT '0 Corporate\n            1 Individual\n            \n            MSM_SALES_OPPORTUNITY.CUSTOMER_TYPE\n            ',
  `CONTACT_PERSON` varchar(128) DEFAULT NULL,
  `EMAIL` varchar(512) DEFAULT NULL,
  `PHONE` varchar(512) DEFAULT NULL,
  `CUSTOMER_EXPECTATION` varchar(512) DEFAULT NULL COMMENT '线索详细信息LEAD DETAIL',
  `LEAD_SOURCE` varchar(256) DEFAULT NULL COMMENT '10 email、20 Inbound call、30 branch forward、40 others',
  `STATE` varchar(3) DEFAULT NULL COMMENT '10A 新建\n            10B 导入成功\n            10X 导入失败\n            \n            ',
  `REASON_TYPE` bigint(4) DEFAULT NULL COMMENT '0 成功\n            1 导入的客户不存在\n            2 客户ID name不匹配\n            3 导入operator不存在\n            4 导入operatorid name不匹配\n            5 导入关系已经存在\n            99 其他',
  `REASON_DESC` varchar(256) DEFAULT NULL,
  `IMP_EXCEPTION` varchar(1536) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `STATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `TAX_ID` varchar(128) DEFAULT NULL,
  `CUST_CERT_CODE` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `opt_sales_funnel` */

DROP TABLE IF EXISTS `opt_sales_funnel`;

CREATE TABLE `opt_sales_funnel` (
  `SALES_FUNNEL_ID` bigint(12) NOT NULL,
  `NAME` varchar(256) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`SALES_FUNNEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售漏斗表 \n定义了销售漏斗，销售漏斗主要体现了具体操作员在一定期间内从线索，商机，最后到订单生成的转化情况';

/*Table structure for table `opt_sales_lead` */

DROP TABLE IF EXISTS `opt_sales_lead`;

CREATE TABLE `opt_sales_lead` (
  `SALES_LEAD_ID` bigint(15) NOT NULL,
  `LEAD_CUSTOMER` varchar(128) DEFAULT NULL,
  `CUSTOMER_ID` bigint(15) DEFAULT NULL,
  `LEAD_CUSTOMER_GROUP` varchar(3) DEFAULT NULL COMMENT '0 Corporate\n            1 Individual\n            \n            MSM_SALES_OPPORTUNITY.CUSTOMER_TYPE\n            ',
  `CONTACT_PERSON` varchar(128) DEFAULT NULL,
  `EMAIL` varchar(512) DEFAULT NULL,
  `PHONE` varchar(512) DEFAULT NULL,
  `CUSTOMER_EXPECTATION` varchar(512) DEFAULT NULL COMMENT '线索详细信息LEAD DETAIL',
  `LEAD_SOURCE` varchar(256) DEFAULT NULL COMMENT '10 email、20 Inbound call、30 branch forward、40 others、80 Campaign\n            \n            CODE_TYPE=MSM_SALES_LEAD.DESCOVERED_CHANNEL',
  `LEAD_STATE` varchar(3) DEFAULT NULL COMMENT '10 Unassigned,15 Assigning,20 Assigned,30 Converted,40 Abandoned\n            CODE_TYPE=MSM_SALES_LEAD.STATE',
  `STATE_DATE` datetime DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_OPERATOR_ID` bigint(12) DEFAULT NULL,
  `CONVERT_PROBABILITY` bigint(8) DEFAULT NULL COMMENT '*',
  `ESTIMATE_VALUE` bigint(8) DEFAULT NULL COMMENT '*',
  `EVALUATE_INFO` varchar(512) DEFAULT NULL COMMENT '*',
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `LEAD_TYPE` varchar(3) DEFAULT NULL COMMENT '1 Hunting,2 Upsell,3 Farming,4 Cross-sell,5 Renewal',
  `LEAD_NAME` varchar(128) DEFAULT NULL,
  `TAX_NO` varchar(128) DEFAULT NULL,
  `CONTACT_LAST_NAME` varchar(128) DEFAULT NULL,
  `CONTACT_FIRST_NAME` varchar(128) DEFAULT NULL,
  `CONTACT_TITLE` varchar(128) DEFAULT NULL,
  `CONTACT_ROLE` varchar(3) DEFAULT NULL COMMENT '1 Approver,2 Decision Maker,3 Evaluator,4 User',
  `ZIP_CODE` varchar(6) DEFAULT NULL,
  `DUE_DATE` datetime DEFAULT NULL,
  `SALES_TEAM_NAME` varchar(128) DEFAULT NULL,
  `FORECASTING` varchar(3) DEFAULT NULL COMMENT '1 Committed,2 Committed but Risk,3 Not Committed',
  `NUMBER_OF_SUBS` bigint(8) DEFAULT NULL,
  `RESPONSE_LIST` varchar(3) DEFAULT NULL COMMENT '1 Success,2 Unsuccessful,3 Under Discussion',
  `CREATE_DATE` datetime DEFAULT NULL,
  `CLOSE_REASON` varchar(3) DEFAULT NULL COMMENT '1 Lost,2 Other\n            CODE_TYPE = OPT_SALES_LEAD.CLOSE_REASON\n            ',
  `CLOSE_COMMENT` varchar(512) DEFAULT NULL,
  `CUST_REG_NO` varchar(128) DEFAULT NULL,
  `SOURCE_OBJ_ID` varchar(256) DEFAULT NULL,
  `BUSI_TYPE` bigint(1) DEFAULT NULL COMMENT '线索针对的业务类型\n            1 Voice, 2 Non-Voice',
  `MODIFY_OP_ID` bigint(12) DEFAULT NULL,
  `SOURCE` varchar(200) DEFAULT NULL,
  `SOURCE_OBJ_NAME` varchar(512) DEFAULT NULL,
  `PRODUCT_TYPE_CODE` varchar(512) DEFAULT NULL COMMENT '产品需求代码',
  `PRODUCT_TYPE_NAME` varchar(512) DEFAULT NULL COMMENT '产品需求名称',
  `ACCOUNT_MANAGER` varchar(256) DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `AM_SALES_ORGNIZATION_ID` bigint(12) DEFAULT NULL,
  `NUMBER_OF_EMPLOYEE` bigint(12) DEFAULT NULL,
  `INDUSTRY` varchar(3) DEFAULT NULL,
  `CREATE_METHOD` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`SALES_LEAD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售线索表销售线索是指客户潜在销售机会的引线，在销售过程中属于客户产品消费意向但还没有明确产生具体产品购买';

/*Table structure for table `opt_sales_proposal` */

DROP TABLE IF EXISTS `opt_sales_proposal`;

CREATE TABLE `opt_sales_proposal` (
  `SALES_PROPOSAL_ID` bigint(12) NOT NULL,
  `PROPOSAL_NAME` varchar(128) DEFAULT NULL,
  `IS_LEGAL` varchar(3) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `ESTIMATE_ARPU` bigint(8) DEFAULT NULL,
  `ESTIMATE_PRICE` bigint(8) DEFAULT NULL,
  `ESTIMATE_WAVIER_PRICE` bigint(8) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`SALES_PROPOSAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SALES_PROPOSAL';

/*Table structure for table `opt_sales_proposal_instance` */

DROP TABLE IF EXISTS `opt_sales_proposal_instance`;

CREATE TABLE `opt_sales_proposal_instance` (
  `SALES_PROPOSAL_INSTANCE_ID` bigint(12) NOT NULL,
  `SALES_PROPOSAL_ID` bigint(12) DEFAULT NULL,
  `PROPOSAL_NAME` varchar(128) DEFAULT NULL,
  `IS_LEGAL` varchar(3) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `ESTIMATE_ARPU` varchar(8) DEFAULT NULL,
  `ESTIMATE_PRICE` varchar(8) DEFAULT NULL,
  `LEAD_ID` bigint(15) DEFAULT NULL,
  `LEAD_NAME` varchar(128) DEFAULT NULL,
  `OPPORTUNITY_ID` bigint(15) DEFAULT NULL,
  `OPPORTUNITY_NAME` varchar(256) DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `OPERATOR_NAME` varchar(256) DEFAULT NULL,
  `ORGANIZE_ID` bigint(12) DEFAULT NULL,
  `CUSTOMER_ID` bigint(15) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(256) DEFAULT NULL,
  `LEAD_CUSTOMER_GROUP` varchar(3) DEFAULT NULL,
  `COMPANY_TYPE` varchar(3) DEFAULT NULL,
  `PROPOSAL_STATE` varchar(3) DEFAULT NULL,
  `STATE_DATE` datetime DEFAULT NULL,
  `CUSTOMER_ACCEPTANCE` varchar(3) DEFAULT NULL,
  `ACCEPTANCE_DATE` datetime DEFAULT NULL,
  `PRODUCT_TYPE_CODE` varchar(512) DEFAULT NULL,
  `PRODUCT_TYPE_NAME` varchar(512) DEFAULT NULL,
  `WINNER_COMPETITOR` varchar(256) DEFAULT NULL,
  `CLOSE_REASON` varchar(3) DEFAULT NULL,
  `CLOSE_COMMENT` varchar(512) DEFAULT NULL,
  `INSTANCE_REFER_OBJECT` varchar(30) DEFAULT NULL,
  `RESERVE_RESULT` varchar(3) DEFAULT NULL,
  `PAYMENT_METHOD` varchar(3) DEFAULT NULL,
  `RECEPT_NO` varchar(30) DEFAULT NULL,
  `INST_PAYMENT_RESULT` varchar(3) DEFAULT NULL,
  `FINANCE_RESULT` varchar(3) DEFAULT NULL,
  `ORDER_RESULT` varchar(3) DEFAULT NULL COMMENT 'activation result',
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`SALES_PROPOSAL_INSTANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售建议书实例 SALES_PROPOSAL_INSTANCE\n按照租户分表 已弃用';

/*Table structure for table `opt_static_code_enum` */

DROP TABLE IF EXISTS `opt_static_code_enum`;

CREATE TABLE `opt_static_code_enum` (
  `CODE_ENUM_ID` bigint(12) NOT NULL,
  `CODE_TYPE_ID` bigint(12) DEFAULT NULL,
  `PARENT_CODE_ENUM_ID` bigint(12) DEFAULT NULL,
  `ENUM_VALUE` varchar(255) DEFAULT NULL,
  `ENUM_NAME` varchar(255) DEFAULT NULL,
  `ENUM_DESC` varchar(255) DEFAULT NULL,
  `SORT_ID` bigint(12) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `EXTERN_ENUM_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CODE_ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `opt_static_code_type` */

DROP TABLE IF EXISTS `opt_static_code_type`;

CREATE TABLE `opt_static_code_type` (
  `CODE_TYPE_ID` bigint(12) NOT NULL,
  `CODE_TYPE` varchar(255) DEFAULT NULL,
  `CODE_NAME` varchar(255) DEFAULT NULL,
  `CODE_DESC` varchar(255) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`CODE_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `opt_task_assimt` */

DROP TABLE IF EXISTS `opt_task_assimt`;

CREATE TABLE `opt_task_assimt` (
  `TASK_ASSIMT_ID` bigint(15) NOT NULL,
  `INTERACTION_TASK_ID` bigint(15) DEFAULT NULL,
  `ASSIGN_ORG_ID` bigint(12) DEFAULT NULL,
  `ASSIGN_OPERATOR_ID` bigint(12) DEFAULT NULL,
  `SALES_ORGNIZATION_ID` bigint(12) DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `ASSIGN_DATE` datetime DEFAULT NULL,
  `ASSIGN_STATE` varchar(3) DEFAULT NULL COMMENT 'N 失效\n            U 有效',
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`TASK_ASSIMT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售任务关系分配表';

/*Table structure for table `opt_task_imp_log` */

DROP TABLE IF EXISTS `opt_task_imp_log`;

CREATE TABLE `opt_task_imp_log` (
  `LOG_ID` bigint(12) NOT NULL,
  `IMPORT_BATCH_ID` bigint(12) DEFAULT NULL,
  `INTERACTION_TASK_NAME` varchar(256) DEFAULT NULL,
  `INTERACTION_TASK_TYPE_ID` bigint(12) DEFAULT NULL,
  `TASK_PRIORITY` varchar(3) DEFAULT NULL COMMENT '1 Urgent\n            3 High\n            5 MEDIUM\n            7 Low\n            SELECT * FROM bs_static_data  WHERE code_type LIKE ''%MSM_INTERACTION_TASK.PRIORITY%''\n            ',
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `UPPER_INTERACTION_TASK_ID` varchar(256) DEFAULT NULL,
  `TASK_SOURCE_OBJECT_TYPE` varchar(3) DEFAULT NULL COMMENT '1 商机\n            2 日常\n            SELECT * FROM bs_static_data  WHERE code_type LIKE ''%MSM_INTERACTIOIN_TASK.TASK_SOURCE_OBJECT_TYPE%''\n            \n            ',
  `TASK_SOURCE_OBJECT_ID` varchar(256) DEFAULT NULL COMMENT '商机ID、营销活动ID、客户ID',
  `TASK_CONTACT_OBJECT_TYPE` varchar(3) DEFAULT NULL COMMENT '用户、客户',
  `TASK_CONTACT_OBJECT_ID` varchar(256) DEFAULT NULL,
  `CONTACT_ID` bigint(12) DEFAULT NULL COMMENT '联系人ID\n            \n            带到接触任务，为了提高性能。',
  `CONTACT_PERSON` varchar(128) DEFAULT NULL,
  `ACCESS_NUMBER` varchar(20) DEFAULT NULL,
  `CONTACT_TIME` varchar(512) DEFAULT NULL COMMENT '建议接触时间:\n            例如：9-10,14-16 多时间点用逗号分隔',
  `CONTACT_DATE` varchar(512) DEFAULT NULL,
  `INTERACTION_TASK_STATE` varchar(3) DEFAULT NULL COMMENT '\n            0 未接触\n            1 已接触\n            SELECT * FROM bs_static_data  WHERE code_type LIKE ''%MSM_INTERACTIOIN_TASK.INTERACTION_TASK_STATE%''\n            \n            ',
  `REMIND_TYPE` bigint(12) DEFAULT NULL COMMENT 'Email SMS',
  `REMIND_MESSAGE` varchar(512) DEFAULT NULL,
  `TIME_UNIT` varchar(3) DEFAULT NULL COMMENT '提前提醒时间的单位\n            1.天\n            2.小时',
  `REMIND_BEFORE_TIME` bigint(8) DEFAULT NULL,
  `IMPORT_STATE` varchar(3) DEFAULT NULL COMMENT '10A 新建\n            10B 导入成功\n            10X 导入失败\n            \n            ',
  `STATE_DATE` datetime DEFAULT NULL,
  `IMPORT_STATE_DATE` datetime DEFAULT NULL,
  `REASON_TYPE` varchar(3) DEFAULT NULL COMMENT '0 成功\n            1 导入的客户不存在\n            2 客户ID name不匹配\n            3 导入operator不存在\n            4 导入operatorid name不匹配\n            5 导入关系已经存在\n            99 其他',
  `REASON_DESC` varchar(256) DEFAULT NULL,
  `IMP_EXCEPTION` varchar(1536) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OPT_INTERACTION_TASK_IMP_LOG\n接触任务导入日志\n按照租户分表';

/*Table structure for table `opt_trac_log` */

DROP TABLE IF EXISTS `opt_trac_log`;

CREATE TABLE `opt_trac_log` (
  `TRAC_ID` bigint(12) NOT NULL,
  `OBJECT_TYPE` varchar(30) DEFAULT NULL,
  `OBJECT_ID` bigint(12) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `AM_ID` bigint(12) DEFAULT NULL,
  `CUSTOMER_ID` bigint(12) DEFAULT NULL,
  `DATETIME` datetime DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`TRAC_ID`)
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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
