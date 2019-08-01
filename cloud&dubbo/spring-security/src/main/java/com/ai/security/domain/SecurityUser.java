package com.ai.security.domain;

import java.io.Serializable;
import lombok.Data;

/**
 * @author: soane
 * @Date: 2019/7/30
 * @Time: 14:25
 * @Description: TODO
 */
@Data
public class SecurityUser implements Serializable {

	private String userName;

	private String password;

	private boolean accountNonExpired = true;

	private boolean accountNonLocked = true;

	private boolean credentialsNonExpired = true;

	private boolean enabled = true;
}
