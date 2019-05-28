package com.aii.crm.cm.web.dto.req;

import java.io.Serializable;
import lombok.Data;

@Data
public class CmPartyAttachmentReqDto implements Serializable {
	private Long atachmentId;
	private Long partyId;
	private String attachmentType;
	private String attachmentName;
	private String state;
	private String attachmentPath;
}
