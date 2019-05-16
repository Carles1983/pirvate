package com.ai.dubbo.domain;

import java.io.Serializable;

import lombok.Data;

@Data
public class RequestDomain implements Serializable {

	private static final long serialVersionUID = 8675520823746100251L;
	
	private String userId;
	private String content;

}
