/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36-82.0-log 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

insert into `cfg_http_mapping` (`MAPPING_ID`, `CFG_HTTP_CODE`, `MAPPING_NAME`, `MAPPING_VALUE`, `STATE`, `REMARKS`) values('1','DEFAULT','server.thread.minThreads','30','U','Jetty线程池的minThreads，即Jetty Server的最小线程数，默认配置为30');
insert into `cfg_http_mapping` (`MAPPING_ID`, `CFG_HTTP_CODE`, `MAPPING_NAME`, `MAPPING_VALUE`, `STATE`, `REMARKS`) values('2','DEFAULT','server.thread.maxThreads','50','U','Jetty线程池的maxThreads，即Jetty Server的最大线程数，默认配置为50');
insert into `cfg_http_mapping` (`MAPPING_ID`, `CFG_HTTP_CODE`, `MAPPING_NAME`, `MAPPING_VALUE`, `STATE`, `REMARKS`) values('3','DEFAULT','server.connector.acceptors','3','U','Jetty NIO的接受线程数，即Jetty Server的NIO连接接受的线程数量，默认配置为3，接受线程并发送到线程池');
insert into `cfg_http_mapping` (`MAPPING_ID`, `CFG_HTTP_CODE`, `MAPPING_NAME`, `MAPPING_VALUE`, `STATE`, `REMARKS`) values('4','DEFAULT','server.connector.host','0.0.0.0','U','Jetty NIO的host，默认配置为0.0.0.0，绑定到所有IP');
insert into `cfg_http_mapping` (`MAPPING_ID`, `CFG_HTTP_CODE`, `MAPPING_NAME`, `MAPPING_VALUE`, `STATE`, `REMARKS`) values('5','DEFAULT','server.connector.reuseAddress','false','U','Jetty NIO的Socket是否使用SO_REUSEADDR模式打开。含义为是否支持地址重用，默认配置为false不支持，地址重用容易造成地址绑定');
insert into `cfg_http_mapping` (`MAPPING_ID`, `CFG_HTTP_CODE`, `MAPPING_NAME`, `MAPPING_VALUE`, `STATE`, `REMARKS`) values('6','DEFAULT','server.context.path','/','U','作为org.mortbay.jetty.servlet.Context的配置，用于构造函数。默认配置为/，注册到/路径上');
insert into `cfg_http_mapping` (`MAPPING_ID`, `CFG_HTTP_CODE`, `MAPPING_NAME`, `MAPPING_VALUE`, `STATE`, `REMARKS`) values('7','DEFAULT','server.context.session','0','U','作为org.mortbay.jetty.servlet.Context的配置，用于构造函数。0为不使用session,1为使用session，默认配置为0，不使用session');
insert into `cfg_http_mapping` (`MAPPING_ID`, `CFG_HTTP_CODE`, `MAPPING_NAME`, `MAPPING_VALUE`, `STATE`, `REMARKS`) values('10090001','CRM_CI_FORUCPEVENTSWITCH_HTTP','http.servlet[/ci/switch]','com.asiainfo.crm.ci.inter.http.AtomEventFireCfgServlet','U','客户交互接受UCP开关服务Servlet');
insert into `cfg_http_mapping` (`MAPPING_ID`, `CFG_HTTP_CODE`, `MAPPING_NAME`, `MAPPING_VALUE`, `STATE`, `REMARKS`) values('10090002','CRM_CI_FORUCPEVENTSWITCH_HTTP','server.connector.port','46000','U','客户交互接受UCP开关服务端口');
insert into `cfg_http_mapping` (`MAPPING_ID`, `CFG_HTTP_CODE`, `MAPPING_NAME`, `MAPPING_VALUE`, `STATE`, `REMARKS`) values('30000001','UCP_CC_DISTRIBUTEEVENT_HTTP','http.servlet[/ucp/send]','com.ailk.crm.msm.ead.http.EADServelet','U','UCP事件采集以及分发');
insert into `cfg_http_mapping` (`MAPPING_ID`, `CFG_HTTP_CODE`, `MAPPING_NAME`, `MAPPING_VALUE`, `STATE`, `REMARKS`) values('30000002','UCP_CC_DISTRIBUTEEVENT_HTTP','server.connector.port','46400','U','端口');
insert into `cfg_http_mapping` (`MAPPING_ID`, `CFG_HTTP_CODE`, `MAPPING_NAME`, `MAPPING_VALUE`, `STATE`, `REMARKS`) values('30000003','UCP_CC_HUMANTASKDRIVER_HTTP','http.servlet[/ucp/drive]','com.ailk.crm.msm.bpm.http.humanTaskDriverServlet','U','UCP人工回单接口');
insert into `cfg_http_mapping` (`MAPPING_ID`, `CFG_HTTP_CODE`, `MAPPING_NAME`, `MAPPING_VALUE`, `STATE`, `REMARKS`) values('30000004','UCP_CC_HUMANTASKDRIVER_HTTP','server.connector.port','46401','U','端口');
