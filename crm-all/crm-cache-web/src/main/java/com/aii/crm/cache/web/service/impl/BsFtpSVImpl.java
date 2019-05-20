package com.aii.crm.cache.web.service.impl;

import com.aii.crm.cache.web.constant.CacheWebConstant;
import com.aii.crm.cache.web.persistence.bo.BsFtp;
import com.aii.crm.cache.web.persistence.bo.BsFtpExample;
import com.aii.crm.cache.web.persistence.mapper.BsFtpMapper;
import com.aii.crm.cache.web.service.interfaces.IBsFtpSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.cache.constant.CacheConstant;
import com.aii.crm.common.cache.model.Ftp;
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
public class BsFtpSVImpl implements IBsFtpSV {

	@Autowired
	private BsFtpMapper ftpMapper;

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@Override
	public Integer saveFtp(Ftp addDto) {
		try {
			addDto.setState(CacheWebConstant.STATE_IN_USE);
			BsFtp bsFtp = BeanConvertUtil.beanConversion(addDto, BsFtp.class);
			Integer result = ftpMapper.insertSelective(bsFtp);
			modifyRedisFtp(addDto, bsFtp.getFtpCode(), CacheWebConstant.MODIFY_TYPE_ADD);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public PageResult<Ftp> listFtpPages(Integer pageNo, Integer pageSize) {
		Page<BsFtp> page = PageHelper.startPage(pageNo, pageSize, true);
		BsFtpExample example = new BsFtpExample();
		ftpMapper.selectByExample(example);
		try {
			PageResult<Ftp> result = BeanConvertUtil.pageConversion(page, Ftp.class);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return new PageResult<>();
	}

	@Override
	public Integer updateFtp(Ftp updateDto) {
		try {
			BsFtp bsFtp = BeanConvertUtil.beanConversion(updateDto, BsFtp.class);
			Integer result = ftpMapper.updateByPrimaryKeySelective(bsFtp);
			modifyRedisFtp(updateDto, updateDto.getFtpCode(), CacheWebConstant.MODIFY_TYPE_UPDATE);
			return result;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	@Override
	public Integer deleteFtp(String ftpCode) {
		BsFtp bsFtp = ftpMapper.selectByPrimaryKey(ftpCode);
		bsFtp.setState(CacheWebConstant.STATE_OUT_OF_USE);
		Integer result = ftpMapper.updateByPrimaryKeySelective(bsFtp);
		modifyRedisFtp(null, ftpCode, CacheWebConstant.MODIFY_TYPE_DELETE);
		return result;
	}

	@Override
	public Integer loadFtp() {
		BsFtpExample example = new BsFtpExample();
		List<BsFtp> bsFtpList = ftpMapper.selectByExample(example);
		try {
			List<Ftp> ftpList = BeanConvertUtil.listConversion(bsFtpList, Ftp.class);
			if (!CollectionUtils.isEmpty(ftpList)) {
				Map<String, Object> map = new HashMap<>();
				for (Ftp ftp : ftpList) {
					map.put(ftp.getFtpCode(), ftp);
				}
				HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
				Map<String, Object> redisMap = hashOp.entries(CacheConstant.FTP_REDIS_KEY);
				Map<String, Object> differMap = MapUtil.getDifferenceSet(redisMap, map);
				hashOp.putAll(CacheConstant.FTP_REDIS_KEY, map);
				hashOp.delete(CacheConstant.FTP_REDIS_KEY, differMap.keySet().toArray());
			}
			return ftpList.size();
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.info("error");
		}
		return 0;
	}

	private void modifyRedisFtp(Ftp ftp, String ftpCode, int modifyType) {
		HashOperations<String, String, Object> hashOp = redisTemplate.opsForHash();
		if (CacheWebConstant.MODIFY_TYPE_ADD == modifyType || CacheWebConstant.MODIFY_TYPE_UPDATE == modifyType) {
			hashOp.put(CacheConstant.FTP_REDIS_KEY, ftp.getFtpCode(), ftp);
		} else if (CacheWebConstant.MODIFY_TYPE_DELETE == modifyType) {
			hashOp.delete(CacheConstant.FTP_REDIS_KEY, ftpCode);
		} else {
			log.info("not implemented.");
		}
	}

}
