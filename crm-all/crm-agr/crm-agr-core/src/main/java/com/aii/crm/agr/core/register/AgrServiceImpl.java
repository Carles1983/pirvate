package com.aii.crm.agr.core.register;

import com.aii.crm.agr.api.AgrService;
import com.aii.crm.agr.core.persistence.bo.AgrTemplate;
import com.aii.crm.agr.core.service.interfaces.IAgrTemplateSV;
import com.aii.crm.agr.persistence.req.AgrReqDto;
import com.aii.crm.agr.persistence.res.AgrResDto;
import com.aii.crm.agr.persistence.res.AgrTemplateResDto;
import com.aii.crm.common.exception.CrmCheckedException;
import com.alibaba.dubbo.config.annotation.Service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class AgrServiceImpl implements AgrService {

	@Autowired
	private IAgrTemplateSV agrTemplateSV;

	@Override
	public AgrTemplateResDto queryAgrTemplateByOfferId(Long offerId) throws CrmCheckedException {
		List<AgrTemplate> agrTemplateList = agrTemplateSV.listAgrTempalteByOfferId(offerId);
		return null;
	}

	@Override
	public Long saveAgrAgreement(AgrReqDto agreementDto) throws CrmCheckedException {
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
	public List<AgrResDto> queryAgreementByCustIdAndCustOrderId(Long custId, Long custOrderId) throws CrmCheckedException {
		return null;
	}

	@Override
	public Long confirmAgreement(List<Long> customerOrderIdList, Long customerId) throws CrmCheckedException {
		return null;
	}

	@Override
	public Long updateAgreement(AgrReqDto agreementDto) throws CrmCheckedException {
		return null;
	}

}
