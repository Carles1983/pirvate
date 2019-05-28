package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import lombok.Data;

@Data
public class CmGroupContactPersonResDto implements Serializable {
	private Long relId;
	private Long partyId;
	private Long contMedId;
	private String priority;
	private String contactName;
	private String sex;
	private String receiver;
	private String emailAddress;
	private String faxNumber;
	private String contNumber;
	private Long addrId;
	private CmAddressResDto addressDto;
}
