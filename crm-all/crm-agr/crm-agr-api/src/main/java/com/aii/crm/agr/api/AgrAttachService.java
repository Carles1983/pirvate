package com.aii.crm.agr.api;

import com.aii.crm.agr.persistence.AgrDto;
import com.aii.crm.agr.persistence.AgrTemplateDto;
import java.util.List;
import java.util.Map;

public interface AgrAttachService {

	AgrTemplateDto queryAgrTemplateByOfferId(Long offerId) throws Exception;

	Long saveAgrAgreement(AgrDto agreementDto) throws Exception;

	Long updateAgreementStatusByCustomerIdAndOrderId(Long customerId, Long customerOrderId,
												  Long agreementStatus) throws Exception;

	Long signAgreement(Long agreementId) throws Exception;

	byte[] getBytesForXDoc(String docUrl, Map<String, String> params) throws Exception;

	List<AgrDto> queryAgreementByCustIdAndCustOrderId(Long custId, Long custOrderId) throws Exception;

	Long confirmAgreement(List<Long> customerOrderIdList, Long customerId) throws Exception;

	Long updateAgreement(AgrDto agreementDto) throws Exception;

	Long deleteAgreement(Long agreementId) throws Exception;

	AgrDto queryAgreementByAgreementId(Long agreementId) throws Exception;

}
