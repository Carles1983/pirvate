package com.ai.spring.cloud.oauth.mongo.document;

import java.util.Date;
import java.util.Set;

import org.springframework.data.annotation.Id;

import lombok.Data;

@Data
public class RoleDoc {
	@Id
	private String id;
    private String name;
    private Integer valid;
    private Date createTime;
    private Date updateTime;
    private Set<PermissionDoc> permissions;
}
