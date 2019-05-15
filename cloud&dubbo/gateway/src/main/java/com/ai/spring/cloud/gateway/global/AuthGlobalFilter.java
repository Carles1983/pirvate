package com.ai.spring.cloud.gateway.global;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.gateway.filter.GatewayFilterChain;
import org.springframework.cloud.gateway.filter.GlobalFilter;
import org.springframework.core.Ordered;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.server.ServerWebExchange;

import com.ai.spring.cloud.gateway.listener.UrlAuthorityListener;
import com.ai.spring.cloud.gateway.oauth.RedisTokenService;

import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Mono;

@Component
@Slf4j
public class AuthGlobalFilter implements GlobalFilter, Ordered {
	
	private static final String TOKEN_IN_HEADER = "Authorization";
	
	private static final String TOKEN_IN_PARAM = "access_token";

	@Autowired
	private RedisTokenService redisTokenService;

	@Override
	public int getOrder() {
		return Ordered.HIGHEST_PRECEDENCE;
	}

	@Override
	public Mono<Void> filter(ServerWebExchange exchange, GatewayFilterChain chain) {
		String requestUrl = exchange.getRequest().getURI().getPath();
		// 如果URL在不用过滤的集合中，直接执行下一步
		if(!CollectionUtils.isEmpty(UrlAuthorityListener.urlNeedNoAuthList)) {
			if(UrlAuthorityListener.urlNeedNoAuthList.contains(requestUrl)) {
				return chain.filter(exchange);
			}
		} 
			// 获取Header中或者param中的token
			String headerToken = exchange.getRequest().getHeaders().getFirst(TOKEN_IN_HEADER);
			String paramToken = exchange.getRequest().getQueryParams().getFirst(TOKEN_IN_PARAM);
			
			// token不存在，返回未授权
			if(StringUtils.isEmpty(headerToken) && StringUtils.isEmpty(paramToken)) {
				log.info("Need Authority. Token must not be null.");
				
				exchange.getResponse().setStatusCode(HttpStatus.UNAUTHORIZED);
				return exchange.getResponse().setComplete();
			}
			
			// token在REDIS中找不到，返回token失效
			String token = StringUtils.isEmpty(headerToken) ? paramToken : headerToken;
			if(token.startsWith("Bearer ")) {
				token = token.replace("Bearer ", "").trim();
			}
			boolean tokenExist = redisTokenService.tokenExist(token);
			if(!tokenExist) {
				log.info("Token is expired.");
				exchange.getResponse().setStatusCode(HttpStatus.FORBIDDEN);
				return exchange.getResponse().setComplete();
			}
		
		
		return chain.filter(exchange);
	}

}
