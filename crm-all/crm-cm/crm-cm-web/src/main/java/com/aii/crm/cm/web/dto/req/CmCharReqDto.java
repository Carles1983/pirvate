package com.aii.crm.cm.web.dto.req;

import java.io.Serializable;
import lombok.Data;

@Data
public class CmCharReqDto implements Serializable {
	private String attrText;
	private Long charId;
	private String attrValue;
}
