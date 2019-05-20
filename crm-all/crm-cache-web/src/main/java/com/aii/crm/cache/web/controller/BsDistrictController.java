package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.model.BsDistrictDto;
import com.aii.crm.cache.web.service.interfaces.IBsDistrictSV;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cache")
public class BsDistrictController {

	@Autowired
	private IBsDistrictSV districtSV;

	@RequestMapping(value = "/district", method = RequestMethod.POST)
	public Integer createBsDistrict(@RequestBody BsDistrictDto addDto){
		return districtSV.saveDistrict(addDto);
	}

	@RequestMapping(value = "/districts", method = RequestMethod.GET)
	public Page<BsDistrictDto> retrieveBsDistrict(@RequestParam Integer pageNo, @RequestParam Integer pageSize){
		return districtSV.listDistrictPages(pageNo, pageSize);
	}

	@RequestMapping(value = "/district", method = RequestMethod.PUT)
	public Integer updateBsDistrict(@RequestBody BsDistrictDto updateDto){
		return districtSV.updateDistrict(updateDto);
	}

	@RequestMapping(value = "/district", method = RequestMethod.DELETE)
	public Integer deleteBsDistrict(@RequestParam Long districtId){
		return districtSV.deleteDistrict(districtId);
	}

}
