package com.ai.spring.cloud.gateway.oauth;

import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.serializer.JdkSerializationRedisSerializer;
import org.springframework.stereotype.Service;

@Service
public class RedisTokenService {

	private final RedisConnectionFactory connectionFactory;
	private final JdkSerializationRedisSerializer OBJECT_SERIALIZER = new JdkSerializationRedisSerializer();
	
	private String prefix = "";

	public RedisTokenService(RedisConnectionFactory connectionFactory) {
		this.connectionFactory = connectionFactory;
	}

	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}

	private RedisConnection getConnection() {
		return this.connectionFactory.getConnection();
	}

	private byte[] serializeKey(String object) {
		return this.serialize(this.prefix + object);
	}

	private byte[] serialize(String string) {
		return this.OBJECT_SERIALIZER.serialize(string);
	}

	public boolean accessTokenInRedis(String token) {
		byte[] bytes = null;
		RedisConnection conn = this.getConnection();
		try {
			bytes = conn.get(this.serializeKey("auth:" + token));
		} finally {
			conn.close();
		}
		return bytes != null;
	}
}
