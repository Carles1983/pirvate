package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class AcctPaymentResDto implements Serializable {
	private Long paymentId;
	private Long acctId;
	private Integer payMethod;
	private String payMethodName;
	private String bankContract;
	private String paymentBankCode;
	private String paymentAccount;
	private String paymentAccountName;
	private Long paymentAccountType;
	private Date paymentAccountExpireDate;
	private Integer payType;
	private String payRemark;
}
