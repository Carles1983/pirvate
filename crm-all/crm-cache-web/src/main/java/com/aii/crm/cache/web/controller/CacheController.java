package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.IBsDistrictSV;
import com.aii.crm.cache.web.service.interfaces.IBsFtpPathSV;
import com.aii.crm.cache.web.service.interfaces.IBsFtpSV;
import com.aii.crm.cache.web.service.interfaces.IBsI18nResourceSV;
import com.aii.crm.cache.web.service.interfaces.IBsParaDetailSV;
import com.aii.crm.cache.web.service.interfaces.IBsStaticDataSV;
import com.aii.crm.cache.web.service.interfaces.IBsTenantSV;
import com.aii.crm.cache.web.service.interfaces.IConfigClientTimeoutSV;
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

	@Autowired
	private IBsFtpPathSV ftpPathSV;

	@Autowired
	private IBsI18nResourceSV i18nResourceSV;

	@Autowired
	private IBsParaDetailSV paraDetailSV;

	@Autowired
	private IBsStaticDataSV staticDataSV;

	@Autowired
	private IBsTenantSV tenantSV;

	@Autowired
	private IConfigClientTimeoutSV clientTimeoutSV;

	@RequestMapping(value = "/district/redis", method = RequestMethod.PUT)
	public Integer loadBsDistrictToRedis(){
		return districtSV.loadDistrict();
	}

	@RequestMapping(value = "/ftp/redis", method = RequestMethod.PUT)
	public Integer loadBsFtpToRedis(){
		return ftpSV.loadFtp();
	}

	@RequestMapping(value = "/ftpPath/redis", method = RequestMethod.PUT)
	public Integer loadBsFtpPathToRedis(){
		return ftpPathSV.loadFtpPath();
	}

	@RequestMapping(value = "/i18n/redis", method = RequestMethod.PUT)
	public Integer loadBsI18nResourceToRedis(){
		return i18nResourceSV.loadI18nResource();
	}

	@RequestMapping(value = "/paraDetail/redis", method = RequestMethod.PUT)
	public Integer loadBsParaDetailToRedis(){
		return paraDetailSV.loadParaDetail();
	}

	@RequestMapping(value = "/staticData/redis", method = RequestMethod.PUT)
	public Integer loadBsStaticDataToRedis(){
		return staticDataSV.loadStaticData();
	}

	@RequestMapping(value = "/tenant/redis", method = RequestMethod.PUT)
	public Integer loadBsTenantToRedis(){
		return tenantSV.loadTenant();
	}

	@RequestMapping(value = "/clientTimeout/redis", method = RequestMethod.PUT)
	public Integer loadConfigClientTimeoutToRedis(){
		return clientTimeoutSV.loadClientTimeout();
	}

}
