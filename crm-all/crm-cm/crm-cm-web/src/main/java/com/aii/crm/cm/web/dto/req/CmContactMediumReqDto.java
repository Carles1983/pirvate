package com.aii.crm.cm.web.dto.req;

import java.io.Serializable;
import lombok.Data;

@Data
public class CmContactMediumReqDto implements Serializable {
	private String priority;
	private String contactName;
	private String receiver;
	private String emailAddress;
	private Long custId;
	private String faxNumber;
	private String contNumber;
	CmAddressReqDto addressDto;
}
