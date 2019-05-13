package com.ai.spring.cloud.oauth.service;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.ai.spring.cloud.oauth.mongo.document.PermissionDoc;
import com.ai.spring.cloud.oauth.mongo.document.RoleDoc;
import com.ai.spring.cloud.oauth.mongo.document.UserDoc;
import com.ai.spring.cloud.oauth.mongo.repository.UserRepository;

@Service
public class AuthUserDetailService implements UserDetailsService {

	@Autowired
	private UserRepository userDao;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserDoc userDoc = userDao.findUserByName(username);
		if (userDoc == null) {
			throw new UsernameNotFoundException(username);
		}
		Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
		// 可用性 :true:可用 false:不可用
		boolean enabled = true;
		// 过期性 :true:没过期 false:过期
		boolean accountNonExpired = true;
		// 有效性 :true:凭证有效 false:凭证无效
		boolean credentialsNonExpired = true;
		// 锁定性 :true:未锁定 false:已锁定
		boolean accountNonLocked = true;
		for (RoleDoc role : userDoc.getRoles()) {
			// 角色必须是ROLE_开头，可以在数据库中设置
			GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(role.getName());
			grantedAuthorities.add(grantedAuthority);
			// 获取权限
			if(!CollectionUtils.isEmpty(role.getPermissions())) {
				for (PermissionDoc permission : role.getPermissions()) {
					GrantedAuthority authority = new SimpleGrantedAuthority(permission.getUri());
					grantedAuthorities.add(authority);
				}
			}
		}
		User user = new User(userDoc.getName(), userDoc.getPassword(), enabled, accountNonExpired,
				credentialsNonExpired, accountNonLocked, grantedAuthorities);
		return user;
	}
}
