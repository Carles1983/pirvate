package com.aii.crm.ci.web.service.interfaces;

import com.aii.crm.ci.web.dto.req.CiInteractionCommentReqDto;
import com.aii.crm.ci.web.dto.req.CiInteractionReqDto;
import com.aii.crm.ci.web.dto.res.CiInteractionCommentResDto;
import com.aii.crm.common.exception.CrmCheckedException;
import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;

public interface IContactInteractionSV {
	boolean createContact(CiInteractionReqDto interactionReqDto) throws CrmCheckedException, ParseException;
	boolean createInteraction(CiInteractionReqDto interactionReqDto) throws CrmCheckedException, ParseException,
			IllegalAccessException, InvocationTargetException, InstantiationException;
	boolean finishCustomerContact(CiInteractionReqDto interactionReqDto) throws ParseException, IllegalAccessException, InvocationTargetException, InstantiationException, CrmCheckedException;
	CiInteractionCommentResDto createInteractionComment(CiInteractionCommentReqDto interactionCommentReqDto) throws IllegalAccessException, InvocationTargetException, InstantiationException;
}
