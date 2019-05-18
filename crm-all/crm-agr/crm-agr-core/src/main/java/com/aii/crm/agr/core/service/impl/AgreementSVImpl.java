package com.aii.crm.agr.core.service.impl;

import com.aii.crm.agr.core.persistence.bo.AgrAgreement;
import com.aii.crm.agr.core.persistence.mapper.AgrAgreementMapper;
import com.aii.crm.agr.core.service.interfaces.IAgreementSV;
import com.aii.crm.agr.persistence.req.AgrReqDto;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AgreementSVImpl implements IAgreementSV {

	@Autowired
	private AgrAgreementMapper agrAgreementMapper;

	@Override
	public Long insertAgreement(AgrReqDto agrReqDto) {
		AgrAgreement agreement = new AgrAgreement();
		BeanUtils.copyProperties(agrReqDto, agreement);
		agrAgreementMapper.insertSelective(agreement);
		return agreement.getAgreementId();
	}
}
