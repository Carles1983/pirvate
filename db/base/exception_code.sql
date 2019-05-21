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

/*Data for the table `exception_code` */

insert  into `exception_code`(`EXCEPTION_CODE_TYPE`,`EXCEPTION_PARENT_CODE`,`DESCRIPTION`,`RES_KEY`) values ('400000000','4000','创建异常','be.com.0000'),('400000001','4000','对象不存在','be.com.0001'),('400000003','4000','参数异常','be.com.0003'),('400000004','4000','业务对象异常','be.com.0004'),('400000005','4000','系统初始化或其他场景抛出的异常','be.com.0005'),('400000006','4000','对象存在','be.com.0006'),('400000007','4000','对象已存在','be.com.0007'),('400000008','4000','通过指定条件未查询到结果集','be.com.0008'),('400000009','4000','输入参数为空','be.com.0009'),('400000010','4000','参数为空','be.com.0010'),('400000012','4000','查询BS_I18N_RESOURCE出错','be.com.0012'),('400000013','4000','查询BS_STATIC_DATA出错','be.com.0013'),('400000014','4000','查询REDIS中数据时传入参数不能为空','be.com.0014'),('400000015','4000','query EXCEPTION_CODE by errorCode and language from redis failed. errorCode : {0}, language : {1}','be.com.0015'),('400000016','4000','通知模版获取异常','be.com.0016'),('400000017','4000','密码效验不匹配','be.com.0017'),('400000018','4000','验证码生成失败','be.com.0018'),('400000019','4000','不是数字类型','be.com.0019'),('400000020','4000','获取REDIS中的BS_PARA_DETAIL数据出错','be.com.0020'),('400000021','4000','登录已过期','be.com.0021'),('400000022','4000','执行操作超时异常','be.com.0022'),('400000023','4000','老密码效验不匹配','be.com.0023'),('400000027','4000','不允许switch','be.common.0027'),('400010000','4000','查询结果超过正常数','be.eshop.0000'),('400010001','4000','用户不存在','be.eshop.0001'),('400010002','4000','数据不存在','be.eshop.0002'),('400010006','4000','匿名购物车','be.eshop.0006'),('400010007','4000','购物车不存在','be.eshop.0007'),('400010008','4000','购物车状态有误','be.eshop.0008'),('400010009','4000','营业员客户不对应','be.eshop.0009'),('400010010','4000','购物车为空','be.eshop.0010'),('400010011','4000','offer失效','be.eshop.0011'),('400010012','4000','需要设置号码','be.eshop.0012'),('400010013','4000','需要设置安装地址','be.eshop.0013'),('400010014','4000','没有customerID','be.eshop.0014'),('400010015','4000','客户资料不完整','be.eshop.0015'),('400010016','4000','需要支付方式-现金支付','be.eshop.0016'),('400010017','4000','需要支付方式-按月支付','be.eshop.0017'),('400010018','4000','缓存中没有viewBaseket','be.eshop.0018'),('400010019','4000','客户不存在','be.eshop.0019'),('400010021','4000','购物车订单不存在','be.eshop.0021'),('400010022','4000','购物车订单状态有误','be.eshop.0022'),('400010023','4000','创建order订单失败','be.eshop.0023'),('400010024','4000','创建账户失败','be.eshop.0024'),('400010025','4000','需要设置物流地址','be.eshop.0025'),('400010026','4000','购物车项不存在','be.eshop.0026'),('400010027','4000','购物车项和购物车不匹配','be.eshop.0027'),('400010028','4000','号码预占错误','be.eshop.0028'),('400010029','4000','构造shop订单失败','be.eshop.0029'),('400010030','4000','customerCode不存在','be.eshop.0030'),('400010031','4000','不是匿名购物车','be.eshop.0031'),('400010032','4000','参数不合法Parameter not legal','be.eshop.0032'),('400010034','4000','不允许修改No modification is allowed','be.eshop.0034'),('400010035','4000','不允许删除','be.eshop.0035'),('400010036','4000','Offer不存在','be.eshop.0036'),('400010037','4000','Offer信息错误','be.eshop.0037'),('400010038','4000','发送购物车失败','be.eshop.0038'),('400010039','4000','addon设备添加购物车必须要parentItemId','be.eshop.0039'),('400010040','4000','购物车项状态有误','be.eshop.0040'),('400010041','4000','安装地址能力失效，请重新选择地址能力','be.eshop.0041'),('400010042','4000','账户余额不足','be.eshop.0042'),('400010043','4000','客户购物车不对应','be.eshop.0043'),('400010044','4000','用户名已存在','be.eshop.0044'),('400010045','4000','订单正在处理','be.eshop.0045'),('400010046','4000','购物车没有此购物车项','be.eshop.0046'),('400010047','4000','没有业务类型','be.eshop.0047'),('400010048','4000','需要设置SIM卡号','be.eshop.0048'),('400010049','4000','验证码已失效','be.eshop.0049'),('400010050','4000','登录账号被锁定','be.eshop.0050'),('400010051','4000','用户已销户','be.eshop.0051'),('400010052','4000','页面操作超时','be.eshop.0052'),('400010053','4000','The password must include two of the letters, Numbers, and special symbols.','be.eshop.0053'),('400010054','4000','Password length 6-16 bits.','be.eshop.0054'),('400010055','4000','The password cannot contain user name information.','be.eshop.0055'),('400010056','4000','需要设置安装时间','be.eshop.0056'),('400010057','4000','该商品无法直接购买','be.eshop.0057'),('400010058','4000','库存不足','be.eshop.0058'),('400010059','4000','无法设置该配送方式','be.eshop.0059'),('400010060','4000','需要设置IMEI','be.eshop.0060'),('400010061','4000','','be.eshop.0061'),('400020000','4000','当前操作包含管理停机，并且当前用户状态为预销户或者销户状态，不可停机','be.order.0000'),('400020001','4000','当前用户状态为不可用状态，不可停机','be.order.0001'),('400020002','4000','当前操作包含管理开机，并且当前用户状态为预销户或者销户状态，不可开机','be.order.0002'),('400020003','4000','当前用户为非停机状态，不可开机','be.order.0003'),('400020004','4000','订单冲突','be.order.0004'),('400020006','4000','用户有订单不完整','be.order.0006'),('400020007','4000','用户状态为预销或者实销状态','be.order.0007'),('400020008','4000','用户在合约期','be.order.0008'),('400020009','4000','用户不存在','be.order.0009'),('400020010','4000','用户存在欠费','be.order.0010'),('400020011','4000','用户密码错误','be.order.0011'),('400020012','4000','入参不合法','be.order.0012'),('400020013','4000','获取不到对应的配置数据','be.order.0013'),('400020014','4000','用户在停机状态','be.order.0014'),('400020015','4000','offer实例状态错误','be.order.0015'),('400020016','4000','offer实例不存在','be.order.0016'),('400020017','4000','用户在当前状态{[0]}下不可定购offer{[1]}','be.order.0017'),('400020018','4000','到期时间不可为空','be.order.0018'),('400020019','4000','原到期时间不可为空','be.order.0019'),('400020020','4000','用户状态不是预销','be.order.0020'),('400020021','4000','服务密码错误','be.order.0021'),('400020022','4000','AgentView订单查询时间超过可查询月份数','be.order.0022'),('400020023','4000','AgentView订单查询查询条件错误','be.order.0023'),('400020024','4000','没有停复机状态信息','be.order.0024'),('400020025','4000','有效周期内有过关操作历史，所以不能进行关操作','be.order.0025'),('4000200250','4000','根据套餐编号{offerId},操作类型{operType}找不到业务编码','be.order.0050'),('400020026','4000','找不到用户主offer信息','be.order.0026'),('400020027','4000','新客户与offer不兼容','be.order.0027'),('400020028','4000','新老客户不能相同','be.order.0028'),('400020029','4000','根据套餐编号{offerId}获取UpItemFeature为空,无法获取权值信息','be.order.0029'),('400020030','4000','weight selected {weight} is not between weight section [{weightMin}, {weightMax}]','be.order.0030'),('400020031','4000','Offer的状态不存在','be.order.0031'),('400020032','4000','根据用户编号{userId}和套餐编号{offerId}，查询不到用户订购的套餐实例信息','be.order.0032'),('400020033','4000','套餐包内的套餐{offerId}不允许单独退订','be.order.0033'),('400020034','4000','套餐{offerId}是套餐{relatedOfferId}的连带必选套餐,不许单独退订','be.order.0034'),('400020035','4000','根据用户号码{billId}不能查询到用户实例信息','be.order.0035'),('400020036','4000','根据用户号码{billId},套餐ID{offerId}获取不到用户实例','be.order.0036'),('400020037','4000','套餐{offerId}变更内容为空,无法受理','be.order.0037'),('400020038','4000','根据套餐编号{offerId}查询不到连带的增值套餐','be.order.0038'),('400020039','4000','根据用户号码{userId}和套餐实例编号{offerId}查询不到连带套餐实例信息','be.order.0039'),('400020040','4000','套餐{offerId}已订购，不能新增','be.order.0040'),('400020041','4000','套餐{offerId}是必选套餐，不能删除','be.order.0041'),('400020042','4000','未订购套餐{offerId}，不允许删除','be.order.0042'),('400020043','4000','无法识别的套餐{offerId}的变更操作{operType}','be.order.0043'),('400020044','4000','根据套餐编号{offerId}找不到对应的套餐信息','be.order.0044'),('400020045','4000','根据用户号码{billId}和套餐编号{offerId}找不到对应的用户套餐实例信息','be.order.0045'),('400020047','4000','根据套餐实例编号{instOfferId}找不到对应的套餐实例信息','be.order.0047'),('400020048','4000','根据客户订单{customerOrderId}在找不到客户订单明细信息','be.order.0048'),('400020049','4000','根据用户号码{billId}找不到用户实例信息','be.order.0049'),('400020051','4000','客户订单{customerOrderId}的创建时间为空，订单转竣工表失败','be.order.0051'),('400020052','4000','根据用户编号{userId}找不到套餐实例信息','be.order.0052'),('400020053','4000','根据用户编号{userId}找不到账务实例信息','be.order.0053'),('400020054','4000','订单无法修改','be.order.0054'),('400020055','4000','OSS已提单，订单无法修改','be.order.0055'),('400020056','4000','拆机无法修改地址','be.order.0056'),('400020058','4000','群组成员数量已达上限','be.order.0058'),('400020061','4000','订单已撤单','be.order.0061'),('400020062','4000','订单OSS侧已处理，不能进行撤单','be.order.0062'),('400020063','4000','订单物流侧已处理，不能进行撤单','be.order.0063'),('400020064','4000','订单已完成','be.order.0064'),('400020065','4000','订单已转历史','be.order.0065'),('400020066','4000','订单正在处理中','be.order.0066'),('400020067','4000','撤单失败','be.order.0067'),('400020068','4000','系统异常，获取不到数据','be.order.0068'),('400020069','4000','根据订单查询不到支付渠道信息','be.order.0069'),('400020070','4000','订单未设置支付渠道信息','be.order.0070'),('400020071','4000','支付渠道信息不存在','be.order.0071'),('400020072','4000','订单撤单中','be.order.0072'),('400020073','4000','主订单不可撤单','be.order.0073'),('400020074','4000','当前业务不支持撤单操作','be.order.0074'),('400020075','4000','当前节点不支持撤单操作','be.order.0075'),('400020076','4000','没有正在处理中的节点','be.order.0076'),('400020077','4000','主offer类型不是mobile或者pstn','be.order.0077'),('400020078','4000','该用户已存在于{0}群组中','be.order.0078'),('400020079','4000','该用户已存在于{0}群组中的订单中','be.order.0079'),('400020080','4000','当前用户状态不允许办理','be.order.0080'),('400020081','4000','当前服务已经关闭；','be.order.0081'),('400020082','4000','当前服务已经开启','be.order.0082'),('400040001','4000','查询到对象状态与业务期望不符','be.agr.0001'),('400040002','4000','读取的初始化数据缺失或错误Missing or incorrect','be.agr.0002'),('400040003','4000','订单数据不存在','be.agr.0003'),('400040004','4000','订单数据不合法','be.agr.0004'),('400040005','4000','当前客户与获取到的数据中的客户资料不相符','be.agr.0005'),('400040006','4000','未传入任何文件','be.agr.0006'),('400040007','4000','合同已签字','be.agr.0007'),('400040008','4000','根据当前订单及客户信息未找到合同信息','be.agr.0008'),('400040009','4000','合同模板未找到','be.agr.0009'),('400040010','4000','XDoc配置数据未找到','be.agr.0010'),('400040011','4000','从FastDFS未获取到数据','be.agr.0011'),('400050006','4000','客户状态为不活跃','be.cms.0006'),('400050007','4000','客户在黑名单中','be.cms.0007'),('400050008','4000','不能切换自动续订','be.cms.0008'),('400060001','4000','库存信息不存在                                                                              ','be.res.0001'),('400060002','4000','资源入库数据必须大于0                                                                       ','be.res.0002'),('400060003','4000','CHAR_SPEC_ID {0} is exists,please check.                                       ','be.res.0003'),('400060004','4000','MKT_RES_SPEC_CHAR_REL_ID cannot be null when modify MrMktResSpecCharBean.                   ','be.res.0004'),('400060005','4000','Resource Spec Code {0} is exists,please check.                                ','be.res.0005'),('400060006','4000','Resource Spec Id CAN NOT  NULL                                                              ','be.res.0006'),('400060007','4000','REL_ID cannot be null when modify MrMtkResCharSpecValBean.                                  ','be.res.0007'),('400060008','4000','The existing phone number exceed 100, please confirm.                                       ','be.res.0008'),('400060009','4000','The number of generated resources is 0.                                                     ','be.res.0009'),('400060010','4000','Incorrect status number more than 100.                                                      ','be.res.0010'),('400060011','4000','No qualified operation record.','be.res.0011'),('400060012','4000','Cancelling the creation must be the same batchId.                                           ','be.res.0012'),('400060013','4000','Inventory quantity not sufficient                                                           ','be.res.0013'),('400060014','4000','The card number segment to be generated already exist in database.                          ','be.res.0014'),('400060015','4000','Postpone time cannot be used for expired card operation,paycard no {0}.                   ','be.res.0015'),('400060016','4000','startNo  endNo length is inconsistent, please check.                                        ','be.res.0016'),('400060017','4000','The Resource Infomation you wang to handle does not exist, please check.                    ','be.res.0017'),('400060018','4000','The Resource Infomation you wang to handle is used, please check.                           ','be.res.0018'),('400060019','4000','The Resource Status you wang to handle not allow to used, please check.                   ','be.res.0019'),('400060020','4000','The Resource hava been retained by other customers, please check.                           ','be.res.0020'),('400060021','4000','The resource batch number does not exist.                                                   ','be.res.0021'),('400060022','4000','The Resource {0} status {1} not forbid to operator                                           ','be.res.0022'),('400060023','4000','The resource inventory information you operate does not exist,please check.                 ','be.res.0023'),('400060024','4000','The Resource {0} status {} not forbid to PreOccupy                                          ','be.res.0024'),('400060025','4000','There are too many wrong records {0}. Please check and submit.                         ','be.res.0025'),('400060026','4000','Your current preoccupied number {0} has more than {1} minute and please choose again.       ','be.res.0026'),('400060027','4000','Too many operation records at one time, please maximum submit {0} records every time.','be.res.0027'),('400060028','4000','The generated resource information has the same record ：{0}                            ','be.res.0028'),('400060029','4000','There are too many generated resources, please deal with them in batches.Up to {0} at a time','be.res.0029'),('400060030','4000','Make sure that all patterns at this level have been  all deleted ,please check.             ','be.res.0030'),('400060031','4000','The expiration date of this card is empty,paycard no {0}                                  ','be.res.0031'),('400060032','4000','This resource has been used and cannot be operated on,paycard no {0}                    ','be.res.0032'),('400060033','4000','When the number is preoccupied, billID cannot be empty','be.res.0033'),('400060034','4000','The phone number {0} to be donewithis not found in the current origin datas.','be.res.0034'),('400060035','4000','The phone number {0} no sales record information, please confirm.','be.res.0035'),('400060036','4000','The Simcard {0} not found in the current origin datas.','be.res.0036'),('400060037','4000','Only {0} status Phone Numbers can modify the specification,current status {1}.','be.res.0037'),('400060038','4000','Appointed/Reserved status is not allowed to modify.','be.res.0038'),('400060039','4000','Only Active number can be changed to Open','be.res.0039'),('400060041','4000','The modifiable phone number management state is not configured, please check.','be.res.0041'),('400060042','4000','The  phone number {0} manage status is not used, please check.','be.res.0042'),('400060043','4000','Only {0} number can be changed to {1}.','be.res.0043'),('400060044','4000','Message Sender is Exception.','be.res.0044'),('400060045','4000','Start Number and end Number should be the same length.','be.res.0045'),('400060046','4000','Start Number and end Number cannt be empty.','be.res.0046'),('400060047','4000','The current manage status {0} of the terminal resource you want to pre-occupy is not allowed.Please check.','be.res.0047'),('400060048','4000','号码角色不正确','be.res.0048'),('400060049','4000','Query Error: Query terminal specification cannot be empty.','be.res.0049'),('400060050','4000','This card {simcard} not belong to you,forbid to use.','be.res.0050'),('400060051','4000','This card [{simcard}] not belong to your current organization.','be.res.0051'),('400060052','4000','This card {0} to be done with is not found in the current origin datas.','be.res.0052'),('400060053','4000','This card {0} has been proccupied by other.','be.res.0053'),('400060054','4000','File format error.','be.res.0054'),('400060055','4000','File too large,more than 30M.','be.res.0055'),('400060056','4000','Query result is empty by condition;','be.res.0056'),('400060057','4000','Batch Operator Error:The operable record is empty according to the condition.','be.res.0057'),('400060058','4000','Getting the resource management status configuration is empty.','be.res.0058'),('400060059','4000','Import file result error.','be.res.0059'),('400060060','4000','Import file parse faild.','be.res.0060'),('400060061','4000','Global configuration does not allow modifications.','be.res.0061'),('400060062','4000','Error:Managestatus not configuration.','be.res.0062'),('400060063','4000','The current Status cannot be operator.','be.res.0063'),('400060064','4000','Please select the specification first.','be.res.0064'),('400060065','4000','原操作数据 {0}与实际执行数据{1}不一致;','be.res.0065'),('400060066','4000','卡号不存在','be.res.0066'),('400070001','4000','参数不存在','be.cm.0001'),('400070002','4000','保存客户失败','be.cm.0002'),('400070003','4000','找不到对应客户','be.cm.0003'),('400070004','4000','对象已存在','be.cm.0004'),('400070005','4000','对应地址未找到','be.cm.0005'),('400070006','4000','保存地址失败','be.cm.0006'),('400070007','4000','同步billing失败','be.cm.0007'),('400070008','4000','The type of certificate and the number of the corresponding customer already exist.','be.cm.0008'),('400070009','4000','This Customer already exist.','be.cm.0009'),('400070010','4000','Customer Name cannot be empty.','be.cm.0010'),('400070011','4000','Default Contact cannot delete.','be.cm.0011'),('400070012','4000','Group customers must retain a contact.','be.cm.0012'),('400070013','4000','Organization info cannot be empty.','be.cm.0013'),('400070014','4000','Corporation Member bill cannot be empty.','be.cm.0014'),('400070015','4000','There are members under the department,cannot delete.','be.cm.0015'),('400070016','4000','Corporation Member bill cannot be empty,In {0} line.','be.cm.0016'),('400070017','4000','Import File Error: {0} .','be.cm.0017'),('400070018','4000','This member bill must be the normal used by umobile.','be.cm.0018'),('400070019','4000','Corporation  Customer id cannot be empty.','be.cm.0019'),('400070020','4000','Corporation  Customer Member already exist','be.cm.0020'),('400070021','4000','Customer VAT cannot be empty','be.cm.0021'),('400070022','4000','This VAT already exist.','be.cm.0022'),('400070023','4000','客户账户资料不完整；','be.cm.0023'),('400070024','4000','Customer contact information is not available。','be.cm.0024'),('400070025','4000','客户默认联系人号码不完整；','be.cm.0025'),('400070026','4000','部门id不存在。','be.cm.0026'),('400070027','4000','同步billing失败','be.cm.0027'),('400080001','4000','数据操作状态不匹配The data operation status does not match','be.sec.0001'),('400080002','4000','数据状态不匹配','be.sec.0002'),('400080003','4000','用户不存在','be.sec.0003'),('400080004','4000','参数不存在','be.sec.0004'),('400080005','4000','staff数据不正确','be.sec.0005'),('400080006','4000','organize数据不正确','be.sec.0006'),('400080007','4000','operator数据不正确','be.sec.0007'),('400080008','4000','查询IP数据失败','be.sec.0008'),('400080009','4000','同步Redis存储IP数据失败','be.sec.0009'),('400080010','4000','同步Redis存储Restful数据','be.sec.0010'),('400080011','4000','当前用户下没有查询到可用的offer信息','be.sec.0011'),('400080012','4000','未查询到用户信息','be.sec.0012'),('400080013','4000','IP地址格式不正确','be.sec.0013'),('400080014','4000','密码长度不正确','be.sec.0014'),('400080015','4000','存在下级组织','be.sec.0015'),('400080016','4000','存在关联岗位','be.sec.0016'),('400080017','4000','存在关联员工','be.sec.0017'),('400080018','4000','重置密码已过期','be.sec.0018'),('400080019','4000','上级组织失效日期小于下级组织','be.sec.0019'),('400080020','4000','有关联组织','be.sec.0020'),('400080021','4000','无关联组织或组织组','be.sec.0021'),('400090001','4000','查询类型不支持','be.ci.0001'),('400090002','4000','业务模板不存在','be.ci.0002'),('400090003','4000','业务模板中有不支持的参数','be.ci.0003'),('400090004','4000','参数为空异常','be.ci.0004'),('400090005','4000','参数异常','be.ci.0005'),('400090006','4000','参数日期只能在同一个月中','be.ci.0006'),('400090007','4000','开始日期晚于结束日期','be.ci.0007'),('400090008','4000','客户接触创建失败','be.ci.0008'),('400110001','4000','参数不存在','be.product.0002'),('400110003','4000','参数异常','be.product.0001'),('400110004','4000','offer没有找到change关系','be.product.0003'),('400110005','4000','offer没有找到compat关系','be.product.0004'),('400110006','4000','offer存在mutex关系','be.product.0005'),('400110007','4000','offer存在bind关系','be.product.0006'),('400110008','4000','offer不可用，状态不为1','be.product.0007'),('400120001','4000','入参为空','be.omnic.0001'),('400120002','4000','入参不合法','be.omnic.0002'),('400120003','4000','多条合同数据','be.omnic.0003'),('400120004','4000','合同未找到','be.omnic.0004'),('400120005','4000','在FastDFS服务器上未找到合同','be.omnic.0005'),('400120006','4000','客户联系媒介未获取到','be.omnic.0006'),('400120007','4000','客户 Email 未获取到','be.omnic.0007'),('400120008','4000','数据未获取到','be.omnic.0008'),('400120009','4000','用户数据未获取到','be.omnic.0009'),('400120011','4000','产品开关服务已经是关闭的','be.omnic.0011'),('400120012','4000','产品开关服务已经是开启的','be.omnic.0012'),('400120013','4000','产品不支持开关服务','be.ominc.0013'),('400120014','4000','offer已经下架','be.ominc.0014'),('400120016','4000','所选的号码已经是成员','be.omnic.0016'),('400120017','4000','所选的号码有在途添加成员订单','be.omnic.0017'),('400120018','4000','订单操作来源错误','be.omnic.0018'),('400120019','4000','线下受理不需要确认收货','be.omnic.0019'),('400120020','4000','当前用户有未生效的offer,无法再次办理','be.omnic.0020'),('400140001','4000','登出失败','be.sso.0001'),('400140002','4000','验证码不存在','be.sso.0002'),('400140003','4000','client状态异常','be.sso.0003'),('400140004','4000','授权类型不支持','be.sso.0004'),('400140005','4000','用户名或者密码不正确','be.sso.0005'),('400140006','4000','未经授权','be.sso.0006'),('400140007','4000','用户已登录','be.sso.0007'),('400140008','4000','认证失败','be.sso.0008'),('400140009','4000','拒绝接入','be.sso.0009'),('400140010','4000','Token失效','be.sso.0010'),('400140011','4000','登录失败','be.sso.0011'),('400140012','4000','用户状态异常','be.sso.0012'),('400140013','4000','IP校验失败','be.sso.0013'),('400140014','4000','登录渠道和用户渠道不匹配','be.sso.0014');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
