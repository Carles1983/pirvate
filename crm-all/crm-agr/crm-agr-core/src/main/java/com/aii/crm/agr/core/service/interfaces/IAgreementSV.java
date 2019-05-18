package com.aii.crm.agr.core.service.interfaces;

import com.aii.crm.agr.core.persistence.bo.AgrAgreement;
import com.aii.crm.agr.persistence.req.AgrReqDto;
import java.util.List;

public interface IAgreementSV {
	Long insertAgreement(AgrReqDto agrReqDto);

	List<AgrAgreement> queryAgreementByCustomerIdAndOrderId(Long customerId, Long customerOrderId, Long agrStateValid);

	Integer updateAgreementStatusBatch(List<AgrAgreement> agreementList, Long agreementStatus);
}
