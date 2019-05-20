package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.common.cache.model.I18nResource;
import com.aii.crm.common.page.PageResult;

public interface IBsI18nResourceSV {
	Integer saveI18nResource(I18nResource addDto);
	PageResult<I18nResource> listI18nPages(Integer pageNo, Integer pageSize);
	Integer updateI18nResource(I18nResource updateDto);
	Integer deleteI18nResource(String resKey, String language);
	Integer loadI18nResource();
}
