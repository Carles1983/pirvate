package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.ICfgHttpSV;
import com.aii.crm.common.cache.model.Http;
import com.aii.crm.common.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cache")
public class CfgHttpController {

	@Autowired
	private ICfgHttpSV httpSV;

	@RequestMapping(value = "/ftp", method = RequestMethod.POST)
	public Integer createCfgHttp(@RequestBody Http addDto){
		return httpSV.saveHttp(addDto);
	}

	@RequestMapping(value = "/ftps", method = RequestMethod.GET)
	public PageResult<Http> retrieveCfgHttp(@RequestParam Integer pageNo, @RequestParam Integer pageSize){
		return httpSV.listHttpPages(pageNo, pageSize);
	}

	@RequestMapping(value = "/ftp", method = RequestMethod.PUT)
	public Integer updateCfgHttp(@RequestBody Http updateDto){
		return httpSV.updateHttp(updateDto);
	}

	@RequestMapping(value = "/ftp", method = RequestMethod.DELETE)
	public Integer deleteCfgHttp(@RequestParam String cfgHttpCode){
		return httpSV.deleteHttp(cfgHttpCode);
	}

}
