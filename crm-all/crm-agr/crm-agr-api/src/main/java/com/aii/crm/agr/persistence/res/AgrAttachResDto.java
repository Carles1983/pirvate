package com.aii.crm.agr.persistence.res;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class AgrAttachResDto implements Serializable {
	private Long attachId;
	private String busiTypeCode;
	private String busiSheetId;
	private String attachType;
	private String fileName;
	private String storageFileUri;
	private String storeMediumType;
	private String attachStatus;
	private String remarks;
	private Date createDate;
	private Long createOpId;
	private Long createOrgId;
	private Date doneDate;
	private Long state;
}
