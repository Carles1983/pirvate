package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.common.cache.model.Http;
import com.aii.crm.common.page.PageResult;

public interface ICfgHttpSV {
	Integer saveHttp(Http addDto);
	PageResult<Http> listHttpPages(Integer pageNo, Integer pageSize);
	Integer updateHttp(Http updateDto);
	Integer deleteHttp(String ftpCode);
	Integer loadHttp();
}
