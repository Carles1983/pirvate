package com.aii.crm.agr.web;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableDiscoveryClient
@MapperScan("com.aii.crm.agr.web.persistence")
@ComponentScan(basePackages = {"com.aii.component"})
public class AgrWebApplication {
	public static void main(String[] args) {
		SpringApplication.run(AgrWebApplication.class, args);
	}
}
