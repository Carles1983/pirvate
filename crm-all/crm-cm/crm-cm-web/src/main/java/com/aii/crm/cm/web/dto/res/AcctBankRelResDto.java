package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class AcctBankRelResDto implements Serializable {
	private Long relId;
	private Long acctId;
	private String billId;
	private String bankCode;
	private Long bankAccountType;
	private String bankAccount;
	private String accountExpireDate;
	private Long payMethod;
	private Long busiCode;
	private String idCard;
	private String credit;
	private String pfSeq;
	private String actiondate;
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
	private String remarks;
	private String cardHolder;
	private Long cvvCvcCid;
	private String regionId;
}
