package com.ai.security.validatecode;

import java.awt.image.BufferedImage;
import java.time.LocalDateTime;
import lombok.Data;

/**
 * @author: soane
 * @Date: 2019/7/30
 * @Time: 17:36
 * @Description: TODO
 */
@Data
public class ImageCode {
	private BufferedImage image;
	private String code;
	private LocalDateTime expireTime;

	public ImageCode(BufferedImage image, String code, int expireIn) {
		this.image = image;
		this.code = code;
		this.expireTime = LocalDateTime.now().plusSeconds(expireIn);
	}

	public ImageCode(BufferedImage image, String code, LocalDateTime expireTime) {
		this.image = image;
		this.code = code;
		this.expireTime = expireTime;
	}

	public boolean isExpire() {
		return LocalDateTime.now().isAfter(expireTime);
	}
}
