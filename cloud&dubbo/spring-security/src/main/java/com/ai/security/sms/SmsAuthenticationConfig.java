package com.ai.security.sms;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.SecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.DefaultSecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.stereotype.Component;

/**
 * @author: soane
 * @Date: 2019/7/31
 * @Time: 10:24
 * @Description: TODO
 */
@Component
public class SmsAuthenticationConfig extends SecurityConfigurerAdapter<DefaultSecurityFilterChain, HttpSecurity> {
	@Autowired
	private AuthenticationSuccessHandler authenticationSuccessHandler;

	@Autowired
	private AuthenticationFailureHandler authenticationFailureHandler;

	@Autowired
	private UserDetailsService userDetailService;

	@Override
	public void configure(HttpSecurity http) throws Exception {
		SmsAuthenticationFilter smsAuthenticationFilter = new SmsAuthenticationFilter();
		smsAuthenticationFilter.setAuthenticationManager(http.getSharedObject(AuthenticationManager.class));
		smsAuthenticationFilter.setAuthenticationSuccessHandler(authenticationSuccessHandler);
		smsAuthenticationFilter.setAuthenticationFailureHandler(authenticationFailureHandler);

		SmsAuthenticationProvider smsAuthenticationProvider = new SmsAuthenticationProvider();
		smsAuthenticationProvider.setUserDetailService(userDetailService);

		http.authenticationProvider(smsAuthenticationProvider)
				.addFilterAfter(smsAuthenticationFilter, UsernamePasswordAuthenticationFilter.class);

	}
}
