package com.aii.crm.ci.web.service.impl;

import com.aii.crm.ci.web.cache.CiCacheOperation;
import com.aii.crm.ci.web.constant.CiWebConstant;
import com.aii.crm.ci.web.dto.req.CiInteractionReqDto;
import com.aii.crm.ci.web.persistence.bo.CiChannel;
import com.aii.crm.ci.web.persistence.bo.CiChannelMapping;
import com.aii.crm.ci.web.persistence.bo.CiContact;
import com.aii.crm.ci.web.persistence.bo.CiInteraction;
import com.aii.crm.ci.web.persistence.bo.CiInteractionExample;
import com.aii.crm.ci.web.persistence.bo.CiInteractionType;
import com.aii.crm.ci.web.persistence.mapper.CiEventFireMapper;
import com.aii.crm.ci.web.schedule.ContactTimeSchedule;
import com.aii.crm.ci.web.schedule.EventFireSchedule;
import com.aii.crm.ci.web.service.atom.interfaces.ICiCombinedAtomSV;
import com.aii.crm.ci.web.service.atom.interfaces.IContactAtomSV;
import com.aii.crm.ci.web.service.interfaces.IContactInteractionSV;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.exception.CrmCheckedException;
import com.aii.crm.common.time.TimesUtil;
import java.lang.reflect.InvocationTargetException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class ContactInteractionSVImpl implements IContactInteractionSV {

	@Autowired
	private CiEventFireMapper eventFireMapper;

	@Autowired
	private CiCacheOperation cacheOperation;

	@Autowired
	private IContactAtomSV contactAtomSV;

	@Autowired
	private ICiCombinedAtomSV combinedSV;

	@Override
	public void createContact(CiInteractionReqDto interactionReqDto) throws CrmCheckedException {
		if (interactionReqDto == null) {
			return;
		}

		// TODO 获取租户的id

		// 获取ChannelId
		CiChannelMapping channelMapping =
				cacheOperation.getCiComponentFromCache(CiWebConstant.CI_CHANNEL_MAPPING_REDIS_KEY,
						interactionReqDto.getChannelCode() + "_" + interactionReqDto.getSrcSysId());
		interactionReqDto.setChannelId(channelMapping.getChannelId());

		if (interactionReqDto.getContactTime() == null) {
			interactionReqDto.setContactTime(TimesUtil.getDefaultTime());
		}

		if (interactionReqDto.getCompleteTime() == null) {
			interactionReqDto.setCompleteTime(interactionReqDto.getContactTime());
		}

		createCustomerContact(interactionReqDto);
	}

	@Override
	public void createInteraction(CiInteractionReqDto interactionReqDto) throws CrmCheckedException {
		// TODO 获取组织id
		// TODO 获取操作人id

		// 获取channel的id
		CiChannelMapping channelMapping =
				cacheOperation.getCiComponentFromCache(CiWebConstant.CI_CHANNEL_MAPPING_REDIS_KEY,
						interactionReqDto.getChannelCode() + "_" + interactionReqDto.getSrcSysId());
		interactionReqDto.setChannelId(channelMapping.getChannelId());

		if (interactionReqDto.getInteractionTime() == null) {
			interactionReqDto.setInteractionTime(TimesUtil.getDefaultTime());
		}

		if (interactionReqDto.getCompleteTime() == null) {
			interactionReqDto.setCompleteTime(interactionReqDto.getInteractionTime());
		}

		if (interactionReqDto.getContactTime() == null) {
			interactionReqDto.setContactTime(interactionReqDto.getInteractionTime());
		}

		contactInteractionCreation(interactionReqDto);
	}

	/**
	 * 新建接触
	 * <p>
	 * 首先构造接触key，根据接触key获取接触完成标识。
	 * 如果接触已完成，新建接触交互，并在缓存中更新接触key对应的标识为未完成。
	 * 将缓存中的交互时间设置为本次交互的时间；当前接触的交互次数设置为1；缓存当前接触contact_id。
	 * 如果接触未完成，新建接触交互。将缓存中的交互时间设置为本次交互的时间；当前接触的交互次数设置为1；缓存当前接触contact_id。
	 * <p>
	 * 如果不存在完成标识，则直接开始一个新的接触。
	 * 更新接触key对应的标识为未完成。
	 * 将缓存中的交互时间设置为本次交互的时间；当前接触的交互次数设置为1；缓存当前接触contact_id。
	 * <p>
	 * 接触新增完成后新建计算线程
	 */
	private void createCustomerContact(CiInteractionReqDto interactionReqDto) throws CrmCheckedException {

		// 根据channel_id获取ci_channel表中的CONTACT_TIMEOUT的值(分钟)
		CiChannel channel = cacheOperation.getCiComponentFromCache(CiWebConstant.CI_CHANNEL_REDIS_KEY,
				interactionReqDto.getChannelId());

		if (channel == null) {
			throw new CrmCheckedException("Contact timeout configuration must exist.", new Exception());
		}

		// 建立接触Redis HKey
		String contactHKey = interactionReqDto.getChannelId() + "_" + interactionReqDto.getCustId();

		// 获取当前缓存中的接触完成标识
		Integer status = cacheOperation.getCiComponentFromCache(CiWebConstant.CONTACT_STATUS_REDIS_KEY,
				contactHKey);

		// 不存在接触完成状态标识
		if (status == null) {
			// 从数据库获取接触
			CiContact latestContact = contactAtomSV.getLatestContact(interactionReqDto.getChannelId(),
					interactionReqDto.getCustId());

			// 数据库中不存在接触记录不做任何处理
			if (latestContact != null) {
				// 数据库中存在接触记录
				// 判断当前接触是否结束
				boolean isFinished =
						(interactionReqDto.getCompleteTime().getTime() - latestContact.getCompleteTime().getTime()) >= (channel.getContactTimeout() * 60 * 1000);
				// 未结束更新接触表中的complete_time和duration;已结束不做任何处理
				if (!isFinished) {
					latestContact.setCompleteTime(interactionReqDto.getCompleteTime());
					latestContact.setDurationInterval((interactionReqDto.getCompleteTime().getTime() - latestContact.getCompleteTime().getTime()) / 1000);
					contactAtomSV.updateContact(latestContact);
				}
			}
		}
		// 存在接触完成状态标识
		else {
			// 接触已完成不做任何处理
			// 接触未完成
			if (status == CiWebConstant.CONTACT_STATUS_UNFINISHED) {
				Long contactIdInRedis =
						cacheOperation.getCiComponentFromCache(CiWebConstant.CONTACT_ID_REDIS_KEY,
								contactHKey);
				CiContact contactBean = null;
				// 缓存中无接触数据
				if (contactIdInRedis == null) {
					// 从数据库获取接触
					contactBean = contactAtomSV.getLatestContact(interactionReqDto.getChannelId(),
							interactionReqDto.getCustId());
				}
				// 缓存中有接触数据
				else {
					// 通过缓存中的contactId获取表中记录
					contactBean = contactAtomSV.getContactByPrimaryKey(contactIdInRedis);
				}

				// 数据库中不存在接触记录不做任何处理
				// 数据库中存在接触记录
				if (contactBean != null) {
					// 更新接触表中的complete_time和duration;
					contactBean.setCompleteTime(interactionReqDto.getCompleteTime());
					contactBean.setDurationInterval((interactionReqDto.getCompleteTime().getTime() - contactBean.getContactTime().getTime()) / 1000);
					contactAtomSV.updateContact(contactBean);
				}
			}
		}

		// 新建接触记录
		customerContactCreation(interactionReqDto, contactHKey);

		// 启动接触结束计算
		ContactTimeSchedule.startCommand(interactionReqDto.getChannelId(), contactHKey,
				interactionReqDto.getCompleteTime().getTime(), channel.getContactTimeout());
	}

	private void customerContactCreation(CiInteractionReqDto interactionReqDto, String contactHKey) throws CrmCheckedException {
		// TODO contactId
		Long contactId = 1L;

		// 保存contact,在保存contact同时保存交互和交互属性
		interactionReqDto.setContactId(contactId);
		CiContact contact;
		try {
			contact = BeanConvertUtil.beanConversion(interactionReqDto, CiContact.class);
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			throw new CrmCheckedException(e.getMessage(), e);
		}
		contact.setDurationInterval((contact.getCompleteTime().getTime() - contact.getContactTime().getTime()) / 1000);

		// 处理InteractionAttrValue的数据
		interactionReqDto = combinedSV.dealInteractionAndAttrValue(interactionReqDto);

		// 保存接触
		combinedSV.saveContact(contact, interactionReqDto);

		// 将缓存中的完成标识设置为未完成
		cacheOperation.putCiComponentFromCache(CiWebConstant.CONTACT_STATUS_REDIS_KEY, contactHKey,
				CiWebConstant.CONTACT_STATUS_FINISHED);

		// 将缓存中的contactId设置为新建的contactId
		cacheOperation.putCiComponentFromCache(CiWebConstant.CONTACT_ID_REDIS_KEY, contactHKey, contactId);

		// 将缓存中接触的交互次数设置为1
		cacheOperation.putCiComponentFromCache(CiWebConstant.CONTACT_COUNT_REDIS_KEY, contactHKey, 1);

		// 将缓存中的交互时间设置为当前交互时间
		cacheOperation.putCiComponentFromCache(CiWebConstant.LAST_INTERACTION_TIME_REDIS_KEY, contactHKey,
				interactionReqDto.getCompleteTime().getTime());

		// 触发事件
		if (interactionReqDto.getEventState() == CiWebConstant.EVENT_STATE_SENDING) {
			CiChannel channel = cacheOperation.getCiComponentFromCache(CiWebConstant.CI_CHANNEL_REDIS_KEY,
					interactionReqDto.getChannelId());
			if (channel != null) {
				EventFireSchedule.startFire(interactionReqDto, interactionReqDto.getInteractionAttrValueDtoList(),
						channel.getEventFireInterval(), channel.getEventMaxTryTimes(), true);
			}
		}

	}

}

