package com.ai.soap.config;

import com.ai.soap.interfaces.WebServiceDemoService;
import javax.xml.ws.Endpoint;
import org.apache.cxf.Bus;
import org.apache.cxf.bus.spring.SpringBus;


import org.apache.cxf.jaxws.EndpointImpl;
import org.apache.cxf.transport.servlet.CXFServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author: soane
 * @Date: 2019/7/19
 * @Time: 11:35
 * @Description: TODO
 */
@Configuration
public class WebServiceConfig {

	@Autowired
	private WebServiceDemoService webServiceDemoService;

	/**
	 * 注入servlet  bean name不能dispatcherServlet 否则会覆盖dispatcherServlet
	 * @return
	 */
	@Bean(name = "cxfServlet")
	public ServletRegistrationBean cxfServlet() {
		return new ServletRegistrationBean(new CXFServlet(),"/webservice/*");
	}

	@Bean(name = Bus.DEFAULT_BUS_ID)
	public SpringBus springBus() {
		return new SpringBus();
	}

	/**
	 * 注册WebServiceDemoService接口到webservice服务
	 * @return
	 */
	@Bean(name = "WebServiceDemoEndpoint")
	public Endpoint sweptPayEndpoint() {
		EndpointImpl endpoint = new EndpointImpl(springBus(), webServiceDemoService);
		endpoint.publish("/webservice");
		return endpoint;
	}

}
