package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class ContactInfoResDto implements Serializable {
	private Long custContRelaId;
	private Long custId;
	private Long contMedTypeId;
	private String postalCode;
	private Long addressId;
	private String addressCode;
	private String addressDetail;
	private String emailAddress;
	private String faxNumber;
	private String contNumber;
	private Long priority;
	private String state;
	private Date createDate;
	private Date effectiveDate;
	private Date expireDate;
	private String remarks;
	private String contactPerson;
	private Long isNoDisturbing;
	private String ext1;
	private String ext2;
	private String ext3;
	private String ext4;
	private String ext5;
	private String ext6;
}
