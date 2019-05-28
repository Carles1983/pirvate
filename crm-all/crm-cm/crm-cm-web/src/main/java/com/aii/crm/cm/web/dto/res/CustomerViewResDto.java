package com.aii.crm.cm.web.dto.res;

import java.io.Serializable;
import java.util.List;
import lombok.Data;

@Data
public class CustomerViewResDto implements Serializable {
	//address info
	private List<AddressViewResDto> addressList;
	//contact info
	private List<AddressViewResDto> contactList;
	//basic info
	private Long cust_id;
	private Integer cust_cert_type;
	private String cust_cert_code;
	private String first_name;
	private String middle_name;
	private String last_name;
	private Integer gender;
	private String birthday;
	private Integer cust_status;
	private String cust_language;
	private String remarks;
	private String cust_name;
}
