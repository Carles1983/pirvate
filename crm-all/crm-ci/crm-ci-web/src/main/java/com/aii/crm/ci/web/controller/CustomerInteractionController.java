package com.aii.crm.ci.web.controller;

import com.aii.crm.ci.web.dto.req.CiInteractionCommentReqDto;
import com.aii.crm.ci.web.dto.req.CiInteractionReqDto;
import com.aii.crm.ci.web.dto.res.CiInteractionCommentResDto;
import com.aii.crm.ci.web.dto.res.CiInteractionResDto;
import com.aii.crm.ci.web.service.interfaces.IContactInteractionSV;
import com.aii.crm.common.exception.CrmCheckedException;
import java.text.ParseException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/ci")
@Slf4j
public class CustomerInteractionController {

	@Autowired
	private IContactInteractionSV contactInteractionSV;

	@RequestMapping(value = "/contact", method = RequestMethod.POST)
	public boolean createCustomerContact(@RequestBody CiInteractionReqDto interactionReqDto) throws CrmCheckedException,
			ParseException {
		return contactInteractionSV.createContact(interactionReqDto);
	}

	@RequestMapping(value = "/contact", method = RequestMethod.PUT)
	public CiInteractionResDto finishCustomerContact(@RequestBody CiInteractionReqDto interactionReqDto){

		return null;
	}

	@RequestMapping(value = "/contact/comment", method = RequestMethod.POST)
	public CiInteractionCommentResDto finishCustomerContact(@RequestBody CiInteractionCommentReqDto interactionCommentReqDto){

		return null;
	}

	@RequestMapping(value = "/interaction", method = RequestMethod.POST)
	public CiInteractionResDto createCustomerInteraction(@RequestBody CiInteractionReqDto interactionReqDto){

		return null;
	}

}
