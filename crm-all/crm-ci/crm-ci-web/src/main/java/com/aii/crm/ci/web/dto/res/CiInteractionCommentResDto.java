package com.aii.crm.ci.web.dto.res;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class CiInteractionCommentResDto implements Serializable {
	private Long commentId;
	private Long interactionId;
	private String comment;
	private Long visible;
	private String srcSysId;
	private String channelCode;
	private Long custId;
	private Date interactionTime;
	private String tenantId;
	private Date createDate;
}
