package com.aii.crm.ci.web.dto.req;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class CiInteractionCommentReqDto implements Serializable {
	private Long commentId;
	private Long interactionId;
	private Long srcCommentId;
	private String comment;
	private Long visible;
	private String srcSysId;
	private String channelCode;
	private Long orgId;
	private Long custId;
	private Date interactionTime;
	private String tenantId;
	private Long opId;
	private Date createDate;
}
