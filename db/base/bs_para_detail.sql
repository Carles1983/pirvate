/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','AGR_XDOC_SERVER_CFG','EDITOR_URL','xdoc设计器地址','http://10.1.239.45:12000/xdoc/xdoc?_func=builder',NULL,NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','AGR_XDOC_SERVER_CFG','SERVER_APP_URL','xdoc服务应用地址','http://10.1.239.45:12000/xdoc/xdoc',NULL,NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','AGR_XDOC_SERVER_CFG','SERVER_URL','xdoc服务地址','http://10.1.239.45:12000/xdoc',NULL,NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','AGR_XDOC_SERVER_CFG','KEY','xdoc认证key','ded0974c17f44cb49d153eb51065becc',NULL,NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','FASTDFS','CONFIG','tracker_servers 配置','10.1.239.46:22122','fastdfs.tracker_servers',NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','FASTDFS','CONFIG','connect_timeout_in_seconds 配置','2','fastdfs.connect_timeout_in_seconds',NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','FASTDFS','CONFIG','network_timeout_in_seconds 配置','30','fastdfs.network_timeout_in_seconds',NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','FASTDFS','CONFIG','charset 配置','ISO8859-1','fastdfs.charset',NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','FASTDFS','CONFIG','http_anti_steal_token 配置','no','fastdfs.http_anti_steal_token',NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','FASTDFS','CONFIG','http_secret_key 配置','FastDFS1234567890','fastdfs.http_secret_key',NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','FASTDFS','CONFIG','http_tracker_http_port 配置','8080','fastdfs.http_tracker_http_port',NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','FASTDFS','CONFIG','tracker_ngnix_addr 配置','10.1.239.46','TRACKER_NGNIX_ADDR',NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','FASTDFS','CONFIG','tracker_ngnix_port 配置',':8300','TRACKER_NGNIX_PORT',NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','ONGOING_CONFLICT_ORDER','200000000001','CUG New Conection','200000000001',NULL,NULL,NULL,NULL,'CUG订购','U',NULL,NULL,'在途单冲突配置');
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','ONGOING_CONFLICT_ORDER','191002011001','Change Offer','191001006010',NULL,NULL,NULL,NULL,'Change Number','U',NULL,NULL,'在途单冲突配置');
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','ONGOING_CONFLICT_ORDER','191002011001','Change Offer','191001007010',NULL,NULL,NULL,NULL,'Change SimCard','U',NULL,NULL,'在途单冲突配置');
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','ONGOING_CONFLICT_ORDER','191001007010','Change SimCard','191002011001',NULL,NULL,NULL,NULL,'Change Offer','U',NULL,NULL,'在途单冲突配置');
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','ONGOING_CONFLICT_ORDER','191001007010','Change SimCard','191002011003',NULL,NULL,NULL,NULL,'Subscribe AddOn','U',NULL,NULL,'在途单冲突配置');
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','ONGOING_CONFLICT_ORDER','191000001017','固话移机','191000001017',NULL,NULL,NULL,NULL,'固话移机','U',NULL,NULL,'在途单冲突配置');
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','ONGOING_CONFLICT_ORDER','191000001018','宽带移机','191000001018',NULL,NULL,NULL,NULL,'宽带移机','U',NULL,NULL,'在途单冲突配置');
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','ONGOING_CONFLICT_ORDER','191001004201','停机','191001004201',NULL,NULL,NULL,NULL,'停机','U',NULL,NULL,'在途单冲突配置');
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','ONGOING_CONFLICT_ORDER','191001004202','复机','191001004202',NULL,NULL,NULL,NULL,'复机','U',NULL,NULL,'在途单冲突配置');
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','BATCH_DEFAULT_PARA','ThreadNum','处理线程数量','10',NULL,NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','BATCH_DEFAULT_PARA','BatchNum','每批提交数据量','100',NULL,NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','BATCH_DEFAULT_PARA','ErrPath','处理失败备份路径','/uplaod/batchtask/err',NULL,NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','BATCH_DEFAULT_PARA','Split','分隔符','\\|',NULL,NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','BATCH_STARTPACK','HeadLines','文件头行数','1',NULL,NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','BATCH_STARTPACK','LineMapping','文件行字段映射','BILL_ID:$0|ICCID:$1|IMSI:$2|OFFER_INS_ID:$3',NULL,NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','BATCH_STARTPACK','LineParser','解析文件处理类','com.asiainfo.crm.so.order.service.busi.interfaces.IOrdBatchStartpackParserSV',NULL,NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','BATCH_STARTPACK','DealClass','数据处理类','com.ai.crm.omnic.service.interfaces.IOrdBatchStartpackExecSV',NULL,NULL,NULL,NULL,NULL,'U',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','ONGOING_CONFLICT_ORDER','191000008001','家庭网订购','191000008001',NULL,NULL,NULL,NULL,'家庭网订购','U',NULL,NULL,'在途单冲突配置');
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','ONGOING_CONFLICT_ORDER','191000008004','家庭网退订','191000008004',NULL,NULL,NULL,NULL,'家庭网退订','U',NULL,NULL,'在途单冲突配置');
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL);
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','ONGOING_CONFLICT_ORDER','191000008003','家庭网成员删除','191000008003',NULL,NULL,NULL,NULL,'家庭网成员删除','U',NULL,NULL,'在途单冲突配置');
insert into `bs_para_detail` (`REGION_ID`, `PARA_TYPE`, `PARA_CODE`, `PARA_NAME`, `PARA1`, `PARA2`, `PARA3`, `PARA4`, `PARA5`, `PARA_DESC`, `STATE`, `OP_ID`, `STATE_DATE`, `REMARKS`) values('X','ONGOING_CONFLICT_ORDER','200000000001','CUG New Conection','200000000001',NULL,NULL,NULL,NULL,'CUG订购','U',NULL,NULL,'在途单冲突配置');
