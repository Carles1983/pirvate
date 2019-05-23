package com.aii.crm.ci.web.schedule;

import com.aii.crm.ci.web.cache.CiCacheOperation;
import com.aii.crm.ci.web.constant.CiWebConstant;
import com.aii.crm.ci.web.context.CiApplicationContext;
import com.aii.crm.ci.web.dto.req.CiInteractionAttrValueReqDto;
import com.aii.crm.ci.web.dto.req.CiInteractionReqDto;
import com.aii.crm.ci.web.persistence.bo.CiChannel;
import com.aii.crm.ci.web.persistence.bo.CiContact;
import com.aii.crm.ci.web.persistence.bo.CiInteractionAttr;
import com.aii.crm.ci.web.service.atom.interfaces.IContactAtomSV;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSONObject;
import org.springframework.util.CollectionUtils;

public class EventFireSender {

	public static boolean fireEvent(CiInteractionReqDto interactionValue,
									List<CiInteractionAttrValueReqDto> attrValues) {
		JSONObject json = new JSONObject();

		DateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		json.put("START_TIME", dateformat.format(interactionValue.getInteractionTime()));// 发生时间 格式：yyyy-MM-dd HH:mi:ss
		json.put("FINISH_TIME", dateformat.format(interactionValue.getCompleteTime()));// 结束时间 格式：yyyy-MM-dd HH:mi:ss

		CiCacheOperation cacheOperation = CiApplicationContext.getService(CiCacheOperation.class);
		CiChannel channelBean = cacheOperation.getCiComponentFromCache(CiWebConstant.CI_CHANNEL_REDIS_KEY,
				interactionValue.getChannelId());
		if (channelBean != null) {
			json.put("CHANNEL_CODE", channelBean.getChannelCode());// 渠道
		}

		json.put("PLACE", "");// 地点 事件发生地点，比如XX营业厅
		json.put("CUST_ID", interactionValue.getCustId());
		json.put("CUST_NAME", "");
		json.put("CUST_REGION_CODE", interactionValue.getCustRegionId());// 客户所属地市
		json.put("ACCT_ID", "");
		json.put("BILL_ID", interactionValue.getMsisdn());// 计费号
		json.put("USER_REGION_CODE", interactionValue.getCustRegionId());// 用户所属地市

		IContactAtomSV contactAtomSV = CiApplicationContext.getService(IContactAtomSV.class);
		CiContact contactBean = contactAtomSV.getContactByPrimaryKey(interactionValue.getContactId());

		if (contactBean != null) {
			if (CiWebConstant.CONTACT_TYPE_OB.equals(contactBean.getContactType())) {
				json.put("CONTACT_TYPE", CiWebConstant.CONTACT_TYPE_OB_STR);// 接触类型 IB：客户主动接触 OB：客户被动接触
			} else if (CiWebConstant.CONTACT_TYPE_IB.equals(contactBean.getContactType())) {
				json.put("CONTACT_TYPE", CiWebConstant.CONTACT_TYPE_IB_STR);// 接触类型 IB：客户主动接触 OB：客户被动接触
			}
		}
		json.put("CONTACT_REASON", "");// 接触原因
		json.put("CONTACT_SESSION", "");// 接触SESSION
		json.put("CONTACT_RESULT", CiWebConstant.CONTACT_RESULT_SUCCESS);// 接触结果 SUCCESS：成功
		json.put("BUSINESS_SOURCE", interactionValue.getSrcSysId());// 业务源系统
		json.put("BUSINESS_ID", interactionValue.getSrcBusiType());// 业务类型标识
		json.put("BUSINESS_SOURCE_DONE_CODE", interactionValue.getSrcInteractionId());// 业务源系统业务流水号
		json.put("BUSINESS_RESULT", "");// 业务结果编码
		json.put("TENANT_ID", interactionValue.getTenantId());// 租户标识
		json.put("OP_ID", interactionValue.getOpId());
		json.put("ORG_ID", interactionValue.getOrgId());

		Map<String, String> attrMap = new HashMap<>();
		if (!CollectionUtils.isEmpty(attrValues)) {
			for (CiInteractionAttrValueReqDto attrValue : attrValues) {
				CiInteractionAttr attrBean = cacheOperation
						.getCiComponentFromCache(CiWebConstant.CI_INTERACTION_ATTR_REDIS_KEY,
								interactionValue.getInteractionType() + "_" + attrValue.getInteractionAttrCode());
				if (attrBean != null) {
					attrMap.put(attrBean.getInteractionAttrCode(), attrValue.getInteractionAttrAttrValue());
				}
			}
		}
		json.put("EVENT_CONTENT", attrMap);// 事件内容
		// TODO fireEvent
		return true;
	}

}
