package com.ai.spring.cloud.gateway.oauth;

import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.stereotype.Service;

import com.ai.spring.cloud.gateway.oauth.provider.JdkSerializationStrategy;
import com.ai.spring.cloud.gateway.oauth.provider.RedisTokenStoreSerializationStrategy;

@Service
public class RedisTokenService {
	private static final String AUTH = "auth:";
	private static final String REFRESH_AUTH = "refresh_auth:";
	private final RedisConnectionFactory connectionFactory;
	private RedisTokenStoreSerializationStrategy serializationStrategy = new JdkSerializationStrategy();
	private String prefix = "";

	public RedisTokenService(RedisConnectionFactory connectionFactory) {
		this.connectionFactory = connectionFactory;
	}

	public void setSerializationStrategy(RedisTokenStoreSerializationStrategy serializationStrategy) {
		this.serializationStrategy = serializationStrategy;
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
		return this.serializationStrategy.serialize(string);
	}

	public boolean tokenExist(String token) {
		byte[] bytes = null;
		RedisConnection conn = this.getConnection();
		try {
			bytes = conn.get(this.serializeKey(AUTH + token));
		} finally {
			conn.close();
		}
		return bytes != null;
	}

	
	public boolean refreshTokenExist(String token) {
		byte[] bytes = null;
		RedisConnection conn = getConnection();
		try {
			bytes = conn.get(serializeKey(REFRESH_AUTH + token));
		} finally {
			conn.close();
		}
		return bytes != null;
	}

}
