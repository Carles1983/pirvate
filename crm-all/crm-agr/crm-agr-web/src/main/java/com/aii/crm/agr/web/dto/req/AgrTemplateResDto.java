package com.aii.crm.agr.web.dto.req;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class AgrTemplateResDto implements Serializable {
	private Long agreementTemplateId;
	private Long agrTypeId;
	private String templateCode;
	private String templateStatus;
	private Date statusTime;
	private Long upTemplateId;
	private String agreementTemplateName;
	private Long agrLevelId;
	private String agrDocUrl;
	private Date createDate;
	private Long createOpId;
	private Long createOrgId;
	private Date doneDate;
	private Long state;
	private Long isAddendum;
	private Long offerId;
	private String language;
}
