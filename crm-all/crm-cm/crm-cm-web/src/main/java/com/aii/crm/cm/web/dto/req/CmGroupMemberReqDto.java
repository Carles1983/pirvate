package com.aii.crm.cm.web.dto.req;

import java.io.Serializable;
import java.util.List;
import lombok.Data;

@Data
public class CmGroupMemberReqDto implements Serializable {
	private Long custRelId;
	private Long groupCustId;
	private Long memberCustId;
	private String memberName;
	private Long memberType;
	private String gender;
	private Long deptId;
	private Long oldDeptId;
	private Long memberStatus;
	private Long provideId;
	private String brand;
	private Long userId;
	private String billId;
	private String remarks;
	private String state;
	private List<CmCharReqDto> charDtoList;
}
