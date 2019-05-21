package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.common.cache.model.ExCode;
import com.aii.crm.common.page.PageResult;

public interface IExceptionCodeSV {
	Integer saveExceptionCode(ExCode addDto);
	PageResult<ExCode> listExceptionCodePages(Integer pageNo, Integer pageSize);
	Integer updateExceptionCode(ExCode updateDto);
	Integer deleteExceptionCode(String exceptionCodeType);
	Integer loadExceptionCode();
}
