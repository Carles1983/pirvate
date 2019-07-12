package com.ai.order;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author: soane
 * @Date: 2019/7/5
 * @Time: 10:30
 * @Description: TODO
 */
@SpringBootApplication
@MapperScan(basePackages = {"com.ai.order.mapper"})
public class OrderApplication {
	public static void main(String[] args) {
		SpringApplication.run(OrderApplication.class, args);
	}
}
