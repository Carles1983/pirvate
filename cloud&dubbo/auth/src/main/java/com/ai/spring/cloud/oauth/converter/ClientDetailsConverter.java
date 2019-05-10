package com.ai.spring.cloud.oauth.converter;

import org.apache.commons.lang3.StringUtils;
import org.springframework.security.oauth2.provider.ClientDetails;
import org.springframework.security.oauth2.provider.client.BaseClientDetails;

import com.ai.spring.cloud.oauth.mongo.document.ClientDetailDoc;

public class ClientDetailsConverter {

	public static ClientDetails convert(ClientDetailDoc doc) {
		BaseClientDetails clientDetails = new BaseClientDetails(doc.getClient_id(), doc.getResource_ids(),
				doc.getScope(), doc.getAuthorized_grant_types(), null, doc.getWeb_server_redirect_uri());
		clientDetails.setClientSecret(doc.getClient_secret());

		if (StringUtils.isNotEmpty(doc.getAdditional_information())) {
			clientDetails.addAdditionalInformation("information", doc.getAdditional_information());
		}
		clientDetails.setAccessTokenValiditySeconds(doc.getAccess_token_validity());
		clientDetails.setRefreshTokenValiditySeconds(doc.getRefresh_token_validity());

		return clientDetails;
	}
}
