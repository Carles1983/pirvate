package com.aii.crm.ci.web.service.atom.interfaces;

import com.aii.crm.ci.web.persistence.bo.CiInteraction;

public interface IInteractionAtomSV {
	CiInteraction getInteractionByPrimaryKey(Long interactionId);

	Integer updateInteraction(CiInteraction interactionBean);
}
