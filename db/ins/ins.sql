/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log : Database - ins
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ins` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ins`;

/*Table structure for table `audit_plat_service_rel` */

DROP TABLE IF EXISTS `audit_plat_service_rel`;

CREATE TABLE `audit_plat_service_rel` (
  `PLAT_ID` bigint(10) NOT NULL,
  `SERVICE_CLASS` varchar(10) NOT NULL,
  `STATUS` bigint(2) NOT NULL COMMENT '1-正常\n0-失效',
  `SYSTEM_NAME` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`PLAT_ID`,`SERVICE_CLASS`,`STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `audit_service_info` */

DROP TABLE IF EXISTS `audit_service_info`;

CREATE TABLE `audit_service_info` (
  `SERVICE_CLASS` varchar(10) NOT NULL,
  `SP_CODE` varchar(10) NOT NULL,
  `SP_SERVICE_ID` varchar(60) NOT NULL,
  `BUSI_ID` bigint(8) NOT NULL,
  `PROD_ID` bigint(8) NOT NULL COMMENT '原营业8位产品编号',
  `PRODUCT_ITEM_ID` bigint(20) NOT NULL,
  `ORDER_TYPE` bigint(1) NOT NULL COMMENT '0-省内平台\n1-DSMP程控\n2-DSMP信息\n3-全网基地业务',
  `SERVICE_NAME` varchar(128) DEFAULT NULL,
  `SERVICE_DESC` varchar(128) DEFAULT NULL,
  `BUSI_TYPE` varchar(128) DEFAULT NULL,
  `BUSI_TYPE_NAME` varchar(128) DEFAULT NULL,
  `PRICE` bigint(8) DEFAULT NULL,
  `BILLING_TYPE` varchar(6) DEFAULT NULL COMMENT '00－免费\n01－按条计费\n02－包月计费\n03－包时计费\n04－包次计费\n05－栏目包月\n06－包天\n07-包季度\n08-包半年\n09-包年',
  `PAY_TYPE` varchar(6) DEFAULT NULL,
  `ACCESS_MODE_ID` int(11) DEFAULT NULL,
  `SERV_STATUS` varchar(128) DEFAULT NULL,
  `PROV_ADDR` varchar(128) DEFAULT NULL,
  `PROV_PORT` varchar(128) DEFAULT NULL,
  `USAGE_DESC` varchar(128) DEFAULT NULL,
  `INTRO_URL` varchar(128) DEFAULT NULL,
  `COUNT` int(11) DEFAULT NULL COMMENT '包次次数/包天天数,来自于aicbs.dsmp_service_info',
  `SERV_ATTR` varchar(4) DEFAULT NULL COMMENT 'G：全网业务\nL：本地业务\n来自于aicbs.dsmp_service_info',
  `BAL_PROP` varchar(40) DEFAULT NULL COMMENT '结算比例,来自于aicbs.dsmp_service_info',
  `OTHER_BAL_OBJ1` bigint(8) DEFAULT NULL COMMENT '其他结算方1, 来自于aicbs.dsmp_service_info',
  `OTHER_BAL_OBJ2` bigint(8) DEFAULT NULL COMMENT '其他结算方2, 来自于aicbs.dsmp_service_info',
  `MUSIC_CODE` varchar(40) DEFAULT NULL,
  `MUSIC_USER` varchar(1) DEFAULT NULL COMMENT '0：非会员\n1：普通会员\n2：高级会员\n3：VIP会员',
  `VALID_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REC_STATUS` bigint(1) NOT NULL COMMENT '0-无效记录\n1-有效记录',
  `RE_CONFIRM` char(1) DEFAULT NULL,
  `OPER_DEDUCT_CLUE` bigint(16) DEFAULT NULL,
  `QUERY_ID` bigint(16) DEFAULT NULL,
  `REMARK` varchar(60) DEFAULT NULL,
  `EXT1` varchar(128) DEFAULT NULL,
  `EXT2` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`SERVICE_CLASS`,`PRODUCT_ITEM_ID`,`SP_CODE`,`SP_SERVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='平台业务信息表,用于配置需要稽核的业务信息及集团下发的全网一致性局数据';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务编码定义表，对各种业务的编码信息';

/*Table structure for table `bs_virtual_product_plan_h` */

DROP TABLE IF EXISTS `bs_virtual_product_plan_h`;

CREATE TABLE `bs_virtual_product_plan_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `VP_ID` bigint(12) DEFAULT NULL COMMENT '虚产品ID',
  `BRAND_ID` bigint(12) DEFAULT NULL COMMENT '品牌编号(code_type=SO_BRAND_TYPE)',
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `NOTES` varchar(1024) DEFAULT NULL COMMENT '备注',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员ID',
  `OP_ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作组织'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：虚产品对应套餐配置表历史表';

/*Table structure for table `ins_accrel` */

DROP TABLE IF EXISTS `ins_accrel`;

CREATE TABLE `ins_accrel` (
  `ACCT_RELA_ID` bigint(14) NOT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `ACCT_ID` bigint(14) NOT NULL,
  `OLD_ACCT_ID` bigint(14) DEFAULT NULL COMMENT '异地支付前的帐户编号',
  `PAY_TYPE` bigint(2) NOT NULL COMMENT '付费关系类型(code_type=SO_ACCTREL_TYPE)\n1：默认帐户\n2：代付关系',
  `TOGETHER_FLAG` bigint(2) DEFAULT NULL COMMENT '是否统一支付(code_type=SO_YES_NO)\n0:否1:是',
  `PAY_USER_ID` bigint(12) DEFAULT NULL COMMENT '统付用户编号',
  `ITEM_TYPE` bigint(2) NOT NULL COMMENT '付费项目类型(code=SO_ACCTREL_ITEM_TYPE)\n1:普通科目\n2:科目集合\n3:产品',
  `ITEM_ID` bigint(14) NOT NULL COMMENT '科目或科目集编号，或者产品编号',
  `PAY_MODE` bigint(2) NOT NULL COMMENT '代付付费的方式(code_type=SO_ACCTREL_PAY_MODE)\n1. 全额\n2. 限额\n3. 比例',
  `PAY_VALUE` bigint(12) NOT NULL,
  `MAX_PAY` bigint(12) DEFAULT NULL,
  `OUT_ACCT_PRI` bigint(6) DEFAULT NULL COMMENT '用户多个账户付费时，指定这些账户代付的优先级。在代付关系设定时指定。',
  `ACCT_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_INSTANCE_STATE)\n1正常\n2 变更中\n3 暂停\n5 被动暂停\n6 连带暂停\n7 删除',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  `GRP_SPLIT_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`ACCT_RELA_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`),
  KEY `IDX_INS_ACCREL_1` (`USER_ID`),
  KEY `IDX_INS_ACCREL_2` (`ACCT_ID`),
  KEY `IDX_OFFER_INST_ID` (`OFFER_INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：指定账户为用户的默认付费账户，或为用户的某个科目或产品进行代付，并指明代付的方式、比例。\n索引：\n1USER_ID索引\n2ACCT_ID索引\n3PAY_USER_ID索引\n4ACCT_RELA_ID、VALID_DATE、EXPIRE_DATE联合主键\n分表方式：按地市分表\n历史表：按地市年月进行分表(如INS_ACCREL_H_011_201110)';

/*Table structure for table `ins_accrel_h` */

DROP TABLE IF EXISTS `ins_accrel_h`;

CREATE TABLE `ins_accrel_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '历史编号',
  `ACCT_RELA_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `OLD_ACCT_ID` bigint(14) DEFAULT NULL COMMENT '异地支付前的帐户编号',
  `PAY_TYPE` bigint(2) DEFAULT NULL COMMENT '付费关系类型(code_type=SO_ACCTREL_TYPE)\n1：默认帐户\n2：代付关系',
  `TOGETHER_FLAG` bigint(2) DEFAULT NULL COMMENT '是否统一支付(code_type=SO_YES_NO)\n0:否1:是',
  `PAY_USER_ID` bigint(12) DEFAULT NULL COMMENT '统付用户编号',
  `ITEM_TYPE` bigint(2) DEFAULT NULL COMMENT '付费项目类型(code=SO_ACCTREL_ITEM_TYPE)\n1:普通科目\n2:科目集合\n3:产品',
  `ITEM_ID` bigint(12) DEFAULT NULL COMMENT '科目或科目集编号，或者产品编号',
  `PAY_MODE` bigint(2) DEFAULT NULL COMMENT '代付付费的方式(code_type=SO_ACCTREL_PAY_MODE)\n1. 全额\n2. 限额\n3. 比例',
  `MAX_PAY` bigint(12) DEFAULT NULL,
  `PAY_VALUE` bigint(12) DEFAULT NULL,
  `OUT_ACCT_PRI` bigint(6) DEFAULT NULL COMMENT '用户多个账户付费时，指定这些账户代付的优先级。在代付关系设定时指定。',
  `ACCT_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_INSTANCE_STATE)\n1正常\n2变更中\n3暂停中',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  `GRP_SPLIT_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(如INS_ACCREL_H_571_201110)';

/*Table structure for table `ins_busi_limit` */

DROP TABLE IF EXISTS `ins_busi_limit`;

CREATE TABLE `ins_busi_limit` (
  `INST_BUSI_LIMIT_ID` bigint(14) NOT NULL COMMENT '用户业务受限编号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '来源策划实例编号。用于策划退订时取消后项限制。',
  `LIMIT_TYPE` char(1) DEFAULT NULL COMMENT '后向限制类型\n1操作进入时检查\n2选择产品时检查',
  `USER_ID` bigint(14) NOT NULL COMMENT '用户编号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号。\n-1：该限制针对所有策划。\n0：该限制与策划无关。\n其他：该限制针对具体的该策划编号。',
  `LIMIT_BUSI_TYPE` char(1) NOT NULL DEFAULT '1' COMMENT '0：全部；1：其他：产品管理定义的业务操作类型，如开户、变更、销户类等。',
  `LIMIT_BUSI_ID` bigint(12) NOT NULL COMMENT '限制的业务操作编号。-1所有的业务操作。',
  `LIMIT_RULE_ID` bigint(12) DEFAULT NULL COMMENT '后台规则编号',
  `LIMIT_RULE_PARAM_LIST` varchar(200) DEFAULT NULL COMMENT '后台规则参数',
  `BEGIN_TIME` datetime NOT NULL COMMENT '开始时间',
  `END_TIME` datetime NOT NULL COMMENT '结束时间',
  `LIMIT_FLAG` bigint(1) NOT NULL DEFAULT '1' COMMENT '限制标识\n1：允许；\n2：允许，但有警告\n3：不允许',
  `LIMLT_INPUT_TYPE` bigint(1) DEFAULT NULL COMMENT '限制产生方式\n1：用户申请；前台界面可查，用户可以取消\n2：产品订购；前台界面可查，用户不能取消\n3：后台设置；前台界面不可查，用户不能取消',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `BATCH_FLAG` bigint(1) DEFAULT NULL COMMENT '1 批量\n0 非批量',
  `CHANNEL_ID` varchar(255) DEFAULT NULL COMMENT '渠道ID (CODE_TYPE=SO_CHANNEL_TYPE)\n0	联网银行\n1	营业厅\n10	BBOSS系统\n11	业务平台WEB\n12	业务平台IVR\n13	业务平台SMS\n14	业务平台接口机\n15	业务平台批量\n16	业务平台功能复制开通\n17	业务平台文件开通\n18	业务平台WAP\n19	业务平台MMS\n2	10086客服\n20	业务平台JAVA\n23	短信营业厅\n25	营业批量受理\n26	自助终端\n27	银行前置机\n28	知识库\n29	4A\n3	代理商\n30	集团网厅\n31	ESOP\n32	坐席框架\n33	电话经理\n34	CMOP\n35	排队机\n36	联动优势个人代收\n37	联动优势小额支付\n38	联动优势集团缴费\n39	泛伟统一充值平台\n4	网上营业厅\n40	银行邮政代扣\n41	华为二卡合一平台\n42	大唐空中写卡\n43	鉴权中心\n44	aicas平台\n45	在线客服\n46	电子商务\n47	自动拨测\n5	合作营业厅\n6	内部管理\n7	后台自动处理\n8	小额支付\n9	外部接口\n99	CBOSS',
  `MSG` varchar(4000) DEFAULT NULL,
  `LMT_MODE` char(1) DEFAULT NULL COMMENT '0：指定月数受限\n1:指定时间受限\n2：永久受限',
  `LMT_MONTHS` bigint(3) DEFAULT NULL,
  `LMT_END_TIME` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理时间',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '失效时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区',
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常\n2 变更中\n3 暂停\n5 被动暂停\n6 连带暂停\n7 删除',
  PRIMARY KEY (`USER_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`,`INST_BUSI_LIMIT_ID`),
  KEY `IDX_INS_BUSI_LIMIT_1` (`USER_ID`,`INST_BUSI_LIMIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户业务受限表.用于用户对产品或者单纯业务操作时检查该产品或操作是否有权进行。使用时如果传入产品编号和操作编号，则查询该用户的该策划（含-1所有策划）、该操作（含-1所有操作）的限制数据。查询到的数据按照-1数量的从高到底的优先级执行。\n把产品定义的与策划有关的后向限制的定义实例化到每个用户上，以便在后续业务操作时检查用户是否满足限制条件。不符合规则的则不允许进行后续相关操作。\n索引：USER_ID、VALID_DATE、EXPIRE_DATE、LIMIT_BUSI_ID联合索引\n\n分表方式：按用户编号随机分10张表(北京:INS_BUSI_LIMIT_100开始,上海:INS_BUSI_LIMIT_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_BUSI_LIMIT_H_100_201110)';

/*Table structure for table `ins_busi_limit_h` */

DROP TABLE IF EXISTS `ins_busi_limit_h`;

CREATE TABLE `ins_busi_limit_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '历史编号',
  `INST_BUSI_LIMIT_ID` bigint(14) NOT NULL COMMENT '用户业务受限编号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '来源策划实例编号。用于策划退订时取消后项限制。',
  `LIMIT_TYPE` char(1) DEFAULT NULL COMMENT '后向限制类型\n1操作进入时检查\n2选择产品时检查',
  `USER_ID` bigint(14) NOT NULL COMMENT '用户编号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号。\n-1：该限制针对所有策划。\n0：该限制与策划无关。\n其他：该限制针对具体的该策划编号。',
  `LIMIT_BUSI_TYPE` char(1) NOT NULL DEFAULT '1' COMMENT '0：全部；1：其他：产品管理定义的业务操作类型，如开户、变更、销户类等。',
  `LIMIT_BUSI_ID` bigint(12) NOT NULL COMMENT '限制的业务操作编号。-1所有的业务操作。',
  `LIMIT_RULE_ID` bigint(12) DEFAULT NULL COMMENT '后台规则编号',
  `LIMIT_RULE_PARAM_LIST` varchar(200) DEFAULT NULL COMMENT '后台规则参数',
  `BEGIN_TIME` datetime NOT NULL COMMENT '开始时间',
  `END_TIME` datetime NOT NULL COMMENT '结束时间',
  `LIMIT_FLAG` bigint(1) NOT NULL DEFAULT '1' COMMENT '限制标识\n1：允许；\n2：允许，但有警告\n3：不允许',
  `LIMLT_INPUT_TYPE` bigint(1) DEFAULT NULL COMMENT '限制产生方式\n1：用户申请；前台界面可查，用户可以取消\n2：产品订购；前台界面可查，用户不能取消\n3：后台设置；前台界面不可查，用户不能取消',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '受理编号',
  `BATCH_FLAG` bigint(1) DEFAULT NULL,
  `CHANNEL_ID` varchar(255) DEFAULT NULL,
  `MSG` varchar(4000) DEFAULT NULL,
  `LMT_MODE` char(1) DEFAULT NULL,
  `LMT_MONTHS` bigint(3) DEFAULT NULL,
  `LMT_END_TIME` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '受理时间',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '失效时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33000000000401 DEFAULT CHARSET=utf8 COMMENT='说明：用户业务受限表.用于用户对产品或者单纯业务操作时检查该产品或操作是否有权进行。使用时如果传入产品编号和操作编号，则查询该用户的该策划（含-1所有策划）、该操作（含-1所有操作）的限制数据。查询到的数据按照-1数量的从高到底的优先级执行。\n把产品定义的与策划有关的后向限制的定义实例化到每个用户上，以便在后续业务操作时检查用户是否满足限制条件。不符合规则的则不允许进行后续相关操作。\n索引：USER_ID、VALID_DATE、EXPIRE_DATE、LIMIT_BUSI_ID联合索引\n\n分表方式：按用户编号随机分10张表(北京:INS_BUSI_LIMIT_100开始,上海:INS_BUSI_LIMIT_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_BUSI_LIMIT_H_100_201110)';

/*Table structure for table `ins_busi_price` */

DROP TABLE IF EXISTS `ins_busi_price`;

CREATE TABLE `ins_busi_price` (
  `BUSI_PRICE_INST_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_USER_RELAT_ID` bigint(14) DEFAULT NULL,
  `PRICE_ID` bigint(12) DEFAULT NULL,
  `PRICE_DETAIL_TYPE` varchar(100) DEFAULT NULL COMMENT 'BUSI_DEPOSIT     营业押金资费包        \r             BUSI_PREPAY      普通预存              \r             BUSI_PREPAY      分摊预存              \r             BUSI_RES         资源                  \r             BUSI_SCORE       积分                  \r             BUSI_FEE         手续费                \r             BUSI_PAY         营业缴纳',
  `PRICEITEM_ID` bigint(12) DEFAULT NULL,
  `FACT_PRICEITEM_VALUE` bigint(12) DEFAULT NULL COMMENT '受理时填写的科目实际单价，存储到表中的时候，数据的单位为分；界面展示该值的单位为元\r             是否允许修改单价根据权限控制。缺省值等于科目定价',
  `ORDER_NUM` bigint(6) DEFAULT NULL,
  `SHOULD_MONEY` bigint(12) DEFAULT NULL,
  `DISTCOUNT_MONEY` bigint(12) DEFAULT NULL,
  `DISCOUNT_TYPE` bigint(6) DEFAULT NULL,
  `FACT_MONEY` bigint(12) DEFAULT NULL,
  `TOTAL_SCORE` bigint(8) DEFAULT NULL COMMENT '积分总数',
  `PAY_TYPE` bigint(1) DEFAULT NULL COMMENT '付费方式(1扣本金帐本，2先扣本金帐本，3现金缴款)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\r             1 新建\r             2 修改\r             3 删除\r             4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\r             1 创建\r             7 强制删除\r             9 失败\r             10 撤单\r             11 竣工',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(200) DEFAULT NULL,
  `EXT2` varchar(200) DEFAULT NULL,
  `EXT3` bigint(14) DEFAULT NULL,
  `EXT4` bigint(14) DEFAULT NULL,
  `EXT5` varchar(200) DEFAULT NULL,
  `IS_SEND_REPORT` bigint(6) DEFAULT NULL,
  `TARGET_ACCT_ID` bigint(14) DEFAULT NULL,
  `PRE_TAX_MONEY` bigint(12) DEFAULT NULL,
  `TAX_KIND` varchar(255) DEFAULT NULL,
  `TAX_MONEY` bigint(12) DEFAULT NULL,
  `CHARGE_MODE` varchar(2) DEFAULT NULL COMMENT '1:前台立即收费\r             2:指定日期转账单，后台进程处理\r             3:转账单',
  PRIMARY KEY (`BUSI_PRICE_INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ins_busi_price_ext` */

DROP TABLE IF EXISTS `ins_busi_price_ext`;

CREATE TABLE `ins_busi_price_ext` (
  `BUSI_PRICE_INST_ID` bigint(14) NOT NULL,
  `INS_OFFER_EXT_ID` bigint(14) NOT NULL,
  `INS_BUSI_PRICE_EXT_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) NOT NULL,
  `ATTR_CODE` varchar(255) DEFAULT NULL,
  `ATTR_NAME` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` varchar(500) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\r             1 新建\r             2 修改\r             3 删除\r             4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '7 强制删除\r             9 失败\r             10 撤单\r             11 竣工',
  `DONE_CODE` bigint(2) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BUSI_PRICE_INST_ID`,`INS_BUSI_PRICE_EXT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ins_busi_price_ext_bak` */

DROP TABLE IF EXISTS `ins_busi_price_ext_bak`;

CREATE TABLE `ins_busi_price_ext_bak` (
  `BUSI_PRICE_INST_ID` bigint(14) NOT NULL,
  `INS_OFFER_EXT_ID` bigint(14) NOT NULL,
  `INS_BUSI_PRICE_EXT_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(14) NOT NULL,
  `ATTR_CODE` varchar(255) DEFAULT NULL,
  `ATTR_NAME` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` varchar(500) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\r             1 新建\r             2 修改\r             3 删除\r             4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '7 强制删除\r             9 失败\r             10 撤单\r             11 竣工',
  `DONE_CODE` bigint(2) DEFAULT NULL,
  `CREATE_DATE` timestamp NULL DEFAULT NULL,
  `DONE_DATE` timestamp NULL DEFAULT NULL,
  `EFFTIVE_DATE` timestamp NULL DEFAULT NULL,
  `EXPIRE_DATE` timestamp NULL DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ins_cmrel` */

DROP TABLE IF EXISTS `ins_cmrel`;

CREATE TABLE `ins_cmrel` (
  `CMREL_ID` bigint(14) NOT NULL COMMENT '关联ID',
  `RELA_TYPE` bigint(2) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户ID',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户ID',
  `USER_REGION_CODE` varchar(6) DEFAULT NULL COMMENT '用户地市ID',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_INSTANCE_STATE)\n1正常\n2 变更中\n3 暂停\n5 被动暂停\n6 连带暂停\n7 删除',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  `USER_TYPE` bigint(2) DEFAULT NULL COMMENT '用户类别(code_type=SO_USER_TYPE)\n1普通用户\n2公免用户\n3测试用户\n4套卡用户\n5专用卡用户\n6虚拟用户\n8集团用户\n9个人IP直通车\n10企业IP直通车\n11手机阅读用户\n12铁通捆绑用户',
  `PROD_CATALOG_ID` bigint(12) DEFAULT NULL COMMENT '产品规格',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '主策划',
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CMREL_ID`),
  KEY `IDX_INS_CMREL_CUST_ID` (`CUST_ID`),
  KEY `IDX_INS_CMREL_USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对于客户和用户关系表 :\n a) 订单模块在实例库中创建客户与用户关系表，只保存用户与使用者的关系。按用户ID分表。\n b) 订单模块提供针对该表的增删改查服务。\n c) 客管模块在维护用户与使用者关系时，调用订单接口同步数据\n\n分表方式：按用户编号随机分10张表(例如:INS_CMREL_2100)\n历史表：按用户编号分片和年月进行分表(如INS_CMREL_H_2100_201110)';

/*Table structure for table `ins_cmrel_h` */

DROP TABLE IF EXISTS `ins_cmrel_h`;

CREATE TABLE `ins_cmrel_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  `CMREL_ID` bigint(14) DEFAULT NULL COMMENT '关联ID',
  `RELA_TYPE` bigint(2) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户ID',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户ID',
  `USER_REGION_CODE` varchar(6) DEFAULT NULL COMMENT '用户地市ID',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_INSTANCE_STATE)\n1正常\n2 变更中\n3 暂停\n5 被动暂停\n6 连带暂停\n7 删除',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  `USER_TYPE` bigint(2) DEFAULT NULL COMMENT '用户类别(code_type=SO_USER_TYPE)\n1普通用户\n2公免用户\n3测试用户\n4套卡用户\n5专用卡用户\n6虚拟用户\n8集团用户\n9个人IP直通车\n10企业IP直通车\n11手机阅读用户\n12铁通捆绑用户',
  `PROD_CATALOG_ID` bigint(12) DEFAULT NULL COMMENT '产品规格',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '主策划',
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `IDX_INS_CMREL_CUST_ID` (`CUST_ID`),
  KEY `IDX_INS_CMREL_USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对于客户和用户关系表 :\n a) 订单模块在实例库中创建客户与用户关系表，只保存用户与使用者的关系。按用户ID分表。\n b) 订单模块提供针对该表的增删改查服务。\n c) 客管模块在维护用户与使用者关系时，调用订单接口同步数据\n\n分表方式：按用户编号随机分10张表(例如:INS_CMREL_2100)\n历史表：按用户编号分片和年月进行分表(如INS_CMREL_H_2100_201110)';

