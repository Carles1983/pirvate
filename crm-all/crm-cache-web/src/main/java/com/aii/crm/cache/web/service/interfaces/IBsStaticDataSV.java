package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.common.cache.model.StaticData;
import com.aii.crm.common.page.PageResult;

public interface IBsStaticDataSV {
	Integer saveBsStaticData(StaticData addDto);
	PageResult<StaticData> listBsStaticDataPages(Integer pageNo, Integer pageSize);
	Integer updateBsStaticData(StaticData updateDto);
	Integer deleteBsStaticData(String codeType, String codeValue);
	Integer loadBsStaticData();
}
