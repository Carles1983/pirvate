package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.IBsI18nResourceSV;
import com.aii.crm.common.cache.model.I18nResource;
import com.aii.crm.common.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cache")
public class BsI18nResourceController {

	@Autowired
	private IBsI18nResourceSV i18nResourceSV;

	@RequestMapping(value = "/i18nResource", method = RequestMethod.POST)
	public Integer createBsI18nResource(@RequestBody I18nResource addDto){
		return i18nResourceSV.saveI18nResource(addDto);
	}

	@RequestMapping(value = "/i18nResources", method = RequestMethod.GET)
	public PageResult<I18nResource> retrieveBsI18nResource(@RequestParam Integer pageNo, @RequestParam Integer pageSize){
		return i18nResourceSV.listI18nPages(pageNo, pageSize);
	}

	@RequestMapping(value = "/i18nResource", method = RequestMethod.PUT)
	public Integer updateBsI18nResource(@RequestBody I18nResource updateDto){
		return i18nResourceSV.updateI18nResource(updateDto);
	}

	@RequestMapping(value = "/i18nResource", method = RequestMethod.DELETE)
	public Integer deleteBsI18nResource(@RequestParam String resKey, @RequestParam String language){
		return i18nResourceSV.deleteI18nResource(resKey, language);
	}
}
