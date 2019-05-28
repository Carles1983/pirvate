package com.aii.crm.cm.web.dto.req;

import java.io.Serializable;
import lombok.Data;

@Data
public class CmBillCustomizeReqDto implements Serializable {
	private Long customizeId;
	private Long acctId;
	private Long custId;
	private Long userId;
	private Long billPattern;
	private Long billType;
	private String mailType;
	private String recipients;
	private Long mailDate;
	private String contFax;
	private String contMobile;
	private String contEmail;
	private String contAddress;
	private String contZipcode;
	private String mailProjects;
	private String state;
}
