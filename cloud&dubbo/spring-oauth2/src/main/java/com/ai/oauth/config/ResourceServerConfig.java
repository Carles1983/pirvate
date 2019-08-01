package com.ai.oauth.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;

/**
 * @author: soane
 * @Date: 2019/8/1
 * @Time: 10:50
 * @Description: TODO
 */
@Configuration
@EnableResourceServer
@Order(2)
public class ResourceServerConfig {
}
