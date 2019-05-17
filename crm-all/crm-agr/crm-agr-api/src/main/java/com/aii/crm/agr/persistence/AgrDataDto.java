package com.aii.crm.agr.persistence;

import java.io.Serializable;
import lombok.Data;

@Data
public class AgrDataDto implements Serializable {
	private Long orderCustomerId;
	private Long agreementId;
	private String offerName;
	private String agrUrl;
	private Long custId;
	private Integer custType;
	private String agrSource;
	private String message;
}
