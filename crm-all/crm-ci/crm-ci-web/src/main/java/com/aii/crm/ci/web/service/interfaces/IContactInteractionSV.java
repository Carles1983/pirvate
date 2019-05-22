package com.aii.crm.ci.web.service.interfaces;

import com.aii.crm.ci.web.dto.req.CiInteractionReqDto;
import com.aii.crm.common.exception.CrmCheckedException;
import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;

public interface IContactInteractionSV {
	boolean createContact(CiInteractionReqDto interactionReqDto) throws CrmCheckedException, ParseException;
	void createInteraction(CiInteractionReqDto interactionReqDto) throws CrmCheckedException, ParseException, IllegalAccessException, InvocationTargetException, InstantiationException;
}
