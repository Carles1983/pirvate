package com.ai.dubbo.util;

import java.util.Map;

import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;

import com.ai.dubbo.constant.RequestConstant;
import com.alibaba.fastjson.JSONObject;

public class JsonConvertUtil {
	
	private JsonConvertUtil() {}
	
	@SuppressWarnings("unchecked")
	public static <T> T convertJosnString(String userId, String json, Class<T> clazz, RedisTemplate<String, Object> redisTemplate) throws Exception {
		HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
		Map<String, Object> bKeyPair = (Map<String, Object>) hashOp.get(RequestConstant.REQUEST_RTSS_USER_KEY + userId, RequestConstant.REQUEST_CONTSECURITY_HKEY);
		String contentDecrypt = SecurityKeyUtil.decryptDataByPrivateOnJava(json, SecurityKeyUtil.getPrivateKey(bKeyPair));
		T obj = JSONObject.parseObject(contentDecrypt, clazz);
		return obj;
	}
}
