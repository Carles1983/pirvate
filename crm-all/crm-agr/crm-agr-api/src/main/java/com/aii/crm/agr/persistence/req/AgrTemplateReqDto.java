package com.aii.crm.agr.persistence.req;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class AgrTemplateReqDto implements Serializable {
	private Long agreementTemplateId;
	private Long agrTypeId;
	private String templateCode;
	private String templateStatus;
	private Long upTemplateId;
	private String agreementTemplateName;
	private Long agrLevelId;
	private String agrDocUrl;
	private Long state;
	private Long isAddendum;
	private Long offerId;
	private String language;
}
