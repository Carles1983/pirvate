package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.constant.CacheWebConstant;
import com.aii.crm.cache.web.persistence.bo.ExceptionCode;
import com.aii.crm.cache.web.persistence.bo.ExceptionCodeExample;
import com.aii.crm.cache.web.persistence.mapper.ExceptionCodeMapper;
import com.aii.crm.cache.web.service.interfaces.IExceptionCodeSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.cache.constant.CacheConstant;
import com.aii.crm.common.cache.model.ExCode;
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
public class ExceptionCodeSVImpl implements IExceptionCodeSV {

	@Autowired
	private ExceptionCodeMapper codeMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@Override
	public Integer saveExceptionCode(ExCode addDto) {
		try {
			addDto.setState(CacheWebConstant.STATE_IN_USE);
			ExceptionCode exceptionCode = BeanConvertUtil.beanConversion(addDto, ExceptionCode.class);
			Integer result = codeMapper.insertSelective(exceptionCode);
			modifyRedisExceptionCode(addDto, addDto.getExceptionCodeType(), CacheWebConstant.MODIFY_TYPE_ADD);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public PageResult<ExCode> listExceptionCodePages(Integer pageNo, Integer pageSize) {
		Page<ExceptionCode> page = PageHelper.startPage(pageNo, pageSize, true);
		ExceptionCodeExample example = new ExceptionCodeExample();
		codeMapper.selectByExample(example);
		try {
			PageResult<ExCode> result = BeanConvertUtil.pageConversion(page, ExCode.class);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return new PageResult<>();
	}

	@Override
	public Integer updateExceptionCode(ExCode updateDto) {
		try {
			ExceptionCode exceptionCode = BeanConvertUtil.beanConversion(updateDto, ExceptionCode.class);
			Integer result = codeMapper.updateByPrimaryKeySelective(exceptionCode);
			modifyRedisExceptionCode(updateDto, updateDto.getExceptionCodeType(), CacheWebConstant.MODIFY_TYPE_UPDATE);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public Integer deleteExceptionCode(String exceptionCodeType) {
		ExceptionCode exceptionCode = codeMapper.selectByPrimaryKey(exceptionCodeType);
		exceptionCode.setState(CacheWebConstant.STATE_OUT_OF_USE);
		Integer result = codeMapper.updateByPrimaryKeySelective(exceptionCode);
		modifyRedisExceptionCode(null, exceptionCodeType, CacheWebConstant.MODIFY_TYPE_DELETE);
		return result;
	}

	@Override
	public Integer loadExceptionCode() {
		ExceptionCodeExample example = new ExceptionCodeExample();
		ExceptionCodeExample.Criteria criteria = example.createCriteria();
		criteria.andStateEqualTo(CacheWebConstant.STATE_IN_USE);
		List<ExceptionCode> exceptionCodeList = codeMapper.selectByExample(example);
		try {
			List<ExCode> exCodeList = BeanConvertUtil.listConversion(exceptionCodeList, ExCode.class);
			if (!CollectionUtils.isEmpty(exCodeList)) {
				Map<String, Object> map = new HashMap<>();
				for (ExCode exCode : exCodeList) {
					map.put(exCode.getExceptionCodeType(), exCode);
				}
				HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
				Map<String, Object> redisMap = hashOp.entries(CacheConstant.EXCEPTION_CODE_REDIS_KEY);
				Map<String, Object> differMap = MapUtil.getDifferenceSet(redisMap, map);
				hashOp.putAll(CacheConstant.EXCEPTION_CODE_REDIS_KEY, map);
				hashOp.delete(CacheConstant.EXCEPTION_CODE_REDIS_KEY, differMap.keySet().toArray());
			}
			return exCodeList.size();
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	private void modifyRedisExceptionCode(ExCode addDto, String exceptionCodeType, int modifyType) {
		HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
		if (CacheWebConstant.MODIFY_TYPE_ADD == modifyType || CacheWebConstant.MODIFY_TYPE_UPDATE == modifyType) {
			hashOp.put(CacheConstant.EXCEPTION_CODE_REDIS_KEY, addDto.getExceptionCodeType(), addDto);
		} else if (CacheWebConstant.MODIFY_TYPE_DELETE == modifyType) {
			hashOp.delete(CacheConstant.EXCEPTION_CODE_REDIS_KEY, exceptionCodeType);
		} else {
			log.info("not implemented.");
		}
	}
}
