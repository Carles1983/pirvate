package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.common.cache.model.Tenant;
import com.aii.crm.common.page.PageResult;

public interface IBsTenantSV {
	Integer saveTenant(Tenant addDto);
	PageResult<Tenant> listTenantPages(Integer pageNo, Integer pageSize);
	Integer updateTenant(Tenant updateDto);
	Integer deleteTenant(String tenantId);
	Integer loadTenant();
}
