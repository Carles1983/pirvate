package com.aii.agr.persistence;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class AgrAttachDto implements Serializable {
	private Long attachId;
	private String busiTypeCode;
	private String busiSheetId;
	private String attachType;
	private String fileName;
	private String storageFileUri;
	private String storeMediumType;
	private String attachStatus;
	private String remarks;
	private Date agrCreationTime;
	private Date createDate;
	private Long createOpId;
	private Long createOrgId;
	private Long opId;
	private Long orgId;
	private Date doneDate;
	private String doneCode;
	private Long state;
}
