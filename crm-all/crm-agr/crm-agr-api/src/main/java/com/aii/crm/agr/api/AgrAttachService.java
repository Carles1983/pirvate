package com.aii.crm.agr.api;

import com.aii.crm.agr.persistence.AgrDto;
import com.aii.crm.agr.persistence.AgrTemplateDto;
import com.aii.crm.common.exception.CrmCheckedException;
import java.util.List;
import java.util.Map;

public interface AgrAttachService {

	AgrTemplateDto queryAgrTemplateByOfferId(Long offerId) throws CrmCheckedException;

	Long saveAgrAgreement(AgrDto agreementDto) throws CrmCheckedException;

	Long updateAgreementStatusByCustomerIdAndOrderId(Long customerId, Long customerOrderId,
												  Long agreementStatus) throws CrmCheckedException;

	Long signAgreement(Long agreementId) throws CrmCheckedException;

	byte[] getBytesForXDoc(String docUrl, Map<String, String> params) throws CrmCheckedException;

	List<AgrDto> queryAgreementByCustIdAndCustOrderId(Long custId, Long custOrderId) throws CrmCheckedException;

	Long confirmAgreement(List<Long> customerOrderIdList, Long customerId) throws CrmCheckedException;

	Long updateAgreement(AgrDto agreementDto) throws CrmCheckedException;

	Long deleteAgreement(Long agreementId) throws CrmCheckedException;

	AgrDto queryAgreementByAgreementId(Long agreementId) throws CrmCheckedException;

}
