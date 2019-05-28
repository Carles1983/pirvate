package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import java.util.List;
import lombok.Data;

@Data
public class CmGroupMemberResDto implements Serializable {
	private Long custRelId;
	private Long groupCustId;
	private Long memberCustId;
	private String memberName;
	private Long memberType;
	private String gender;
	private Long deptId;
	private Long oldDeptId;
	private String oldBillId;
	private String dptName;
	private Long deptOldId;//原所在部门id
	private Long memberStatus;
	private Long provideId;
	private String brand;
	private Long userId;
	private String billId;
	private String remarks;
	private String state;
	private List<CmCharResDto> charDtoList;
}
