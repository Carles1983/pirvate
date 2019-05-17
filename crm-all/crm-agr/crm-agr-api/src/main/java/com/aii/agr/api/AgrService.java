package com.aii.agr.api;

import com.aii.agr.persistence.AgrAttachDto;

public interface AgrService {
	Long saveAgrAttach(AgrAttachDto agrAttachDto) throws Exception;
}