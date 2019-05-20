package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.IBsFtpPathSV;
import com.aii.crm.common.cache.model.FtpPath;
import com.aii.crm.common.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cache")
public class BsFtpPathController {

	@Autowired
	private IBsFtpPathSV ftpPathSV;

	@RequestMapping(value = "/ftpPath", method = RequestMethod.POST)
	public Integer createBsFtpPath(@RequestBody FtpPath addDto){
		return ftpPathSV.saveFtpPath(addDto);
	}

	@RequestMapping(value = "/ftpPaths", method = RequestMethod.GET)
	public PageResult<FtpPath> retrieveBsFtpPath(@RequestParam Integer pageNo, @RequestParam Integer pageSize){
		return ftpPathSV.listFtpPathPages(pageNo, pageSize);
	}

	@RequestMapping(value = "/ftpPath", method = RequestMethod.PUT)
	public Integer updateBsFtpPath(@RequestBody FtpPath updateDto){
		return ftpPathSV.updateFtpPath(updateDto);
	}

	@RequestMapping(value = "/ftpPath", method = RequestMethod.DELETE)
	public Integer deleteBsFtpPath(@RequestParam String ftpPathCode){
		return ftpPathSV.deleteFtpPath(ftpPathCode);
	}
}
