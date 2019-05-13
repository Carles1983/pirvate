package com.ai.spring.cloud.oauth.controller;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ai.spring.cloud.oauth.mongo.document.ClientDetailDoc;
import com.ai.spring.cloud.oauth.mongo.document.PermissionDoc;
import com.ai.spring.cloud.oauth.mongo.document.RoleDoc;
import com.ai.spring.cloud.oauth.mongo.document.UserDoc;
import com.ai.spring.cloud.oauth.mongo.repository.ClientDetailRepository;
import com.ai.spring.cloud.oauth.mongo.repository.PermissionRepository;
import com.ai.spring.cloud.oauth.mongo.repository.RoleRepository;
import com.ai.spring.cloud.oauth.mongo.repository.UserRepository;

@RestController
@RequestMapping("/")
public class OAuthOperationController {
	
	@Autowired
	private ClientDetailRepository clientRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private RoleRepository roleRepository;
	
	@Autowired
	private PermissionRepository permissionRepository;
	
	@RequestMapping(value = "/client/detail", method = RequestMethod.POST)
	public String addClientDetail(@RequestBody ClientDetailDoc clientDetail) {
		clientRepository.save(clientDetail);
		return "success";
	}
	
	@RequestMapping(value = "/user", method = RequestMethod.POST)
	public String addUser(@RequestBody UserDoc userDoc) {
		userDoc.setCreateTime(new Date(System.currentTimeMillis()));
		RoleDoc role1 = roleRepository.findByName("role1");
		RoleDoc role2 = roleRepository.findByName("role2");
		Set<RoleDoc> roleSet = new HashSet<>();
		roleSet.add(role1);
		roleSet.add(role2);
		userDoc.setRoles(roleSet);
		userRepository.save(userDoc);
		return "success";
	}
	
	@RequestMapping(value = "/role", method = RequestMethod.POST)
	public String addRole(@RequestBody RoleDoc roleDoc) {
		roleDoc.setCreateTime(new Date(System.currentTimeMillis()));
		roleRepository.save(roleDoc);
		return "success";
	}
	
	@RequestMapping(value = "/permission", method = RequestMethod.POST)
	public String addPermission(@RequestBody PermissionDoc permissionDoc) {
		permissionRepository.save(permissionDoc);
		return "success";
	}
	
	@RequestMapping(value = "/api/user", method = RequestMethod.GET)
	public UserDoc addUser(@RequestParam String username) {
		UserDoc doc = userRepository.findUserByName(username);
		return doc;
	}
	
}
