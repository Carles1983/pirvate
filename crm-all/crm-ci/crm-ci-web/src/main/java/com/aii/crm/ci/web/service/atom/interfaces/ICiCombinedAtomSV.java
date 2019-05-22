package com.aii.crm.ci.web.service.atom.interfaces;

import com.aii.crm.ci.web.dto.req.CiInteractionReqDto;
import com.aii.crm.ci.web.persistence.bo.CiContact;
import java.text.ParseException;

public interface ICiCombinedAtomSV {
	CiInteractionReqDto dealInteractionAndAttrValue(CiInteractionReqDto interactionReqDto) throws ParseException;

	boolean saveContact(CiContact contact, CiInteractionReqDto interactionReqDto);

	boolean cacheToRedis();
}
