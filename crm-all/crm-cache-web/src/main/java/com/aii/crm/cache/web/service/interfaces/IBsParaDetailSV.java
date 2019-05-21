package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.common.cache.model.ParaDetail;
import com.aii.crm.common.page.PageResult;

public interface IBsParaDetailSV {
	Integer saveParaDetail(ParaDetail addDto);
	PageResult<ParaDetail> listParaDetailPages(Integer pageNo, Integer pageSize);
	Integer updateParaDetail(ParaDetail updateDto);
	Integer deleteParaDetail(String regionId, String paraType, String paraCode);
	Integer loadParaDetail();
}
