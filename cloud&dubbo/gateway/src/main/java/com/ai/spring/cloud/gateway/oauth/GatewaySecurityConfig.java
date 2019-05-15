package com.ai.spring.cloud.gateway.oauth;

import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.reactive.EnableWebFluxSecurity;
import org.springframework.security.config.web.server.ServerHttpSecurity;
import org.springframework.security.web.server.SecurityWebFilterChain;

@EnableWebFluxSecurity
public class GatewaySecurityConfig {
	@Bean 
	public SecurityWebFilterChain webFluxSecurityFilterChain(ServerHttpSecurity http) throws Exception { 
		return http.csrf().disable().build();
		
	}
}
