package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.constant.CacheWebConstant;
import com.aii.crm.cache.web.persistence.bo.BsI18nResource;
import com.aii.crm.cache.web.persistence.bo.BsI18nResourceExample;
import com.aii.crm.cache.web.persistence.bo.BsI18nResourceKey;
import com.aii.crm.cache.web.persistence.mapper.BsI18nResourceMapper;
import com.aii.crm.cache.web.service.interfaces.IBsI18nResourceSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.cache.constant.CacheConstant;
import com.aii.crm.common.cache.model.I18nResource;
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
public class BsI18nResourceSVImpl implements IBsI18nResourceSV {

	@Autowired
	private BsI18nResourceMapper i18nResourceMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@Override
	public Integer saveI18nResource(I18nResource addDto) {
		try {
			addDto.setState(CacheWebConstant.STATE_IN_USE);
			BsI18nResource bsI18nResource = BeanConvertUtil.beanConversion(addDto, BsI18nResource.class);
			Integer result = i18nResourceMapper.insertSelective(bsI18nResource);
			modifyRedisI18nResource(addDto, addDto.getResKey(), addDto.getLanguages(),
					CacheWebConstant.MODIFY_TYPE_ADD);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public PageResult<I18nResource> listI18nPages(Integer pageNo, Integer pageSize) {
		Page<BsI18nResource> page = PageHelper.startPage(pageNo, pageSize, true);
		BsI18nResourceExample example = new BsI18nResourceExample();
		i18nResourceMapper.selectByExample(example);
		try {
			PageResult<I18nResource> result = BeanConvertUtil.pageConversion(page, I18nResource.class);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return new PageResult<>();
	}

	@Override
	public Integer updateI18nResource(I18nResource updateDto) {
		try {
			BsI18nResource bsI18nResource = BeanConvertUtil.beanConversion(updateDto, BsI18nResource.class);
			Integer result = i18nResourceMapper.updateByPrimaryKeySelective(bsI18nResource);
			modifyRedisI18nResource(updateDto, updateDto.getResKey(),
					updateDto.getLanguages(), CacheWebConstant.MODIFY_TYPE_UPDATE);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public Integer deleteI18nResource(String resKey, String language) {
		BsI18nResourceKey key = new BsI18nResourceKey();
		key.setResKey(resKey);
		key.setLanguages(language);
		BsI18nResource bsI18nResource = i18nResourceMapper.selectByPrimaryKey(key);
		bsI18nResource.setState(CacheWebConstant.STATE_OUT_OF_USE);
		Integer result = i18nResourceMapper.updateByPrimaryKeySelective(bsI18nResource);
		modifyRedisI18nResource(null, resKey, language, CacheWebConstant.MODIFY_TYPE_DELETE);
		return result;
	}

	@Override
	public Integer loadI18nResource() {
		BsI18nResourceExample example = new BsI18nResourceExample();
		BsI18nResourceExample.Criteria criteria = example.createCriteria();
		criteria.andStateEqualTo(CacheWebConstant.STATE_IN_USE);
		List<BsI18nResource> bsI18nResourcesList = i18nResourceMapper.selectByExample(example);
		try {
			List<I18nResource> i18nResourceList = BeanConvertUtil.listConversion(bsI18nResourcesList, I18nResource.class);
			if (!CollectionUtils.isEmpty(i18nResourceList)) {
				Map<String, Object> map = new HashMap<>();
				for (I18nResource i18nResource : i18nResourceList) {
					String resKey = i18nResource.getResKey();
					String language = i18nResource.getLanguages();
					map.put(resKey+"_"+language, i18nResource);
				}
				HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
				Map<String, Object> redisMap = hashOp.entries(CacheConstant.I18N_RESOURCE_REDIS_KEY);
				Map<String, Object> differMap = MapUtil.getDifferenceSet(redisMap, map);
				hashOp.putAll(CacheConstant.I18N_RESOURCE_REDIS_KEY, map);
				hashOp.delete(CacheConstant.I18N_RESOURCE_REDIS_KEY, differMap.keySet().toArray());
			}
			return i18nResourceList.size();
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	private void modifyRedisI18nResource(I18nResource i18nResource, String resKey, String language, int modifyType) {
		HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
		if (CacheWebConstant.MODIFY_TYPE_ADD == modifyType || CacheWebConstant.MODIFY_TYPE_UPDATE == modifyType) {
			hashOp.put(CacheConstant.I18N_RESOURCE_REDIS_KEY, i18nResource.getResKey()+"_"+i18nResource.getLanguages(),
					i18nResource);
		} else if (CacheWebConstant.MODIFY_TYPE_DELETE == modifyType) {
			hashOp.delete(CacheConstant.I18N_RESOURCE_REDIS_KEY, resKey+"_"+language);
		} else {
			log.info("not implemented.");
		}
	}

}
