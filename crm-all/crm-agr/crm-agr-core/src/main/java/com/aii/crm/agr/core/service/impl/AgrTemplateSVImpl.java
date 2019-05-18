package com.aii.crm.agr.core.service.impl;

import com.aii.crm.agr.core.persistence.bo.AgrTemplate;
import com.aii.crm.agr.core.persistence.mapper.AgrTemplateHMapper;
import com.aii.crm.agr.core.service.interfaces.IAgrTemplateSV;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AgrTemplateSVImpl implements IAgrTemplateSV {

	@Autowired
	private AgrTemplateHMapper agrTemplateHMapper;

	@Override
	public List<AgrTemplate> listAgrTempalteByOfferId(Long offerId) {
		return null;
	}
}
