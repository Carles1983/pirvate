package com.aii.crm.agr.core.service.impl;

import com.aii.crm.agr.core.persistence.mapper.AgrTemplateHMapper;
import com.aii.crm.agr.core.service.interfaces.IAgrTemplateSV;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AgrTemplateSVImpl implements IAgrTemplateSV {

	@Autowired
	private AgrTemplateHMapper agrTemplateHMapper;
}
