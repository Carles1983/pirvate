package com.aii.crm.cache.web;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableDiscoveryClient
@MapperScan("com.aii.crm.cache.web.persistence")
@ComponentScan(basePackages = {"com.aii.component"})
public class CacheWebApplication {
	public static void main(String[] args) {
		SpringApplication.run(CacheWebApplication.class, args);
	}
}
