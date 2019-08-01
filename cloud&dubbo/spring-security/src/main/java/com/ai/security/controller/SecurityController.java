package com.ai.security.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: soane
 * @Date: 2019/7/30
 * @Time: 11:09
 * @Description: TODO
 */
@RestController
@RequestMapping("/")
public class SecurityController {

	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public String hello(){
		return "hello spring security";
	}

}
