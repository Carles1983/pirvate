package com.aii.crm.cache.web.service.impl;


import com.aii.crm.cache.web.constant.CacheWebConstant;
import com.aii.crm.cache.web.persistence.bo.BsTenant;
import com.aii.crm.cache.web.persistence.bo.BsTenantExample;
import com.aii.crm.cache.web.persistence.mapper.BsTenantMapper;
import com.aii.crm.cache.web.service.interfaces.IBsTenantSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.cache.constant.CacheConstant;
import com.aii.crm.common.cache.model.Tenant;
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
public class BsTenantSVImpl implements IBsTenantSV {

	@Autowired
	private BsTenantMapper tenantMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@Override
	public Integer saveTenant(Tenant addDto) {
		try {
			addDto.setState(CacheWebConstant.STATE_IN_USE);
			BsTenant bsTenant = BeanConvertUtil.beanConversion(addDto, BsTenant.class);
			Integer result = tenantMapper.insertSelective(bsTenant);
			modifyRedisTenant(addDto, addDto.getTenantId(), CacheWebConstant.MODIFY_TYPE_ADD);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public PageResult<Tenant> listTenantPages(Integer pageNo, Integer pageSize) {
		Page<BsTenant> page = PageHelper.startPage(pageNo, pageSize, true);
		BsTenantExample example = new BsTenantExample();
		tenantMapper.selectByExample(example);
		try {
			PageResult<Tenant> result = BeanConvertUtil.pageConversion(page, Tenant.class);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return new PageResult<>();
	}

	@Override
	public Integer updateTenant(Tenant updateDto) {
		try {
			BsTenant bsTenant = BeanConvertUtil.beanConversion(updateDto, BsTenant.class);
			Integer result = tenantMapper.updateByPrimaryKeySelective(bsTenant);
			modifyRedisTenant(updateDto, updateDto.getTenantId(), CacheWebConstant.MODIFY_TYPE_UPDATE);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public Integer deleteTenant(String tenantId) {
		BsTenantExample example = new BsTenantExample();
		BsTenantExample.Criteria criteria = example.createCriteria();
		criteria.andTenantIdEqualTo(tenantId);
		List<BsTenant> bsTenantList = tenantMapper.selectByExample(example);
		Integer result = null;
		if(!CollectionUtils.isEmpty(bsTenantList)){
			bsTenantList.get(0).setState(CacheWebConstant.STATE_OUT_OF_USE);
			result = tenantMapper.updateByPrimaryKeySelective(bsTenantList.get(0));
			modifyRedisTenant(null, bsTenantList.get(0).getTenantId(), CacheWebConstant.MODIFY_TYPE_DELETE);
		}
		return result;
	}

	@Override
	public Integer loadTenant() {
		BsTenantExample example = new BsTenantExample();
		BsTenantExample.Criteria criteria = example.createCriteria();
		criteria.andStateEqualTo(CacheWebConstant.STATE_IN_USE);
		List<BsTenant> bsTenantList = tenantMapper.selectByExample(example);
		try {
			List<Tenant> tenantList = BeanConvertUtil.listConversion(bsTenantList, Tenant.class);
			if (!CollectionUtils.isEmpty(tenantList)) {
				Map<String, Object> map = new HashMap<>();
				for (Tenant tenant : tenantList) {
					map.put(tenant.getTenantId(), tenant);
				}
				HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
				Map<String, Object> redisMap = hashOp.entries(CacheConstant.TENANT_REDIS_KEY);
				Map<String, Object> differMap = MapUtil.getDifferenceSet(redisMap, map);
				hashOp.putAll(CacheConstant.TENANT_REDIS_KEY, map);
				hashOp.delete(CacheConstant.TENANT_REDIS_KEY, differMap.keySet().toArray());
			}
			return tenantList.size();
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	private void modifyRedisTenant(Tenant addDto, String tenantId, int modifyType) {
		HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
		if (CacheWebConstant.MODIFY_TYPE_ADD == modifyType || CacheWebConstant.MODIFY_TYPE_UPDATE == modifyType) {
			hashOp.put(CacheConstant.TENANT_REDIS_KEY, addDto.getTenantId(), addDto);
		} else if (CacheWebConstant.MODIFY_TYPE_DELETE == modifyType) {
			hashOp.delete(CacheConstant.TENANT_REDIS_KEY, tenantId);
		} else {
			log.info("not implemented.");
		}
	}
}
