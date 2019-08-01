package com.ai.security.sms;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 * @author: soane
 * @Date: 2019/7/31
 * @Time: 10:12
 * @Description: TODO
 */
public class SmsAuthenticationProvider implements AuthenticationProvider {

	private UserDetailsService userDetailService;

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		SmsAuthenticationToken authenticationToken = (SmsAuthenticationToken) authentication;
		UserDetails userDetails = userDetailService.loadUserByUsername((String) authenticationToken.getPrincipal());

		if (userDetails == null) {
			throw new InternalAuthenticationServiceException("未找到与该手机号对应的用户");
		}

		SmsAuthenticationToken authenticationResult = new SmsAuthenticationToken(userDetails, userDetails.getAuthorities());

		authenticationResult.setDetails(authenticationToken.getDetails());

		return authenticationResult;
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return SmsAuthenticationToken.class.isAssignableFrom(authentication);
	}

	public UserDetailsService getUserDetailService() {
		return userDetailService;
	}

	public void setUserDetailService(UserDetailsService userDetailService) {
		this.userDetailService = userDetailService;
	}
}
