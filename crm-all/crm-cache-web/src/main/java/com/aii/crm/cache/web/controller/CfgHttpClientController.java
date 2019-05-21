package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.ICfgHttpClientSV;
import com.aii.crm.common.cache.model.HttpClient;
import com.aii.crm.common.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cache")
public class CfgHttpClientController {

	@Autowired
	private ICfgHttpClientSV httpClientSV;

	@RequestMapping(value = "/httpClient", method = RequestMethod.POST)
	public Integer createCfgHttpClient(@RequestBody HttpClient addDto){
		return httpClientSV.saveHttpClient(addDto);
	}

	@RequestMapping(value = "/httpClients", method = RequestMethod.GET)
	public PageResult<HttpClient> retrieveCfgHttpClient(@RequestParam Integer pageNo, @RequestParam Integer pageSize){
		return httpClientSV.listHttpClientPages(pageNo, pageSize);
	}

	@RequestMapping(value = "/httpClient", method = RequestMethod.PUT)
	public Integer updateCfgHttpClient(@RequestBody HttpClient updateDto){
		return httpClientSV.updateHttpClient(updateDto);
	}

	@RequestMapping(value = "/httpClient", method = RequestMethod.DELETE)
	public Integer deleteCfgHttpClient(@RequestParam String cfgHttpClientCode){
		return httpClientSV.deleteHttpClient(cfgHttpClientCode);
	}

}
