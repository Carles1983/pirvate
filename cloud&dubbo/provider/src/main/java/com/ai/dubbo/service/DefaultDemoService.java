package com.ai.dubbo.service;

import com.ai.dubbo.api.DemoService;
import com.alibaba.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Value;

@Service
public class DefaultDemoService implements DemoService {

	@Value("${dubbo.protocol.port}")
	private int port;

	@Override
	public String sayHello(String name) {
		return name + "---> dubbo port : " + port;
	}
}
