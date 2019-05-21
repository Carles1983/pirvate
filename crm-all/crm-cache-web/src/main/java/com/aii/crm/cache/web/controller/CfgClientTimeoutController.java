package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.IConfigClientTimeoutSV;
import com.aii.crm.common.cache.model.ClientTimeout;
import com.aii.crm.common.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cache")
public class CfgClientTimeoutController {

	@Autowired
	private IConfigClientTimeoutSV clientTimeoutSV;

	@RequestMapping(value = "/clientTimeout", method = RequestMethod.POST)
	public Integer createCfgClientTimeout(@RequestBody ClientTimeout addDto){
		return clientTimeoutSV.saveClientTimeout(addDto);
	}

	@RequestMapping(value = "/clientTimeouts", method = RequestMethod.GET)
	public PageResult<ClientTimeout> retrieveCfgClientTimeout(@RequestParam Integer pageNo, @RequestParam Integer pageSize){
		return clientTimeoutSV.listClientTimeoutPages(pageNo, pageSize);
	}

	@RequestMapping(value = "/clientTimeout", method = RequestMethod.PUT)
	public Integer updateCfgClientTimeout(@RequestBody ClientTimeout updateDto){
		return clientTimeoutSV.updateClientTimeout(updateDto);
	}

	@RequestMapping(value = "/clientTimeout", method = RequestMethod.DELETE)
	public Integer deleteCfgClientTimeout(@RequestParam String interfaceClassname, @RequestParam String methodName,
										  @RequestParam Integer parameterCount){
		return clientTimeoutSV.deleteClientTimeout(interfaceClassname, methodName, parameterCount);
	}

}
