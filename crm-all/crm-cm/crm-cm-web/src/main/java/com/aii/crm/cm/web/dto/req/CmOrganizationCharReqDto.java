package com.aii.crm.cm.web.dto.req;

import java.io.Serializable;
import lombok.Data;

@Data
public class CmOrganizationCharReqDto implements Serializable {
	private Long orgAttrId;
	private Long organizationId;
	private String attrText;
	private String attrValue;
}
