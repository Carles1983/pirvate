package com.aii.crm.agr.api;

import com.aii.crm.agr.persistence.AgrAttachDto;

public interface AgrService {
	Long saveAgrAttach(AgrAttachDto agrAttachDto) throws Exception;
}