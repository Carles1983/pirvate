package com.aii.crm.loyalty.web;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableDiscoveryClient
@MapperScan(basePackages = {"com.aii.crm.loyalty.web.persistence"})
@ComponentScan(basePackages = {"com.aii.component"})
public class LoyaltyWebApplication {
	public static void main(String[] args) {
		SpringApplication.run(LoyaltyWebApplication.class, args);
	}
}
