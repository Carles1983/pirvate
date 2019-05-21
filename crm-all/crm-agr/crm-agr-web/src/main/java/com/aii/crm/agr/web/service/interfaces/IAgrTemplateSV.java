package com.aii.crm.agr.web.service.interfaces;

import com.aii.crm.agr.web.persistence.bo.AgrTemplate;
import java.util.List;

public interface IAgrTemplateSV {
	List<AgrTemplate> listAgrTempalteByOfferId(Long offerId);
}
