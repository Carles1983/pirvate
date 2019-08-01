package com.ai.security.sms;

import java.io.Serializable;
import java.time.LocalDateTime;
import lombok.Data;

/**
 * @author: soane
 * @Date: 2019/7/31
 * @Time: 9:41
 * @Description: TODO
 */
@Data
public class SmsCode implements Serializable {
	private String code;
	private LocalDateTime expireTime;

	public SmsCode(String code, int expireIn) {
		this.code = code;
		this.expireTime = LocalDateTime.now().plusSeconds(expireIn);
	}

	public SmsCode(String code, LocalDateTime expireTime) {
		this.code = code;
		this.expireTime = expireTime;
	}

	public boolean isExpire() {
		return LocalDateTime.now().isAfter(expireTime);
	}
}
