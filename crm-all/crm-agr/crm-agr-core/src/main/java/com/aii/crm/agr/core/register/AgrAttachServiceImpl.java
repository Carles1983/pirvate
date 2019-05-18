package com.aii.crm.agr.core.register;

import com.aii.crm.agr.api.AgrAttachService;
import com.aii.crm.agr.core.persistence.bo.AgrAttach;
import com.aii.crm.agr.core.service.interfaces.IAgrAttachSV;
import com.aii.crm.agr.persistence.AgrAttachDto;
import com.alibaba.dubbo.config.annotation.Service;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class AgrAttachServiceImpl implements AgrAttachService {

	@Autowired
	private IAgrAttachSV agrAttachSV;

	@Override
	public Integer saveAgrAttach(AgrAttachDto agrAttachDto) throws Exception {
		AgrAttach attach = new AgrAttach();
		BeanUtils.copyProperties(agrAttachDto, attach);
		return agrAttachSV.insertAgrAttach(attach);
	}
}
