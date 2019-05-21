package com.aii.crm.cache.web.service.impl;


import com.aii.crm.cache.web.persistence.mapper.BsTenantMapper;
import com.aii.crm.cache.web.service.interfaces.IBsTenantSV;
import com.aii.crm.common.cache.model.Tenant;
import com.aii.crm.common.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BsTenantSVImpl implements IBsTenantSV {

	@Autowired
	private BsTenantMapper tenantMapper;


	@Override
	public Integer saveTenant(Tenant addDto) {
		return null;
	}

	@Override
	public PageResult<Tenant> listTenantPages(Integer pageNo, Integer pageSize) {
		return null;
	}

	@Override
	public Integer updateTenant(Tenant updateDto) {
		return null;
	}

	@Override
	public Integer deleteTenant(String ftpCode) {
		return null;
	}

	@Override
	public Integer loadTenant() {
		return null;
	}
}
