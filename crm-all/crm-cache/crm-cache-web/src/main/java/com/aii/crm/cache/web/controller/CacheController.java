package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.IBsDistrictSV;
import com.aii.crm.cache.web.service.interfaces.IBsI18nResourceSV;
import com.aii.crm.cache.web.service.interfaces.IBsParaDetailSV;
import com.aii.crm.cache.web.service.interfaces.IBsStaticDataSV;
import com.aii.crm.cache.web.service.interfaces.IBsTenantSV;
import com.aii.crm.cache.web.service.interfaces.ICfgHttpMappingSV;
import com.aii.crm.cache.web.service.interfaces.ICfgHttpSV;
import com.aii.crm.cache.web.service.interfaces.IExceptionCodeSV;
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
	private IBsI18nResourceSV i18nResourceSV;

	@Autowired
	private IBsParaDetailSV paraDetailSV;

	@Autowired
	private IBsStaticDataSV staticDataSV;

	@Autowired
	private IBsTenantSV tenantSV;

	@Autowired
	private ICfgHttpSV httpSV;

	@Autowired
	private ICfgHttpMappingSV httpMappingSV;

	@Autowired
	private IExceptionCodeSV exceptionCodeSV;

	@RequestMapping(value = "/district/redis", method = RequestMethod.PUT)
	public Integer loadBsDistrictToRedis(){
		return districtSV.loadDistrict();
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

	@RequestMapping(value = "/http/redis", method = RequestMethod.PUT)
	public Integer loadCfgHttpToRedis(){
		return httpSV.loadHttp();
	}

	@RequestMapping(value = "/httpMapping/redis", method = RequestMethod.PUT)
	public Integer loadCfgHttpMappingToRedis(){
		return httpMappingSV.loadHttpMapping();
	}

	@RequestMapping(value = "/exceptionCode/redis", method = RequestMethod.PUT)
	public Integer loadExceptionCodeToRedis(){
		return exceptionCodeSV.loadExceptionCode();
	}
}
