package com.ai.dubbo.domain;

import java.io.Serializable;

import lombok.Data;

@Data
public class AppDomain implements Serializable {

	private static final long serialVersionUID = 2748950670407357233L;
	// 用户信息加密字符串
	private String appInfo;
	// 私钥，解密用户信息，加密签名
	private String aKey;
	// 公钥，加密数据
	private String bKey;
}
