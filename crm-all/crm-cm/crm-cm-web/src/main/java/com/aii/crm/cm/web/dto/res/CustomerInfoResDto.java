package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import lombok.Data;

@Data
public class CustomerInfoResDto implements Serializable {
	private Long custId;
	private String email;
	private Integer custType;
	private String custName;
	private Integer custCertType;
	private String custCertCode;
	private Integer custStatus;
	private Integer gender;
	private String legalAddress;
	private String birthday;
	private String firstName;
	private String lastName;
}
