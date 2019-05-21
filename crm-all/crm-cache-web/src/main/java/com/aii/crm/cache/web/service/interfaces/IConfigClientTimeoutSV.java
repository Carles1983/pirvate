package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.common.cache.model.ClientTimeout;
import com.aii.crm.common.page.PageResult;

public interface IConfigClientTimeoutSV {
	Integer saveClientTimeout(ClientTimeout addDto);
	PageResult<ClientTimeout> listClientTimeoutPages(Integer pageNo, Integer pageSize);
	Integer updateClientTimeout(ClientTimeout updateDto);
	Integer deleteClientTimeout(String interfaceClassName, String methodName, Integer parameterCount);
	Integer loadClientTimeout();
}
