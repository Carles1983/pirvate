package com.aii.crm.msm.web;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableDiscoveryClient
@MapperScan(basePackages = {"com.aii.crm.msm.web.persistence"})
@ComponentScan(basePackages = {"com.aii.component"})
public class MsmWebApplication {
	public static void main(String[] args) {
		SpringApplication.run(MsmWebApplication.class, args);
	}
}
