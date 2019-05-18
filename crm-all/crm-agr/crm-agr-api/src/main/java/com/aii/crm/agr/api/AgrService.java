package com.aii.crm.agr.api;

import com.aii.crm.agr.persistence.req.AgrReqDto;
import com.aii.crm.agr.persistence.res.AgrResDto;
import com.aii.crm.agr.persistence.res.AgrTemplateResDto;
import com.aii.crm.common.exception.CrmCheckedException;
import java.util.List;

public interface AgrService {

	List<AgrTemplateResDto> queryAgrTemplateByOfferId(Long offerId) throws CrmCheckedException;

	Long saveAgrAgreement(AgrReqDto agrReqDto) throws CrmCheckedException;

	Integer updateAgreementStatusByCustomerIdAndOrderId(Long customerId, Long customerOrderId,
												  Long agreementStatus) throws CrmCheckedException;

	Integer signAgreement(Long agreementId) throws CrmCheckedException;

	List<AgrResDto> queryAgreementByCustIdAndCustOrderId(Long custId, Long custOrderId) throws CrmCheckedException;

	Integer confirmAgreement(Long customerId, List<Long> customerOrderIdList) throws CrmCheckedException;

	Integer updateAgreement(AgrReqDto agrReqDto) throws CrmCheckedException;

}
