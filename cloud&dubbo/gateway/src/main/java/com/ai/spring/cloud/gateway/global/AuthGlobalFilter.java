package com.ai.spring.cloud.gateway.global;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.gateway.filter.GatewayFilterChain;
import org.springframework.cloud.gateway.filter.GlobalFilter;
import org.springframework.core.Ordered;
import org.springframework.core.io.buffer.DataBuffer;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.server.reactive.ServerHttpResponse;
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
		if (!CollectionUtils.isEmpty(UrlAuthorityListener.urlNeedNoAuthList)) {
			if (UrlAuthorityListener.urlNeedNoAuthList.contains(requestUrl)) {
				return chain.filter(exchange);
			}
		}
		// 获取Header中或者param中的token
		String headerToken = exchange.getRequest().getHeaders().getFirst(TOKEN_IN_HEADER);
		String paramToken = exchange.getRequest().getQueryParams().getFirst(TOKEN_IN_PARAM);

		// token不存在，返回未授权
		if (StringUtils.isEmpty(headerToken) && StringUtils.isEmpty(paramToken)) {
			log.info("Need Authority. Token must not be null.");
			DataBuffer bodyDataBuffer = responseErrorInfo(exchange.getResponse(), HttpStatus.UNAUTHORIZED.toString(),
					"Token is not exist.");
			exchange.getResponse().setStatusCode(HttpStatus.UNAUTHORIZED);
			return exchange.getResponse().writeWith(Mono.just(bodyDataBuffer));
		}

		// token在REDIS中找不到，返回token失效
		String token = StringUtils.isEmpty(headerToken) ? paramToken : headerToken;
		if (token.startsWith("Bearer ")) {
			token = token.replace("Bearer ", "").trim();
		}
		boolean tokenExist = redisTokenService.tokenExist(token);
		if (!tokenExist) {
			log.info("Token is expired.");
			DataBuffer bodyDataBuffer = responseErrorInfo(exchange.getResponse(), HttpStatus.FORBIDDEN.toString(),
					"No Authorization message.");
			exchange.getResponse().setStatusCode(HttpStatus.FORBIDDEN);
			return exchange.getResponse().writeWith(Mono.just(bodyDataBuffer));
		}

		return chain.filter(exchange);
	}

	/**
	 * 自定义返回错误信息
	 * 
	 * @param response
	 * @param status
	 * @param message
	 * @return
	 */
	public DataBuffer responseErrorInfo(ServerHttpResponse response, String status, String message) {
		HttpHeaders httpHeaders = response.getHeaders();
		httpHeaders.add("Content-Type", "application/json; charset=UTF-8");
		httpHeaders.add("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0");

		response.setStatusCode(HttpStatus.UNAUTHORIZED);
		Map<String, String> map = new HashMap<>();
		map.put("status", status);
		map.put("message", message);
		DataBuffer bodyDataBuffer = response.bufferFactory().wrap(map.toString().getBytes());
		return bodyDataBuffer;
	}

}
