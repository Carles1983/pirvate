package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.constant.CacheWebConstant;
import com.aii.crm.cache.web.persistence.bo.CfgHttpClient;
import com.aii.crm.cache.web.persistence.bo.CfgHttpClientExample;
import com.aii.crm.cache.web.persistence.mapper.CfgHttpClientMapper;
import com.aii.crm.cache.web.service.interfaces.ICfgHttpClientSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.cache.constant.CacheConstant;
import com.aii.crm.common.cache.model.HttpClient;
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
public class CfgHttpClientSVImpl implements ICfgHttpClientSV {

	@Autowired
	private CfgHttpClientMapper httpClientMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@Override
	public Integer saveHttpClient(HttpClient addDto) {
		try {
			addDto.setState(CacheWebConstant.STATE_IN_USE);
			CfgHttpClient cfgHttpClient = BeanConvertUtil.beanConversion(addDto, CfgHttpClient.class);
			Integer result = httpClientMapper.insertSelective(cfgHttpClient);
			modifyRedisHttpClient(addDto, cfgHttpClient.getCfgHttpClientCode(), CacheWebConstant.MODIFY_TYPE_ADD);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public PageResult<HttpClient> listHttpClientPages(Integer pageNo, Integer pageSize) {
		Page<CfgHttpClient> page = PageHelper.startPage(pageNo, pageSize, true);
		CfgHttpClientExample example = new CfgHttpClientExample();
		httpClientMapper.selectByExample(example);
		try {
			PageResult<HttpClient> result = BeanConvertUtil.pageConversion(page, HttpClient.class);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return new PageResult<>();
	}

	@Override
	public Integer updateHttpClient(HttpClient updateDto) {
		try {
			CfgHttpClient cfgHttpClient = BeanConvertUtil.beanConversion(updateDto, CfgHttpClient.class);
			Integer result = httpClientMapper.updateByPrimaryKeySelective(cfgHttpClient);
			modifyRedisHttpClient(updateDto, updateDto.getCfgHttpClientCode(), CacheWebConstant.MODIFY_TYPE_UPDATE);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public Integer deleteHttpClient(String cfgHttpClientCode) {
		CfgHttpClient cfgHttpClient = httpClientMapper.selectByPrimaryKey(cfgHttpClientCode);
		cfgHttpClient.setState(CacheWebConstant.STATE_OUT_OF_USE);
		Integer result = httpClientMapper.updateByPrimaryKeySelective(cfgHttpClient);
		modifyRedisHttpClient(null, cfgHttpClientCode, CacheWebConstant.MODIFY_TYPE_DELETE);
		return result;
	}

	@Override
	public Integer loadHttpClient() {
		CfgHttpClientExample example = new CfgHttpClientExample();
		CfgHttpClientExample.Criteria criteria = example.createCriteria();
		criteria.andStateEqualTo(CacheWebConstant.STATE_IN_USE);
		List<CfgHttpClient> cfgHttpClientList = httpClientMapper.selectByExample(example);
		try {
			List<HttpClient> httpClientList = BeanConvertUtil.listConversion(cfgHttpClientList, HttpClient.class);
			if (!CollectionUtils.isEmpty(httpClientList)) {
				Map<String, Object> map = new HashMap<>();
				for (HttpClient httpClient : httpClientList) {
					map.put(httpClient.getCfgHttpClientCode(), httpClient);
				}
				HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
				Map<String, Object> redisMap = hashOp.entries(CacheConstant.HTTP_CLIENT_REDIS_KEY);
				Map<String, Object> differMap = MapUtil.getDifferenceSet(redisMap, map);
				hashOp.putAll(CacheConstant.HTTP_CLIENT_REDIS_KEY, map);
				hashOp.delete(CacheConstant.HTTP_CLIENT_REDIS_KEY, differMap.keySet().toArray());
			}
			return httpClientList.size();
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	private void modifyRedisHttpClient(HttpClient addDto, String cfgHttpClientCode, int modifyType) {
		HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
		if (CacheWebConstant.MODIFY_TYPE_ADD == modifyType || CacheWebConstant.MODIFY_TYPE_UPDATE == modifyType) {
			hashOp.put(CacheConstant.HTTP_CLIENT_REDIS_KEY, addDto.getCfgHttpClientCode(), addDto);
		} else if (CacheWebConstant.MODIFY_TYPE_DELETE == modifyType) {
			hashOp.delete(CacheConstant.HTTP_CLIENT_REDIS_KEY, cfgHttpClientCode);
		} else {
			log.info("not implemented.");
		}
	}
}
