package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.constant.CacheWebConstant;
import com.aii.crm.cache.web.persistence.bo.BsStaticData;
import com.aii.crm.cache.web.persistence.bo.BsStaticDataExample;
import com.aii.crm.cache.web.persistence.bo.BsStaticDataKey;
import com.aii.crm.cache.web.persistence.mapper.BsStaticDataMapper;
import com.aii.crm.cache.web.service.interfaces.IBsStaticDataSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.cache.constant.CacheConstant;
import com.aii.crm.common.cache.model.StaticData;
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
public class BsStaticDataSVImpl implements IBsStaticDataSV {

	@Autowired
	private BsStaticDataMapper staticDataMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@Override
	public Integer saveStaticData(StaticData addDto) {
		try {
			addDto.setState(CacheWebConstant.STATE_IN_USE);
			BsStaticData bsStaticData = BeanConvertUtil.beanConversion(addDto, BsStaticData.class);
			Integer result = staticDataMapper.insertSelective(bsStaticData);
			modifyRedisStaticData(addDto, addDto.getCodeType(), addDto.getCodeValue(), CacheWebConstant.MODIFY_TYPE_ADD);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public PageResult<StaticData> listStaticDataPages(Integer pageNo, Integer pageSize) {
		Page<BsStaticData> page = PageHelper.startPage(pageNo, pageSize, true);
		BsStaticDataExample example = new BsStaticDataExample();
		staticDataMapper.selectByExample(example);
		try {
			PageResult<StaticData> result = BeanConvertUtil.pageConversion(page, StaticData.class);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return new PageResult<>();
	}

	@Override
	public Integer updateStaticData(StaticData updateDto) {
		try {
			BsStaticData bsStaticData = BeanConvertUtil.beanConversion(updateDto, BsStaticData.class);
			Integer result = staticDataMapper.updateByPrimaryKeySelective(bsStaticData);
			modifyRedisStaticData(updateDto, updateDto.getCodeType(), updateDto.getCodeValue(),
					CacheWebConstant.MODIFY_TYPE_UPDATE);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public Integer deleteStaticData(String codeType, String codeValue) {
		BsStaticDataKey key = new BsStaticDataKey();
		key.setCodeType(codeType);
		key.setCodeValue(codeValue);
		BsStaticData bsStaticData = staticDataMapper.selectByPrimaryKey(key);
		bsStaticData.setState(CacheWebConstant.STATE_OUT_OF_USE);
		Integer result = staticDataMapper.updateByPrimaryKeySelective(bsStaticData);
		modifyRedisStaticData(null, codeType, codeValue, CacheWebConstant.MODIFY_TYPE_DELETE);
		return result;
	}

	@Override
	public Integer loadStaticData() {
		BsStaticDataExample example = new BsStaticDataExample();
		BsStaticDataExample.Criteria criteria = example.createCriteria();
		criteria.andStateEqualTo(CacheWebConstant.STATE_IN_USE);
		List<BsStaticData> bsStaticDataList = staticDataMapper.selectByExample(example);
		try {
			List<StaticData> staticDataList = BeanConvertUtil.listConversion(bsStaticDataList, StaticData.class);
			if (!CollectionUtils.isEmpty(staticDataList)) {
				Map<String, Object> map = new HashMap<>();
				for (StaticData staticData : staticDataList) {
					map.put(staticData.getCodeType() + "_" + staticData.getCodeValue(), staticData);
				}
				HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
				Map<String, Object> redisMap = hashOp.entries(CacheConstant.STATIC_DATA_REDIS_KEY);
				Map<String, Object> differMap = MapUtil.getDifferenceSet(redisMap, map);
				hashOp.putAll(CacheConstant.STATIC_DATA_REDIS_KEY, map);
				hashOp.delete(CacheConstant.STATIC_DATA_REDIS_KEY, differMap.keySet().toArray());
			}
			return staticDataList.size();
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	private void modifyRedisStaticData(StaticData addDto, String codeType, String codeValue, int modifyType) {
		HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
		if (CacheWebConstant.MODIFY_TYPE_ADD == modifyType || CacheWebConstant.MODIFY_TYPE_UPDATE == modifyType) {
			hashOp.put(CacheConstant.STATIC_DATA_REDIS_KEY, addDto.getCodeType() + "_" + addDto.getCodeValue(), addDto);
		} else if (CacheWebConstant.MODIFY_TYPE_DELETE == modifyType) {
			hashOp.delete(CacheConstant.STATIC_DATA_REDIS_KEY, codeType + "_" + codeValue);
		} else {
			log.info("not implemented.");
		}
	}

}
