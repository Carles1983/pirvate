package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class AddressViewResDto implements Serializable {
	private Long cust_cont_rela_id;
	private Long cust_id;
	private Long cont_med_type_id;
	private String postal_code;
	private Long address_id;
	private String addressCode;
	private String address_detail;
	private String email_address;
	private String fax_number;
	private String cont_number;
	private Long is_no_disturbing;
	private Long priority;
	private Date protectEffDate;
	private Date protectExpDate;
	private String state;
	private Long create_op_id;
	private Long create_org_id;
	private Long opId;
	private Long orgId;
	private Long doneCode;
	private Date create_date;
	private Date doneDate;
	private Date effectiveDate;
	private Date expireDate;
	private String region_id;
	private String remarks;
	private String contact_person;
	private String ext1;
	private String ext2;
	private String ext3;
	private String ext4;
	private String ext5;
	private String ext6;
}
