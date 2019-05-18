package com.aii.crm.agr.api;

import com.aii.crm.agr.persistence.req.AgrReqDto;
import com.aii.crm.agr.persistence.res.AgrResDto;
import com.aii.crm.agr.persistence.res.AgrTemplateResDto;
import com.aii.crm.common.exception.CrmCheckedException;
import java.util.List;

public interface AgrService {

	List<AgrTemplateResDto> queryAgrTemplateByOfferId(Long offerId) throws CrmCheckedException;

	Long saveAgrAgreement(AgrReqDto agreementDto) throws CrmCheckedException;

	Long updateAgreementStatusByCustomerIdAndOrderId(Long customerId, Long customerOrderId,
												  Long agreementStatus) throws CrmCheckedException;

	Long signAgreement(Long agreementId) throws CrmCheckedException;

	List<AgrResDto> queryAgreementByCustIdAndCustOrderId(Long custId, Long custOrderId) throws CrmCheckedException;

	Long confirmAgreement(List<Long> customerOrderIdList, Long customerId) throws CrmCheckedException;

	Long updateAgreement(AgrReqDto agreementDto) throws CrmCheckedException;

}
