package com.ai.oauth.service;

import com.ai.oauth.domain.OauthUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

/**
 * @author: soane
 * @Date: 2019/8/1
 * @Time: 9:51
 * @Description: TODO
 */
@Service
public class UserDetailServiceImpl implements UserDetailsService {

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		OauthUser user = new OauthUser();
		user.setUserName(username);
		user.setPassword(this.passwordEncoder.encode("123456"));
		return new User(username, user.getPassword(), user.isEnabled(),
				user.isAccountNonExpired(), user.isCredentialsNonExpired(),
				user.isAccountNonLocked(), AuthorityUtils.commaSeparatedStringToAuthorityList("admin"));
	}
}