/*Table structure for table `ins_commitment` */

DROP TABLE IF EXISTS `ins_commitment`;

CREATE TABLE `ins_commitment` (
  `INST_COMMITMENT_ID` bigint(14) NOT NULL COMMENT '协议期实例编号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL COMMENT '策划ID',
  `COMM_TYPE` bigint(6) DEFAULT NULL COMMENT '协议期类型,目前主要有以下几种：\n1--new phone commitment:限定在该协议期内不允许再次办理优惠购机业务\n2--subscription commitment:签订的基本套餐协议期\n3--service commitment:增值策划的协议期',
  `COMM_VALUE` bigint(6) DEFAULT NULL COMMENT '协议期期数：用于记录UPC配置的协议期期数，数据类型为整型',
  `COMM_START_DATE` datetime DEFAULT NULL,
  `COMM_END_DATE` datetime DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常\n7 删除',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  `SRC_OFFER_ID` bigint(14) DEFAULT NULL,
  `SRC_OFFER_INS_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`INST_COMMITMENT_ID`),
  KEY `INDEX_INS_COMM_1` (`OFFER_INST_ID`,`USER_ID`),
  KEY `INDEX_INS_COMM_2` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户记录用户的协议期信息，如new phone commitment，subscription commitment,service commitment等；\n分表方式：按用户编号随机分10张表(北京:INS_COMMITMENT_100开始,上海:INS_COMMITMENT_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_COMMITMENT_H_100_201110)';

/*Table structure for table `ins_commitment_h` */

DROP TABLE IF EXISTS `ins_commitment_h`;

CREATE TABLE `ins_commitment_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '历史编号',
  `INST_COMMITMENT_ID` bigint(14) NOT NULL COMMENT '协议期实例编号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL COMMENT '策划ID',
  `COMM_TYPE` bigint(6) DEFAULT NULL COMMENT '协议期类型,目前主要有以下几种：\n1--new phone commitment:限定在该协议期内不允许再次办理优惠购机业务\n2--subscription commitment:签订的基本套餐协议期\n3--service commitment:增值策划的协议期',
  `COMM_VALUE` bigint(6) DEFAULT NULL COMMENT '协议期期数：用于记录UPC配置的协议期期数，数据类型为整型',
  `COMM_START_DATE` datetime DEFAULT NULL,
  `COMM_END_DATE` datetime DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常\n7 删除',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  `SRC_OFFER_ID` bigint(14) DEFAULT NULL,
  `SRC_OFFER_INS_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `INDEX_INS_COMM_1` (`OFFER_INST_ID`,`USER_ID`),
  KEY `INDEX_INS_COMM_2` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户记录用户的协议期信息，如new phone commitment，subscription commitment,service commitment等；\n分表方式：按用户编号随机分10张表(北京:INS_COMMITMENT_100开始,上海:INS_COMMITMENT_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_COMMITMENT_H_100_201110)';

/*Table structure for table `ins_des_accrel` */

DROP TABLE IF EXISTS `ins_des_accrel`;

CREATE TABLE `ins_des_accrel` (
  `USER_ID` bigint(14) DEFAULT NULL,
  `ACCT_RELA_ID` bigint(14) NOT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `ACCT_ID` bigint(14) NOT NULL,
  `OLD_ACCT_ID` bigint(14) DEFAULT NULL COMMENT '异地支付前的帐户编号',
  `PAY_TYPE` bigint(2) NOT NULL COMMENT '付费关系类型(code_type=SO_ACCTREL_TYPE)\n1：默认帐户\n2：代付关系',
  `TOGETHER_FLAG` bigint(2) DEFAULT NULL COMMENT '是否统一支付(code_type=SO_YES_NO)\n0:否1:是',
  `PAY_USER_ID` bigint(12) DEFAULT NULL COMMENT '统付用户编号',
  `ITEM_TYPE` bigint(2) NOT NULL COMMENT '付费项目类型(code=SO_ACCTREL_ITEM_TYPE)\n1:普通科目\n2:科目集合\n3:产品',
  `ITEM_ID` bigint(12) NOT NULL COMMENT '科目或科目集编号，或者产品编号',
  `PAY_MODE` bigint(2) NOT NULL COMMENT '代付付费的方式(code_type=SO_ACCTREL_PAY_MODE)\n1. 全额\n2. 限额\n3. 比例',
  `PAY_VALUE` bigint(12) NOT NULL,
  `MAX_PAY` bigint(12) DEFAULT NULL,
  `OUT_ACCT_PRI` bigint(6) DEFAULT NULL COMMENT '用户多个账户付费时，指定这些账户代付的优先级。在代付关系设定时指定。',
  `ACCT_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_INSTANCE_STATE)\n1正常\n2变更中\n3暂停中',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  `GRP_SPLIT_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`ACCT_RELA_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`),
  KEY `IDX_INS_DES_ACCREL` (`USER_ID`,`OFFER_INST_ID`,`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：指定账户为用户的默认付费账户，或为用户的某个科目或产品进行代付，并指明代付的方式、比例。\n索引：\n1USER_ID索引\n2ACCT_ID索引\n3PAY_USER_ID索引\n4ACCT_RELA_ID、VALID_DATE、EXPIRE_DATE联合主键\n分表方式：不分表\n历史表：按年月进行分表(如INS_ACCREL_H_201110)';

/*Table structure for table `ins_des_busi_price` */

DROP TABLE IF EXISTS `ins_des_busi_price`;

CREATE TABLE `ins_des_busi_price` (
  `BUSI_PRICE_INST_ID` bigint(14) NOT NULL,
  `CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL,
  `OFFER_USER_RELAT_ID` bigint(14) DEFAULT NULL,
  `PRICE_ID` bigint(12) DEFAULT NULL,
  `PRICE_DETAIL_TYPE` varchar(100) DEFAULT NULL COMMENT 'BUSI_DEPOSIT     营业押金资费包        \r             BUSI_PREPAY      普通预存              \r             BUSI_PREPAY      分摊预存              \r             BUSI_RES         资源                  \r             BUSI_SCORE       积分                  \r             BUSI_FEE         手续费                \r             BUSI_PAY         营业缴纳',
  `PRICEITEM_ID` bigint(12) DEFAULT NULL,
  `FACT_PRICEITEM_VALUE` bigint(12) DEFAULT NULL COMMENT '受理时填写的科目实际单价，存储到表中的时候，数据的单位为分；界面展示该值的单位为元\r             是否允许修改单价根据权限控制。缺省值等于科目定价',
  `ORDER_NUM` bigint(6) DEFAULT NULL,
  `SHOULD_MONEY` bigint(12) DEFAULT NULL,
  `DISTCOUNT_MONEY` bigint(12) DEFAULT NULL,
  `DISCOUNT_TYPE` bigint(6) DEFAULT NULL,
  `FACT_MONEY` bigint(12) DEFAULT NULL,
  `TOTAL_SCORE` bigint(8) DEFAULT NULL COMMENT '积分总数',
  `PAY_TYPE` bigint(1) DEFAULT NULL COMMENT '付费方式(1扣本金帐本，2先扣本金帐本，3现金缴款)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\r             1 新建\r             2 修改\r             3 删除\r             4 不变',
  `ORDER_STATE` bigint(2) DEFAULT NULL COMMENT '订单状态(code_type=SO_ORDER_STATE)\r             1 创建\r             7 强制删除\r             9 失败\r             10 撤单\r             11 竣工',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OBJ_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '对象的目标生效日期',
  `OBJ_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '对象的目标失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OP_REGION_ID` varchar(6) DEFAULT NULL,
  `CUST_REGION_ID` varchar(6) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXT1` varchar(200) DEFAULT NULL,
  `EXT2` varchar(200) DEFAULT NULL,
  `EXT3` bigint(14) DEFAULT NULL,
  `EXT4` bigint(14) DEFAULT NULL,
  `EXT5` varchar(200) DEFAULT NULL,
  `IS_SEND_REPORT` bigint(6) DEFAULT NULL,
  `TARGET_ACCT_ID` bigint(14) DEFAULT NULL,
  `PRE_TAX_MONEY` bigint(12) DEFAULT NULL,
  `TAX_KIND` varchar(255) DEFAULT NULL,
  `TAX_MONEY` bigint(12) DEFAULT NULL,
  `CHARGE_MODE` varchar(2) DEFAULT NULL COMMENT '1:前台立即收费\r             2:指定日期转账单，后台进程处理\r             3:转账单',
  PRIMARY KEY (`BUSI_PRICE_INST_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ins_des_cmrel` */

DROP TABLE IF EXISTS `ins_des_cmrel`;

CREATE TABLE `ins_des_cmrel` (
  `CMREL_ID` bigint(14) NOT NULL COMMENT '关联ID',
  `RELA_TYPE` bigint(2) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户ID',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户ID',
  `USER_REGION_CODE` varchar(6) DEFAULT NULL COMMENT '用户地市ID',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_INSTANCE_STATE)\n1正常\n2变更中\n3暂停中',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  `USER_TYPE` bigint(2) DEFAULT NULL COMMENT '12	铁通捆绑用户\n1	普通用户\n10	企业IP直通车\n11	手机阅读用户\n2	公免用户\n3	测试用户\n6	虚拟用户\n8	集团用户\n9	个人IP直通车\n4	套卡用户\n5	专用卡用户',
  `PROD_CATALOG_ID` bigint(12) DEFAULT NULL COMMENT '产品规格',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '主策划',
  `EXT1` varchar(100) DEFAULT NULL,
  `EXT3` varchar(100) DEFAULT NULL,
  `EXT2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CMREL_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：不分表\n历史表：按年月进行分表(如INS_CMREL_H_201110)';

/*Table structure for table `ins_des_commitment` */

DROP TABLE IF EXISTS `ins_des_commitment`;

CREATE TABLE `ins_des_commitment` (
  `INST_COMMITMENT_ID` bigint(14) NOT NULL COMMENT '协议期实例编号',
  `OFFER_USER_RELAT_ID` bigint(14) DEFAULT NULL COMMENT '套餐实例产品实例的关系编号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(14) DEFAULT NULL COMMENT '策划ID',
  `COMM_TYPE` bigint(6) DEFAULT NULL COMMENT '协议期类型,目前主要有以下几种：              1--new phone commitment:限定在该协议期内不允许再次办理优惠购机业务              2--subscription commitment:签订的基本套餐协议期              3--service commitment:增值策划的协议期',
  `COMM_VALUE` bigint(6) DEFAULT NULL COMMENT '协议期期数：用于记录UPC配置的协议期期数，数据类型为整型',
  `COMM_START_DATE` datetime DEFAULT NULL,
  `COMM_END_DATE` datetime DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常 7 删除',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL,
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `SRC_OFFER_ID` bigint(14) DEFAULT NULL,
  `SRC_OFFER_INS_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`INST_COMMITMENT_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`),
  KEY `INDEX_INS_COMM_1` (`OFFER_INST_ID`,`USER_ID`),
  KEY `INDEX_INS_COMM_2` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户记录用户的协议期信息，如new phone commitment，subscription commitmen';

/*Table structure for table `ins_des_off_ins_user` */

DROP TABLE IF EXISTS `ins_des_off_ins_user`;

CREATE TABLE `ins_des_off_ins_user` (
  `OFFER_USER_RELAT_ID` bigint(14) NOT NULL COMMENT '套餐实例产品实例的关系编号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(12) NOT NULL COMMENT '为优化查询效率而增加的冗余字段',
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。冗余字段\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `ROLE_ID` bigint(12) NOT NULL COMMENT '表示当前产品实例在套餐实例中的角色，以什么角色存在与当前套餐实例中。角色的定义在产品模型的产品规格中定义。比如：号码13566666666以附属号码的角色加入短号VPMN－A套餐实例中，但是以总机号码的角色加入到移动总机套餐实例中，该号码的产品实例是一份，但是以不同的角色加入到不同的套餐实例中',
  `IS_MAIN_OFFER` bigint(1) DEFAULT NULL COMMENT '1 是\n0 否',
  `IS_GRP_MAIN_USER` bigint(1) DEFAULT NULL COMMENT '是否群主用户订购(1：是，0：否，用以记录家庭用户群组的户主、优惠促销群的主操作用户等)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `GROUP_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT '0' COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT '0' COMMENT '0系统计算\n1用户指定',
  `USER_ID` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`OFFER_USER_RELAT_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户与策划实例的关系从两个角度来理解：\n1、一个策划实例可能有多个用户参与，每个用户扮演的角色由角色编号来确定。不同角色意味着不同的资费和业务规则；\n2、一个用户可能订购了多个策划实例，用户在多个策划中扮演的角色由角色编号来确定。不同角色意味着不同的资费和业务规则；\n索引：\n1、USER_ID建立索引、索引分区\n2、OFFER_INST_ID、IS_MAIN联合索引\n3、OFFER_USER_RELAT_ID、VALID_DATE、EXPIRE_DATE联合主键\n\n分表方式：按用户编号随机分10张表(北京:INS_OFF_INS_USER_100开始,上海:INS_OFF_INS_USER_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_OFF_INS_USER_H_100_201110)';

/*Table structure for table `ins_des_offer` */

DROP TABLE IF EXISTS `ins_des_offer`;

CREATE TABLE `ins_des_offer` (
  `OFFER_INST_ID` bigint(14) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型：1个人用户2家庭客户3政企客户4VPMN客户',
  `USER_ID` bigint(14) NOT NULL,
  `OFFER_ID` bigint(12) NOT NULL COMMENT '对应旧有系统group_order_detail的plan_id在产品管理中的offer_id',
  `OFFER_TYPE` varchar(30) DEFAULT NULL COMMENT '策划类型(code_type=SO_OFFER_TYPE)\nOFFER_PLAN_BBOSS	集团套餐\nOFFER_PLAN_BROADBAND	宽带套餐\nOFFER_PLAN_FAMILY	家庭套餐\nOFFER_PLAN_GROUP	群组套餐\nOFFER_PLAN_GROUP_QQW	家庭亲情网\nOFFER_PLAN_GROUP_QZT	亲子通\nOFFER_PLAN_IOT	物联网套餐\nOFFER_VAS_IOT	物联网增值套餐\nOFFER_VAS_IOT_PKG	物联网增值套餐包\nOFFER_VAS_PLOY	营销活动\nOFFER_PLAN_M2M	物联网套餐\nOFFER_VAS_BROADBAND	宽带增值业务\nOFFER_VAS_CBOSS	CBOSS\nOFFER_VAS_COMB	产品包\nOFFER_VAS_DSMP	DSMP\nOFFER_PLAN_GSM	GSM套餐\nOFFER_PLAN_TELEPHONE	固话套餐\nOFFER_PLAN_IMS	IMS套餐\nOFFER_PLAN_PSTN	铁通套餐\nOFFER_PLAN_TD_LTE	TDLTE套餐\nOFFER_VAS_BBOSS	集团增值策划\nOFFER_PLAN_POOL	家庭畅享计划\nOFFER_PLAN_JTW	家庭V网\nOFFER_VAS_YHGX	用户关系\nOFFER_VAS_OTHER_NET	异网产品\nOFFER_VAS_GROUP_YJSH	一机双号\nOFFER_VAS_MARKET	营销包\nOFFER_VAS_OTHER	增值业务\nOFFER_VAS_PREPAY	预缴\nOFFER_VAS_PROMOTION	促销\nOFFER_VAS_TERMINAL	捆绑档次',
  `BRAND_ID` bigint(12) DEFAULT NULL COMMENT '品牌编号(code_type=SO_BRAND_TYPE)',
  `ORDER_NAME` varchar(200) NOT NULL COMMENT '可自定义订购策划的名称',
  `OLD_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '换策划前的原策划编号。用于换回原套餐时使用。',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_INSTANCE_STATE)\n1	正常\n2	变更中\n3	暂停',
  `SALE_TYPE` bigint(2) DEFAULT NULL COMMENT '销售方式(code_type=SO_SALE_TYPE)\n0 直销\n1 产品代理\n2 关系代理\n3 关系产品代理',
  `SALE_PARTY_ROLE_ID` bigint(12) DEFAULT NULL COMMENT '表示销售代表编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `EXPIRE_PROCESS_TYPE` bigint(2) DEFAULT NULL COMMENT '到期处理方式(0:短信提醒到期,1:到期停,2:到期转包月)',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CHANNEL_TYPE` bigint(12) DEFAULT NULL COMMENT '0	联网银行\n1	营业厅\n10	BBOSS系统\n11	业务平台WEB\n12	业务平台IVR\n13	业务平台SMS\n14	业务平台接口机\n15	业务平台批量\n16	业务平台功能复制开通\n17	业务平台文件开通\n18	业务平台WAP\n19	业务平台MMS\n2	10086客服\n20	业务平台JAVA\n23	短信营业厅\n25	营业批量受理\n26	自助终端\n27	银行前置机\n28	知识库\n29	4A\n3	代理商\n30	集团网厅\n31	ESOP\n32	坐席框架\n33	电话经理\n34	CMOP\n35	排队机\n36	联动优势个人代收\n37	联动优势小额支付\n38	联动优势集团缴费\n39	泛伟统一充值平台\n4	网上营业厅\n40	银行邮政代扣\n41	华为二卡合一平台\n42	大唐空中写卡\n43	鉴权中心\n44	aicas平台\n45	在线客服\n46	电子商务\n47	自动拨测\n5	合作营业厅\n6	内部管理\n7	后台自动处理\n8	小额支付\n9	外部接口\n99	CBOSS',
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `RELAT_TYPE` char(1) DEFAULT NULL COMMENT '0 无关联\n1 关联了其他策划\n2 被其他策划关联\n3 既关联他策划，也被其他策划关联',
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `OLD_EXPIRE_DATE` datetime DEFAULT NULL,
  `NUM_EXT1` bigint(14) DEFAULT NULL,
  `OS_STATE` varchar(64) DEFAULT NULL,
  `COMMITMENT_START_DATE` datetime DEFAULT NULL,
  `COMMITMENT_END_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`OFFER_INST_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`),
  KEY `IDX_INS_DES_OFFER` (`USER_ID`,`OFFER_TYPE`,`DONE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：客户订购策划的实例。策划包括基本策划（套餐）和增值策划（营销活动）。\n索引：\n1、USER_ID建立索引\n2、OFFER_INST_ID、VALID_DATE、EXPIRE_DATE联合主键\n分表方式：按用户编号随机分10张表(北京:INS_OFFER_100开始,上海:INS_OFFER_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_OFFER_H_100_201110)';

/*Table structure for table `ins_des_offer_ext` */

DROP TABLE IF EXISTS `ins_des_offer_ext`;

CREATE TABLE `ins_des_offer_ext` (
  `INS_OFFER_EXT_ID` bigint(14) NOT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL,
  `OFFER_INDEX_ID` bigint(14) NOT NULL,
  `ATTR_CODE` varchar(255) DEFAULT NULL,
  `ATTR_NAME` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` varchar(500) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `DONE_CODE` bigint(2) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFTIVE_DATE` datetime NOT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`INS_OFFER_EXT_ID`,`EFFTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ins_des_offer_relat` */

DROP TABLE IF EXISTS `ins_des_offer_relat`;

CREATE TABLE `ins_des_offer_relat` (
  `RELAT_ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `RELATED_OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `RELAT_ROLE_ID` bigint(12) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_INSTANCE_STATE)\n1正常\n2变更中\n3暂停中\n4免费体验',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `RELAT_TYPE` varchar(8) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `RELATED_OFFER_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`RELAT_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：\n1包含关系：一个策划可以0到多个其他策划实例，如策划间的组装关系；\n2连带关系：包括策划间的连带订购、连带退订等。\n3具体关系参见产品管理的策划与策划之间关系类型的定义。\n分表方式：按用户编号随机分10张表(北京:INS_OFFER_RELAT_100开始,上海:INS_OFFER_RELAT_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_OFFER_RELAT_H_100_201110)';

/*Table structure for table `ins_des_price_attr` */

DROP TABLE IF EXISTS `ins_des_price_attr`;

CREATE TABLE `ins_des_price_attr` (
  `PRICE_ATTR_INST_ID` bigint(14) NOT NULL,
  `RELAT_INST_ID` bigint(14) DEFAULT NULL,
  `PRICE_INST_TYPE` bigint(2) NOT NULL COMMENT '1 服务包实例联的价格计划信息\n2 套餐实例关联的价格计划信息',
  `PRICE_DETAIL_TYPE` varchar(100) DEFAULT NULL COMMENT 'BOSS_NORMAL      帐务资费包     \nBOSS_PROMOTION   帐务促销      \n              \nBILLING_NORMAL   计费资费包    \nBILLING_FREE     免费资源      \n              \nBOSS_RENT        月租资费包    \nBOSS_RENT        月租资费包    \n              \nAWARD_PREPAY     普通预存      \nAWARD_PREPAY     分摊预存      \nAWARD_SCORE      积分          \nAWARD_COUNT      条数          \nAWARD_RES        资源          \nAWARD_FEE        赠送话费(分摊)\nAWARD_CARD       休闲卡        \nAWARD_COUNT      彩信条数      \nAWARD_FEE        本地长途<分摊>\nAWARD_FEE        本地长途',
  `PRICE_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `ATTR_ID` bigint(12) NOT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) NOT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  PRIMARY KEY (`PRICE_ATTR_INST_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：记录策划或产品的属性，或策划、产品包含资费的属性，如优惠类型、优惠值等。\n\n分表方式：按用户编号随机分10张表(北京:INS_PRICE_ATTR_100开始,上海:INS_PRICE_ATTR_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_PRICE_ATTR_H_100_201110)';

/*Table structure for table `ins_des_prod` */

DROP TABLE IF EXISTS `ins_des_prod`;

CREATE TABLE `ins_des_prod` (
  `PROD_INST_ID` bigint(14) NOT NULL,
  `OFFER_USER_RELAT_ID` bigint(14) DEFAULT NULL COMMENT '策划用户关系ID',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `PROD_ID` bigint(12) DEFAULT NULL,
  `PROD_TYPE` varchar(30) DEFAULT NULL COMMENT '产品类型(code_type=SO_PRODUCT_TYPE)',
  `PROD_PKG_FLAG` bigint(1) DEFAULT NULL COMMENT '产品包标识(code_type=SO_PROD_PKG_FLAG)\n0：包外产品\n1：包内产品\n2：包产品',
  `OLD_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '转为包内产品前所对应的老策划编号',
  `EXPIRE_PROCESS_TYPE` bigint(2) DEFAULT NULL COMMENT '到期处理方式(:0:短信提醒到期,1:到期停,2:到期转包月)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常\n3暂停中\n4免费体验',
  `PRESENT_OBJ_USER` bigint(14) DEFAULT NULL COMMENT '记录赠送目标用户的产品实例编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `BOSS_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '计费帐务测原生效时间',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `SRC_SYSTEM_EXT_CODE` varchar(200) DEFAULT NULL COMMENT '来源系统扩展编码,如果是来自sp产品，则该字段保存sp_code',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OLD_INST_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '在订购产品包时，如果有在其他套餐下的包内产品存在，则将此产品实例的策划实例编号改为新的包产品策划实例编号，同时将原策划的实例编号记录在OLD_INST_OFFER_ID中；在退订包产品时，将OLD_INST_OFFER_ID替换回策划实例编号，以达到该产品实例由包内产品转化为原策划下的产品的目的。\n在换策划时，如果新的策划下含有被转化为包内产品的产品实例，则需要同时将产品实例的OLD_INST_OFFER_ID替换为新的策划实例的编号。',
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `USER_ID` bigint(14) DEFAULT NULL,
  `BUSI_TYPE` varchar(20) DEFAULT NULL COMMENT '业务平台类型',
  `EXT_1` bigint(14) DEFAULT NULL COMMENT '擴展字段1',
  `PROD_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PROD_INST_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户订购产品的实例化\n\n分表方式：按用户编号随机分10张表(北京:INS_PROD_100开始,上海:INS_PROD_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_PROD_H_100_201110)';

/*Table structure for table `ins_des_prod_attr` */

DROP TABLE IF EXISTS `ins_des_prod_attr`;

CREATE TABLE `ins_des_prod_attr` (
  `PROD_ATTR_INST_ID` bigint(14) NOT NULL,
  `PROD_INST_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '策划实例编号',
  `USER_ID` bigint(14) DEFAULT NULL,
  `PROD_ID` bigint(12) NOT NULL COMMENT 'service_id',
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常\r             2 变更中\r             3 暂停\r             5 被动暂停\r             6 连带暂停\r             7 删除',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\r             1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\r             1用户指定',
  `SORT_ID` bigint(6) DEFAULT NULL,
  `ATTR_BATCH` varchar(20) DEFAULT NULL,
  `OLD_ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `OLD_ATTR_TEXT` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`PROD_ATTR_INST_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ins_des_prod_ins_srv` */

DROP TABLE IF EXISTS `ins_des_prod_ins_srv`;

CREATE TABLE `ins_des_prod_ins_srv` (
  `PROD_SRV_RELAT_ID` bigint(14) NOT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `PROD_INST_ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `SERVICE_ID` bigint(12) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1 正常',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `SERVICE_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PROD_SRV_RELAT_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：一个产品不可能包含0到多个服务。因为定义好的产品中，服务是不供用户选择的，因此不单独保存服务实例。需要计算用户的开通次数时需要根据此对象进行计算。\n\n分表方式：按用户编号随机分10张表(北京:INS_PROD_INS_SRV_100开始,上海:INS_PROD_INS_SRV_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_PROD_INS_SRV_H_100_201110)';

/*Table structure for table `ins_des_srv_attr` */

DROP TABLE IF EXISTS `ins_des_srv_attr`;

CREATE TABLE `ins_des_srv_attr` (
  `ATTR_INST_ID` bigint(14) NOT NULL,
  `PROD_SRV_RELAT_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '策划实例编号',
  `USER_ID` bigint(14) DEFAULT NULL,
  `SERVICE_ID` bigint(12) NOT NULL COMMENT 'service_id',
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `SORT_ID` bigint(6) DEFAULT NULL,
  `ATTR_BATCH` varchar(20) DEFAULT NULL,
  `OLD_ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `OLD_ATTR_TEXT` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`ATTR_INST_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：服务包含的属性实例。记录用户订购的具体服务属性的值和显示值。用于开通串指令的拼装或者描述占用资源相关的信息\n索引：\n1、USER_ID、OFFER_INST_ID联合索引\n2、OFFER_INST_ID、ATTR_ID联合索引\n3、ATTR_INST_ID、VALID_DATE、EXPIRE_DATE联合主键\n\n分表方式：按用户编号随机分10张表(北京:INS_SRV_ATTR_100开始,上海:INS_SRV_ATTR_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_SRV_ATTR_H_100_201110)';

/*Table structure for table `ins_des_user` */

DROP TABLE IF EXISTS `ins_des_user`;

CREATE TABLE `ins_des_user` (
  `USER_ID` bigint(14) NOT NULL,
  `VIRTUAL_USER_ID` bigint(14) DEFAULT NULL,
  `PROD_CATALOG_ID` bigint(12) NOT NULL COMMENT '产品分类编号，如ADSL、GSM、普通电话等产品分类的编号',
  `CUST_ID` bigint(14) NOT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型(code_type=SO_CUST_TYPE)：\n1个人客户户\n2家庭客户\n3政企客户\n4VPMN客户',
  `BILL_ID` varchar(30) NOT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `SUB_BILL_ID` varchar(50) DEFAULT NULL COMMENT '用于记录除计费号之外的标识号码。',
  `FIRST_USE_DATE` datetime DEFAULT NULL,
  `ACTIVE_DATE` datetime DEFAULT NULL COMMENT '激活时间',
  `PRE_DESTORY_TIME` datetime DEFAULT NULL COMMENT '预销时间',
  `LAST_TRANS_DATE` datetime DEFAULT NULL COMMENT '最后一次过户时间',
  `STATE` varchar(3) DEFAULT NULL COMMENT '用户状态(code_type=SO_USER_STATE)\n1-在用\n2-帐务预销\n3-营业预销\n4-预开户\n5-营业销户\n6-帐务销户\n7-套卡销户',
  `AREA_CODE` varchar(40) DEFAULT NULL,
  `COUNTRY_CODE` varchar(6) DEFAULT NULL,
  `CREDIT_LEVEL` bigint(2) DEFAULT NULL COMMENT '信用等级',
  `OWE_AMOUNT` bigint(12) DEFAULT NULL,
  `PASSWORD_TYPE` bigint(2) DEFAULT NULL COMMENT '0：系统自动生成；\n1：用户指定；',
  `PASSWORD` varchar(64) DEFAULT NULL,
  `USER_TYPE` bigint(2) DEFAULT NULL COMMENT '用户类别(code_type=SO_USER_TYPE)\n1普通用户\n2公免用户\n3测试用户\n4套卡用户\n5专用卡用户\n6虚拟用户\n8集团用户\n9个人IP直通车\n10企业IP直通车\n11手机阅读用户',
  `NOTICE_FLAG` bigint(2) DEFAULT NULL COMMENT '表示针对这个产品在欠费的时候是否可以进行催缴(code_type=SO_NOTICE_FLAG)\n0：可催可停；\n1：不可催，可停；\n2：可催，不可停；\n3：不可催，不可停；\n4：红名单；\n5：公务机；\n6：测试号；',
  `AREA_ID` bigint(12) DEFAULT NULL COMMENT '表明本实体所对应的产品实例发生在哪个营业区。',
  `ADDRESS_ID` varchar(200) DEFAULT NULL COMMENT '标准地址编号',
  `ADDRESS_DESC` varchar(1000) DEFAULT NULL COMMENT '详细地址',
  `EXCHANGE_ID` varchar(30) DEFAULT NULL COMMENT '局向编号',
  `IS_OUT_NET` bigint(2) DEFAULT NULL COMMENT '他网产品标志(code_type=SO_IS_OUT_NET)\n1 它网\n0 本网',
  `BAL_ORG_ID` bigint(12) DEFAULT NULL COMMENT '营业员可以选择入网时的结算组织。\n缺省为入网营业员所属的组织编号。\n但为了结算，可能系统会批量调整。',
  `CONT_ID` bigint(12) DEFAULT NULL,
  `RISK_FLAG` bigint(1) DEFAULT '0' COMMENT '1 风险控制用户 0 非风险控制用户',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  `PREPAY_VALIDITY_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`),
  KEY `IDX_INS_DES_USER` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='˵�����û����й��ƶ��ͻ�������Ʒ�ߵ�ʵ������Ʒ����ָ��GSM��������ͨ�绰�����������Ų����������Ϊ����װ�Ĺ��ܲ�Ʒ���ࡣ\r\n\r\n�ֱ���ʽ�����û���������10�ű�(����:INS_USER_100��ʼ,�Ϻ�:INS_USER_210��ʼ)\r\n��ʷ�������û���ŷ�Ƭ�����½��зֱ�(��INS_USER_H_100_201110)';

/*Table structure for table `ins_des_user_ext` */

DROP TABLE IF EXISTS `ins_des_user_ext`;

CREATE TABLE `ins_des_user_ext` (
  `INS_USER_EXT_ID` bigint(14) NOT NULL COMMENT '用户扩展编号',
  `ATTR_CODE` bigint(6) DEFAULT NULL COMMENT '用户扩展属性编码,目前主要有以下几种：\nIS_OUT_NET_USER-是否是网外用户\nIS_NP_USER-是否是携号转网用户\nIS_M2M_USER-是否是物联网用户',
  `ATTR_VALUE` varchar(500) DEFAULT NULL COMMENT '用户扩展属性值',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户ID',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  PRIMARY KEY (`INS_USER_EXT_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户记录用户的相关扩展信息，如是否是物联网用户、是否是网外用户、是否是携号转网用户等；\n索引：USER_ID\n\n分表方式：按用户编号随机分10张表(北京:INS_USER_EXT_100开始,上海:INS_USER_EXT_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_USER_EXT_H_100_201110)';

/*Table structure for table `ins_des_user_os_state` */

DROP TABLE IF EXISTS `ins_des_user_os_state`;

CREATE TABLE `ins_des_user_os_state` (
  `USER_ID` bigint(14) NOT NULL,
  `OS_STATUS` varchar(64) NOT NULL COMMENT '用户停开机状态.按字符存储不同的停开机类型。每一位取值0表示开，1表示停；\n每一位的含义为：\n第一位         管理停开（营业停开）   \n第二位         营业停开（管理停开）   \n第三位         帐务停开               \n第四位         营业的连带停开         \n第五位         呼出限制               \n第六位         帐务的连带停开         \n第七位         管理的连带停开         \n第八位         呼出限制的连带停开     \n第九位         营业预销               \n第十位         帐务预销               \n第十一位       管理预销               \n第十二位       资金有效期停机 \n\n用户停开机时不修改程控功能表中的服务状态，对服务状态判断时要首先判断对应用户信息表中的停开机类型。\n\n个人IP直通车用户时，此字段的第一位值：\n0.激活状态；1.封锁状态',
  `OS_STATUS_PRE` varchar(64) DEFAULT NULL COMMENT '发送给计费的最近一次停机方式',
  `B_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次营业停机日期',
  `A_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次帐务停机日期',
  `M_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次管理停机日期',
  `R_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次连带停机日期',
  `O_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次呼出限制停日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '修改对象的失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `OS_REASON` bigint(3) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：记录用户的各类停开机状态以及停开机时间。\n\n分表方式：按用户编号随机分10张表(北京:INS_USER_OS_STATE_100开始,上海:INS_USER_OS_STATE_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_USER_OS_STATE_H_100_201110)';

/*Table structure for table `ins_destroy_cmrel` */

DROP TABLE IF EXISTS `ins_destroy_cmrel`;

CREATE TABLE `ins_destroy_cmrel` (
  `CMREL_ID` bigint(14) NOT NULL COMMENT '关联ID',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户ID',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户ID',
  `USER_REGION_CODE` varchar(3) DEFAULT NULL COMMENT '用户地市ID',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_INSTANCE_STATE)\n1正常\n2变更中\n3暂停中',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CMREL_ID`),
  KEY `IDX_INS_DESTROY_CMREL_1` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市分表';

/*Table structure for table `ins_dsmp_switch` */

DROP TABLE IF EXISTS `ins_dsmp_switch`;

CREATE TABLE `ins_dsmp_switch` (
  `SWITCH_INST_ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `SWITCH_CODE` varchar(20) DEFAULT NULL COMMENT '(code_type=SO_DSMP_SWITCH_OFFER_MAPPING)\n103 WAP服务开关\n104 梦网短信服务开关\n105 梦网彩信服务开关\n113 手机动画服务开关\n156 Widget服务开关\n157 MM服务开关\n199 移动信息服务总开关',
  `SWITCH_VALUE` varchar(8) DEFAULT NULL COMMENT '0000 关闭\n1111 打开',
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常\n2 变更中\n3 暂停\n5 被动暂停\n6 连带暂停\n7 删除',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  PRIMARY KEY (`SWITCH_INST_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`),
  KEY `IDX_INS_DSMPSWITCH` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：DSMP业务开关实例\n\n分表方式：按用户编号随机分10张表(北京:INS_DSMP_SWITCH_100开始,上海:INS_DSMP_SWITCH_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_DSMP_SWITCH_H_100_201110)';

/*Table structure for table `ins_dsmp_switch_h` */

DROP TABLE IF EXISTS `ins_dsmp_switch_h`;

CREATE TABLE `ins_dsmp_switch_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `SWITCH_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `SWITCH_CODE` varchar(20) DEFAULT NULL,
  `SWITCH_VALUE` varchar(8) DEFAULT NULL COMMENT '开关值',
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(如:INS_DSMP_SWITCH_H_571_201110)';

/*Table structure for table `ins_grp_info` */

DROP TABLE IF EXISTS `ins_grp_info`;

CREATE TABLE `ins_grp_info` (
  `GRP_INS_ID` bigint(16) NOT NULL,
  `GROUP_CODE` varchar(16) NOT NULL,
  `INS_OFFER_ID` bigint(14) DEFAULT NULL,
  `GROUP_TYPE` varchar(8) NOT NULL,
  `GROUP_NAME` varchar(128) DEFAULT NULL,
  `ADMIN_BILL_ID` varchar(32) DEFAULT NULL,
  `GROUP_SIZE` int(8) DEFAULT NULL,
  `STATUS` char(1) NOT NULL COMMENT '0，已失效\n            1，正常',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(32) DEFAULT NULL COMMENT '扩展属性1',
  `EXT2` varchar(32) DEFAULT NULL COMMENT '扩展属性2',
  `EXT3` varchar(25) DEFAULT NULL COMMENT '扩展属性3',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TENANT_ID` bigint(16) DEFAULT NULL,
  PRIMARY KEY (`GRP_INS_ID`),
  UNIQUE KEY `IDX_INS_GRP_INFO_1` (`GROUP_CODE`,`GROUP_TYPE`,`STATUS`),
  KEY `IDX_INS_GRP_INFO_2` (`GROUP_TYPE`,`STATUS`,`EFFECTIVE_DATE`,`EXPIRE_DATE`,`GROUP_CODE`,`INS_OFFER_ID`),
  KEY `IDX_INS_GRP_INFO_3` (`INS_OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ins_grp_info_h` */

DROP TABLE IF EXISTS `ins_grp_info_h`;

CREATE TABLE `ins_grp_info_h` (
  `GRP_INS_H_ID` bigint(16) NOT NULL AUTO_INCREMENT,
  `GRP_INS_ID` bigint(16) NOT NULL,
  `GROUP_CODE` varchar(16) NOT NULL,
  `INS_OFFER_ID` bigint(14) NOT NULL,
  `GROUP_TYPE` varchar(8) NOT NULL,
  `GROUP_NAME` varchar(128) DEFAULT NULL,
  `ADMIN_BILL_ID` varchar(32) DEFAULT NULL,
  `GROUP_SIZE` int(8) DEFAULT NULL,
  `STATUS` char(1) NOT NULL COMMENT '0，已失效\n            1，正常',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(32) DEFAULT NULL COMMENT '扩展属性1',
  `EXT2` varchar(32) DEFAULT NULL COMMENT '扩展属性2',
  `EXT3` varchar(25) DEFAULT NULL COMMENT '扩展属性3',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TENANT_ID` bigint(16) DEFAULT NULL,
  PRIMARY KEY (`GRP_INS_H_ID`),
  KEY `INDEX_INS_GRP_INFO_H_1` (`GROUP_TYPE`,`STATUS`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='状态为已失效的数据，迁移到历史表';

/*Table structure for table `ins_grp_memb` */

DROP TABLE IF EXISTS `ins_grp_memb`;

CREATE TABLE `ins_grp_memb` (
  `GROUP_MEM_INS_ID` bigint(16) NOT NULL,
  `GROUP_INS_ID` bigint(16) DEFAULT NULL,
  `GROUP_CODE` varchar(16) NOT NULL,
  `INS_OFFER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(32) NOT NULL,
  `STATUS` char(1) NOT NULL COMMENT '0，已退出\n            1，正常\n            2，暂停',
  `ROLE_ID` bigint(12) NOT NULL COMMENT '18001移动角色，18002固话角色，18003网外号码',
  `SHORT_NUM` varchar(8) DEFAULT NULL,
  `ADMIN_TAG` char(1) NOT NULL COMMENT '0，否\n            1，是',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(25) DEFAULT NULL COMMENT '扩展属性1',
  `EXT2` varchar(25) DEFAULT NULL COMMENT '扩展属性2',
  `EXT3` varchar(25) DEFAULT NULL COMMENT '扩展属性3',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TENANT_ID` bigint(16) DEFAULT NULL,
  PRIMARY KEY (`GROUP_MEM_INS_ID`),
  KEY `INDEX_INS_GRP_MEMB_1` (`GROUP_CODE`),
  KEY `INDEX_INS_GRP_MEMB_2` (`GROUP_CODE`,`BILL_ID`,`STATUS`,`ROLE_ID`,`SHORT_NUM`,`ADMIN_TAG`,`CUST_ID`,`USER_ID`,`USER_REGION_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`,`INS_OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ins_grp_memb_h` */

DROP TABLE IF EXISTS `ins_grp_memb_h`;

CREATE TABLE `ins_grp_memb_h` (
  `GROUP_MEM_INS_H_ID` bigint(16) NOT NULL AUTO_INCREMENT,
  `GROUP_MEM_INS_ID` bigint(16) NOT NULL,
  `GROUP_INS_ID` bigint(16) DEFAULT NULL,
  `GROUP_CODE` varchar(16) NOT NULL,
  `INS_OFFER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(32) NOT NULL,
  `STATUS` char(1) NOT NULL COMMENT '0，已退出\n            1，正常\n            2，暂停',
  `ROLE_ID` bigint(12) NOT NULL COMMENT '移动角色，固话角色，网外号码',
  `SHORT_NUM` varchar(8) DEFAULT NULL,
  `ADMIN_TAG` char(1) NOT NULL COMMENT '0，是\n            1，否',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `EXT1` varchar(25) DEFAULT NULL COMMENT '扩展属性1',
  `EXT2` varchar(25) DEFAULT NULL COMMENT '扩展属性2',
  `EXT3` varchar(25) DEFAULT NULL COMMENT '扩展属性3',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `TENANT_ID` bigint(16) DEFAULT NULL,
  PRIMARY KEY (`GROUP_MEM_INS_H_ID`),
  KEY `INDEX_INS_GRP_MEMB_H_1` (`GROUP_CODE`,`BILL_ID`,`STATUS`,`ROLE_ID`,`SHORT_NUM`,`ADMIN_TAG`,`CUST_ID`,`USER_ID`,`USER_REGION_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='状态为已退出的数据，迁移到历史表';

/*Table structure for table `ins_off_ins_user` */

DROP TABLE IF EXISTS `ins_off_ins_user`;

CREATE TABLE `ins_off_ins_user` (
  `OFFER_USER_RELAT_ID` bigint(14) NOT NULL COMMENT '套餐实例产品实例的关系编号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(12) NOT NULL COMMENT '为优化查询效率而增加的冗余字段',
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。冗余字段\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `ROLE_ID` bigint(12) NOT NULL COMMENT '表示当前产品实例在套餐实例中的角色，以什么角色存在与当前套餐实例中。角色的定义在产品模型的产品规格中定义。比如：号码13566666666以附属号码的角色加入短号VPMN－A套餐实例中，但是以总机号码的角色加入到移动总机套餐实例中，该号码的产品实例是一份，但是以不同的角色加入到不同的套餐实例中',
  `IS_MAIN_OFFER` bigint(1) DEFAULT NULL COMMENT '1 是\n0 否',
  `IS_GRP_MAIN_USER` bigint(1) DEFAULT NULL COMMENT '是否群主用户订购(1：是，0：否，用以记录家庭用户群组的户主、优惠促销群的主操作用户等)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常\n2 变更中\n3 暂停\n5 被动暂停\n6 连带暂停\n7 删除',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `GROUP_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT '0' COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT '0' COMMENT '0系统计算\n1用户指定',
  PRIMARY KEY (`OFFER_USER_RELAT_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`),
  KEY `IDX_INS_OFFINSUSER1` (`USER_ID`,`OFFER_INST_ID`),
  KEY `IDX_INS_OFFINSUSER2` (`OFFER_INST_ID`,`IS_MAIN_OFFER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户与策划实例的关系从两个角度来理解：\n1、一个策划实例可能有多个用户参与，每个用户扮演的角色由角色编号来确定。不同角色意味着不同的资费和业务规则；\n2、一个用户可能订购了多个策划实例，用户在多个策划中扮演的角色由角色编号来确定。不同角色意味着不同的资费和业务规则；\n索引：\n1、USER_ID建立索引、索引分区\n2、OFFER_INST_ID、IS_MAIN联合索引\n3、OFFER_USER_RELAT_ID、VALID_DATE、EXPIRE_DATE联合主键\n\n分表方式：按用户编号随机分10张表(北京:INS_OFF_INS_USER_100开始,上海:INS_OFF_INS_USER_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_OFF_INS_USER_H_100_201110)';

/*Table structure for table `ins_off_ins_user_h` */

DROP TABLE IF EXISTS `ins_off_ins_user_h`;

CREATE TABLE `ins_off_ins_user_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '历史编号',
  `OFFER_USER_RELAT_ID` bigint(14) DEFAULT NULL COMMENT '套餐实例产品实例的关系编号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '为优化查询效率而增加的冗余字段',
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。冗余字段\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `ROLE_ID` bigint(12) DEFAULT NULL COMMENT '表示当前产品实例在套餐实例中的角色，以什么角色存在与当前套餐实例中。角色的定义在产品模型的产品规格中定义。比如：号码13566666666以附属号码的角色加入短号VPMN－A套餐实例中，但是以总机号码的角色加入到移动总机套餐实例中，该号码的产品实例是一份，但是以不同的角色加入到不同的套餐实例中',
  `IS_MAIN_OFFER` bigint(1) DEFAULT NULL COMMENT '1 是\n0 否',
  `IS_GRP_MAIN_USER` bigint(1) DEFAULT NULL COMMENT '是否群主用户订购(1：是，0：否，用以记录家庭用户群组的户主、优惠促销群的主操作用户等)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `GROUP_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  PRIMARY KEY (`H_ID`),
  KEY `IDX_INSOFFINSUSER_H_1` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(如INS_OFF_INS_USER_H_571_201110)';

/*Table structure for table `ins_offer` */

DROP TABLE IF EXISTS `ins_offer`;

CREATE TABLE `ins_offer` (
  `OFFER_INST_ID` bigint(14) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型：1个人用户2家庭客户3政企客户4VPMN客户',
  `USER_ID` bigint(14) NOT NULL,
  `OFFER_ID` bigint(12) NOT NULL COMMENT '对应旧有系统group_order_detail的plan_id在产品管理中的offer_id',
  `OFFER_TYPE` varchar(30) DEFAULT NULL COMMENT '策划类型(code_type=SO_OFFER_TYPE)\nOFFER_PLAN_BBOSS	集团套餐\nOFFER_PLAN_BROADBAND	宽带套餐\nOFFER_PLAN_FAMILY	家庭套餐\nOFFER_PLAN_GROUP	群组套餐\nOFFER_PLAN_GROUP_QQW	家庭亲情网\nOFFER_PLAN_GROUP_QZT	亲子通\nOFFER_PLAN_IOT	物联网套餐\nOFFER_VAS_IOT	物联网增值套餐\nOFFER_VAS_IOT_PKG	物联网增值套餐包\nOFFER_VAS_PLOY	营销活动\nOFFER_PLAN_M2M	物联网套餐\nOFFER_VAS_BROADBAND	宽带增值业务\nOFFER_VAS_CBOSS	CBOSS\nOFFER_VAS_COMB	产品包\nOFFER_VAS_DSMP	DSMP\nOFFER_PLAN_GSM	GSM套餐\nOFFER_PLAN_TELEPHONE	固话套餐\nOFFER_PLAN_IMS	IMS套餐\nOFFER_PLAN_PSTN	铁通套餐\nOFFER_PLAN_TD_LTE	TDLTE套餐\nOFFER_VAS_BBOSS	集团增值策划\nOFFER_PLAN_POOL	家庭畅享计划\nOFFER_PLAN_JTW	家庭V网\nOFFER_VAS_YHGX	用户关系\nOFFER_VAS_OTHER_NET	异网产品\nOFFER_VAS_GROUP_YJSH	一机双号\nOFFER_VAS_MARKET	营销包\nOFFER_VAS_OTHER	增值业务\nOFFER_VAS_PREPAY	预缴\nOFFER_VAS_PROMOTION	促销\nOFFER_VAS_TERMINAL	捆绑档次',
  `BRAND_ID` bigint(12) DEFAULT NULL COMMENT '品牌编号(code_type=SO_BRAND_TYPE)\n161000000033	动感地带\n161000005061	TD Wireless\n161000000005	Easyown\n161000000001	GoTone\n161000000010	铁通座机\n161000005060	Corporate Brand\n161000000032	传统宽带',
  `ORDER_NAME` varchar(200) NOT NULL COMMENT '可自定义订购策划的名称',
  `OLD_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '换策划前的原策划编号。用于换回原套餐时使用。',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_INSTANCE_STATE)\n1正常\n2 变更中\n3 暂停\n5 被动暂停\n6 连带暂停\n7 删除',
  `SALE_TYPE` bigint(2) DEFAULT NULL COMMENT '销售方式(code_type=SO_SALE_TYPE)\n0 直销\n1 产品代理\n2 关系代理\n3 关系产品代理',
  `SALE_PARTY_ROLE_ID` bigint(12) DEFAULT NULL COMMENT '表示销售代表编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `EXPIRE_PROCESS_TYPE` bigint(2) DEFAULT NULL COMMENT '到期处理方式(0:短信提醒到期,1:到期停,2:到期转包月)',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CHANNEL_TYPE` bigint(12) DEFAULT NULL COMMENT '订购渠道(code_type=SO_CHANNEL_TYPE)',
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `RELAT_TYPE` char(1) DEFAULT NULL COMMENT '0 无关联\n1 关联了其他策划\n2 被其他策划关联\n3 既关联他策划，也被其他策划关联',
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `OLD_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '策划修改前的失效时间',
  `NUM_EXT1` bigint(14) DEFAULT NULL,
  `COMMITMENT_START_DATE` datetime DEFAULT NULL,
  `COMMITMENT_END_DATE` datetime DEFAULT NULL,
  `OS_STATE` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`OFFER_INST_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`),
  KEY `IDX_INS_OFFER_1` (`USER_ID`,`OFFER_TYPE`),
  KEY `IDX_INS_OFFER_2` (`CUST_ID`),
  KEY `IDX_INS_OFFER_3` (`OFFER_ID`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：客户订购策划的实例。策划包括基本策划（套餐）和增值策划（营销活动）。\n索引：\n1、USER_ID建立索引\n2、OFFER_INST_ID、VALID_DATE、EXPIRE_DATE联合主键\n分表方式：按用户编号随机分10张表(北京:INS_OFFER_100开始,上海:INS_OFFER_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_OFFER_H_100_201110)';

/*Table structure for table `ins_offer_ext` */

DROP TABLE IF EXISTS `ins_offer_ext`;

CREATE TABLE `ins_offer_ext` (
  `INS_OFFER_EXT_ID` bigint(14) NOT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL,
  `OFFER_INDEX_ID` bigint(14) NOT NULL,
  `ATTR_CODE` varchar(255) DEFAULT NULL,
  `ATTR_NAME` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` varchar(500) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_ORDER_DATA_STATE)\r             1 新建\r             2 修改\r             3 删除\r             4 不变',
  `DONE_CODE` bigint(2) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFTIVE_DATE` datetime NOT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`INS_OFFER_EXT_ID`,`EFFTIVE_DATE`,`EXPIRE_DATE`),
  KEY `INX_OFFER_INST_ID` (`OFFER_INST_ID`),
  KEY `INX_OFFER_INST_USERID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ins_offer_ext_bak` */

DROP TABLE IF EXISTS `ins_offer_ext_bak`;

CREATE TABLE `ins_offer_ext_bak` (
  `OFFER_INST_ID` bigint(14) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL,
  `OFFER_INDEX_ID` bigint(14) NOT NULL,
  `ATTR_CODE` varchar(255) DEFAULT NULL,
  `ATTR_NAME` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` varchar(500) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(CODE_TYPE=SO_ORDER_DATA_STATE)   1 新建   2 修改   3 删除   4 不变',
  `DONE_CODE` bigint(2) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFTIVE_DATE` datetime NOT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ins_offer_ext_h` */

DROP TABLE IF EXISTS `ins_offer_ext_h`;

CREATE TABLE `ins_offer_ext_h` (
  `OFFER_INST_ID` bigint(14) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL,
  `OFFER_INDEX_ID` bigint(14) NOT NULL,
  `ATTR_CODE` varchar(255) DEFAULT NULL,
  `ATTR_NAME` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` varchar(500) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(CODE_TYPE=SO_ORDER_DATA_STATE)   1 新建   2 修改   3 删除   4 不变',
  `DONE_CODE` bigint(2) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFTIVE_DATE` datetime NOT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime NOT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='  分表方式：按用户编号随机分10张表(北京:INS_OFFER_EXT_H_2100开始)';

/*Table structure for table `ins_offer_h` */

DROP TABLE IF EXISTS `ins_offer_h`;

CREATE TABLE `ins_offer_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '历史编号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型：1个人用户2家庭客户3政企客户4VPMN客户',
  `USER_ID` bigint(14) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '对应旧有系统group_order_detail的plan_id在产品管理中的offer_id',
  `OFFER_TYPE` varchar(30) DEFAULT NULL COMMENT '策划类型(code_type=SO_OFFER_TYPE)',
  `BRAND_ID` bigint(12) DEFAULT NULL COMMENT '品牌编号(code_type=SO_BRAND_TYPE)',
  `ORDER_NAME` varchar(200) DEFAULT NULL COMMENT '可自定义订购策划的名称',
  `OLD_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '换策划前的原策划编号。用于换回原套餐时使用。',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_INSTANCE_STATE)',
  `SALE_TYPE` bigint(2) DEFAULT NULL COMMENT '销售方式(code_type=SO_SALE_TYPE)\n0 直销\n1 产品代理\n2 关系代理\n3 关系产品代理',
  `SALE_PARTY_ROLE_ID` bigint(12) DEFAULT NULL COMMENT '表示销售代表编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `EXPIRE_PROCESS_TYPE` bigint(2) DEFAULT NULL COMMENT '到期处理方式(0:短信提醒到期,1:到期停,2:到期转包月)',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CHANNEL_TYPE` bigint(12) DEFAULT NULL,
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `RELAT_TYPE` char(1) DEFAULT NULL COMMENT '0 无关联\n1 关联了其他策划\n2 被其他策划关联\n3 既关联他策划，也被其他策划关联',
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `OLD_EXPIRE_DATE` datetime DEFAULT NULL COMMENT '策划修改前的失效时间',
  `NUM_EXT1` bigint(14) DEFAULT NULL,
  `OS_STATE` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `IDX_INSOFFERH1` (`OFFER_INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(如INS_OFFER_H_571_201110)';

/*Table structure for table `ins_offer_relat` */

DROP TABLE IF EXISTS `ins_offer_relat`;

CREATE TABLE `ins_offer_relat` (
  `RELAT_ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `RELATED_OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `RELAT_ROLE_ID` bigint(12) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_INSTANCE_STATE)\n1正常\n2变更中\n3暂停中\n4免费体验\n5 被动暂停\n6 连带暂停\n7 删除',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `RELAT_TYPE` varchar(8) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `RELATED_OFFER_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`RELAT_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`),
  KEY `IDX_INS_OFFREL` (`OFFER_INST_ID`),
  KEY `IDX_INS_OFFREL2` (`USER_ID`),
  KEY `IDX_INS_OFFER_RELAT_4` (`RELATED_OFFER_INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：\n1包含关系：一个策划可以0到多个其他策划实例，如策划间的组装关系；\n2连带关系：包括策划间的连带订购、连带退订等。\n3具体关系参见产品管理的策划与策划之间关系类型的定义。\n分表方式：按用户编号随机分10张表(北京:INS_OFFER_RELAT_100开始,上海:INS_OFFER_RELAT_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_OFFER_RELAT_H_100_201110)';

/*Table structure for table `ins_offer_relat_h` */

DROP TABLE IF EXISTS `ins_offer_relat_h`;

CREATE TABLE `ins_offer_relat_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '历史编号',
  `RELAT_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `RELATED_OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `RELAT_ROLE_ID` bigint(12) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_INSTANCE_STATE)\n1正常\n2变更中\n3暂停中\n4免费体验',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `RELAT_TYPE` varchar(8) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `RELATED_OFFER_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(如INS_OFFER_RELAT_H_571_201110)';

/*Table structure for table `ins_price_attr` */

DROP TABLE IF EXISTS `ins_price_attr`;

CREATE TABLE `ins_price_attr` (
  `PRICE_ATTR_INST_ID` bigint(14) NOT NULL,
  `RELAT_INST_ID` bigint(14) DEFAULT NULL,
  `PRICE_INST_TYPE` bigint(2) NOT NULL COMMENT '1 服务包实例联的价格计划信息\n2 套餐实例关联的价格计划信息',
  `PRICE_DETAIL_TYPE` varchar(100) DEFAULT NULL COMMENT 'BOSS_NORMAL      帐务资费包     \nBOSS_PROMOTION   帐务促销      \n              \nBILLING_NORMAL   计费资费包    \nBILLING_FREE     免费资源      \n              \nBOSS_RENT        月租资费包    \nBOSS_RENT        月租资费包    \n              \nAWARD_PREPAY     普通预存      \nAWARD_PREPAY     分摊预存      \nAWARD_SCORE      积分          \nAWARD_COUNT      条数          \nAWARD_RES        资源          \nAWARD_FEE        赠送话费(分摊)\nAWARD_CARD       休闲卡        \nAWARD_COUNT      彩信条数      \nAWARD_FEE        本地长途<分摊>\nAWARD_FEE        本地长途',
  `PRICE_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `ATTR_ID` bigint(12) NOT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) NOT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常\n2 变更中\n3 暂停\n5 被动暂停\n6 连带暂停\n7 删除',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  PRIMARY KEY (`PRICE_ATTR_INST_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`),
  KEY `IDX_INS_PRIATTR_1` (`USER_ID`,`RELAT_INST_ID`,`PRICE_INST_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：记录策划或产品的属性，或策划、产品包含资费的属性，如优惠类型、优惠值等。\n\n分表方式：按用户编号随机分10张表(北京:INS_PRICE_ATTR_100开始,上海:INS_PRICE_ATTR_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_PRICE_ATTR_H_100_201110)';

/*Table structure for table `ins_price_attr_h` */

DROP TABLE IF EXISTS `ins_price_attr_h`;

CREATE TABLE `ins_price_attr_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '历史编号',
  `PRICE_ATTR_INST_ID` bigint(14) DEFAULT NULL,
  `RELAT_INST_ID` bigint(14) DEFAULT NULL,
  `PRICE_INST_TYPE` bigint(2) DEFAULT NULL COMMENT '1 服务包实例联的价格计划信息\n2 套餐实例关联的价格计划信息',
  `PRICE_DETAIL_TYPE` varchar(100) DEFAULT NULL COMMENT 'BOSS_NORMAL      帐务资费包     \nBOSS_PROMOTION   帐务促销      \n              \nBILLING_NORMAL   计费资费包    \nBILLING_FREE     免费资源      \n              \nBOSS_RENT        月租资费包    \nBOSS_RENT        月租资费包    \n              \nAWARD_PREPAY     普通预存      \nAWARD_PREPAY     分摊预存      \nAWARD_SCORE      积分          \nAWARD_COUNT      条数          \nAWARD_RES        资源          \nAWARD_FEE        赠送话费(分摊)\nAWARD_CARD       休闲卡        \nAWARD_COUNT      彩信条数      \nAWARD_FEE        本地长途<分摊>\nAWARD_FEE        本地长途',
  `PRICE_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(如:INS_PRICE_ATTR_H_571_201110)';

/*Table structure for table `ins_prod` */

DROP TABLE IF EXISTS `ins_prod`;

CREATE TABLE `ins_prod` (
  `PROD_INST_ID` bigint(14) NOT NULL,
  `OFFER_USER_RELAT_ID` bigint(14) DEFAULT NULL COMMENT '策划用户关系ID',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `PROD_ID` bigint(12) DEFAULT NULL,
  `PROD_TYPE` varchar(30) DEFAULT NULL COMMENT '产品类型(code_type=SO_PRODUCT_TYPE)',
  `PROD_PKG_FLAG` bigint(1) DEFAULT NULL COMMENT '产品包标识(code_type=SO_PROD_PKG_FLAG)\n0：包外产品\n1：包内产品\n2：包产品',
  `OLD_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '转为包内产品前所对应的老策划编号',
  `EXPIRE_PROCESS_TYPE` bigint(2) DEFAULT NULL COMMENT '到期处理方式(:0:短信提醒到期,1:到期停,2:到期转包月)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常\n2 变更中\n3 暂停\n5 被动暂停\n6 连带暂停\n7 删除',
  `PRESENT_OBJ_USER` bigint(14) DEFAULT NULL COMMENT '记录赠送目标用户的产品实例编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `BOSS_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '计费帐务测原生效时间',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `SRC_SYSTEM_EXT_CODE` varchar(200) DEFAULT NULL COMMENT '来源系统扩展编码,如果是来自sp产品，则该字段保存sp_code',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OLD_INST_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '在订购产品包时，如果有在其他套餐下的包内产品存在，则将此产品实例的策划实例编号改为新的包产品策划实例编号，同时将原策划的实例编号记录在OLD_INST_OFFER_ID中；在退订包产品时，将OLD_INST_OFFER_ID替换回策划实例编号，以达到该产品实例由包内产品转化为原策划下的产品的目的。\n在换策划时，如果新的策划下含有被转化为包内产品的产品实例，则需要同时将产品实例的OLD_INST_OFFER_ID替换为新的策划实例的编号。',
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `BUSI_TYPE` varchar(20) DEFAULT NULL COMMENT '业务平台类型',
  `EXT_1` bigint(14) DEFAULT NULL COMMENT '擴展字段1',
  `PROD_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PROD_INST_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`),
  KEY `IDX_INS_PROD` (`USER_ID`,`OFFER_INST_ID`),
  KEY `IDX_OFFER_INST_ID` (`OFFER_INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户订购产品的实例化\n\n分表方式：按用户编号随机分10张表(北京:INS_PROD_100开始,上海:INS_PROD_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_PROD_H_100_201110)';

/*Table structure for table `ins_prod_attr` */

DROP TABLE IF EXISTS `ins_prod_attr`;

CREATE TABLE `ins_prod_attr` (
  `PROD_ATTR_INST_ID` bigint(14) NOT NULL,
  `PROD_INST_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '策划实例编号',
  `USER_ID` bigint(14) DEFAULT NULL,
  `PROD_ID` bigint(12) NOT NULL COMMENT 'service_id',
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常\r             2 变更中\r             3 暂停\r             5 被动暂停\r             6 连带暂停\r             7 删除',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\r             1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\r             1用户指定',
  `SORT_ID` bigint(6) DEFAULT NULL,
  `ATTR_BATCH` varchar(20) DEFAULT NULL,
  `OLD_ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `OLD_ATTR_TEXT` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`PROD_ATTR_INST_ID`),
  KEY `INX_PROD_INST_ID` (`PROD_INST_ID`),
  KEY `INX_OFFER_INST_ID` (`OFFER_INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ins_prod_attr_h` */

DROP TABLE IF EXISTS `ins_prod_attr_h`;

CREATE TABLE `ins_prod_attr_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '历史编号',
  `PROD_ATTR_INST_ID` bigint(14) NOT NULL,
  `PROD_INST_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '策划实例编号',
  `USER_ID` bigint(14) DEFAULT NULL,
  `PROD_ID` bigint(12) NOT NULL COMMENT 'service_id',
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常\r             2 变更中\r             3 暂停\r             5 被动暂停\r             6 连带暂停\r             7 删除',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\r             1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\r             1用户指定',
  `SORT_ID` bigint(6) DEFAULT NULL,
  `ATTR_BATCH` varchar(20) DEFAULT NULL,
  `OLD_ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `OLD_ATTR_TEXT` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ins_prod_h` */

DROP TABLE IF EXISTS `ins_prod_h`;

CREATE TABLE `ins_prod_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '历史编号',
  `OFFER_USER_RELAT_ID` bigint(14) DEFAULT NULL COMMENT '策划用户关系ID',
  `PROD_INST_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `PROD_ID` bigint(12) DEFAULT NULL,
  `PROD_TYPE` varchar(30) DEFAULT NULL COMMENT '产品类型(code_type=SO_PRODUCT_TYPE)',
  `PROD_PKG_FLAG` bigint(1) DEFAULT NULL COMMENT '产品包标识(code_type=SO_PROD_PKG_FLAG)\n0：包外产品\n1：包内产品\n2：包产品',
  `OLD_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '转为包内产品前所对应的老策划编号',
  `EXPIRE_PROCESS_TYPE` bigint(2) DEFAULT NULL COMMENT '到期处理方式(:0:短信提醒到期,1:到期停,2:到期转包月)',
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常\n3暂停中\n4免费体验',
  `PRESENT_OBJ_USER` bigint(14) DEFAULT NULL COMMENT '记录赠送目标用户的产品实例编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `BOSS_EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '计费帐务测原生效时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `SRC_SYSTEM_TYPE` bigint(2) DEFAULT NULL COMMENT '策划订购的来源系统。\n1－RBOSS\n2－BBOSS\n3－DSMP',
  `SRC_SYSTEM_EXT_CODE` varchar(200) DEFAULT NULL COMMENT '来源系统扩展编码,如果是来自sp产品，则该字段保存sp_code',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `OLD_INST_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '在订购产品包时，如果有在其他套餐下的包内产品存在，则将此产品实例的策划实例编号改为新的包产品策划实例编号，同时将原策划的实例编号记录在OLD_INST_OFFER_ID中；在退订包产品时，将OLD_INST_OFFER_ID替换回策划实例编号，以达到该产品实例由包内产品转化为原策划下的产品的目的。\n在换策划时，如果新的策划下含有被转化为包内产品的产品实例，则需要同时将产品实例的OLD_INST_OFFER_ID替换为新的策划实例的编号。',
  `EFFECTIVE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` varchar(20) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `BUSI_TYPE` varchar(20) DEFAULT NULL COMMENT '业务平台类型',
  `EXT_1` bigint(14) DEFAULT NULL COMMENT '擴展字段1',
  PRIMARY KEY (`H_ID`),
  KEY `IDX_INSPRODH1` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(如:INS_PROD_H_571_201110)';

/*Table structure for table `ins_prod_ins_srv` */

DROP TABLE IF EXISTS `ins_prod_ins_srv`;

CREATE TABLE `ins_prod_ins_srv` (
  `PROD_SRV_RELAT_ID` bigint(14) NOT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `PROD_INST_ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `SERVICE_ID` bigint(12) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常\n2 变更中\n3 暂停\n5 被动暂停\n6 连带暂停\n7 删除',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `SERVICE_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PROD_SRV_RELAT_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`),
  KEY `IDX_INS_PRODINSSRV` (`USER_ID`,`OFFER_INST_ID`,`PROD_INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：一个产品不可能包含0到多个服务。因为定义好的产品中，服务是不供用户选择的，因此不单独保存服务实例。需要计算用户的开通次数时需要根据此对象进行计算。\n\n分表方式：按用户编号随机分10张表(北京:INS_PROD_INS_SRV_100开始,上海:INS_PROD_INS_SRV_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_PROD_INS_SRV_H_100_201110)';

/*Table structure for table `ins_prod_ins_srv_h` */

DROP TABLE IF EXISTS `ins_prod_ins_srv_h`;

CREATE TABLE `ins_prod_ins_srv_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '历史编号',
  `PROD_SRV_RELAT_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `PROD_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `SERVICE_ID` bigint(12) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1 正常',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `COUNTY_CODE` varchar(6) DEFAULT NULL COMMENT '县市编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  PRIMARY KEY (`H_ID`),
  KEY `IDX_INSPRODINSSRVH1` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(如:INS_PROD_INS_SRV_H_571_201110)';

/*Table structure for table `ins_spec_prod` */

DROP TABLE IF EXISTS `ins_spec_prod`;

CREATE TABLE `ins_spec_prod` (
  `SPEC_PROD_INST_ID` bigint(14) NOT NULL COMMENT '特殊产品沉淀实例编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '策划实例编号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `PROD_INST_ID` bigint(14) DEFAULT NULL COMMENT '产品实例编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编码',
  `EXT_1` varchar(100) DEFAULT NULL COMMENT '扩展字段1',
  `EXT_2` varchar(100) DEFAULT NULL COMMENT '扩展字段2',
  `EXT_3` varchar(100) DEFAULT NULL COMMENT '扩展字段3',
  PRIMARY KEY (`SPEC_PROD_INST_ID`),
  KEY `IDX_INS_SPEC_PROD_1` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户订购特殊产品的沉淀表，主要用来记录一些供帐管和计费或帐务进行处理的用户订购信息，如预付费用户余额分级提醒、余额天天提醒等.\n分表方式：按地市进行分表';

/*Table structure for table `ins_srv_attr` */

DROP TABLE IF EXISTS `ins_srv_attr`;

CREATE TABLE `ins_srv_attr` (
  `ATTR_INST_ID` bigint(14) NOT NULL,
  `PROD_SRV_RELAT_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '策划实例编号',
  `USER_ID` bigint(14) DEFAULT NULL,
  `SERVICE_ID` bigint(12) NOT NULL COMMENT 'service_id',
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常\n2 变更中\n3 暂停\n5 被动暂停\n6 连带暂停\n7 删除',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `SORT_ID` bigint(6) DEFAULT NULL,
  `ATTR_BATCH` varchar(20) DEFAULT NULL,
  `OLD_ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `OLD_ATTR_TEXT` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`ATTR_INST_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`),
  KEY `IDX_INS_SRVATTR1` (`USER_ID`,`OFFER_INST_ID`),
  KEY `IDX_INSSRVATTR_2` (`OFFER_INST_ID`,`ATTR_ID`),
  KEY `IDX_INS_SRVATTR3` (`PROD_SRV_RELAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：服务包含的属性实例。记录用户订购的具体服务属性的值和显示值。用于开通串指令的拼装或者描述占用资源相关的信息\n索引：\n1、USER_ID、OFFER_INST_ID联合索引\n2、OFFER_INST_ID、ATTR_ID联合索引\n3、ATTR_INST_ID、VALID_DATE、EXPIRE_DATE联合主键\n\n分表方式：按用户编号随机分10张表(北京:INS_SRV_ATTR_100开始,上海:INS_SRV_ATTR_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_SRV_ATTR_H_100_201110)';

/*Table structure for table `ins_srv_attr_h` */

DROP TABLE IF EXISTS `ins_srv_attr_h`;

CREATE TABLE `ins_srv_attr_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '历史编号',
  `ATTR_INST_ID` bigint(14) DEFAULT NULL,
  `PROD_SRV_RELAT_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '策划实例编号',
  `USER_ID` bigint(14) DEFAULT NULL,
  `SERVICE_ID` bigint(12) DEFAULT NULL COMMENT 'service_id',
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `ATTR_TEXT` varchar(4000) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `SORT_ID` bigint(6) DEFAULT NULL,
  `ATTR_BATCH` varchar(20) DEFAULT NULL,
  `OLD_ATTR_VALUE` varchar(4000) DEFAULT NULL,
  `OLD_ATTR_TEXT` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`H_ID`),
  KEY `IDX_INSSRVATTRH1` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(如:INS_SRV_ATTR_H_571_201110)';

/*Table structure for table `ins_user` */

DROP TABLE IF EXISTS `ins_user`;

CREATE TABLE `ins_user` (
  `USER_ID` bigint(14) NOT NULL,
  `VIRTUAL_USER_ID` bigint(14) DEFAULT NULL,
  `PROD_CATALOG_ID` bigint(12) NOT NULL COMMENT '产品分类编号，如ADSL、GSM、普通电话等产品分类的编号',
  `CUST_ID` bigint(14) NOT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型(code_type=SO_CUST_TYPE)：\n1个人客户户\n2家庭客户\n3政企客户\n4VPMN客户',
  `BILL_ID` varchar(30) NOT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `SUB_BILL_ID` varchar(50) DEFAULT NULL COMMENT '用于记录除计费号之外的标识号码。',
  `FIRST_USE_DATE` datetime DEFAULT NULL,
  `ACTIVE_DATE` datetime DEFAULT NULL COMMENT '激活时间',
  `PRE_DESTORY_TIME` datetime DEFAULT NULL COMMENT '预销时间',
  `LAST_TRANS_DATE` datetime DEFAULT NULL COMMENT '最后一次过户时间',
  `STATE` varchar(3) DEFAULT NULL COMMENT '用户状态(code_type=SO_USER_STATE)\n1-在用\n2-帐务预销\n3-营业预销\n4-预开户\n5-营业销户\n6-帐务销户\n7-套卡销户',
  `AREA_CODE` varchar(40) DEFAULT NULL,
  `COUNTRY_CODE` varchar(6) DEFAULT NULL,
  `CREDIT_LEVEL` bigint(2) DEFAULT NULL COMMENT '信用等级',
  `OWE_AMOUNT` bigint(12) DEFAULT NULL,
  `PASSWORD_TYPE` bigint(2) DEFAULT NULL COMMENT '0：系统自动生成；\n1：用户指定；',
  `PASSWORD` varchar(64) DEFAULT NULL,
  `USER_TYPE` bigint(2) DEFAULT NULL COMMENT '用户类别(code_type=SO_USER_TYPE)\n1普通用户\n2公免用户\n3测试用户\n4套卡用户\n5专用卡用户\n6虚拟用户\n8集团用户\n9个人IP直通车\n10企业IP直通车\n11手机阅读用户\n12铁通捆绑用户',
  `NOTICE_FLAG` bigint(2) DEFAULT NULL COMMENT '表示针对这个产品在欠费的时候是否可以进行催缴(code_type=SO_NOTICE_FLAG)\n0：可催可停；\n1：不可催，可停；\n2：可催，不可停；\n3：不可催，不可停；\n4：红名单；\n5：公务机；\n6：测试号；',
  `AREA_ID` bigint(12) DEFAULT NULL COMMENT '表明本实体所对应的产品实例发生在哪个营业区。',
  `ADDRESS_ID` varchar(200) DEFAULT NULL COMMENT '标准地址编号',
  `ADDRESS_DESC` varchar(1000) DEFAULT NULL COMMENT '详细地址',
  `EXCHANGE_ID` varchar(30) DEFAULT NULL COMMENT '局向编号',
  `IS_OUT_NET` bigint(2) DEFAULT NULL COMMENT '他网产品标志(code_type=SO_IS_OUT_NET)\n1 它网\n0 本网',
  `BAL_ORG_ID` bigint(12) DEFAULT NULL COMMENT '营业员可以选择入网时的结算组织。\n缺省为入网营业员所属的组织编号。\n但为了结算，可能系统会批量调整。',
  `CONT_ID` bigint(12) DEFAULT NULL,
  `RISK_FLAG` bigint(1) DEFAULT '0' COMMENT '1 风险控制用户 0 非风险控制用户',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  `PREPAY_VALIDITY_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`),
  KEY `IDX_INS_USER1` (`BILL_ID`),
  KEY `IDX_INS_USER2` (`CUST_ID`),
  KEY `IDX_INS_USER3` (`SUB_BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户是中国移动客户订购产品线的实例。产品线是指以GSM语音、普通电话、宽带、集团彩铃等主服务为主包装的功能产品分类。\n\n分表方式：按用户编号随机分10张表(北京:INS_USER_100开始,上海:INS_USER_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_USER_H_100_201110)';

/*Table structure for table `ins_user0424` */

DROP TABLE IF EXISTS `ins_user0424`;

CREATE TABLE `ins_user0424` (
  `USER_ID` bigint(14) NOT NULL,
  `PROD_CATALOG_ID` bigint(12) NOT NULL COMMENT '产品分类编号，如ADSL、GSM、普通电话等产品分类的编号',
  `CUST_ID` bigint(14) NOT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型(code_type=SO_CUST_TYPE)：\n1个人客户户\n2家庭客户\n3政企客户\n4VPMN客户',
  `BILL_ID` varchar(30) NOT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `SUB_BILL_ID` varchar(50) DEFAULT NULL COMMENT '用于记录除计费号之外的标识号码。',
  `FIRST_USE_DATE` datetime DEFAULT NULL,
  `ACTIVE_DATE` datetime DEFAULT NULL COMMENT '激活时间',
  `PRE_DESTORY_TIME` datetime DEFAULT NULL COMMENT '预销时间',
  `LAST_TRANS_DATE` datetime DEFAULT NULL COMMENT '最后一次过户时间',
  `STATE` varchar(3) DEFAULT NULL COMMENT '用户状态(code_type=SO_USER_STATE)\n1-在用\n2-帐务预销\n3-营业预销\n4-预开户\n5-营业销户\n6-帐务销户\n7-套卡销户',
  `AREA_CODE` varchar(40) DEFAULT NULL,
  `COUNTRY_CODE` varchar(6) DEFAULT NULL,
  `CREDIT_LEVEL` bigint(2) DEFAULT NULL COMMENT '信用等级',
  `OWE_AMOUNT` bigint(12) DEFAULT NULL,
  `PASSWORD_TYPE` bigint(2) DEFAULT NULL COMMENT '0：系统自动生成；\n1：用户指定；',
  `PASSWORD` varchar(64) DEFAULT NULL,
  `USER_TYPE` bigint(2) DEFAULT NULL COMMENT '用户类别(code_type=SO_USER_TYPE)\n1普通用户\n2公免用户\n3测试用户\n4套卡用户\n5专用卡用户\n6虚拟用户\n8集团用户\n9个人IP直通车\n10企业IP直通车\n11手机阅读用户\n12铁通捆绑用户',
  `NOTICE_FLAG` bigint(2) DEFAULT NULL COMMENT '表示针对这个产品在欠费的时候是否可以进行催缴(code_type=SO_NOTICE_FLAG)\n0：可催可停；\n1：不可催，可停；\n2：可催，不可停；\n3：不可催，不可停；\n4：红名单；\n5：公务机；\n6：测试号；',
  `AREA_ID` bigint(12) DEFAULT NULL COMMENT '表明本实体所对应的产品实例发生在哪个营业区。',
  `ADDRESS_ID` varchar(200) DEFAULT NULL COMMENT '标准地址编号',
  `ADDRESS_DESC` varchar(1000) DEFAULT NULL COMMENT '详细地址',
  `EXCHANGE_ID` varchar(30) DEFAULT NULL COMMENT '局向编号',
  `IS_OUT_NET` bigint(2) DEFAULT NULL COMMENT '他网产品标志(code_type=SO_IS_OUT_NET)\n1 它网\n0 本网',
  `BAL_ORG_ID` bigint(12) DEFAULT NULL COMMENT '营业员可以选择入网时的结算组织。\n缺省为入网营业员所属的组织编号。\n但为了结算，可能系统会批量调整。',
  `CONT_ID` bigint(12) DEFAULT NULL,
  `RISK_FLAG` bigint(1) DEFAULT '0' COMMENT '1 风险控制用户 0 非风险控制用户',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  `PREPAY_VALIDITY_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`),
  KEY `IDX_INS_USER1` (`BILL_ID`),
  KEY `IDX_INS_USER2` (`CUST_ID`),
  KEY `IDX_INS_USER3` (`SUB_BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户是中国移动客户订购产品线的实例。产品线是指以GSM语音、普通电话、宽带、集团彩铃等主服务为主包装的功能产品分类。\n\n分表方式：按用户编号随机分10张表(北京:INS_USER_100开始,上海:INS_USER_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_USER_H_100_201110)';

/*Table structure for table `ins_user_chg_ntfy` */

DROP TABLE IF EXISTS `ins_user_chg_ntfy`;

CREATE TABLE `ins_user_chg_ntfy` (
  `USER_CHG_ID` bigint(14) NOT NULL COMMENT '用户状态变更编号',
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `CHANGE_TYPE` bigint(2) NOT NULL COMMENT '1 状态变更\n2 品牌变更\n3 过户\n4 换号\n5 预销\n6 帐务关系变更\n7 重入网',
  `OLD_DATA` varchar(200) DEFAULT NULL COMMENT '老数据',
  `NEW_DATA` varchar(200) DEFAULT NULL COMMENT '新数据',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建日期',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织单元',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '管理区域标识',
  `STATE` varchar(30) DEFAULT NULL COMMENT '30位串代表需要处理的30个外围系统，从左到右使用。工单数据插入时根据工单定义将需要处理的子系统对应的位设为1。\n每个位串的含义：\n0 已处理\n1 未处理',
  `EXT_1` bigint(6) DEFAULT NULL,
  `EXT_2` bigint(6) DEFAULT NULL,
  `EXT_3` varchar(100) DEFAULT NULL,
  `EXT_4` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`USER_CHG_ID`),
  KEY `IDX_INS_USERCHG` (`USER_ID`),
  KEY `IDX_INS_USERCHG2` (`EFFECTIVE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用于用户变更时通知外围系统进行相关处理，如发送短信等。\n\n分表方式：按用户编号随机分10张表(北京:INS_USER_CHG_NTFY_100开始,上海:INS_USER_CHG_NTFY_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_USER_CHG_NTFY_H_100_201110，需要加上类型为date的tf_date字段)\n错误表：按用户编号随机分10张表(如：INSX_USER_CHG_NTFY_100_ERR，需要加上err_time和err_msg字段)';

/*Table structure for table `ins_user_ext` */

DROP TABLE IF EXISTS `ins_user_ext`;

CREATE TABLE `ins_user_ext` (
  `INS_USER_EXT_ID` bigint(14) NOT NULL COMMENT '用户扩展编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户ID',
  `ATTR_CODE` bigint(6) DEFAULT NULL COMMENT '用户扩展属性编码,目前主要有以下几种：\nIS_OUT_NET_USER-是否是网外用户\nIS_NP_USER-是否是携号转网用户\nIS_M2M_USER-是否是物联网用户',
  `ATTR_VALUE` varchar(500) DEFAULT NULL COMMENT '用户扩展属性值',
  `STATE` bigint(2) DEFAULT NULL COMMENT '1正常\n2 变更中\n3 暂停\n5 被动暂停\n6 连带暂停\n7 删除',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`INS_USER_EXT_ID`),
  KEY `IDX_INS_USEREXT` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户记录用户的相关扩展信息，如是否是物联网用户、是否是网外用户、是否是携号转网用户等；\n索引：USER_ID\n\n分表方式：按用户编号随机分10张表(北京:INS_USER_EXT_100开始,上海:INS_USER_EXT_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_USER_EXT_H_100_201110)';

/*Table structure for table `ins_user_ext_h` */

DROP TABLE IF EXISTS `ins_user_ext_h`;

CREATE TABLE `ins_user_ext_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '历史编号',
  `INS_USER_EXT_ID` bigint(14) DEFAULT NULL COMMENT '用户扩展编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户ID',
  `ATTR_CODE` bigint(6) DEFAULT NULL COMMENT '用户扩展属性编码,目前主要有以下几种：\nIS_OUT_NET_USER-是否是网外用户\nIS_NP_USER-是否是携号转网用户\nIS_M2M_USER-是否是物联网用户',
  `ATTR_VALUE` varchar(500) DEFAULT NULL COMMENT '用户扩展属性值',
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(如INS_USER_EXT_H_571_201110)';

/*Table structure for table `ins_user_h` */

DROP TABLE IF EXISTS `ins_user_h`;

CREATE TABLE `ins_user_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '历史编号',
  `USER_ID` bigint(14) DEFAULT NULL,
  `VIRTUAL_USER_ID` bigint(14) DEFAULT NULL,
  `PROD_CATALOG_ID` bigint(12) DEFAULT NULL COMMENT '产品分类编号，如ADSL、GSM、普通电话等产品分类的编号',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型(code_type=SO_CUST_TYPE)：\n1个人客户户\n2家庭客户\n3政企客户\n4VPMN客户',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `SUB_BILL_ID` varchar(50) DEFAULT NULL COMMENT '用于记录除计费号之外的标识号码。',
  `FIRST_USE_DATE` datetime DEFAULT NULL,
  `ACTIVE_DATE` datetime DEFAULT NULL COMMENT '激活时间',
  `PRE_DESTORY_TIME` datetime DEFAULT NULL COMMENT '预销时间',
  `LAST_TRANS_DATE` datetime DEFAULT NULL COMMENT '最后一次过户时间',
  `STATE` varchar(3) DEFAULT NULL COMMENT '用户状态(code_type=SO_USER_STATE)\n1-在用\n2-帐务预销\n3-营业预销\n4-预开户\n5-营业销户\n6-帐务销户\n7-套卡销户',
  `AREA_CODE` varchar(40) DEFAULT NULL,
  `COUNTRY_CODE` varchar(6) DEFAULT NULL,
  `CREDIT_LEVEL` bigint(2) DEFAULT NULL COMMENT '信用等级',
  `OWE_AMOUNT` bigint(12) DEFAULT NULL,
  `PASSWORD_TYPE` bigint(2) DEFAULT NULL COMMENT '0：系统自动生成；\n1：用户指定；',
  `PASSWORD` varchar(64) DEFAULT NULL,
  `USER_TYPE` bigint(2) DEFAULT NULL COMMENT '用户类别(code_type=SO_USER_TYPE)\n1普通用户\n2公免用户\n3测试用户\n4套卡用户\n5专用卡用户\n6虚拟用户\n8集团用户\n9个人IP直通车\n10企业IP直通车\n11手机阅读用户',
  `NOTICE_FLAG` bigint(2) DEFAULT NULL COMMENT '表示针对这个产品在欠费的时候是否可以进行催缴(code_type=SO_NOTICE_FLAG)\n0：可催可停；\n1：不可催，可停；\n2：可催，不可停；\n3：不可催，不可停；\n4：红名单；\n5：公务机；\n6：测试号；',
  `AREA_ID` bigint(12) DEFAULT NULL COMMENT '表明本实体所对应的产品实例发生在哪个营业区。',
  `ADDRESS_ID` varchar(200) DEFAULT NULL COMMENT '标准地址编号',
  `ADDRESS_DESC` varchar(1000) DEFAULT NULL COMMENT '详细地址',
  `EXCHANGE_ID` varchar(30) DEFAULT NULL COMMENT '局向编号',
  `IS_OUT_NET` bigint(2) DEFAULT NULL COMMENT '他网产品标志(code_type=SO_IS_OUT_NET)\n1 它网\n0 本网',
  `BAL_ORG_ID` bigint(12) DEFAULT NULL COMMENT '营业员可以选择入网时的结算组织。\n缺省为入网营业员所属的组织编号。\n但为了结算，可能系统会批量调整。',
  `CONT_ID` bigint(12) DEFAULT NULL,
  `RISK_FLAG` bigint(1) DEFAULT '0' COMMENT '1 风险控制用户 0 非风险控制用户',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  `PREPAY_VALIDITY_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(如:INS_USER_H_571_201110)';

/*Table structure for table `ins_user_os_state` */

DROP TABLE IF EXISTS `ins_user_os_state`;

CREATE TABLE `ins_user_os_state` (
  `USER_ID` bigint(14) NOT NULL,
  `OS_STATUS` varchar(64) NOT NULL COMMENT '用户停开机状态.按字符存储不同的停开机类型。每一位取值0表示开，1表示停；\n每一位的含义为：\n第一位         管理停开（营业停开）   \n第二位         营业停开（管理停开）   \n第三位         帐务停开               \n第四位         营业的连带停开         \n第五位         呼出限制               \n第六位         帐务的连带停开         \n第七位         管理的连带停开         \n第八位         呼出限制的连带停开     \n第九位         营业预销               \n第十位         帐务预销               \n第十一位       管理预销               \n第十二位       资金有效期停机 \n\n用户停开机时不修改程控功能表中的服务状态，对服务状态判断时要首先判断对应用户信息表中的停开机类型。\n\n个人IP直通车用户时，此字段的第一位值：\n0.激活状态；1.封锁状态',
  `OS_STATUS_PRE` varchar(64) DEFAULT NULL COMMENT '发送给计费的最近一次停机方式',
  `B_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次营业停机日期',
  `A_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次帐务停机日期',
  `M_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次管理停机日期',
  `R_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次连带停机日期',
  `O_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次呼出限制停日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '修改对象的失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) NOT NULL COMMENT '0系统计算\n1用户指定',
  `OS_REASON` bigint(3) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`EFFECTIVE_DATE`,`EXPIRE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：记录用户的各类停开机状态以及停开机时间。\n\n分表方式：按用户编号随机分10张表(北京:INS_USER_OS_STATE_100开始,上海:INS_USER_OS_STATE_210开始)\n历史表：按用户编号分片和年月进行分表(如INS_USER_OS_STATE_H_100_201110)';

/*Table structure for table `ins_user_os_state_h` */

DROP TABLE IF EXISTS `ins_user_os_state_h`;

CREATE TABLE `ins_user_os_state_h` (
  `H_ID` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '历史编号',
  `USER_ID` bigint(14) DEFAULT NULL,
  `OS_STATUS` varchar(64) DEFAULT NULL COMMENT '用户停开机状态.按字符存储不同的停开机类型。每一位取值0表示开，1表示停；\n每一位的含义为：\n第一位         管理停开（营业停开）   \n第二位         营业停开（管理停开）   \n第三位         帐务停开               \n第四位         营业的连带停开         \n第五位         呼出限制               \n第六位         帐务的连带停开         \n第七位         管理的连带停开         \n第八位         呼出限制的连带停开     \n第九位         营业预销               \n第十位         帐务预销               \n第十一位       管理预销               \n第十二位       资金有效期停机 \n\n用户停开机时不修改程控功能表中的服务状态，对服务状态判断时要首先判断对应用户信息表中的停开机类型。\n\n个人IP直通车用户时，此字段的第一位值：\n0.激活状态；1.封锁状态',
  `OS_STATUS_PRE` varchar(64) DEFAULT NULL COMMENT '发送给计费的最近一次停机方式',
  `B_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次营业停机日期',
  `A_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次帐务停机日期',
  `M_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次管理停机日期',
  `R_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次连带停机日期',
  `O_STOP_DATE` datetime DEFAULT NULL COMMENT '最后一次呼出限制停日期',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '修改对象的生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '修改对象的失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `OS_REASON` bigint(3) DEFAULT NULL,
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(如INS_USER_OS_STATE_H_571_201110)';

/*Table structure for table `insx_black_white_h` */

DROP TABLE IF EXISTS `insx_black_white_h`;

CREATE TABLE `insx_black_white_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `USER_ID` bigint(14) DEFAULT NULL,
  `BILL_ID` varchar(30) DEFAULT NULL,
  `MON_TYPE` varchar(4) DEFAULT NULL COMMENT '0：黑名单；1：白名单',
  `REASON_TYPE` varchar(4) DEFAULT NULL COMMENT '黑名单：\n1   欠费销户   \n2   恶意高额   \n3   挂失   \n4   人工添加   \n5   外来  \n白名单：\n0:红名单;\n1:公务机;\n2:测试号',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `NOTES` varchar(1024) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(如:INSX_BLACK_WHITE_H_571_201110)';

/*Table structure for table `insx_bundle_user_rel` */

DROP TABLE IF EXISTS `insx_bundle_user_rel`;

CREATE TABLE `insx_bundle_user_rel` (
  `SEQ_ID` bigint(14) NOT NULL COMMENT '序列',
  `ORD_BUNDLE_USER_REL_ID` bigint(14) NOT NULL COMMENT 'ORD_BUNDLE_USER_REL序列',
  `BUNDLE_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '主BOUNDLE的营销案OFFERORDID 只此BOUNDLE的批次号',
  `PRE_CUSTOMER_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '订单ID',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户ID',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '号码',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '营销案OFFER',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '客户ID',
  `BUNDLE_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '主BOUNDLE的营销案OFFER',
  `DISCOUNT_OFFER_ID` bigint(12) DEFAULT NULL COMMENT '实现优惠的ADD ON',
  `DISCOUNT_OFFER_INST_ID` bigint(12) DEFAULT NULL COMMENT 'BUNDLE ADD ON生成的OFFER_INST_ID',
  `RC_FEE` varchar(30) DEFAULT NULL COMMENT '月费',
  `DISCOUNT_TYPE` varchar(30) DEFAULT NULL COMMENT '折扣类型',
  `DISCOUNT_RC_FEE` varchar(30) DEFAULT NULL COMMENT '折扣后月费',
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL,
  `EXT1` varchar(200) DEFAULT NULL COMMENT '备用字段1',
  `EXT2` varchar(200) DEFAULT NULL COMMENT '备用字段2',
  `EXT3` varchar(200) DEFAULT NULL COMMENT '备用字段3',
  `EXT4` varchar(200) DEFAULT NULL COMMENT '备用字段4',
  PRIMARY KEY (`SEQ_ID`),
  KEY `IDX_INSX_BUNDLE_1` (`USER_ID`),
  KEY `IDX_INSX_BUNDLE_2` (`OFFER_INST_ID`),
  KEY `IDX_INSX_BUNDLE_3` (`BUNDLE_ORDER_ID`),
  KEY `IDX_INSX_BUNDLE_4` (`DISCOUNT_OFFER_INST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `insx_default_resetpwd_h` */

DROP TABLE IF EXISTS `insx_default_resetpwd_h`;

CREATE TABLE `insx_default_resetpwd_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `USER_ID` bigint(14) NOT NULL COMMENT '用户号',
  `BILL_ID` varchar(30) NOT NULL COMMENT '手机号码',
  `ASKTIME` datetime NOT NULL COMMENT '申请时间',
  `VER_CODE` varchar(6) NOT NULL COMMENT '验证码',
  `STATE` varchar(1) NOT NULL COMMENT '用户状态',
  `EFFECTIVE_DATE` datetime NOT NULL COMMENT '本次延时重置生效时间',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '本次延时密码重置失效时间',
  `ERR_TIMES` bigint(1) DEFAULT NULL COMMENT '错误次数',
  `CHANNEL_TYPE` varchar(2) NOT NULL COMMENT '渠道类型',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EXT_1` varchar(100) DEFAULT NULL,
  `EXT_2` varchar(100) DEFAULT NULL,
  `EXT_3` varchar(100) DEFAULT NULL,
  `SMS_FLG` varchar(1) NOT NULL COMMENT '下发短信标识',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市分表，如INSX_DEFAULT_RESETPWD_H_240';

/*Table structure for table `insx_destroy_accrel` */

DROP TABLE IF EXISTS `insx_destroy_accrel`;

CREATE TABLE `insx_destroy_accrel` (
  `ACCT_RELA_ID` bigint(14) DEFAULT NULL,
  `OFFER_INST_ID` bigint(14) DEFAULT NULL,
  `USER_ID` bigint(14) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `OLD_ACCT_ID` bigint(14) DEFAULT NULL COMMENT '异地支付前的帐户编号',
  `PAY_TYPE` bigint(2) DEFAULT NULL COMMENT '付费关系类型(code_type=SO_ACCTREL_TYPE)\n1：默认帐户\n2：代付关系',
  `TOGETHER_FLAG` bigint(2) DEFAULT NULL COMMENT '是否统一支付(code_type=SO_YES_NO)\n0:否1:是',
  `PAY_USER_ID` bigint(14) DEFAULT NULL COMMENT '统付用户编号',
  `ITEM_TYPE` bigint(2) DEFAULT NULL COMMENT '付费项目类型(code=SO_ACCTREL_ITEM_TYPE)\n1:普通科目\n2:科目集合\n3:产品',
  `ITEM_ID` bigint(12) DEFAULT NULL COMMENT '科目或科目集编号，或者产品编号',
  `PAY_MODE` bigint(2) DEFAULT NULL COMMENT '代付付费的方式(code_type=SO_ACCTREL_PAY_MODE)\n1. 全额\n2. 限额\n3. 比例',
  `PAY_VALUE` bigint(12) DEFAULT NULL,
  `OUT_ACCT_PRI` bigint(6) DEFAULT NULL COMMENT '用户多个账户付费时，指定这些账户代付的优先级。在代付关系设定时指定。',
  `ACCT_REGION_ID` varchar(6) DEFAULT NULL,
  `USER_REGION_ID` varchar(6) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `STATE` bigint(2) DEFAULT NULL COMMENT '状态(code_type=SO_INSTANCE_STATE)\n1正常\n2变更中\n3暂停中',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  KEY `IDX_INSX_DESTROY_ACCREL` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：销户后的用户账务关系\n按地市分表';

/*Table structure for table `insx_destroy_user` */

DROP TABLE IF EXISTS `insx_destroy_user`;

CREATE TABLE `insx_destroy_user` (
  `USER_ID` bigint(14) DEFAULT NULL,
  `PROD_CATALOG_ID` bigint(12) DEFAULT NULL COMMENT '产品分类编号，如ADSL、GSM、普通电话等产品分类的编号',
  `CUST_ID` bigint(14) DEFAULT NULL,
  `CUST_TYPE` char(1) DEFAULT NULL COMMENT '客户类型(code_type=SO_CUST_TYPE)：\n1个人客户户\n2家庭客户\n3政企客户\n4VPMN客户',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '存储定购计费号，或者附属号码的长号',
  `SUB_BILL_ID` varchar(50) DEFAULT NULL COMMENT '用于记录除计费号之外的标识号码。',
  `DESTROY_TIME` datetime DEFAULT NULL COMMENT '销户时间',
  `FIRST_USE_DATE` datetime DEFAULT NULL,
  `LAST_TRANS_DATE` datetime DEFAULT NULL COMMENT '最后一次过户时间',
  `BRAND_ID` bigint(12) DEFAULT NULL COMMENT '品牌编号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '基本策划编号',
  `STATE` varchar(3) DEFAULT NULL COMMENT '用户状态(code_type=SO_USER_STATE)\n1-在用\n2-帐务预销\n3-营业预销\n4-预开户\n5-营业销户\n6-帐务销户\n7-套卡销户',
  `AREA_CODE` varchar(40) DEFAULT NULL,
  `COUNTRY_CODE` varchar(6) DEFAULT NULL,
  `CREDIT_LEVEL` bigint(2) DEFAULT NULL COMMENT '信用等级',
  `OWE_AMOUNT` bigint(12) DEFAULT NULL,
  `PASSWORD_TYPE` bigint(2) DEFAULT NULL COMMENT '0：系统自动生成；\n1：用户指定；',
  `PASSWORD` varchar(64) DEFAULT NULL,
  `USER_TYPE` bigint(2) DEFAULT NULL COMMENT '用户类别(code_type=SO_USER_TYPE)\n1普通用户\n2公免用户\n3测试用户\n4套卡用户',
  `NOTICE_FLAG` bigint(2) DEFAULT NULL COMMENT '表示针对这个产品在欠费的时候是否可以进行催缴(code_type=SO_NOTICE_FLAG)\n0：可催可停；\n1：不可催，可停；\n2：可催，不可停；\n3：不可催，不可停；\n4：红名单；\n5：公务机；\n6：测试号；',
  `AREA_ID` bigint(12) DEFAULT NULL COMMENT '表明本实体所对应的产品实例发生在哪个营业区。',
  `ADDRESS_ID` bigint(12) DEFAULT NULL COMMENT '标准地址编号',
  `ADDRESS_DESC` varchar(1000) DEFAULT NULL COMMENT '详细地址',
  `EXCHANGE_ID` varchar(30) DEFAULT NULL COMMENT '局向编号',
  `IS_OUT_NET` bigint(2) DEFAULT NULL COMMENT '他网产品标志(code_type=SO_IS_OUT_NET)\n1 它网\n0 本网',
  `BAL_ORG_ID` bigint(12) DEFAULT NULL COMMENT '营业员可以选择入网时的结算组织。\n缺省为入网营业员所属的组织编号。\n但为了结算，可能系统会批量调整。',
  `CONT_ID` bigint(12) DEFAULT NULL,
  `RISK_FLAG` bigint(1) DEFAULT '0' COMMENT '1 风险控制用户 0 非风险控制用户',
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `EFFECTIVE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `EXPIRE_DATE_TYPE` bigint(6) DEFAULT NULL COMMENT '0系统计算\n1用户指定',
  `REMARKS` varchar(255) DEFAULT NULL,
  KEY `IDX_INSX_DESTROY_USER` (`BILL_ID`),
  KEY `IDX_INSX_DESTROY_USER2` (`CUST_ID`),
  KEY `IDX_INSX_DESTROY_USER3` (`DONE_DATE`),
  KEY `IDX_INSX_DESTROY_USER4` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：销户用户信息表\n分表方式：按地市进行分表(如:INSX_DESTROY_USER_100)';

/*Table structure for table `insx_dsmp_unclr` */

DROP TABLE IF EXISTS `insx_dsmp_unclr`;

CREATE TABLE `insx_dsmp_unclr` (
  `UNCLEAR_ID` bigint(12) NOT NULL COMMENT '编号',
  `BILL_ID` varchar(15) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL COMMENT 'U-有用状态 E-废弃',
  `DONE_CODE` bigint(14) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UNCLEAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：DSMP用户的免清理维护\n分表方式：按用户编号随机分10张表（如北京：INSX_DSMP_UNCLR_100，上海：INSX_DSMP_UNCLR_210）';

/*Table structure for table `insx_eg_winner_info` */

DROP TABLE IF EXISTS `insx_eg_winner_info`;

CREATE TABLE `insx_eg_winner_info` (
  `ACTIVITY_MARK` varchar(64) DEFAULT NULL COMMENT '活动标记',
  `BILL_ID` varchar(30) NOT NULL COMMENT '计费号码',
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL COMMENT '渠道编码',
  `LUCKY_AREA` varchar(6) DEFAULT NULL COMMENT '砸蛋区',
  `PRICE` bigint(16) DEFAULT NULL COMMENT '奖品',
  `LUCKY_TIME` datetime NOT NULL COMMENT '中奖日期',
  `PRICE_TYPE` bigint(16) DEFAULT NULL COMMENT '奖品类型',
  `EXCHANGE_FLAG` char(1) NOT NULL COMMENT '是否兑奖标识',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户标识',
  `VALID_FLAG` char(1) NOT NULL COMMENT '是否有效标识',
  `VALID_EXCHARGE_DATE` datetime NOT NULL COMMENT '有效兑奖日期',
  `EXCHARGE_DATE` datetime DEFAULT NULL COMMENT '兑奖日期',
  `CHARGE_DATE` datetime DEFAULT NULL COMMENT '充值时间',
  `EXCHARGE_OP_ID` bigint(12) DEFAULT NULL COMMENT '兑奖操作员编号',
  `REGION_ID` varchar(6) NOT NULL COMMENT '用户归属地州',
  `ACCT_ID` bigint(14) DEFAULT NULL COMMENT '账户标识',
  `CUSTOMERR_ORDER_ID` bigint(12) DEFAULT NULL COMMENT '订单流水',
  `REAL_EXCHARGE_PRICE` bigint(16) DEFAULT NULL COMMENT '实际兑换产品',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员工号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `VALID_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作编码',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `EXP1` varchar(255) DEFAULT NULL COMMENT '扩展字段1',
  `EXP2` varchar(255) DEFAULT NULL COMMENT '扩展字段2',
  `EXP3` varchar(255) DEFAULT NULL COMMENT '扩展字段3',
  `EXP4` varchar(255) DEFAULT NULL COMMENT '扩展字段4',
  `EXP5` varchar(255) DEFAULT NULL COMMENT '扩展字段5',
  `EXP6` varchar(255) DEFAULT NULL COMMENT '扩展字段6',
  `EXP7` varchar(255) DEFAULT NULL COMMENT '扩展字段7',
  `EXP8` varchar(255) DEFAULT NULL COMMENT '扩展字段8',
  `EXP9` varchar(255) DEFAULT NULL COMMENT '扩展字段9',
  `EXP10` varchar(255) DEFAULT NULL COMMENT '扩展字段10',
  `EXP11` varchar(255) DEFAULT NULL COMMENT '扩展字段11',
  `EXP12` varchar(255) NOT NULL COMMENT '扩展字段12',
  PRIMARY KEY (`BILL_ID`,`LUCKY_TIME`,`EXP12`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='砸蛋活动资料表\n\n分表方式：按地市分表';

/*Table structure for table `insx_no_destroy_user` */

DROP TABLE IF EXISTS `insx_no_destroy_user`;

CREATE TABLE `insx_no_destroy_user` (
  `BILL_ID` varchar(30) NOT NULL COMMENT '计费号码',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '归属地州',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员工号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `VALID_DATE` datetime NOT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DONE_CODE` datetime DEFAULT NULL COMMENT '操作编码',
  PRIMARY KEY (`BILL_ID`,`VALID_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地州分表\n\n管理人员每次人工导入数据到表，欠费销户进程不考虑在该表中的用户不进行销户\n对应老系统ZG.NO_DEL_PHONE';

/*Table structure for table `insx_no_stop_user` */

DROP TABLE IF EXISTS `insx_no_stop_user`;

CREATE TABLE `insx_no_stop_user` (
  `USER_ID` bigint(14) NOT NULL COMMENT '用户标识',
  `NOTICE_FLAG` bigint(2) NOT NULL COMMENT '催停标识',
  `REGION_ID` varchar(6) NOT NULL COMMENT '归属地州',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员工号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织',
  `CREATE_DATE` datetime NOT NULL COMMENT '创建时间',
  `VALID_DATE` datetime NOT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '失效时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DONE_CODE` datetime DEFAULT NULL COMMENT '操作编码',
  PRIMARY KEY (`USER_ID`,`NOTICE_FLAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地州分表';

/*Table structure for table `insx_off_encard_rel` */

DROP TABLE IF EXISTS `insx_off_encard_rel`;

CREATE TABLE `insx_off_encard_rel` (
  `INS_OFFER_ID` bigint(14) DEFAULT NULL COMMENT '该策划的实例ID',
  `CARD_NO` varchar(32) DEFAULT NULL COMMENT '实体卡的卡号',
  `USER_ID` bigint(12) DEFAULT NULL COMMENT '该实体卡使用者ID',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '对于该卡用户已经订购的offerId（与SP_CODE、OPER_CODE匹配，同产品的配置一致）。',
  `SP_CODE` varchar(20) DEFAULT NULL COMMENT '该offerId对应于实体卡中的SP_CODE',
  `OPER_CODE` varchar(20) DEFAULT NULL COMMENT '该offerId对应的OPER_CODE',
  `CLASS_ID` varchar(2) DEFAULT NULL COMMENT '该sp在实体卡分类的类别id',
  `PKG_ID` varchar(32) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  KEY `IDX_INSX_OFF_ENCARD_REL` (`CARD_NO`),
  KEY `IDX_INSX_OFF_ENCARD_REL2` (`INS_OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户已订购的实体卡业务信息\n主要是为了方便订购的时候对业务限制和已订购记录条数的统计，方便退订的时候快速查找由实体卡渠道来源且是其中指定某卡订购的业务。\n分表方式：按用户编号随机分10张表(如，北京：INSX_OFF_ENCARD_REL_100，上海：INSX_OFF_ENCARD_REL_210)\n历史表：按用户编号随机分10张表(如：INSX_OFF_ENCARD_REL_H_100，需要增加H_ID字段)';

/*Table structure for table `insx_off_encard_rel_h` */

DROP TABLE IF EXISTS `insx_off_encard_rel_h`;

CREATE TABLE `insx_off_encard_rel_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `INS_OFFER_ID` bigint(14) DEFAULT NULL COMMENT '该策划的实例ID',
  `CARD_NO` varchar(32) DEFAULT NULL COMMENT '实体卡的卡号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '该实体卡使用者ID',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '对于该卡用户已经订购的offerId（与SP_CODE、OPER_CODE匹配，同产品的配置一致）。',
  `SP_CODE` varchar(20) DEFAULT NULL COMMENT '该offerId对应于实体卡中的SP_CODE',
  `OPER_CODE` varchar(20) DEFAULT NULL COMMENT '该offerId对应的OPER_CODE',
  `CLASS_ID` varchar(2) DEFAULT NULL COMMENT '该sp在实体卡分类的类别id',
  `PKG_ID` varchar(32) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市进行分表(如：INSX_OFF_ENCARD_REL_H_571)';

/*Table structure for table `insx_preopen_user` */

DROP TABLE IF EXISTS `insx_preopen_user`;

CREATE TABLE `insx_preopen_user` (
  `USER_ID` bigint(14) NOT NULL COMMENT '用户编号',
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL COMMENT '开户渠道类型',
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL COMMENT '开户所在组织',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DEAL_TIMES` bigint(2) DEFAULT NULL COMMENT '延时次数',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  PRIMARY KEY (`USER_ID`),
  KEY `IDX_INSX_PREOPEN_USER` (`CREATE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用于记录预开户用户记录表，为了方便套卡用户的强制激活和到期的自动延长处理而特别记录的。\n分表方式：按用户编号随机分10张表(如：INSX_PREOPEN_USER_100)\n历史表：按用户分片和年月进行分表(INSX_PREOPEN_USER_H_100_201110)，历史表要加date类型的tf_date字段。\n错误表：按用户编号随机分10张表(INSX_PREOPEN_USER_100_ERR)';

/*Table structure for table `insx_pwd_chk_log` */

DROP TABLE IF EXISTS `insx_pwd_chk_log`;

CREATE TABLE `insx_pwd_chk_log` (
  `LOG_ID` bigint(14) NOT NULL COMMENT '用户ID',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '计费号码',
  `FIRST_CHK_ERR_DATE` datetime DEFAULT NULL COMMENT '当天首次验证错误时间',
  `LAST_ERROR_TIME` datetime DEFAULT NULL,
  `ERROR_TIME` bigint(2) DEFAULT NULL,
  `LOCK_TIME` datetime DEFAULT NULL,
  `CHANNEL_TYPE` bigint(2) DEFAULT NULL COMMENT '操作渠道',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`),
  KEY `IDX_INSX_PWD_CHK_LOG` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：记录用户密码状态情况。\n分表方式：按用户编号随机分10张表（如，北京：INSX_PWD_CHK_LOG_100，上海：INSX_PWD_CHK_LOG_210）';

/*Table structure for table `insx_qqw_auto_upgrade_h` */

DROP TABLE IF EXISTS `insx_qqw_auto_upgrade_h`;

CREATE TABLE `insx_qqw_auto_upgrade_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '户主用户编号',
  `BILL_ID` varchar(30) DEFAULT NULL COMMENT '户主计费号',
  `OFFER_INST_ID` bigint(14) DEFAULT NULL COMMENT '亲情网策划实例编号',
  `UP_GRADE_CNT` bigint(2) DEFAULT NULL COMMENT '升级次数',
  `USER_CREATE_DATE` datetime DEFAULT NULL COMMENT '用户创建时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '操作时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '所在地区'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：亲情网自动升级沉淀表\n分表方式：按地区进行分表';

/*Table structure for table `insx_quit_reason_log` */

DROP TABLE IF EXISTS `insx_quit_reason_log`;

CREATE TABLE `insx_quit_reason_log` (
  `LOG_ID` bigint(14) NOT NULL COMMENT '离网挽留记录ID',
  `BILL_ID` varchar(30) NOT NULL COMMENT '计费号码',
  `USER_ID` bigint(14) NOT NULL COMMENT '用户编号',
  `CUST_ID` bigint(14) DEFAULT NULL COMMENT '客户编号',
  `BRAND_ID` bigint(14) DEFAULT NULL COMMENT '用户品牌',
  `RESTRAIN_FLAG` bigint(1) DEFAULT NULL COMMENT '挽留结果标识',
  `NEW_PHONE` varchar(30) DEFAULT NULL COMMENT '用户新号码',
  `AVERAGE_CONSUMPTION` varchar(30) DEFAULT NULL COMMENT '前三月平均消费',
  `QUIT_FORWARD` bigint(1) DEFAULT NULL COMMENT '离网去向',
  `FORWARD_DETAIL` varchar(30) DEFAULT NULL COMMENT '离网详细去向',
  `QUIT_REASON` bigint(2) NOT NULL COMMENT '离网原因',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地市编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员所属组织编号',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '离网备注',
  PRIMARY KEY (`LOG_ID`),
  KEY `IDX_INSX_QUIT_REASON_LOG_2` (`BILL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：记录用户离网信息。\n涉及功能：预销户功能需要登记离网信息\n分表方式：根据地市分表（如insx_quit_reason_log_571）';

/*Table structure for table `insx_sms_filter` */

DROP TABLE IF EXISTS `insx_sms_filter`;

CREATE TABLE `insx_sms_filter` (
  `FILETER_ID` bigint(12) NOT NULL COMMENT '过滤信息编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '策划编号',
  `PRODUCT_ID` bigint(12) DEFAULT NULL COMMENT '产品编号',
  `CREATE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作标识号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '客户生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '地区编号',
  `REMARKS` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FILETER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户短信发送过滤表\n\n分表方式：按用户编号随机分10张表(如，北京：INSX_SMS_FILTER_100，上海：INSX_SMS_FILTER_210)';

/*Table structure for table `insx_sms_no_watch_h` */

DROP TABLE IF EXISTS `insx_sms_no_watch_h`;

CREATE TABLE `insx_sms_no_watch_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `FILTER_ID` bigint(12) DEFAULT NULL,
  `ID_TYPE` bigint(2) DEFAULT NULL COMMENT '0:ID代表手机号码,\n1:ID代表USER_ID，\n2:ID代表PLAN_ID，\n3:ID代表PROMOTION_ID',
  `REGION_ID` varchar(6) DEFAULT NULL,
  `WHITE_TYPE` bigint(4) DEFAULT NULL COMMENT '0 VIP客户\n1 ABCD类客户\n2 近3个月误停号码\n3 分公司要求\n4 测试号码\n5 其他',
  `OP_TYPE` bigint(2) DEFAULT NULL COMMENT '1:增加\n2:修改\n3:删除',
  `OP_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '操作编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '客户失效日期',
  `NOTES` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市进行分表(如:INSX_SMS_NO_WATCH_H_571_201110)';

/*Table structure for table `insx_temporary_open` */

DROP TABLE IF EXISTS `insx_temporary_open`;

CREATE TABLE `insx_temporary_open` (
  `USER_ID` bigint(14) NOT NULL COMMENT '用户ID',
  `ACCT_ID` bigint(14) NOT NULL COMMENT '账户标识',
  `OWEFEE_MAX` bigint(12) DEFAULT NULL COMMENT '最大欠费额度',
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '操作类型：\n0-临时开机：是为了让操作员应付异常情况准备的，限24小时；\n3-担保开机：是8级以上信誉度用户的一种特权服务，担保开机的时间、次数随信誉度等级提高而提高；',
  `WARRANT_USER_ID` bigint(14) DEFAULT NULL COMMENT '担保用户编号',
  `REGION_ID` varchar(6) NOT NULL COMMENT '地市编号',
  `COUNTY_ID` bigint(8) DEFAULT NULL COMMENT '区县编号',
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` bigint(14) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `VALID_DATE` datetime NOT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime NOT NULL COMMENT '失效时间',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员ID',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '组织编号',
  `REMARKS` varchar(256) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`USER_ID`,`VALID_DATE`,`EXPIRE_DATE`,`REGION_ID`,`OPER_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明:用于记录用户临时开机的时间段，此时间段内，用户免催免停；\n分表方式：按地市分表例如(INSX_TEMPORARY_OPEN_571)\n\n涉及功能：营业临时开机功能，临时开机功能生成';

/*Table structure for table `insx_temporary_open_h` */

DROP TABLE IF EXISTS `insx_temporary_open_h`;

CREATE TABLE `insx_temporary_open_h` (
  `USER_ID` bigint(14) NOT NULL,
  `ACCT_ID` bigint(14) NOT NULL COMMENT '账户标识',
  `OWEFEE_MAX` bigint(12) DEFAULT NULL COMMENT '最大欠费额度',
  `VALID_DATE` datetime NOT NULL,
  `EXPIRE_DATE` datetime NOT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `COUNTY_ID` bigint(8) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `OPER_TYPE` bigint(4) NOT NULL COMMENT '操作类型：\n0-临时开机：是为了让操作员应付异常情况准备的，限24小时；\n3-担保开机：是8级以上信誉度用户的一种特权服务，担保开机的时间、次数随信誉度等级提高而提高；',
  `WARRANT_USER_ID` bigint(14) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`VALID_DATE`,`EXPIRE_DATE`,`REGION_ID`,`OPER_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明:用于记录用户临时开机的时间段，此时间段内，用户免催免停；\n分表方式：按地市分表例如(INSX_TEMPORARY_OPEN_H_240)\n\n涉及功能：营业临时开机功能，临时开机功能生成';

/*Table structure for table `insx_user_bak_sim` */

DROP TABLE IF EXISTS `insx_user_bak_sim`;

CREATE TABLE `insx_user_bak_sim` (
  `BAK_SIM_INFO_ID` bigint(12) NOT NULL COMMENT '备卡信息编号',
  `USER_ID` bigint(14) DEFAULT NULL,
  `SIM_CODE` bigint(12) DEFAULT NULL,
  `SIM_GOODS_TYPE` varchar(50) DEFAULT NULL COMMENT 'SIM卡实物类型',
  `ICC_ID` varchar(25) DEFAULT NULL,
  `IMSI_ID` varchar(20) DEFAULT NULL,
  `FREE_USE_TIME` bigint(4) DEFAULT NULL,
  `FREE_USE_DATE` datetime DEFAULT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '备卡申请和备卡补卡时会修改该字段\n备卡激活不修改',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `STATUS` bigint(2) DEFAULT NULL COMMENT '1：初始的可用状态\n4：备卡过期自动失效的状态\n5：备卡丢失后强制删除的状态（备卡删除和备卡补卡中使用）',
  `ACTIVE_TIME` bigint(4) DEFAULT NULL,
  `ACTIVE_DATE` datetime DEFAULT NULL,
  `NOTES` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`BAK_SIM_INFO_ID`),
  KEY `IDX_INSX_USER_BAK_SIM` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：用户备卡信息表\n分表方式：按用户编号随机分10张表(如，北京：INSX_USER_BAK_SIM_100，上海：INSX_USER_BAK_SIM_210)\n索引：暂无\n历史表：按用户编号分片和年月进行分表(如:INSX_USER_BAK_SIM_H_100_201110)';

/*Table structure for table `insx_user_bak_sim_h` */

DROP TABLE IF EXISTS `insx_user_bak_sim_h`;

CREATE TABLE `insx_user_bak_sim_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `BAK_SIM_INFO_ID` bigint(12) DEFAULT NULL COMMENT '备卡信息编号',
  `USER_ID` bigint(14) DEFAULT NULL,
  `SIM_CODE` bigint(6) DEFAULT NULL,
  `SIM_GOODS_TYPE` varchar(50) DEFAULT NULL COMMENT 'SIM卡实物类型',
  `ICC_ID` varchar(25) DEFAULT NULL,
  `IMSI_ID` varchar(20) DEFAULT NULL,
  `FREE_USE_TIME` bigint(4) DEFAULT NULL,
  `FREE_USE_DATE` datetime DEFAULT NULL,
  `BUSINESS_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '备卡申请和备卡补卡时会修改该字段\n备卡激活不修改',
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `STATUS` bigint(2) DEFAULT NULL COMMENT '1：初始的可用状态\n4：备卡过期自动失效的状态\n5：备卡丢失后强制删除的状态（备卡删除和备卡补卡中使用）',
  `ACTIVE_TIME` bigint(4) DEFAULT NULL,
  `ACTIVE_DATE` datetime DEFAULT NULL,
  `NOTES` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(如:INSX_USER_BAK_SIM_H_571_201110)';

/*Table structure for table `insx_user_commend_h` */

DROP TABLE IF EXISTS `insx_user_commend_h`;

CREATE TABLE `insx_user_commend_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `BILL_ID` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `OFFER_ID` bigint(12) DEFAULT NULL COMMENT '营销活动编号',
  `RECOMMEND` varchar(2048) DEFAULT NULL COMMENT '营销推荐语',
  `RESULT_TAG` bigint(2) DEFAULT NULL COMMENT '推荐结果标记\n1--成功 \n2--拒绝\n3--考虑中',
  `CONSIDER_NUM` bigint(2) DEFAULT NULL COMMENT '考虑次数',
  `REGION_ID` varchar(6) DEFAULT NULL COMMENT '归属地市',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '业务记录编号',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员组织编号',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日期',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效日期',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市和年月进行分表(INSX_USER_COMMEND_H_571_201110)';

/*Table structure for table `insx_user_mon_dtl` */

DROP TABLE IF EXISTS `insx_user_mon_dtl`;

CREATE TABLE `insx_user_mon_dtl` (
  `USER_ID` bigint(14) NOT NULL COMMENT '用户编号',
  `MONITOR_SERV` bigint(14) NOT NULL COMMENT '风险控制的服务',
  `MONITOR_BUSI` bigint(14) NOT NULL COMMENT '引起原因服务',
  `ORDER_ID` bigint(12) DEFAULT NULL COMMENT '受理工单号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员所属组织编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `REGION_CODE` varchar(6) DEFAULT NULL COMMENT '地市编码',
  PRIMARY KEY (`USER_ID`,`MONITOR_SERV`,`MONITOR_BUSI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市分表 如：INSX_USER_MON_DTL_240';

/*Table structure for table `insx_user_mon_dtl_h` */

DROP TABLE IF EXISTS `insx_user_mon_dtl_h`;

CREATE TABLE `insx_user_mon_dtl_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `MONITOR_SERV` bigint(14) DEFAULT NULL COMMENT '风险控制的服务',
  `MONITOR_BUSI` bigint(14) DEFAULT NULL COMMENT '引起原因服务',
  `ORDER_ID` bigint(12) DEFAULT NULL COMMENT '受理工单号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员所属组织编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  `REGION_CODE` varchar(6) DEFAULT NULL COMMENT '地市编码',
  KEY `IDX_INSXUSR_MONDTL_H_1` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分表方式：按地市年月分表\n如INSX_USER_MON_DTL_H_240_201201';

/*Table structure for table `insx_user_monitor` */

DROP TABLE IF EXISTS `insx_user_monitor`;

CREATE TABLE `insx_user_monitor` (
  `USER_ID` bigint(14) NOT NULL COMMENT '用户编号',
  `MONITOR_FLAG` varchar(32) DEFAULT NULL COMMENT '受监控的服务',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态',
  `STATE_DATE` datetime DEFAULT NULL COMMENT '状态变更时间',
  `ORDER_ID` bigint(12) DEFAULT NULL COMMENT '受理工单号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员所属组织编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `REGION_CODE` varchar(6) DEFAULT NULL COMMENT '地市编码',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：欠费风险控制迁入迁出用。\n分表方式：根据地市分表（如INSX_USER_MONITOR_240）';

/*Table structure for table `insx_user_monitor_h` */

DROP TABLE IF EXISTS `insx_user_monitor_h`;

CREATE TABLE `insx_user_monitor_h` (
  `H_ID` bigint(14) DEFAULT NULL COMMENT '历史编号',
  `USER_ID` bigint(14) DEFAULT NULL COMMENT '用户编号',
  `MONITOR_FLAG` varchar(32) DEFAULT NULL COMMENT '受监控的服务',
  `STATE` varchar(3) DEFAULT NULL COMMENT '状态',
  `STATE_DATE` datetime DEFAULT NULL COMMENT '状态变更时间',
  `ORDER_ID` bigint(12) DEFAULT NULL COMMENT '受理工单号',
  `OP_ID` bigint(12) DEFAULT NULL COMMENT '操作员编号',
  `ORG_ID` bigint(12) DEFAULT NULL COMMENT '操作员所属组织编号',
  `DONE_CODE` bigint(12) DEFAULT NULL COMMENT '当前业务受理编号',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `DONE_DATE` datetime DEFAULT NULL COMMENT '当前业务受理日期',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效时间',
  `EXPIRE_DATE` datetime DEFAULT NULL COMMENT '失效时间',
  `REGION_CODE` varchar(6) DEFAULT NULL COMMENT '地市编码',
  `REMARKS` varchar(255) DEFAULT NULL COMMENT '备注',
  KEY `IDX_INSXUSR_MNITOR_H_1` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：欠费风险控制迁入迁出用。\n分表方式：根据地市分表（如INSX_USER_MONITOR_H_240_201201）';

/*Table structure for table `insx_user_orgchg_err` */

DROP TABLE IF EXISTS `insx_user_orgchg_err`;

CREATE TABLE `insx_user_orgchg_err` (
  `USER_ID` bigint(14) NOT NULL,
  `BILL_ID` varchar(30) NOT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `COUNTY_CODE` varchar(6) NOT NULL COMMENT '需要修改项',
  `ORG_ID` bigint(12) NOT NULL COMMENT '需要修改项',
  `CREATE_DATE` datetime NOT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `STATUS` varchar(3) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：记录处理修改用户区县编码和归属营业厅报错的记录\n\n涉及功能：营业移入移出\n\n分表方式：根据地市分表（I_USER_ORGCHG_240_ERR）';

/*Table structure for table `insx_user_orgchg_h` */

DROP TABLE IF EXISTS `insx_user_orgchg_h`;

CREATE TABLE `insx_user_orgchg_h` (
  `USER_ID` bigint(14) NOT NULL,
  `BILL_ID` varchar(30) NOT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `COUNTY_CODE` varchar(6) NOT NULL COMMENT '需要修改项',
  `ORG_ID` bigint(12) NOT NULL COMMENT '需要修改项',
  `CREATE_DATE` datetime NOT NULL,
  `DONE_CODE` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `STATUS` varchar(3) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说明：记录需要修改区县编码和归属营业厅的用户\n\n涉及功能：营业移入移出\n\n分表方式：根据地市和年月分表（INSX_USER_ORGCHG_H_240_201212）';

/*Table structure for table `insx_user_prepay_preactive` */

DROP TABLE IF EXISTS `insx_user_prepay_preactive`;

CREATE TABLE `insx_user_prepay_preactive` (
  `ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `BILL_ID` varchar(30) NOT NULL,
  `NC_OFFER_ID` bigint(14) NOT NULL,
  `NC_OFFER_INST_ID` bigint(14) NOT NULL,
  `DUMMY_CUST_ID` bigint(14) NOT NULL,
  `DUMMY_ACCT_ID` bigint(14) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `CREATE_OP_ID` bigint(12) NOT NULL,
  `PAY_TYPE` bigint(2) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `VERFICATION_STATE` bigint(2) NOT NULL,
  `STATE` bigint(2) NOT NULL,
  `VERFICATION_CODE` varchar(30) DEFAULT NULL,
  `REGION_ID` varchar(10) NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `REMARK` varchar(400) DEFAULT NULL,
  `EXT_1` varchar(200) DEFAULT NULL,
  `EXT_2` varchar(200) DEFAULT NULL,
  `EXT_3` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_INSX_USER_PREPAY_PREACTIVE_1` (`USER_ID`),
  KEY `IDX_INSX_USER_PREPAY_PREACTIVE_2` (`USER_ID`,`STATE`),
  KEY `IDX_INSX_USER_PREPAY_PREACTIVE_4` (`CUST_ID`,`STATE`),
  KEY `IDX_INSX_USER_PREPAY_PREACTIVE_3` (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `insx_user_prepay_preactive_h` */

DROP TABLE IF EXISTS `insx_user_prepay_preactive_h`;

CREATE TABLE `insx_user_prepay_preactive_h` (
  `ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `BILL_ID` varchar(30) NOT NULL,
  `NC_OFFER_ID` bigint(14) NOT NULL,
  `NC_OFFER_INST_ID` bigint(14) NOT NULL,
  `DUMMY_CUST_ID` bigint(14) NOT NULL,
  `DUMMY_ACCT_ID` bigint(14) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `CREATE_OP_ID` bigint(12) NOT NULL,
  `PAY_TYPE` bigint(2) NOT NULL,
  `CUST_ID` bigint(14) DEFAULT NULL,
  `ACCT_ID` bigint(14) DEFAULT NULL,
  `VERFICATION_STATE` bigint(2) NOT NULL,
  `STATE` bigint(2) NOT NULL,
  `VERFICATION_CODE` varchar(30) DEFAULT NULL,
  `REGION_ID` varchar(10) NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `REMARK` varchar(400) DEFAULT NULL,
  `EXT_1` varchar(200) DEFAULT NULL,
  `EXT_2` varchar(200) DEFAULT NULL,
  `EXT_3` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_INSX_USER_PREPAY_PREACTIVE_2100_1` (`USER_ID`),
  KEY `IDX_INSX_USER_PREPAY_PREACTIVE_2100_2` (`USER_ID`,`STATE`),
  KEY `IDX_INSX_USER_PREPAY_PREACTIVE_2100_4` (`CUST_ID`,`STATE`),
  KEY `IDX_INSX_USER_PREPAY_PREACTIVE_2100_3` (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `insx_user_sim_no_log` */

DROP TABLE IF EXISTS `insx_user_sim_no_log`;

CREATE TABLE `insx_user_sim_no_log` (
  `ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `BILL_ID` varchar(30) NOT NULL,
  `OLD_BILL_ID` varchar(30) DEFAULT NULL,
  `ICC_ID` varchar(35) DEFAULT NULL,
  `OLD_ICC_ID` varchar(35) DEFAULT NULL,
  `DONE_DATE` datetime NOT NULL,
  `CUSTOMER_ORDER_ID` varchar(50) NOT NULL,
  `OP_ID` bigint(14) NOT NULL,
  `STATE` varchar(3) NOT NULL,
  `REGION_ID` varchar(6) NOT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `BUSINESS_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_INSX_USER_SIM_NO_LOG_01` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `insx_user_trans_log` */

DROP TABLE IF EXISTS `insx_user_trans_log`;

CREATE TABLE `insx_user_trans_log` (
  `ID` bigint(14) NOT NULL,
  `USER_ID` bigint(14) NOT NULL,
  `CUST_ID` bigint(14) NOT NULL,
  `OLD_CUST_ID` bigint(14) NOT NULL,
  `ACCT_ID` bigint(14) NOT NULL,
  `OLD_ACCT_ID` bigint(14) NOT NULL,
  `DONE_DATE` datetime NOT NULL,
  `OP_ID` bigint(14) NOT NULL,
  `STATE` varchar(3) NOT NULL,
  `CUSTOMER_ORDER_ID` varchar(55) NOT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `REGION_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_INSX_USER_TRANS_LOG` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `lbo_order_info` */

DROP TABLE IF EXISTS `lbo_order_info`;

CREATE TABLE `lbo_order_info` (
  `LBO_ORDERINFO_ID` bigint(20) NOT NULL,
  `BATCH_NO` varchar(20) DEFAULT NULL,
  `USER_ID` varchar(14) DEFAULT NULL,
  `FILE_NAME` varchar(20) DEFAULT NULL,
  `IS_SYNC` bigint(1) DEFAULT NULL COMMENT '0δͬ����1��ͬ��',
  `START_CODE` varchar(6) DEFAULT NULL COMMENT '��ʼCODE,S��ʾ������U��ʾ����',
  `VALIDITY_PERIOD_DAYS` bigint(10) DEFAULT NULL,
  `START_DATE` varchar(20) DEFAULT NULL,
  `START_DATE_DATE` datetime DEFAULT NULL,
  `LBO_CUSTOMER_MSISDN` varchar(50) DEFAULT NULL,
  `LBO_CUSTOMER_IMSI` varchar(50) DEFAULT NULL,
  `VPMN_ID` varchar(255) DEFAULT NULL,
  `DSP_ID` varchar(255) DEFAULT NULL,
  `REGION_ID` varchar(6) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`LBO_ORDERINFO_ID`)
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
