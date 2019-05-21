package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.IBsParaDetailSV;
import com.aii.crm.common.cache.model.ParaDetail;
import com.aii.crm.common.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cache")
public class BsParaDetailController {
	@Autowired
	private IBsParaDetailSV paraDetailSV;

	@RequestMapping(value = "/paraDetail", method = RequestMethod.POST)
	public Integer createBsParaDetail(@RequestBody ParaDetail addDto){
		return paraDetailSV.saveParaDetail(addDto);
	}

	@RequestMapping(value = "/paraDetails", method = RequestMethod.GET)
	public PageResult<ParaDetail> retrieveBsParaDetail(@RequestParam Integer pageNo, @RequestParam Integer pageSize){
		return paraDetailSV.listParaDetailPages(pageNo, pageSize);
	}

	@RequestMapping(value = "/paraDetail", method = RequestMethod.PUT)
	public Integer updateBsParaDetail(@RequestBody ParaDetail updateDto){
		return paraDetailSV.updateParaDetail(updateDto);
	}

	@RequestMapping(value = "/paraDetail", method = RequestMethod.DELETE)
	public Integer deleteBsParaDetail(@RequestParam String regionId, @RequestParam String paraType,
									  @RequestParam String paraCode){
		return paraDetailSV.deleteParaDetail(regionId, paraType, paraCode);
	}
}
