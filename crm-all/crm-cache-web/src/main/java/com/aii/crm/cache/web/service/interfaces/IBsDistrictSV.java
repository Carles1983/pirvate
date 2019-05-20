package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.common.cache.model.District;
import com.github.pagehelper.Page;

public interface IBsDistrictSV {
	Integer saveDistrict(District addDto);

	Page<District> listDistrictPages(Integer pageNo, Integer pageSize);

	Integer updateDistrict(District updateDto);

	Integer deleteDistrict(Long districtId);

	Integer loadDistrict();
}
