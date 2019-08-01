package com.ai.security.config;

import com.ai.security.sms.SmsAuthenticationConfig;
import com.ai.security.sms.SmsCodeFilter;
import com.ai.security.validatecode.ValidateCodeFilter;
import com.ai.security.handler.SecurityAuthenticationFailureHandler;
import com.ai.security.handler.SecurityAuthenticationSucessHandler;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

/**
 * @author: soane
 * @Date: 2019/7/30
 * @Time: 11:17
 * @Description: TODO
 */
@Configuration
public class BrowserSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private SecurityAuthenticationSucessHandler authenticationSuccessHandler;

	@Autowired
	private SecurityAuthenticationFailureHandler authenticationFailureHandler;

	@Autowired
	private ValidateCodeFilter validateCodeFilter;

	@Autowired
	private UserDetailsService userDetailsService;

	@Autowired
	private DataSource dataSource;

	@Autowired
	private SmsCodeFilter smsCodeFilter;

	@Autowired
	private SmsAuthenticationConfig smsAuthenticationConfig;

	@Bean
	public PersistentTokenRepository persistentTokenRepository() {
		JdbcTokenRepositoryImpl jdbcTokenRepository = new JdbcTokenRepositoryImpl();
		jdbcTokenRepository.setDataSource(dataSource);
		jdbcTokenRepository.setCreateTableOnStartup(false);
		return jdbcTokenRepository;
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.addFilterBefore(validateCodeFilter, UsernamePasswordAuthenticationFilter.class)
				.addFilterBefore(smsCodeFilter,UsernamePasswordAuthenticationFilter.class)
				.formLogin() // 表单方式
					.loginPage("/login.html")
					.loginProcessingUrl("/login")
					.successHandler(authenticationSuccessHandler)
					.failureHandler(authenticationFailureHandler)
					.and()
				.rememberMe()
					.tokenRepository(persistentTokenRepository())
					.tokenValiditySeconds(120)
					.userDetailsService(userDetailsService)
				.and()
					.authorizeRequests() // 授权配置
					.antMatchers("/login.html", "/code/validatecode", "/code/sms", "/session/invalid").permitAll()
					.antMatchers("/css/**", "/js/**","/images/**").permitAll()
					.anyRequest()  // 所有请求
					.authenticated() // 都需要认证
				.and()
					.sessionManagement()
					.invalidSessionUrl("/session/invalid")
				.and()
					.csrf().disable()
				.apply(smsAuthenticationConfig);
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

}
