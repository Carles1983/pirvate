package com.ai.spring.cloud.gateway.oauth.provider;

import org.springframework.data.redis.serializer.JdkSerializationRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

public class JdkSerializationStrategy implements RedisTokenStoreSerializationStrategy {
	
	private static final StringRedisSerializer STRING_SERIALIZER = new StringRedisSerializer();
	
	private static final JdkSerializationRedisSerializer OBJECT_SERIALIZER = new JdkSerializationRedisSerializer();

	private static final byte[] EMPTY_ARRAY = new byte[0];

	private static boolean isEmpty(byte[] bytes) {
		return bytes == null || bytes.length == 0;
	}
	
	@SuppressWarnings("unchecked")
	private <T> T deserializeInternal(byte[] bytes, Class<T> clazz) {
		return (T) OBJECT_SERIALIZER.deserialize(bytes);
	}

	private byte[] serializeInternal(Object object) {
		return OBJECT_SERIALIZER.serialize(object);
	}
	
	private String deserializeStringInternal(byte[] bytes) {
		return STRING_SERIALIZER.deserialize(bytes);
	}

	private byte[] serializeInternal(String string) {
		return STRING_SERIALIZER.serialize(string);
	}

	@Override
	public <T> T deserialize(byte[] bytes, Class<T> clazz) {
		if (isEmpty(bytes)) {
			return null;
		}
		return deserializeInternal(bytes, clazz);
	}

	@Override
	public String deserializeString(byte[] bytes) {
		if (isEmpty(bytes)) {
			return null;
		}
		return deserializeStringInternal(bytes);
	}

	@Override
	public byte[] serialize(Object object) {
		if (object == null) {
			return EMPTY_ARRAY;
		}
		return serializeInternal(object);
	}

	@Override
	public byte[] serialize(String data) {
		if (data == null) {
			return EMPTY_ARRAY;
		}
		return serializeInternal(data);
	}

}
