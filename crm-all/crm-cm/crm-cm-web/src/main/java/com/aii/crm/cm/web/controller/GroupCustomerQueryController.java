package com.aii.crm.cm.web.controller;

import com.aii.crm.cm.web.dto.req.CmGroupMemberReqDto;
import com.aii.crm.cm.web.dto.req.CmGroupQryRequestReqDto;
import com.aii.crm.cm.web.dto.req.CmOrganizationManagerBaseReqDto;
import com.aii.crm.cm.web.dto.req.CmPartyReqDto;
import com.aii.crm.cm.web.dto.res.CmAccountInfoResDto;
import com.aii.crm.cm.web.dto.res.CmAddressResDto;
import com.aii.crm.cm.web.dto.res.CmGroupContactPersonResDto;
import com.aii.crm.cm.web.dto.res.CmGroupDeptTreeResDto;
import com.aii.crm.cm.web.dto.res.CmGroupMemberResDto;
import com.aii.crm.cm.web.dto.res.CmGroupQryResDto;
import com.aii.crm.cm.web.dto.res.CmOrganizationManagerBaseResDto;
import com.aii.crm.cm.web.dto.res.CmPartyAttachmentResDto;
import com.aii.crm.cm.web.dto.res.CmPartyOrgTreeResDto;
import com.aii.crm.cm.web.dto.res.CmPartyResDto;
import com.aii.crm.common.page.PageResult;
import java.util.List;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cm")
public class GroupCustomerQueryController {

	/**
	 *集团客户快速查询接口,有一个，直接返回对象，有多个返回列表
	 **/
	@RequestMapping(value = "/group/customer/list", method = RequestMethod.POST)
	public PageResult<CmGroupQryResDto> listGroupCustomerQuick(@RequestBody CmGroupQryRequestReqDto qryRequestDto) {
		return  null;
	}

	/**
	 *集团客户快速查询接口,有一个，直接返回对象，有多个返回列表
	 **/
	@RequestMapping(value = "/group/customer/amount", method = RequestMethod.POST)
	public Integer countGroupCustomerQuick(@RequestBody CmGroupQryRequestReqDto qryRequestDto) {
		return null;
	}

	/**
	 *查询集团客户基本信息和对应的客户经理和客户信息
	 **/
	@RequestMapping(value = "/organizationManage/info", method = RequestMethod.POST)
	public CmOrganizationManagerBaseResDto getOrganizationManageBaseInfos(@RequestBody CmOrganizationManagerBaseReqDto qryDto) {
		return null;
	}

	/**
	 *先根据条件查询数量，如果返回一条直接返详情
	 **/
	@RequestMapping(value = "/organizationManage/detail", method = RequestMethod.POST)
	public CmOrganizationManagerBaseResDto getOrganizationManageBaseDetail(@RequestBody CmGroupQryRequestReqDto qryDto) {
		return null;
	}

	/**
	 *  查询集团附件信息
	 **/
	@RequestMapping(value = "/organizationAttachment/{partyId}", method = RequestMethod.GET)
	public List<CmPartyAttachmentResDto> getOrganizationAttachmentInfo(@PathVariable Long partyId) {
		return null;
	}

	/**
	 *  查询集团附件信息
	 **/
	@RequestMapping(value = "/organizationContact/{partId}", method = RequestMethod.GET)
	public List<CmGroupContactPersonResDto> getOrganizationContact(@PathVariable Long partId) {
		return null;
	}

	/**
	 *  查询集团组织结构树
	 **/
	@RequestMapping(value = "/organizationTree/{partId}", method = RequestMethod.GET)
	public CmPartyOrgTreeResDto getOrganizationTree(@PathVariable Long partId) {
		return null;
	}

	/**
	 *  查询集团组织地址（公司注册地址）
	 **/
	@RequestMapping(value = "/organizationAddress/{partId}", method = RequestMethod.GET)
	public CmAddressResDto getOrganizationAddress(@PathVariable Long partId) {
		return null;
	}

	/**
	 *  查询集团部门树
	 **/
	@RequestMapping(value = "/departmentTree/{orgId}", method = RequestMethod.GET)
	public List<CmGroupDeptTreeResDto> getOrgDepartmentTree(@PathVariable Long orgId) {
		return null;
	}

	/**
	 *  查询成员列表
	 **/
	@RequestMapping(value = "/member/list", method = RequestMethod.POST)
	public PageResult<CmGroupMemberResDto> queryGroupMembers(@RequestBody CmGroupMemberReqDto groupMemberDto) {
		return null;
	}

	/**
	 *  查询成员列表数量
	 **/
	@RequestMapping(value = "/member/amount", method = RequestMethod.POST)
	public Integer countGroupMembers(@RequestBody CmGroupMemberReqDto groupMemberDto) {
		return null;
	}

	/**
	 *  根据名称查询集团客户信息 列表
	 **/
	@RequestMapping(value = "/groupName/list", method = RequestMethod.POST)
	public List<CmPartyResDto> getGroupNameList(@RequestBody CmPartyReqDto dto) {
		return null;
	}

	/**
	 *  查询集团账户信息
	 **/
	@RequestMapping(value = "/groupAccount/{custId}", method = RequestMethod.GET)
	public List<CmAccountInfoResDto> getGroupAccount(@PathVariable Long custId) {
		return null;
	}

}
