package com.aii.crm.cm.web.dto.req;

import java.io.Serializable;
import lombok.Data;

@Data
public class CmGroupManagerReqDto implements Serializable {
	private Long relId;
	private String managerName;
}
