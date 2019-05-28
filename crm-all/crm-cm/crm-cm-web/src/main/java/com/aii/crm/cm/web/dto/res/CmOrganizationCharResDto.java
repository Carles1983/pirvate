package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import lombok.Data;

@Data
public class CmOrganizationCharResDto implements Serializable {
	private Long orgAttrId;
	private Long organizationId;
	private String attrText;
	private String attrValue;
}
