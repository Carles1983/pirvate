package com.aii.crm.ci.web.service.atom.impl;

import com.aii.crm.ci.web.cache.CiCacheOperation;
import com.aii.crm.ci.web.constant.CiWebConstant;
import com.aii.crm.ci.web.dto.req.CiInteractionAttrValueReqDto;
import com.aii.crm.ci.web.dto.req.CiInteractionReqDto;
import com.aii.crm.ci.web.persistence.bo.CiChannel;
import com.aii.crm.ci.web.persistence.bo.CiChannelExample;
import com.aii.crm.ci.web.persistence.bo.CiChannelMapping;
import com.aii.crm.ci.web.persistence.bo.CiChannelMappingExample;
import com.aii.crm.ci.web.persistence.bo.CiContact;
import com.aii.crm.ci.web.persistence.bo.CiEventFire;
import com.aii.crm.ci.web.persistence.bo.CiEventFireExample;
import com.aii.crm.ci.web.persistence.bo.CiInteraction;
import com.aii.crm.ci.web.persistence.bo.CiInteractionAttr;
import com.aii.crm.ci.web.persistence.bo.CiInteractionAttrExample;
import com.aii.crm.ci.web.persistence.bo.CiInteractionAttrValue;
import com.aii.crm.ci.web.persistence.bo.CiInteractionCategory;
import com.aii.crm.ci.web.persistence.bo.CiInteractionCategoryExample;
import com.aii.crm.ci.web.persistence.bo.CiInteractionExample;
import com.aii.crm.ci.web.persistence.bo.CiInteractionType;
import com.aii.crm.ci.web.persistence.bo.CiInteractionTypeExample;
import com.aii.crm.ci.web.persistence.mapper.CiChannelMapper;
import com.aii.crm.ci.web.persistence.mapper.CiChannelMappingMapper;
import com.aii.crm.ci.web.persistence.mapper.CiContactMapper;
import com.aii.crm.ci.web.persistence.mapper.CiEventFireMapper;
import com.aii.crm.ci.web.persistence.mapper.CiInteractionAttrMapper;
import com.aii.crm.ci.web.persistence.mapper.CiInteractionAttrValueMapper;
import com.aii.crm.ci.web.persistence.mapper.CiInteractionCategoryMapper;
import com.aii.crm.ci.web.persistence.mapper.CiInteractionMapper;
import com.aii.crm.ci.web.persistence.mapper.CiInteractionTypeMapper;
import com.aii.crm.ci.web.service.atom.interfaces.ICiCombinedAtomSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.map.MapUtil;
import java.lang.reflect.InvocationTargetException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

@Service
@Slf4j
public class CiCombinesAtomSVImpl implements ICiCombinedAtomSV {

	@Autowired
	private CiCacheOperation cacheOperation;

	@Autowired
	private CiEventFireMapper eventFireMapper;

	@Autowired
	private CiContactMapper contactMapper;

	@Autowired
	private CiInteractionMapper interactionMapper;

	@Autowired
	private CiInteractionAttrValueMapper interactionAttrValueMapper;

	@Autowired
	private CiChannelMapper channelMapper;

	@Autowired
	private CiChannelMappingMapper mappingMapper;

	@Autowired
	private CiInteractionAttrMapper attrMapper;

	@Autowired
	private CiInteractionCategoryMapper categoryMapper;

	@Autowired
	private CiInteractionTypeMapper typeMapper;

