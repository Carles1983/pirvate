package com.aii.crm.ci.web.service.interfaces;

import com.aii.crm.ci.web.dto.req.CiInteractionReqDto;
import com.aii.crm.common.exception.CrmCheckedException;

public interface IContactInteractionSV {
	void createContact(CiInteractionReqDto interactionReqDto) throws CrmCheckedException;
	void createInteraction(CiInteractionReqDto interactionReqDto) throws CrmCheckedException;
}
