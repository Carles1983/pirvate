package com.aii.crm.ci.web.service.atom.impl;

import com.aii.crm.ci.web.persistence.bo.CiInteraction;
import com.aii.crm.ci.web.persistence.mapper.CiInteractionMapper;
import com.aii.crm.ci.web.service.atom.interfaces.IInteractionAtomSV;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InteractionAtomSVImpl implements IInteractionAtomSV {

	@Autowired
	private CiInteractionMapper interactionMapper;

	@Override
	public CiInteraction getInteractionByPrimaryKey(Long interactionId) {
		return interactionMapper.selectByPrimaryKey(interactionId);
	}

	@Override
	public Integer updateInteraction(CiInteraction interaction) {
		return interactionMapper.updateByPrimaryKeySelective(interaction);
	}

	@Override
	public Integer saveInteraction(CiInteraction interaction) {
		return interactionMapper.insertSelective(interaction);
	}

}
