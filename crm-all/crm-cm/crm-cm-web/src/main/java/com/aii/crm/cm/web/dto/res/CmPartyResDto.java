package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import lombok.Data;

@Data
public class CmPartyResDto implements Serializable {
	private Long partyId;
	private Long parentPartyId;
	private Integer partyType;
	private String partyName;
	private String shortName;
	private Long perferLanguage;
	private CmPartyResDto upPartyDto;
}
