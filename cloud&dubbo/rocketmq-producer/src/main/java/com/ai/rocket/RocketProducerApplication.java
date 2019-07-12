package com.ai.rocket;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author: soane
 * @Date: 2019/7/10
 * @Time: 10:37
 * @Description: TODO
 */
@SpringBootApplication
public class RocketProducerApplication {
	public static void main(String[] args) {
		System.setProperty("es.set.netty.runtime.available.processors", "false");
		SpringApplication.run(RocketProducerApplication.class, args);
	}
}
