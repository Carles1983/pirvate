package com.ai.spring.cloud.oauth.mongo.document;

import java.util.Date;
import java.util.Set;

import org.springframework.data.annotation.Id;

import lombok.Data;

@Data
public class UserDoc {
	@Id
	private String id;
    private String memberName;
    private String password;
    private String mobile;
    private String email;
    private Integer sex;
    private Date birthday;
    private Date createTime;
    private Set<RoleDoc> roles;
}
