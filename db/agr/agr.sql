
CREATE DATABASE /*!32312 IF NOT EXISTS*/`agr` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `agr`;

/*Table structure for table `agr_action_rla` */

DROP TABLE IF EXISTS `agr_action_rla`;

CREATE TABLE `agr_action_rla` (
  `AGR_ACTION_RLA_ID` bigint(12) NOT NULL,
  `AGREEMENT_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `ACTION_CODE` varchar(32) DEFAULT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`AGR_ACTION_RLA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同模版和交互行为的配置关系.';

/*Table structure for table `agr_agr_ana_w` */

DROP TABLE IF EXISTS `agr_agr_ana_w`;

CREATE TABLE `agr_agr_ana_w` (
  `ANA_ID` bigint(15) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `Agreement_Code` varchar(128) DEFAULT NULL,
  `CUSTOMER_ID` bigint(15) DEFAULT NULL COMMENT '主要是指订购类合同的owner 一般指向客户',
  `RULE_TYPE` varchar(3) DEFAULT NULL COMMENT '用来区分哪一类的待统计合同',
  `MONITOR_RULE_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `COMMENTS` varchar(1024) DEFAULT NULL,
  `AGR_RULE_RELA_ID` bigint(15) DEFAULT NULL,
  `AGR_VERSION_ID` bigint(15) DEFAULT NULL,
  PRIMARY KEY (`ANA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='AGR_AGR_ANANALYSIS_W\n待统计合同表\n违约检查和罚金计算时，首先需要判断出那些合同是需要进行检查计算的。\n符合条件的合同存在该表中';

/*Table structure for table `agr_agr_party_rel` */

DROP TABLE IF EXISTS `agr_agr_party_rel`;

CREATE TABLE `agr_agr_party_rel` (
  `AGR_CONTRACT_PARTY_REL_ID` bigint(12) NOT NULL,
  `ENTITY_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `PARTY_ROLE` varchar(3) DEFAULT NULL COMMENT '比如：\n1 Owner\n3 Beneficiaries\n5 Agent\n7 Signtory\n9 Operator',
  `AGR_CREATION_TIME` datetime DEFAULT NULL COMMENT '记录合同创建时间，用于分表以保证分表月份和合同分表保持一致',
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  `TAX_ID` varchar(128) DEFAULT NULL,
  `ENTITY_STATUS` varchar(30) DEFAULT NULL,
  `INSTALLMENT_AMOUNT` varchar(1000) DEFAULT NULL,
  `ALLOWANCE_TOTAL` bigint(12) DEFAULT NULL,
  `ALLOWANCE_ACCOUNT_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`AGR_CONTRACT_PARTY_REL_ID`),
  KEY `IDX_AGR_AGR_PARTY_REL_01` (`AGREEMENT_ID`),
  KEY `IDX_AGR_AGR_PARTY_REL_02` (`TAX_ID`),
  KEY `IDX_AGR_AGR_PARTY_REL_03` (`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议参与方关系\nAGR_AGREEMENT_PARTY_REL';

/*Table structure for table `agr_agr_party_rel_h` */

DROP TABLE IF EXISTS `agr_agr_party_rel_h`;

CREATE TABLE `agr_agr_party_rel_h` (
  `CONTRACT_PARTY_REL_HIS_ID` bigint(12) NOT NULL,
  `AGR_CONTRACT_PARTY_REL_ID` bigint(12) DEFAULT NULL,
  `ENTITY_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `PARTY_ROLE` varchar(3) DEFAULT NULL,
  `AGR_CREATION_TIME` datetime DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `AGR_VERSION_ID` bigint(12) DEFAULT NULL,
  `TAX_ID` varchar(128) DEFAULT NULL,
  `ENTITY_STATUS` varchar(30) DEFAULT NULL,
  `INSTALLMENT_AMOUNT` varchar(1000) DEFAULT NULL,
  `ALLOWANCE_TOTAL` bigint(12) DEFAULT NULL,
  `ALLOWANCE_ACCOUNT_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`CONTRACT_PARTY_REL_HIS_ID`),
  KEY `IDX_AGR_AGR_PARTY_REL_H_01` (`AGREEMENT_ID`),
  KEY `IDX_AGR_AGR_PARTY_REL_H_02` (`TAX_ID`),
  KEY `IDX_AGR_AGR_PARTY_REL_H_03` (`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_agr_rule_rela` */

DROP TABLE IF EXISTS `agr_agr_rule_rela`;

CREATE TABLE `agr_agr_rule_rela` (
  `AGR_RULE_RELA_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `MONITOR_RULE_ID` bigint(12) DEFAULT NULL,
  `MONITOR_OBJECT` varchar(3) DEFAULT NULL,
  `MONITOR_OBJECT_ID` varchar(30) DEFAULT NULL,
  `DESCRITPTION` varchar(256) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `BREACH_START_TIME` datetime DEFAULT NULL,
  `BREACH_END_TIME` datetime DEFAULT NULL,
  `PENALTY_START_TIME` datetime DEFAULT NULL,
  `PENALTY_END_TIME` datetime DEFAULT NULL,
  `BREACH_REM_FREQ` bigint(20) DEFAULT '30',
  `PENALTY_REM_FREQ` bigint(20) DEFAULT '30',
  `COMMITMENT` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`AGR_RULE_RELA_ID`),
  KEY `IDX_AGR_AGR_RULE_RELA_01` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_agr_rule_rela_h` */

DROP TABLE IF EXISTS `agr_agr_rule_rela_h`;

CREATE TABLE `agr_agr_rule_rela_h` (
  `AGR_RULE_RELA_ID` bigint(12) NOT NULL DEFAULT '0',
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `AGR_VERSION_ID` bigint(12) DEFAULT NULL,
  `MONITOR_RULE_ID` bigint(12) DEFAULT NULL,
  `MONITOR_OBJECT` varchar(3) DEFAULT NULL,
  `MONITOR_OBJECT_ID` varchar(30) DEFAULT NULL,
  `DESCRITPTION` varchar(256) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `BREACH_START_TIME` datetime DEFAULT NULL,
  `BREACH_END_TIME` datetime DEFAULT NULL,
  `PENALTY_START_TIME` datetime DEFAULT NULL,
  `PENALTY_END_TIME` datetime DEFAULT NULL,
  `BREACH_REM_FREQ` bigint(20) DEFAULT NULL,
  `PENALTY_REM_FREQ` bigint(20) DEFAULT '30',
  `COMMITMENT` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`AGR_RULE_RELA_ID`),
  KEY `IDX_AGR_AGR_RULE_RELA_H_01` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_agr_term_ver` */

DROP TABLE IF EXISTS `agr_agr_term_ver`;

CREATE TABLE `agr_agr_term_ver` (
  `CONDITION_VERSION_ID` bigint(12) NOT NULL,
  `TERM_ID` bigint(12) DEFAULT NULL,
  `AGR_VERSION_ID` bigint(12) DEFAULT NULL,
  `ACTION_TYPE` varchar(3) DEFAULT NULL COMMENT '增加，修改，删除',
  `VERSION_CODE` varchar(128) DEFAULT NULL,
  `MODIFY_REASON` varchar(1024) DEFAULT NULL,
  `MODIFY_CONTENT` varchar(1024) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`CONDITION_VERSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_agr_user_ana_w` */

DROP TABLE IF EXISTS `agr_agr_user_ana_w`;

CREATE TABLE `agr_agr_user_ana_w` (
  `ANA_ID` bigint(15) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `CUSTOMER_ID` bigint(15) DEFAULT NULL,
  `USER_ID` varchar(30) DEFAULT NULL,
  `STATUS` char(10) DEFAULT NULL COMMENT 'FP处理状态',
  `CREATE_DATE` datetime DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`ANA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='待统计合同用户表\n合同待统计和合同用户关系表，查找出待统计的合同用户存在该表中';

/*Table structure for table `agr_agreement` */

DROP TABLE IF EXISTS `agr_agreement`;

CREATE TABLE `agr_agreement` (
  `AGREEMENT_ID` bigint(12) NOT NULL,
  `AGREEMENT_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_TEMP_CODE` varchar(128) DEFAULT NULL,
  `AGR_BAR_CODE` varchar(128) DEFAULT NULL,
  `UP_AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `AGR_TYPE_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_NAME` varchar(255) DEFAULT NULL,
  `AGREEMENT_CODE` varchar(128) DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `AUTO_RENEW` varchar(3) DEFAULT NULL,
  `RENEW_CIRCLE` varchar(3) DEFAULT NULL,
  `AGR_LEVEL_ID` bigint(12) DEFAULT NULL,
  `SECRECY_LEVEL` varchar(3) DEFAULT NULL,
  `SIGN_TIME` datetime DEFAULT NULL,
  `SIGN_PLACE` varchar(128) DEFAULT NULL,
  `AGR_DOC_URL` varchar(1024) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `AGR_SOURCE` varchar(3) DEFAULT NULL,
  `AGR_SOURCE_OBJ_ID` bigint(12) DEFAULT NULL,
  `AGR_SOURCE_BIZ_ID` varchar(128) DEFAULT NULL,
  `EFF_DATE` datetime DEFAULT NULL,
  `EXP_DATE` datetime DEFAULT NULL,
  `AGREEMENT_STATUS` bigint(12) DEFAULT NULL,
  `STATUS_TIME` datetime DEFAULT NULL,
  `PARENT_CREATE_DATE` datetime DEFAULT NULL,
  `EMAIL_STATUS` varchar(3) DEFAULT NULL,
  `BREACH_STATUS` varchar(3) DEFAULT NULL,
  `IS_ADDENDUM` bigint(1) DEFAULT NULL,
  `RENEW_TIMES` bigint(12) DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `ORGANIZATION_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `OWNER_TYPE` varchar(3) DEFAULT NULL,
  `AGR_SOURCE_SUB_OBJ_ID` varchar(32) DEFAULT NULL,
  `AGR_TEMP_VERSION_ID` bigint(12) DEFAULT NULL,
  `BILL_CYCLE` char(1) DEFAULT NULL,
  `PAYMENT_TERMS` varchar(2) DEFAULT NULL,
  `BILL_NO` varchar(30) DEFAULT NULL,
  `CVR_NO` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`AGREEMENT_ID`),
  KEY `IDX_AGR_AGREEMENT_01` (`AGREEMENT_CODE`),
  KEY `IDX_AGR_AGREEMENT_02` (`AGR_LEVEL_ID`,`AGREEMENT_STATUS`),
  KEY `IDX_AGR_AGREEMENT_03` (`OWNER_ID`),
  KEY `IDX_AGR_AGREEMENT_04` (`CREATE_DATE`),
  KEY `IDX_AGR_AGREEMENT_05` (`CREATE_OP_ID`),
  KEY `IDX_AGR_AGREEMENT_06` (`CREATE_ORG_ID`),
  KEY `IDX_AGR_AGREEMENT_07` (`AGR_SOURCE_OBJ_ID`),
  KEY `IDX_AGR_AGREEMENT_08` (`AGR_BAR_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_agreement_h` */

DROP TABLE IF EXISTS `agr_agreement_h`;

CREATE TABLE `agr_agreement_h` (
  `AGREEMENT_HIS_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `AGR_VERSION_ID` bigint(12) DEFAULT NULL,
  `AGR_VERSION_CODE` varchar(128) DEFAULT NULL,
  `AGREEMENT_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_TEMP_CODE` varchar(128) DEFAULT NULL,
  `UP_AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `AGR_TYPE_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_NAME` varchar(255) DEFAULT NULL,
  `AGREEMENT_CODE` varchar(128) DEFAULT NULL,
  `AUTO_RENEW` varchar(3) DEFAULT NULL,
  `AGR_LEVEL_ID` bigint(12) DEFAULT NULL,
  `SECRECY_LEVEL` varchar(3) DEFAULT NULL,
  `SIGN_TIME` datetime DEFAULT NULL,
  `SIGN_PLACE` varchar(128) DEFAULT NULL,
  `AGR_DOC_URL` varchar(1024) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `AGR_SOURCE` varchar(3) DEFAULT NULL,
  `AGR_SOURCE_OBJ_ID` bigint(12) DEFAULT NULL,
  `EFF_DATE` datetime DEFAULT NULL,
  `EXP_DATE` datetime DEFAULT NULL,
  `AGREEMENT_STATUS` bigint(12) DEFAULT NULL,
  `STATUS_TIME` datetime DEFAULT NULL,
  `PARENT_CREATE_DATE` datetime DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `ORGANIZATION_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `AGR_BAR_CODE` varchar(128) DEFAULT NULL,
  `RENEW_CIRCLE` varchar(3) DEFAULT NULL,
  `AGR_SOURCE_BIZ_ID` varchar(128) DEFAULT NULL,
  `IS_ADDENDUM` bigint(1) DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `EMAIL_STATUS` varchar(3) DEFAULT NULL,
  `BREACH_STATUS` varchar(3) DEFAULT NULL,
  `RENEW_TIMES` bigint(12) DEFAULT NULL,
  `OWNER_TYPE` varchar(3) DEFAULT NULL,
  `AGR_TEMP_VERSION_ID` bigint(12) DEFAULT NULL,
  `IS_NEWVER` varchar(3) DEFAULT NULL,
  `BILL_CYCLE` char(1) DEFAULT NULL,
  `PAYMENT_TERMS` varchar(2) DEFAULT NULL,
  `BILL_NO` varchar(30) DEFAULT NULL,
  `CVR_NO` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`AGREEMENT_HIS_ID`),
  KEY `IDX_AGR_AGREEMENT_H_01` (`AGREEMENT_ID`),
  KEY `IDX_AGR_AGREEMENT_H_02` (`AGREEMENT_CODE`),
  KEY `IDX_AGR_AGREEMENT_H_03` (`AGR_LEVEL_ID`,`AGREEMENT_STATUS`),
  KEY `IDX_AGR_AGREEMENT_H_04` (`OWNER_ID`),
  KEY `IDX_AGR_AGREEMENT_H_05` (`AGR_BAR_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_agreement_item` */

DROP TABLE IF EXISTS `agr_agreement_item`;

CREATE TABLE `agr_agreement_item` (
  `AGREEMENT_ITEM_ID` bigint(12) NOT NULL,
  `UP_ITEM_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `ITEM_NAME` varchar(128) DEFAULT NULL,
  `ITEM_TYPE` varchar(3) DEFAULT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `EFF_DATE` datetime DEFAULT NULL,
  `EXP_DATE` datetime DEFAULT NULL,
  `STATUS_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `AGR_CREATION_TIME` datetime DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `OWNER_TYPE` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`AGREEMENT_ITEM_ID`),
  KEY `IDX_AGREEMENT_ID` (`AGREEMENT_ID`),
  KEY `IDX_AGR_AGREEMENT_ITEM_01` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_agreement_item_h` */

DROP TABLE IF EXISTS `agr_agreement_item_h`;

CREATE TABLE `agr_agreement_item_h` (
  `AGREEMENT_ITEM_ID` bigint(12) NOT NULL,
  `UP_ITEM_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `AGR_VERSION_ID` bigint(12) DEFAULT NULL,
  `ITEM_NAME` varchar(128) DEFAULT NULL,
  `ITEM_TYPE` varchar(3) DEFAULT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `EFF_DATE` datetime DEFAULT NULL,
  `EXP_DATE` datetime DEFAULT NULL,
  `STATUS_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `AGR_CREATION_TIME` datetime DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `OWNER_TYPE` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`AGREEMENT_ITEM_ID`),
  KEY `IDX_AGR_VERSION_ID` (`AGR_VERSION_ID`),
  KEY `IDX_AGR_AGREEMENT_ITEM_H_01` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_agreement_source` */

DROP TABLE IF EXISTS `agr_agreement_source`;

CREATE TABLE `agr_agreement_source` (
  `AGR_SOURCE_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `AGR_SOURCE_TYPE` varchar(3) DEFAULT NULL COMMENT '协议来源 \n1 手动\n3 建议书\n默认手动',
  `SOURCE_OBJ_ID` varchar(128) DEFAULT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`AGR_SOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同生成来源表\nAGR_AGREEMENT_SOURCE\n目前主要包括建议书来源，和手动创建来源';

/*Table structure for table `agr_agreement_term` */

DROP TABLE IF EXISTS `agr_agreement_term`;

CREATE TABLE `agr_agreement_term` (
  `TERM_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `UP_TERM_ID` bigint(12) DEFAULT NULL,
  `TERM_TYPE` varchar(3) DEFAULT NULL COMMENT '自愿立约条款，目的条款，权利条款，义务条款，验收条款，交付条款，支付条款，保密条款，保证条款，声明确认条款，违约责任条款，合同变更、解除、终止、续展条款，担保条款，不可抗力条款，通知条款，其它条款，生效条款，有效期限条款，争议解决条款，解释条款',
  `TERM_CODE` varchar(128) DEFAULT NULL,
  `TERM_TITLE` varchar(1024) DEFAULT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `CONTENT` varchar(1024) DEFAULT NULL,
  `EFF_DATE` datetime DEFAULT NULL,
  `EXP_DATE` datetime DEFAULT NULL,
  `STATUS_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`TERM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议中对协议内容进行限制的条约或者条件。\nAspects of the Agreement not formally specified elsewhere in the Agreement and that cannot be captured elsewhere in a formal notation, or automatically monitored and require a more human level of management.';

/*Table structure for table `agr_agreement_term_h` */

DROP TABLE IF EXISTS `agr_agreement_term_h`;

CREATE TABLE `agr_agreement_term_h` (
  `TERM_HIS_ID` bigint(12) NOT NULL,
  `CONDITION_VERSION_ID` bigint(12) DEFAULT NULL,
  `TERM_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `UP_TERM_ID` bigint(12) DEFAULT NULL,
  `TERM_TYPE` varchar(3) DEFAULT NULL COMMENT '自愿立约条款，目的条款，权利条款，义务条款，验收条款，交付条款，支付条款，保密条款，保证条款，声明确认条款，违约责任条款，合同变更、解除、终止、续展条款，担保条款，不可抗力条款，通知条款，其它条款，生效条款，有效期限条款，争议解决条款，解释条款',
  `TERM_CODE` varchar(128) DEFAULT NULL,
  `TERM_TITLE` varchar(1024) DEFAULT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `CONTENT` varchar(1024) DEFAULT NULL,
  `EFF_DATE` datetime DEFAULT NULL,
  `EXP_DATE` datetime DEFAULT NULL,
  `STATUS_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`TERM_HIS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_agreement_ver` */

DROP TABLE IF EXISTS `agr_agreement_ver`;

CREATE TABLE `agr_agreement_ver` (
  `AGR_VERSION_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `ACTION_TYPE` varchar(3) DEFAULT NULL COMMENT '增加，修改，删除',
  `VERSION_CODE` varchar(128) DEFAULT NULL,
  `MODIFY_REASON` varchar(1024) DEFAULT NULL,
  `MODIFY_CONTENT` varchar(1024) DEFAULT NULL,
  `MODIFY_DATE` datetime DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `ORGANIZATION_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `AGR_CREATION_TIME` datetime DEFAULT NULL COMMENT '记录合同创建时间，用于分表以保证分表月份和合同分表保持一致',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`AGR_VERSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_approval` */

DROP TABLE IF EXISTS `agr_approval`;

CREATE TABLE `agr_approval` (
  `APPROVAL_ID` bigint(12) NOT NULL,
  `APPROVAL_ITEM` varchar(3) DEFAULT NULL COMMENT '1 审批协议模板\n3 审批协议',
  `APPROVAL_ITEM_ID` bigint(12) DEFAULT NULL COMMENT '协议模板ID, 协议ID',
  `APPROVAL_OPINION` varchar(1024) DEFAULT NULL,
  `APPROVAL_OP_ID` bigint(12) DEFAULT NULL,
  `APPROVAL_ORG` bigint(12) DEFAULT NULL,
  `APPROVAL_DATE` datetime DEFAULT NULL,
  `COMMIT_OP_ID` bigint(12) DEFAULT NULL,
  `COMMIT_ORG` bigint(12) DEFAULT NULL,
  `APPROVAL_APPLY` varchar(1024) DEFAULT NULL,
  `APPROVAL_STATUS` varchar(3) DEFAULT NULL COMMENT '1通过\n0不通过\nCODE_TYPE= AGR_APPROVAL_STATUS',
  `STATUS_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`APPROVAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录协议相关文档的审批过程。';

/*Table structure for table `agr_attach` */

DROP TABLE IF EXISTS `agr_attach`;

CREATE TABLE `agr_attach` (
  `ATTACH_ID` bigint(12) NOT NULL,
  `BUSI_TYPE_CODE` varchar(30) DEFAULT NULL,
  `BUSI_SHEET_ID` varchar(128) DEFAULT NULL,
  `ATTACH_TYPE` varchar(3) DEFAULT NULL,
  `FILE_NAME` varchar(128) DEFAULT NULL,
  `STORAGE_FILE_URI` varchar(1024) DEFAULT NULL,
  `STORE_MEDIUM_TYPE` varchar(3) DEFAULT NULL,
  `ATTACH_STATUS` varchar(3) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  `AGR_CREATION_TIME` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`ATTACH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_attach_h` */

DROP TABLE IF EXISTS `agr_attach_h`;

CREATE TABLE `agr_attach_h` (
  `ATTACH_ID` bigint(12) NOT NULL,
  `BUSI_TYPE_CODE` varchar(30) DEFAULT NULL,
  `BUSI_SHEET_ID` varchar(128) DEFAULT NULL,
  `ATTACH_TYPE` varchar(3) DEFAULT NULL,
  `FILE_NAME` varchar(128) DEFAULT NULL,
  `STORAGE_FILE_URI` varchar(1024) DEFAULT NULL,
  `STORE_MEDIUM_TYPE` varchar(3) DEFAULT NULL,
  `ATTACH_STATUS` varchar(3) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  `AGR_CREATION_TIME` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  `AGR_VERSION_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`ATTACH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_biz_rela` */

DROP TABLE IF EXISTS `agr_biz_rela`;

CREATE TABLE `agr_biz_rela` (
  `AGR_BIZ_RELA_ID` bigint(12) NOT NULL,
  `AGREEMENT_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `PROD_SORT_TYPE` varchar(3) DEFAULT NULL COMMENT '1 产品\n3 产品线\n5 产品目录\n默认为产品目录',
  `PROD_LINE_ID` varchar(32) DEFAULT NULL COMMENT '可以是产品ID，产品线ID，产品目录ID',
  `BUSI_ACTION` varchar(32) DEFAULT NULL COMMENT '如订购，退订\n1 订购\n3 退订',
  `CUST_TYPE` varchar(30) DEFAULT NULL COMMENT '客户类型  个人集团',
  `CUST_SEGMENT` varchar(30) DEFAULT NULL COMMENT '客户细分 KA PA LA',
  `RELA_STATUS` varchar(3) DEFAULT NULL COMMENT '0 失效\n1 有效',
  `STATUS_DATE` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`AGR_BIZ_RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='AGR_BIZ_RELA_CONFIG\n协议模板与业务关系配置，包括协议模版和产品/产品线/产品目录，业务行为，客户类型及细分的配置关系';

/*Table structure for table `agr_business_active` */

DROP TABLE IF EXISTS `agr_business_active`;

CREATE TABLE `agr_business_active` (
  `AGR_BUSINESS_ACTIVE_ID` bigint(12) NOT NULL,
  `CUSTOMER_ID` bigint(15) DEFAULT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `AGR_SOURCE` varchar(3) DEFAULT NULL,
  `BUSI_TYPE` varchar(3) DEFAULT NULL COMMENT '1订购，2退订',
  `VALID_DATE` datetime DEFAULT NULL,
  `BUSI_STATE` varchar(3) DEFAULT NULL COMMENT '待处理，成功，失败，暂不使用',
  `OFFER_TYPE` varchar(3) DEFAULT NULL COMMENT '1allowance,2coolcash,3kapala discount,4volumn discount',
  `ORDER_VAR` varchar(1024) DEFAULT NULL,
  `CUST_ORDER_ID` bigint(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`AGR_BUSINESS_ACTIVE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_business_active_err` */

DROP TABLE IF EXISTS `agr_business_active_err`;

CREATE TABLE `agr_business_active_err` (
  `AGR_BUSINESS_ACTIVE_ID` bigint(12) NOT NULL,
  `CUSTOMER_ID` bigint(15) DEFAULT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `AGR_SOURCE` varchar(3) DEFAULT NULL,
  `BUSI_TYPE` varchar(3) DEFAULT NULL COMMENT '1订购，2退订',
  `VALID_DATE` datetime DEFAULT NULL,
  `BUSI_STATE` varchar(3) DEFAULT NULL COMMENT '待处理，成功，失败，暂不使用',
  `OFFER_TYPE` varchar(3) DEFAULT NULL COMMENT '1allowance,2coolcash,3kapala discount,4volumn discount',
  `ORDER_VAR` varchar(1024) DEFAULT NULL,
  `CUST_ORDER_ID` bigint(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`AGR_BUSINESS_ACTIVE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_business_active_h` */

DROP TABLE IF EXISTS `agr_business_active_h`;

CREATE TABLE `agr_business_active_h` (
  `AGR_BUSINESS_ACTIVE_ID` bigint(12) NOT NULL,
  `CUSTOMER_ID` bigint(15) DEFAULT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `AGR_SOURCE` varchar(3) DEFAULT NULL,
  `BUSI_TYPE` varchar(3) DEFAULT NULL COMMENT '1订购，2退订',
  `VALID_DATE` datetime DEFAULT NULL,
  `BUSI_STATE` varchar(3) DEFAULT NULL COMMENT '待处理，成功，失败，暂不使用',
  `OFFER_TYPE` varchar(3) DEFAULT NULL COMMENT '1allowance,2coolcash,3kapala discount,4volumn discount',
  `ORDER_VAR` varchar(1024) DEFAULT NULL,
  `CUST_ORDER_ID` bigint(15) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`AGR_BUSINESS_ACTIVE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_catalog_negotiate` */

DROP TABLE IF EXISTS `agr_catalog_negotiate`;

CREATE TABLE `agr_catalog_negotiate` (
  `AGR_CATALOG_NEGOTIATE_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `CATALOG_ID` bigint(12) DEFAULT NULL,
  `CATALOG_NAME` varchar(256) DEFAULT NULL,
  `PARENT_CATALOG_ID` bigint(12) DEFAULT NULL,
  `PARENT_CATALOG_NAME` varchar(256) DEFAULT NULL,
  `DISCOUNT_TYPE` varchar(3) DEFAULT '2',
  `DISCOUNT_VALUE` bigint(12) DEFAULT NULL,
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_NAME` varchar(256) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT '1',
  PRIMARY KEY (`AGR_CATALOG_NEGOTIATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_catalog_negotiate_h` */

DROP TABLE IF EXISTS `agr_catalog_negotiate_h`;

CREATE TABLE `agr_catalog_negotiate_h` (
  `AGR_CATALOG_NEGOTIATE_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `AGR_VERSION_ID` bigint(12) DEFAULT NULL,
  `CATALOG_ID` bigint(12) DEFAULT NULL,
  `CATALOG_NAME` varchar(256) DEFAULT NULL,
  `PARENT_CATALOG_ID` bigint(12) DEFAULT NULL,
  `PARENT_CATALOG_NAME` varchar(256) DEFAULT NULL,
  `DISCOUNT_TYPE` varchar(3) DEFAULT '2',
  `DISCOUNT_VALUE` bigint(12) DEFAULT NULL,
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_NAME` varchar(256) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT '1',
  PRIMARY KEY (`AGR_CATALOG_NEGOTIATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_consump_data` */

DROP TABLE IF EXISTS `agr_consump_data`;

CREATE TABLE `agr_consump_data` (
  `DATA_ID` bigint(15) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `CUSTOMER_ID` bigint(15) DEFAULT NULL,
  `PRODUCT_ID` varchar(30) DEFAULT NULL,
  `CONSUM_AMOUNT` varchar(30) DEFAULT NULL COMMENT '接口返回值暂时不清楚，采用字符串记录',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '待扩展',
  `STATUS_TIME` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`DATA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同消费额统计表 AGR_CONSUMPTION_DATA\n合同id，客户,消费总额，产品';

/*Table structure for table `agr_consump_data_h` */

DROP TABLE IF EXISTS `agr_consump_data_h`;

CREATE TABLE `agr_consump_data_h` (
  `DATA_ID` bigint(15) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `CUSTOMER_ID` bigint(15) DEFAULT NULL,
  `PRODUCT_ID` varchar(30) DEFAULT NULL,
  `CONSUM_AMOUNT` varchar(30) DEFAULT NULL COMMENT '接口返回值暂时不清楚，采用字符串记录',
  `STATUS` varchar(3) DEFAULT NULL COMMENT '待扩展',
  `STATUS_TIME` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`DATA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同消费额统计表\nAGR_CONSUMPTION_DATA_H\n合同id，客户,消费总额，产品';

/*Table structure for table `agr_interface_definition` */

DROP TABLE IF EXISTS `agr_interface_definition`;

CREATE TABLE `agr_interface_definition` (
  `INTERFACE_DEF_ID` bigint(12) NOT NULL,
  `INTERFACE_NAME` varchar(128) DEFAULT NULL,
  `INTERFACE_URI` varchar(1024) DEFAULT NULL COMMENT '接口URI\n1 页面接口\n如果接口类型是页面接口，该字段存放接口的URL信息，格式为：\n xxxx/xxxx/xxx.jsp?a = xx&b=xxx&c=@\n上述链接中出现参数且=@的作为依赖参数，从编辑器中会获取参数，如果没有获取到则提醒先填写该参数。\n\n\n3 后台服务接口\n如果接口类型是页面接口，该字段存放后台接口路径，格式为\njava路径@方法名@(@参数1,参数2）\n同理带@的参数，为依赖参数，需要从编辑器中获取，如果没有获取到则提醒先填写该参数\n\n5 静态数据\n如果接口类型是页面接口，该字段存放CODE_TYPE',
  `INTERFACE_TYPE` varchar(3) DEFAULT NULL COMMENT '1 页面接口\n3 后台服务接口\n5 静态数据',
  `INTERFACE_STATUS` varchar(3) DEFAULT NULL COMMENT '0 失效\n1 有效',
  `STATUS_TIME` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`INTERFACE_DEF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同接口定义表';

/*Table structure for table `agr_label_value` */

DROP TABLE IF EXISTS `agr_label_value`;

CREATE TABLE `agr_label_value` (
  `LABEL_VALUE_ID` bigint(12) NOT NULL,
  `LABEL_VALUE_CODE` varchar(30) DEFAULT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `LABEL_VALUE` varchar(1024) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL COMMENT '产品，销售品，',
  `STATUS_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`LABEL_VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议业务标签值';

/*Table structure for table `agr_level` */

DROP TABLE IF EXISTS `agr_level`;

CREATE TABLE `agr_level` (
  `AGR_LEVEL_ID` bigint(12) NOT NULL,
  `UP_AGR_LEVEL_ID` bigint(12) DEFAULT NULL,
  `AGR_LEVEL_NAME` varchar(128) DEFAULT NULL,
  `TREE_CODE` varchar(128) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `BUILD_IN` varchar(3) DEFAULT NULL COMMENT '内置参数表示系统初始化类型，和系统逻辑相关，不允许修改删除\n0 No\n1 Yes',
  `LEVEL_STATUS` varchar(3) DEFAULT NULL COMMENT '0 失效\n1 有效',
  `STATUS_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  `DOCUMENT_TYPE` varchar(30) DEFAULT NULL,
  `OWNER_TYPE` varchar(3) DEFAULT NULL,
  `TIME_LIMIT` char(1) DEFAULT NULL,
  `BILL_CYCLE_RULE` varchar(20) DEFAULT NULL,
  `COPYRIGHT_STAMP` varchar(128) DEFAULT NULL,
  `AGR_CODE_RULE` varchar(128) DEFAULT NULL,
  `MULTI_AGR_ALLOWED` char(1) DEFAULT NULL,
  `PAYMENT_TERMS` varchar(128) DEFAULT NULL,
  `VIRTUAL_OFFER` char(10) DEFAULT NULL,
  PRIMARY KEY (`AGR_LEVEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于定义合约级别和层次关系';

/*Table structure for table `agr_level_busicate_rla` */

DROP TABLE IF EXISTS `agr_level_busicate_rla`;

CREATE TABLE `agr_level_busicate_rla` (
  `BUSICATE_RLA_ID` bigint(12) NOT NULL,
  `BUSI_CATEGORY` varchar(3) DEFAULT NULL COMMENT '业务分类',
  `AGR_LEVEL_ID` bigint(12) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL COMMENT '产品，销售品，',
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`BUSICATE_RLA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_logs` */

DROP TABLE IF EXISTS `agr_logs`;

CREATE TABLE `agr_logs` (
  `AGR_LOG_ID` bigint(14) DEFAULT NULL,
  `LOG_NAME` varchar(80) DEFAULT NULL,
  `LOG_TYPE` varchar(10) DEFAULT NULL,
  `COMMENT` varchar(800) DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_metadata_field` */

DROP TABLE IF EXISTS `agr_metadata_field`;

CREATE TABLE `agr_metadata_field` (
  `METADATA_FIELD_ID` bigint(12) NOT NULL,
  `METADATA_SCHEMA_ID` bigint(12) DEFAULT NULL COMMENT '1 合同\n2 参与方\n3 订购参数\n4 条款项目',
  `FIELD_NAME` varchar(128) DEFAULT NULL COMMENT '字段名称',
  `FIELD_LABEL` varchar(128) DEFAULT NULL COMMENT '存放国际化编码',
  `VALUE_DATA_TYPE` varchar(3) DEFAULT NULL COMMENT '字符串，时间，整数，浮点数\n\n0 String \n1 Time\n2 Intege\n3 Decimal \n\nCODE_TYPE= AGR_METADATA_FIELD.VALUE_DATA_TYPE',
  `BUSI_CATEGORY` varchar(3) DEFAULT NULL COMMENT '业务标签类型: ,比如：\nOffer类：Offering,Product,Resource\n参与方类：Operator,Owner, Beneficiaries,Signtory\n有效期类：有效期，失效期.....\n\n1 Contract Basic Information 合同基本信息\n3 Offer Item Offer信息\n5 Commitment Item 承诺信息\n7 Allowance Item 赠送信息\n9 Owner Item 所有人信息\n11 Beneficial Item 受益人信息\n13 CTN Item 号码信息\n15 Agent 代办人 \n\nCODE_TYPE = AGR_METADATA_FIELD.BUSI_CATEGORY',
  `IS_MANDATORY` bigint(1) DEFAULT NULL COMMENT '0 False\n1 True',
  `IS_EDITABLE` varchar(3) DEFAULT NULL COMMENT '配置的字段是否可编辑\n0 可编辑\n1 不可编辑',
  `CODE_TYPE` varchar(128) DEFAULT NULL COMMENT '当Filed类型是下拉时，关联的下拉数据codetype',
  `FROM_VALUE` varchar(256) DEFAULT NULL,
  `TO_VALUE` varchar(256) DEFAULT NULL,
  `INPUT_TYPE` varchar(3) DEFAULT NULL COMMENT '比如： 1 下拉，2文本， 3日期，4可选',
  `INTERFACE_DEF_ID` bigint(12) DEFAULT NULL,
  `INTERFACE_TYPE` varchar(3) DEFAULT NULL COMMENT '1 页面接口\n3 后台服务接口\n5 静态数据\n目前默认为1',
  `INTERFACE_DESC` varchar(256) DEFAULT NULL,
  `LABEL_INTERFACE_ALIAS` varchar(256) DEFAULT NULL,
  `IS_DISPLAY` varchar(3) DEFAULT NULL COMMENT '1 ture 0 false\n构造参数视图的时候，以此为标准，控制该参数在视图中是否显示',
  `FIELD_SEQ` bigint(12) DEFAULT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `FIELD_STATUS` varchar(3) DEFAULT NULL COMMENT '0 失效\n1 有效',
  `STATUS_TIME` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  `DEFAULT_VALUE` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`METADATA_FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_metadata_value` */

DROP TABLE IF EXISTS `agr_metadata_value`;

CREATE TABLE `agr_metadata_value` (
  `METADATA_VALUE_ID` bigint(12) NOT NULL,
  `METADATA_FIELD_ID` bigint(12) DEFAULT NULL,
  `BUSI_ENTITY_ID` bigint(12) DEFAULT NULL,
  `METADATA_SCHEMA_ID` bigint(12) DEFAULT NULL,
  `FIELD_VALUE` varchar(1024) DEFAULT NULL,
  `AGR_CREATION_TIME` datetime DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `OWNER_TYPE` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`METADATA_VALUE_ID`),
  KEY `IDX_AGR_METADATA_VALUE_01` (`BUSI_ENTITY_ID`),
  KEY `IDX_AGR_METADATA_VALUE_02` (`METADATA_FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_metadata_value_h` */

DROP TABLE IF EXISTS `agr_metadata_value_h`;

CREATE TABLE `agr_metadata_value_h` (
  `METADATA_VALUE_ID` bigint(12) NOT NULL,
  `METADATA_FIELD_ID` bigint(12) DEFAULT NULL,
  `BUSI_ENTITY_ID` bigint(12) DEFAULT NULL,
  `METADATA_SCHEMA_ID` bigint(12) DEFAULT NULL,
  `FIELD_VALUE` varchar(1024) DEFAULT NULL,
  `AGR_CREATION_TIME` datetime DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `OWNER_TYPE` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`METADATA_VALUE_ID`),
  KEY `IDX_AGR_METADATA_VALUE_H_01` (`BUSI_ENTITY_ID`),
  KEY `IDX_AGR_METADATA_VALUE_H_02` (`METADATA_FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_monitor` */

DROP TABLE IF EXISTS `agr_monitor`;

CREATE TABLE `agr_monitor` (
  `MONITOR_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `MONITOR_NAME` varchar(128) DEFAULT NULL,
  `MONITOR_PURPOSE` varchar(3) DEFAULT NULL COMMENT '到期监控，违约监控',
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `STATUS_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`MONITOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议监控';

/*Table structure for table `agr_monitor_res` */

DROP TABLE IF EXISTS `agr_monitor_res`;

CREATE TABLE `agr_monitor_res` (
  `RESULT_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_CODE` varchar(128) DEFAULT NULL,
  `MONITOR_RULE_ID` bigint(12) DEFAULT NULL,
  `PENALTY_AMOUNT` bigint(12) DEFAULT NULL COMMENT '按照规则计算出的罚金值',
  `ADJUST_PENATYL_AMOUNT` bigint(12) DEFAULT NULL COMMENT '调整后的罚金值',
  `MONITOR_VALUES` varchar(256) DEFAULT NULL COMMENT '计算出当前罚金时的接口数据和内部计算数据，如剩余合约数，              显示为监控指标',
  `BREACH_TIME` datetime DEFAULT NULL COMMENT '连续的一段违约时间内的第一次的违约时间，如果某一次检查不违约，该字段清空              ',
  `IN_LOYATY` varchar(3) DEFAULT NULL COMMENT '该次罚金计算是否在容忍期限，如果在容忍期，意味着罚金不需要收取              暂时不启用              0 No              1 Yes',
  `BREACH_STATUS` varchar(3) DEFAULT NULL COMMENT '1,是   2,否',
  `MONITOR_TIME` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL COMMENT '冗余Owner信息便于查询',
  `OWNER_CODE` varchar(128) DEFAULT NULL COMMENT '如果有客户编码，保存客户编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  `AGR_VERSION_ID` bigint(15) DEFAULT NULL,
  `PENALTY_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`RESULT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_monitor_res_h` */

DROP TABLE IF EXISTS `agr_monitor_res_h`;

CREATE TABLE `agr_monitor_res_h` (
  `RESULT_H_ID` bigint(12) NOT NULL,
  `RESULT_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_CODE` varchar(128) DEFAULT NULL,
  `MONITOR_RULE_ID` bigint(12) DEFAULT NULL,
  `PENALTY_AMOUNT` bigint(12) DEFAULT NULL COMMENT '按照规则计算出的罚金值',
  `ADJUST_PENATYL_AMOUNT` bigint(12) DEFAULT NULL COMMENT '调整后的罚金值',
  `MONITOR_VALUES` varchar(256) DEFAULT NULL COMMENT '计算出当前罚金时的接口数据和内部计算数据，如剩余合约数，\n显示为监控指标',
  `BREACH_TIME` datetime DEFAULT NULL COMMENT '连续的一段违约时间内的第一次的违约时间，如果某一次检查不违约，该字段清空',
  `IN_LOYATY` varchar(3) DEFAULT NULL COMMENT '该次罚金计算是否在容忍期限，如果在容忍期，意味着罚金不需要收取\n暂时不启用\n0 No\n1 Yes',
  `MONITOR_TIME` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL COMMENT '冗余Owner信息便于查询',
  `OWNER_CODE` varchar(128) DEFAULT NULL COMMENT '如果有客户编码，保存客户编码',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  `AGR_VERSION_ID` bigint(15) DEFAULT NULL,
  `PENALTY_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`RESULT_H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议监控';

/*Table structure for table `agr_monitor_rule` */

DROP TABLE IF EXISTS `agr_monitor_rule`;

CREATE TABLE `agr_monitor_rule` (
  `MONITOR_RULE_ID` bigint(12) NOT NULL,
  `RULE_NAME` varchar(128) DEFAULT NULL,
  `RULE_CODE` varchar(30) DEFAULT NULL,
  `MONITOR_PURPOSE` varchar(256) DEFAULT NULL,
  `MONITOR_INDICATOR` bigint(12) DEFAULT NULL COMMENT '监控指标,\n从监控指标类参数中选择.保存后同时创建合同使用参数关系',
  `RULE_TYPE` varchar(3) DEFAULT NULL COMMENT '规则类型  \n0最小订购数规则\n1最小消费额规则\n2合约有效期规则',
  `MONITOR_EXPR` varchar(256) DEFAULT NULL COMMENT '监控表达式\n即罚金计算的触发条件 目前的规则中按照规则类型即可默认表达式，不需要开放界面编辑\n如：\n最小订购树规则,其表达式为 最小订购>实际订购数\n有效期规则,其表达式为 ,剩余有效期>0',
  `PENALTY_CALC_EXP` varchar(1024) DEFAULT NULL COMMENT '规则的脚本语言表达式，当前采用BeanShell脚本语言',
  `RULE_LANG_EXP` varchar(1024) DEFAULT NULL COMMENT '一个规则对应的自然语言描述方式，其中的参数可以设置成${}形式\n暂不启用',
  `CACULATE_CIRCLE` varchar(3) DEFAULT NULL COMMENT '0 每天一次\n1 每月一次',
  `RULE_STATUS` varchar(3) DEFAULT NULL COMMENT '规则状态\n0 失效\n1 生效',
  `STATUS_TIME` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`MONITOR_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议监控规则';

/*Table structure for table `agr_offer_inst` */

DROP TABLE IF EXISTS `agr_offer_inst`;

CREATE TABLE `agr_offer_inst` (
  `AGR_SUB_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `USER_REGION_ID` varchar(10) DEFAULT NULL,
  `OFFER_TYPE` varchar(30) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_INST_ID` bigint(12) DEFAULT NULL,
  `EFF_DATE` datetime DEFAULT NULL,
  `EXP_DATE` datetime DEFAULT NULL,
  `ACCOUNT_ID` bigint(12) DEFAULT NULL,
  `INST_STATUS` varchar(3) DEFAULT '0',
  `OFFER_PARAM` varchar(512) DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  PRIMARY KEY (`AGR_SUB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议订户规则';

/*Table structure for table `agr_offer_inst_err` */

DROP TABLE IF EXISTS `agr_offer_inst_err`;

CREATE TABLE `agr_offer_inst_err` (
  `AGR_SUB_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(12) DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `USER_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `USER_REGION_ID` varchar(10) DEFAULT NULL,
  `OFFER_TYPE` varchar(30) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_INST_ID` bigint(12) DEFAULT NULL,
  `EFF_DATE` datetime DEFAULT NULL,
  `EXP_DATE` datetime DEFAULT NULL,
  `ACCOUNT_ID` bigint(12) DEFAULT NULL,
  `INST_STATUS` varchar(3) DEFAULT '0',
  `OFFER_PARAM` varchar(512) DEFAULT NULL,
  `ERR_DATE` datetime DEFAULT NULL,
  `ERR_MSG` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议订户错误表';

/*Table structure for table `agr_offer_inst_h` */

DROP TABLE IF EXISTS `agr_offer_inst_h`;

CREATE TABLE `agr_offer_inst_h` (
  `AGR_SUB_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `CUST_ID` bigint(12) DEFAULT NULL,
  `USER_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `USER_REGION_ID` varchar(10) DEFAULT NULL,
  `OFFER_TYPE` varchar(30) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_INST_ID` bigint(12) DEFAULT NULL,
  `EFF_DATE` datetime DEFAULT NULL,
  `EXP_DATE` datetime DEFAULT NULL,
  `ACCOUNT_ID` bigint(12) DEFAULT NULL,
  `INST_STATUS` varchar(3) DEFAULT '0',
  `OFFER_PARAM` varchar(512) DEFAULT NULL,
  `TF_DATE` datetime DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议订户历史表';

/*Table structure for table `agr_offer_rla` */

DROP TABLE IF EXISTS `agr_offer_rla`;

CREATE TABLE `agr_offer_rla` (
  `AGR_OFFER_RLA_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_NAME` varchar(256) DEFAULT NULL,
  `PROD_ID` bigint(12) DEFAULT NULL,
  `PROD_NAME` varchar(256) DEFAULT NULL,
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_NAME` varchar(256) DEFAULT NULL,
  `NEGOTIATE_TYPE` varchar(3) DEFAULT NULL,
  `RC_VALUE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `DISCOUNT_TYPE` varchar(3) DEFAULT '1',
  `NEGOTIATE_SRC` varchar(3) DEFAULT '1',
  `BC_DETAIL` varchar(10) DEFAULT NULL,
  `AGR_OFFER_TYPE` varchar(30) DEFAULT NULL,
  `BC_DISPLAY_TYPE` varchar(3) DEFAULT NULL,
  `BC_DISPLAY_NAME` varchar(256) DEFAULT NULL,
  `BC_PRICE_PLAN_ID` bigint(12) DEFAULT NULL,
  `BC_PRICE_ID` bigint(12) DEFAULT NULL,
  `BC_LIST_PRICE` bigint(12) DEFAULT NULL,
  `BC_NET_PRICE` bigint(12) DEFAULT NULL,
  `BC_DISCOUNT` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`AGR_OFFER_RLA_ID`),
  KEY `IDX_AGR_OFFER_RLA_01` (`AGREEMENT_ID`),
  KEY `IDX_AGR_OFFER_RLA_02` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_offer_rla_h` */

DROP TABLE IF EXISTS `agr_offer_rla_h`;

CREATE TABLE `agr_offer_rla_h` (
  `AGR_OFFER_RLA_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `AGR_VERSION_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_NAME` varchar(256) DEFAULT NULL,
  `PROD_ID` bigint(12) DEFAULT NULL,
  `PROD_NAME` varchar(256) DEFAULT NULL,
  `ATTR_ID` bigint(12) DEFAULT NULL,
  `ATTR_NAME` varchar(256) DEFAULT NULL,
  `NEGOTIATE_TYPE` varchar(3) DEFAULT NULL,
  `RC_VALUE` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `DISCOUNT_TYPE` varchar(3) DEFAULT '1',
  `NEGOTIATE_SRC` varchar(3) DEFAULT '1',
  `BC_DETAIL` varchar(10) DEFAULT NULL,
  `AGR_OFFER_TYPE` varchar(30) DEFAULT NULL,
  `BC_DISPLAY_TYPE` varchar(3) DEFAULT NULL,
  `BC_DISPLAY_NAME` varchar(256) DEFAULT NULL,
  `BC_PRICE_PLAN_ID` bigint(12) DEFAULT NULL,
  `BC_PRICE_ID` bigint(12) DEFAULT NULL,
  `BC_LIST_PRICE` bigint(12) DEFAULT NULL,
  `BC_NET_PRICE` bigint(12) DEFAULT NULL,
  `BC_DISCOUNT` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`AGR_OFFER_RLA_ID`),
  KEY `IDX_AGR_OFFER_RLA_H_01` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_operation_log` */

DROP TABLE IF EXISTS `agr_operation_log`;

CREATE TABLE `agr_operation_log` (
  `OPER_LOG_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) NOT NULL,
  `OWNER_ID` bigint(15) NOT NULL,
  `ACTION_NAME` varchar(30) DEFAULT NULL,
  `OPER_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `STAFF_NAME` varchar(80) DEFAULT NULL,
  `OPER_REASON` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`OPER_LOG_ID`),
  KEY `IDX_AGR_OPERATION_LOG_01` (`AGREEMENT_ID`,`OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议操作日志表';

/*Table structure for table `agr_par_pattern_rela` */

DROP TABLE IF EXISTS `agr_par_pattern_rela`;

CREATE TABLE `agr_par_pattern_rela` (
  `RELA_ID` bigint(15) NOT NULL,
  `AGR_CONTRACT_PARTY_ID` bigint(12) DEFAULT NULL,
  `PARTY_ENTITY_TYPE` varchar(3) DEFAULT NULL,
  `PARTY_ENTITY_ID` varchar(128) DEFAULT NULL COMMENT '如客户ID，partnerId',
  `PARTY_NAME` varchar(128) DEFAULT NULL,
  `PARTY_ENTITY_CODE` varchar(128) DEFAULT NULL COMMENT '客户编号，或者参与方的编码。\n如果是客户编码，对于DK，个人是CPR，企业是CVR',
  `PATTERN_ID` bigint(12) DEFAULT NULL,
  `PATTERN_NAME` varchar(128) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='AGR_PATTY_PAYMENT_PATTERN_RELA\n参与方代付规则表关系表';

/*Table structure for table `agr_par_pattern_rela_h` */

DROP TABLE IF EXISTS `agr_par_pattern_rela_h`;

CREATE TABLE `agr_par_pattern_rela_h` (
  `H_ID` bigint(15) NOT NULL COMMENT '历史表主健',
  `RELA_ID` bigint(15) NOT NULL,
  `AGR_CONTRACT_PARTY_ID` bigint(12) DEFAULT NULL,
  `PARTY_ENTITY_TYPE` varchar(3) DEFAULT NULL COMMENT '0 客户              1 代理商              2 其他              CODE_TYPE= AGR_PARTY_ENTITY_TYPE',
  `PARTY_ENTITY_ID` varchar(128) DEFAULT NULL COMMENT '如客户ID，partnerId',
  `PARTY_NAME` varchar(128) DEFAULT NULL,
  `PARTY_ENTITY_CODE` varchar(128) DEFAULT NULL COMMENT '客户编号，或者参与方的编码。              如果是客户编码，对于DK，个人是CPR，企业是CVR',
  `PATTERN_ID` bigint(12) DEFAULT NULL,
  `PATTERN_NAME` varchar(128) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参与方代付规则表关系历史表  按照租户分表';

/*Table structure for table `agr_party` */

DROP TABLE IF EXISTS `agr_party`;

CREATE TABLE `agr_party` (
  `AGR_CONTRACT_PARTY_ID` bigint(12) NOT NULL,
  `PARTY_ENTITY_ID` varchar(128) DEFAULT NULL COMMENT '如客户ID，partnerId',
  `PARTY_NAME` varchar(128) DEFAULT NULL,
  `PARTY_ENTITY_CODE` varchar(128) DEFAULT NULL COMMENT '客户编号，或者参与方的编码。\n如果是客户编码，对于DK，个人是CPR，企业是CVR',
  `PARTY_ENTITY_TYPE` varchar(3) DEFAULT NULL,
  `CUST_TYPE` varchar(3) DEFAULT NULL COMMENT '记录客户类型是集团还是个人 \n\n1 个人\n2 集团',
  `ADDRESS` varchar(256) DEFAULT NULL,
  `POSTCODE` varchar(128) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  `TAX_ID` varchar(128) DEFAULT NULL,
  `IS_DISPLAY_IN_AGR` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`AGR_CONTRACT_PARTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议参与方\n 包括owner benificial 代办人等';

/*Table structure for table `agr_party_agr_quary` */

DROP TABLE IF EXISTS `agr_party_agr_quary`;

CREATE TABLE `agr_party_agr_quary` (
  `AGR_PARTY_AGR_QUARY_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `PARTY_ROLE` varchar(3) DEFAULT NULL COMMENT '比如：\n1 Owner\n3 Beneficiaries',
  `PARTY_ENTITY_ID` bigint(15) DEFAULT NULL,
  `AGR_CREATION_TIME` datetime DEFAULT NULL COMMENT '记录合同创建时间，用于分表以保证分表月份和合同分表保持一致',
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `AGR_SOURCE` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`AGR_PARTY_AGR_QUARY_ID`),
  KEY `IDX_AGR_PARTY_AGR_QUARY_01` (`PARTY_ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参与方合同关系查询表\nAGR_PARTY_AGR_QUARY';

/*Table structure for table `agr_party_agr_quary_h` */

DROP TABLE IF EXISTS `agr_party_agr_quary_h`;

CREATE TABLE `agr_party_agr_quary_h` (
  `PARTY_AGR_QUARY_HIS_ID` bigint(12) NOT NULL,
  `AGR_PARTY_AGR_QUARY_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `PARTY_ROLE` varchar(3) DEFAULT NULL,
  `PARTY_ENTITY_ID` bigint(15) DEFAULT NULL,
  `AGR_CREATION_TIME` datetime DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `AGR_SOURCE` varchar(3) DEFAULT NULL,
  `AGR_VERSION_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`PARTY_AGR_QUARY_HIS_ID`),
  KEY `IDX_AGR_PARTY_AGR_QUARY_H_01` (`PARTY_ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_prod_offer_term` */

DROP TABLE IF EXISTS `agr_prod_offer_term`;

CREATE TABLE `agr_prod_offer_term` (
  `OFFERING_TERM_ID` bigint(12) NOT NULL,
  `PRODUCT_OFFERING_ID` varchar(32) DEFAULT NULL,
  `TERM_ID` bigint(12) DEFAULT NULL,
  `TERM_TITLE` varchar(1024) DEFAULT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `CONTENT` varchar(1024) DEFAULT NULL,
  `TERM_RULE_ID` bigint(12) DEFAULT NULL,
  `EFF_DATE` datetime DEFAULT NULL,
  `EXP_DATE` datetime DEFAULT NULL,
  `TERM_STATUS` varchar(3) DEFAULT NULL COMMENT '1 ture 0 false',
  `STATUS_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`OFFERING_TERM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Offer 的限制的条约或者条件。';

/*Table structure for table `agr_prod_term_rla` */

DROP TABLE IF EXISTS `agr_prod_term_rla`;

CREATE TABLE `agr_prod_term_rla` (
  `AGR_PROD_TERM_RLA_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `TERM_ID` bigint(12) DEFAULT NULL,
  `TERM_TITLE` varchar(1024) DEFAULT NULL,
  `TERM_TYPE` varchar(3) DEFAULT NULL,
  `TERM_VERSION_CODE` varchar(128) DEFAULT NULL,
  `EFF_DATE` datetime DEFAULT NULL,
  `EXP_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `TERM_CODE` varchar(128) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT '1',
  PRIMARY KEY (`AGR_PROD_TERM_RLA_ID`),
  KEY `IDX_AGR_PROD_TERM_RLA_01` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_prod_term_rla_h` */

DROP TABLE IF EXISTS `agr_prod_term_rla_h`;

CREATE TABLE `agr_prod_term_rla_h` (
  `AGR_PROD_TERM_RLA_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `OWNER_ID` bigint(15) DEFAULT NULL,
  `AGR_VERSION_ID` bigint(12) DEFAULT NULL,
  `TERM_ID` bigint(12) DEFAULT NULL,
  `TERM_TITLE` varchar(1024) DEFAULT NULL,
  `TERM_TYPE` varchar(3) DEFAULT NULL,
  `TERM_VERSION_CODE` varchar(128) DEFAULT NULL,
  `EFF_DATE` datetime DEFAULT NULL,
  `EXP_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `TERM_CODE` varchar(128) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT '1',
  PRIMARY KEY (`AGR_PROD_TERM_RLA_ID`),
  KEY `IDX_AGR_PROD_TERM_RLA_H_01` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_remind_medium_rla` */

DROP TABLE IF EXISTS `agr_remind_medium_rla`;

CREATE TABLE `agr_remind_medium_rla` (
  `AGR_REMINDER_MEDIUM_RLA_ID` bigint(12) NOT NULL,
  `REMINDER_ID` bigint(12) DEFAULT NULL,
  `MEDIUM_ID` varchar(32) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `STATUS_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`AGR_REMINDER_MEDIUM_RLA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='AGR_REMINDER_MEDIUM_RLA\n提醒工具类型';

/*Table structure for table `agr_reminder` */

DROP TABLE IF EXISTS `agr_reminder`;

CREATE TABLE `agr_reminder` (
  `REMINDER_ID` bigint(12) NOT NULL,
  `MONITOR_ID` bigint(12) DEFAULT NULL,
  `REMINDER_TYPE` varchar(3) DEFAULT NULL COMMENT '绝对时间，相对时间',
  `ABSOLUTE_REMINDER_TIME` datetime DEFAULT NULL COMMENT '提醒开始时间',
  `RELATIVE_REMINDER_TIME` bigint(12) DEFAULT NULL COMMENT '提醒相对时间差',
  `REMINDER_MODE` varchar(3) DEFAULT NULL COMMENT '直接提醒（媒介），间接提醒（事件）',
  `REMINDER_INTERVAL` bigint(12) DEFAULT NULL COMMENT '提醒间隔',
  `REMINDER_NUM` bigint(12) DEFAULT NULL,
  `STATUS_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`REMINDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='到期协议提醒';

/*Table structure for table `agr_rule_param_rela` */

DROP TABLE IF EXISTS `agr_rule_param_rela`;

CREATE TABLE `agr_rule_param_rela` (
  `RULE_PARAM_RELA_ID` bigint(12) NOT NULL,
  `MONITOR_RULE_ID` bigint(12) DEFAULT NULL,
  `PARAMETER_ID` bigint(12) DEFAULT NULL,
  `PARAM_TYPE` varchar(3) DEFAULT NULL COMMENT '参数在该规则中的类型\n0 监控指标类（需计算或从外部获取，如实际订购数，剩余合约期）\n1 定值参数（编辑器或界面实例化，如固定罚金，最小订购数）\n2 其他',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`RULE_PARAM_RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='规则使用参数';

/*Table structure for table `agr_rule_param_value` */

DROP TABLE IF EXISTS `agr_rule_param_value`;

CREATE TABLE `agr_rule_param_value` (
  `VALUE_ID` bigint(12) NOT NULL,
  `PARAMETER_ID` bigint(12) DEFAULT NULL,
  `AGR_RULE_RELA_ID` bigint(12) DEFAULT NULL,
  `VALUE` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='监控规则参数值';

/*Table structure for table `agr_rule_parameter` */

DROP TABLE IF EXISTS `agr_rule_parameter`;

CREATE TABLE `agr_rule_parameter` (
  `PARAMETER_ID` bigint(12) NOT NULL,
  `PARAMETER_CODE` varchar(128) DEFAULT NULL,
  `PARAMETER_NAME` varchar(128) DEFAULT NULL,
  `PARAM_INIT_TYPE` varchar(3) DEFAULT NULL COMMENT '参数初始类型,具体类型在为规则分配参数的时候确定,一般情况下保持一致\n0 监控指标类（需计算或从外部获取，如实际订购数，剩余合约期）\n1 定值参数（编辑器或界面实例化，如固定罚金，最小订购数）\n2 其他',
  `RULE_TYPE` varchar(3) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `PARAM_STATUS` varchar(3) DEFAULT NULL COMMENT '0 失效\n1 有效',
  `STATUS_TIME` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`PARAMETER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议监控规则\n后台配置表，数据初始化配置';

/*Table structure for table `agr_split_pattern_rla` */

DROP TABLE IF EXISTS `agr_split_pattern_rla`;

CREATE TABLE `agr_split_pattern_rla` (
  `AGR_SPLIT_PATTERN_RLA_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `ENTITY_ID` bigint(12) DEFAULT NULL,
  `LEGAL_ENTITY_NAME` varchar(128) DEFAULT NULL,
  `SPLIT_PATTERN_ID` varchar(128) DEFAULT NULL,
  `SPLIT_PATTERN_NAME` varchar(128) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`AGR_SPLIT_PATTERN_RLA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_split_pattern_rla_h` */

DROP TABLE IF EXISTS `agr_split_pattern_rla_h`;

CREATE TABLE `agr_split_pattern_rla_h` (
  `AGR_SPLIT_PATTERN_RLA_ID` bigint(12) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `AGR_VERSION_ID` bigint(12) DEFAULT NULL,
  `ENTITY_ID` bigint(12) DEFAULT NULL,
  `LEGAL_ENTITY_NAME` varchar(128) DEFAULT NULL,
  `SPLIT_PATTERN_ID` varchar(128) DEFAULT NULL,
  `SPLIT_PATTERN_NAME` varchar(128) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`AGR_SPLIT_PATTERN_RLA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_status` */

DROP TABLE IF EXISTS `agr_status`;

CREATE TABLE `agr_status` (
  `AGR_STATUS_ID` bigint(12) NOT NULL,
  `STATUS_NODE_TYPE` varchar(3) DEFAULT NULL COMMENT '10 起始节点\n20 其他节点\n30 结束节点',
  `DEFAULT_STATUS` varchar(3) DEFAULT NULL COMMENT '表示该状态是否是默认状态\n默认状态指所有没有制定状态定义的Level使用的状态\n这类状态Level_ID为空\n非默认状态值有状态定义的Level的特有状态，如（Frame，Product，Subscription）的状态\n0 否 \n1 是\n默认否',
  `STATUS_NAME` varchar(50) DEFAULT NULL COMMENT '保存国际化编码',
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`AGR_STATUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议状态:  now preactivated, active, before expiration, renewed, expired, terminated';

/*Table structure for table `agr_status_transfer` */

DROP TABLE IF EXISTS `agr_status_transfer`;

CREATE TABLE `agr_status_transfer` (
  `AGR_STATUS_TRANSFER_ID` bigint(12) NOT NULL,
  `FROM_STATUS_ID` bigint(12) DEFAULT NULL,
  `TO_STATUS_ID` bigint(12) DEFAULT NULL,
  `ACTION` varchar(30) DEFAULT NULL,
  `RULE` varchar(256) DEFAULT NULL COMMENT '用来扩展迁移规则，暂不启用',
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  `AGR_LEVEL_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`AGR_STATUS_TRANSFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议状态迁移定义表';

/*Table structure for table `agr_temp_catalog_rla` */

DROP TABLE IF EXISTS `agr_temp_catalog_rla`;

CREATE TABLE `agr_temp_catalog_rla` (
  `TEMPLATE_CATALOG_RLA_ID` bigint(12) NOT NULL,
  `AGREEMENT_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `OFFERING_CATALOG_ID` varchar(32) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `STATUS_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`TEMPLATE_CATALOG_RLA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议模板与销售品目录关系\nAGR_TEMPLATE_CATALOG_RLA';

/*Table structure for table `agr_temp_field_rla` */

DROP TABLE IF EXISTS `agr_temp_field_rla`;

CREATE TABLE `agr_temp_field_rla` (
  `FIELD_RLA_ID` bigint(12) NOT NULL,
  `METADATA_FIELD_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL COMMENT '产品，销售品，',
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`FIELD_RLA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同模版元数据字段配置关系';

/*Table structure for table `agr_temp_offer_rla` */

DROP TABLE IF EXISTS `agr_temp_offer_rla`;

CREATE TABLE `agr_temp_offer_rla` (
  `TEMPLATE_OFFERING_ID` bigint(12) NOT NULL,
  `AGREEMENT_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `OFFERING_ID` varchar(32) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `STATUS_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`TEMPLATE_OFFERING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议模板产品关系\nAGR_TEMPLATE_OFFER_RLA';

/*Table structure for table `agr_temp_prodline_rla` */

DROP TABLE IF EXISTS `agr_temp_prodline_rla`;

CREATE TABLE `agr_temp_prodline_rla` (
  `TEMPLATE_PROD_LINE_RLA_ID` bigint(12) NOT NULL,
  `AGREEMENT_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `PROD_LINE_ID` varchar(32) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `STATUS_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`TEMPLATE_PROD_LINE_RLA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='AGR_TEMPLATE_PROD_LINE_RLA\n协议模板与产品线关系';

/*Table structure for table `agr_temp_rule_rela` */

DROP TABLE IF EXISTS `agr_temp_rule_rela`;

CREATE TABLE `agr_temp_rule_rela` (
  `TEMP_RULE_RELA_ID` bigint(12) NOT NULL,
  `MONITOR_RULE_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `MONITOR_OBJECT` varchar(3) DEFAULT NULL COMMENT '0 OFFER/协议\n1 产品\n默认 OFFER/合同',
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`TEMP_RULE_RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议监控规则';

/*Table structure for table `agr_temp_termtemp_rla` */

DROP TABLE IF EXISTS `agr_temp_termtemp_rla`;

CREATE TABLE `agr_temp_termtemp_rla` (
  `RELA_ID` bigint(12) NOT NULL,
  `AGREEMENT_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  `TERM_CODE` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='AGR_AGRTEMPLATE_TERMTEMPLATE_RLA\n维护协议模版和条款模版关系';

/*Table structure for table `agr_template` */

DROP TABLE IF EXISTS `agr_template`;

CREATE TABLE `agr_template` (
  `AGREEMENT_TEMPLATE_ID` bigint(12) NOT NULL,
  `AGR_TYPE_ID` bigint(12) DEFAULT NULL,
  `TEMPLATE_CODE` varchar(128) DEFAULT NULL,
  `TEMPLATE_STATUS` varchar(3) DEFAULT NULL COMMENT '10A 草稿 Draft \n10C 修订稿\n10E 提交审批 Submitted \n10G 审批通过 Approved \n10X 失效 InActive\n\nCODE_TYPE=AGR_TEMPLATE_STATUS',
  `STATUS_TIME` datetime DEFAULT NULL,
  `UP_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_TEMPLATE_NAME` varchar(128) DEFAULT NULL,
  `AGR_LEVEL_ID` bigint(12) DEFAULT NULL,
  `AGR_DOC_URL` varchar(1024) DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `ORGANIZATION_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  `IS_ADDENDUM` bigint(1) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `LANGUAGE` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`AGREEMENT_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议模板';

/*Table structure for table `agr_template_h` */

DROP TABLE IF EXISTS `agr_template_h`;

CREATE TABLE `agr_template_h` (
  `AGREEMENT_TEMPLATE_H_ID` bigint(12) NOT NULL,
  `AGR_VERSION_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `AGR_TYPE_ID` bigint(12) DEFAULT NULL,
  `TEMPLATE_CODE` varchar(128) DEFAULT NULL,
  `TEMPLATE_STATUS` varchar(3) DEFAULT NULL COMMENT '10A 草稿 Draft \n10C 修订稿\n10E 提交审批 Submitted \n10G 审批通过 Approved \n10X 失效 InActive\n\nCODE_TYPE=AGR_TEMPLATE_STATUS',
  `STATUS_TIME` datetime DEFAULT NULL,
  `UP_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `AGREEMENT_TEMPLATE_NAME` varchar(128) DEFAULT NULL,
  `AGR_LEVEL_ID` bigint(12) DEFAULT NULL,
  `AGR_DOC_URL` varchar(1024) DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `ORGANIZATION_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  `IS_ADDENDUM` bigint(1) DEFAULT NULL,
  `LANGUAGE` varchar(3) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`AGREEMENT_TEMPLATE_H_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议模板历史记录';

/*Table structure for table `agr_template_ver` */

DROP TABLE IF EXISTS `agr_template_ver`;

CREATE TABLE `agr_template_ver` (
  `AGR_VERSION_ID` bigint(12) NOT NULL,
  `AGREEMENT_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `ACTION_TYPE` varchar(3) DEFAULT NULL COMMENT '增加，修改，删除',
  `VERSION_CODE` varchar(128) DEFAULT NULL,
  `MODIFY_REASON` varchar(1024) DEFAULT NULL,
  `MODIFY_CONTENT` varchar(1024) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  `IS_NEWVER` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`AGR_VERSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议模板版本';

/*Table structure for table `agr_term_offer_rla` */

DROP TABLE IF EXISTS `agr_term_offer_rla`;

CREATE TABLE `agr_term_offer_rla` (
  `TERM_OFFER_RLA_ID` bigint(12) NOT NULL,
  `TERM_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  `OFFER_NAME` varchar(1000) DEFAULT NULL,
  `OFFER_TYPE` varchar(50) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`TERM_OFFER_RLA_ID`),
  KEY `IDX_AGR_TERM_OFFER_RLA_01` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_term_temp_item_rla` */

DROP TABLE IF EXISTS `agr_term_temp_item_rla`;

CREATE TABLE `agr_term_temp_item_rla` (
  `TERM_ITEM_ID` bigint(12) NOT NULL,
  `AGREEMENT_ITEM_ID` bigint(12) DEFAULT NULL,
  `TERM_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL COMMENT '描述',
  `EFF_DATE` datetime DEFAULT NULL,
  `EXP_DATE` datetime DEFAULT NULL,
  `STATUS_DATE` datetime DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`TERM_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议条款模板协议项关系\nAGR_TERM_TEMPLATE_ITEM_RLA';

/*Table structure for table `agr_term_template` */

DROP TABLE IF EXISTS `agr_term_template`;

CREATE TABLE `agr_term_template` (
  `TERM_TEMPLATE_ID` bigint(12) NOT NULL,
  `UP_TERM_TEMPLATE_ID` bigint(12) DEFAULT NULL,
  `AGR_DOC_URL` varchar(1024) DEFAULT NULL,
  `TERM_TYPE` varchar(3) DEFAULT NULL COMMENT '自愿立约条款，目的条款，权利条款，义务条款，验收条款，交付条款，支付条款，保密条款，保证条款，声明确认条款，违约责任条款，合同变更、解除、终止、续展条款，担保条款，不可抗力条款，通知条款，其它条款，生效条款，有效期限条款，争议解决条款，解释条款',
  `TERM_CODE` varchar(128) DEFAULT NULL,
  `TERM_TITLE` varchar(128) DEFAULT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `EFF_DATE` datetime DEFAULT NULL,
  `EXP_DATE` datetime DEFAULT NULL,
  `TEMPLATE_STATUS` varchar(3) DEFAULT NULL COMMENT '10A 有效 10X 失效',
  `STATUS_DATE` datetime DEFAULT NULL,
  `OPERATOR_ID` bigint(12) DEFAULT NULL,
  `ORGANIZATION_ID` bigint(12) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  `VERSION_CODE` varchar(128) DEFAULT NULL,
  `IS_HISTORY` bigint(1) DEFAULT NULL,
  `OWNER_TYPE` varchar(3) DEFAULT NULL,
  `IS_NEWVER` varchar(3) DEFAULT NULL,
  `AGR_LEVEL_ID` bigint(12) DEFAULT NULL,
  `AGR_LEVEL` varchar(120) DEFAULT NULL,
  `OFFER_ID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`TERM_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议中对协议内容进行限制的条约或者条件的模板。\nAspects of the Agreement not formally specified elsewhere in the Agreement and that cannot be captured elsewhere in a formal notation, or automatically monitored and require a more human level of management.';

/*Table structure for table `agr_text_info` */

DROP TABLE IF EXISTS `agr_text_info`;

CREATE TABLE `agr_text_info` (
  `AGT_TEXT_INFO_ID` bigint(12) NOT NULL,
  `OWNER_ID` bigint(15) NOT NULL,
  `BUSI_OBJ_TYPE` varchar(3) DEFAULT NULL COMMENT '业务对象类型\n\n1 合同模版\n3 合同\n\n默认为合同',
  `BUSI_OBJ_ID` varchar(128) DEFAULT NULL COMMENT '关联对象ID\n如合同Id 合同模版ID',
  `TEXT_SEQ` bigint(12) DEFAULT NULL COMMENT '如果一个大文本的内容拆散到若干条记录中，需要记录这些记录的顺序',
  `CONTENT1` varchar(1024) DEFAULT NULL,
  `CONTENT2` varchar(1024) DEFAULT NULL,
  `CONTENT3` varchar(1024) DEFAULT NULL,
  `CONTENT4` varchar(1024) DEFAULT NULL,
  `CONTENT5` varchar(1024) DEFAULT NULL,
  `CONTENT6` varchar(1024) DEFAULT NULL,
  `CONTENT7` varchar(1024) DEFAULT NULL,
  `CONTENT8` varchar(1024) DEFAULT NULL,
  `CONTENT9` varchar(1024) DEFAULT NULL,
  `CONTENT10` varchar(1024) DEFAULT NULL,
  `CONTENT11` varchar(1024) DEFAULT NULL,
  `CONTENT12` varchar(1024) DEFAULT NULL,
  `CONTENT13` varchar(1024) DEFAULT NULL,
  `CONTENT14` varchar(1024) DEFAULT NULL,
  `CONTENT15` varchar(1024) DEFAULT NULL,
  `AGR_CREATION_TIME` datetime DEFAULT NULL COMMENT '记录合同创建时间，用于分表以保证分表月份和合同分表保持一致',
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`AGT_TEXT_INFO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `agr_type` */

DROP TABLE IF EXISTS `agr_type`;

CREATE TABLE `agr_type` (
  `AGR_TYPE_ID` bigint(12) NOT NULL,
  `UP_AGR_TYPE_ID` bigint(12) DEFAULT NULL,
  `AGR_TYPE_NAME` varchar(128) DEFAULT NULL,
  `TREE_CODE` varchar(128) DEFAULT NULL,
  `AGR_TYPE_CODE` varchar(30) DEFAULT NULL,
  `BUILD_IN` varchar(3) DEFAULT NULL COMMENT '内置参数表示系统初始化类型，和系统逻辑相关，不允许修改删除\n0 No\n1 Yes',
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `TYPE_STATUS` varchar(3) DEFAULT NULL COMMENT '0 失效\n1 有效',
  `STATUS_DATE` datetime DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_OP_ID` bigint(12) DEFAULT NULL,
  `CREATE_ORG_ID` bigint(12) DEFAULT NULL,
  `OP_ID` bigint(12) DEFAULT NULL,
  `ORG_ID` bigint(12) DEFAULT NULL,
  `DONE_DATE` datetime DEFAULT NULL,
  `DONE_CODE` varchar(30) DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL COMMENT '0 失效 1 有效',
  PRIMARY KEY (`AGR_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协议类型包括：\n代理商协议:\n\n合作协议:\n\n订购协议: IDC租用协议,光纤租用协议，政企协议租机协议，租用类业务协议，行业应用合作协议，电路租用协议，互联网专线租用协议，呼叫中心合作合同，网站及设施建设协议，总机服务业务合作）\n\n分期付款协议:\n...\n\n\n编码时注意 前100的编码分配给内置的协议类型 如99 割接协议\n后续的编码才能作为可维护的编码';

/*Table structure for table `agr_usr_product_rela` */

DROP TABLE IF EXISTS `agr_usr_product_rela`;

CREATE TABLE `agr_usr_product_rela` (
  `RELA_ID` bigint(15) NOT NULL,
  `AGREEMENT_ID` bigint(12) DEFAULT NULL,
  `CUSTOMER_ID` bigint(15) DEFAULT NULL,
  `USER_ID` varchar(30) DEFAULT NULL,
  `PRODUCT_ID` varchar(30) DEFAULT NULL,
  `CYCLE_UNIT` bigint(12) DEFAULT NULL COMMENT '账期，如一个月的账期，则在此记录1',
  `CYCLE_TYPE` varchar(30) DEFAULT NULL COMMENT '账期单位\n5 月',
  `FIRST_BILL_DATE` varchar(128) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `STATE` bigint(1) DEFAULT NULL,
  PRIMARY KEY (`RELA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同用户产品表 按照客户ID分表\n每次创建该记录是，还需要保存账期信息';

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
