package com.aii.crm.agr.persistence.req;

import java.io.Serializable;
import lombok.Data;

@Data
public class AgrDataReqDto implements Serializable {
	private Long orderCustomerId;
	private Long agreementId;
	private String offerName;
	private Long custId;
	private Integer custType;
}
