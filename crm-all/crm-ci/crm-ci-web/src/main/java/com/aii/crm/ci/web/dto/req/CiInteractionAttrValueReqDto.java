package com.aii.crm.ci.web.dto.req;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class CiInteractionAttrValueReqDto implements Serializable {
	private Long interactionAttrValueId;
	private Long interactionId;
	private Long interactionAttrId;
	private String interactionAttrCode;
	private String interactionAttrAttrValue;
	private Long custId;
	private String tenantId;
	private Date interactionTime;
}
