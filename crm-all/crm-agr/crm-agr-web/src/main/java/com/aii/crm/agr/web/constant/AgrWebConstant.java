package com.aii.crm.agr.web.constant;

public class AgrWebConstant {

	private AgrWebConstant(){}

	public static final Long AGR_STATE_INVALID = 0L;
	public static final Long AGR_STATE_VALID = 1L;

	//协议状态
	public static final Long AGR_STATUS_DRAFT = 9010L;
	public static final Long AGR_STATUS_NEGOTIATED = 9020L;
	public static final Long AGR_STATUS_CONFIRM = 9021L;
	public static final Long AGR_STATUS_PRESIGN = 9025L;
	public static final Long AGR_STATUS_SIGN = 9030L;
	public static final Long AGR_STATUS_VALIDATED = 9050L;
	public static final Long AGR_STATUS_EXPIRE = 9060L;
	public static final Long AGR_STATUS_TERMI = 9070L;
	public static final Long AGR_STATUS_NEGOTIATING = 9080L;
	public static final Long AGR_STATUS_PROLONGING = 9090L;
	public static final Long AGR_STATUS_PROLONGED = 9100L;
	public static final Long AGR_STATUS_LOST = 9110L;

}
