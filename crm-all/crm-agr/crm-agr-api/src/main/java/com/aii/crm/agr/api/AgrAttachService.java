package com.aii.crm.agr.api;

import com.aii.crm.agr.persistence.AgrAttachDto;

public interface AgrAttachService {
	Long saveAgrAttach(AgrAttachDto agrAttachDto) throws Exception;
}