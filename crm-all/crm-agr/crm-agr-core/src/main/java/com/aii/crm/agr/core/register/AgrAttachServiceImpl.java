package com.aii.crm.agr.core.register;

import com.aii.crm.agr.api.AgrAttachService;
import com.aii.crm.agr.core.service.interfaces.IAgrAttachSV;
import com.aii.crm.agr.persistence.AgrAttachDto;
import com.alibaba.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class AgrAttachServiceImpl implements AgrAttachService {

	@Autowired
	private IAgrAttachSV agrAttachSV;

	@Override
	public Long saveAgrAttach(AgrAttachDto agrAttachDto) throws Exception {
		return null;
	}
}
