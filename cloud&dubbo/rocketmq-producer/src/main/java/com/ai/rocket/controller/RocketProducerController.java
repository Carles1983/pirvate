package com.ai.rocket.controller;

import lombok.extern.slf4j.Slf4j;
import org.apache.rocketmq.spring.core.RocketMQTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.Message;
import org.springframework.messaging.support.MessageBuilder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: soane
 * @Date: 2019/7/10
 * @Time: 14:48
 * @Description: TODO
 */
@RestController
@RequestMapping("/")
@Slf4j
public class RocketProducerController {

	private static final String DEFAULT_SEND_TOPIC = "rocketmq-cluster";

	@Autowired
	private RocketMQTemplate rocketMQTemplate;

	@RequestMapping(value = "/rocket/produce", method = RequestMethod.POST)
	public String production(@RequestParam String message){
		String result = "success";
		Message<String> rocketMessage = MessageBuilder.withPayload(message).build();
		rocketMQTemplate.send(DEFAULT_SEND_TOPIC, rocketMessage);
		return result;
	}

	@RequestMapping(value = "/rocket/sync", method = RequestMethod.POST)
	public String syncSend(@RequestParam String message){
		String result = "success";
		Message<String> rocketMessage = MessageBuilder.withPayload(message).build();
		rocketMQTemplate.syncSend(DEFAULT_SEND_TOPIC, rocketMessage);
		return result;
	}

}
