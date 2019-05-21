package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.constant.CacheWebConstant;
import com.aii.crm.cache.web.persistence.bo.CfgClientTimeout;
import com.aii.crm.cache.web.persistence.bo.CfgClientTimeoutExample;
import com.aii.crm.cache.web.persistence.bo.CfgClientTimeoutKey;
import com.aii.crm.cache.web.persistence.mapper.CfgClientTimeoutMapper;
import com.aii.crm.cache.web.service.interfaces.ICfgClientTimeoutSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.cache.constant.CacheConstant;
import com.aii.crm.common.cache.model.ClientTimeout;
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
public class CfgClientTimeoutSVImpl implements ICfgClientTimeoutSV {

	@Autowired
	private CfgClientTimeoutMapper clientTimeoutMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@Override
	public Integer saveClientTimeout(ClientTimeout addDto) {
		try {
			addDto.setState(CacheWebConstant.STATE_IN_USE);
			CfgClientTimeout cfgClientTimeout = BeanConvertUtil.beanConversion(addDto, CfgClientTimeout.class);
			Integer result = clientTimeoutMapper.insertSelective(cfgClientTimeout);
			modifyRedisClientTimeout(addDto, addDto.getInterfaceClassname(), addDto.getMethodName(), addDto.getParameterCount(),
					CacheWebConstant.MODIFY_TYPE_ADD);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public PageResult<ClientTimeout> listClientTimeoutPages(Integer pageNo, Integer pageSize) {
		Page<CfgClientTimeout> page = PageHelper.startPage(pageNo, pageSize, true);
		CfgClientTimeoutExample example = new CfgClientTimeoutExample();
		clientTimeoutMapper.selectByExample(example);
		try {
			PageResult<ClientTimeout> result = BeanConvertUtil.pageConversion(page, ClientTimeout.class);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return new PageResult<>();
	}

	@Override
	public Integer updateClientTimeout(ClientTimeout updateDto) {
		try {
			CfgClientTimeout cfgClientTimeout = BeanConvertUtil.beanConversion(updateDto, CfgClientTimeout.class);
			Integer result = clientTimeoutMapper.updateByPrimaryKeySelective(cfgClientTimeout);
			modifyRedisClientTimeout(updateDto, updateDto.getInterfaceClassname(), updateDto.getMethodName(),
					updateDto.getParameterCount(),
					CacheWebConstant.MODIFY_TYPE_UPDATE);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public Integer deleteClientTimeout(String interfaceClassname, String methodName, Integer parameterCount) {
		CfgClientTimeoutKey key = new CfgClientTimeoutKey();
		key.setInterfaceClassname(interfaceClassname);
		key.setMethodName(methodName);
		key.setParameterCount(parameterCount);
		CfgClientTimeout cfgClientTimeout = clientTimeoutMapper.selectByPrimaryKey(key);
		cfgClientTimeout.setState(CacheWebConstant.STATE_OUT_OF_USE);
		Integer result = clientTimeoutMapper.updateByPrimaryKeySelective(cfgClientTimeout);
		modifyRedisClientTimeout(null, cfgClientTimeout.getInterfaceClassname(), cfgClientTimeout.getMethodName(),
				cfgClientTimeout.getParameterCount(),
				CacheWebConstant.MODIFY_TYPE_DELETE);
		return result;
	}

	@Override
	public Integer loadClientTimeout() {
		CfgClientTimeoutExample example = new CfgClientTimeoutExample();
		CfgClientTimeoutExample.Criteria criteria = example.createCriteria();
		criteria.andStateEqualTo(CacheWebConstant.STATE_IN_USE);
		List<CfgClientTimeout> cfgClientTimeoutList = clientTimeoutMapper.selectByExample(example);
		try {
			List<ClientTimeout> clientTimeoutList = BeanConvertUtil.listConversion(cfgClientTimeoutList, ClientTimeout.class);
			if (!CollectionUtils.isEmpty(clientTimeoutList)) {
				Map<String, Object> map = new HashMap<>();
				for (ClientTimeout clientTimeout : clientTimeoutList) {
					map.put(clientTimeout.getInterfaceClassname() + "_" + clientTimeout.getMethodName() + "_" + clientTimeout.getParameterCount(),
							clientTimeout);
				}
				HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
				Map<String, Object> redisMap = hashOp.entries(CacheConstant.CLIENT_TIMEOUT_REDIS_KEY);
				Map<String, Object> differMap = MapUtil.getDifferenceSet(redisMap, map);
				hashOp.putAll(CacheConstant.CLIENT_TIMEOUT_REDIS_KEY, map);
				hashOp.delete(CacheConstant.CLIENT_TIMEOUT_REDIS_KEY, differMap.keySet().toArray());
			}
			return clientTimeoutList.size();
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	private void modifyRedisClientTimeout(ClientTimeout addDto, String interfaceClassname, String methodName, Integer parameterCount, int modifyType) {
		HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
		if (CacheWebConstant.MODIFY_TYPE_ADD == modifyType || CacheWebConstant.MODIFY_TYPE_UPDATE == modifyType) {
			hashOp.put(CacheConstant.CLIENT_TIMEOUT_REDIS_KEY,
					addDto.getInterfaceClassname() + "_" + addDto.getMethodName() + "_" + addDto.getParameterCount(), addDto);
		} else if (CacheWebConstant.MODIFY_TYPE_DELETE == modifyType) {
			hashOp.delete(CacheConstant.CLIENT_TIMEOUT_REDIS_KEY, interfaceClassname + "_" + methodName + "_" + parameterCount);
		} else {
			log.info("not implemented.");
		}
	}

}
