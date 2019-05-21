package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.constant.CacheWebConstant;
import com.aii.crm.cache.web.persistence.bo.CfgHttp;
import com.aii.crm.cache.web.persistence.bo.CfgHttpExample;
import com.aii.crm.cache.web.persistence.mapper.CfgHttpMapper;
import com.aii.crm.cache.web.service.interfaces.ICfgHttpSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.cache.constant.CacheConstant;
import com.aii.crm.common.cache.model.Http;
import com.aii.crm.common.map.MapUtil;
import com.aii.crm.common.page.PageResult;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

@Service
@Slf4j
public class CfgHttpSVImpl implements ICfgHttpSV {

	@Autowired
	private CfgHttpMapper httpMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;


	@Override
	public Integer saveHttp(Http addDto) {
		try {
			addDto.setState(CacheWebConstant.STATE_IN_USE);
			CfgHttp cfgHttp = BeanConvertUtil.beanConversion(addDto, CfgHttp.class);
			Integer result = httpMapper.insertSelective(cfgHttp);
			modifyRedisHttp(addDto, cfgHttp.getCfgHttpCode(), CacheWebConstant.MODIFY_TYPE_ADD);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public PageResult<Http> listHttpPages(Integer pageNo, Integer pageSize) {
		Page<CfgHttp> page = PageHelper.startPage(pageNo, pageSize, true);
		CfgHttpExample example = new CfgHttpExample();
		httpMapper.selectByExample(example);
		try {
			PageResult<Http> result = BeanConvertUtil.pageConversion(page, Http.class);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return new PageResult<>();
	}

	@Override
	public Integer updateHttp(Http updateDto) {
		try {
			CfgHttp cfgHttp = BeanConvertUtil.beanConversion(updateDto, CfgHttp.class);
			Integer result = httpMapper.updateByPrimaryKeySelective(cfgHttp);
			modifyRedisHttp(updateDto, updateDto.getCfgHttpCode(), CacheWebConstant.MODIFY_TYPE_UPDATE);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public Integer deleteHttp(String cfgHttpCode) {
		CfgHttp cfgHttp = httpMapper.selectByPrimaryKey(cfgHttpCode);
		cfgHttp.setState(CacheWebConstant.STATE_OUT_OF_USE);
		Integer result = httpMapper.updateByPrimaryKeySelective(cfgHttp);
		modifyRedisHttp(null, cfgHttpCode, CacheWebConstant.MODIFY_TYPE_DELETE);
		return result;
	}

	@Override
	public Integer loadHttp() {
		CfgHttpExample example = new CfgHttpExample();
		CfgHttpExample.Criteria criteria = example.createCriteria();
		criteria.andStateEqualTo(CacheWebConstant.STATE_IN_USE);
		List<CfgHttp> cfgHttpList = httpMapper.selectByExample(example);
		try {
			List<Http> httpList = BeanConvertUtil.listConversion(cfgHttpList, Http.class);
			if (!CollectionUtils.isEmpty(httpList)) {
				Map<String, Object> map = new HashMap<>();
				for (Http http : httpList) {
					map.put(http.getCfgHttpCode(), http);
				}
				HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
				Map<String, Object> redisMap = hashOp.entries(CacheConstant.HTTP_REDIS_KEY);
				Map<String, Object> differMap = MapUtil.getDifferenceSet(redisMap, map);
				hashOp.putAll(CacheConstant.HTTP_REDIS_KEY, map);
				hashOp.delete(CacheConstant.HTTP_REDIS_KEY, differMap.keySet().toArray());
			}
			return httpList.size();
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	private void modifyRedisHttp(Http addDto, String cfgHttpCode, int modifyType) {
		HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
		if (CacheWebConstant.MODIFY_TYPE_ADD == modifyType || CacheWebConstant.MODIFY_TYPE_UPDATE == modifyType) {
			hashOp.put(CacheConstant.HTTP_REDIS_KEY, addDto.getCfgHttpCode(), addDto);
		} else if (CacheWebConstant.MODIFY_TYPE_DELETE == modifyType) {
			hashOp.delete(CacheConstant.HTTP_REDIS_KEY, cfgHttpCode);
		} else {
			log.info("not implemented.");
		}
	}
}
