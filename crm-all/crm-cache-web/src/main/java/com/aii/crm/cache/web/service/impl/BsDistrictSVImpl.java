package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.model.BsDistrictDto;
import com.aii.crm.cache.web.persistence.bo.BsDistrict;
import com.aii.crm.cache.web.persistence.bo.BsDistrictExample;
import com.aii.crm.cache.web.persistence.mapper.BsDistrictMapper;
import com.aii.crm.cache.web.service.interfaces.IBsDistrictSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.cache.constant.CacheConstant;
import com.aii.crm.common.cache.model.District;
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

	@Override
	public Integer saveDistrict(BsDistrictDto addDto) {
		try {
			BsDistrict district = BeanConvertUtil.beanConversion(addDto, BsDistrict.class);
			return districtMapper.insertSelective(district);
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
			return districtMapper.updateByPrimaryKeySelective(district);
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public Integer deleteDistrict(Long districtId) {
		return districtMapper.deleteByPrimaryKey(districtId);
	}

	@Override
	public Integer loadDistrict() {
		BsDistrictExample example = new BsDistrictExample();
		List<BsDistrict> bsDistrictList = districtMapper.selectByExample(example);
		try {
			List<District> districtList = BeanConvertUtil.listConversion(bsDistrictList, District.class);
			if (!CollectionUtils.isEmpty(districtList)) {
				Map<Long, District> map = new HashMap<>();
				for(District dt : districtList){
					map.put(dt.getDistrictId(), dt);
				}
				HashOperations<String, Long, Object> hashOp = redisTemplate.opsForHash();
				hashOp.putAll(CacheConstant.DISTRICT_REDIS_KEY, map);
			}
			return districtList.size();
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}
}
