package com.aii.crm.ci.web.dto.res;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class CiInteractionResDto implements Serializable {
	private Long interactionId;
	private Long contactId;
	private Long channelId;
	/**
	 * 源系统流水号
	 */
	private String srcInteractionId;
	private Date interactionTime;
	private Date completeTime;

	/**
	 * 交互类型
	 */
	private Long interactionType;
	private String interactionTypeName;
	/**
	 * 交互客户
	 * <p>
	 * 必填
	 */
	private Long custId;
	/**
	 * 用户号码
	 */
	private String msisdn;

	/**
	 * 接触媒介
	 * <p>
	 * 必填，枚举类型，取值如下
	 * 1：电话；2：短信；3：面对面；4：USSD；5：邮件；6：平信；7：IVR；8：彩信；9：Facebook；10：Twitter
	 */
	private String mediaType;
	private String mediaTypeName;
	/**
	 * 业务源系统标识
	 * <p>
	 * 必填，枚举类型，取值如下
	 * <p>
	 * CRM： 客户关系管理系统 BILLING：计费系统 C3： 融合感知中心 Convergent Context-awarness Center
	 */
	private String srcSysId;
	private String srcSysIdName;

	/**
	 * 业务源交互类型。各个系统内对业务类型的定义
	 * <p>
	 * 必填
	 */
	private String srcBusiType;

	/**
	 * 交互结果，枚举类型，取值如下
	 * <p>
	 * 0：成功，1：失败
	 */
	private Long interactionResult;

	/**
	 * 租户
	 * <p>
	 * 必填
	 */
	private String tenantId;

	/**
	 * 上游交互编号
	 */
	private Long upInteractionId;
	/**
	 * 业务源系统渠道代码。各个系统内自定义的渠道
	 * <p>
	 * 必填
	 */
	private String channelCode;
	private String channelName;

	/**
	 * 接触类型
	 * <p>
	 * 必填，枚举类型，取值如下
	 * <p>
	 * 1：客户主动接触；2：客户被动接触
	 */
	private Long contactType;
	private String contactTypeName;
	private Date contactTime;
	private Date contactCompleteTime;
	private Long interactionCategoryId;
	private String interactionCategoryName;

}
