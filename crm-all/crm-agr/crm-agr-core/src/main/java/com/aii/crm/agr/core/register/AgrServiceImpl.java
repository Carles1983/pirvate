package com.aii.crm.agr.core.register;

import com.aii.crm.agr.api.AgrService;
import com.aii.crm.agr.persistence.AgrDto;
import com.aii.crm.agr.persistence.AgrTemplateDto;
import com.aii.crm.common.exception.CrmCheckedException;
import java.util.List;
import java.util.Map;

public class AgrServiceImpl implements AgrService {

	@Override
	public AgrTemplateDto queryAgrTemplateByOfferId(Long offerId) throws CrmCheckedException {
		return null;
	}

	@Override
	public Long saveAgrAgreement(AgrDto agreementDto) throws CrmCheckedException {
		return null;
	}

	@Override
	public Long updateAgreementStatusByCustomerIdAndOrderId(Long customerId, Long customerOrderId, Long agreementStatus) throws CrmCheckedException {
		return null;
	}

	@Override
	public Long signAgreement(Long agreementId) throws CrmCheckedException {
		return null;
	}

	@Override
	public byte[] getBytesForXDoc(String docUrl, Map<String, String> params) throws CrmCheckedException {
		return new byte[0];
	}

	@Override
	public List<AgrDto> queryAgreementByCustIdAndCustOrderId(Long custId, Long custOrderId) throws CrmCheckedException {
		return null;
	}

	@Override
	public Long confirmAgreement(List<Long> customerOrderIdList, Long customerId) throws CrmCheckedException {
		return null;
	}

	@Override
	public Long updateAgreement(AgrDto agreementDto) throws CrmCheckedException {
		return null;
	}

	@Override
	public Long deleteAgreement(Long agreementId) throws CrmCheckedException {
		return null;
	}

	@Override
	public AgrDto queryAgreementByAgreementId(Long agreementId) throws CrmCheckedException {
		return null;
	}
}
