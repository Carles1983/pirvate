package com.aii.crm.ci.web.controller;

import com.aii.crm.ci.web.service.atom.interfaces.ICiCombinedAtomSV;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/ci")
public class CustomerInteractionCacheController {

	@Autowired
	private ICiCombinedAtomSV combinedAtomSV;

	@RequestMapping(value = "/cache", method = RequestMethod.GET)
	public boolean cache(){
		return combinedAtomSV.cacheToRedis();
	}

}
