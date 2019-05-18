package com.aii.crm.agr.core.register;

import com.aii.crm.agr.api.AgrService;
import com.aii.crm.agr.core.constant.AgrConstant;
import com.aii.crm.agr.core.persistence.bo.AgrAgreement;
import com.aii.crm.agr.core.persistence.bo.AgrTemplate;
import com.aii.crm.agr.core.service.interfaces.IAgrTemplateSV;
import com.aii.crm.agr.core.service.interfaces.IAgreementSV;
import com.aii.crm.agr.persistence.req.AgrReqDto;
import com.aii.crm.agr.persistence.res.AgrResDto;
import com.aii.crm.agr.persistence.res.AgrTemplateResDto;
import com.aii.crm.common.bean.BeanConvertUtil;
import com.aii.crm.common.exception.CrmCheckedException;
import com.alibaba.dubbo.config.annotation.Service;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.List;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;

@Service
@Slf4j
public class AgrServiceImpl implements AgrService {

	@Autowired
	private IAgrTemplateSV agrTemplateSV;

	@Autowired
	private IAgreementSV agreementSV;

	@Override
	public List<AgrTemplateResDto> queryAgrTemplateByOfferId(Long offerId) throws CrmCheckedException {
		List<AgrTemplate> agrTemplateList = agrTemplateSV.listAgrTempalteByOfferId(offerId);
		try {
			List<AgrTemplateResDto> resDtoList = BeanConvertUtil.listConversion(agrTemplateList, AgrTemplateResDto.class);
			return resDtoList;
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.error(e.getMessage(), e);
		}
		return Collections.emptyList();
	}

	@Override
	public Long saveAgrAgreement(AgrReqDto agrReqDto) throws CrmCheckedException {
		try {
			AgrAgreement agreement = BeanConvertUtil.beanConversion(agrReqDto, AgrAgreement.class);
			return agreementSV.insertAgreement(agreement);
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException  e) {
			log.error(e.getMessage(), e);
		}
		return 0L;
	}

	@Override
	public Integer updateAgreementStatusByCustomerIdAndOrderId(Long customerId, Long customerOrderId,
															   Long agreementStatus) throws CrmCheckedException {
		return agreementSV.updateAgreementStatusByCustomerIdAndOrderId(customerId, customerOrderId, agreementStatus);
	}

	@Override
	public Integer signAgreement(Long agreementId) throws CrmCheckedException {
		return agreementSV.agreementStatusChange(agreementId, AgrConstant.AGR_STATUS_SIGN);
	}

	@Override
	public List<AgrResDto> queryAgreementByCustIdAndCustOrderId(Long custId, Long custOrderId) throws CrmCheckedException {
		List<AgrAgreement> agreementList = agreementSV.queryAgreementByCustIdAndCustOrderId(custId, custOrderId,
				AgrConstant.AGR_STATE_VALID);

		try {
			if (!CollectionUtils.isEmpty(agreementList)) {
				List<AgrResDto> resDtoList = BeanConvertUtil.listConversion(agreementList, AgrResDto.class);
				return resDtoList;
			}
		} catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
			log.error(e.getMessage(), e);
		}
		return Collections.emptyList();
	}

	@Override
	public Integer confirmAgreement(Long customerId, List<Long> customerOrderIdList) throws CrmCheckedException {
		return agreementSV.updateAgreementStatusByCustomerIdListAndOrderId(customerId, customerOrderIdList, AgrConstant.AGR_STATUS_CONFIRM);
	}

	@Override
	public Long updateAgreement(AgrReqDto agrReqDto) throws CrmCheckedException {
		return null;
	}

}
