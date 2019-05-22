package com.aii.crm.ci.web.service.atom.impl;

import com.aii.crm.ci.web.persistence.bo.CiContact;
import com.aii.crm.ci.web.persistence.bo.CiContactExample;
import com.aii.crm.ci.web.persistence.mapper.CiContactMapper;
import com.aii.crm.ci.web.service.atom.interfaces.IContactAtomSV;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import java.util.List;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

@Service
@Slf4j
public class ContactAtomSVImpl implements IContactAtomSV {

	@Autowired
	private CiContactMapper contactMapper;

	@Override
	public CiContact getContactByPrimaryKey(Long contactId) {
		return contactMapper.selectByPrimaryKey(contactId);
	}

	@Override
	public CiContact getLatestContact(Long channelId, Long custId) {
		Page<CiContact> page = PageHelper.startPage(1, 1, false);
		CiContactExample example = new CiContactExample();
		CiContactExample.Criteria criteria = example.createCriteria();
		criteria.andChannelIdEqualTo(channelId);
		criteria.andCustIdEqualTo(custId);
		example.setOrderByClause("COMPLETE_TIME DESC");
		contactMapper.selectByExample(example);
		List<CiContact> contactList = page.getResult();
		CiContact existContact = null;
		if (!CollectionUtils.isEmpty(contactList)) {
			existContact = contactList.get(0);
		}
		return existContact;
	}

	@Override
	public Integer updateContact(CiContact latestContact) {
		return contactMapper.updateByPrimaryKeySelective(latestContact);
	}
}
