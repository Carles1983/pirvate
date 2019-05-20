package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.persistence.mapper.BsParaDetailMapper;
import com.aii.crm.cache.web.service.interfaces.IBsParaDetailSV;
import com.aii.crm.common.cache.model.ParaDetail;
import com.aii.crm.common.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

@Service
public class BsParaDetailSVImpl implements IBsParaDetailSV {

	@Autowired
	private BsParaDetailMapper paraDetailMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@Override
	public Integer saveBsParaDetail(ParaDetail addDto) {
		return null;
	}

	@Override
	public PageResult<ParaDetail> listBsParaDetailPages(Integer pageNo, Integer pageSize) {
		return null;
	}

	@Override
	public Integer updateBsParaDetail(ParaDetail updateDto) {
		return null;
	}

	@Override
	public Integer deleteBsParaDetail(String ftpCode) {
		return null;
	}

	@Override
	public Integer loadBsParaDetail() {
		return null;
	}
}
