package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class PreferChannelResDto implements Serializable {
	private Long preferChannelId;
	private Long custContRelaId;
	private Long custId;
	private Long perferType;
	private String preferChannelName;
	private Long prior;
	private String state;
	private Long createOpId;
	private Long createOrgId;
	private Long opId;
	private Long orgId;
	private Long doneCode;
	private Date createDate;
	private Date doneDate;
	private Date effectiveDate;
	private Date expireDate;
	private String regionId;
	private String remarks;
}
