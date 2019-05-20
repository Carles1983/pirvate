package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.IBsDistrictSV;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cache")
public class CacheController {

	@Autowired
	private IBsDistrictSV districtSV;

	@RequestMapping(value = "/district/redis", method = RequestMethod.PUT)
	public Integer loadBsDistrictToRedis(){
		return districtSV.loadDistrict();
	}

}
