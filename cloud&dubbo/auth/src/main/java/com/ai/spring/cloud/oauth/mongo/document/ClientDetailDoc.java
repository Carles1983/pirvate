package com.ai.spring.cloud.oauth.mongo.document;

import org.springframework.data.annotation.Id;

import lombok.Data;

@Data
public class ClientDetailDoc {
	@Id
	private String client_id;
	private String resource_ids;
	private String client_secret;
	private String scope;
	private String authorized_grant_types;
	private String web_server_redirect_uri;
	private String authorities;
	private Integer access_token_validity;
	private Integer refresh_token_validity;
	private String additional_information;
	private String autoapprove;
}
