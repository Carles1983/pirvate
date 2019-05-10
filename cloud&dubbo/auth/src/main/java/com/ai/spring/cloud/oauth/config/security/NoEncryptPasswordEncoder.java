package com.ai.spring.cloud.oauth.config.security;

import org.springframework.security.crypto.password.PasswordEncoder;

public class NoEncryptPasswordEncoder implements PasswordEncoder {

	@Override
	public String encode(CharSequence rawPassword) {
		return (String) rawPassword;
	}

	@Override
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		//密码对比 密码对 true 反之 false
        //rawPassword 数据库中的密码
        //encodedPassword 前台传入的密码
        return encodedPassword.equals((String) rawPassword);
	}

}
