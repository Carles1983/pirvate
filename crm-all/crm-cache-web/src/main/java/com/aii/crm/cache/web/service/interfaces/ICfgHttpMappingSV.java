package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.common.cache.model.HttpMapping;
import com.aii.crm.common.page.PageResult;

public interface ICfgHttpMappingSV {
	Integer saveHttpMapping(HttpMapping addDto);
	PageResult<HttpMapping> listHttpMappingPages(Integer pageNo, Integer pageSize);
	Integer updateHttpMapping(HttpMapping updateDto);
	Integer deleteHttpMapping(Long mappingId);
	Integer loadHttpMapping();
}
