package com.aii.crm.ci.web.schedule;

import com.aii.crm.ci.web.cache.CiCacheOperation;
import com.aii.crm.ci.web.constant.CiWebConstant;
import com.aii.crm.ci.web.context.CiApplicationContext;
import com.aii.crm.ci.web.persistence.bo.CiContact;
import com.aii.crm.ci.web.persistence.mapper.CiContactMapper;
import java.util.Date;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class ContactTimeCalCommand implements Runnable {

	private final String contactKey;
	private final long lastInteractTime;

	ContactTimeCalCommand(String key, long lastInteractTime) {
		this.contactKey = key;
		this.lastInteractTime = lastInteractTime;
	}

	public void run() {
		CiCacheOperation cacheOperation = CiApplicationContext.getService(CiCacheOperation.class);
		try {
			Long contactId = cacheOperation.getCiComponentFromCache(CiWebConstant.CONTACT_ID_REDIS_KEY, contactKey);
			Long redisLastInteractTime = cacheOperation.getCiComponentFromCache(CiWebConstant.LAST_INTERACTION_TIME_REDIS_KEY, contactKey);

			if ((contactId != null) && (redisLastInteractTime != null && this.lastInteractTime == redisLastInteractTime)) {
				Integer interactCount = cacheOperation.getCiComponentFromCache(CiWebConstant.CONTACT_COUNT_REDIS_KEY, contactKey);

				CiContactMapper contactMapper = CiApplicationContext.getService(CiContactMapper.class);
				CiContact contact = contactMapper.selectByPrimaryKey(Long.valueOf(contactId));

				if (contact != null) {
					contact.setCompleteTime(new Date(lastInteractTime));
					contact.setInteractionCount(Long.valueOf(interactCount));
					contactMapper.updateByPrimaryKeySelective(contact);
				}
			}
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		} finally {
			cacheOperation.deleteCiComponentFromCache(CiWebConstant.CONTACT_STATUS_REDIS_KEY, contactKey);
			cacheOperation.deleteCiComponentFromCache(CiWebConstant.CONTACT_ID_REDIS_KEY, contactKey);
			cacheOperation.deleteCiComponentFromCache(CiWebConstant.LAST_INTERACTION_TIME_REDIS_KEY, contactKey);
			cacheOperation.deleteCiComponentFromCache(CiWebConstant.CONTACT_COUNT_REDIS_KEY, contactKey);
		}
	}
}
