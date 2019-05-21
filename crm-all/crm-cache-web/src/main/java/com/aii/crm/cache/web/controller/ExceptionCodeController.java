package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.IExceptionCodeSV;
import com.aii.crm.common.cache.model.ExCode;
import com.aii.crm.common.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cache")
public class ExceptionCodeController {

	@Autowired
	private IExceptionCodeSV exceptionCodeSV;

	@RequestMapping(value = "/exceptionCode", method = RequestMethod.POST)
	public Integer createBsFtp(@RequestBody ExCode addDto){
		return exceptionCodeSV.saveExceptionCode(addDto);
	}

	@RequestMapping(value = "/exceptionCodes", method = RequestMethod.GET)
	public PageResult<ExCode> retrieveBsFtp(@RequestParam Integer pageNo, @RequestParam Integer pageSize){
		return exceptionCodeSV.listExceptionCodePages(pageNo, pageSize);
	}

	@RequestMapping(value = "/exceptionCode", method = RequestMethod.PUT)
	public Integer updateBsFtp(@RequestBody ExCode updateDto){
		return exceptionCodeSV.updateExceptionCode(updateDto);
	}

	@RequestMapping(value = "/exceptionCode", method = RequestMethod.DELETE)
	public Integer deleteBsFtp(@RequestParam String exceptionCodeType){
		return exceptionCodeSV.deleteExceptionCode(exceptionCodeType);
	}

}
