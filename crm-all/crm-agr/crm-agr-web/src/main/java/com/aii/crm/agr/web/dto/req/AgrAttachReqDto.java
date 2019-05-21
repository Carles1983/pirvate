package com.aii.crm.agr.web.dto.req;

import java.io.Serializable;
import lombok.Data;

@Data
public class AgrAttachReqDto implements Serializable {
	private Long attachId;
	private String busiTypeCode;
	private String busiSheetId;
	private String attachType;
	private String fileName;
	private String storageFileUri;
	private String storeMediumType;
	private String attachStatus;
	private String remarks;
	private Long state;
}
