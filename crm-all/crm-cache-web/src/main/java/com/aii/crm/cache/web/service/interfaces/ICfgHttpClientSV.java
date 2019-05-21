package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.common.cache.model.HttpClient;
import com.aii.crm.common.page.PageResult;

public interface ICfgHttpClientSV {
	Integer saveHttpClient(HttpClient addDto);
	PageResult<HttpClient> listHttpClientPages(Integer pageNo, Integer pageSize);
	Integer updateHttpClient(HttpClient updateDto);
	Integer deleteHttpClient(String cfgHttpClientCode);
	Integer loadHttpClient();
}
