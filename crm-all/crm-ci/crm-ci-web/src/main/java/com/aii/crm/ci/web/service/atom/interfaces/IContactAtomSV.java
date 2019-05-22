package com.aii.crm.ci.web.service.atom.interfaces;

import com.aii.crm.ci.web.persistence.bo.CiContact;

public interface IContactAtomSV {
	CiContact getContactByPrimaryKey(Long contactId);

	CiContact getLatestContact(Long channelId, Long custId);

	Integer updateContact(CiContact latestContact);
}
