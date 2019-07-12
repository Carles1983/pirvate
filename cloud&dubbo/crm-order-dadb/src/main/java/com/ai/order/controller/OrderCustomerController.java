package com.ai.order.controller;

import com.ai.order.bo.OrdCust;
import com.ai.order.service.OrderCustomerService;
import java.util.Collections;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.JdkSerializationRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: soane
 * @Date: 2019/7/8
 * @Time: 10:51
 * @Description: TODO
 */
@RestController
@RequestMapping("/")
public class OrderCustomerController {

	private static final String CUSTOMER_KEY = "ORD_CUSTOMER";

	@Autowired
	private RedisTemplate<Object, Object> redisTemplate;

	@Autowired
	private OrderCustomerService orderCustomerService;

	@RequestMapping(value = "/customer", method = RequestMethod.POST)
	public Long saveOrderCustomer(){
		redisTemplate.setKeySerializer(new StringRedisSerializer());
		redisTemplate.setValueSerializer(new JdkSerializationRedisSerializer());
		ListOperations<Object, Object> listOperations = redisTemplate.opsForList();
		Long dataSize = listOperations.size(CUSTOMER_KEY);
		if(dataSize != null && dataSize > 0L){
			Long executeSize = 0L;
			for(long i= 0; i< dataSize; i++){
				Object obj = listOperations.rightPop(CUSTOMER_KEY);
				if(obj instanceof OrdCust){
					orderCustomerService.insertOrderCustomer((OrdCust) obj);
					executeSize ++;
				}
			}
			return executeSize;
		}
		return 0L;
	}

	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public List<OrdCust> listOrderCustomer(@RequestParam Long customerId){
		List<OrdCust> orderCustomerList = orderCustomerService.listOrderCustomers(customerId);
		if(!CollectionUtils.isEmpty(orderCustomerList)) {
			return orderCustomerList;
		}
		return Collections.emptyList();
	}

}
