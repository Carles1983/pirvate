package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.constant.CacheWebConstant;
import com.aii.crm.cache.web.persistence.bo.CfgMsgClient;
import com.aii.crm.cache.web.persistence.bo.CfgMsgClientExample;
import com.aii.crm.cache.web.persistence.mapper.CfgMsgClientMapper;
import com.aii.crm.cache.web.service.interfaces.ICfgMsgClientSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.cache.constant.CacheConstant;
import com.aii.crm.common.cache.model.MsgClient;
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
public class CfgMsgClientSVImpl implements ICfgMsgClientSV {

	@Autowired
	private CfgMsgClientMapper msgClientMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@Override
	public Integer saveMsgClient(MsgClient addDto) {
		try {
			addDto.setState(CacheWebConstant.STATE_IN_USE);
			CfgMsgClient cfgMsgClient = BeanConvertUtil.beanConversion(addDto, CfgMsgClient.class);
			Integer result = msgClientMapper.insertSelective(cfgMsgClient);
			modifyRedisMsgClient(addDto, addDto.getCfgMsgControlCode(), CacheWebConstant.MODIFY_TYPE_ADD);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public PageResult<MsgClient> listMsgClientPages(Integer pageNo, Integer pageSize) {
		Page<CfgMsgClient> page = PageHelper.startPage(pageNo, pageSize, true);
		CfgMsgClientExample example = new CfgMsgClientExample();
		msgClientMapper.selectByExample(example);
		try {
			PageResult<MsgClient> result = BeanConvertUtil.pageConversion(page, MsgClient.class);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return new PageResult<>();
	}

	@Override
	public Integer updateMsgClient(MsgClient updateDto) {
		try {
			CfgMsgClient cfgMsgClient = BeanConvertUtil.beanConversion(updateDto, CfgMsgClient.class);
			Integer result = msgClientMapper.updateByPrimaryKeySelective(cfgMsgClient);
			modifyRedisMsgClient(updateDto, updateDto.getCfgMsgControlCode(), CacheWebConstant.MODIFY_TYPE_UPDATE);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public Integer deleteMsgClient(String cfgMsgControlCode) {
		CfgMsgClient cfgMsgClient = msgClientMapper.selectByPrimaryKey(cfgMsgControlCode);
		cfgMsgClient.setState(CacheWebConstant.STATE_OUT_OF_USE);
		Integer result = msgClientMapper.updateByPrimaryKeySelective(cfgMsgClient);
		modifyRedisMsgClient(null, cfgMsgControlCode, CacheWebConstant.MODIFY_TYPE_DELETE);
		return result;
	}

	@Override
	public Integer loadMsgClient() {
		CfgMsgClientExample example = new CfgMsgClientExample();
		CfgMsgClientExample.Criteria criteria = example.createCriteria();
		criteria.andStateEqualTo(CacheWebConstant.STATE_IN_USE);
		List<CfgMsgClient> cfgMsgClientList = msgClientMapper.selectByExample(example);
		try {
			List<MsgClient> msgClientList = BeanConvertUtil.listConversion(cfgMsgClientList, MsgClient.class);
			if (!CollectionUtils.isEmpty(msgClientList)) {
				Map<String, Object> map = new HashMap<>();
				for (MsgClient msgClient : msgClientList) {
					map.put(msgClient.getCfgMsgControlCode(), msgClient);
				}
				HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
				Map<String, Object> redisMap = hashOp.entries(CacheConstant.MSG_CLIENT_REDIS_KEY);
				Map<String, Object> differMap = MapUtil.getDifferenceSet(redisMap, map);
				hashOp.putAll(CacheConstant.MSG_CLIENT_REDIS_KEY, map);
				hashOp.delete(CacheConstant.MSG_CLIENT_REDIS_KEY, differMap.keySet().toArray());
			}
			return msgClientList.size();
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	private void modifyRedisMsgClient(MsgClient addDto, String cfgMsgControlCode, int modifyType) {
		HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
		if (CacheWebConstant.MODIFY_TYPE_ADD == modifyType || CacheWebConstant.MODIFY_TYPE_UPDATE == modifyType) {
			hashOp.put(CacheConstant.MSG_CLIENT_REDIS_KEY, addDto.getCfgMsgControlCode(), addDto);
		} else if (CacheWebConstant.MODIFY_TYPE_DELETE == modifyType) {
			hashOp.delete(CacheConstant.MSG_CLIENT_REDIS_KEY, cfgMsgControlCode);
		} else {
			log.info("not implemented.");
		}
	}
}
