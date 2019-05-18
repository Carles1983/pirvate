package com.aii.crm.agr.core.service.impl;

import com.aii.crm.agr.core.constant.AgrConstant;
import com.aii.crm.agr.core.persistence.bo.AgrAgreement;
import com.aii.crm.agr.core.persistence.bo.AgrAgreementExample;
import com.aii.crm.agr.core.persistence.mapper.AgrAgreementMapper;
import com.aii.crm.agr.core.service.interfaces.IAgreementSV;
import com.aii.crm.common.time.TimesUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

@Service
public class AgreementSVImpl implements IAgreementSV {

	@Autowired
	private AgrAgreementMapper agrAgreementMapper;

	@Override
	public Long insertAgreement(AgrAgreement agreement) {
		agrAgreementMapper.insertSelective(agreement);
		return agreement.getAgreementId();
	}

	@Override
	public List<AgrAgreement> queryAgreementByCustIdAndCustOrderId(Long customerId, Long customerOrderId,
																Long agrStateValid) {
		AgrAgreementExample example = new AgrAgreementExample();
		AgrAgreementExample.Criteria criteria = example.createCriteria();
		criteria.andOwnerIdEqualTo(customerId);
		criteria.andAgrSourceObjIdEqualTo(customerOrderId);
		criteria.andAgreementStatusEqualTo(agrStateValid);
		return agrAgreementMapper.selectByExample(example);
	}

	private Integer updateAgreementStatusBatch(List<AgrAgreement> agreementList, Long agreementStatus) {
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

	@Override
	public Integer agreementStatusChange(Long agreementId, Long agrStatusSign) {
		AgrAgreement agreement = agrAgreementMapper.selectByPrimaryKey(agreementId);
		if(agreement == null){
			return null;
		}
		agreement.setAgreementStatus(agrStatusSign);
		return agrAgreementMapper.updateByPrimaryKeySelective(agreement);
	}

	@Override
	public Integer updateAgreementStatusByCustomerIdAndOrderId(Long customerId, Long customerOrderId, Long agreementStatus) {
		List<AgrAgreement> agreementList = queryAgreementByCustIdAndCustOrderId(customerId,
				customerOrderId, AgrConstant.AGR_STATE_VALID);
		if (!CollectionUtils.isEmpty(agreementList)) {
			return updateAgreementStatusBatch(agreementList, agreementStatus);
		}
		return 0;
	}

	@Override
	public Integer updateAgreementStatusByCustomerIdListAndOrderId(Long customerId, List<Long> customerOrderIdList,
																   Long agrStatusConfirm) {
		AgrAgreementExample example = new AgrAgreementExample();
		AgrAgreementExample.Criteria criteria = example.createCriteria();
		criteria.andOwnerIdEqualTo(customerId);
		criteria.andAgrSourceObjIdIn(customerOrderIdList);
		List<AgrAgreement> agreementList = agrAgreementMapper.selectByExample(example);
		if (!CollectionUtils.isEmpty(agreementList)) {
			return updateAgreementStatusBatch(agreementList, agrStatusConfirm);
		}
		return 0;
	}

	@Override
	public Integer updateAgreement(AgrAgreement agreement) {
		return agrAgreementMapper.updateByPrimaryKeySelective(agreement);
	}
}
