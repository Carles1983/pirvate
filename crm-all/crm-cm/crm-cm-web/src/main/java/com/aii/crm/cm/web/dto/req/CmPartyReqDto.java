package com.aii.crm.cm.web.dto.req;

import lombok.Data;

@Data
public class CmPartyReqDto {
	private Long partyId;
	private Long parentPartyId;
	private Integer partyType;
	private String partyName;
	private String shortName;
	private Long perferLanguage;
}
