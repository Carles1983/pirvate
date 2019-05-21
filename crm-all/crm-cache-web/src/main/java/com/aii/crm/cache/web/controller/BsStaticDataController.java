package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.IBsStaticDataSV;
import com.aii.crm.common.cache.model.StaticData;
import com.aii.crm.common.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cache")
public class BsStaticDataController {
	@Autowired
	private IBsStaticDataSV staticDataSV;

	@RequestMapping(value = "/staticData", method = RequestMethod.POST)
	public Integer createBsStaticData(@RequestBody StaticData addDto){
		return staticDataSV.saveStaticData(addDto);
	}

	@RequestMapping(value = "/staticDatas", method = RequestMethod.GET)
	public PageResult<StaticData> retrieveBsStaticData(@RequestParam Integer pageNo, @RequestParam Integer pageSize){
		return staticDataSV.listStaticDataPages(pageNo, pageSize);
	}

	@RequestMapping(value = "/staticData", method = RequestMethod.PUT)
	public Integer updateBsStaticData(@RequestBody StaticData updateDto){
		return staticDataSV.updateStaticData(updateDto);
	}

	@RequestMapping(value = "/staticData", method = RequestMethod.DELETE)
	public Integer deleteBsStaticData(@RequestParam String codeType,
									  @RequestParam String codeValue){
		return staticDataSV.deleteStaticData(codeType, codeValue);
	}
}
