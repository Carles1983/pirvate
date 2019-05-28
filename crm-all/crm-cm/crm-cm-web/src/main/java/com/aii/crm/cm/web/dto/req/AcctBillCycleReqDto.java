package com.aii.crm.cm.web.dto.req;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class AcctBillCycleReqDto implements Serializable {
	private Long cycleId;
	private Long acctId;
	private Integer cycleType;
	private Integer cycleUnit;
	private String cycleUnitName;
	private Integer billDay;
	private String billDayName;
	private String billDueDateName;
	private String cycleReason;
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
