package com.aii.crm.agr.persistence;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class AgrTemplateDto implements Serializable {
	private Long agreementTemplateId;
	private Long agrTypeId;
	private String templateCode;
	private String templateStatus;
	private Date statusTime;
	private Long upTemplateId;
	private String agreementTemplateName;
	private Long agrLevelId;
	private String agrDocUrl;
	private Long operatorId;
	private Long organizationId;
	private Date createDate;
	private Long createOpId;
	private Long createOrgId;
	private Long opId;
	private Long orgId;
	private Date doneDate;
	private String doneCode;
	private Long state;
	private Long isAddendum;
	private Long offerId;
	private String language;
}
