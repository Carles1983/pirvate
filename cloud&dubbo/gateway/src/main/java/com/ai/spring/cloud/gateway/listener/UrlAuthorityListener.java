package com.ai.spring.cloud.gateway.listener;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.ObjectMapper;

@Component
public class UrlAuthorityListener implements ApplicationListener<ContextRefreshedEvent> {

	public static List<Object> urlNeedNoAuthList = new ArrayList<>();
	
	private static final String URL_FREE_TO_AUTHORITY = "URL_NEED_NO_AUTHORITY";
	
	@SuppressWarnings("unchecked")
	@Override
	public void onApplicationEvent(ContextRefreshedEvent event) {
		if(event.getApplicationContext() != null) {
			RedisTemplate<Object, Object> redisTemplate = (RedisTemplate<Object, Object>) event.getApplicationContext().getBean("redisTemplate");
			Jackson2JsonRedisSerializer<Object> jackson2JsonRedisSerializer = new Jackson2JsonRedisSerializer<>(
					Object.class);
			ObjectMapper objectMapper = new ObjectMapper();
			objectMapper.setVisibility(PropertyAccessor.ALL, JsonAutoDetect.Visibility.ANY);
			objectMapper.enableDefaultTyping(ObjectMapper.DefaultTyping.NON_FINAL);
			jackson2JsonRedisSerializer.setObjectMapper(objectMapper);
			RedisSerializer<String> keySerializer = new StringRedisSerializer();	
			redisTemplate.setValueSerializer(jackson2JsonRedisSerializer);
			redisTemplate.setKeySerializer(keySerializer);
			redisTemplate.setHashKeySerializer(keySerializer);
			redisTemplate.afterPropertiesSet();
			
			ListOperations<Object, Object> listOp = redisTemplate.opsForList();
			urlNeedNoAuthList = listOp.range(URL_FREE_TO_AUTHORITY, 0, -1);
		}
	}

}
