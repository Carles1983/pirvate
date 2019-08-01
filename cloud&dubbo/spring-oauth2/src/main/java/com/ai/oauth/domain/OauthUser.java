package com.ai.oauth.domain;

import java.io.Serializable;
import lombok.Data;

/**
 * @author: soane
 * @Date: 2019/8/1
 * @Time: 9:50
 * @Description: TODO
 */
@Data
public class OauthUser implements Serializable {
	private String userName;
	private String password;
	private boolean accountNonExpired = true;
	private boolean accountNonLocked= true;
	private boolean credentialsNonExpired= true;
	private boolean enabled= true;
}
