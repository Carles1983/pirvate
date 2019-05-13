package com.ai.spring.cloud.oauth.mongo.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.ai.spring.cloud.oauth.mongo.document.RoleDoc;

public interface RoleRepository extends MongoRepository<RoleDoc, String> {
	RoleDoc findByName(String roleName);
}
