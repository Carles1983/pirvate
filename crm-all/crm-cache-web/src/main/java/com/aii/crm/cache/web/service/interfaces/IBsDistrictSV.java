package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.cache.web.model.BsDistrictDto;
import com.github.pagehelper.Page;

public interface IBsDistrictSV {
	Integer saveDistrict(BsDistrictDto addDto);

	Page<BsDistrictDto> listDistrictPages(Integer pageNo, Integer pageSize);

	Integer updateDistrict(BsDistrictDto updateDto);

	Integer deleteDistrict(Long districtId);

	Integer loadDistrict();
}
