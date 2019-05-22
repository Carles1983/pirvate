package com.aii.crm.ci.web.service.atom.impl;

import com.aii.crm.ci.web.cache.CiCacheOperation;
import com.aii.crm.ci.web.constant.CiWebConstant;
import com.aii.crm.ci.web.dto.req.CiInteractionAttrValueReqDto;
import com.aii.crm.ci.web.dto.req.CiInteractionReqDto;
import com.aii.crm.ci.web.persistence.bo.CiContact;
import com.aii.crm.ci.web.persistence.bo.CiEventFire;
import com.aii.crm.ci.web.persistence.bo.CiEventFireExample;
import com.aii.crm.ci.web.persistence.bo.CiInteraction;
import com.aii.crm.ci.web.persistence.bo.CiInteractionAttr;
import com.aii.crm.ci.web.persistence.bo.CiInteractionAttrValue;
import com.aii.crm.ci.web.persistence.bo.CiInteractionExample;
import com.aii.crm.ci.web.persistence.bo.CiInteractionType;
import com.aii.crm.ci.web.persistence.mapper.CiContactMapper;
import com.aii.crm.ci.web.persistence.mapper.CiEventFireMapper;
import com.aii.crm.ci.web.persistence.mapper.CiInteractionAttrValueMapper;
import com.aii.crm.ci.web.persistence.mapper.CiInteractionMapper;
import com.aii.crm.ci.web.service.atom.interfaces.ICiCombinedAtomSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
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

	@Override
	public CiInteractionReqDto dealInteractionAndAttrValue(CiInteractionReqDto interactionReqDto) {
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
								cacheOperation.getCiComponentFromCache(CiWebConstant.INTERACTION_ATTR_REDIS_KEY,
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

	private Long getUpInteractionId(CiInteractionReqDto interactionDto) {
		CiInteractionType child = null;
		CiInteractionType parent = null;

		CiInteractionType interactionType =
				cacheOperation.getCiComponentFromCache(CiWebConstant.INTERACTION_TYPE_REDIS_KEY, interactionDto.getInteractionType() +
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
					cacheOperation.getCiComponentFromCache(CiWebConstant.INTERACTION_TYPE_REDIS_KEY, upInteractionTypeId + "_" + child.getSrcSysId());

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
			if (parent.getUpInteractionTypeId() != null && parent.getUpInteractionTypeId() > 0) {
				bean = interactionAtomSV.getInteractionByTypeIdEntityId(queryDto, parent);
			} else {
				bean = interactionAtomSV.getInteractionByTypeIdEntityId(queryDto, null);
			}

			if (bean != null) {
				return bean.getInteractionId();
			}
		}
		return 0L;
	}

	@Override
	public boolean saveContact(CiContact contact, CiInteractionReqDto interactionReqDto) {
		boolean flag = false;
		try{
			contactMapper.insertSelective(contact);
			if(interactionReqDto != null){
				// TODO id
				Long interactionId = 1L;
				interactionReqDto.setInteractionId(interactionId);
				CiInteraction interaction = BeanConvertUtil.beanConversion(interactionReqDto, CiInteraction.class);
				interactionMapper.insertSelective(interaction);
				List<CiInteractionAttrValueReqDto> attrValueReqDtoList =
						interactionReqDto.getInteractionAttrValueDtoList();
				if(!CollectionUtils.isEmpty(attrValueReqDtoList)){
					List<CiInteractionAttrValue> valueList = new ArrayList<>();
					for(CiInteractionAttrValueReqDto dto : attrValueReqDtoList){
						//TODO id
						Long id = 1L;
						dto.setInteractionAttrValueId(id);
						dto.setInteractionId(interactionId);
						dto.setInteractionTime(interactionReqDto.getInteractionTime());
						dto.setTenantId(interactionReqDto.getTenantId());
						dto.setCustId(interactionReqDto.getCustId());
						CiInteractionAttrValue value  = BeanConvertUtil.beanConversion(dto,
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
}
