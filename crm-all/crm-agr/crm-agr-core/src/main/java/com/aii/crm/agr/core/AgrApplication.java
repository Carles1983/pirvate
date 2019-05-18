package com.aii.crm.agr.core;

import com.alibaba.dubbo.config.spring.context.annotation.EnableDubbo;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDubbo
@EnableDiscoveryClient
@MapperScan(basePackages = { "com.aii.crm.agr.core.persistence" })
public class AgrApplication {
	public static void main(String[] args) {
		new SpringApplicationBuilder(AgrApplication.class).web(WebApplicationType.NONE).run(args);
	}
}
