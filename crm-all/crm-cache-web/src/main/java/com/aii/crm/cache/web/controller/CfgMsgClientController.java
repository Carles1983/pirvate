package com.aii.crm.cache.web.controller;

import com.aii.crm.cache.web.service.interfaces.ICfgMsgClientSV;
import com.aii.crm.common.cache.model.MsgClient;
import com.aii.crm.common.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cache")
public class CfgMsgClientController {

	@Autowired
	private ICfgMsgClientSV msgClientSV;

	@RequestMapping(value = "/httpMapping", method = RequestMethod.POST)
	public Integer createCfgMsgClient(@RequestBody MsgClient addDto){
		return msgClientSV.saveMsgClient(addDto);
	}

	@RequestMapping(value = "/httpMappings", method = RequestMethod.GET)
	public PageResult<MsgClient> retrieveCfgMsgClient(@RequestParam Integer pageNo, @RequestParam Integer pageSize){
		return msgClientSV.listMsgClientPages(pageNo, pageSize);
	}

	@RequestMapping(value = "/httpMapping", method = RequestMethod.PUT)
	public Integer updateCfgMsgClient(@RequestBody MsgClient updateDto){
		return msgClientSV.updateMsgClient(updateDto);
	}

	@RequestMapping(value = "/httpMapping", method = RequestMethod.DELETE)
	public Integer deleteCfgMsgClient(@RequestParam String cfgMsgControlCode){
		return msgClientSV.deleteMsgClient(cfgMsgControlCode);
	}

}
