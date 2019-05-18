package com.aii.crm.agr.core.service.interfaces;

import com.aii.crm.agr.core.persistence.bo.AgrTemplate;
import java.util.List;

public interface IAgrTemplateSV {
	List<AgrTemplate> listAgrTempalteByOfferId(Long offerId);
}
