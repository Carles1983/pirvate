package com.aii.crm.ci.web.service.atom.impl;

import com.aii.crm.ci.web.persistence.bo.CiInteractionComment;
import com.aii.crm.ci.web.persistence.mapper.CiInteractionCommentMapper;
import com.aii.crm.ci.web.service.atom.interfaces.IInteractionCommentAtomSV;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InteractionCommentAtomSV implements IInteractionCommentAtomSV {

	@Autowired
	private CiInteractionCommentMapper interactionCommentMapper;

	@Override
	public CiInteractionComment saveInteractionComment(CiInteractionComment comment) {
		// TODO id
		Long id = 1L;
		comment.setCommentId(id);
		interactionCommentMapper.insertSelective(comment);
		return comment;
	}
}
