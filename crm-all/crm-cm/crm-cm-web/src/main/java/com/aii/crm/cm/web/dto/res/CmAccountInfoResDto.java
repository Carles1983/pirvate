package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import lombok.Data;

@Data
public class CmAccountInfoResDto implements Serializable {
	private Long acctId;
	private String acctServiceId;
	private Long custId;
	private String firstName;
	private String lastName;
	private String acctName;
	private Long acctType;
	private String acctTypeName;
	private Long acctStatus;
	private String acctPassword;
	private Long creditLevel;
	private Long creditValue;
	private Long installmentFlag;
	private String urgeStopFlag;
	private Long billCycleFlag;
	private String acctBehalfPhone;
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
	private String billDeliverType;
	private String srcRillDeliverType;//原投递类型
	private List<CmBillCustomizeResDto> billCustomizeList;
	private AcctPaymentResDto acctPayment;
	private AcctBillCycleResDto acctBillCycle;
}
