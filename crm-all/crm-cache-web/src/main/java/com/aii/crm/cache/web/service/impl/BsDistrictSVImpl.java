package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.model.BsDistrictDto;
import com.aii.crm.cache.web.persistence.mapper.BsDistrictMapper;
import com.aii.crm.cache.web.service.interfaces.IBsDistrictSV;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BsDistrictSVImpl implements IBsDistrictSV {

	@Autowired
	private BsDistrictMapper districtMapper;

	@Override
	public Integer saveDistrict(BsDistrictDto addDto) {
		return null;
	}

	@Override
	public Page<BsDistrictDto> listDistrictPages(Integer pageNo, Integer pageSize) {
		return null;
	}

	@Override
	public Integer updateDistrict(BsDistrictDto updateDto) {
		return null;
	}

	@Override
	public Integer deleteDistrict(Long districtId) {
		return null;
	}

	@Override
	public Integer loadDistrict() {
		return null;
	}
}
