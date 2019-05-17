/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log : Database - base
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`base` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `base`;

/*Table structure for table `bs_district` */

DROP TABLE IF EXISTS `bs_district`;

CREATE TABLE `bs_district` (
  `DISTRICT_ID` decimal(8,0) NOT NULL COMMENT '行政区域内部编码',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '行政区域内部编码',
  `DISTRICT_NAME` varchar(100) NOT NULL COMMENT '行政区域名称',
  `DISTRICT_ENGLISH_NAME` varchar(100) DEFAULT NULL,
  `DISTRICT_TYPE_ID` decimal(6,0) NOT NULL COMMENT '行政区域类型。\n\n1、省/自治区\n2、地市\n3、县区',
  `PARENT_DISTRICT_ID` decimal(8,0) DEFAULT NULL COMMENT '上级行政区域',
  `AREA_CODE` varchar(8) DEFAULT NULL COMMENT '区号',
  `POST_CODE` decimal(6,0) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL COMMENT '备注',
  `SORT_ID` decimal(8,0) DEFAULT NULL,
  `CENTER_INFO_CODE` varchar(6) DEFAULT NULL COMMENT '中心编码',
  `DISTRICT_TWO_NUMBER` decimal(2,0) DEFAULT NULL COMMENT '行政区域2位数字',
  `COURSE_FLAG` decimal(1,0) DEFAULT NULL COMMENT '值含义：0：未割接 1：已割接',
  PRIMARY KEY (`DISTRICT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行政区域定义表\n三户生成用户USERID从此表中查找配置';

/*Table structure for table `bs_ftp` */

DROP TABLE IF EXISTS `bs_ftp`;

CREATE TABLE `bs_ftp` (
  `FTP_CODE` varchar(255) NOT NULL,
  `HOST_IP` varchar(30) NOT NULL,
  `PORT` decimal(5,0) NOT NULL,
  `USERNAME` varchar(40) NOT NULL,
  `PASSWORD` varchar(80) NOT NULL COMMENT 'FTP登录密码，使用RC2方式加密',
  `REMARKS` varchar(100) DEFAULT NULL,
  `STATE` char(1) NOT NULL COMMENT '记录状态\nU:正常 E:删除',
  `STATE_DATE` datetime DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `SECURE` char(1) DEFAULT NULL COMMENT 'Y：SFTP；N：FTP',
  PRIMARY KEY (`FTP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='FTP基础配置信息，包括主机、端口、用户名、密码等';

/*Table structure for table `bs_ftp_path` */

DROP TABLE IF EXISTS `bs_ftp_path`;

CREATE TABLE `bs_ftp_path` (
  `FTP_PATH_CODE` varchar(255) NOT NULL,
  `FTP_CODE` varchar(255) NOT NULL,
  `REMOTE_PATH` varchar(200) DEFAULT NULL,
  `REMOTE_PATH_HIS` varchar(200) DEFAULT NULL,
  `REMOTE_PATH_TEMP` varchar(200) DEFAULT NULL,
  `LOCAL_PATH` varchar(200) DEFAULT NULL,
  `LOCAL_PATH_HIS` varchar(200) DEFAULT NULL,
  `LOCAL_PATH_TEMP` varchar(200) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `STATE` char(1) NOT NULL COMMENT '记录状态\nU:正常 E:删除',
  `STATE_DATE` datetime DEFAULT NULL COMMENT 'U-在用 E-作废',
  `CREATED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FTP_PATH_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='FTP文件路径信息，包括本地文件路径信息、远程文件路径信息等';

/*Table structure for table `bs_i18n_resource` */

DROP TABLE IF EXISTS `bs_i18n_resource`;

CREATE TABLE `bs_i18n_resource` (
  `RES_KEY` varchar(15) NOT NULL,
  `ZH_CN` varchar(1000) NOT NULL,
  `TARGET_LANGUAGE` varchar(2000) DEFAULT NULL,
  `STATE` char(1) NOT NULL COMMENT '记录状态 U:正常 E:删除',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT 'CRM编码',
  `LANGUAGES` varchar(200) NOT NULL,
  `ext2` varchar(2000) DEFAULT NULL,
  `ext3` varchar(2000) DEFAULT NULL,
  `ext4` varchar(2000) DEFAULT NULL,
  `ext5` varchar(2000) DEFAULT NULL,
  `ext6` varchar(2000) DEFAULT NULL,
  `ext7` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`RES_KEY`,`LANGUAGES`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `bs_operation_sms_param` */

DROP TABLE IF EXISTS `bs_operation_sms_param`;

CREATE TABLE `bs_operation_sms_param` (
  `TEMPLATE_ID` varchar(20) NOT NULL,
  `SMS_PARAM_NAME` varchar(128) DEFAULT NULL,
  `SMS_PARAM_CODE` varchar(50) NOT NULL,
  `SMS_PARAM_VALUE_EXPR` varchar(512) DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL COMMENT 'U:正常 E:注销',
  PRIMARY KEY (`TEMPLATE_ID`,`SMS_PARAM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务短信发送配置表';

/*Table structure for table `bs_operators` */

DROP TABLE IF EXISTS `bs_operators`;

CREATE TABLE `bs_operators` (
  `OPERATORS_ID` bigint(12) NOT NULL COMMENT '运营商编号',
  `OPERATORS_CODE` varchar(200) DEFAULT NULL,
  `OPERATORS_NAME` varchar(200) DEFAULT NULL COMMENT '运营商名称',
  `OPERATORS_TYPE` varchar(100) DEFAULT NULL COMMENT '运营商类型',
  `OPERATORS_GROUP` varchar(100) DEFAULT NULL COMMENT '运营商分组',
  `NOTE` varchar(1000) DEFAULT NULL COMMENT '备注',
  `STATE` varchar(2) DEFAULT NULL COMMENT '状态,U：正常,E：删除',
  PRIMARY KEY (`OPERATORS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='运营商信息，不分表';

/*Table structure for table `bs_para_detail` */

DROP TABLE IF EXISTS `bs_para_detail`;

CREATE TABLE `bs_para_detail` (
  `REGION_ID` varchar(6) NOT NULL COMMENT '地区唯一标识，X表示全省',
  `PARA_TYPE` varchar(50) NOT NULL,
  `PARA_CODE` varchar(50) NOT NULL,
  `PARA_NAME` varchar(60) DEFAULT NULL,
  `PARA1` varchar(2048) DEFAULT NULL,
  `PARA2` varchar(2048) DEFAULT NULL,
  `PARA3` varchar(2048) DEFAULT NULL,
  `PARA4` varchar(2048) DEFAULT NULL,
  `PARA5` varchar(2048) DEFAULT NULL,
  `PARA_DESC` varchar(128) DEFAULT NULL,
  `STATE` char(1) NOT NULL COMMENT '记录状态\nU-正常 E-删除',
  `OP_ID` decimal(12,0) DEFAULT NULL,
  `STATE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统参数的配置表';

/*Table structure for table `bs_static_data` */

DROP TABLE IF EXISTS `bs_static_data`;

CREATE TABLE `bs_static_data` (
  `CODE_TYPE` varchar(255) NOT NULL COMMENT '编码类型',
  `CODE_VALUE` varchar(255) NOT NULL COMMENT '编码值',
  `CODE_NAME` varchar(255) NOT NULL COMMENT '编码名称',
  `CODE_DESC` varchar(255) DEFAULT NULL COMMENT '编码描述',
  `CODE_TYPE_ALIAS` varchar(255) DEFAULT NULL COMMENT '编码别名,用作java的参数名称',
  `SORT_ID` decimal(3,0) DEFAULT NULL COMMENT '排序ID',
  `STATE` char(1) NOT NULL COMMENT '记录状态\nU-正常 E-删除',
  `EXTERN_CODE_TYPE` varchar(2000) DEFAULT NULL COMMENT '外部编码',
  `ALLOW_ADMIN` char(1) NOT NULL,
  `RES_KEY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CODE_TYPE`,`CODE_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='静态数据定义表';

/*Table structure for table `bs_tenant` */

DROP TABLE IF EXISTS `bs_tenant`;

CREATE TABLE `bs_tenant` (
  `T_ID` bigint(12) NOT NULL COMMENT '唯一标识',
  `TENANT_ID` varchar(10) DEFAULT NULL COMMENT '租户标识',
  `TENANT_CODE` varchar(50) DEFAULT NULL COMMENT '租户编码',
  `TENANT_NAME` varchar(255) DEFAULT NULL COMMENT '租户名称',
  `PRE_FLANGUAGE` varchar(20) DEFAULT NULL COMMENT '偏好语言',
  `CURRENCY_ID` bigint(12) DEFAULT NULL COMMENT '货币标识',
  `TIMEZONE` varchar(50) DEFAULT NULL COMMENT '时区',
  `REGION_ID` varchar(10) DEFAULT NULL COMMENT '地区',
  `DEFAULT_CENTER` varchar(10) DEFAULT NULL COMMENT '中心',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL COMMENT '创建人',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`T_ID`),
  KEY `IDX_TENANT_1` (`TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cfg_bo_mask` */

DROP TABLE IF EXISTS `cfg_bo_mask`;

CREATE TABLE `cfg_bo_mask` (
  `BO_NAME` varchar(255) NOT NULL,
  `ATTR_NAME` varchar(255) NOT NULL,
  `MASK_FUNCTION_CLASS` varchar(255) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BO_NAME`,`ATTR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cfg_client_timeout` */

DROP TABLE IF EXISTS `cfg_client_timeout`;

CREATE TABLE `cfg_client_timeout` (
  `SERVER_NAME` varchar(100) NOT NULL,
  `INTERFACE_CLASSNAME` varchar(255) NOT NULL,
  `METHOD_NAME` varchar(75) NOT NULL,
  `PARAMETER_COUNT` decimal(6,0) NOT NULL,
  `TIMEOUT_SECOND` decimal(6,0) NOT NULL,
  `STATE` char(1) NOT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`INTERFACE_CLASSNAME`,`METHOD_NAME`,`PARAMETER_COUNT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cfg_http` */

DROP TABLE IF EXISTS `cfg_http`;

CREATE TABLE `cfg_http` (
  `CFG_HTTP_CODE` varchar(255) NOT NULL COMMENT '编码',
  `HTTP_GRP` varchar(255) NOT NULL COMMENT 'http组',
  `HTTP_DESC` varchar(1000) DEFAULT NULL COMMENT 'http_desc描述',
  `STATE` char(1) NOT NULL COMMENT '状态(U,为正常;E,为删除)',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`CFG_HTTP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cfg_http_client` */

DROP TABLE IF EXISTS `cfg_http_client`;

CREATE TABLE `cfg_http_client` (
  `CFG_HTTP_CLIENT_CODE` varchar(255) NOT NULL COMMENT '编码',
  `URL_ADDRESS` varchar(4000) NOT NULL COMMENT 'url地址',
  `REQUEST_HEADER` varchar(4000) DEFAULT NULL COMMENT '请求头',
  `RESPONSE_TYPE` varchar(255) NOT NULL COMMENT '返回类型(byte 代表返回二进制数组,string 代表返回字符串)',
  `TIMEOUT_SECONDS` decimal(12,0) NOT NULL COMMENT '超时(秒)',
  `STATE` char(1) NOT NULL COMMENT '状态(U,为正常;E,为删除)',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`CFG_HTTP_CLIENT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cfg_http_mapping` */

DROP TABLE IF EXISTS `cfg_http_mapping`;

CREATE TABLE `cfg_http_mapping` (
  `MAPPING_ID` decimal(12,0) NOT NULL COMMENT '主键',
  `CFG_HTTP_CODE` varchar(255) NOT NULL COMMENT 'http编码',
  `MAPPING_NAME` varchar(4000) NOT NULL COMMENT '映射名称',
  `MAPPING_VALUE` varchar(4000) NOT NULL COMMENT '映射值',
  `STATE` char(1) NOT NULL COMMENT '状态(U,为正常;E,为删除)',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`MAPPING_ID`),
  KEY `IDX_CFG_HTTP_MAPPING_1` (`CFG_HTTP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cfg_msg_client` */

DROP TABLE IF EXISTS `cfg_msg_client`;

CREATE TABLE `cfg_msg_client` (
  `CFG_MSG_CONTRAL_CODE` varchar(50) NOT NULL,
  `URL_ADDRESS` varchar(255) DEFAULT NULL,
  `HTTP_CONNECTIONS` decimal(10,0) DEFAULT NULL,
  `HTTP_TIMEOUT` decimal(10,0) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL COMMENT 'U:有效\nE:无效',
  `REMARKS` varchar(255) DEFAULT NULL,
  `CHANNEL` varchar(100) DEFAULT NULL,
  `SERVER_TYPE` varchar(25) DEFAULT NULL,
  `SERVER_NAME` varchar(100) DEFAULT NULL,
  `RECORD_LOG` char(1) DEFAULT NULL,
  PRIMARY KEY (`CFG_MSG_CONTRAL_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cfg_task` */

DROP TABLE IF EXISTS `cfg_task`;

CREATE TABLE `cfg_task` (
  `CFG_TASK_ID` decimal(12,0) NOT NULL COMMENT '任务配置ID',
  `TASK_NAME` varchar(255) NOT NULL COMMENT '任务名称',
  `CFG_TASK_TYPE_CODE` varchar(255) NOT NULL COMMENT '任务配置类型',
  `BUSINESS_CLASS` varchar(255) NOT NULL COMMENT '接口的业务实现类',
  `TASK_METHOD` char(1) NOT NULL COMMENT '任务执行方式(F,为固定时间;C,为cron周期执行;I,为立即执行)',
  `TASK_EXPR` varchar(255) DEFAULT NULL COMMENT '任务配置表达式',
  `SORT_ID` decimal(12,0) DEFAULT NULL COMMENT '任务优先级别(越大优先级别越高)',
  `STAFF_ID` decimal(12,0) DEFAULT NULL COMMENT '配置任务的员工',
  `CREATE_DATE` datetime NOT NULL COMMENT '任务创建时间',
  `STATE_DATE` datetime NOT NULL COMMENT '任务配置的状态更新时间',
  `STATE` char(1) NOT NULL COMMENT '状态(U,为正常;E,为删除;F,为执行完成;X,为异常执行完成)',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`CFG_TASK_ID`),
  KEY `IDX_CFG_TASK_1` (`CFG_TASK_TYPE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `exception_code` */

DROP TABLE IF EXISTS `exception_code`;

CREATE TABLE `exception_code` (
  `EXCEPTION_CODE_TYPE` varchar(12) NOT NULL,
  `EXCEPTION_PARENT_CODE` varchar(12) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `RES_KEY` varchar(25) DEFAULT NULL COMMENT 'bs_i18n_resource表主键',
  PRIMARY KEY (`EXCEPTION_CODE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `job_config` */

DROP TABLE IF EXISTS `job_config`;

CREATE TABLE `job_config` (
  `JOB_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `JOB_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `JOB_PATH` varchar(200) DEFAULT NULL,
  `JOB_CRON` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `JOB_SHARDING_COUNT` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `JOB_SHARDING_PARAMETER` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `JOB_TYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '0=SimpleJob,1=DataFlowJob',
  `JOB_PARAMETER` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `JOB_DESCRIPTION` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FAILOVER` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '0=false,1=true',
  `MISFIRE` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '1' COMMENT '0=false,1=true',
  `STREAMING_PROCESS` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '0=false,1=true',
  `STATE` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '1',
  `TRACE` varchar(2) DEFAULT '0',
  `RECOVER` varchar(2) DEFAULT '0',
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10039 DEFAULT CHARSET=utf8;

/*Table structure for table `job_execution_configuration` */

DROP TABLE IF EXISTS `job_execution_configuration`;

CREATE TABLE `job_execution_configuration` (
  `job_name` varchar(100) NOT NULL,
  `ftp_path_code` varchar(255) NOT NULL,
  `ftp_operation_type` varchar(20) NOT NULL COMMENT 'UPLOAD,DOWNLOAD',
  `ftp_file_name` varchar(255) NOT NULL,
  `local_file_name` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`job_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `job_execution_detail` */

DROP TABLE IF EXISTS `job_execution_detail`;

CREATE TABLE `job_execution_detail` (
  `job_name` varchar(100) NOT NULL,
  `total_record` int(11) NOT NULL,
  `job_stage` varchar(10) NOT NULL,
  `shard_record` varchar(200) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`job_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `job_execution_log` */

DROP TABLE IF EXISTS `job_execution_log`;

CREATE TABLE `job_execution_log` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `job_name` varchar(100) NOT NULL COMMENT '作业名称',
  `task_id` varchar(100) NOT NULL COMMENT '任务名称,每次作业运行生成新任务',
  `hostname` varchar(255) NOT NULL COMMENT '主机名称',
  `ip` varchar(50) NOT NULL COMMENT '主机IP',
  `sharding_item` int(11) NOT NULL COMMENT '分片项',
  `execution_source` varchar(20) NOT NULL COMMENT '作业执行来源。可选值为NORMAL_TRIGGER, MISFIRE, FAILOVER',
  `failure_cause` varchar(2000) DEFAULT NULL COMMENT '执行失败原因',
  `is_success` bit(1) NOT NULL COMMENT '是否执行成功',
  `start_time` timestamp NOT NULL COMMENT '作业开始执行时间',
  `complete_time` timestamp NULL DEFAULT NULL COMMENT '作业结束执行时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `job_status_trace_log` */

DROP TABLE IF EXISTS `job_status_trace_log`;

CREATE TABLE `job_status_trace_log` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `job_name` varchar(100) NOT NULL COMMENT '作业名称',
  `original_task_id` varchar(1000) NOT NULL COMMENT '原任务名称',
  `task_id` varchar(1000) NOT NULL COMMENT '任务名称',
  `slave_id` varchar(1000) NOT NULL COMMENT '执行作业服务器的名称，Lite版本为服务器的IP地址，Cloud版本为Mesos执行机主键',
  `source` varchar(50) NOT NULL COMMENT '任务执行源，可选值为CLOUD_SCHEDULER, CLOUD_EXECUTOR, LITE_EXECUTOR',
  `execution_type` varchar(20) NOT NULL COMMENT '任务执行类型，可选值为NORMAL_TRIGGER, MISFIRE, FAILOVER',
  `sharding_item` varchar(255) NOT NULL COMMENT '分片项集合，多个分片项以逗号分隔',
  `state` varchar(20) NOT NULL COMMENT '任务执行状态，可选值为TASK_STAGING, TASK_RUNNING, TASK_FINISHED, TASK_KILLED, TASK_LOST, TASK_FAILED, TASK_ERROR',
  `message` varchar(2000) NOT NULL COMMENT '相关信息',
  `creation_time` timestamp NOT NULL COMMENT '记录创建时间',
  PRIMARY KEY (`id`),
  KEY `TASK_ID_STATE_INDEX` (`task_id`(255),`state`)
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

/*Table structure for table `task_log` */

DROP TABLE IF EXISTS `task_log`;

CREATE TABLE `task_log` (
  `TASK_LOG_ID` decimal(12,0) NOT NULL COMMENT '日志ID',
  `CFG_TASK_ID` decimal(12,0) NOT NULL COMMENT '任务配置ID',
  `RESULTS` varchar(1000) DEFAULT NULL COMMENT '任务执行结果(如果执行正常,是正常的执行结果;如果执行失败,是异常的message信息)',
  `PERCENT` decimal(2,0) DEFAULT NULL COMMENT '任务执行百分比',
  `START_DATE` datetime NOT NULL COMMENT '任务开始执行时间',
  `FINISH_DATE` datetime DEFAULT NULL COMMENT '任务结束执行时间',
  `STATE` char(1) NOT NULL COMMENT '状态(C,为正在执行中;F,为正常执行完成;X,为异常执行完成)',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TASK_LOG_ID`),
  KEY `IDX_TASK_LOG_1` (`CFG_TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
