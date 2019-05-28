package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import lombok.Data;

@Data
public class ElectronMediumResDto implements Serializable {
	private Long contactRelaId;
	private Long custId;
	private Long contactType;
	private String contactValue;
	private Long priority;
	private Long disturbFlag;
	private String remarks;
}
