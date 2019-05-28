package com.aii.crm.cm.web.controller;

import com.aii.crm.cm.web.dto.req.CmAccountInfoReqDto;
import com.aii.crm.cm.web.dto.req.CmGroupContactModReqDto;
import com.aii.crm.cm.web.dto.req.CmGroupContactPersonReqDto;
import com.aii.crm.cm.web.dto.req.CmGroupDepartmentReqDto;
import com.aii.crm.cm.web.dto.req.CmGroupMemberReqDto;
import com.aii.crm.cm.web.dto.req.CmOrganizationCreateReqDto;
import com.aii.crm.cm.web.dto.req.CmPartyAttachmentReqDto;
import java.util.List;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cm")
public class GroupCustomerUpdateController {

	/**
	 *  修改集团默认联系人
	 **/
	@RequestMapping(value = "/groupContact/default", method = RequestMethod.PUT)
	public Boolean updateDefaultContact(@RequestBody CmGroupContactPersonReqDto personDto) {
		return null;
	}

	/**
	 *  修改集团联系人
	 **/
	@RequestMapping(value = "/groupContact", method = RequestMethod.PUT)
	public Boolean modifyContact(@RequestBody CmGroupContactModReqDto contactModDto) {
		return null;
	}
	/**
	 *  删除集团联系人
	 **/
	@RequestMapping(value = "/groupContact/delete", method = RequestMethod.PUT)
	public Boolean deleteContact(@RequestBody CmGroupContactModReqDto contactModDto) {
		return null;
	}

	/**
	 *  修改集团客户基本资料
	 **/
	@RequestMapping(value = "/groupContact/base", method = RequestMethod.PUT)
	public Boolean updateGroupCustomerBase(@RequestBody CmOrganizationCreateReqDto createDto) {
		return null;
	}

	/**
	 *  修改客户附件信息
	 **/
	@RequestMapping(value = "/organization/attachment", method = RequestMethod.PUT)
	public Boolean modifyOrgAttachment(@RequestBody List<CmPartyAttachmentReqDto> attachmentDtos) {
		return null;
	}

	/**
	 *  删除公司部门
	 **/
	@RequestMapping(value = "/department/{departmentCode}", method = RequestMethod.DELETE)
	public Boolean deleteDepartment(@PathVariable String departmentCode) {
		return null;
	}

	/**
	 *  更新公司部门
	 **/
	@RequestMapping(value = "/department", method = RequestMethod.PUT)
	public Boolean updateDepartment(@RequestBody CmGroupDepartmentReqDto departmentDto) {
		return null;
	}

	/**
	 *  删除公司成员
	 *@author  66578
	 **/
	@RequestMapping(value = "/member/delete", method = RequestMethod.PUT)
	public Boolean deleteMember(@RequestBody CmGroupMemberReqDto groupMemberDto) {
		return null;
	}

	/**
	 *  删除公司成员
	 **/
	@RequestMapping(value = "/member/delete/batch", method = RequestMethod.PUT)
	public Boolean deleteMemberBatch(@RequestBody List<CmGroupMemberReqDto> groupMemberDtos) {
		return null;
	}

	/**
	 *  更新公司部门
	 **/
	@RequestMapping(value = "/member", method = RequestMethod.PUT)
	public Boolean updateMember(@RequestBody CmGroupMemberReqDto memberDto) {
		return null;
	}

	/**
	 *  修改集团账户
	 **/
	@RequestMapping(value = "/groupAccount", method = RequestMethod.PUT)
	public Boolean modifyGroupAccount(@RequestBody CmAccountInfoReqDto memberDto) {
		return null;
	}
}
