package com.aii.crm.common.cache.model;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class Ftp implements Serializable {
	private String ftpCode;
	private String hostIp;
	private Integer port;
	private String username;
	private String password;
	private String remarks;
	private String state;
	private Date stateDate;
	private Date createdDate;
	private String secure;
}
