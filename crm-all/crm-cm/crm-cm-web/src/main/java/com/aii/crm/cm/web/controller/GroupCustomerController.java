package com.aii.crm.cm.web.controller;

import com.aii.crm.cm.web.dto.req.CmAccountInfoReqDto;
import com.aii.crm.cm.web.dto.req.CmContactMediumReqDto;
import com.aii.crm.cm.web.dto.req.CmGroupDepartmentReqDto;
import com.aii.crm.cm.web.dto.req.CmGroupMemberReqDto;
import com.aii.crm.cm.web.dto.req.CmPartyAttachmentReqDto;
import com.aii.crm.cm.web.dto.req.OrganizationCreateReqDto;
import com.aii.crm.cm.web.dto.res.CmGroupCustomerResDto;
import java.util.List;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/cm")
public class GroupCustomerController {

	/**
	 *  保存客户基本资料
	 **/
	@RequestMapping(value = "/groupCustomer/", method = RequestMethod.POST)
	public CmGroupCustomerResDto saveGroupCustomerBase(@RequestBody OrganizationCreateReqDto creation) {
		return null;
	}

	/**
	 *  保存客户附件信息
	 **/
	@RequestMapping(value = "/groupCustomer/attachment", method = RequestMethod.POST)
	public Boolean saveOrgAttachment(@RequestBody List<CmPartyAttachmentReqDto> attachmentDtos) {
		return null;
	}

	/**
	 *  保存客户接触信息
	 **/
	@RequestMapping(value = "/groupCustomer/contact", method = RequestMethod.POST)
	public Boolean saveOrgContact(@RequestBody List<CmContactMediumReqDto> contactMediumDtos) {
		return null;
	}

	/**
	 *  创建集团客户部门信息
	 **/
	@RequestMapping(value = "/groupCustomer/department", method = RequestMethod.POST)
	public Boolean createGroupDepartment(@RequestBody CmGroupDepartmentReqDto departmentDto) {
		return null;
	}

	/**
	 *  添加客户成员
	 *@author  66578
	 **/
	@RequestMapping(value = "/groupCustomer/member", method = RequestMethod.POST)
	public Boolean createGroupMember(@RequestBody CmGroupMemberReqDto memberDto) {
		return null;
	}

	/**
	 *  添加客户成员
	 **/
	@RequestMapping(value = "/groupCustomer/member/import", method = RequestMethod.POST)
	public Boolean importGroupMember(@RequestParam(value = "sourceFile", required = true) MultipartFile sourceFile,
										  @RequestParam(value = "groupCustId", required = true) Long groupCustId) {
		return null;
	}

	/**
	 *  添加集团账户
	 **/
	@RequestMapping(value = "/groupCustomer/account", method = RequestMethod.POST)
	public Boolean createGroupAccount(@RequestBody CmAccountInfoReqDto accountInfoDto) {
		return null;
	}
}
