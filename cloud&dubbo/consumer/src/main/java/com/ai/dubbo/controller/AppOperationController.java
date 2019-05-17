package com.ai.dubbo.controller;

import java.util.Date;
import java.util.Map;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ai.dubbo.constant.RequestConstant;
import com.ai.dubbo.domain.AppDomain;
import com.ai.dubbo.domain.RequestDomain;
import com.ai.dubbo.domain.UserDomain;
import com.ai.dubbo.util.Base64Utils;
import com.ai.dubbo.util.JsonConvertUtil;
import com.ai.dubbo.util.SecurityKeyUtil;


@RestController
@RequestMapping("/")
public class AppOperationController {
	
	@Autowired
	private RedisTemplate<String, Object> redisTemplate;
	
	@RequestMapping(value = "/app", method = RequestMethod.POST)
	public AppDomain appCreate() throws Exception {
		AppDomain appDomain = new AppDomain();
		// 获取用户id
		String userId = "admin";
		
		// RSA生成aPubKey，aPriKey
		Map<String, Object> aPair = SecurityKeyUtil.genKeyPair();
		appDomain.setAKey(SecurityKeyUtil.getPrivateKey(aPair));
		System.out.println("---->aPublicKey:" + SecurityKeyUtil.getPublicKey(aPair));
		System.out.println("---->aPrivateKey:" + SecurityKeyUtil.getPrivateKey(aPair));
		
		// RAS生成bPubKey，bPriKey
		Map<String, Object> bPair = SecurityKeyUtil.genKeyPair();
		appDomain.setBKey(SecurityKeyUtil.getPublicKey(bPair));
		System.out.println("---->bPublicKey:" + SecurityKeyUtil.getPublicKey(bPair));
		System.out.println("---->bPrivateKey:" + SecurityKeyUtil.getPrivateKey(bPair));
		
		// 生成用户id+timeStamp+随机字符，用aPubKey加密
		String randomStr = RandomStringUtils.randomAlphanumeric(8) + userId;
		String randomCode = Base64Utils.encode(randomStr.getBytes());
		System.out.println("---->randomStr:" + randomStr);
		
		HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
		// TODO 将userId和aKey的对应记录到表中
		hashOp.put(RequestConstant.REQUEST_RTSS_USER_KEY + userId, RequestConstant.REQUEST_SIGNSECURITY_HKEY, aPair);
		// TODO 将userId和bKey的对应记录到表中
		hashOp.put(RequestConstant.REQUEST_RTSS_USER_KEY + userId, RequestConstant.REQUEST_CONTSECURITY_HKEY, bPair);
		// TODO 将userId和randomCode的对应记录到表中
		hashOp.put(RequestConstant.REQUEST_RTSS_USER_KEY + userId, RequestConstant.REQUEST_USERCODE_HKEY, randomStr);
		
		long timeStamp = new Date().getTime();
		String encodeData = userId+"|"+timeStamp+"|"+randomCode;
		String encodeAppString = SecurityKeyUtil.encryptedDataByPublicOnJava(encodeData, SecurityKeyUtil.getPublicKey(aPair));
		appDomain.setAppInfo(encodeAppString);
		
		// 返回给前端
		return appDomain;
	}
	
	@RequestMapping(value = "/execute", method = RequestMethod.POST)
	public String contentExecute(@RequestBody RequestDomain domain) throws Exception {
		String userId = domain.getUserId();
		UserDomain userDomain = JsonConvertUtil.convertJosnString(userId, domain.getContent(), UserDomain.class, redisTemplate);
		// 返回给前端
		return userDomain.toString();
	}
	

}
