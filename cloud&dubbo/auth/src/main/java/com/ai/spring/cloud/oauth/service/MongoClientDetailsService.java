package com.ai.spring.cloud.oauth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
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
	
	@Autowired
	private RedisTemplate<Object, Object> redisTemplate;
	
	private static final String CLIENT_REDIS_KEY = "CLIENT_IN_REDIS";
	
	@Override
	public ClientDetails loadClientByClientId(String clientId) throws ClientRegistrationException {
		HashOperations<Object, Object, Object> hashOp = redisTemplate.opsForHash();
		if(hashOp.hasKey(CLIENT_REDIS_KEY, clientId)) {
			return (ClientDetails) hashOp.get(CLIENT_REDIS_KEY, clientId);
		}
		
		ClientDetailDoc clientDoc = clientDetailReository.findByClientId(clientId);
		ClientDetails cds = ClientDetailsConverter.convert(clientDoc);
		hashOp.put(CLIENT_REDIS_KEY, clientId, cds);
		return cds;
	}

}
