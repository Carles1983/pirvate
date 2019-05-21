package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.common.cache.model.StaticData;
import com.aii.crm.common.page.PageResult;

public interface IBsStaticDataSV {
	Integer saveStaticData(StaticData addDto);
	PageResult<StaticData> listStaticDataPages(Integer pageNo, Integer pageSize);
	Integer updateStaticData(StaticData updateDto);
	Integer deleteStaticData(String codeType, String codeValue);
	Integer loadStaticData();
}
