package com.ai.spring.cloud.oauth.mongo.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.ai.spring.cloud.oauth.mongo.document.PermissionDoc;

public interface PermissionRepository extends MongoRepository<PermissionDoc, String> {

}
