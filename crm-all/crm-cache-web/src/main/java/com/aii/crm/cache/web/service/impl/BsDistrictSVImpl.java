package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.model.BsDistrictDto;
import com.aii.crm.cache.web.persistence.bo.BsDistrict;
import com.aii.crm.cache.web.persistence.bo.BsDistrictExample;
import com.aii.crm.cache.web.persistence.mapper.BsDistrictMapper;
import com.aii.crm.cache.web.service.interfaces.IBsDistrictSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.cache.constant.CacheConstant;
import com.aii.crm.common.cache.model.District;
import com.aii.crm.common.map.MapUtil;
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
public class BsDistrictSVImpl implements IBsDistrictSV {

	@Autowired
	private BsDistrictMapper districtMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	// 新增
	private static final int MODIFY_TYPE_ADD = 0;
	// 修改
	private static final int MODIFY_TYPE_UPDATE = 1;
	// 删除
	private static final int MODIFY_TYPE_DELETE = 2;

	@Override
	public Integer saveDistrict(BsDistrictDto addDto) {
		try {
			BsDistrict district = BeanConvertUtil.beanConversion(addDto, BsDistrict.class);
			Integer result = districtMapper.insertSelective(district);
			modifyRedisDistrict(district, district.getDistrictId(), MODIFY_TYPE_ADD);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public Page<BsDistrictDto> listDistrictPages(Integer pageNo, Integer pageSize) {
		Page<BsDistrictDto> page = PageHelper.startPage(pageNo, pageSize, true);
		BsDistrictExample example = new BsDistrictExample();
		districtMapper.selectByExample(example);
		return page;
	}

	@Override
	public Integer updateDistrict(BsDistrictDto updateDto) {
		try {
			BsDistrict district = BeanConvertUtil.beanConversion(updateDto, BsDistrict.class);
			Integer result = districtMapper.updateByPrimaryKeySelective(district);
			modifyRedisDistrict(district, district.getDistrictId(), MODIFY_TYPE_UPDATE);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public Integer deleteDistrict(Long districtId) {
		Integer result = districtMapper.deleteByPrimaryKey(districtId);
		modifyRedisDistrict(null, districtId, MODIFY_TYPE_DELETE);
		return result;
	}

	@Override
	public Integer loadDistrict() {
		BsDistrictExample example = new BsDistrictExample();
		List<BsDistrict> bsDistrictList = districtMapper.selectByExample(example);
		try {
			List<District> districtList = BeanConvertUtil.listConversion(bsDistrictList, District.class);
			if (!CollectionUtils.isEmpty(districtList)) {
				Map<Long, Object> map = new HashMap<>();
				for(District dt : districtList){
					map.put(dt.getDistrictId(), dt);
				}
				HashOperations<String, Long, Object> hashOp = redisTemplate.opsForHash();
				Map<Long, Object> redisMap = hashOp.entries(CacheConstant.DISTRICT_REDIS_KEY);
				Map<Long, Object> differMap = MapUtil.getDifferenceSet(redisMap, map);
				hashOp.putAll(CacheConstant.DISTRICT_REDIS_KEY, map);
				hashOp.delete(CacheConstant.DISTRICT_REDIS_KEY, differMap.keySet().toArray());
			}
			return districtList.size();
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	private void modifyRedisDistrict(BsDistrict bsDistrict, Long districtId, int modifyType) {
		try {
			District district = BeanConvertUtil.beanConversion(bsDistrict, District.class);
			HashOperations<String, Long, Object> hashOp = redisTemplate.opsForHash();
			if(MODIFY_TYPE_ADD == modifyType || MODIFY_TYPE_UPDATE == modifyType){
				hashOp.put(CacheConstant.DISTRICT_REDIS_KEY, district.getDistrictId(), district);
			} else if (MODIFY_TYPE_DELETE == modifyType){
				hashOp.delete(CacheConstant.DISTRICT_REDIS_KEY, districtId);
			} else {
				log.info("not implemented.");
			}
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
	}

}
