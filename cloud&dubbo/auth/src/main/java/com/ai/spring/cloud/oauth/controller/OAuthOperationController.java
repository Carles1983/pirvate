package com.ai.spring.cloud.oauth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		userRepository.save(userDoc);
		return "success";
	}
	
	@RequestMapping(value = "/role", method = RequestMethod.POST)
	public String addRole(@RequestBody RoleDoc roleDoc) {
		roleRepository.save(roleDoc);
		return "success";
	}
	
	@RequestMapping(value = "/permission", method = RequestMethod.POST)
	public String addPermission(@RequestBody PermissionDoc permissionDoc) {
		permissionRepository.save(permissionDoc);
		return "success";
	}
	
}
