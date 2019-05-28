package com.aii.crm.cm.web.dto.req;

import java.io.Serializable;
import java.util.List;
import lombok.Data;

@Data
public class OrganizationCreateReqDto implements Serializable {
	private CmPartyReqDto partyDto;
	private CmOrganizationReqDto organizationDto;
	private List<CmContactMediumReqDto> contactMediumList;
	private List<CmPartyAttachmentReqDto> attachmentList;
	private CmGroupManagerReqDto groupManager;
}
