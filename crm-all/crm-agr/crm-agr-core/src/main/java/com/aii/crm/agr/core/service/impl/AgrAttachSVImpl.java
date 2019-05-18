package com.aii.crm.agr.core.service.impl;

import com.aii.crm.agr.core.persistence.bo.AgrAttach;
import com.aii.crm.agr.core.persistence.mapper.AgrAttachMapper;
import com.aii.crm.agr.core.service.interfaces.IAgrAttachSV;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AgrAttachSVImpl implements IAgrAttachSV {

	@Autowired
	private AgrAttachMapper agrAttachMapper;

	@Override
	public Integer insertAgrAttach(AgrAttach attach) {
		return agrAttachMapper.insertSelective(attach);
	}
}
