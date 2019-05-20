package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.common.cache.model.ParaDetail;
import com.aii.crm.common.page.PageResult;

public interface IBsParaDetailSV {
	Integer saveBsParaDetail(ParaDetail addDto);
	PageResult<ParaDetail> listBsParaDetailPages(Integer pageNo, Integer pageSize);
	Integer updateBsParaDetail(ParaDetail updateDto);
	Integer deleteBsParaDetail(String regionId, String paraType, String paraCode);
	Integer loadBsParaDetail();
}
