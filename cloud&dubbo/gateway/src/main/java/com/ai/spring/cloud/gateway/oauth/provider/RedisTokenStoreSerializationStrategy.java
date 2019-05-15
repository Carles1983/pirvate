package com.ai.spring.cloud.gateway.oauth.provider;

public interface RedisTokenStoreSerializationStrategy {
	<T> T deserialize(byte[] bytes, Class<T> clazz);

	String deserializeString(byte[] bytes);

	byte[] serialize(Object object);

	byte[] serialize(String data);
}
