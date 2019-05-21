package com.aii.crm.agr.web.dto.res;

import java.io.Serializable;
import lombok.Data;

@Data
public class AgrDataResDto implements Serializable {
	private Long orderCustomerId;
	private Long agreementId;
	private String offerName;
	private String agrUrl;
	private Long custId;
	private Integer custType;
	private String agrSource;
	private String message;
}