	@Override
	public CiInteractionReqDto dealInteractionAndAttrValue(CiInteractionReqDto interactionReqDto) throws ParseException {
		if (!StringUtils.isEmpty(interactionReqDto.getSrcInteractionEntityId())) {
			interactionReqDto.setUpInteractionId(getUpInteractionId(interactionReqDto));
		} else {
			interactionReqDto.setUpInteractionId(0L);
		}

		interactionReqDto.setEventState(CiWebConstant.EVENT_STATE_NOT_SEND);
		CiEventFireExample example = new CiEventFireExample();
		CiEventFireExample.Criteria criteria = example.createCriteria();
		criteria.andChannelIdEqualTo(interactionReqDto.getChannelId());
		criteria.andInteractionTypeIdEqualTo(interactionReqDto.getInteractionType());
		List<CiEventFire> eventFireList = eventFireMapper.selectByExample(example);
		if (!CollectionUtils.isEmpty(eventFireList) && eventFireList.get(0).getSwitchState().equals(CiWebConstant.EVENT_SWITCH_STATE_OPEN)) {
			interactionReqDto.setEventState(CiWebConstant.EVENT_STATE_SENDING);
		} else {
			interactionReqDto.setEventState(CiWebConstant.EVENT_STATE_NOT_SEND);
		}

		List<CiInteractionAttrValueReqDto> interactionAttrValueDtoList = interactionReqDto.getInteractionAttrValueDtoList();
		if (!CollectionUtils.isEmpty(interactionAttrValueDtoList)) {
			for (CiInteractionAttrValueReqDto attrValue : interactionAttrValueDtoList) {
				if (attrValue.getInteractionAttrId() == null || attrValue.getInteractionAttrId() == 0) {
					if (!StringUtils.isEmpty(attrValue.getInteractionAttrCode())) {
						// 根据attrCode获取attrId
						CiInteractionAttr interactionAttr =
								cacheOperation.getCiComponentFromCache(CiWebConstant.CI_INTERACTION_ATTR_REDIS_KEY,
										interactionReqDto.getInteractionType() + "_" + attrValue.getInteractionAttrCode());
						if (interactionAttr != null) {
							attrValue.setInteractionAttrId(interactionAttr.getInteractionAttrId());
						}
					}
				}
			}
		}
		return interactionReqDto;
	}

	private Long getUpInteractionId(CiInteractionReqDto interactionDto) throws ParseException {
		CiInteractionType child = null;
		CiInteractionType parent = null;

		CiInteractionType interactionType =
				cacheOperation.getCiComponentFromCache(CiWebConstant.CI_INTERACTION_TYPE_REDIS_KEY,
						interactionDto.getSrcBusiType() +
								"_" + interactionDto.getSrcSysId());

		if (interactionType != null) {
			child = interactionType;
		}

		if (child != null) {
			long upInteractionTypeId = child.getUpInteractionTypeId();
			if (upInteractionTypeId == 0) {
				return 0L;
			}

			CiInteractionType parentInteractionType =
					cacheOperation.getCiComponentFromCache(CiWebConstant.CI_INTERACTION_TYPE_REDIS_KEY,
							interactionDto.getSrcBusiType() + "_" + child.getSrcSysId());

			if (parentInteractionType != null) {
				parent = parentInteractionType;
			}
		}

		if (parent != null) {
			CiInteractionExample example = new CiInteractionExample();
			CiInteractionExample.Criteria criteria = example.createCriteria();
			criteria.andInteractionTypeEqualTo(parent.getInteractionTypeId());
			criteria.andCustIdEqualTo(interactionDto.getCustId());
			criteria.andSrcInteractionEntityIdEqualTo(interactionDto.getSrcInteractionEntityId());
			if (!StringUtils.isEmpty(interactionDto.getTenantId())) {
				criteria.andTenantIdEqualTo(interactionDto.getTenantId());
			}

			CiInteraction bean = null;
			if (parent.getUpInteractionTypeId() != null) {
				Long datePos = interactionType.getEntityDatePos();
				if (datePos == null || datePos == 0) {
					return 0L;
				}

				String yearMonth = interactionDto.getSrcInteractionEntityId().substring((int) (datePos - 1),
						(int) (datePos + 6 - 1));
				if (yearMonth.length() != 6) {
					return 0L;
				}
				DateFormat sdf = new SimpleDateFormat("yyyyMM");
				Date date = sdf.parse(yearMonth);
				Calendar calendar = Calendar.getInstance();
				calendar.setTime(date);
				bean = getParentInteraction(example, criteria, calendar);
			} else {
				Integer monthBack = cacheOperation.getCiComponentFromCache(CiWebConstant.UP_INTERACTION_MONTH_KEY,
						CiWebConstant.UP_INTERACTION_MONTH);
				if (monthBack != null) {
					Calendar calendar = Calendar.getInstance();
					calendar.add(Calendar.MONTH, -monthBack);
					bean = getParentInteraction(example, criteria, calendar);
				}
			}

			if (bean != null) {
				return bean.getInteractionId();
			}
		}
		return 0L;
	}

	private CiInteraction getParentInteraction(CiInteractionExample example,
											   CiInteractionExample.Criteria criteria, Calendar calendar) {
		Date startDate = getStartDate(calendar);
		Date endDate = getEndDate(calendar);
		criteria.andInteractionTimeBetween(startDate, endDate);
		List<CiInteraction> interactionList = interactionMapper.selectByExample(example);
		if (!CollectionUtils.isEmpty(interactionList)) {
			return interactionList.get(0);
		}
		return null;
	}

