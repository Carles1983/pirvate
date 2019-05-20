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

	@RequestMapping(value = "/paraDetail", method = RequestMethod.POST)
	public Integer createBsStaticData(@RequestBody StaticData addDto){
		return staticDataSV.saveBsStaticData(addDto);
	}

	@RequestMapping(value = "/ftpPaths", method = RequestMethod.GET)
	public PageResult<StaticData> retrieveBsStaticData(@RequestParam Integer pageNo, @RequestParam Integer pageSize){
		return staticDataSV.listBsStaticDataPages(pageNo, pageSize);
	}

	@RequestMapping(value = "/ftpPath", method = RequestMethod.PUT)
	public Integer updateBsStaticData(@RequestBody StaticData updateDto){
		return staticDataSV.updateBsStaticData(updateDto);
	}

	@RequestMapping(value = "/ftpPath", method = RequestMethod.DELETE)
	public Integer deleteBsStaticData(@RequestParam String codeType,
									  @RequestParam String codeValue){
		return staticDataSV.deleteBsStaticData(codeType, codeValue);
	}
}
