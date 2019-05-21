package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.ICfgHttpMappingSV;
import com.aii.crm.common.cache.model.HttpMapping;
import com.aii.crm.common.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cache")
public class CfgHttpMappingController {

	@Autowired
	private ICfgHttpMappingSV httpMappingSV;

	@RequestMapping(value = "/httpMapping", method = RequestMethod.POST)
	public Integer createCfgHttpMapping(@RequestBody HttpMapping addDto){
		return httpMappingSV.saveHttpMapping(addDto);
	}

	@RequestMapping(value = "/httpMappings", method = RequestMethod.GET)
	public PageResult<HttpMapping> retrieveCfgHttpMapping(@RequestParam Integer pageNo, @RequestParam Integer pageSize){
		return httpMappingSV.listHttpMappingPages(pageNo, pageSize);
	}

	@RequestMapping(value = "/httpMapping", method = RequestMethod.PUT)
	public Integer updateCfgHttpMapping(@RequestBody HttpMapping updateDto){
		return httpMappingSV.updateHttpMapping(updateDto);
	}

	@RequestMapping(value = "/httpMapping", method = RequestMethod.DELETE)
	public Integer deleteCfgHttpMapping(@RequestParam Long mappingId){
		return httpMappingSV.deleteHttpMapping(mappingId);
	}

}
