package com.ai.spring.cloud.oauth.converter;

import org.apache.commons.lang3.StringUtils;
import org.springframework.security.oauth2.provider.ClientDetails;
import org.springframework.security.oauth2.provider.client.BaseClientDetails;

import com.ai.spring.cloud.oauth.mongo.document.ClientDetailDoc;

public class ClientDetailsConverter {

	public static ClientDetails convert(ClientDetailDoc doc) {
		BaseClientDetails clientDetails = new BaseClientDetails(doc.getClientId(), doc.getResourceIds(),
				doc.getScope(), doc.getAuthorizedGrantTypes(), null, doc.getWebServerRedirectUri());
		clientDetails.setClientSecret(doc.getClientSecret());

		if (StringUtils.isNotEmpty(doc.getAdditionalInformation())) {
			clientDetails.addAdditionalInformation("information", doc.getAdditionalInformation());
		}
		clientDetails.setAccessTokenValiditySeconds(doc.getAccessTokenValidity());
		clientDetails.setRefreshTokenValiditySeconds(doc.getRefreshTokenValidity());

		return clientDetails;
	}
}
