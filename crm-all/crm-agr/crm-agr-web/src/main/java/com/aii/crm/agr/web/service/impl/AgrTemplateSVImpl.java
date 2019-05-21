package com.aii.crm.agr.web.service.impl;

import com.aii.crm.agr.web.persistence.bo.AgrTemplate;
import com.aii.crm.agr.web.persistence.bo.AgrTemplateExample;
import com.aii.crm.agr.web.persistence.mapper.AgrTemplateMapper;
import com.aii.crm.agr.web.service.interfaces.IAgrTemplateSV;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AgrTemplateSVImpl implements IAgrTemplateSV {

	@Autowired
	private AgrTemplateMapper agrTemplateMapper;

	@Override
	public List<AgrTemplate> listAgrTempalteByOfferId(Long offerId) {
		AgrTemplateExample example = new AgrTemplateExample();
		AgrTemplateExample.Criteria criteria = example.createCriteria();
		criteria.andOfferIdEqualTo(offerId);
		return agrTemplateMapper.selectByExample(example);
	}
}
