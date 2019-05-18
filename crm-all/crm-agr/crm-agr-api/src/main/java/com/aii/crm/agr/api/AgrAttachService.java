package com.aii.crm.agr.api;


import com.aii.crm.agr.persistence.req.AgrAttachReqDto;

public interface AgrAttachService {
	Integer saveAgrAttach(AgrAttachReqDto agrAttachReqDto) throws Exception;
}