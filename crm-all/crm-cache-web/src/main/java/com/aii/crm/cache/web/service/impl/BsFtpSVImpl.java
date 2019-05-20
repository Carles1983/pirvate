package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.persistence.mapper.BsFtpMapper;
import com.aii.crm.cache.web.service.interfaces.IBsFtpSV;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BsFtpSVImpl implements IBsFtpSV {

	@Autowired
	private BsFtpMapper ftpMapper;

}