	private Date getEndDate(Calendar calendar) {
		//将当前月加1；
		calendar.add(Calendar.MONTH, 1);
		//在当前月的下一月基础上减去1毫秒
		calendar.add(Calendar.MILLISECOND, -1);
		//获得当前月最后一天
		return calendar.getTime();
	}

	private Date getStartDate(Calendar calendar) {
		calendar.set(Calendar.DAY_OF_MONTH, 1);
		//将小时至0
		calendar.set(Calendar.HOUR_OF_DAY, 0);
		//将分钟至0
		calendar.set(Calendar.MINUTE, 0);
		//将秒至0
		calendar.set(Calendar.SECOND, 0);
		//将毫秒至0
		calendar.set(Calendar.MILLISECOND, 0);
		return calendar.getTime();
	}

	@Override
	public boolean saveContact(CiContact contact, CiInteractionReqDto interactionReqDto) {
		boolean flag = false;
		try {
			contactMapper.insertSelective(contact);
			if (interactionReqDto != null) {
				// TODO id
				Long interactionId = 1L;
				interactionReqDto.setInteractionId(interactionId);
				CiInteraction interaction = BeanConvertUtil.beanConversion(interactionReqDto, CiInteraction.class);
				interactionMapper.insertSelective(interaction);
				List<CiInteractionAttrValueReqDto> attrValueReqDtoList =
						interactionReqDto.getInteractionAttrValueDtoList();
				if (!CollectionUtils.isEmpty(attrValueReqDtoList)) {
					List<CiInteractionAttrValue> valueList = new ArrayList<>();
					for (CiInteractionAttrValueReqDto dto : attrValueReqDtoList) {
						//TODO id
						Long id = 1L;
						dto.setInteractionAttrValueId(id);
						dto.setInteractionId(interactionId);
						dto.setInteractionTime(interactionReqDto.getInteractionTime());
						dto.setTenantId(interactionReqDto.getTenantId());
						dto.setCustId(interactionReqDto.getCustId());
						CiInteractionAttrValue value = BeanConvertUtil.beanConversion(dto,
								CiInteractionAttrValue.class);
						valueList.add(value);
					}
					interactionAttrValueMapper.insertBatch(valueList);
				}
			}
			flag = true;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.error(e.getMessage(), e);
		}
		return flag;
	}

