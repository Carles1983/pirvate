package com.ai.spring.cloud.oauth.mongo.document;

import org.springframework.data.annotation.Id;

import lombok.Data;

@Data
public class ClientDetailDoc {
	@Id
	private String id;
	private String clientId;
	private String resourceIds;
	private String clientSecret;
	private String scope;
	private String authorizedGrantTypes;
	private String webServerRedirectUri;
	private String authorities;
	private Integer accessTokenValidity;
	private Integer refreshTokenValidity;
	private String additionalInformation;
	private String autoapprove;
}
