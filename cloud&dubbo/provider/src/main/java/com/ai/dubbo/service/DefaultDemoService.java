package com.ai.dubbo.service;

import com.ai.dubbo.api.DemoService;
import com.alibaba.dubbo.config.annotation.Service;

import org.apache.skywalking.apm.toolkit.trace.ActiveSpan;
import org.apache.skywalking.apm.toolkit.trace.Trace;
import org.springframework.beans.factory.annotation.Value;

@Service
public class DefaultDemoService implements DemoService {

	@Value("${dubbo.protocol.port}")
	private int port;

	@Trace
	@Override
	public String sayHello(String name) {
		ActiveSpan.tag("provider-port", String.valueOf(port));
		ActiveSpan.tag("provider-name", name);
		return name + "---> dubbo port : " + port;
	}
}
