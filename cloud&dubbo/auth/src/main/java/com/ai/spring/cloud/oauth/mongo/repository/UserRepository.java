package com.ai.spring.cloud.oauth.mongo.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.ai.spring.cloud.oauth.mongo.document.UserDoc;

public interface UserRepository extends MongoRepository<UserDoc, String> {
	UserDoc findUserByName(String username);
}
