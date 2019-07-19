package com.ai.soap.interfaces.impl;

import com.ai.soap.interfaces.WebServiceDemoService;
import javax.jws.WebService;
import org.springframework.stereotype.Service;

/**
 * @author: soane
 * @Date: 2019/7/19
 * @Time: 11:32
 * @Description: TODO
 */
@Service
@WebService(serviceName = "WebServiceDemoService",
		targetNamespace = "http://webservice.soap.ai.com",
		endpointInterface = "com.ai.soap.interfaces.WebServiceDemoService")
public class WebServiceDemoServiceImpl implements WebServiceDemoService {

	@Override
	public String hello(String name) {
		return "Hello, " + name + " !";
	}
}
