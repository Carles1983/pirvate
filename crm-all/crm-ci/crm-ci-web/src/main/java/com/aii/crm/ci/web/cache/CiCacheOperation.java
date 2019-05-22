package com.aii.crm.ci.web.cache;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

@Component
public class CiCacheOperation {

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	public <T> T getCiComponentFromCache(String key, String hKey){
		HashOperations<String, String, T> hashOp = redisTemplate.opsForHash();
		return hashOp.get(key, hKey);
	}

	public <T> T getCiComponentFromCache(String key, Long hKey){
		HashOperations<String, Long, T> hashOp = redisTemplate.opsForHash();
		return hashOp.get(key, hKey);
	}

	public Long deleteCiComponentFromCache(String key, String hKey){
		HashOperations<String, Long, Object> hashOp = redisTemplate.opsForHash();
		return hashOp.delete(key, hKey);
	}

	public <T> void putCiComponentFromCache(String key, String hKey, T t){
		HashOperations<String, String, T> hashOp = redisTemplate.opsForHash();
		hashOp.put(key, hKey, t);
	}

}
