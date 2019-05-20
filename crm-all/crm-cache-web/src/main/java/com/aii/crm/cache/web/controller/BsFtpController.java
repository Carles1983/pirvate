package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.IBsFtpSV;
import com.aii.crm.common.cache.model.Ftp;
import com.aii.crm.common.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cache")
public class BsFtpController {

	@Autowired
	private IBsFtpSV ftpSV;

	@RequestMapping(value = "/ftp", method = RequestMethod.POST)
	public Integer createBsFtp(@RequestBody Ftp addDto){
		return ftpSV.saveFtp(addDto);
	}

	@RequestMapping(value = "/ftps", method = RequestMethod.GET)
	public PageResult<Ftp> retrieveBsFtp(@RequestParam Integer pageNo, @RequestParam Integer pageSize){
		return ftpSV.listFtpPages(pageNo, pageSize);
	}

	@RequestMapping(value = "/ftp", method = RequestMethod.PUT)
	public Integer updateBsFtp(@RequestBody Ftp updateDto){
		return ftpSV.updateFtp(updateDto);
	}

	@RequestMapping(value = "/ftp", method = RequestMethod.DELETE)
	public Integer deleteBsFtp(@RequestParam String ftpCode){
		return ftpSV.deleteFtp(ftpCode);
	}

}
