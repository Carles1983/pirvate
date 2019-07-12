package com.ai.order;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author: soane
 * @Date: 2019/7/8
 * @Time: 9:08
 * @Description: TODO
 */
@SpringBootApplication
@MapperScan(basePackages = {"com.ai.order.mapper"})
public class OrderShardingApplication {
	public static void main(String[] args) {
		SpringApplication.run(OrderShardingApplication.class, args);
	}
}
