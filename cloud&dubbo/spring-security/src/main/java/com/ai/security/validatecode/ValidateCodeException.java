package com.ai.security.validatecode;


import org.springframework.security.core.AuthenticationException;

/**
 * @author: soane
 * @Date: 2019/7/31
 * @Time: 8:52
 * @Description: TODO
 */
public class ValidateCodeException extends AuthenticationException {

	public ValidateCodeException(String message) {
		super(message);
	}

}
