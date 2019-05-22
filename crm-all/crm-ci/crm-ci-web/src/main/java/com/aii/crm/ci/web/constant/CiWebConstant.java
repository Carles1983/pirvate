package com.aii.crm.ci.web.constant;

public class CiWebConstant {

	private CiWebConstant(){}

	public static final int CONTACT_STATUS_FINISHED = 1;
	public static final int CONTACT_STATUS_UNFINISHED = 0;

	public static final String CONTACT_STATUS_REDIS_KEY = "contact_status";
	public static final String CONTACT_ID_REDIS_KEY = "contact_id";
	public static final String LAST_INTERACTION_TIME_REDIS_KEY = "last_interaction_time";
	public static final String CONTACT_COUNT_REDIS_KEY = "contact_count";
	public static final String INTERACTION_ATTR_REDIS_KEY = "interaction_attr";
	public static final String INTERACTION_TYPE_REDIS_KEY = "interaction_type";

	public static final String CI_CHANNEL_MAPPING_REDIS_KEY = "cache_ci_channel_mapping";
	public static final String CI_INTERACTION_TYPE_REDIS_KEY = "cache_ci_interaction_type";
	public static final String CI_CHANNEL_REDIS_KEY = "cache_ci_channel";

	public static final long EVENT_STATE_NOT_SEND = -1L;
	public static final long EVENT_STATE_SENDING = 0L;
	public static final long EVENT_STATE_SEND_OK = 1L;
	public static final long EVENT_STATE_SEND_ERROR = 2L;

	public static final long EVENT_SWITCH_STATE_OPEN = 1;
	public static final long EVENT_SWITCH_STATE_CLOSE = 0;

	//接触类型  OB：客户被动接触
	public static final Long CONTACT_TYPE_OB = 0L;
	public static final String CONTACT_TYPE_OB_STR = "OB";
	//接触类型 IB：客户主动接触
	public static final Long CONTACT_TYPE_IB = 1L;
	public static final String CONTACT_TYPE_IB_STR = "IB";

	// 接触结果 SUCCESS：成功
	public static final String CONTACT_RESULT_SUCCESS = "SUCCESS";
	// OBMISS：Outbound未达
	public static final String CONTACT_RESULT_OBMISS = "OBMISS";
	// OBREFUSE：Outbound拒绝
	public static final String CONTACT_RESULT_OBREFUSE = "OBREFUSE";
	// IBMISS：Inbound未达
	public static final String CONTACT_RESULT_IBMISS = "IBMISS";
}