package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import lombok.Data;

@Data
public class CmGroupCustomerResDto implements Serializable {
	private Long custId;
	private Long partyId;
	private String custServiceId;
	private String custPassword;
	private Long custServiceLevel;
	private String creditLevel;
	private Long creditValue;
	private String remarks;
	private String state;
}
