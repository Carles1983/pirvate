package com.ai.spring.cloud.oauth.mongo.document;

import java.util.Date;

import org.springframework.data.annotation.Id;

import lombok.Data;

@Data
public class PermissionDoc {
	@Id
	private String id;
    private String servicePrefix;
    private String method;
    private String uri;
    private Date createTime;
    private Date updateTime;
}
