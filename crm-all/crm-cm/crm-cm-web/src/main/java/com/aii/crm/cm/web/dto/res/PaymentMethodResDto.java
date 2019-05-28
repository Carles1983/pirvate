package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import java.util.List;
import lombok.Data;

@Data
public class PaymentMethodResDto implements Serializable {
	private Long custId;
	private Long accountId;
	private String acctName;
	private Integer acctType;
	private Integer acctStatus;
	private Integer installmentFlag;
	private List<AcctBankRelResDto> bankRelDtos;
	private AcctBillCycleResDto billCycleDto;
}
