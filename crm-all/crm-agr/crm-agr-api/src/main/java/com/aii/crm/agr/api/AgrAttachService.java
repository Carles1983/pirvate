package com.aii.crm.agr.api;

import com.aii.crm.agr.persistence.AgrAttachDto;

public interface AgrAttachService {
	Integer saveAgrAttach(AgrAttachDto agrAttachDto) throws Exception;
}