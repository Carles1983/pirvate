package com.aii.crm.ci.web.cache;

import java.util.Map;
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

	public <T> Map<String, T> getCiStringComponentFromCache(String key){
		HashOperations<String, String, T> hashOp = redisTemplate.opsForHash();
		return hashOp.entries(key);
	}

	public <T> Map<Long, T> getCiLongComponentFromCache(String key){
		HashOperations<String, Long, T> hashOp = redisTemplate.opsForHash();
		return hashOp.entries(key);
	}

	public Long deleteCiComponentFromCache(String key, Object hKey){
		HashOperations<String, Long, Object> hashOp = redisTemplate.opsForHash();
		return hashOp.delete(key, hKey);
	}

	public Long deleteCiComponentFromCache(String key, Object[] hKeys){
		HashOperations<String, Long, Object> hashOp = redisTemplate.opsForHash();
		return hashOp.delete(key, hKeys);
	}

	public <T> void putCiComponentFromCache(String key, String hKey, T t){
		HashOperations<String, String, T> hashOp = redisTemplate.opsForHash();
		hashOp.put(key, hKey, t);
	}

	public <T> void putCiStringComponentFromCache(String key, Map<String, T> map){
		HashOperations<String, String, T> hashOp = redisTemplate.opsForHash();
		hashOp.putAll(key, map);
	}

	public <T> void putCiLongComponentFromCache(String key, Map<Long, T> map){
		HashOperations<String, Long, T> hashOp = redisTemplate.opsForHash();
		hashOp.putAll(key, map);
	}

}
