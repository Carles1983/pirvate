package com.ai.spring.cloud.oauth.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.provider.ClientDetails;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.ClientRegistrationException;
import org.springframework.stereotype.Service;

import com.ai.spring.cloud.oauth.converter.ClientDetailsConverter;
import com.ai.spring.cloud.oauth.mongo.document.ClientDetailDoc;
import com.ai.spring.cloud.oauth.mongo.repository.ClientDetailRepository;

@Service
public class MongoClientDetailsService implements ClientDetailsService {

	@Autowired
	private ClientDetailRepository clientDetailReository;
	
	@Override
	public ClientDetails loadClientByClientId(String clientId) throws ClientRegistrationException {
		Optional<ClientDetailDoc> clientDoc = clientDetailReository.findById(clientId);
		ClientDetailDoc doc = clientDoc.get();
		return ClientDetailsConverter.convert(doc);
	}

}
