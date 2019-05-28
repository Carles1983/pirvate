package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import java.util.List;
import lombok.Data;

@Data
public class CmGroupDeptTreeResDto implements Serializable {
	private String dptName;
	private Long organizationId;
	private Long upDepartmentId;
	private String dptCode;
	private String state;
	private Long departmentId;
	private List<CmGroupDeptTreeResDto> deptTreeDtoList;
}
