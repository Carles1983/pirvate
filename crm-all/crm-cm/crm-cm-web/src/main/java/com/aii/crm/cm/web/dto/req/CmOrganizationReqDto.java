package com.aii.crm.cm.web.dto.req;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import lombok.Data;

@Data
public class CmOrganizationReqDto implements Serializable {
	private Long organizationId;
	private Long upOrganizationId;
	private String memberRange;
	private String principalName;
	private String industryType;
	private String legalName;
	private String orgAddress;
	private String zipCode;
	private String vatNo;
	private String fax;
	private String tel;
	private String website;
	private Date foundDate;
	private Date terminalDate;
	private String logo;
	private Long accountManager;
	private List<CmOrganizationCharReqDto> organizationCharDtoList;
}
