package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.constant.CacheWebConstant;
import com.aii.crm.cache.web.persistence.bo.BsFtpPath;
import com.aii.crm.cache.web.persistence.bo.BsFtpPathExample;
import com.aii.crm.cache.web.persistence.mapper.BsFtpPathMapper;
import com.aii.crm.cache.web.service.interfaces.IBsFtpPathSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.cache.constant.CacheConstant;
import com.aii.crm.common.cache.model.FtpPath;
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
public class BsFtpPathSVImpl implements IBsFtpPathSV {

	@Autowired
	private BsFtpPathMapper ftpPathMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@Override
	public Integer saveFtpPath(FtpPath addDto) {
		try {
			addDto.setState(CacheWebConstant.STATE_IN_USE);
			BsFtpPath bsFtpPath = BeanConvertUtil.beanConversion(addDto, BsFtpPath.class);
			Integer result = ftpPathMapper.insertSelective(bsFtpPath);
			modifyRedisFtpPath(addDto, bsFtpPath.getFtpPathCode(), CacheWebConstant.MODIFY_TYPE_ADD);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public PageResult<FtpPath> listFtpPathPages(Integer pageNo, Integer pageSize) {
		Page<BsFtpPath> page = PageHelper.startPage(pageNo, pageSize, true);
		BsFtpPathExample example = new BsFtpPathExample();
		ftpPathMapper.selectByExample(example);
		try {
			PageResult<FtpPath> result = BeanConvertUtil.pageConversion(page, FtpPath.class);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return new PageResult<>();
	}

	@Override
	public Integer updateFtpPath(FtpPath updateDto) {
		try {
			BsFtpPath bsFtpPath = BeanConvertUtil.beanConversion(updateDto, BsFtpPath.class);
			Integer result = ftpPathMapper.updateByPrimaryKeySelective(bsFtpPath);
			modifyRedisFtpPath(updateDto, updateDto.getFtpPathCode(), CacheWebConstant.MODIFY_TYPE_UPDATE);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public Integer deleteFtpPath(String ftpPathCode) {
		BsFtpPath bsFtpPath = ftpPathMapper.selectByPrimaryKey(ftpPathCode);
		bsFtpPath.setState(CacheWebConstant.STATE_OUT_OF_USE);
		Integer result = ftpPathMapper.updateByPrimaryKeySelective(bsFtpPath);
		modifyRedisFtpPath(null, ftpPathCode, CacheWebConstant.MODIFY_TYPE_DELETE);
		return result;
	}

	@Override
	public Integer loadFtpPath() {
		BsFtpPathExample example = new BsFtpPathExample();
		List<BsFtpPath> bsFtpPathList = ftpPathMapper.selectByExample(example);
		try {
			List<FtpPath> ftpPathList = BeanConvertUtil.listConversion(bsFtpPathList, FtpPath.class);
			if (!CollectionUtils.isEmpty(ftpPathList)) {
				Map<String, Object> map = new HashMap<>();
				for (FtpPath ftpPath : ftpPathList) {
					map.put(ftpPath.getFtpPathCode(), ftpPath);
				}
				HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
				Map<String, Object> redisMap = hashOp.entries(CacheConstant.FTP_PATH_REDIS_KEY);
				Map<String, Object> differMap = MapUtil.getDifferenceSet(redisMap, map);
				hashOp.putAll(CacheConstant.FTP_PATH_REDIS_KEY, map);
				hashOp.delete(CacheConstant.FTP_PATH_REDIS_KEY, differMap.keySet().toArray());
			}
			return ftpPathList.size();
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	private void modifyRedisFtpPath(FtpPath ftpPath, String ftpPathCode, int modifyType) {
		HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
		if (CacheWebConstant.MODIFY_TYPE_ADD == modifyType || CacheWebConstant.MODIFY_TYPE_UPDATE == modifyType) {
			hashOp.put(CacheConstant.FTP_REDIS_KEY, ftpPath.getFtpPathCode(), ftpPath);
		} else if (CacheWebConstant.MODIFY_TYPE_DELETE == modifyType) {
			hashOp.delete(CacheConstant.FTP_REDIS_KEY, ftpPathCode);
		} else {
			log.info("not implemented.");
		}
	}

}
