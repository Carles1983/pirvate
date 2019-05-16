package com.ai.dubbo.controller;

import org.apache.skywalking.apm.toolkit.trace.ActiveSpan;
import org.apache.skywalking.apm.toolkit.trace.Trace;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ai.dubbo.api.DemoService;
import com.alibaba.dubbo.config.annotation.Reference;

@RestController
@RequestMapping("/")
public class ConsumerController {

	@Reference
	private DemoService demoService;
	
	@Value("${server.port}")
	private int port;

	@Trace
	@RequestMapping(value = "/sayHello/{name}", method = RequestMethod.GET)
	public String sayHello(@PathVariable String name) {
		ActiveSpan.tag("consumer-port", String.valueOf(port));
		ActiveSpan.tag("consumer-name", name);
		return demoService.sayHello(name + "----> server port : " + port);
	}
	
	@RequestMapping(value = "/timeout", method = RequestMethod.GET)
    public String timeout(){
        try{
            //睡5秒，网关Hystrix3秒超时，会触发熔断降级操作
            Thread.sleep(5000);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "timeout";
    }
	
	@RequestMapping(value = "/rate", method = RequestMethod.GET)
    public String rate(){
        return "rate";
    }

}
