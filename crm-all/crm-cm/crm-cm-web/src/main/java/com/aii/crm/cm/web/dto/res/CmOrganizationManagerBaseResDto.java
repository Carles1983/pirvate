package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import lombok.Data;

@Data
public class CmOrganizationManagerBaseResDto implements Serializable {
	private Long custId;
	private String partyName;
	private String shortName;
	private String perferLanageName;
	private Long perferLanguage;
	private Long organizationId;
	private Long partyType;
	private Long upOrganizationId;
	private String upOrganizationName;
	private String memberRange;
	private String memberRangeName;
	private String principalName;
	private String industryType;
	private String industryTypeName;
	private String legalName;
	private String orgAddress;
	private String zipCode;
	private String vatNo;
	private String fax;
	private String contTel;
	private String website;
	private Date foundDate;
	private Date terminalDate;
	private String logo;
	private String remark;
	private Long relId;
	private Long managerId;
	private String managerName;
	private List<CmOrganizationCharResDto> organizationCharList;
}
