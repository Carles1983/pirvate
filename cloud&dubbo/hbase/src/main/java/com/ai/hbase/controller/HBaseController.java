package com.ai.hbase.controller;

import com.ai.hbase.mapper.domain.OrdCust;
import com.ai.hbase.service.HBaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.JdkSerializationRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: soane
 * @Date: 2019/7/11
 * @Time: 20:09
 * @Description: TODO
 */
@RestController
@RequestMapping("/")
public class HBaseController {
	private static final String CUSTOMER_KEY = "ORD_CUSTOMER";

	@Autowired
	private RedisTemplate<Object, Object> redisTemplate;

	@Autowired
	private HBaseService hBaseService;

	@RequestMapping(value = "/hbase/customer", method = RequestMethod.POST)
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
					executeSize ++;
				}
			}
			return executeSize;
		}
		return 0L;
	}

	@RequestMapping(value = "/hbase/customer", method = RequestMethod.GET)
	public String getOrderCustomer(){
		String result = hBaseService.getOrdCust("ord-cust");
		return result;
	}

	@RequestMapping(value = "/hbase/customer", method = RequestMethod.DELETE)
	public String deleteOrderCustomer(){
		String result = hBaseService.deleteOrdCust("ord-cust");
		return result;
	}
}
