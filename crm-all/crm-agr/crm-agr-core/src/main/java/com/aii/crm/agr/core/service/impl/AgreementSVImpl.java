package com.aii.crm.agr.core.service.impl;

import com.aii.crm.agr.core.persistence.bo.AgrAgreement;
import com.aii.crm.agr.core.persistence.bo.AgrAgreementExample;
import com.aii.crm.agr.core.persistence.mapper.AgrAgreementMapper;
import com.aii.crm.agr.core.service.interfaces.IAgreementSV;
import com.aii.crm.agr.persistence.req.AgrReqDto;
import com.aii.crm.common.time.TimesUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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

	@Override
	public List<AgrAgreement> queryAgreementByCustomerIdAndOrderId(Long customerId, Long customerOrderId, Long agrStateValid) {
		AgrAgreementExample example = new AgrAgreementExample();
		AgrAgreementExample.Criteria criteria = example.createCriteria();
		criteria.andOwnerIdEqualTo(customerId);
		criteria.andAgrSourceObjIdEqualTo(customerOrderId);
		criteria.andAgreementStatusEqualTo(agrStateValid);
		return agrAgreementMapper.selectByExample(example);
	}

	@Override
	public Integer updateAgreementStatusBatch(List<AgrAgreement> agreementList, Long agreementStatus) {
		Map<String, Object> map = new HashMap<>();
		map.put("agreementStatus", agreementStatus);
		map.put("doneDate", TimesUtil.getDefaultTime());
		List<Long> agreementIdList = new ArrayList<>();
		for(AgrAgreement agrAgreement : agreementList){
			agreementIdList.add(agrAgreement.getAgreementId());
		}
		map.put("agreementIdList", agreementIdList);
		return agrAgreementMapper.updateStatusByBatchPrimaryKey(map);
	}
}
