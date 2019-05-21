package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.persistence.mapper.CfgHttpMapper;
import com.aii.crm.cache.web.service.interfaces.ICfgHttpSV;
import com.aii.crm.common.cache.model.Http;
import com.aii.crm.common.page.PageResult;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class CfgHttpSVImpl implements ICfgHttpSV {

	@Autowired
	private CfgHttpMapper httpMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;


	@Override
	public Integer saveHttp(Http addDto) {
		return null;
	}

	@Override
	public PageResult<Http> listHttpPages(Integer pageNo, Integer pageSize) {
		return null;
	}

	@Override
	public Integer updateHttp(Http updateDto) {
		return null;
	}

	@Override
	public Integer deleteHttp(String ftpCode) {
		return null;
	}

	@Override
	public Integer loadHttp() {
		return null;
	}
}
