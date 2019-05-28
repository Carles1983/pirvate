package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import java.util.List;
import lombok.Data;

@Data
public class CmPartyOrgTreeResDto implements Serializable {
	private Long partyId;
	private Long parentPartyId;
	private String partyName;
	private String shortName;
	private Long perferLanguage;
	private Long managerId;
	private String managerName;
	private List<CmPartyOrgTreeResDto> childPartyList;
	private CmPartyOrgTreeResDto upPartyDto;
}
