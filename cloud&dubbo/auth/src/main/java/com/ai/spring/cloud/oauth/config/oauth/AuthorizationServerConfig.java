package com.ai.spring.cloud.oauth.config.oauth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.oauth2.common.exceptions.OAuth2Exception;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.error.WebResponseExceptionTranslator;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.redis.RedisTokenStore;

import com.ai.spring.cloud.oauth.config.error.AuthWebResponseExceptionTranslator;
import com.ai.spring.cloud.oauth.service.AuthUserDetailService;

@Configuration
@EnableAuthorizationServer
public class AuthorizationServerConfig extends AuthorizationServerConfigurerAdapter {

	@Autowired
	private AuthenticationManager authenticationManager;

	@Autowired
	private RedisConnectionFactory redisConnectionFactory;

	@Autowired
	private AuthUserDetailService userDetailService;

	@Bean
	public TokenStore tokenStore() {
		return new RedisTokenStore(redisConnectionFactory);
	}

	@Override
	public void configure(AuthorizationServerSecurityConfigurer security) throws Exception {
		security.allowFormAuthenticationForClients().tokenKeyAccess("permitAll()")
				.checkTokenAccess("isAuthenticated()");
	}

	/**
	 * 配置 oauth_client_details【client_id和client_secret等】信息的认证【检查ClientDetails的合法性】服务
	 * 设置 认证信息的来源：数据库 (可选项：数据库和内存,使用内存一般用来作测试) 自动注入：ClientDetailsService的实现类
	 * JdbcClientDetailsService (检查 ClientDetails 对象) 这个方法主要是用于校验注册的第三方客户端的信息
	 */
	@Override
	public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
		clients.withClientDetails(clientDetails());
	}

	@Bean
	public ClientDetailsService clientDetails() {
		return new MongoClientDetailsService();
	}

	@Bean
	public WebResponseExceptionTranslator<OAuth2Exception> webResponseExceptionTranslator() {
		return new AuthWebResponseExceptionTranslator();
	}

	@Override
	public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
		endpoints.tokenStore(tokenStore()).userDetailsService(userDetailService)
				.authenticationManager(authenticationManager);
		endpoints.tokenServices(defaultTokenServices());
		// 认证异常翻译
		endpoints.exceptionTranslator(webResponseExceptionTranslator());
	}

	/**
	 * <p>
	 * 注意，自定义TokenServices的时候，需要设置@Primary，否则报错，
	 * </p>
	 * 自定义的token 认证的token是存到redis里的
	 * 
	 * @return
	 */
	@Primary
	@Bean
	public DefaultTokenServices defaultTokenServices() {
		DefaultTokenServices tokenServices = new DefaultTokenServices();
		tokenServices.setTokenStore(tokenStore());
		tokenServices.setSupportRefreshToken(true);
		tokenServices.setClientDetailsService(clientDetails());
		// token有效期自定义设置，默认12小时
		tokenServices.setAccessTokenValiditySeconds(60 * 60 * 12);
		// refresh_token默认30天
		tokenServices.setRefreshTokenValiditySeconds(60 * 60 * 24 * 7);
		return tokenServices;
	}

}
