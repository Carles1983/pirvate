package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.constant.CacheWebConstant;
import com.aii.crm.cache.web.persistence.bo.BsParaDetail;
import com.aii.crm.cache.web.persistence.bo.BsParaDetailExample;
import com.aii.crm.cache.web.persistence.bo.BsParaDetailKey;
import com.aii.crm.cache.web.persistence.mapper.BsParaDetailMapper;
import com.aii.crm.cache.web.service.interfaces.IBsParaDetailSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.cache.constant.CacheConstant;
import com.aii.crm.common.cache.model.ParaDetail;
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
public class BsParaDetailSVImpl implements IBsParaDetailSV {

	@Autowired
	private BsParaDetailMapper paraDetailMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@Override
	public Integer saveBsParaDetail(ParaDetail addDto) {
		try {
			addDto.setState(CacheWebConstant.STATE_IN_USE);
			BsParaDetail bsParaDetail = BeanConvertUtil.beanConversion(addDto, BsParaDetail.class);
			Integer result = paraDetailMapper.insertSelective(bsParaDetail);
			modifyRedisParaDetail(addDto, addDto.getRegionId(), addDto.getParaType(), addDto.getParaCode(),
					CacheWebConstant.MODIFY_TYPE_ADD);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public PageResult<ParaDetail> listBsParaDetailPages(Integer pageNo, Integer pageSize) {
		Page<BsParaDetail> page = PageHelper.startPage(pageNo, pageSize, true);
		BsParaDetailExample example = new BsParaDetailExample();
		paraDetailMapper.selectByExample(example);
		try {
			PageResult<ParaDetail> result = BeanConvertUtil.pageConversion(page, ParaDetail.class);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return new PageResult<>();
	}

	@Override
	public Integer updateBsParaDetail(ParaDetail updateDto) {
		try {
			BsParaDetail bsParaDetail = BeanConvertUtil.beanConversion(updateDto, BsParaDetail.class);
			Integer result = paraDetailMapper.updateByPrimaryKeySelective(bsParaDetail);
			modifyRedisParaDetail(updateDto, updateDto.getRegionId(), updateDto.getParaType(), updateDto.getParaCode(),
					CacheWebConstant.MODIFY_TYPE_UPDATE);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public Integer deleteBsParaDetail(String regionId, String paraType, String paraCode) {
		BsParaDetailKey key = new BsParaDetailKey();
		key.setRegionId(regionId);
		key.setParaType(paraType);
		key.setParaCode(paraCode);
		BsParaDetail bsParaDetail = paraDetailMapper.selectByPrimaryKey(key);
		bsParaDetail.setState(CacheWebConstant.STATE_OUT_OF_USE);
		Integer result = paraDetailMapper.updateByPrimaryKeySelective(bsParaDetail);
		modifyRedisParaDetail(null, regionId, paraType, paraCode, CacheWebConstant.MODIFY_TYPE_DELETE);
		return result;
	}

	@Override
	public Integer loadBsParaDetail() {
		BsParaDetailExample example = new BsParaDetailExample();
		BsParaDetailExample.Criteria criteria = example.createCriteria();
		criteria.andStateEqualTo(CacheWebConstant.STATE_IN_USE);
		List<BsParaDetail> bsParaDetailList = paraDetailMapper.selectByExample(example);
		try {
			List<ParaDetail> paraDetailList = BeanConvertUtil.listConversion(bsParaDetailList, ParaDetail.class);
			if (!CollectionUtils.isEmpty(paraDetailList)) {
				Map<String, Object> map = new HashMap<>();
				for (ParaDetail paraDetail : paraDetailList) {
					map.put(paraDetail.getRegionId() + "_" + paraDetail.getParaType() + "_" + paraDetail.getParaCode(), paraDetail);
				}
				HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
				Map<String, Object> redisMap = hashOp.entries(CacheConstant.PARA_DETAIL_REDIS_KEY);
				Map<String, Object> differMap = MapUtil.getDifferenceSet(redisMap, map);
				hashOp.putAll(CacheConstant.PARA_DETAIL_REDIS_KEY, map);
				hashOp.delete(CacheConstant.PARA_DETAIL_REDIS_KEY, differMap.keySet().toArray());
			}
			return paraDetailList.size();
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	private void modifyRedisParaDetail(ParaDetail addDto, String regionId, String paraType, String paraCode, int modifyType) {
		HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
		if (CacheWebConstant.MODIFY_TYPE_ADD == modifyType || CacheWebConstant.MODIFY_TYPE_UPDATE == modifyType) {
			hashOp.put(CacheConstant.PARA_DETAIL_REDIS_KEY,
					addDto.getRegionId()+"_"+addDto.getParaType()+"_"+addDto.getParaCode(), addDto);
		} else if (CacheWebConstant.MODIFY_TYPE_DELETE == modifyType) {
			hashOp.delete(CacheConstant.PARA_DETAIL_REDIS_KEY, regionId+"_"+paraType+"_"+paraCode);
		} else {
			log.info("not implemented.");
		}
	}

}
