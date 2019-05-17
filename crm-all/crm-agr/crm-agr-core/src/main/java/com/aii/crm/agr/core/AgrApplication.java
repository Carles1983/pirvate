package com.aii.crm.agr.core;

import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class AgrApplication {
	public static void main(String[] args) {
		new SpringApplicationBuilder().web(WebApplicationType.NONE).run(args);
	}
}
