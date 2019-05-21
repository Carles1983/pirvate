package com.aii.crm.cache.web.service.interfaces;

import com.aii.crm.common.cache.model.MsgClient;
import com.aii.crm.common.page.PageResult;

public interface ICfgMsgClientSV {
	Integer saveMsgClient(MsgClient addDto);
	PageResult<MsgClient> listMsgClientPages(Integer pageNo, Integer pageSize);
	Integer updateMsgClient(MsgClient updateDto);
	Integer deleteMsgClient(String cfgMsgControlCode);
	Integer loadMsgClient();
}
