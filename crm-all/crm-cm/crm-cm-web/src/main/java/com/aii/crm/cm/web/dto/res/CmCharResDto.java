package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import lombok.Data;

@Data
public class CmCharResDto implements Serializable {
	private String attrText;
	private Long charId;
	private String attrValue;
}
