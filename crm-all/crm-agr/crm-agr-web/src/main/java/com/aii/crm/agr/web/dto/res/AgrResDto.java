package com.aii.crm.agr.web.dto.res;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class AgrResDto implements Serializable {
	private Long agreementId;
	private Long agreementTemplateId;
	private String agreementTempCode;
	private String agrBarCode;
	private Long upAgreementId;
	private Long agrTypeId;
	private String agreementName;
	private String agreementCode;
	private Long ownerId;
	private String autoRenew;
	private String renewCircle;
	private Long agrLevelId;
	private String secrecyLevel;
	private Date signTime;
	private String signPlace;
	private String agrDocUrl;
	private String description;
	private String agrSource;
	private Long agrSourceObjId;
	private String agrSourceBizId;
	private Date effDate;
	private Date expDate;
	private Long agreementStatus;
	private Date statusTime;
	private Date parentCreateDate;
	private String emailStatus;
	private String breachStatus;
	private Long isAddendum;
	private Long renewTimes;
	private Date createDate;
	private Long createOpId;
	private Long createOrgId;
	private Date doneDate;
	private Long state;
	private String ownerType;
	private String agrSourceSubObjId;
	private Long agrTempVersionId;
	private String billCycle;
	private String paymentTerms;
	private String billNo;
	private String cvrNo;
}
