package com.aii.crm.ci.web.service.atom.interfaces;

import com.aii.crm.ci.web.dto.req.CiInteractionReqDto;
import com.aii.crm.ci.web.persistence.bo.CiContact;

public interface ICiCombinedAtomSV {
	CiInteractionReqDto dealInteractionAndAttrValue(CiInteractionReqDto interactionReqDto);

	boolean saveContact(CiContact contact, CiInteractionReqDto interactionReqDto);
}
