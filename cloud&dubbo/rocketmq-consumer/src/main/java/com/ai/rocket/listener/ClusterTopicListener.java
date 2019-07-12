package com.ai.rocket.listener;

import lombok.extern.slf4j.Slf4j;
import org.apache.rocketmq.spring.annotation.RocketMQMessageListener;
import org.apache.rocketmq.spring.core.RocketMQListener;
import org.springframework.stereotype.Service;

/**
 * @author: soane
 * @Date: 2019/7/10
 * @Time: 17:26
 * @Description: TODO
 */
@Slf4j
@Service
@RocketMQMessageListener(topic = "rocketmq-cluster", consumerGroup = "g-topic-consumer")
public class ClusterTopicListener implements RocketMQListener<String> {

	@Override
	public void onMessage(String message) {
		System.out.println(String.format(">>>> received message: %s", message));
	}

}
