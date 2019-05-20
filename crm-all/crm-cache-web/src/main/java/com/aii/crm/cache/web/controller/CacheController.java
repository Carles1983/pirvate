package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.IBsDistrictSV;
import com.aii.crm.cache.web.service.interfaces.IBsFtpSV;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cache")
public class CacheController {

	@Autowired
	private IBsDistrictSV districtSV;

	@Autowired
	private IBsFtpSV ftpSV;

	@RequestMapping(value = "/district/redis", method = RequestMethod.PUT)
	public Integer loadBsDistrictToRedis(){
		return districtSV.loadDistrict();
	}

	@RequestMapping(value = "/ftp/redis", method = RequestMethod.PUT)
	public Integer loadBsFtpToRedis(){
		return ftpSV.loadFtp();
	}

}
