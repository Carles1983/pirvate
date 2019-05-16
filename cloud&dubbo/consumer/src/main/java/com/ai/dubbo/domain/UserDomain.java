package com.ai.dubbo.domain;

import java.io.Serializable;

import lombok.Data;

@Data
public class UserDomain implements Serializable {
	
	private static final long serialVersionUID = -8329421649978444324L;
	
	private String id;
	private String name;
	private Integer sex;
	private Integer age;
	private String mail;
	private String address;
	
}
