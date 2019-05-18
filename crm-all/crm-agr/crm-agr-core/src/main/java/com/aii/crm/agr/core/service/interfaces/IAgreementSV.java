package com.aii.crm.agr.core.service.interfaces;

import com.aii.crm.agr.core.persistence.bo.AgrAgreement;
import com.aii.crm.agr.persistence.req.AgrReqDto;
import java.util.List;

public interface IAgreementSV {
	Long insertAgreement(AgrAgreement agreement);

	List<AgrAgreement> queryAgreementByCustIdAndCustOrderId(Long customerId, Long customerOrderId, Long agrStateValid);

	Integer agreementStatusChange(Long agreementId, Long agrStatusSign);

	Integer updateAgreementStatusByCustomerIdAndOrderId(Long customerId, Long customerOrderId, Long agreementStatus);

	Integer updateAgreementStatusByCustomerIdListAndOrderId(Long customerId, List<Long> customerOrderIdList,
															Long agrStatusConfirm);

	Integer updateAgreement(AgrAgreement agreement);
}
