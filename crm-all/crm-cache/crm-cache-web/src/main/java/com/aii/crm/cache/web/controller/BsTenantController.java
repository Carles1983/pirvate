package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.IBsTenantSV;
import com.aii.crm.common.cache.model.Tenant;
import com.aii.crm.common.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cache")
public class BsTenantController {

	@Autowired
	private IBsTenantSV tenantSV;

	@RequestMapping(value = "/tenant", method = RequestMethod.POST)
	public Integer createBsTenant(@RequestBody Tenant addDto){
		return tenantSV.saveTenant(addDto);
	}

	@RequestMapping(value = "/tenants", method = RequestMethod.GET)
	public PageResult<Tenant> retrieveBsTenant(@RequestParam Integer pageNo, @RequestParam Integer pageSize){
		return tenantSV.listTenantPages(pageNo, pageSize);
	}

	@RequestMapping(value = "/tenant", method = RequestMethod.PUT)
	public Integer updateBsTenant(@RequestBody Tenant updateDto){
		return tenantSV.updateTenant(updateDto);
	}

	@RequestMapping(value = "/tenant", method = RequestMethod.DELETE)
	public Integer deleteBsTenant(@RequestParam String tenantId){
		return tenantSV.deleteTenant(tenantId);
	}
}