	@Override
	public boolean cacheToRedis() {
		// CiChannel
		CiChannelExample channelExample = new CiChannelExample();
		List<CiChannel> channelList = channelMapper.selectByExample(channelExample);
		if (CollectionUtils.isEmpty(channelList)) {
			Map<Long, CiChannel> redisMap = cacheOperation.getCiLongComponentFromCache(CiWebConstant.CI_CHANNEL_REDIS_KEY);
			Map<Long, CiChannel> channelMap = new HashMap<>();
			for (CiChannel channel : channelList) {
				channelMap.put(channel.getChannelId(), channel);
			}
			Map<Long, CiChannel> removeMap = MapUtil.getDifferenceSet(redisMap, channelMap);
			cacheOperation.putCiLongComponentFromCache(CiWebConstant.CI_CHANNEL_REDIS_KEY, channelMap);
			if (!CollectionUtils.isEmpty(removeMap)) {
				cacheOperation.deleteCiComponentFromCache(CiWebConstant.CI_CHANNEL_REDIS_KEY,
						removeMap.keySet().toArray());
			}
		}

		// CiChannelMapping
		CiChannelMappingExample mappingExample = new CiChannelMappingExample();
		CiChannelMappingExample.Criteria criteria = mappingExample.createCriteria();
		criteria.andStateEqualTo(CiWebConstant.DATA_STATE_IN_USE);
		List<CiChannelMapping> mappingList = mappingMapper.selectByExample(mappingExample);
		if (!CollectionUtils.isEmpty(mappingList)) {
			Map<String, CiChannelMapping> redisMap =
					cacheOperation.getCiStringComponentFromCache(CiWebConstant.CI_CHANNEL_MAPPING_REDIS_KEY);
			Map<String, CiChannelMapping> channelMappingMap = new HashMap<>();
			for (CiChannelMapping channelMapping : mappingList) {
				channelMappingMap.put(channelMapping.getSrcSysChnlId() + "_" + channelMapping.getSrcSysId(), channelMapping);
			}
			Map<String, CiChannelMapping> removeMap = MapUtil.getDifferenceSet(redisMap, channelMappingMap);
			cacheOperation.putCiStringComponentFromCache(CiWebConstant.CI_CHANNEL_MAPPING_REDIS_KEY, channelMappingMap);
			if (!CollectionUtils.isEmpty(removeMap)) {
				cacheOperation.deleteCiComponentFromCache(CiWebConstant.CI_CHANNEL_MAPPING_REDIS_KEY,
						removeMap.keySet().toArray());
			}
		}

		// CiInteractionAttr
		CiInteractionAttrExample attrExample = new CiInteractionAttrExample();
		CiInteractionAttrExample.Criteria attrCriteria = attrExample.createCriteria();
		attrCriteria.andStateEqualTo(CiWebConstant.DATA_STATE_IN_USE);
		List<CiInteractionAttr> attrList = attrMapper.selectByExample(attrExample);
		if (!CollectionUtils.isEmpty(attrList)) {
			Map<String, CiInteractionAttr> redisMap =
					cacheOperation.getCiStringComponentFromCache(CiWebConstant.CI_INTERACTION_ATTR_REDIS_KEY);
			Map<String, CiInteractionAttr> attrMap = new HashMap<>();
			for (CiInteractionAttr attr : attrList) {
				attrMap.put(attr.getInteractionTypeId() + "_" + attr.getInteractionAttrCode(), attr);
			}
			Map<String, CiInteractionAttr> removeMap = MapUtil.getDifferenceSet(redisMap, attrMap);
			cacheOperation.putCiStringComponentFromCache(CiWebConstant.CI_INTERACTION_ATTR_REDIS_KEY, attrMap);
			if (!CollectionUtils.isEmpty(removeMap)) {
				cacheOperation.deleteCiComponentFromCache(CiWebConstant.CI_INTERACTION_ATTR_REDIS_KEY,
						removeMap.keySet().toArray());
			}
		}

		// CiInteractionCategory
		CiInteractionCategoryExample categoryExample = new CiInteractionCategoryExample();
		List<CiInteractionCategory> categoryList = categoryMapper.selectByExample(categoryExample);
		if (!CollectionUtils.isEmpty(categoryList)) {
			Map<Long, CiInteractionCategory> redisMap =
					cacheOperation.getCiLongComponentFromCache(CiWebConstant.CI_INTERACTION_CATEGORY_REDIS_KEY);
			Map<Long, CiInteractionCategory> categoryMap = new HashMap<>();
			for (CiInteractionCategory category : categoryList) {
				categoryMap.put(category.getInteractionCategoryId(), category);
			}
			Map<Long, CiInteractionCategory> removeMap = MapUtil.getDifferenceSet(redisMap, categoryMap);
			cacheOperation.putCiLongComponentFromCache(CiWebConstant.CI_INTERACTION_CATEGORY_REDIS_KEY, categoryMap);
			if (!CollectionUtils.isEmpty(removeMap)) {
				cacheOperation.deleteCiComponentFromCache(CiWebConstant.CI_INTERACTION_CATEGORY_REDIS_KEY,
						removeMap.keySet().toArray());
			}
		}

		// CiInteractionType
		CiInteractionTypeExample typeExample = new CiInteractionTypeExample();
		CiInteractionTypeExample.Criteria typeCriteria = typeExample.createCriteria();
		typeCriteria.andStateEqualTo(CiWebConstant.DATA_STATE_IN_USE);
		List<CiInteractionType> typeList = typeMapper.selectByExample(typeExample);
		if (!CollectionUtils.isEmpty(typeList)) {
			Map<String, CiInteractionType> redisMap =
					cacheOperation.getCiStringComponentFromCache(CiWebConstant.CI_INTERACTION_TYPE_REDIS_KEY);
			Map<String, CiInteractionType> typeMap = new HashMap<>();
			for (CiInteractionType type : typeList) {
				typeMap.put(type.getSrcInteractionTypeId() + "_" + type.getSrcSysId(), type);
			}
			Map<String, CiInteractionType> removeMap = MapUtil.getDifferenceSet(redisMap, typeMap);
			cacheOperation.putCiStringComponentFromCache(CiWebConstant.CI_INTERACTION_TYPE_REDIS_KEY, typeMap);
			if (!CollectionUtils.isEmpty(removeMap)) {
				cacheOperation.deleteCiComponentFromCache(CiWebConstant.CI_INTERACTION_TYPE_REDIS_KEY,
						removeMap.keySet().toArray());
			}
		}

		return false;
	}
}
