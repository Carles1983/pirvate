package com.ai.order.controller;

import com.ai.order.bo.OrdCust;
import com.ai.order.service.OrderCustomerService;
import com.alibaba.fastjson.support.spring.FastJsonRedisSerializer;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.JdkSerializationRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: soane
 * @Date: 2019/7/5
 * @Time: 10:36
 * @Description: TODO
 */
@RestController
@RequestMapping("/")
public class OrderCustomerController {

	@Autowired
	private RedisTemplate<Object, Object> redisTemplate;

	@Autowired
	private OrderCustomerService orderCustomerService;

	private static final String CUSTOMER_KEY = "ORD_CUSTOMER";

	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public Integer queryCustomer(@RequestParam Integer pageNo, @RequestParam Integer pageSize){
		redisTemplate.setKeySerializer(new StringRedisSerializer());
		redisTemplate.setValueSerializer(new JdkSerializationRedisSerializer());
		List<OrdCust> list = orderCustomerService.listOrderCustomer(pageNo, pageSize);
		if(!CollectionUtils.isEmpty(list)){
			ListOperations<Object, Object> listOperations = redisTemplate.opsForList();
			for(OrdCust customer : list){
				listOperations.leftPush(CUSTOMER_KEY, customer);
			}
			return list.size();
		}
		return 0;
	}

}
