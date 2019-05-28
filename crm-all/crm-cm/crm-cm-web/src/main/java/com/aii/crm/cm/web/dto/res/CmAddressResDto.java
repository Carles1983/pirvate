package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import lombok.Data;

@Data
public class CmAddressResDto implements Serializable {
	private Long addrId;
	private String zipCode;
	private String addDetail;
	private String priority;
}
