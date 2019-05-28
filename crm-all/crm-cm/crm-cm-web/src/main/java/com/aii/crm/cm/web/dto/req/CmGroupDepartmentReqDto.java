package com.aii.crm.cm.web.dto.req;

import java.io.Serializable;
import java.util.List;
import lombok.Data;

@Data
public class CmGroupDepartmentReqDto implements Serializable {
	private Long departmentId;
	private String dptName;
	private Long organizationId;
	private Long upDepartmentId;
	private String dptCode;
	private String upDptCode;
	private String state;
	private List<CmCharReqDto> charDtoList;
}
