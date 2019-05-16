package com.ai.dubbo.filter;

import java.io.IOException;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import com.ai.dubbo.constant.RequestConstant;
import com.ai.dubbo.util.SecurityKeyUtil;
import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.ObjectMapper;

import io.netty.util.internal.StringUtil;
import lombok.extern.slf4j.Slf4j;

@Component
@Order(1)
@Slf4j
public class HttpServletRequestFilter implements Filter, InitializingBean {
	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@SuppressWarnings("unchecked")
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		try {
			HttpServletRequest req = (HttpServletRequest) request;
			HttpServletResponse res = (HttpServletResponse) response;

			String userId = req.getHeader(RequestConstant.REQUEST_HEADER_USER_KEY);
			String timestamp = req.getHeader(RequestConstant.REQUEST_HEADER_TIME_KEY);
			String signiture = req.getHeader(RequestConstant.REQUEST_HEADER_SIGNATURE_KEY);
			
			if(StringUtils.isEmpty(userId) && StringUtils.isEmpty(timestamp) && StringUtils.isEmpty(signiture)) {
				chain.doFilter(request, response);
			} else {
				HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
				Map<String, Object> aKeyMap = (Map<String, Object>) hashOp
						.get(RequestConstant.REQUEST_RTSS_USER_KEY + userId, RequestConstant.REQUEST_SIGNSECURITY_HKEY);
				String userCode = (String) hashOp.get(RequestConstant.REQUEST_RTSS_USER_KEY + userId,
						RequestConstant.REQUEST_USERCODE_HKEY);

				String aPriKey = SecurityKeyUtil.getPrivateKey(aKeyMap);
				String signitureOnJava = SecurityKeyUtil.encryptedDataByPrivateOnJava(userId + timestamp + userCode,
						aPriKey);
				
				if(signitureOnJava.equals(signiture)) {
					chain.doFilter(request, response);
				} else {
					res.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
					res.getWriter().write("requestfailed.");
					res.getWriter().flush();
					res.getWriter().close();
				}
			}
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}
		
	}

	@Override
	public void afterPropertiesSet() throws Exception {
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
	}

}
