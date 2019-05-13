package com.ai.spring.cloud.oauth.mongo.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.ai.spring.cloud.oauth.mongo.document.ClientDetailDoc;

public interface ClientDetailRepository extends MongoRepository<ClientDetailDoc, String> {
	ClientDetailDoc findByClientId(String clientId);
}
