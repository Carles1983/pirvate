package com.aii.crm.cm.web.dto.req;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class CmGroupQryRequestReqDto implements Serializable {
	private String contName;
	private String contNumber;
	private String legalName;
	private String custStatusName;
	private Date createDate;
	private String partyName;
	private Long custId;
	private String vatNumber;
	private Long partyId;
	private String logoImage;
}
