package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.constant.CacheWebConstant;
import com.aii.crm.cache.web.persistence.bo.CfgHttpMapping;
import com.aii.crm.cache.web.persistence.bo.CfgHttpMappingExample;
import com.aii.crm.cache.web.persistence.mapper.CfgHttpMappingMapper;
import com.aii.crm.cache.web.service.interfaces.ICfgHttpMappingSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.cache.constant.CacheConstant;
import com.aii.crm.common.cache.model.HttpMapping;
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
public class CfgHttpMappingSVImpl implements ICfgHttpMappingSV {

	@Autowired
	private CfgHttpMappingMapper httpMappingMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@Override
	public Integer saveHttpMapping(HttpMapping addDto) {
		try {
			addDto.setState(CacheWebConstant.STATE_IN_USE);
			CfgHttpMapping cfgHttpMapping = BeanConvertUtil.beanConversion(addDto, CfgHttpMapping.class);
			Integer result = httpMappingMapper.insertSelective(cfgHttpMapping);
			modifyRedisHttpMapping(addDto, addDto.getMappingId(), CacheWebConstant.MODIFY_TYPE_ADD);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public PageResult<HttpMapping> listHttpMappingPages(Integer pageNo, Integer pageSize) {
		Page<CfgHttpMapping> page = PageHelper.startPage(pageNo, pageSize, true);
		CfgHttpMappingExample example = new CfgHttpMappingExample();
		httpMappingMapper.selectByExample(example);
		try {
			PageResult<HttpMapping> result = BeanConvertUtil.pageConversion(page, HttpMapping.class);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return new PageResult<>();
	}

	@Override
	public Integer updateHttpMapping(HttpMapping updateDto) {
		try {
			CfgHttpMapping cfgHttpMapping = BeanConvertUtil.beanConversion(updateDto, CfgHttpMapping.class);
			Integer result = httpMappingMapper.updateByPrimaryKeySelective(cfgHttpMapping);
			modifyRedisHttpMapping(updateDto, updateDto.getMappingId(), CacheWebConstant.MODIFY_TYPE_UPDATE);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public Integer deleteHttpMapping(Long mappingId) {
		CfgHttpMapping cfgHttpMapping = httpMappingMapper.selectByPrimaryKey(mappingId);
		cfgHttpMapping.setState(CacheWebConstant.STATE_OUT_OF_USE);
		Integer result = httpMappingMapper.updateByPrimaryKeySelective(cfgHttpMapping);
		modifyRedisHttpMapping(null, mappingId, CacheWebConstant.MODIFY_TYPE_DELETE);
		return result;
	}

	@Override
	public Integer loadHttpMapping() {
		CfgHttpMappingExample example = new CfgHttpMappingExample();
		CfgHttpMappingExample.Criteria criteria = example.createCriteria();
		criteria.andStateEqualTo(CacheWebConstant.STATE_IN_USE);
		List<CfgHttpMapping> cfgHttpMappingList = httpMappingMapper.selectByExample(example);
		try {
			List<HttpMapping> httpMappingList = BeanConvertUtil.listConversion(cfgHttpMappingList, HttpMapping.class);
			if (!CollectionUtils.isEmpty(httpMappingList)) {
				Map<Long, Object> map = new HashMap<>();
				for (HttpMapping httpMapping : httpMappingList) {
					map.put(httpMapping.getMappingId(), httpMapping);
				}
				HashOperations<String, Long, Object> hashOp = redisTemplate.opsForHash();
				Map<Long, Object> redisMap = hashOp.entries(CacheConstant.HTTP_MAPPING_REDIS_KEY);
				Map<Long, Object> differMap = MapUtil.getDifferenceSet(redisMap, map);
				hashOp.putAll(CacheConstant.HTTP_MAPPING_REDIS_KEY, map);
				hashOp.delete(CacheConstant.HTTP_MAPPING_REDIS_KEY, differMap.keySet().toArray());
			}
			return httpMappingList.size();
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	private void modifyRedisHttpMapping(HttpMapping addDto, Long mappingId, int modifyType) {
		HashOperations<String, Long, Object> hashOp = redisTemplate.opsForHash();
		if (CacheWebConstant.MODIFY_TYPE_ADD == modifyType || CacheWebConstant.MODIFY_TYPE_UPDATE == modifyType) {
			hashOp.put(CacheConstant.HTTP_MAPPING_REDIS_KEY, addDto.getMappingId(), addDto);
		} else if (CacheWebConstant.MODIFY_TYPE_DELETE == modifyType) {
			hashOp.delete(CacheConstant.HTTP_MAPPING_REDIS_KEY, mappingId);
		} else {
			log.info("not implemented.");
		}
	}
}
