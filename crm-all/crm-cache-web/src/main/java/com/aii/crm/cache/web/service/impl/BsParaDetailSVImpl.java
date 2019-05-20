package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.constant.CacheWebConstant;
import com.aii.crm.cache.web.persistence.bo.BsFtp;
import com.aii.crm.cache.web.persistence.bo.BsParaDetail;
import com.aii.crm.cache.web.persistence.mapper.BsParaDetailMapper;
import com.aii.crm.cache.web.service.interfaces.IBsParaDetailSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.cache.model.ParaDetail;
import com.aii.crm.common.page.PageResult;
import java.lang.reflect.InvocationTargetException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class BsParaDetailSVImpl implements IBsParaDetailSV {

	@Autowired
	private BsParaDetailMapper paraDetailMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@Override
	public Integer saveBsParaDetail(ParaDetail addDto) {
		try {
			addDto.setState(CacheWebConstant.STATE_IN_USE);
			BsParaDetail bsParaDetail = BeanConvertUtil.beanConversion(addDto, BsParaDetail.class);
			Integer result = paraDetailMapper.insertSelective(bsParaDetail);
			modifyRedisParaDetail(addDto, addDto.getRegionId(), addDto.getParaType(), addDto.getParaCode(),
					CacheWebConstant.MODIFY_TYPE_ADD);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
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

	private void modifyRedisParaDetail(ParaDetail addDto, String regionId, String paraType, String paraCode, int modifyTypeAdd) {
	}

}
